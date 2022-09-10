//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_KERNEL_HPP
#define OSMIUM_KERNEL_HPP

#include "memory_allocator.hpp"
#include "../h/tcb.hpp"

class Kernel {
public:
    static void initKernel();
    static void supervisorTrap();
private:
    static void supervisorTrapHandler();
    static void syscall_handler();

    //syscall_c handlers
    static void mem_alloc_handler();        //0x01
    static void mem_free_handler();         //0x02
    static void thread_create_handler();    //0x11
    static void thread_exit_handler();      //0x12
    static void thread_dispatch_handler();  //0x13
};





//0x01
inline void Kernel::mem_alloc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    MemoryAllocator::allocate((size_t)arg0);
}



//0x02
inline void Kernel::mem_free_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    MemoryAllocator::free((void*)arg0);
}



//0x11
inline void Kernel::thread_create_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));

    *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);

    asm volatile("mv a0, zero");
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
}



//0x12
inline void Kernel::thread_exit_handler() {
    asm volatile ("addi a0, zero, 0");
    TCB::running->setFinished(true);
    TCB::yield();
}



//0x13
inline void Kernel::thread_dispatch_handler() {
    TCB::yield();
}

#endif //OSMIUM_KERNEL_HPP
