//
// Created by os on 9/12/22.
//

#ifndef OSMIUM_CONSOLE_INTERFACE_HPP
#define OSMIUM_CONSOLE_INTERFACE_HPP

#include "../lib/hw.h"
#include "sem.hpp"

class Uart {
public:
    Uart(const Uart&) = delete;
    Uart& operator=(const Uart&) = delete;

    static Uart& getInstance();

    uint8 getStatus() const;

    char rxGet();
    int rxReceive();

    char txGet();
    void txSend(char);
    void txPut(char);

    void txWait();
    void txSignal();

    enum RX_TX {
        RX = (1),       // status bit mask: ready to receive data from the console
        TX = (1 << 5),  // status bit mask: ready to transmit data to the console
    };

private:
    Uart();
    ~Uart() = default;

    static constexpr uint16 BUFFER_SIZE = 1024;

    volatile uint8* STATUS = (uint8*) CONSOLE_STATUS;
    volatile char* RX_DATA= (char*) CONSOLE_RX_DATA;
    volatile char* TX_DATA = (char*) CONSOLE_TX_DATA;

    /* output buffer */
    char tx_buffer[BUFFER_SIZE];
    int txFront = 0;
    int txRear = 0;
    int txSize = 0;

    /* input buffer */
    char rx_buffer[BUFFER_SIZE];
    int rxFront = 0;
    int rxRear = 0;
    int rxSize = 0;

    Sem* tx_not_empty;   // blocks the user thread until chars arrive in the input buffer
    Sem* tx_not_full;
    // Sem* input_not_full;
    Sem* rx_not_empty;  // blocks the system thread until chars arrive in the output buffer
    //Sem* output_not_full;
    Sem* tx_request;
};

#endif //OSMIUM_CONSOLE_INTERFACE_HPP
