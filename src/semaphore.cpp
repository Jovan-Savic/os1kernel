//
// Created by os on 6/2/24.
//

#include "../h/semaphore.hpp"

void *semaphore::operator new(size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}
void *semaphore::operator new[](size_t n)
{
    return MemoryAllocator::mem_alloc(n);
}
void semaphore::operator delete(void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}
void semaphore::operator delete[](void *p) noexcept
{
    MemoryAllocator::mem_free(p);
}

semaphore *semaphore::openSemaphore(int val) {
    return new semaphore(val);
}

int semaphore::closeSemaphore() {
    if(!this->closed) this->closed = true;
    else return -2;

   while(this->blocked.peekFirst()){
       unblock();
   }
    return 0;
}

int semaphore::wait() {
    if(this->closed) return -2;
    this->value--;
    if(this->value <0){
        block();
    }

    return 0;
}

int semaphore::signal() {
    if(this->closed) return -2;
    this->value++;
    if(this->value <=0){
       unblock();
    }
    return 0;
}

int semaphore::trywait() {

    if(this->closed) return -2;
    if(this->value -1 <0){
        return 0;
    }
    return 1;

}

int semaphore::timed_wait() {
    return 0;
}

void semaphore::block() {
    this->blocked.addLast(TCB::running);
    TCB::running->setBlocked(true);

    TCB::timeSliceCounter=0;
    TCB::dispatch();
}

void semaphore::unblock() {

    TCB *thread = this->blocked.removeFirst();
    if (thread) {
        thread->setBlocked(false);
        Scheduler::put(thread);
    }
}

