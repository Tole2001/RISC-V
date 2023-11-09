//
// Created by os on 4/6/23.
//
#include "../h/syscall_cpp.hpp"
#include "../h/printing.hpp"
Thread ::Thread(void (*body)(void *), void *arg) {
    this->arg = arg;
    this->body = body;
    this->myHandle = nullptr;
}

Thread :: ~Thread(){

    //if(myHandle)thread_exit();

    delete &myHandle;

}

int Thread::start() {
    thread_create(&myHandle,this->body,this->arg);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}
Thread ::Thread() {
    //kasnije sa wrapperom nesto sredi
    myHandle = nullptr;
    this->body = Thread :: thrwrapper;
    this->arg = (void*)this;
}
void Thread ::thrwrapper(void * thread) {
    ((Thread*)thread)->run();
}


void Thread ::join() {
    thread_join(&myHandle);
}

Semaphore ::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}
Semaphore ::~Semaphore() {
    sem_close(myHandle);
    delete &myHandle;

}
int Semaphore ::wait() {
    return sem_wait(myHandle);
}

int Semaphore ::signal() {
    return sem_signal(myHandle);
}

char Console ::getc() {
    return ::getc();
}

void Console ::putc(char c) {
    return ::putc(c);
}