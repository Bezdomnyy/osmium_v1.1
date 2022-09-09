//
// Created by os on 9/6/22.
//

#include "../lib/hw.h"

#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"
extern void userMain();

void Kernel::initKernel() {
    RiscV::writeStvec((uint64) &supervisorTrap);
    MemoryAllocator::initMem();

}

void Kernel::supervisorTrapHandler() {
    uint64 scause = RiscV::readScause();

    if (scause == 0x08 || scause == 0x09) {
        uint64 sepc = RiscV::readSepc() + 4;
        RiscV::clearSip(RiscV::SSIP);
        syscall_handler();
        asm volatile ("sd a0, 80(s0)");
        RiscV::clearSip(RiscV::SSIP);
        RiscV::writeSepc(sepc);
        return;
    }
    if (scause == 0x07) {
        uint64 sepc = RiscV::readSepc() + 4;
        __print_string("Nedozvoljena adresa upisa.\n");
        __print_string("scause: ");
        __print_uint64(scause);
        __putc('\n');
        //RiscV::clearSip(RiscV::SEIP);
        RiscV::writeSepc(sepc);
        return;
    }

    uint64 sepc = RiscV::readSepc() + 4;
    __print_string("Neobradjen izuzetak.\n");
    __print_string("scause: ");
    __print_uint64(scause);
    __putc('\n');
    RiscV::clearSip(RiscV::SEIP);
    console_handler();
    RiscV::writeSepc(sepc);
}

void Kernel::syscall_handler() {
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));

    volatile uint64 arg0, arg1, arg2;
    switch(syscall_id) {
        case 0x01:
            asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
            MemoryAllocator::allocate((size_t)arg0);
            break;
        case 0x02:
            asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
            MemoryAllocator::free((void*)arg0);
            break;
        case 0x03:
            /*asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
            asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
            asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));

            *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);

            if (*(TCB**)arg0) */
            break;
    }
    //RiscV::writeSepc(sepc);
}
