//
// Created by os on 5/19/24.
//

#ifndef PROJEKAT_WORKERS_HPP
#define PROJEKAT_WORKERS_HPP

#include "semaphore.hpp"

extern void workerBodyA(void* g);

extern void workerBodyB(void* g);

extern void workerBodyC(void* g);

extern void workerBodyD(void* g);

#endif //PROJEKAT_WORKERS_HPP
