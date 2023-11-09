//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

//#include "../h/_sem.hpp"

// Coroutine Control Block
class  _thread
{
public:

    //novo
    static void join(thread_t* handle);
    bool isblk(){return blk;}
    void setblk(bool val){blk = val;}
    uint64 retID(){return this->id;}
    static void dispatch();

    ~ _thread() { delete[] stack; }

    bool isFinished() const { return finished; }



    void setFinished(bool value) { finished = value; }

    using Body = void (*)(void*);

    static  _thread *createCoroutine(Body body,void* arg);
    static _thread* createCouroutineCPP(Body body,void* arg);

    static void yield();
    void* wrapington;
    void* argo;
    static  _thread *running;
    friend class  _sem;
    int IDWait = 0;
    void rasetter();
private:
    static uint64 ID;
    uint64 id;
    explicit  _thread(Body bd,void* arg) :
            argo(arg),
            body(bd),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false)
    {
        blk = false;
        this->id = ID++;
        this->finished = false;
        //if (body != nullptr) { Scheduler::put(this); }

    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    bool blk;
    static void threadWrapper();
    static void contextSwitch(Context *oldContext, Context *runningContext);

    //static void dispatch();

    static uint64 constexpr STACK_SIZE = 1024;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
