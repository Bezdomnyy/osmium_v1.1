//
// Created by os on 2/13/23.
//

#include "../h/uart_consumer.hpp"
#include "../h/uart.hpp"
#include "../h/kernel.hpp"
//#include "../h/tcb.hpp"

void uart_consumer() {
    while(!Kernel::isFinished()) {
        while (Uart::getStatus() & Uart::TX) {
            //__print_string("h");
            char c = Uart::txGet();
            if (c == 0) break;

            Uart::txSend(c);
            //TCB::dispatch();
        }
    }
}

/*
void uart_producer() {
    while(1) {
        Uart* uart = &(Uart::getInstance());
        while (uart->getStatus() & Uart::RX) {
            char c = uart->rxReceive();
            uart->rxPut(c);
            //TCB::dispatch();
        }
        __print_string("hello2\n");
        uart->rxWait();
        __print_string("hello22\n");
    }
}*/
