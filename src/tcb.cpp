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

    //__print_string("TCB::dispatch()\n");

    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();



   /* __print_string("old: ");
    __print_uint64((uint64)old); __putc('\n');

    __print_string("running: ");
    __print_uint64((uint64)running); __putc('\n');*/

    TCB::contextSwitch(&old->context, &running->context);
}