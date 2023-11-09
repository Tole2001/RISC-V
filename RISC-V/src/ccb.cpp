//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../h/riscv.hpp"
#include "../h/printing.hpp"

_thread * _thread::running = nullptr;
uint64 _thread::ID = 0;

_thread * _thread::createCoroutine(Body body,void* arg)
{
    return new  _thread(body,arg);
}

void  _thread::yield()
{
    Riscv::pushRegisters();

    _thread::dispatch();

    Riscv::popRegisters();
}

void  _thread::dispatch()
{
    _thread *old = running;
    if (!old->isFinished() && !old->isblk()) {
        Scheduler::put(old);
    }/*else{
        printString("OVA NIJE STAVLJENA JER JE GOTOVA\n");
    }*/
    running = Scheduler::get();
    /*if(_thread :: running->id == 0){
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }else{
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
        //Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }*/
    _thread::contextSwitch(&old->context, &running->context);
}

void _thread ::rasetter() {
    context.ra = (uint64) &threadWrapper;

}

void _thread ::threadWrapper() {
    Riscv :: Rezim();
    running->body(running->argo);
    //ako uspes nadji drugi nacin
    running->setFinished(true);
    //printString("IZASAO IZ NITI ");
    //printInt(_thread :: running->retID());
    //printString("\n");
    thread_dispatch();
    //_thread :: dispatch();
}
_thread* _thread ::createCouroutineCPP(Body body, void *arg) {
    _thread * t = new _thread(body,arg);
    t->wrapington = arg;
    t->rasetter();
    return t;
}


void _thread ::join(thread_t* handle) {
    while(!(*handle)->isFinished()){
        _thread :: dispatch();
    }


}