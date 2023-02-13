#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/__print.hpp"
#include "../h/kernel.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/tcb.hpp"
#include "../h/uart_consumer.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    Kernel::initKernel();

    TCB* main = TCB::createTCB(nullptr, nullptr);
    RiscV::setSstatus(RiscV::SIE);
    TCB* user = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    TCB::running = main;

    TCB* uart_tx = TCB::createTCB((void(*)(void*))uart_consumer, nullptr);


    __print_string("hey!\n");
    while(!user->isFinished()) {
        __print_string("hello\n");
        TCB::dispatch();
    }

    uart_tx->setFinished(true);

    __print_string("Finished\n");

    //thread_exit();


}