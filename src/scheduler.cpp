//
// Created by os on 9/9/22.
//

#include "../h/scheduler.hpp"

TCB* Scheduler::get() {
    return readyQueue.takeFirst();
}

void Scheduler::put(TCB* tcb) {
    readyQueue.putLast(tcb);
}