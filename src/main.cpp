#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/__print.hpp"
#include "../h/kernel.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    Kernel::initKernel();

    TCB* threads[2] = {nullptr, nullptr};
    thread_create(&threads[0], nullptr, nullptr);
    RiscV::setSstatus(RiscV::SIE);
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))&userMain, nullptr);
    //thread_create(&threads[2], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];

    //thread_dispatch();
    __print_string("hey!\n");
    while(!threads[1]->isFinished()) {
        //__print_string("hello\n");
        thread_dispatch();
    }

    __print_string("Finished\n");

    //thread_exit();


}