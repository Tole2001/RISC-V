//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
class  _thread;
typedef _thread* thread_t;
List< _thread> Scheduler::readyCoroutineQueue;

thread_t Scheduler::get()
{
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put( thread_t ccb)
{
    readyCoroutineQueue.addLast(ccb);
}