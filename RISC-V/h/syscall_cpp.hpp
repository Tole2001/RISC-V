//
// Created by os on 4/6/23.
//

#ifndef BASE_SYSCALL_CPP_H
#define BASE_SYSCALL_CPP_H
#include "../h/syscall_c.h"

class Thread{
public:
    Thread(void(*body)(void*),void* arg);
    virtual ~Thread();
    int start();
    void join();
    static void dispatch();
    static void thrwrapper(void*);
    //static int sleep()
    //static void threadWrapper(void*)
protected:
    Thread();
    virtual void run(){}
private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;
};


class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};
class Console {
public:
    static char getc ();

    static void putc (char);
};


#endif //BASE_SYSCALL_CPP_H
