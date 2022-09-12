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
    //readyQueue.printStatus();
}

void Scheduler::timerInterrupt() {
    sleepNode *first = sleepQueue.getFirst();
    first->time--;
    while(first->time == 0) {
        sleepQueue.takeFirst();
        first->thread->setFinished(false);
        Scheduler::put(first->thread);
        delete first;
        first = sleepQueue.getFirst();
    }
}

void Scheduler::timeSleep(time_t time) {
    TCB* old = TCB::running;
    old->setFinished(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    thread_dispatch();
}
