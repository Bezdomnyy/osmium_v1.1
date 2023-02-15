//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_KERNEL_HPP
#define OSMIUM_KERNEL_HPP

#include "../lib/hw.h"
#include "../lib/console.h"

#include "memory_allocator.hpp"
#include "tcb.hpp"
//#include "sem.hpp"
#include "uart.hpp"

class Kernel {
public:
    static constexpr uint64 USER_SYSCALL = 0x0000000000000008UL;
    static constexpr uint64 SUPERVISOR_SYSCALL = 0x0000000000000009UL;
    static constexpr uint64 HARDWARE_IRQ = 0x8000000000000009UL;
    static constexpr uint64 TIMER_IRQ = 0x8000000000000001UL;

    static void initKernel();
    static void supervisorTrap();
private:
    /* supervisor Trap routines */
    static void supervisorTrapHandler();
    static void syscall_handler();
    static void hw_irq_handler();

    /* software syscall_c handlers */
    static void mem_alloc_handler();                    //0x01
    static void mem_free_handler();                     //0x02
    static void thread_create_handler();                //0x11
    static void thread_exit_handler();                  //0x12
    static void thread_dispatch_handler();              //0x13
    static void thread_create_deactivated_handler();    //0x14
    static void sem_open_handler();                     //0x21
    static void sem_close_handler();                    //0x22
    static void sem_wait_handler();                     //0x23
    static void sem_signal_handler();                   //0x24
    static void time_sleep_handler();                   //0x31
    static void getc_handler();                         //0x41
    static void putc_handler();                         //0x42

    /* hardware interrupt handlers */
    static void uart_handler();                         //0x0a

    //private fields
    //TODO:
};

inline void Kernel::syscall_handler() {
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));

    //volatile uint64 arg0, arg1, arg2, temp;
    switch(syscall_id) {
        case 0x01:
            Kernel::mem_alloc_handler();
            break;
        case 0x02:
            Kernel::mem_free_handler();
            break;
        case 0x11:
            Kernel::thread_create_handler();
            break;
        case 0x12:
            Kernel::thread_exit_handler();
            break;
        case 0x13:
            Kernel::thread_dispatch_handler();
            break;
        case 0x14:
            Kernel::thread_create_deactivated_handler();
            break;
        case 0x21:
            Kernel::sem_open_handler();
            break;
        case 0x22:
            Kernel::sem_close_handler();
            break;
        case 0x23:
            Kernel::sem_wait_handler();
            break;
        case 0x24:
            Kernel::sem_signal_handler();
            break;
        case 0x31:
            Kernel::time_sleep_handler();
            break;
        case 0x41:
            Kernel::getc_handler();
            break;
        case 0x42:
            Kernel::putc_handler();
            break;
        default:
            asm volatile ("addi a0, zero, -1");
            __print_string("Error: Invalid syscall id!");
            break;
    }
}

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
    if (!(*(Sem**)arg0)) asm volatile("addi a0, a0, -1");
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
    ((Sem*)arg0)->semWait();

    //asm volatile("mv a0, zero");
}

//0x24
inline void Kernel::sem_signal_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    ((Sem*)arg0)->semSignal();
}

//0x31
inline void Kernel::time_sleep_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    Scheduler::timeSleep((time_t)arg0);
}

//0x41
inline void Kernel::getc_handler() {
    volatile uint64 arg0;
    //arg0 = __getc();
    //__print_string("getc");
    arg0 = Uart::rxGet();
    asm volatile ("mv a0, %[arg0]":: [arg0] "r"(arg0));
}

//0x42
inline void Kernel::putc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    //__putc(arg0);
    Uart::txPut(arg0);
    //uart->tx
}



#endif //OSMIUM_KERNEL_HPP
