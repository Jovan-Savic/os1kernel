#include "../h/tcb.hpp"
#include "../test/printing.hpp"


extern void userMain();

void UserMainWrapper(void* placeholder){ //omotac korisnicke funkcije
    userMain();
}

int main(){

    //inicijalizacija kernela
    __asm__ volatile("csrw stvec, %[trap]" : : [trap] "r" (&Riscv::supervisorTrap));
    MemoryAllocator::init();

    TCB* threads[2];
    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    thread_create(&threads[1],UserMainWrapper, nullptr);
    while(!(threads[1]->isFinished())){
        thread_dispatch();
    }

    return 0;
}
