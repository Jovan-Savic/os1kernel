//
// Created by os on 6/5/24.
//
//
// Created by os on 5/22/24.
// zamena new & delete preuzeta sa online vezbi
#include "../h/_syscall_cpp.hpp"

using size_t = decltype(sizeof(0));
//public thread

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&myHandle, body, arg);
}//prvo mem alloc!!!

Thread::~Thread() {
    thread_exit();
}

int Thread::start() {
    //myHandle->start();
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

/*int Thread::sleep(time_t t) {
    time_sleep(t);
    return 0;
}*/
//protected thread
Thread::Thread() {
    myHandle= nullptr;
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
}
void Thread::threadWrapper(void *thread) {
    ((Thread*)thread)->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}
int Semaphore::signal() {
    return sem_signal(myHandle);
}
int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

/*int Semaphore::timedWait(time_t t) {
    sem_timedwait(myHandle,t);
    return 0;
}


void PeriodicThread::terminate() {
    //terminate();
}

PeriodicThread::PeriodicThread(time_t period) {

}

char Console::getc() {
    return ::getc();
}
void Console::putc(char c) {
    ::putc(c);
}*/