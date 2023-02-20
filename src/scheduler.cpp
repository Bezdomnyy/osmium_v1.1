//
// Created by os on 9/9/22.
//

#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyQueue;
List<Scheduler::sleepNode> Scheduler::sleepQueue;

TCB* Scheduler::get() {
    TCB* ret = readyQueue.takeFirst();
    return ret;
}

void Scheduler::put(TCB* tcb) {
    readyQueue.putLast(tcb);
}

void Scheduler::timerInterrupt() {
    sleepNode *first = sleepQueue.getFirst();
    while(first) {
        //  __print_uint64(first->time);
        //__print_string("\n");
        if (first->time != 0) break;
        sleepQueue.takeFirst();
        first->thread->setBlocked(false);
        Scheduler::put(first->thread);
        delete first;
        first = sleepQueue.getFirst();
    }
    if (!first) return;
    first->time--;
}

void Scheduler::timeSleep(time_t time) {
    TCB* old = TCB::running;
    old->setBlocked(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    TCB::dispatch();
}

void Scheduler::finish() {
    sleepQueue.deleteList();
    readyQueue.deleteList();
}
