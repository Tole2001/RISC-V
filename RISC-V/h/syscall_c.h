//
// Created by os on 2/15/23.
//

#ifndef BASE_SYSCALL_C_H
#define BASE_SYSCALL_C_H
#include "../lib/hw.h"

class _thread;
class _sem;
typedef _thread* thread_t;
typedef _sem* sem_t;
const int EOF = -1;




void threadSetRa(thread_t t,void(*start_routine)(void*));
//void*
void* mem_alloc (size_t size);
//int
int mem_free (void*);
//int
int thread_create_CPP(thread_t* handle,
void(*start_routine)(void*),
void* arg);
//int
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg

);
//int
int thread_exit ();
void thread_dispatch ();
//int

int sem_open (
        sem_t* handle,
        unsigned init

);
//int
int sem_close (sem_t handle);
//int
int sem_wait (sem_t id);
//int
int sem_signal (sem_t id);

int sem_val(sem_t id);
//char
char getc ();
void putc (char);

void userM();

void supervisor();

void thread_join(thread_t* handle);





#endif //BASE_SYSCALL_C_H
