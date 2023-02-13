//
// Created by os on 9/12/22.
//

#include "../h/uart.hpp"


Uart::Uart() {
    rx_not_empty = Sem::createSem(0);
    tx_not_empty = Sem::createSem(0);
    tx_not_full = Sem::createSem(BUFFER_SIZE);
    tx_request = Sem::createSem(0);
}

Uart& Uart::getInstance() {
    static Uart instance;
    return instance;
}

uint8 Uart::getStatus() const {
    return *STATUS;
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
    return c;
}

/* receive a char from the UART controler
 * place it in the input (rx) buffer
 * returns 0 if succesful; -1 if the buffer is full
 */
int Uart::rxReceive() {
    if (rxSize > BUFFER_SIZE) return -1;
    char c = *RX_DATA;
    rx_buffer[rxRear] = c;
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    rxSize++;
    rx_not_empty->semSignal();
    return 0;
}

/* remove and return a char from the output (tx) buffer
 * blocks if the buffer is empty
 */
char Uart::txGet() {
    char c;
    tx_not_empty->semWait(); // wait consumer
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
    *TX_DATA = c;
}

void Uart::txWait() {
    tx_request->semWait();
}

void Uart::txSignal() {
    tx_request->semSignal();
}