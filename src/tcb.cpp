//
// Created by os on 5/19/24.
//

#include "../h/tcb.hpp"


TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}

void *TCB::operator new[](size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}

void TCB::operator delete(void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}

void TCB::operator delete[](void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}

void TCB::yield(){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

void TCB::dispatch(){

    TCB* old= running;
    if(!old->isFinished()){
        Scheduler::put(old);
    }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

TCB *TCB::createThread(Body body) {
    return new TCB(body,TIME_SLICE);
}

void TCB::deleteThread(TCB* thread){
    delete thread;
}


int TCB::exitThread() {
    TCB::running->setFinished(true);
    TCB::yield();
    return 0;
}


void TCB::threadWrapper() {

    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}

