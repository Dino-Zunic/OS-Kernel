#include "../h/KernelSemaphore.hpp"
#include "../h/KernelThread.hpp"
#include "../h/Timer.hpp"
#include "../h/Scheduler.hpp"
#include "../test/printing.hpp"

List<KernelSemaphore> KernelSemaphore::declaredSemaphores;

constexpr uint64 INFINITY = 1ull << 63;

void KernelSemaphore::unblock() {
    KernelThread* thread = blocked.dequeue();
    if (thread->isFinished()) {
        return;
    }
    if (closed) {
        thread->interruptResult = SEMDEAD;
    }
    Scheduler::put(thread);
}

void KernelSemaphore::block(time_t time) {
    KernelThread *old = KernelThread::running;
    old->whenFinished = Timer::now() + time;
    old->interruptResult = SUCCESS;
    auto *element = new List<KernelThread>::Element(old, 0);
    List<KernelThread>::Element *prev = nullptr, *curr = blocked.head;
    while (curr) {
        if (element->data->whenFinished < curr->data->whenFinished) {
            break;
        }
        prev = curr;
        curr = curr->next;
    }

    if (!blocked.head) {
        blocked.head = blocked.tail = element;
    } else {
        (prev ? prev->next : blocked.head) = element;
        element->next = curr;
        if (curr == nullptr) {
            blocked.tail = element;
        }
    }

    KernelThread::running = Scheduler::get();
    KernelThread::running->timeSliceCounter = 0;
    KernelThread::contextSwitch(&old->context, &KernelThread::running->context);
}

void KernelSemaphore::doSwitch(KernelThread *old) {
    KernelThread::running = Scheduler::get();
    KernelThread::running->timeSliceCounter = 0;
    KernelThread::contextSwitch(&old->context, &KernelThread::running->context);
}

void KernelSemaphore::wait() {
    timedWait(INFINITY);
}

void KernelSemaphore::signal() {
    if (closed) {
        KernelThread::running->interruptResult = SEMDEAD;
    }
    if (++value <= 0) {
        unblock();
    }
}

void KernelSemaphore::timedWait(time_t time) {
    if (--value < 0) {
        block(time);
    }
}

int KernelSemaphore::tryWait() {
    if (closed) {
        return SEMDEAD;
    }
    if (value > 0) {
        --value;
        return UNLOCKED;
    }
    return SUCCESS;
}

int KernelSemaphore::getValue() const {
    return value;
}

bool KernelSemaphore::isClosed() const {
    return closed;
}

void KernelSemaphore::close() {
    closed = true;
    while (!blocked.isEmpty()) {
        unblock();
    }
    declaredSemaphores.removeFromList(this);
}


void KernelSemaphore::update() {
    for (auto *curr = declaredSemaphores.head; curr; curr = curr->next) {
        curr->data->updateIndividually();
    }
}

void KernelSemaphore::updateIndividually() {
    while (!blocked.isEmpty() && blocked.peekFirst()->whenFinished <= Timer::now()) {
        blocked.peekFirst()->interruptResult = TIMEOUT;
        unblock();
    }
}

KernelSemaphore *KernelSemaphore::createKernelSemaphore(uint64 value) {
    KernelSemaphore *handle = new KernelSemaphore(value);
    declaredSemaphores.enqueue(handle);
    return handle;
}
