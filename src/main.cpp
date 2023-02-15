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
    TCB* user = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    TCB::running = main;

    TCB* uart_tx = TCB::createSupervisorTCB((void(*)(void*))uart_consumer, nullptr);
    //TCB* uart_rx = TCB::createTCB((void(*)(void*))uart_producer, nullptr);

    __print_string("hey!\n");

    RiscV::setSstatus(RiscV::SIE);
    //uint64 loop = uart_tx->getTimeSlice();
    //char c;
    //int i = 0;
    while(!user->isFinished()) {
        //putc('a');
        //getc();
        //putc(c);
        TCB::dispatch();
        //thread_dispatch();
        //i++;
        //__print_string("hello\n");
        //uart_tx->getTimeSlice();
        //if (!loop) uart_tx->setFinished(true);
    }

    uart_tx->setFinished(true);

    __print_string("Finished\n");
}