//
// Created by os on 9/6/22.
//


#include "../h/kernel.hpp"
//#include "../h/memory_allocator.hpp"
//#include "../h/riscv.hpp"
//#include "../h/uart.hpp"

//Uart* Kernel::uart = nullptr;

volatile bool Kernel::finished = false;
volatile int Kernel::sysThread = 0;

extern void userMain();

void Kernel::initKernel() {
    MemoryAllocator::initMem();
    RiscV::writeStvec((uint64) &supervisorTrap);
    //sysThread = Sem::createSem(0);

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
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
        Scheduler::timerInterrupt();
        TCB::incTimeSliceCounter();
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
        {
            //__print_string("timer\n");
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
        uart_handler();
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

void Kernel::finishKernel() {
    finished = true;
    Scheduler::finish();
    //Uart::finish();
}

bool Kernel::isFinished() {
    return finished;
}