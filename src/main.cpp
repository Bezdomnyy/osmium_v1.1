#include "../lib/hw.h"
#include "../h/kernel.hpp"
#include "../h/uart_consumer.hpp"

void userMain();

void background() {
    while(!Kernel::isFinished()) {
        thread_dispatch();
    }
}

void main() {
    Kernel::initKernel();

    TCB* mainTCB = TCB::createTCB(nullptr, nullptr);
    TCB* userTCB = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    TCB* backgroundTCB = TCB::createTCB((void(*)(void*))&background, nullptr);
    TCB::running = mainTCB;

    TCB* uartTX_TCB = TCB::createTCB((void(*)(void*))&uart_consumer, nullptr);

    uartTX_TCB->isFinished();
    backgroundTCB->isFinished();

    RiscV::setSstatus(RiscV::SIE);

    /*while(!uartTX_TCB->isFinished()) {
        TCB::dispatch();
    }*/

    while(!userTCB->isFinished()) {
        thread_dispatch();
    }

    //delete userTCB;

    Kernel::finishKernel();

    while(!backgroundTCB->isFinished()) {
        thread_dispatch();
    }

    while(!uartTX_TCB->isFinished()) {
        thread_dispatch();
    }

    delete userTCB;
    delete backgroundTCB;
    delete uartTX_TCB;

    Scheduler::finish();
}