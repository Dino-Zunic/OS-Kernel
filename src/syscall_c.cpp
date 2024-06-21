#include "../h/syscall_c.hpp"
#include "../h/KernelThread.hpp"
#include "../test/printing.hpp"
uint64 callException(enum ABI_Index arg0, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    asm volatile("ecall");
    if (!KernelThread::running) {
        printString("Ha sta je ovo\n");
    }
    return KernelThread::running->getInterruptResult();
}

void *mem_alloc(size_t size) {
    uint64 numberOfBlocks = size / MEM_BLOCK_SIZE;
    if (size % MEM_BLOCK_SIZE) {
        numberOfBlocks++;
    }
    return (void *) callException(MEM_ALLOC, numberOfBlocks, 0, 0, 0);
}
int mem_free(void *memory) {
    return (int) callException(MEM_FREE, (uint64) memory, 0, 0, 0);
}

int thread_create(
        thread_t *handle,
        void(*start_routine)(void *),
        void *arg
) {
    return (int) callException(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, 0);
}

int thread_exit() {
    return (int) callException(THREAD_EXIT, 0, 0, 0, 0);
}

void thread_dispatch() {
    callException(THREAD_DISPATCH, 0, 0, 0, 0);
}

int sem_open(
        sem_t *handle,
        unsigned init
) {
    return (int) callException(SEM_OPEN, (uint64) handle, (uint64) init, 0, 0);
}

int sem_close(sem_t handle) {
    return (int) callException(SEM_CLOSE, (uint64) handle, 0, 0, 0);
}

int sem_wait(sem_t id) {
    return (int) callException(SEM_WAIT, (uint64) id, 0, 0, 0);
}

int sem_signal(sem_t id) {
    return (int) callException(SEM_SIGNAL, (uint64) id, 0, 0, 0);
}

int sem_timedwait(
        sem_t id,
        time_t timeout
) {
    return (int) callException(SEM_TIMEDWAIT, (uint64) id, (uint64) timeout, 0, 0);
}

int sem_trywait(sem_t id) {
    return (int) callException(SEM_TRYWAIT, (uint64) id, 0, 0, 0);
}

int time_sleep(time_t time) {
    return (int) callException(TIME_SLEEP, (uint64) time, 0, 0, 0);
}

#include "../lib/console.h"

int getc() {
    return (int) callException(GETC, 0, 0, 0, 0);
}

void putc(char c) {
    callException(PUTC, (uint64) c, 0, 0, 0);
}