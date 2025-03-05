#ifndef TIMER_HPP
#define TIMER_HPP

#include "../lib/hw.h"

class Timer {
public:
    static uint64 now();
    static void update();
private:
    static time_t timeCounter;
};


#endif // TIMER_HPP
