//
// Created by os on 6/2/24.
//

#ifndef PROJEKAT_1_1_SEMAPHORE_HPP
#define PROJEKAT_1_1_SEMAPHORE_HPP


#include "../lib/hw.h"
#include "tcb.hpp"

class sem {

    void *operator new(size_t n);

    void *operator new[](size_t n);

    void operator delete(void *p) noexcept;

    void operator delete[](void *p) noexcept;
public:
    static sem* openSemaphore(int val);
    int closeSemaphore();
    int wait();
    int signal();
    int trywait();
    int timed_wait();


private:
    explicit sem(int val = 1): value(val), closed(false){};
    int value;
    bool closed;
    List<TCB> blocked;
};


#endif //PROJEKAT_1_1_SEMAPHORE_HPP
