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
        old->setBlocked(true);
        list.putLast(old);
        thread_dispatch();
    }
    return 0;
}

int Sem::semSignal() {
    if (++val <= 0) {
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
}