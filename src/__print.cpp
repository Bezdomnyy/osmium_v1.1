//
// Created by os on 9/6/22.
//

#include "../lib/hw.h"
#include "../h/uart.hpp"
#include "../h/__print.hpp"

void __print_string(char const *string) {
    for (char const *c = string; *c != '\0'; c++) Uart::txPut(*c);
}

void __print_uint64(uint64 integer) {
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    do {
        output[i++] = digits[integer % 10];
    } while ((integer/=10) != 0);
    while(--i >= 0) Uart::txPut(output[i]);
}

void __print_int(long long int integer) {
    if (integer < 0) Uart::txPut('-'), integer *= -1;
    Uart::txPut(integer);
}

/*void printInteger(uint64 integer)
{
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (integer < 0)
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    }

    i = 0;
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
        __putc(buf[i]);
}*/
