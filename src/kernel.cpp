//
// Created by os on 9/6/22.
//

#include "../lib/hw.h"

#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/riscv.hpp"

extern void userMain();

void Kernel::initKernel() {
    MemoryAllocator::initMem();
    RiscV::writeStvec((uint64) &supervisorTrap);
    RiscV::setSstatus(RiscV::SIE);
}

void Kernel::supervisorTrapHandler() {
    uint64 scause = RiscV::readScause();

    if (scause == 0x08 || scause == 0x09) {
        uint64 sepc = RiscV::readSepc() + 4;
        uint64 sstatus = RiscV::readSstatus();
        //RiscV::clearSip(RiscV::SSIP);
        syscall_handler();
        asm volatile ("sd a0, 80(s0)");
        RiscV::writeSstatus(sstatus);
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
    if (scause == 0x8000000000000001UL) {
        RiscV::clearSip(RiscV::SSIP);
        return;
    }
    if (scause == 0x8000000000000009UL) {
        console_handler();
        return;
    }

    uint64 sepc = RiscV::readSepc() + 4;
    __print_string("Neobradjen izuzetak.\n");
    __print_string("scause: ");
    //scause = RiscV::readScause();
    __print_uint64(scause);
    __putc('\n');
    /*RiscV::clearSip(RiscV::SSIP);
    //RiscV::writeSip(0);
    //console_handler();*/
    RiscV::writeSepc(sepc);
    return;
}

void Kernel::syscall_handler() {
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
        default:
            asm volatile ("addi a0, zero, -1");
            __print_string("Error: Invalid syscall id!");
            break;
    }
    //RiscV::writeSepc(sepc);
}
