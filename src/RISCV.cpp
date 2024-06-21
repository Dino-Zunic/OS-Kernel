#include "../h/RISCV.hpp"
#include "../lib/console.h"
#include "../h/KernelThread.hpp"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Timer.hpp"
#include "../h/KernelSemaphore.hpp"
#include "../h/KernelConsole.hpp"

constexpr static int CONSOLE_INTERRUPT = 10;
KernelSemaphore *RISCV::asleep = nullptr;

bool volatile RISCV::flag = false;
bool volatile RISCV::privileged = false;

#include "../test/printing.hpp"

void RISCV::handleSupervisorTrap() {
    uint64 volatile scause = getScause();
    if (scause == SCAUSE::TIMER) {
        Timer::update();
        KernelThread::timeSliceCounter++;
        KernelSemaphore::update();
        if (KernelThread::timeSliceCounter >= DEFAULT_TIME_SLICE) {
            uint64 volatile sepc = getSepc();
            uint64 volatile sstatus = getSstatus();
            KernelThread::timeSliceCounter = 0;
            KernelThread::dispatch();
            setSstatus(sstatus);
            setSepc(sepc);
        }
        RISCV::maskClearSip(SIP::SSIP); // interrupt handled
    } else if (scause == SCAUSE::CONSOLE) {
        int irq = plic_claim();
        while ((*(volatile uint8 *) CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
            // read
            KernelConsole::getInput().append(*(uint8 *) CONSOLE_RX_DATA);
        }
        plic_complete(irq);
    } else if (scause == SCAUSE::SUPERVISOR || scause == SCAUSE::USER) {
        // exception happened
        volatile uint64 sepc = getSepc() + 4; // skip ecall
        volatile uint64 sstatus = getSstatus();

        volatile uint64 arg0;
        volatile uint64 arg1;
        volatile uint64 arg2;
        volatile uint64 arg3;
        volatile uint64 arg4;

        asm volatile("mv %0, a0" : "=r"(arg0));
        asm volatile("mv %0, a1" : "=r"(arg1));
        asm volatile("mv %0, a2" : "=r"(arg2));
        asm volatile("mv %0, a3" : "=r"(arg3));
        asm volatile("mv %0, a4" : "=r"(arg4));
        ABI_Index index = (ABI_Index) arg0;

        uint64 volatile result = 9999;

        switch (index) {
            case ABI_Index::MEM_ALLOC:
                result = (uint64) MemoryAllocator::getInstance().malloc(arg1);
                break;
            case ABI_Index::MEM_FREE:
                result = (uint64) MemoryAllocator::getInstance().free((void *)arg1);
                break;
            case ABI_Index::THREAD_CREATE:
                *(thread_t *) arg1 = KernelThread::createThread((Body) arg2, (void *)arg3);
                result = *(thread_t *) arg1 ? 0 : -1;
                break;
            case ABI_Index::THREAD_EXIT:
                KernelThread::running->setFinished(true);
                KernelThread::timeSliceCounter = 0;
                KernelThread::dispatch();
                break;
            case ABI_Index::THREAD_DISPATCH:
                KernelThread::timeSliceCounter = 0;
                KernelThread::dispatch();
                break;
            case ABI_Index::SEM_OPEN:
                *(sem_t *) arg1 = KernelSemaphore::createKernelSemaphore(arg2);
                result = *(sem_t *) arg1 ? 0 : -1;
                break;
            case ABI_Index::SEM_CLOSE:
                ((sem_t) arg1)->close();
                result = 0;
                break;
            case ABI_Index::SEM_WAIT:
                ((sem_t) arg1)->wait();
                result = KernelThread::running->interruptResult;
                break;
            case ABI_Index::SEM_SIGNAL:
                ((sem_t) arg1)->signal();
                result = 0;
                break;
            case ABI_Index::SEM_TIMEDWAIT:
                ((sem_t) arg1)->timedWait((time_t) arg2);
                result = KernelThread::running->interruptResult;
                break;
            case ABI_Index::SEM_TRYWAIT:
                ((sem_t) arg1)->tryWait();
                result = KernelThread::running->interruptResult;
                break;
            case ABI_Index::TIME_SLEEP:
                getAsleep().timedWait(arg1);
                break;
            case ABI_Index::GETC:
                result = KernelConsole::getInput().take();
                break;
            case ABI_Index::PUTC:
                KernelConsole::getOutput().append((char) arg1);
                break;
        }

        KernelThread::running->interruptResult = result;
        setSepc(sepc);
        setSstatus(sstatus);
    } else {

        printString("\nERROR sepc = ");
        printInt(getSepc(), 16);
        printString(", scause =  ");
        printInt(getScause(), 16);
        printString("\n");

    }
}

KernelSemaphore &RISCV::getAsleep() {
    if (!asleep) {
        asleep = KernelSemaphore::createKernelSemaphore(0);
    }
    return *asleep;
}

// must not be inline
void RISCV::popSppSpie() {
    privileged ? maskSetSstatus(SPP) : maskClearSstatus(SPP);
    asm volatile("csrw sepc, ra");
    asm volatile("sret");
}
