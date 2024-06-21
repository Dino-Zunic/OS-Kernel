
#include "../h/KernelThread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/RISCV.hpp"

KernelThread *KernelThread::running = nullptr;
uint64 KernelThread::timeSliceCounter = 0;

KernelThread *KernelThread::createThread(Body body, void *argument) {
    return new KernelThread(body, argument);
}

bool KernelThread::isFinished() const {
    return finished;
}

void KernelThread::setFinished(bool finished) {
    KernelThread::finished = finished;
}

#include "../h/syscall_c.hpp"
void KernelThread::yield() {
    thread_dispatch();
}

void KernelThread::dispatch() {
    KernelThread *old = running;
    if (!old->isFinished()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();
    running->timeSliceCounter = 0;
    contextSwitch(&old->context, &running->context);
}

void KernelThread::wrapper() {
    RISCV::popSppSpie();
    running->body(running->argument);
    running->finished = true;
    KernelThread::yield();
}

KernelThread::~KernelThread() {
    kfree(stack);
}

uint64 KernelThread::getInterruptResult() const {
    return interruptResult;
}

KernelThread::KernelThread(Body body, void *argument)
    : body(body), argument(argument),
      stack(body ? (uint64 *) kmalloc(DEFAULT_STACK_SIZE * sizeof(uint64)) : nullptr),
      context({(uint64) &wrapper, stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0}),
      finished(false) {
    if (body) {
        Scheduler::put(this);
    }
}