#ifndef NOVI_PROJEKAT_KERNELSEMAPHORE_HPP
#define NOVI_PROJEKAT_KERNELSEMAPHORE_HPP

#include "../h/List.hpp"

class KernelThread;

class KernelSemaphore : public KernelClass {
public:
    enum Signal {
        UNLOCKED = 1,
        SUCCESS = 0,
        SEMDEAD = -1,
        TIMEOUT = -2
    };

    /**
     * @brief Decrements the semaphore value and potentially blocks the calling thread.
     */
    void wait();

    /**
     * @brief Increments the semaphore value and potentially unblocks a waiting thread.
     */
    void signal();

    /**
     * @brief Decrements the semaphore value and potentially blocks the calling thread with a timeout.
     * @param time Time to wait before timing out.
     */
    void timedWait(time_t time);

    /**
     * @brief Tries to decrement the semaphore value without blocking.
     * @return Signal Result of the try wait operation.
     */
    int tryWait();

    int getValue() const;

    /**
     * @brief Closes the semaphore, unblocking all waiting threads.
     * @return Signal Result of the close operation.
     */
    void close();

    bool isClosed() const;

    static KernelSemaphore *createKernelSemaphore(uint64 value);

    static void update();
protected:
    void block(time_t time);
    void unblock();
private:
    List<KernelThread> blocked;
    volatile int value;
    volatile bool closed;

    KernelSemaphore(uint64 value = 1) : value((int) value), closed(false) {}

    void updateIndividually();
    static List<KernelSemaphore> declaredSemaphores;

    static void doSwitch(KernelThread *old);
};

#endif //NOVI_PROJEKAT_KERNELSEMAPHORE_HPP
