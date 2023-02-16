#include "../lib/hw.h"
#include "../h/kernel.hpp"
#include "../h/uart_consumer.hpp"

void userMain();

void main() {
    Kernel::initKernel();

    TCB* main = TCB::createTCB(nullptr, nullptr);
    TCB* user = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    TCB::running = main;

    TCB* uart_tx = TCB::createSupervisorTCB((void(*)(void*))uart_consumer, nullptr);

    uart_tx->isFinished();
    RiscV::setSstatus(RiscV::SIE);
    while(!user->isFinished()) {
        TCB::dispatch();
    }
}