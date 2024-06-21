#ifndef PROJECT_BASE_V1_1_RISCV_HPP
#define PROJECT_BASE_V1_1_RISCV_HPP

#include "../lib/hw.h"

class KernelSemaphore;

class RISCV {
public:
    static bool volatile flag;

    enum SCAUSE {
        TIMER = (1ull << 63) | 1,
        CONSOLE = (1ull << 63) | 9,
        USER = 8,
        SUPERVISOR = 9
    };
    enum SSTATUS {
        SIE = 1 << 1,
        SPIE = 1 << 5,
        SPP = 1 << 8
    };
    enum SIP {
        SSIP = 1 << 1,
        STIP = 1 << 5,
        SEIP = 1 << 9
    };

    static uint64 getScause() {
        volatile uint64 scause;
        asm volatile("csrr %0, scause" : "=r"(scause));
        return scause;
    }

    static void setScause(uint64 scause) {
        asm volatile("csrw scause, %0" : : "r"(scause));
    }

    static uint64 getSepc() {
        volatile uint64 sepc;
        asm volatile("csrr %0, sepc" : "=r"(sepc));
        return sepc;
    }

    static void setSepc(uint64 sepc) {
        asm volatile("csrw sepc, %0" : : "r"(sepc));
    }

    static uint64 getSstatus() {
        volatile uint64 sstatus;
        asm volatile("csrr %0, sstatus" : "=r"(sstatus));
        return sstatus;
    }

    static void setSstatus(uint64 sstatus) {
        asm volatile("csrw sstatus, %0" : : "r"(sstatus));
    }

    static void maskSetSstatus(uint64 mask) {
        asm volatile("csrs sstatus, %0" : : "r"(mask));
    }

    static void maskClearSstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));
    }

    static uint64 getStvec() {
        volatile uint64 stvec;
        asm volatile("csrr %0, stvec" : "=r"(stvec));
        return stvec;
    }

    static void setStvec(uint64 stvec) {
        asm volatile("csrw stvec, %0" : : "r"(stvec));
    }

    static uint64 getSip() {
        volatile uint64 sip;
        asm volatile("csrr %0, sip" : "=r"(sip));
        return sip;
    }

    static void setSip(uint64 sip) {
        asm volatile("csrw sip, %0" : : "r"(sip));
    }

    static void maskSetSip(uint64 mask) {
        asm volatile("csrs sip, %0" : : "r"(mask));
    }

    static void maskClearSip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    }

    static uint64 getRa() {
        volatile uint64 ra;
        asm volatile("mv %0, x1" : "=r"(ra));
        return ra;
    }

    static void setRa(uint64 ra) {
        asm volatile("mv x1, %0" : : "r"(ra));
    }

    static void supervisorTrap();
    static void handleSupervisorTrap();
    static void popSppSpie();

    static void exit() {
        asm volatile("li a0, 0x100000");
        asm volatile("li a1, 0x5555");
        asm volatile("sw a1, 0(a0)");
    }

    static bool volatile privileged;
private:
    static KernelSemaphore *asleep;
    static KernelSemaphore &getAsleep();
};

#endif //PROJECT_BASE_V1_1_RISCV_HPP
