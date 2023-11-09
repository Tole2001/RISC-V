//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"

#include "../h/print.hpp"
#include "../h/riscv.hpp"

#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"

extern void userMain();


void func(int** b){
    b[0][0] = 3;
}


int main()
{

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    //_thread :: running = _thread ::createCoroutine(nullptr, nullptr);
    Riscv ::Mode(1);
   // __asm__ volatile ("ecall");

    //2 supervisor 1 user mode
    /*int** b =new int*[4];  // Allocate memory for rows

    for (int i = 0; i < 4; i++) {
        b[i] = new int[4];   // Allocate memory for each row
    }
    b[0][0] = 5;
    printInteger(b[0][0]);
    func(b);
    printInteger(b[0][0]);*/

    //userM();
    printString2("UserMode Started \n");
    userMain();
    //thread_t user;
    //thread_create(&user, userMain, nullptr);
    //while(!user->isFinished()) {
      //  thread_dispatch();
    //}
    //Riscv ::Mode(1);


    //delete user;

    printString2("Finished\n");

    delete _thread :: running;

    return 0;
}
