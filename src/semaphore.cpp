//
// Created by os on 6/2/24.
//

#include "../h/semaphore.hpp"

void *Semaphore::operator new(size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}

void *Semaphore::operator new[](size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}

void Semaphore::operator delete(void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}

void Semaphore::operator delete[](void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}

Semaphore *Semaphore::openSemaphore(int val) {
    return new Semaphore(val);
}

int Semaphore::closeSemaphore() {
    if(!this->closed) this->closed = true;
    else return -2;

   while(this->blocked.peekFirst()){
       TCB* thread = this->blocked.removeFirst();
       thread->setBlocked(false);
       Scheduler::put(thread);
   }
    return 0;
}

int Semaphore::wait() {
    if(this->closed) return -2;
    this->value--;
    if(this->value <=0){
        this->blocked.addLast(TCB::running);
        TCB::running->setBlocked(true);

        TCB::timeSliceCounter=0;
        TCB::dispatch();
    }

    return 0;
}

int Semaphore::signal() {
    if(this->closed) return -2;
    this->value++;
    if(this->value >0){
        TCB* thread = this->blocked.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    }
    return 0;
}

int Semaphore::trywait() {
    return 0;
}

int Semaphore::timed_wait() {
    return 0;
}

