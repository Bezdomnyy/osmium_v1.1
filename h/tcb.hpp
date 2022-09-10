//
// Created by os on 9/9/22.
//

#ifndef OSMIUM_TCB_HPP
#define OSMIUM_TCB_HPP

#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/riscv.hpp"

class TCB {
public:
    using Body = void (*)(void*);

    static TCB* createTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }

    static TCB* running;

    static void yield();

private:
    /*TCB(Body body, void* args)
        : body(body), args(args), stack(new uint64[DEFAULT_STACK_SIZE]), finished(false),
        context({(uint64)body, (uint64)&stack[DEFAULT_STACK_SIZE]})
        {
        if (body != nullptr) Scheduler::put(this);
    }

    TCB() : body(nullptr), args(nullptr), stack(nullptr), finished(false), context({0, 0}){}*/

    TCB(Body body, void* args)
            : body(body),
            args(args),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            finished(false),
            context({
                body != nullptr ? (uint64) body : 0,
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
            })
    {
        if (body != nullptr) Scheduler::put(this);
    }

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void *args;
    uint64 *stack;
    bool finished;
    Context context;

    static void contextSwitch(Context*, Context*);

    static void dispatch();

};


#endif //OSMIUM_TCB_HPP
