#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

/**
 * @brief singleton class that handles memory allocation
 */
class MemoryAllocator {
public:
    enum Status {
        SUCCESS = 0,
        MEMORY_OUT_OF_BOUNDS = -1,
        MEMORY_MISALIGNED = -2
    };

    static MemoryAllocator &getInstance();

    /**
     * @brief Allocates memory for the privileged.
     * @param numberOfBlocks number of blocks of MEM_BLOCK_SIZE bytes to be allocated for the privileged
     * @return address of the allocated memory in case of success, or nullptr otherwise
     */
    void *malloc(size_t numberOfBlocks);

    /**
     * @brief Frees memory allocated by malloc method.
     * @param memory address of memory to be freed. if memory is nullptr nothing is done. if memory is outside of bounds error is thrown. undefined behavious otherwise.
     * @return 0 in case of success and negative valued error code otherwise
     */
    int free(void *memory);

private:
    MemoryAllocator();
    struct BlockHeader {
        // must be aligned to MEM_BLOCK_SIZE
        BlockHeader *next;
        size_t numberOfBlock;
    };
    BlockHeader *head;

    /**
     * @brief Merges a block with his successor if they are consecutive.
     * @param block address of the block to be merged
     */
    void merge(BlockHeader *block);
};

#endif // MEMORYALLOCATOR_HPP
