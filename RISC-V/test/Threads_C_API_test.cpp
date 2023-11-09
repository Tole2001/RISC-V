
#include "../h/syscall_c.h"
#include "../test/Threads_C_API_test.hpp"
#include "../h/ccb.hpp"
#include "../h/printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }

    if (n % 10 == 0) { thread_dispatch(); }

    return fibonacci(n - 1) + fibonacci(n - 2);
}

static void workerBodyA(void* arg) {

    printString("NIT A ");
    printInt(_thread :: running->retID());
    printString("\n");
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            //printString("U A SAM PRE DISP\n");
            thread_dispatch();
            //printString("U A SAM POSLE DISP\n");
        }
    }
    printString("A finished!\n");
    finishedA = true;
}

static void workerBodyB(void* arg) {
    printString("NIT B ");
    printInt(_thread :: running->retID());
    printString("\n");
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            //printString("U B SAM PRE DISP\n");
            thread_dispatch();
            //printString("U B SAM POSLE DISP\n");
        }
    }
    printString("B finished!\n");
    finishedB = true;
    thread_dispatch();
}

static void workerBodyC(void* arg) {
    printString("NIT C ");
    printInt(_thread :: running->retID());
    printString("\n");
    uint8 i = 0;
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    }

    printString("C: dispatch\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("C: t1="); printInt(t1); printString("\n");

    uint64 result = fibonacci(12);
    printString("C: fibonaci="); printInt(result); printString("\n");

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    }

    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
    printString("C finished NUMERO DOS!\n");
}

static void workerBodyD(void* arg) {
    printString("NIT D ");
    printInt(_thread :: running->retID());
    printString("\n");
    uint8 i = 10;
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    }

    printString("D: dispatch\n");
    __asm__ ("li t1, 5");
    thread_dispatch();
    printString("U D SAM\n");
    uint64 result = fibonacci(16);
    printString("U D SAM 2\n");

    printString("D: fibonaci="); printInt(result); printString("\n");

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    }

    printString("D finished!\n");
    finishedD = true;

    thread_dispatch();
}


void Threads_C_API_test() {
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], workerBodyB, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], workerBodyC, nullptr);
    printString("ThreadC created\n");

    thread_create(&threads[3], workerBodyD, nullptr);
    printString("ThreadD created\n");

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    }

}
