//
// Created by os on 9/12/22.
//

#include "../h/uart.hpp"
#include "../h/kernel.hpp"

char Uart::rx_buffer[Uart::BUFFER_SIZE] = {0};
char Uart::tx_buffer[Uart::BUFFER_SIZE] = {0};

Sem* Uart::tx_not_empty = nullptr;   // blocks the user thread until chars arrive in the input buffer
Sem* Uart::tx_not_full = nullptr;
// Sem* input_not_full;
Sem* Uart::rx_not_empty = nullptr;  // blocks the system thread until chars arrive in the output buffer
Sem* Uart::rx_not_full = nullptr;
//Sem* output_not_full;
Sem* Uart::tx_request = nullptr;
Sem* Uart::rx_request = nullptr;

volatile char* Uart::STATUS = (char*) CONSOLE_STATUS;
volatile char* Uart::RX_DATA = (char*) CONSOLE_RX_DATA;
volatile char* Uart::TX_DATA = (char*) CONSOLE_TX_DATA;

/* output buffer */
int Uart::txFront  = 0;
int Uart::txRear = 0;
volatile int Uart::txSize = 0;

/* input buffer */
int Uart::rxFront = 0;
int Uart::rxRear  = 0;
int Uart::rxSize  = 0;

void Uart::initUart() {
    rx_not_empty = Sem::createSem(0);
    rx_not_full = Sem::createSem(BUFFER_SIZE);
    rx_request = Sem::createSem(0);

    tx_not_empty = Sem::createSem(0);
    tx_not_full = Sem::createSem(BUFFER_SIZE);
    tx_request = Sem::createSem(0);
}


uint8 Uart::getStatus() {
    uint8 ret = *((uint8*) CONSOLE_STATUS);
    return ret;
}

/* remove and return a char from the input (rx) buffer
 * blocks if the buffer is empty
 */
char Uart::rxGet() {
    char c;
    rx_not_empty->semWait();
    c = rx_buffer[rxFront];
    rxFront = (rxFront + 1) & (BUFFER_SIZE - 1);
    rxSize--;
    //rx_not_full->semSignal();
    return c;
}

void Uart::rxPut(char c) {
    //char c = *RX_DATA;
    rx_not_full->semWait(); // wait producer
    rx_buffer[txRear] = c;
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    rxSize++;
    rx_not_empty->semSignal(); // signal consumer
}

/* receive a char from the UART controler
 * place it in the input (rx) buffer
 * returns 0 if succesful; -1 if the buffer is full
 */
char Uart::rxReceive() {
    //return *RX_DATA;
    if (rxSize >= BUFFER_SIZE) return -1;
    char c = *(char*) CONSOLE_RX_DATA;
    rx_buffer[rxRear] = c;
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    rxSize++;
    rx_not_empty->semSignal();
    //__print_string("rx\n");
    return 0;
}

/* remove and return a char from the output (tx) buffer
 * blocks if the buffer is empty
 */
char Uart::txGet() {
    char c;
    //tx_not_empty->semWait(); // wait consumer
    while(txSize == 0) {
        //if (Kernel::isFinished()) return 0;
        thread_dispatch();
    }
    c = tx_buffer[txFront];
    txFront = (txFront + 1) & (BUFFER_SIZE - 1);
    txSize--;
    tx_not_full->semSignal(); // signal producer
    return c;
}

/* put a char in the output (tx) buffer
 * blocks if the buffer is full
 */
void Uart::txPut(char c) {
    //char c = *RX_DATA;
    tx_not_full->semWait(); // wait producer
    tx_buffer[txRear] = c;
    txRear = (txRear + 1) & (BUFFER_SIZE - 1);
    txSize++;
    tx_not_empty->semSignal(); // signal consumer
}

/* wrapper function to put a char in the TX_DATA register
 */
void Uart::txSend(char c) {
    *(char*)CONSOLE_TX_DATA = c;
}

void Uart::txWait() {
    tx_request->semWait();
}

void Uart::txSignal() {
    tx_request->semSignal();
}

void Uart::rxWait() {
    rx_request->semWait();
}

void Uart::rxSignal() {
    rx_request->semSignal();
}

/*void Uart::finish() {
    delete rx_not_empty;
    delete rx_not_full;
    delete rx_request;

    delete tx_not_empty;
    delete tx_not_full;
    delete tx_request;
}*/
