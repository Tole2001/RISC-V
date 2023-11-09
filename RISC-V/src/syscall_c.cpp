//
// Created by os on 2/15/23.
//
#include "../h/syscall_c.h"
#include "../h/printing.hpp"
#include "../h/ccb.hpp"


void* mem_alloc(size_t size){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x01));
    __asm__ volatile("ecall");
    void* back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

int mem_free(void*){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x02));
    __asm__ volatile("ecall");
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg

){
    __asm__ volatile("mv a3, a2");
    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x11));
    __asm__ volatile("ecall");
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

int thread_exit (){
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x12));
    __asm__ volatile("ecall");
    int back ;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

int sem_open (
        sem_t* handle,
        unsigned init

){

    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x21));
    __asm__ volatile("ecall");
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;

}

void thread_dispatch (){
   // printInt(_thread :: running->retID());
    //printString(" U DISP\n");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x13));
    __asm__ volatile("ecall");
    //printInt(_thread :: running->retID());
    //printString(" IZASAO DISP\n");
}

int sem_close (sem_t handle){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x22));
    __asm__ volatile("ecall");
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

int sem_wait (sem_t id){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x23));
    __asm__ volatile("ecall");
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

int sem_signal (sem_t id){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x24));
    __asm__ volatile("ecall");
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

char getc () {
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x41));
    __asm__ volatile("ecall");
    volatile char back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}

void putc (char){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x42));
    __asm__ volatile("ecall");
}


int thread_create_CPP(thread_t* handle,
void(*start_routine)(void*),
void* arg){
    __asm__ volatile("mv a3, a2");
    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x43));
    __asm__ volatile("ecall");
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    return back;
}
void threadSetRa(thread_t t,void(*start_routine)(void*)){
    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x44));
    __asm__ volatile("ecall");
}


void userM(){
    __asm__ volatile("mv a0, %0" : : "r" (0x70));
    __asm__ volatile("ecall");
}


void supervisor(){
    __asm__ volatile("mv a0, %0" : : "r" (0x71));
    __asm__ volatile("ecall");
}


void thread_join(thread_t* handle){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x66));
    __asm__ volatile("ecall");
}

