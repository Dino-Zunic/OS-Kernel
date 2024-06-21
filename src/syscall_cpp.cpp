#include "../h/syscall_cpp.hpp"

void *operator new(uint64 n) {
    return mem_alloc(n);
}

void *operator new[](uint64 n) {
    return mem_alloc(n);
}

void operator delete(void *memory) {
    mem_free(memory);
}

void operator delete[](void *memory) {
    mem_free(memory);
}

Thread::Thread(Body body, void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    // todo: doraditi

}

SuccessIndicator Thread::start() {
    return thread_create(&myHandle, &wrapper, (void *)this);
}

void Thread::dispatch() {
    thread_dispatch();
}

SuccessIndicator Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::wrapper(void *argument) {
    ((Thread *) argument)->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    // todo: doraditi
    sem_close(myHandle);
}

SuccessIndicator Semaphore::wait() {
    return sem_wait(myHandle);
}

SuccessIndicator Semaphore::signal() {
    return sem_signal(myHandle);
}

SuccessIndicator Semaphore::timedWait(time_t time) {
    return sem_timedwait(myHandle, time);
}

SuccessIndicator Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

void PeriodicThread::terminate() {
    period = 0;
}

PeriodicThread::PeriodicThread(time_t period) : period(period) {}

void PeriodicThread::run() {
    while (period) {
        periodicActivation();
        int result = sleep(period);
        if (result < 0) {
            terminate();
        }
    }
}

char Console::getc() {
    return (char) ::getc();
}

void Console::putc(char character) {
    ::putc(character);
}
