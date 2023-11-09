//
// Created by os on 2/9/23.
//
#include "../h/_sem.hpp"
#include "../h/syscall_c.h"
#include "../h/printing.hpp"


void _sem:: deblock(){
    // Deblocking:
    blockedthrd--;
    thread_t cur = queue.removeFirst();
    cur->setblk(false);
    Scheduler :: put(cur);
    //printString("Vracen\n");
}

void _sem:: block(){
    blockedthrd++;
    _thread :: running->setblk(true);
    queue.addLast(_thread ::running);
    _thread :: yield();
    //thread_dispatch();
    /*thread_t old = _thread :: running;
    queue.addFirst(&old);

    _thread :: running = Scheduler::get();

    _thread::contextSwitch(&old->context, &_thread :: running->context);*/


}

_sem* _sem::createSem(int n) {
    return new _sem(n);

}

int _sem ::wait() {
    if(--value < 0)block();
    return 1;
    /*thread_t t;
    t = _thread:: running;
    if(t->IDWait== 0){
        return 0;
    }else{
        t->IDWait = 0;
        return -1;
    }*/
}

int _sem ::freeSem(_sem* hndl) {
    if(hndl->gtStatus() == 0)return -1;
    hndl->setStatus(0);
    for(uint64 i = 0; i < hndl->blockedthrd;i++){
        thread_t gt = hndl->queue.removeFirst();
        gt->setblk(false);
        Scheduler :: put(gt);
    }
    return 1;
}
