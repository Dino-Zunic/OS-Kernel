#include "../h/KernelConsole.hpp"

KernelConsole *KernelConsole::instance = nullptr;

KernelConsole &KernelConsole::getInstance() {
    if (!instance) {
        instance = new KernelConsole;
    }
    return *instance;
}

Buffer<char> &KernelConsole::getInput() {
    return getInstance().input;
}

Buffer<char> &KernelConsole::getOutput() {
    return getInstance().output;
}

