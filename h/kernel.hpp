//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_KERNEL_HPP
#define OSMIUM_KERNEL_HPP

#include "memory_allocator.hpp"
#include "tcb.hpp"
#include "sem.hpp"

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
    static void thread_create_deactivated_handler();    //0x14
    static void sem_open_handler();         //0x21
    static void sem_close_handler();        //0x22
    static void sem_wait_handler();         //0x23
    static void sem_signal_handler();       //0x24
    static void time_sleep_handler();       //0x31
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
    TCB::running->setFinished(true);
    asm volatile ("addi a0, zero, 0");
    //TCB::yield();
    TCB::dispatch();
}



//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
}


//0x14
inline void Kernel::thread_create_deactivated_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));

    *(TCB**)arg0 = TCB::createDeactivatedTCB((TCB::Body)arg1, (void*)arg2);

    asm volatile("mv a0, zero");
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
}



//0x021
inline void Kernel::sem_open_handler() {
    volatile uint64 arg0, arg1;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));

    *(Sem**)arg0 = Sem::createSem((unsigned)arg1);

    asm volatile("mv a0, zero");
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
}



//0x22
inline void Kernel::sem_close_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    delete *(Sem**)arg0;

    asm volatile("mv a0, zero");
}



//0x23
inline void Kernel::sem_wait_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    (*((Sem**)arg0))->semWait();

    //asm volatile("mv a0, zero");
}



//0x24
inline void Kernel::sem_signal_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    (*((Sem**)arg0))->semSignal();
}



//0x31
inline void Kernel::time_sleep_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    Scheduler::timeSleep((time_t)arg0);
}


#endif //OSMIUM_KERNEL_HPP
