//
// Created by os on 9/9/22.
//

#ifndef OSMIUM_TCB_HPP
#define OSMIUM_TCB_HPP

#include "../lib/hw.h"

class TCB {
public:
    using Body = void (*)(void*);

    static TCB* createTCB(Body body, void* args);

    static TCB* createTCB();

    bool isFinished() const { return finished; }

    static TCB* running;

    static void yield();

private:
    TCB(Body body, void* args) {

    }

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void *args;
    Context context;
    uint64 *stack;
    bool finished;

    static void contextSwitch();

    static void dispatch();

};


#endif //OSMIUM_TCB_HPP
