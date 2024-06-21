#include "../h/Scheduler.hpp"

List<KernelThread> Scheduler::ready;

KernelThread *Scheduler::get() {
    return ready.dequeue();
}

void Scheduler::put(KernelThread *thread) {
    ready.enqueue(thread);
}
