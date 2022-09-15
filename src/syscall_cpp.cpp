//
// Created by os on 9/12/22.
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    Thread* t = (Thread*) thread;
    t->run();
}

// THREAD

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}

int Thread::start() {
    thread_create(&myHandle,&threadRunWrapper, this);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Thread::Thread() {}




// SEMAPHORE

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

int Semaphore::wait() {

    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}


//CONSOLE

char Console::getc() {
    return __getc();
}

void Console::putc(char c) {
    __putc(c);
}
