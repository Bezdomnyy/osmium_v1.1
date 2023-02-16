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
    while(!userTCB->isFinished()) {
        TCB::dispatch();
    }

    Kernel::finishKernel();
    delete userTCB;
    delete backgroundTCB;
}