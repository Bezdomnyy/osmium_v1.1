//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_KERNEL_HPP
#define OSMIUM_KERNEL_HPP

#include "memory_allocator.hpp"

class Kernel {
public:
    static void initKernel();
    static void supervisorTrap();
private:
    static void supervisorTrapHandler();
    static void syscall_handler();
};

#endif //OSMIUM_KERNEL_HPP
