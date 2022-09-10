//
// Created by os on 9/9/22.
//

#include "../h/tcb.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

TCB *TCB::createTCB(TCB::Body body, void *args) {
    return new TCB(body, args);
}

void TCB::yield() {
    RiscV::pushRegisters();

    dispatch();

    RiscV::popRegisters();
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}