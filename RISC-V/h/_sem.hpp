//
// Created by os on 2/9/23.
//

#ifndef BASE__SEM_H
#define BASE__SEM_H

#include "../h/list.hpp"
//#include "../h/scheduler.hpp"
#include"../h/ccb.hpp"



typedef _thread* thread_t;



class _sem{
private:
    int value;
    List<_thread> queue;
    int status;//pokazuje da li je semafor vec gasen to jest freeSem ili ne
public:
    static _sem* createSem(int n);

    _sem(int b): value(b), status(1) {}
    static int freeSem(_sem* hndl);

    int wait();

    int signal(){
        if(++value <= 0 )deblock();
        return 1;
    }

    int val(){return value;}
    int gtStatus(){return status;}



protected:
    void setStatus(int a){ status = a;}
    uint64 blockedthrd = 0;
    void deblock();

    void block();


};

#endif //BASE__SEM_H
