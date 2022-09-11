//
// Created by os on 9/9/22.
//

#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyQueue;

TCB* Scheduler::get() {
    //return readyQueue.takeFirst();
    TCB* ret = readyQueue.takeFirst();
    //readyQueue.printStatus();
    return ret;
}

void Scheduler::put(TCB* tcb) {
    //return readyQueue.putLast(tcb);
    readyQueue.putLast(tcb);
    //readyQueue.printStatus();
}