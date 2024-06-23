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
       unblock();
   }

   //delete this;
    return 0;
}

int sem::wait() {
    if(this->closed) return -2;
    this->value--;
    if(this->value <0){
        block();
    }

    return 0;
}

int sem::signal() {
    if(this->closed) return -2;
    this->value++;
    if(this->value <=0){
       unblock();
    }
    return 0;
}

int sem::trywait() {

    if(this->closed) return -2;
    if(this->value -1 <0){
        return 0;
    }
    return 1;

}

int sem::timed_wait() {
    return 0;
}

void sem::block() {
    this->blocked.addLast(TCB::running);
    TCB::running->setBlocked(true);

    TCB::timeSliceCounter=0;
    TCB::dispatch();
}

void sem::unblock() {

    TCB *thread = this->blocked.removeFirst();
    if (thread) {
        thread->setBlocked(false);
        Scheduler::put(thread);
    }
}

