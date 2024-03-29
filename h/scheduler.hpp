//
// Created by os on 9/9/22.
//

#ifndef OSMIUM_SCHEDULER_HPP
#define OSMIUM_SCHEDULER_HPP

#include "syscall_c.h"
#include "list.hpp"

#include "tcb.hpp"

class Scheduler {
private:
    static List<TCB> readyQueue;

    struct sleepNode {
        time_t time;
        TCB* thread;

        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}

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
    };

    static List<sleepNode> sleepQueue;

public:
    static TCB* get();
    static void put(TCB*);
    //static bool readyQueueEmpty() { return readyQueue.getFirst(); }

    static void timerInterrupt();
    static void timeSleep(time_t);

    static void finish();
};


#endif //OSMIUM_SCHEDULER_HPP
