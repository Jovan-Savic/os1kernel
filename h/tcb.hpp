//
// Created by os on 5/19/24.
//

#ifndef PROJEKAT_TCB_HPP
#define PROJEKAT_TCB_HPP
#include "../lib/hw.h"
#include "scheduler.hpp"
#include "riscv.hpp"

class TCB {

    void *operator new(size_t n);

    void *operator new[](size_t n);

    void operator delete(void *p) noexcept;

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){TCB::operator delete[](stack);}
    bool isFinished() const {return finished;}
    void setFinished(bool f) { TCB::finished = f;}

    uint64 getTimeSlice() const { return timeSlice; }

    static TCB* running;
    using Body = void(*)(void*);

    static TCB *createThread(Body body, void *arg);
    static void deleteThread(TCB *thread);
    static int exitThread();
    static void yield();

private:
    explicit TCB(Body body, uint64 timeSlice, void* arg): body(body), argument(arg), stack(body != nullptr ? (uint64*)TCB::operator new[](STACK_SIZE) : nullptr),
    context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false)
    {
        if(body!= nullptr) Scheduler::put(this);
    };

    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Body body;
    void* argument;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;

    friend class Riscv;
    static void threadWrapper();
    static void dispatch();
    static void contextSwitch(Context* old, Context* running);


};


#endif //PROJEKAT_TCB_HPP
