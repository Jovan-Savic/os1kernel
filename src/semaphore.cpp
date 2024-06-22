//
// Created by os on 6/2/24.
//

#include "../h/semaphore.hpp"

void *sem::operator new(size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}

void *sem::operator new[](size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}

void sem::operator delete(void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}

void sem::operator delete[](void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}

sem *sem::openSemaphore(int val) {
    return new sem(val);
}

int sem::closeSemaphore() {
    if(!this->closed) this->closed = true;
    else return -2;

   while(this->blocked.peekFirst()){
       TCB* thread = this->blocked.removeFirst();
       thread->setBlocked(false);
       Scheduler::put(thread);
   }
    return 0;
}

int sem::wait() {
    if(this->closed) return -2;
    this->value--;
    if(this->value <0){
        this->blocked.addLast(TCB::running);
        TCB::running->setBlocked(true);

        TCB::timeSliceCounter=0;
        TCB::dispatch();
    }

    return 0;
}

int sem::signal() {
    if(this->closed) return -2;
    this->value++;
    if(this->value >0){
        TCB* thread = this->blocked.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    }
    return 0;
}

int sem::trywait() {
    return 0;
}

int sem::timed_wait() {
    return 0;
}

