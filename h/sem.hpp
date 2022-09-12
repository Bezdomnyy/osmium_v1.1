//
// Created by os on 9/12/22.
//

#ifndef OSMIUM_SEM_HPP
#define OSMIUM_SEM_HPP

#include "../lib/hw.h"
#include "syscall_c.h"
#include "tcb.hpp"
#include "../h/list.hpp"
#include "../h/scheduler.hpp"

class Sem {
public:
    static Sem* createSem(unsigned init);

    ~Sem();

    int semWait();

    int semSignal();

private:
    Sem(unsigned init) : init(init), val(init) {}

    List<TCB> list;

    unsigned init;

    unsigned val;
};


#endif //OSMIUM_SEM_HPP
