//
// Created by os on 2/13/23.
//

#include "../h/uart_consumer.hpp"
#include "../h/uart.hpp"
#include "../h/tcb.hpp"

void uart_consumer() {
    while(1) {
        Uart* uart = &(Uart::getInstance());
        while (uart->getStatus() & Uart::TX) {
            char c = uart->txGet();
            uart->txSend(c);
            //TCB::dispatch();
        }
        uart->txWait();
    }
}