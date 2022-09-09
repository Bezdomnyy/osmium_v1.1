//
// Created by os on 9/9/22.
//

#include "../h/tcb.hpp"

TCB *TCB::running = nullptr;

TCB *TCB::createTCB(TCB::Body body, void *args) {
    return new TCB(body, args);
}

TCB *TCB::createTCB() {
    return new TCB();
}


void TCB::dispatch() {
    RiscV::pushRegisters();

    putForward();

    RiscV::popRegisters();
}

void TCB::putForward() {
    TCB* old = running;
    running = Scheduler::get();
    if (!old->isFinished()) Scheduler::put(old);

    contextSwitch(&old->context, &running->context);

}