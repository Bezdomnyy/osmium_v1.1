#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/print.hpp"
#include "../h/kernel.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    Kernel::initKernel();
    TCB* threads[2];
    thread_create(&threads[0], nullptr, nullptr);
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];

    thread_dispatch();
    __print_string("hey!\n");
    while(!threads[1]->isFinished()) { TCB::yield(); }

    __print_string("Finished\n");

    //thread_exit();
}