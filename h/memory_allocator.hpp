//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_MEMORY_ALLOCATOR_HPP
#define OSMIUM_MEMORY_ALLOCATOR_HPP

#include "../lib/hw.h"
#include "__print.hpp"

class MemoryAllocator {
public:
    static void* allocate(size_t size);

    static void free(void*);

    static void initMem();

    struct FreeMem {
        size_t size;
        FreeMem *prev;
        FreeMem *next;
    };

/*    static void printMem() {
        if (!fMemHead) __print_string("it happened :/\n"), initMem();
        FreeMem* curr = fMemHead;
        __print_string("Memory Insight:\n");
        int i = 0;
        while(curr) {
            __print_string("FreeMem["); __putc(i+48);
            __print_string("]: ");
            __print_uint64((uint64)curr);
            __putc('\n');
            __print_string("  size: ");
            __print_uint64((uint64)curr->size);
            __putc('\n');
            __print_string("  next: ");
            __print_uint64((uint64)curr->next);
            __putc('\n');
            i++;
            curr = curr->next;
        }
    }*/
private:

    static FreeMem* fMemHead;

    /*static const void* FreeMemStart = HEAP_START_ADDR;
    static const void* FreeMemEnd = HEAP_END_ADDR;
    static const size_t BlockSize = MEM_BLOCK_SIZE;*/

    static FreeMem* firstFit(size_t size);

    static void* allocBlocks(FreeMem* node, size_t size);

    static size_t calcSize(size_t size);

    static void tryToMerge(FreeMem *node);

};


#endif //OSMIUM_MEMORY_ALLOCATOR_HPP
