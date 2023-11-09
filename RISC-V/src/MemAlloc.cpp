//
// Created by os on 2/10/23.
//
#include "../h/MemAlloc.hpp"
BlockHeader* MemAlloc :: Free = nullptr;
BlockHeader* MemAlloc :: allocated = nullptr;

MemAlloc& MemAlloc ::getInstance() {
    if(!Free){
        Free = (BlockHeader*)HEAP_START_ADDR;
        Free->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
        Free->next = nullptr;
    }
    static MemAlloc instance;
    return instance;
}

void* MemAlloc ::malloc(size_t sz) {
    size_t numblk = sz/MEM_BLOCK_SIZE;
    if(sz%MEM_BLOCK_SIZE > 0)numblk++;
    size_t fullsize = numblk*MEM_BLOCK_SIZE;
    BlockHeader *blk = Free, *prev = nullptr;
    for (; blk!=nullptr; prev=blk, blk=blk->next)
        if (blk->size>=fullsize) break;
    if(blk == nullptr)return nullptr;
    size_t remainingSize = blk->size - fullsize;
    if (remainingSize >= sizeof(BlockHeader) + MEM_BLOCK_SIZE){
        blk->size = fullsize;
        size_t offset = sizeof(BlockHeader) + fullsize;
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + offset);
        if (prev) prev->next = newBlk;
        else Free = newBlk;
        newBlk->next = blk->next;
        newBlk->size = remainingSize - sizeof(BlockHeader);
    }else {
        if (prev) prev->next = blk->next;
        else Free = blk->next;
    }
    //allocated
    if(!allocated){

        blk->next = nullptr;
        allocated = blk;
    }else{

        BlockHeader *blk2 = allocated, *prev2 = nullptr;
        for (; blk2!=nullptr; prev2=blk2, blk2=blk2->next)
            if((char*)blk < (char*)blk2)break;
        if(!blk2){
            prev2->next = blk;
            blk->next = nullptr;
        }else{
            prev2->next = blk;
            blk->next = blk2;
        }
    }
    return (char*)blk + sizeof(BlockHeader);
}

int MemAlloc::join(BlockHeader *cur) {
    BlockHeader* nxt = cur->next;
    if (nxt && (char*)cur+cur->size + sizeof(BlockHeader) == (char*)(nxt)) {
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    } else
        return 0;

}

int MemAlloc ::freemem(void *ptr) {
    char *addr = (char *) ptr - sizeof(BlockHeader);
    BlockHeader *blk = allocated, *prev = nullptr;
    //ovde problem razresi bracki moj limasti
    for (; blk != nullptr; prev = blk, blk = blk->next){
        if ((char *) blk == addr) {
            break;
        }
    }
    if(blk == nullptr)return -1;
    size_t sz = blk->size;
    BlockHeader *blk2 = Free, *prev2 = nullptr;
    for (; blk2!=nullptr; prev2=blk2, blk2=blk2->next)
        if (addr <  (char*)blk2) break;
    if(prev){
        prev->next = blk->next;
    }else{
        allocated = blk->next;
    }
    BlockHeader* newSeg =(BlockHeader*) addr;
    newSeg->size = sz;
    if(blk2)newSeg->next = blk2;
    if(prev2)prev2->next = newSeg;
    else Free = newSeg;
    if(blk2)join(newSeg);
    if(prev2)join(prev2);

    return 0;


}