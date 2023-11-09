//
// Created by os on 2/10/23.
//

#ifndef BASE_MEMALLOC_HPP
#define BASE_MEMALLOC_HPP
//#include "riscv.hpp"
#include "../lib/hw.h"
//#include "../lib/console.h"

const int  PROT_RD =0x1;
const int PROT_WR = 0x2;
const int PROT_RW = PROT_RD | PROT_WR;

extern const void* HEAP_START_ADDR;
extern const void* HEAP_END_ADDR;
extern const size_t MEM_BLOCK_SIZE;

struct BlockHeader{
    BlockHeader* next;
    size_t size;
};





class MemAlloc{
public:
    static BlockHeader* Free;
    static BlockHeader* allocated;
    static MemAlloc& getInstance();
    void* malloc(size_t sz);
    int freemem(void* ptr);
    int join(BlockHeader* cur);
};

#endif //BASE_MEMALLOC_HPP
