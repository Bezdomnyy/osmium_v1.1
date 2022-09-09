//
// Created by os on 9/9/22.
//

#ifndef OSMIUM_SCHEDULER_HPP
#define OSMIUM_SCHEDULER_HPP

#include "list.hpp"

class TCB;

class Scheduler {
private:
    static List<TCB> readyQueue;
public:
    static TCB* get();
    static void put(TCB*);
};


#endif //OSMIUM_SCHEDULER_HPP
