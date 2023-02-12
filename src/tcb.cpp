//
// Created by os on 9/9/22.
//

#include "../h/tcb.hpp"
#include "../h/__print.hpp"
#include "../h/syscall_c.h"
#include "../h/scheduler.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createTCB(TCB::Body body, void *args) {
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1);
}

TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0);
}

/*void TCB::yield() {
    RiscV::pushRegisters();

    dispatch();

    RiscV::popRegisters();
}*/


TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready)
: body(body),
args(args),
stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
finished(false),
blocked(false),
timeSlice(timeSlice),
context({
                body != nullptr ? (uint64) &threadWrapper : 0,
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        })
{
    if (body != nullptr && ready) Scheduler::put(this);
}


void TCB::dispatch()
{

    //__print_string("TCB::dispatch()\n");

    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();
    //while (!running) { __print_string("oh no1\n"); Scheduler::get(); }

    /*__print_string("old: ");
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
