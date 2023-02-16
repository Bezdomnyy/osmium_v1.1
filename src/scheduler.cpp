//
// Created by os on 9/9/22.
//

#include "../h/scheduler.hpp"
//#include "../h/list.hpp"

List<TCB> Scheduler::readyQueue;
List<Scheduler::sleepNode> Scheduler::sleepQueue;

TCB* Scheduler::get() {
    //return readyQueue.takeFirst();
    TCB* ret = readyQueue.takeFirst();
    //readyQueue.printStatus();
    return ret;
}

void Scheduler::put(TCB* tcb) {
    //return readyQueue.putLast(tcb);
    readyQueue.putLast(tcb);
    //putc('a');
    //readyQueue.printStatus();
}

void Scheduler::timerInterrupt() {
    //__putc('a');
    sleepNode *first = sleepQueue.getFirst();
    if (!first) return;
    first->time--;
    while(first) {
        if (first->time != 0) break;
        sleepQueue.takeFirst();
        first->thread->setBlocked(false);
        Scheduler::put(first->thread);
        //__print_string("wake\n");
        delete first;
        first = sleepQueue.getFirst();
    }
}

void Scheduler::timeSleep(time_t time) {
    //__print_string("tck\n");
    TCB* old = TCB::running;
    old->setBlocked(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    TCB::dispatch();
}
