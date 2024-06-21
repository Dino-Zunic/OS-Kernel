#include "../h/KernelClass.hpp"
#include "../h/MemoryAllocator.hpp"

void *KernelClass::operator new(size_t size) {
    return kmalloc(size);
}

void *KernelClass::operator new[](size_t size) {
    return kmalloc(size);
}

void KernelClass::operator delete(void *memory) {
    kfree(memory);
}

void KernelClass::operator delete[](void *memory) {
    kfree(memory);
}

void *kmalloc(size_t size) {
    return MemoryAllocator::getInstance().malloc(size);
}

void kfree(void *memory) {
    MemoryAllocator::getInstance().free(memory);
}
