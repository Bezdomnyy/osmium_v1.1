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
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1, 0);
}

TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0, 0);
}

TCB *TCB::createSupervisorTCB(TCB::Body body, void *args) {
    return new TCB
    (body, args,DEFAULT_TIME_SLICE, true, true);
}
/*void TCB::yield() {
    RiscV::pushRegisters();

    dispatch();

    RiscV::popRegisters();
}*/


TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready, bool supervisor)
: body(body),
args(args),
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
finished(false),
blocked(false),
timeSlice(timeSlice),
context({
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        })
{
    if (body != nullptr && ready) Scheduler::put(this);
}


void TCB::dispatch() {
    //__print_string("hello\n");
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    RiscV::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    //thread_exit();
    thread_dispatch();
}

void TCB::sThreadWrapper() {
    RiscV::setSstatus(0x0000000000000001UL << 8);
    RiscV::setSstatus(0x0000000000000001UL << 5);
    RiscV::setSstatus(RiscV::SIE);
    RiscV::popSppSpie();
    running->body(running->args);
    //running->setFinished(true);
    thread_exit();
    //thread_dispatch();
}
