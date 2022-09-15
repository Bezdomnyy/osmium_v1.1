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

    /*List<int> list;

    int *a = new int(1);
    int *b = new int(2);
    int *c = new int(3);

    list.putLast(b);
    list.putLast(c);
    int* d = list.takeFirst();
    list.putLast(a);

    __print_uint64(*d);

    *//*int* running = a;

    int i = 0;

    __putc('['); __putc(48+i); __putc(']'); __putc(':'); __putc(' ');
    __print_string("dispatch:\n");
    int* old = running;
    list.addLast(old);
    //__putc('i'); __putc('\n');
    //list.printStatus();
    running = list.removeFirst();
    //__putc('o'); __putc('\n');
    //list.printStatus();

    __print_string("old: ");
    __print_uint64((uint64)old); __putc('\n');

    __print_string("running: ");
    __print_uint64((uint64)running); __putc('\n');

    i++;

    __putc('['); __putc(48+i); __putc(']'); __putc(':'); __putc(' ');
    __print_string("dispatch:\n");
    old = running;
    list.addLast(old);
    //__putc('i'); __putc('\n');
    //list.printStatus();
    running = list.removeFirst();
    //__putc('o'); __putc('\n');
    //list.printStatus();

    __print_string("old: ");
    __print_uint64((uint64)old); __putc('\n');

    __print_string("running: ");
    __print_uint64((uint64)running); __putc('\n');

    i++;

    __putc(*c+48);*/















    TCB* threads[2] = {nullptr, nullptr};
    thread_create(&threads[0], nullptr, nullptr);
    RiscV::setSstatus(RiscV::SIE);
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))&userMain, nullptr);
    //thread_create(&threads[2], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];

    //thread_dispatch();
    __print_string("hey!\n");
    while(!threads[1]->isFinished()) { thread_dispatch(); }

    __print_string("Finished\n");

    //thread_exit();


}