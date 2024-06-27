//
// Created by os on 5/12/24.
//

#ifndef PROJEKAT_MEMORYALLOCATOR_HPP
#define PROJEKAT_MEMORYALLOCATOR_HPP


#include "../lib/hw.h"

class MemoryAllocator{
private:
    struct FreeMem {
        FreeMem* sled;
        size_t size;
    };
    static FreeMem* freememhead;

    static int join(FreeMem* tek);
public:
    static void* mem_alloc(size_t size);
    static int mem_free(const void* adr);
    static void init();
};
#endif //PROJEKAT_MEMORYALLOCATOR_HPP
