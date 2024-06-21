#include "../h/KernelThread.hpp"
#include "../h/RISCV.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/KernelConsole.hpp"
#include "../test/printing.hpp"

extern void userMain();

static volatile bool kernelFinished = false;
void writer(void *arg) {
    while(!kernelFinished) {
        while ((*(volatile uint8 *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) && !KernelConsole::getOutput().isEmpty()) {
            // write
            *(volatile uint8 *) CONSOLE_TX_DATA = KernelConsole::getOutput().take();
        }
        KernelThread::yield();
    }
}

void main() {
    KernelThread *threadKernel = KernelThread::createThread(nullptr, nullptr);
    KernelThread::running = threadKernel;
    KernelThread *threadWriter = KernelThread::createThread(&writer, nullptr);
    KernelThread *threadUser;

    //printString("Dosli 1\n");

    RISCV::setStvec((uint64)&RISCV::supervisorTrap);
    RISCV::maskSetSstatus(RISCV::SSTATUS::SIE);

    RISCV::privileged = false;

    thread_create(&threadUser, (Body) userMain, nullptr);

    while(!threadUser->isFinished()) {
        thread_dispatch();
    }
    kernelFinished = true;

    /*
    while(!KernelConsole::getOutput().isEmpty()) {
        while ((*(volatile uint8 *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)) {
            // write
            *(volatile uint8 *) CONSOLE_TX_DATA = KernelConsole::getOutput().take();
        }
    }
*/
    RISCV::privileged = true;

    delete threadUser;
    delete threadWriter;
    delete threadKernel;
    RISCV::exit();
}