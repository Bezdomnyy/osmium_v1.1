//
// Created by os on 9/9/22.
//

#ifndef OSMIUM_TCB_HPP
#define OSMIUM_TCB_HPP

#include "../lib/hw.h"
//#include "../h/scheduler.hpp"
#include "riscv.hpp"
#include "memory_allocator.hpp"

class Scheduler;


class TCB {
public:
    using Body = void (*)(void*);

    static TCB* createTCB(Body body, void* args);

    static TCB* createDeactivatedTCB(Body body, void* args);

    static TCB* createSupervisorTCB(Body body, void* args);

    bool isFinished() const { bool ret = finished; return ret; }

    void setFinished(bool val) { finished = val; }

    bool isBlocked() const { return blocked; }

    void setBlocked(bool val) { blocked = val; }

    uint64 getTimeSlice() const { return timeSlice; }

    static TCB* running;

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }

    ~TCB() { MemoryAllocator::free(stack); }

    void* operator new(size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    }

    void operator delete[](void* ptr) {
        MemoryAllocator::free(ptr);
    }

private:
    TCB(Body body, void* args, uint64 timeSlice, bool ready, bool supervisor = false);

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    static uint64 timeSliceCounter;

    Body body;
    void *args;
    uint64 *stack;
    bool finished;
    bool blocked;
    uint64 timeSlice;
    Context context;

    static void contextSwitch(Context*, Context*);

    static void threadWrapper();
    static void sThreadWrapper();

};


#endif //OSMIUM_TCB_HPP
