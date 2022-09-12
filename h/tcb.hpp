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

    uint64 getTimeSlice() const { return timeSlice; }

    static TCB* running;

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }

    ~TCB() { delete[] stack; }

private:
    //friend class Kernel;

    TCB(Body body, void* args, uint64 timeSlice)
            : body(body),
            args(args),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            finished(false),
            timeSlice(timeSlice),
            context({
                body != nullptr ? (uint64) &threadWrapper : 0,
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
            })
    {
        if (body != nullptr) Scheduler::put(this);
    }

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    static uint64 timeSliceCounter;

    Body body;
    void *args;
    uint64 *stack;
    bool finished;
    uint64 timeSlice;
    Context context;

    static void contextSwitch(Context*, Context*);

    static void threadWrapper();

};


#endif //OSMIUM_TCB_HPP
