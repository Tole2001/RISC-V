//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/scheduler.hpp"
#include "../h/ccb.hpp"
#include "../h/_sem.hpp"
#include "../lib/mem.h"

#include "../h/MemAlloc.hpp"
#include "../lib/console.h"
typedef _thread* thread_t;
typedef _sem* sem_t;
uint64 Riscv:: mode = 0;
//upamti ako je mode = 1 to je user mode i onda se ne izvrsava dobro
void Riscv ::Mode(uint64 x) {
    mode = x;
}

void Riscv::Rezim()
{
    switch(mode){
        case 1:
            mc_sstatus(Riscv::SSTATUS_SPP);
            break;
        case 2:
            ms_sstatus(Riscv::SSTATUS_SPP);
            break;
    }

    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv ::  handleSupervisorTrap(){

    uint64 scause = r_scause();
    uint64 volatile r;
    __asm__ volatile ("ld %0, 10 * 8(fp)" : "=r"(r));

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        if(r == 0x01){
            //memalloc
            size_t arg;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(arg));
            MemAlloc mem = MemAlloc :: getInstance();
            void* b = mem.malloc(arg);
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
        }else if(r == 0x02){
            //memfree
            void* arg;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(arg));
            MemAlloc mem = MemAlloc :: getInstance();
            int b =mem.freemem(arg);
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
        }else if(r == 0x11){
            //threadcreate
            thread_t* t;
            void(*start_routine)(void*);
            void* arg;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(t));
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(start_routine));
            __asm__ volatile ("ld %0, 13 * 8(fp)" : "=r"(arg));
            // pokusaj bez arg ako ne radi
            if(_thread :: running == nullptr){
                _thread :: running = _thread ::createCoroutine(nullptr, nullptr);
            }
            *t = _thread::createCoroutine(start_routine,arg);

            Scheduler :: put(*t);
            int b = 0;
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");

        }else if(r == 0x12){
            //threadexit
            //thread_t t;
            int b;
            if(_thread :: running == nullptr)b = -1;
            else{
                _thread:: running->setFinished(true);
                b = 0;
                _thread :: dispatch();


            }

            //t->setFinished(true);

            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
            //_thread :: dispatch();

        }else if(r == 0x13){
            //threaddispatch
            _thread :: dispatch();
            //_thread :: yield();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }else if(r == 0x21){
            //semopen

            sem_t* s;
            int n;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(n));
            *s = new _sem(n);
            int b = 0;
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");

        }else if(r == 0x22){
            //semclose
            sem_t s;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
            //ugasi
            _sem ::freeSem(s);
            MemAlloc mem = MemAlloc:: getInstance();
            int b = mem.freemem(s);
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
        }else if(r == 0x23){
            //semwait povratna vrednost int
            sem_t s;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));

            int b =s->wait();
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
        }else if(r == 0x24){
            //semsignal povratna vrednost
            sem_t s;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
            int b = s->signal();
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
        }else if(r == 0x31){
            //timesleep
        }else if(r == 0x41){
            //getc
            char a = __getc();
            __asm__ volatile("mv a0, %0" : : "r"(a));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
        }else if(r == 0x42){
            //putc
            char s;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
            __putc(s);
        }else if(r == 0x43){
            thread_t* t;
            void(*start_routine)(void*);
            void* arg;
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(t));
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(start_routine));
            __asm__ volatile ("ld %0, 13 * 8(fp)" : "=r"(arg));
            // pokusaj bez arg ako ne radi
            *t = _thread ::createCouroutineCPP(start_routine,arg);
            int b = 0;
            __asm__ volatile("mv a0, %0" : : "r"(b));
            __asm__ volatile ("sd a0, 10 * 8(fp)");
        }else if(r == 0x44){
            thread_t t;
            void(*start_routine)(void*);
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(t));
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(start_routine));
            //t->rasetter(start_routine);
        }else if(r == 0x70){
            //to user
            //Riscv ::mc_sstatus(Riscv :: SSTATUS_SPP);
            //__asm__ volatile ("csrw sepc, ra");
            //__asm__ volatile ("sret");
            //w_sstatus(sstatus);
            //mc_sstatus(1<<8);
            //asm volatile ("csrw sepc, %0" : : "r" (sepcV + 4));
            //mc_sip(SIP_SSIE);
            w_sstatus(sstatus);
            mc_sstatus(1<<8);
            w_sepc(sepc);
            mc_sip(1 << 1);
            return;

        }else if(r == 0x71){
            //to super
            Riscv ::ms_sstatus(Riscv :: SSTATUS_SPP);
            __asm__ volatile ("csrw sepc, ra");
            __asm__ volatile ("sret");
        }else if(r == 0x66){
            thread_t* handle;
            __asm__ volatile("mv %0,a1" : "=r"(handle));
            _thread ::join(handle);

        }
        w_sstatus(sstatus);
        w_sepc(sepc);
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        /*uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        w_sstatus(sstatus);
        w_sepc(sepc);*/

    }else if(scause == 0x8000000000000009L){
        console_handler();
    }else if(scause == 0x8000000000000001L){
        mc_sip(SIP_SSIE);

    }



}