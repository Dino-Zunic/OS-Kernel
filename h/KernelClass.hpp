#ifndef KERNELCLASS_HPP
#define KERNELCLASS_HPP

#include "../lib/hw.h"

/**
 * @brief Classes that inherit from this class are allocated for the purposes of the kernel.
 */
class KernelClass {
public:
    static void *operator new(size_t size);
    static void *operator new[](size_t size);
    static void operator delete(void *memory);
    static void operator delete[](void *memory);
};

/**
 * Kernel-level memory allocation
 * @param size in bytes
 * @return pointer to allocated memory
 */
void *kmalloc(size_t size);

/**
 * Kernel-level memory deallocation
 * @param memory allocated by kmalloc, undefined behavior otherwise
 */
void kfree(void *memory);


#endif // KERNELCLASS_HPP
