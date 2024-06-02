//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    MemoryAllocator::init();
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    int velicinaZaglavlja = 2 *sizeof(size_t); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE) *MEM_BLOCK_SIZE;
    char* niz = (char*)mem_alloc(maxMemorija); // celokupan prostor
    if(niz == nullptr) {
        __putc('?');
    }

    int n = 10;
    char* niz2 = (char*)mem_alloc(n*sizeof(char));
    if(niz2 == nullptr) {
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    if(status != 0) {
        __putc('?');
    }
    niz2 = (char*)mem_alloc(n*sizeof(char));
    if(niz2 == nullptr) {
        __putc('?');
    }



    //threads[0] = TCB::createThread(nullptr, nullptr);
    thread_create(threads[0],nullptr, nullptr);
    TCB::running = threads[0];

    //threads[1] = TCB::createThread(workerBodyA, nullptr);
    thread_create(threads[1],workerBodyA, nullptr);
    printString("ThreadA created\n");
    //threads[2] = TCB::createThread(workerBodyB , nullptr);
    thread_create(threads[2],workerBodyB, nullptr);
    printString("ThreadB created\n");
    //threads[3] = TCB::createThread(workerBodyC, nullptr);
    thread_create(threads[3],workerBodyC, nullptr);
    printString("ThreadC created\n");
    //threads[4] = TCB::createThread(workerBodyD, nullptr);
    thread_create(threads[4],workerBodyD, nullptr);
    printString("ThreadD created\n");



   Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    }

    for (auto &thread: threads)
    {
        TCB::deleteThread(thread);
    }
    printString("Finished\n");

    return 0;
}
