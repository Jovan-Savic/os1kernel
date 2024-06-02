//
// Created by os on 5/19/24.
//

#ifndef PROJEKAT_SCHEDULER_HPP
#define PROJEKAT_SCHEDULER_HPP

#include "list.hpp"
class TCB;

class Scheduler {

private:
    static List<TCB> readyThreadQueue;
public:
    static TCB *get();
    static void put(TCB *ccb);
};


#endif //PROJEKAT_SCHEDULER_HPP
