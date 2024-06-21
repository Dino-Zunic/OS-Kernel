#ifndef NOVI_PROJEKAT_SYSCALL_CPP_HPP
#define NOVI_PROJEKAT_SYSCALL_CPP_HPP

#include "syscall_c.hpp"

void *operator new (size_t);
void *operator new[] (size_t);
void operator delete (void*);
void operator delete[] (void*);

using Body = void (*)(void*);

class Thread {
public:
    Thread (Body body, void* arg);
    virtual ~Thread ();

    SuccessIndicator start ();

    static void dispatch ();
    static SuccessIndicator sleep (time_t);

protected:
    Thread () = default;
    virtual void run () {}

private:
    thread_t myHandle;
    Body body;
    void* arg;

    static void wrapper(void *argument);
};

class Semaphore {
public:

    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();

    SuccessIndicator wait();
    SuccessIndicator signal();
    SuccessIndicator timedWait(time_t);
    SuccessIndicator tryWait();

private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
public:
    void terminate ();

protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}

    virtual void run();

private:
    time_t period;
};


class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif //NOVI_PROJEKAT_SYSCALL_CPP_HPP
