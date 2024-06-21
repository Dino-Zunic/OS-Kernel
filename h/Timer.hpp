#ifndef NOVI_PROJEKAT_TIMER_HPP
#define NOVI_PROJEKAT_TIMER_HPP

#include "../lib/hw.h"

class Timer {
public:
    static uint64 now();
    static void update();
private:
    static time_t timeCounter;
};


#endif //NOVI_PROJEKAT_TIMER_HPP
