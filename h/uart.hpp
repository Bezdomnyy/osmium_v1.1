//
// Created by os on 9/12/22.
//

#ifndef OSMIUM_CONSOLE_INTERFACE_HPP
#define OSMIUM_CONSOLE_INTERFACE_HPP

#include "../lib/hw.h"
#include "sem.hpp"

class Uart {
public:
    static void initUart();

    static uint8 getStatus();

    static char rxGet();
    static void rxPut(char);
    static char rxReceive();

    static char txGet();
    static void txSend(char);
    static void txPut(char);

    static void txWait();
    static void txSignal();

    static void rxWait();
    static void rxSignal();

    enum RX_TX {
        RX = (1),       // status bit mask: ready to receive data from the console
        TX = (1 << 5),  // status bit mask: ready to transmit data to the console
    };

    //static void finish();
private:
    static constexpr uint16 BUFFER_SIZE = 1024;

    static volatile char* STATUS; // = (uint8*) CONSOLE_STATUS;
    static volatile char* RX_DATA; //= (char*) CONSOLE_RX_DATA;
    static volatile char* TX_DATA; // = (char*) CONSOLE_TX_DATA;

    /* output buffer */
    static char tx_buffer[BUFFER_SIZE];
    static int txFront; // = 0;
    static int txRear; // = 0;
    volatile static int txSize; // = 0;

    /* input buffer */
    static char rx_buffer[BUFFER_SIZE];
    static int rxFront; // = 0;
    static int rxRear; // = 0;
    static int rxSize; // = 0;

    static Sem* tx_not_empty;   // blocks the user thread until chars arrive in the input buffer
    static Sem* tx_not_full;
    // Sem* input_not_full;
    static Sem* rx_not_empty;  // blocks the system thread until chars arrive in the output buffer
    static Sem* rx_not_full;
    //Sem* output_not_full;
    static Sem* tx_request;
    static Sem* rx_request;
};

#endif //OSMIUM_CONSOLE_INTERFACE_HPP
