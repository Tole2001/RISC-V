

#include "../lib/mem.h"
#include "../h/MemAlloc.hpp"
#include "../h/syscall_c.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    //MemAlloc mem = MemAlloc :: getInstance();
    //return mem.malloc(n);
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    //MemAlloc mem = MemAlloc :: getInstance();
    //return mem.malloc(n);
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    //MemAlloc mem = MemAlloc :: getInstance();
    //mem.freemem(p);
    mem_free(p);
}

void operator delete[](void *p) noexcept
{
    //MemAlloc mem = MemAlloc :: getInstance();
    //mem.freemem(p);
    mem_free(p);
}
/*
#include "../lib/mem.h"
#include "../h/MemAlloc.hpp"
#include "../h/syscall_c.h"



using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    //return __mem_alloc(n);
    MemAlloc mem = MemAlloc :: getInstance();
    return mem.malloc(n);


}

void *operator new[](size_t n)
{
    MemAlloc mem = MemAlloc :: getInstance();
    return mem.malloc(n);


}

void operator delete(void *p) noexcept
{
    MemAlloc mem = MemAlloc :: getInstance();
    mem.freemem(p);



}

void operator delete[](void *p) noexcept
{
    MemAlloc mem = MemAlloc :: getInstance();
    mem.freemem(p);


}*/