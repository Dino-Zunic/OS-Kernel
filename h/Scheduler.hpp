#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "List.hpp"

class KernelThread;

class Scheduler {
public:
    static KernelThread *get();
    static void put(KernelThread *thread);
//private:
    static List<KernelThread> ready;
};

#endif // SCHEDULER_HPP
