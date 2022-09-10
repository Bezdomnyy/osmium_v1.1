//
// Created by os on 9/9/22.
//

#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyQueue;

TCB* Scheduler::get() {
    TCB* ret = readyQueue.removeFirst();
    //readyQueue.printStatus();
    return ret;
}

void Scheduler::put(TCB* tcb) {
    readyQueue.addLast(tcb);
    //readyQueue.printStatus();
}