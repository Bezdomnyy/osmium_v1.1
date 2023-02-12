//
// Created by os on 8/10/22.
//

#ifndef OSMIUM_SYSCALL_CPP_HPP
#define OSMIUM_SYSCALL_CPP_HPP

#include "../h/syscall_c.h"

void *operator new(size_t size);

void operator delete(void *ptr);

//class Thread;

//void threadRunWrapper(Thread* thread);

class Thread {
public:
    Thread(void (*body)(void *), void *arg);

    virtual ~Thread();

    int start();

    static void dispatch();

    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}

private:
    friend void threadRunWrapper(void* thread);

    using Body = void (Thread::*) (void*);
    thread_t myHandle;
    Body body;
    void* args;
};


class Semaphore {
public:
    Semaphore(unsigned init = 1);

    virtual ~Semaphore();

    int wait();

    int signal();

private:
    sem_t myHandle;
};


class PeriodicThread : public Thread {
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
};


class Console {
public:
    static char getc();

    static void putc(char);
};

#endif //OSMIUM_SYSCALL_CPP_HPP
