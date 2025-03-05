#ifndef BUFFER_HPP
#define BUFFER_HPP

#include "KernelSemaphore.hpp"

template <typename T>
class Buffer : KernelClass {
public:
    static constexpr uint64 N = 512;

    Buffer() : mutex(KernelSemaphore::createKernelSemaphore(1)),
               spaceAvailable(KernelSemaphore::createKernelSemaphore(N)),
               itemAvailable(KernelSemaphore::createKernelSemaphore(0)),
               head(0), tail(0) {}

    void append(T data) {
        spaceAvailable->wait();
        mutex->wait();
        buffer[tail] = data;
        tail = (tail + 1) % N;
        mutex->signal();
        itemAvailable->signal();
    }

    T take() {
        itemAvailable->wait();
        mutex->wait();
        T data = buffer[head];
        head = (head + 1) % N;
        mutex->signal();
        spaceAvailable->signal();
        return data;
    }

    bool isEmpty() const {
        mutex->wait();
        bool result = head == tail;
        mutex->signal();
        return result;
    }

    ~Buffer() {
        mutex->close();
        itemAvailable->close();
        spaceAvailable->close();
        delete mutex;
        delete itemAvailable;
        delete spaceAvailable;
    }
private:
    KernelSemaphore *mutex;
    KernelSemaphore *spaceAvailable;
    KernelSemaphore *itemAvailable;
    T buffer[N];
    int head, tail;
};

#endif // BUFFER_HPP
