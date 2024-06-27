//
// Created by os on 5/12/24.
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    FreeMem* tek = freememhead;
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    }


    if(tek && tek->size < sizei){
        predhodni = tek;
        tek = tek->sled;
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    else if(tek->size > sizei){ // nisu iste
        size_t pom = tek->size;
        tek->size = sizei;
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
        sledeci->size = pom -sizei -sizeof(FreeMem);
        sledeci->sled = tek->sled;
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    else freememhead = sledeci;

    return (void* ) (tek+1);
}

int MemoryAllocator::mem_free(const void * addr) {

    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;

    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));

    if (freememhead == nullptr) {
        freememhead = tek;
        tek->sled = nullptr;
    }
    else if((char*)tek < (char*)freememhead) {
        tek->sled = freememhead;
        freememhead = tek;
        join(freememhead);
    }
    else {
        FreeMem* currFree = freememhead;
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);

        tek->sled = currFree->sled;
        currFree->sled = tek;

        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
};


int MemoryAllocator::join (FreeMem* tek) {

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
