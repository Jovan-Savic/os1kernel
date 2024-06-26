#include "../h/tcb.hpp"
#include "../test/printing.hpp"


extern void userMain();

void functionHelper(void* thr){ //omotac korisnicke funkcije
    //Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    userMain();
}

int main(){
    __asm__ volatile("csrw stvec, %[trap]" : : [trap] "r" (&Riscv::supervisorTrap)); //pripremanje osnovnih stvari u sis.r
    MemoryAllocator::init();

    TCB* threads[2];

    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    thread_create(&threads[1],functionHelper, nullptr);
    while(!(threads[1]->isFinished())){


        thread_dispatch();
    }

    return 0;
}
