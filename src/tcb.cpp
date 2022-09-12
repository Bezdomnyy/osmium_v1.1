//
// Created by os on 9/9/22.
//

#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createTCB(TCB::Body body, void *args) {
    return new TCB(body, args, DEFAULT_TIME_SLICE);
}

/*void TCB::yield() {
    RiscV::pushRegisters();

    dispatch();

    RiscV::popRegisters();
}*/

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

void TCB::threadWrapper() {
    RiscV::popSppSpie();
    running->body(running->args);
    thread_exit();
}
