#ifndef NOVI_PROJEKAT_SCHEDULER_HPP
#define NOVI_PROJEKAT_SCHEDULER_HPP

#include "List.hpp"

class KernelThread;

class Scheduler {
public:
    static KernelThread *get();
    static void put(KernelThread *thread);
//private:
    static List<KernelThread> ready;
};

#endif //NOVI_PROJEKAT_SCHEDULER_HPP
