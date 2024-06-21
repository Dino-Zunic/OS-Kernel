#include "../h/MemoryAllocator.hpp"

static const void *alignUp(const void *address) {
    size_t result = (size_t) address;
    if (result % MEM_BLOCK_SIZE) result = (result / MEM_BLOCK_SIZE + 1) * MEM_BLOCK_SIZE;
    return (const void *) result;
}

static const void *alignDown(const void *address) {
    return (const void *) ((size_t) address / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
}

MemoryAllocator::MemoryAllocator() {
    head = (BlockHeader *) alignUp(HEAP_START_ADDR);
    head->numberOfBlock = ((char *) alignDown(HEAP_END_ADDR) - (char *) head) / MEM_BLOCK_SIZE;
    head->next = nullptr;
}

void *MemoryAllocator::malloc(size_t numberOfBlocks) {
    // we need one more block for bookkeeping
    numberOfBlocks++;

    BlockHeader *current = head, *previous = nullptr;
    while (current && current->numberOfBlock < numberOfBlocks) {
        previous = current;
        current = current->next;
    }
    if (!current) {
        // not enough memory
        return nullptr;
    }
    if (current->numberOfBlock > numberOfBlocks) {
        BlockHeader *newBlock = (BlockHeader *) ((char *)current + numberOfBlocks * MEM_BLOCK_SIZE);
        (previous ? previous->next : head) = newBlock;
        newBlock->numberOfBlock = current->numberOfBlock - numberOfBlocks;
        newBlock->next = current->next;
        // bookkeeping
        current->numberOfBlock = numberOfBlocks;
    } else if (previous) {
        previous->next = current->next;
    } else {
        head = current->next;
    }
    return (char *) current + MEM_BLOCK_SIZE;
}

int MemoryAllocator::free(void *memory) {
    if (!memory) {
        return SUCCESS;
    }

    // adjust memory to read bookkeeping data
    BlockHeader *block = (BlockHeader *)((char *)memory - MEM_BLOCK_SIZE);

    if ((size_t) block % MEM_BLOCK_SIZE) {
        return MEMORY_MISALIGNED;
    }
    if ((const void *) block < HEAP_START_ADDR || (const void *) block >= HEAP_END_ADDR) {
        return MEMORY_OUT_OF_BOUNDS;
    }

    BlockHeader *previous = nullptr, *current = head;
    while (current && current < block) {
        previous = current;
        current = current->next;
    }

    block->next = current;
    (previous ? previous->next : head) = block;
    merge(previous);
    merge(block);
    return SUCCESS;
}

MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}

void MemoryAllocator::merge(BlockHeader *block) {
    if (block && block->next && (char *)block + block->numberOfBlock * MEM_BLOCK_SIZE == (char *) block->next) {
        block->numberOfBlock += block->next->numberOfBlock;
        block->next = block->next->next;
    }
}