//
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    return new Sem(init);
}

Sem::~Sem() {
    while (val < 0) {
        Scheduler::put(list.takeFirst());
        val++;
    }
}

int Sem::semWait() {
    //if (Scheduler::readyQueueEmpty()) return -1;
    if (--val < 0) {
        TCB *old = TCB::running;
        //if (!TCB::running) __print_string("error!!!\n");
        old->setBlocked(true);
        list.putLast(old);
        //list.printStatus();
        TCB::dispatch();
        //thread_dispatch();
    }
    return 0;
}

int Sem::semSignal() {
    if (++val <= 0) {
        //if (!list.getFirst()) return -1;
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
}