#ifndef KERNELTHREAD_HPP
#define KERNELTHREAD_HPP

#include "../lib/hw.h"
#include "../h/KernelClass.hpp"

using Body = void(*)(void *);

class KernelThread : public KernelClass {
public:
    friend class RISCV;
    friend class KernelSemaphore;

    static KernelThread *createThread(Body body, void *argument);

    bool isFinished() const;
    void setFinished(bool finished);

    uint64 getInterruptResult() const;

    static void yield();

    static KernelThread *running;

    ~KernelThread();
private:
    /**
     * @brief Structure representing the context of a thread.
     */
    struct Context {
        uint64 ra; /**< Return address. */
        uint64 sp; /**< Stack pointer. */
    };

    Body body;
    void *argument;
    uint64 *stack;
    Context context;
    bool finished;

    uint64 whenFinished;

    static uint64 timeSliceCounter;

    static void dispatch();
    static void contextSwitch(Context *oldContext, Context *newContext);
    static void wrapper();
    KernelThread(Body body, void *argument);

    uint64 interruptResult;
};

#endif // KERNELTHREAD_HPP
