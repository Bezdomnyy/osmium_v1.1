//
// Created by os on 9/12/22.
//

#ifndef OSMIUM_SEM_HPP
#define OSMIUM_SEM_HPP

#include "../lib/hw.h"
#include "tcb.hpp"
#include "list.hpp"
#include "scheduler.hpp"

class Sem {
public:
    static Sem* createSem(unsigned init);

    ~Sem();

    int semWait();

    int semSignal();

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
    Sem(unsigned init) : init(init), val(init) {}

    List<TCB> list;

    unsigned init;

    long int val;
};


#endif //OSMIUM_SEM_HPP
