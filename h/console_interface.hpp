//
// Created by os on 9/12/22.
//

#ifndef OSMIUM_CONSOLE_INTERFACE_HPP
#define OSMIUM_CONSOLE_INTERFACE_HPP

#include "../lib/hw.h"

class ConsoleInterface {
public:
    static void console_handler();

    enum CSTATUS {
        READY_IN = (1),
        READY_OUT = (1 << 5),
    };
};

inline void ConsoleInterface::console_handler() {
    uint64 id = plic_claim();
    int test = 0;
    while(CONSOLE_STATUS & ((READY_IN) | (READY_OUT))) {
        if(CONSOLE_STATUS & READY_IN) {



            plic_complete(0x0a);
        }
        if (CONSOLE_STATUS & READY_OUT) {



            plic_complete(0x0a);
        }

    }

}


#endif //OSMIUM_CONSOLE_INTERFACE_HPP
