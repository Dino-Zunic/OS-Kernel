#include "../h/Timer.hpp"

uint64 Timer::timeCounter = 0;

uint64 Timer::now() {
    return timeCounter;
}

void Timer::update() {
    timeCounter++;
}
