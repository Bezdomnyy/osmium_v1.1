//
// Created by os on 9/6/22.
//


#include "../h/kernel.hpp"
//#include "../h/memory_allocator.hpp"
//#include "../h/riscv.hpp"
//#include "../h/uart.hpp"

//Uart* Kernel::uart = nullptr;

extern void userMain();

void Kernel::initKernel() {
    MemoryAllocator::initMem();
    RiscV::writeStvec((uint64) &supervisorTrap);

    Uart::initUart();
    //RiscV::setSstatus(RiscV::SIE);
}

void Kernel::supervisorTrapHandler() {
    uint64 scause = RiscV::readScause();

    if (scause == USER_SYSCALL || scause == SUPERVISOR_SYSCALL) {
        uint64 sepc = RiscV::readSepc() + 4;
        uint64 sstatus = RiscV::readSstatus();

        syscall_handler();

        asm volatile ("sd a0, 80(s0)");
        RiscV::writeSstatus(sstatus);
        RiscV::writeSepc(sepc);
        RiscV::clearSip(RiscV::SSIP);
        return;
    }
    if (scause == TIMER_IRQ) {
        //__print_string("timer\n");
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
        Scheduler::timerInterrupt();
        TCB::incTimeSliceCounter();
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
        {
            uint64 sepc = RiscV::readSepc();
            uint64 sstatus = RiscV::readSstatus();
            TCB::resetTimeSliceCounter();
            TCB::dispatch();
            RiscV::writeSstatus(sstatus);
            RiscV::writeSepc(sepc);
        }
        RiscV::clearSip(RiscV::SSIP);
        return;
    }
    if (scause == HARDWARE_IRQ) {
        //console_handler();
        //ConsoleInterface::console_handler();
        hw_irq_handler();
        RiscV::clearSip(RiscV::SEIP);
        return;
    }

    uint64 sepc = RiscV::readSepc();
    __print_string("Neobradjen izuzetak.\n");
    __print_string("scause: ");
    __print_uint64(scause);
    Uart::txPut('\n');
    __print_string("sepc: ");
    __print_uint64(sepc);
    Uart::txPut('\n');
    //riscV::clearSip(RiscV::SSIP);
    RiscV::writeSepc(sepc);
    return;
}

void Kernel::hw_irq_handler() {
    //int hw_irq_id = plic_claim();

    //__print_string("hw\n");
    uart_handler();
    //plic_complete(hw_irq_id);
    /*switch (hw_irq_id) {
        case 10:
            //uart_handler();
            console_handler();
            //break;
        default:
            plic_complete(hw_irq_id);
            break;
    }*/
}

//0x0a - hardware
void Kernel::uart_handler() {
    int id = plic_claim();
    //__print_string("handle_uart\n");
    if (id == 0x0a) {
        //__print_string("handle_uart\n");
        /*if (Uart::getStatus() & Uart::TX) {
            //__print_string("tx\n");
            Uart::txSignal();
        }*/
        //if (uart->getStatus() & Uart::RX) uart->rxSignal();
        while (Uart::getStatus() & Uart::RX) {
            //__print_string("rx\n");
            if(Uart::rxReceive() < 0) break;
            //plic_complete(id);
        }
    }
    plic_complete(id);
}
