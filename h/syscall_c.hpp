#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"

class KernelThread;
class KernelSemaphore;

typedef KernelThread* thread_t;
typedef KernelSemaphore* sem_t;

typedef unsigned long time_t;

const int EOF = -1;

enum ABI_Index : uint64 {
    MEM_ALLOC = 0X01,
    MEM_FREE = 0X02,
    THREAD_CREATE = 0X11,
    THREAD_EXIT = 0X12,
    THREAD_DISPATCH = 0X13,
    SEM_OPEN = 0X21,
    SEM_CLOSE = 0X22,
    SEM_WAIT = 0X23,
    SEM_SIGNAL = 0X24,
    SEM_TIMEDWAIT = 0X25,
    SEM_TRYWAIT = 0X26,
    TIME_SLEEP = 0X31,
    GETC = 0X41,
    PUTC = 0X42
};

// 0 in case of success, negative valued error code otherwise
typedef int SuccessIndicator;

/**
 * @brief Allocates memory of given size
 * @param size the least amount of bytes that will be alocated
 * @return address of allocated memory aligned at MEM_BLOCK_SIZE in case of success, nullptr otherwise
 */
extern void *mem_alloc(size_t size);

/**
 * @brief Frees memory that was allocated by mem_alloc. Does nothing if memory is nullptr. Undefined behaviour if memory was not allocated by mem_alloc.
 * @param memory address of memory to be freed
 */
extern SuccessIndicator mem_free(void *memory);

/**
 * @brief Creates a new thread
 * @param handle holds the pointer to a thread in case of success
 * @param start_routine generic function pointer over which the thread will be created
 * @param arg generic argument for start_routine
 */
extern SuccessIndicator thread_create(
        thread_t *handle,
        void(*start_routine)(void *),
        void *arg
);

extern SuccessIndicator thread_exit();

/**
 * @brief Gives the processor to other, potentially different thread
 */
extern void thread_dispatch();

extern SuccessIndicator sem_open(
        sem_t *handle,
        unsigned init
);

extern SuccessIndicator sem_close(sem_t handle);

extern SuccessIndicator sem_wait(sem_t id);

extern SuccessIndicator sem_signal(sem_t id);

extern SuccessIndicator sem_timedwait(
        sem_t id,
        time_t timeout
);

extern SuccessIndicator sem_trywait(sem_t id);

/**
 * @brief Puts the running thread to sleepInternal for a specified period
 * @param time number of internal time units
 */
extern SuccessIndicator time_sleep(time_t time);

extern int getc();

extern void putc(char c);

uint64 callException(ABI_Index arg0, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4);

#endif // SYSCALL_C_HPP
