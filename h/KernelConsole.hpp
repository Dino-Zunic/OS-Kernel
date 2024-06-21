#ifndef NOVI_PROJEKAT_KERNELCONSOLE_HPP
#define NOVI_PROJEKAT_KERNELCONSOLE_HPP

#include "KernelClass.hpp"
#include "KernelSemaphore.hpp"
#include "Buffer.hpp"

class KernelConsole : public KernelClass {
public:
    static Buffer<char> &getInput();
    static Buffer<char> &getOutput();
private:
    KernelConsole() = default;
    static KernelConsole *instance;
    static KernelConsole &getInstance();
    Buffer<char> input;
    Buffer<char> output;
};

#endif //NOVI_PROJEKAT_KERNELCONSOLE_HPP
