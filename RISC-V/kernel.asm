
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	45813103          	ld	sp,1112(sp) # 8000b458 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	711050ef          	jal	ra,80005f2c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret

00000000800010f8 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800010f8:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800010fc:	00b29a63          	bne	t0,a1,80001110 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001100:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001104:	fe029ae3          	bnez	t0,800010f8 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001108:	00000513          	li	a0,0
    jr ra                  # Return.
    8000110c:	00008067          	ret

0000000080001110 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001110:	00100513          	li	a0,1
    80001114:	00008067          	ret
	...

0000000080001120 <_ZN5Riscv14supervisorTrapEv>:
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack


    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00013023          	sd	zero,0(sp)
    80001128:	00113423          	sd	ra,8(sp)
    8000112c:	00213823          	sd	sp,16(sp)
    80001130:	00313c23          	sd	gp,24(sp)
    80001134:	02413023          	sd	tp,32(sp)
    80001138:	02513423          	sd	t0,40(sp)
    8000113c:	02613823          	sd	t1,48(sp)
    80001140:	02713c23          	sd	t2,56(sp)
    80001144:	04813023          	sd	s0,64(sp)
    80001148:	04913423          	sd	s1,72(sp)
    8000114c:	04a13823          	sd	a0,80(sp)
    80001150:	04b13c23          	sd	a1,88(sp)
    80001154:	06c13023          	sd	a2,96(sp)
    80001158:	06d13423          	sd	a3,104(sp)
    8000115c:	06e13823          	sd	a4,112(sp)
    80001160:	06f13c23          	sd	a5,120(sp)
    80001164:	09013023          	sd	a6,128(sp)
    80001168:	09113423          	sd	a7,136(sp)
    8000116c:	09213823          	sd	s2,144(sp)
    80001170:	09313c23          	sd	s3,152(sp)
    80001174:	0b413023          	sd	s4,160(sp)
    80001178:	0b513423          	sd	s5,168(sp)
    8000117c:	0b613823          	sd	s6,176(sp)
    80001180:	0b713c23          	sd	s7,184(sp)
    80001184:	0d813023          	sd	s8,192(sp)
    80001188:	0d913423          	sd	s9,200(sp)
    8000118c:	0da13823          	sd	s10,208(sp)
    80001190:	0db13c23          	sd	s11,216(sp)
    80001194:	0fc13023          	sd	t3,224(sp)
    80001198:	0fd13423          	sd	t4,232(sp)
    8000119c:	0fe13823          	sd	t5,240(sp)
    800011a0:	0ff13c23          	sd	t6,248(sp)



    call _ZN5Riscv20handleSupervisorTrapEv
    800011a4:	250010ef          	jal	ra,800023f4 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011a8:	00013003          	ld	zero,0(sp)
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001228:	10010113          	addi	sp,sp,256

    8000122c:	10200073          	sret

0000000080001230 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>:
.global _ZN7_thread13contextSwitchEPNS_7ContextES1_
.type _ZN7_thread13contextSwitchEPNS_7ContextES1_, @function
_ZN7_thread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include "../h/printing.hpp"
#include "../h/ccb.hpp"


void* mem_alloc(size_t size){
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001250:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x01));
    80001254:	00100793          	li	a5,1
    80001258:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000125c:	00000073          	ecall
    void* back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    80001260:	00050513          	mv	a0,a0
    return back;
}
    80001264:	00813403          	ld	s0,8(sp)
    80001268:	01010113          	addi	sp,sp,16
    8000126c:	00008067          	ret

0000000080001270 <_Z8mem_freePv>:

int mem_free(void*){
    80001270:	ff010113          	addi	sp,sp,-16
    80001274:	00813423          	sd	s0,8(sp)
    80001278:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    8000127c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x02));
    80001280:	00200793          	li	a5,2
    80001284:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001288:	00000073          	ecall
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    8000128c:	00050513          	mv	a0,a0
    return back;
}
    80001290:	0005051b          	sext.w	a0,a0
    80001294:	00813403          	ld	s0,8(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret

00000000800012a0 <_Z13thread_createPP7_threadPFvPvES2_>:
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg

){
    800012a0:	ff010113          	addi	sp,sp,-16
    800012a4:	00813423          	sd	s0,8(sp)
    800012a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, a2");
    800012ac:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, a1");
    800012b0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    800012b4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x11));
    800012b8:	01100793          	li	a5,17
    800012bc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012c0:	00000073          	ecall
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    800012c4:	00050513          	mv	a0,a0
    return back;
}
    800012c8:	0005051b          	sext.w	a0,a0
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z11thread_exitv>:

int thread_exit (){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00813423          	sd	s0,8(sp)
    800012e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x12));
    800012e4:	01200793          	li	a5,18
    800012e8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012ec:	00000073          	ecall
    int back ;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    800012f0:	00050513          	mv	a0,a0
    return back;
}
    800012f4:	0005051b          	sext.w	a0,a0
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_Z8sem_openPP4_semj>:

int sem_open (
        sem_t* handle,
        unsigned init

){
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a2, a1");
    80001310:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    80001314:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x21));
    80001318:	02100793          	li	a5,33
    8000131c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001320:	00000073          	ecall
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    80001324:	00050513          	mv	a0,a0
    return back;

}
    80001328:	0005051b          	sext.w	a0,a0
    8000132c:	00813403          	ld	s0,8(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_Z15thread_dispatchv>:

void thread_dispatch (){
    80001338:	ff010113          	addi	sp,sp,-16
    8000133c:	00813423          	sd	s0,8(sp)
    80001340:	01010413          	addi	s0,sp,16
   // printInt(_thread :: running->retID());
    //printString(" U DISP\n");
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x13));
    80001344:	01300793          	li	a5,19
    80001348:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000134c:	00000073          	ecall
    //printInt(_thread :: running->retID());
    //printString(" IZASAO DISP\n");
}
    80001350:	00813403          	ld	s0,8(sp)
    80001354:	01010113          	addi	sp,sp,16
    80001358:	00008067          	ret

000000008000135c <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle){
    8000135c:	ff010113          	addi	sp,sp,-16
    80001360:	00813423          	sd	s0,8(sp)
    80001364:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001368:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x22));
    8000136c:	02200793          	li	a5,34
    80001370:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001374:	00000073          	ecall
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    80001378:	00050513          	mv	a0,a0
    return back;
}
    8000137c:	0005051b          	sext.w	a0,a0
    80001380:	00813403          	ld	s0,8(sp)
    80001384:	01010113          	addi	sp,sp,16
    80001388:	00008067          	ret

000000008000138c <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id){
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001398:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x23));
    8000139c:	02300793          	li	a5,35
    800013a0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013a4:	00000073          	ecall
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    800013a8:	00050513          	mv	a0,a0
    return back;
}
    800013ac:	0005051b          	sext.w	a0,a0
    800013b0:	00813403          	ld	s0,8(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id){
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00813423          	sd	s0,8(sp)
    800013c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    800013c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x24));
    800013cc:	02400793          	li	a5,36
    800013d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013d4:	00000073          	ecall
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    800013d8:	00050513          	mv	a0,a0
    return back;
}
    800013dc:	0005051b          	sext.w	a0,a0
    800013e0:	00813403          	ld	s0,8(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_Z4getcv>:

char getc () {
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00813c23          	sd	s0,24(sp)
    800013f4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x41));
    800013f8:	04100793          	li	a5,65
    800013fc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001400:	00000073          	ecall
    volatile char back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    80001404:	00050793          	mv	a5,a0
    80001408:	fef407a3          	sb	a5,-17(s0)
    return back;
    8000140c:	fef44503          	lbu	a0,-17(s0)
}
    80001410:	0ff57513          	andi	a0,a0,255
    80001414:	01813403          	ld	s0,24(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret

0000000080001420 <_Z4putcc>:

void putc (char){
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    8000142c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x42));
    80001430:	04200793          	li	a5,66
    80001434:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001438:	00000073          	ecall
}
    8000143c:	00813403          	ld	s0,8(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_Z17thread_create_CPPPP7_threadPFvPvES2_>:


int thread_create_CPP(thread_t* handle,
void(*start_routine)(void*),
void* arg){
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00813423          	sd	s0,8(sp)
    80001450:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, a2");
    80001454:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, a1");
    80001458:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    8000145c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x43));
    80001460:	04300793          	li	a5,67
    80001464:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001468:	00000073          	ecall
    int back;
    __asm__ volatile("mv %0, a0" : "=r"(back));
    8000146c:	00050513          	mv	a0,a0
    return back;
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <_Z11threadSetRaP7_threadPFvPvE>:
void threadSetRa(thread_t t,void(*start_routine)(void*)){
    80001480:	ff010113          	addi	sp,sp,-16
    80001484:	00813423          	sd	s0,8(sp)
    80001488:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, a1");
    8000148c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    80001490:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x44));
    80001494:	04400793          	li	a5,68
    80001498:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000149c:	00000073          	ecall
}
    800014a0:	00813403          	ld	s0,8(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_Z5userMv>:


void userM(){
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x70));
    800014b8:	07000793          	li	a5,112
    800014bc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014c0:	00000073          	ecall
}
    800014c4:	00813403          	ld	s0,8(sp)
    800014c8:	01010113          	addi	sp,sp,16
    800014cc:	00008067          	ret

00000000800014d0 <_Z10supervisorv>:


void supervisor(){
    800014d0:	ff010113          	addi	sp,sp,-16
    800014d4:	00813423          	sd	s0,8(sp)
    800014d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x71));
    800014dc:	07100793          	li	a5,113
    800014e0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014e4:	00000073          	ecall
}
    800014e8:	00813403          	ld	s0,8(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret

00000000800014f4 <_Z11thread_joinPP7_thread>:


void thread_join(thread_t* handle){
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00813423          	sd	s0,8(sp)
    800014fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001500:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[a0]" : : [a0]"r"(0x66));
    80001504:	06600793          	li	a5,102
    80001508:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000150c:	00000073          	ecall
}
    80001510:	00813403          	ld	s0,8(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000151c:	fe010113          	addi	sp,sp,-32
    80001520:	00113c23          	sd	ra,24(sp)
    80001524:	00813823          	sd	s0,16(sp)
    80001528:	00913423          	sd	s1,8(sp)
    8000152c:	02010413          	addi	s0,sp,32
    80001530:	00050493          	mv	s1,a0
    LOCK();
    80001534:	00100613          	li	a2,1
    80001538:	00000593          	li	a1,0
    8000153c:	0000a517          	auipc	a0,0xa
    80001540:	f7450513          	addi	a0,a0,-140 # 8000b4b0 <lockPrint>
    80001544:	00000097          	auipc	ra,0x0
    80001548:	bb4080e7          	jalr	-1100(ra) # 800010f8 <copy_and_swap>
    8000154c:	fe0514e3          	bnez	a0,80001534 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001550:	0004c503          	lbu	a0,0(s1)
    80001554:	00050a63          	beqz	a0,80001568 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	ec8080e7          	jalr	-312(ra) # 80001420 <_Z4putcc>
        string++;
    80001560:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001564:	fedff06f          	j	80001550 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80001568:	00000613          	li	a2,0
    8000156c:	00100593          	li	a1,1
    80001570:	0000a517          	auipc	a0,0xa
    80001574:	f4050513          	addi	a0,a0,-192 # 8000b4b0 <lockPrint>
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	b80080e7          	jalr	-1152(ra) # 800010f8 <copy_and_swap>
    80001580:	fe0514e3          	bnez	a0,80001568 <_Z11printStringPKc+0x4c>
}
    80001584:	01813083          	ld	ra,24(sp)
    80001588:	01013403          	ld	s0,16(sp)
    8000158c:	00813483          	ld	s1,8(sp)
    80001590:	02010113          	addi	sp,sp,32
    80001594:	00008067          	ret

0000000080001598 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001598:	fd010113          	addi	sp,sp,-48
    8000159c:	02113423          	sd	ra,40(sp)
    800015a0:	02813023          	sd	s0,32(sp)
    800015a4:	00913c23          	sd	s1,24(sp)
    800015a8:	01213823          	sd	s2,16(sp)
    800015ac:	01313423          	sd	s3,8(sp)
    800015b0:	01413023          	sd	s4,0(sp)
    800015b4:	03010413          	addi	s0,sp,48
    800015b8:	00050993          	mv	s3,a0
    800015bc:	00058a13          	mv	s4,a1
    LOCK();
    800015c0:	00100613          	li	a2,1
    800015c4:	00000593          	li	a1,0
    800015c8:	0000a517          	auipc	a0,0xa
    800015cc:	ee850513          	addi	a0,a0,-280 # 8000b4b0 <lockPrint>
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	b28080e7          	jalr	-1240(ra) # 800010f8 <copy_and_swap>
    800015d8:	fe0514e3          	bnez	a0,800015c0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800015dc:	00000913          	li	s2,0
    800015e0:	00090493          	mv	s1,s2
    800015e4:	0019091b          	addiw	s2,s2,1
    800015e8:	03495a63          	bge	s2,s4,8000161c <_Z9getStringPci+0x84>
        cc = getc();
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	e00080e7          	jalr	-512(ra) # 800013ec <_Z4getcv>
        if(cc < 1)
    800015f4:	02050463          	beqz	a0,8000161c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800015f8:	009984b3          	add	s1,s3,s1
    800015fc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001600:	00a00793          	li	a5,10
    80001604:	00f50a63          	beq	a0,a5,80001618 <_Z9getStringPci+0x80>
    80001608:	00d00793          	li	a5,13
    8000160c:	fcf51ae3          	bne	a0,a5,800015e0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80001610:	00090493          	mv	s1,s2
    80001614:	0080006f          	j	8000161c <_Z9getStringPci+0x84>
    80001618:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000161c:	009984b3          	add	s1,s3,s1
    80001620:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001624:	00000613          	li	a2,0
    80001628:	00100593          	li	a1,1
    8000162c:	0000a517          	auipc	a0,0xa
    80001630:	e8450513          	addi	a0,a0,-380 # 8000b4b0 <lockPrint>
    80001634:	00000097          	auipc	ra,0x0
    80001638:	ac4080e7          	jalr	-1340(ra) # 800010f8 <copy_and_swap>
    8000163c:	fe0514e3          	bnez	a0,80001624 <_Z9getStringPci+0x8c>
    return buf;
}
    80001640:	00098513          	mv	a0,s3
    80001644:	02813083          	ld	ra,40(sp)
    80001648:	02013403          	ld	s0,32(sp)
    8000164c:	01813483          	ld	s1,24(sp)
    80001650:	01013903          	ld	s2,16(sp)
    80001654:	00813983          	ld	s3,8(sp)
    80001658:	00013a03          	ld	s4,0(sp)
    8000165c:	03010113          	addi	sp,sp,48
    80001660:	00008067          	ret

0000000080001664 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001664:	ff010113          	addi	sp,sp,-16
    80001668:	00813423          	sd	s0,8(sp)
    8000166c:	01010413          	addi	s0,sp,16
    80001670:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001674:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001678:	0006c603          	lbu	a2,0(a3)
    8000167c:	fd06071b          	addiw	a4,a2,-48
    80001680:	0ff77713          	andi	a4,a4,255
    80001684:	00900793          	li	a5,9
    80001688:	02e7e063          	bltu	a5,a4,800016a8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000168c:	0025179b          	slliw	a5,a0,0x2
    80001690:	00a787bb          	addw	a5,a5,a0
    80001694:	0017979b          	slliw	a5,a5,0x1
    80001698:	00168693          	addi	a3,a3,1
    8000169c:	00c787bb          	addw	a5,a5,a2
    800016a0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800016a4:	fd5ff06f          	j	80001678 <_Z11stringToIntPKc+0x14>
    return n;
}
    800016a8:	00813403          	ld	s0,8(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800016b4:	fc010113          	addi	sp,sp,-64
    800016b8:	02113c23          	sd	ra,56(sp)
    800016bc:	02813823          	sd	s0,48(sp)
    800016c0:	02913423          	sd	s1,40(sp)
    800016c4:	03213023          	sd	s2,32(sp)
    800016c8:	01313c23          	sd	s3,24(sp)
    800016cc:	04010413          	addi	s0,sp,64
    800016d0:	00050493          	mv	s1,a0
    800016d4:	00058913          	mv	s2,a1
    800016d8:	00060993          	mv	s3,a2
    LOCK();
    800016dc:	00100613          	li	a2,1
    800016e0:	00000593          	li	a1,0
    800016e4:	0000a517          	auipc	a0,0xa
    800016e8:	dcc50513          	addi	a0,a0,-564 # 8000b4b0 <lockPrint>
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	a0c080e7          	jalr	-1524(ra) # 800010f8 <copy_and_swap>
    800016f4:	fe0514e3          	bnez	a0,800016dc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800016f8:	00098463          	beqz	s3,80001700 <_Z8printIntiii+0x4c>
    800016fc:	0804c463          	bltz	s1,80001784 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001700:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001704:	00000593          	li	a1,0
    }

    i = 0;
    80001708:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000170c:	0009079b          	sext.w	a5,s2
    80001710:	0325773b          	remuw	a4,a0,s2
    80001714:	00048613          	mv	a2,s1
    80001718:	0014849b          	addiw	s1,s1,1
    8000171c:	02071693          	slli	a3,a4,0x20
    80001720:	0206d693          	srli	a3,a3,0x20
    80001724:	0000a717          	auipc	a4,0xa
    80001728:	b1c70713          	addi	a4,a4,-1252 # 8000b240 <digits>
    8000172c:	00d70733          	add	a4,a4,a3
    80001730:	00074683          	lbu	a3,0(a4)
    80001734:	fd040713          	addi	a4,s0,-48
    80001738:	00c70733          	add	a4,a4,a2
    8000173c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001740:	0005071b          	sext.w	a4,a0
    80001744:	0325553b          	divuw	a0,a0,s2
    80001748:	fcf772e3          	bgeu	a4,a5,8000170c <_Z8printIntiii+0x58>
    if(neg)
    8000174c:	00058c63          	beqz	a1,80001764 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80001750:	fd040793          	addi	a5,s0,-48
    80001754:	009784b3          	add	s1,a5,s1
    80001758:	02d00793          	li	a5,45
    8000175c:	fef48823          	sb	a5,-16(s1)
    80001760:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001764:	fff4849b          	addiw	s1,s1,-1
    80001768:	0204c463          	bltz	s1,80001790 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000176c:	fd040793          	addi	a5,s0,-48
    80001770:	009787b3          	add	a5,a5,s1
    80001774:	ff07c503          	lbu	a0,-16(a5)
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	ca8080e7          	jalr	-856(ra) # 80001420 <_Z4putcc>
    80001780:	fe5ff06f          	j	80001764 <_Z8printIntiii+0xb0>
        x = -xx;
    80001784:	4090053b          	negw	a0,s1
        neg = 1;
    80001788:	00100593          	li	a1,1
        x = -xx;
    8000178c:	f7dff06f          	j	80001708 <_Z8printIntiii+0x54>

    UNLOCK();
    80001790:	00000613          	li	a2,0
    80001794:	00100593          	li	a1,1
    80001798:	0000a517          	auipc	a0,0xa
    8000179c:	d1850513          	addi	a0,a0,-744 # 8000b4b0 <lockPrint>
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	958080e7          	jalr	-1704(ra) # 800010f8 <copy_and_swap>
    800017a8:	fe0514e3          	bnez	a0,80001790 <_Z8printIntiii+0xdc>
    800017ac:	03813083          	ld	ra,56(sp)
    800017b0:	03013403          	ld	s0,48(sp)
    800017b4:	02813483          	ld	s1,40(sp)
    800017b8:	02013903          	ld	s2,32(sp)
    800017bc:	01813983          	ld	s3,24(sp)
    800017c0:	04010113          	addi	sp,sp,64
    800017c4:	00008067          	ret

00000000800017c8 <_ZN9BufferCPPC1Ei>:
#include "../h/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800017c8:	fd010113          	addi	sp,sp,-48
    800017cc:	02113423          	sd	ra,40(sp)
    800017d0:	02813023          	sd	s0,32(sp)
    800017d4:	00913c23          	sd	s1,24(sp)
    800017d8:	01213823          	sd	s2,16(sp)
    800017dc:	01313423          	sd	s3,8(sp)
    800017e0:	03010413          	addi	s0,sp,48
    800017e4:	00050493          	mv	s1,a0
    800017e8:	00058913          	mv	s2,a1
    800017ec:	0015879b          	addiw	a5,a1,1
    800017f0:	0007851b          	sext.w	a0,a5
    800017f4:	00f4a023          	sw	a5,0(s1)
    800017f8:	0004a823          	sw	zero,16(s1)
    800017fc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80001800:	00251513          	slli	a0,a0,0x2
    80001804:	00000097          	auipc	ra,0x0
    80001808:	a40080e7          	jalr	-1472(ra) # 80001244 <_Z9mem_allocm>
    8000180c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80001810:	01000513          	li	a0,16
    80001814:	00000097          	auipc	ra,0x0
    80001818:	470080e7          	jalr	1136(ra) # 80001c84 <_Znwm>
    8000181c:	00050993          	mv	s3,a0
    80001820:	00000593          	li	a1,0
    80001824:	00001097          	auipc	ra,0x1
    80001828:	a68080e7          	jalr	-1432(ra) # 8000228c <_ZN9SemaphoreC1Ej>
    8000182c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80001830:	01000513          	li	a0,16
    80001834:	00000097          	auipc	ra,0x0
    80001838:	450080e7          	jalr	1104(ra) # 80001c84 <_Znwm>
    8000183c:	00050993          	mv	s3,a0
    80001840:	00090593          	mv	a1,s2
    80001844:	00001097          	auipc	ra,0x1
    80001848:	a48080e7          	jalr	-1464(ra) # 8000228c <_ZN9SemaphoreC1Ej>
    8000184c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80001850:	01000513          	li	a0,16
    80001854:	00000097          	auipc	ra,0x0
    80001858:	430080e7          	jalr	1072(ra) # 80001c84 <_Znwm>
    8000185c:	00050913          	mv	s2,a0
    80001860:	00100593          	li	a1,1
    80001864:	00001097          	auipc	ra,0x1
    80001868:	a28080e7          	jalr	-1496(ra) # 8000228c <_ZN9SemaphoreC1Ej>
    8000186c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80001870:	01000513          	li	a0,16
    80001874:	00000097          	auipc	ra,0x0
    80001878:	410080e7          	jalr	1040(ra) # 80001c84 <_Znwm>
    8000187c:	00050913          	mv	s2,a0
    80001880:	00100593          	li	a1,1
    80001884:	00001097          	auipc	ra,0x1
    80001888:	a08080e7          	jalr	-1528(ra) # 8000228c <_ZN9SemaphoreC1Ej>
    8000188c:	0324b823          	sd	s2,48(s1)
}
    80001890:	02813083          	ld	ra,40(sp)
    80001894:	02013403          	ld	s0,32(sp)
    80001898:	01813483          	ld	s1,24(sp)
    8000189c:	01013903          	ld	s2,16(sp)
    800018a0:	00813983          	ld	s3,8(sp)
    800018a4:	03010113          	addi	sp,sp,48
    800018a8:	00008067          	ret
    800018ac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800018b0:	00098513          	mv	a0,s3
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	420080e7          	jalr	1056(ra) # 80001cd4 <_ZdlPv>
    800018bc:	00048513          	mv	a0,s1
    800018c0:	0000b097          	auipc	ra,0xb
    800018c4:	d48080e7          	jalr	-696(ra) # 8000c608 <_Unwind_Resume>
    800018c8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800018cc:	00098513          	mv	a0,s3
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	404080e7          	jalr	1028(ra) # 80001cd4 <_ZdlPv>
    800018d8:	00048513          	mv	a0,s1
    800018dc:	0000b097          	auipc	ra,0xb
    800018e0:	d2c080e7          	jalr	-724(ra) # 8000c608 <_Unwind_Resume>
    800018e4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800018e8:	00090513          	mv	a0,s2
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	3e8080e7          	jalr	1000(ra) # 80001cd4 <_ZdlPv>
    800018f4:	00048513          	mv	a0,s1
    800018f8:	0000b097          	auipc	ra,0xb
    800018fc:	d10080e7          	jalr	-752(ra) # 8000c608 <_Unwind_Resume>
    80001900:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80001904:	00090513          	mv	a0,s2
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	3cc080e7          	jalr	972(ra) # 80001cd4 <_ZdlPv>
    80001910:	00048513          	mv	a0,s1
    80001914:	0000b097          	auipc	ra,0xb
    80001918:	cf4080e7          	jalr	-780(ra) # 8000c608 <_Unwind_Resume>

000000008000191c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000191c:	fe010113          	addi	sp,sp,-32
    80001920:	00113c23          	sd	ra,24(sp)
    80001924:	00813823          	sd	s0,16(sp)
    80001928:	00913423          	sd	s1,8(sp)
    8000192c:	01213023          	sd	s2,0(sp)
    80001930:	02010413          	addi	s0,sp,32
    80001934:	00050493          	mv	s1,a0
    80001938:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000193c:	01853503          	ld	a0,24(a0)
    80001940:	00001097          	auipc	ra,0x1
    80001944:	984080e7          	jalr	-1660(ra) # 800022c4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80001948:	0304b503          	ld	a0,48(s1)
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	978080e7          	jalr	-1672(ra) # 800022c4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80001954:	0084b783          	ld	a5,8(s1)
    80001958:	0144a703          	lw	a4,20(s1)
    8000195c:	00271713          	slli	a4,a4,0x2
    80001960:	00e787b3          	add	a5,a5,a4
    80001964:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80001968:	0144a783          	lw	a5,20(s1)
    8000196c:	0017879b          	addiw	a5,a5,1
    80001970:	0004a703          	lw	a4,0(s1)
    80001974:	02e7e7bb          	remw	a5,a5,a4
    80001978:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000197c:	0304b503          	ld	a0,48(s1)
    80001980:	00001097          	auipc	ra,0x1
    80001984:	970080e7          	jalr	-1680(ra) # 800022f0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80001988:	0204b503          	ld	a0,32(s1)
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	964080e7          	jalr	-1692(ra) # 800022f0 <_ZN9Semaphore6signalEv>

}
    80001994:	01813083          	ld	ra,24(sp)
    80001998:	01013403          	ld	s0,16(sp)
    8000199c:	00813483          	ld	s1,8(sp)
    800019a0:	00013903          	ld	s2,0(sp)
    800019a4:	02010113          	addi	sp,sp,32
    800019a8:	00008067          	ret

00000000800019ac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800019ac:	fe010113          	addi	sp,sp,-32
    800019b0:	00113c23          	sd	ra,24(sp)
    800019b4:	00813823          	sd	s0,16(sp)
    800019b8:	00913423          	sd	s1,8(sp)
    800019bc:	01213023          	sd	s2,0(sp)
    800019c0:	02010413          	addi	s0,sp,32
    800019c4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800019c8:	02053503          	ld	a0,32(a0)
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	8f8080e7          	jalr	-1800(ra) # 800022c4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800019d4:	0284b503          	ld	a0,40(s1)
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	8ec080e7          	jalr	-1812(ra) # 800022c4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800019e0:	0084b703          	ld	a4,8(s1)
    800019e4:	0104a783          	lw	a5,16(s1)
    800019e8:	00279693          	slli	a3,a5,0x2
    800019ec:	00d70733          	add	a4,a4,a3
    800019f0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800019f4:	0017879b          	addiw	a5,a5,1
    800019f8:	0004a703          	lw	a4,0(s1)
    800019fc:	02e7e7bb          	remw	a5,a5,a4
    80001a00:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80001a04:	0284b503          	ld	a0,40(s1)
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	8e8080e7          	jalr	-1816(ra) # 800022f0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80001a10:	0184b503          	ld	a0,24(s1)
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	8dc080e7          	jalr	-1828(ra) # 800022f0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	00013903          	ld	s2,0(sp)
    80001a30:	02010113          	addi	sp,sp,32
    80001a34:	00008067          	ret

0000000080001a38 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80001a38:	fe010113          	addi	sp,sp,-32
    80001a3c:	00113c23          	sd	ra,24(sp)
    80001a40:	00813823          	sd	s0,16(sp)
    80001a44:	00913423          	sd	s1,8(sp)
    80001a48:	01213023          	sd	s2,0(sp)
    80001a4c:	02010413          	addi	s0,sp,32
    80001a50:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80001a54:	02853503          	ld	a0,40(a0)
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	86c080e7          	jalr	-1940(ra) # 800022c4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80001a60:	0304b503          	ld	a0,48(s1)
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	860080e7          	jalr	-1952(ra) # 800022c4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80001a6c:	0144a783          	lw	a5,20(s1)
    80001a70:	0104a903          	lw	s2,16(s1)
    80001a74:	0327ce63          	blt	a5,s2,80001ab0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80001a78:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80001a7c:	0304b503          	ld	a0,48(s1)
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	870080e7          	jalr	-1936(ra) # 800022f0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80001a88:	0284b503          	ld	a0,40(s1)
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	864080e7          	jalr	-1948(ra) # 800022f0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80001a94:	00090513          	mv	a0,s2
    80001a98:	01813083          	ld	ra,24(sp)
    80001a9c:	01013403          	ld	s0,16(sp)
    80001aa0:	00813483          	ld	s1,8(sp)
    80001aa4:	00013903          	ld	s2,0(sp)
    80001aa8:	02010113          	addi	sp,sp,32
    80001aac:	00008067          	ret
        ret = cap - head + tail;
    80001ab0:	0004a703          	lw	a4,0(s1)
    80001ab4:	4127093b          	subw	s2,a4,s2
    80001ab8:	00f9093b          	addw	s2,s2,a5
    80001abc:	fc1ff06f          	j	80001a7c <_ZN9BufferCPP6getCntEv+0x44>

0000000080001ac0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80001ac0:	fe010113          	addi	sp,sp,-32
    80001ac4:	00113c23          	sd	ra,24(sp)
    80001ac8:	00813823          	sd	s0,16(sp)
    80001acc:	00913423          	sd	s1,8(sp)
    80001ad0:	02010413          	addi	s0,sp,32
    80001ad4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80001ad8:	00a00513          	li	a0,10
    80001adc:	00001097          	auipc	ra,0x1
    80001ae0:	868080e7          	jalr	-1944(ra) # 80002344 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80001ae4:	00007517          	auipc	a0,0x7
    80001ae8:	53c50513          	addi	a0,a0,1340 # 80009020 <CONSOLE_STATUS+0x10>
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	a30080e7          	jalr	-1488(ra) # 8000151c <_Z11printStringPKc>
    while (getCnt()) {
    80001af4:	00048513          	mv	a0,s1
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	f40080e7          	jalr	-192(ra) # 80001a38 <_ZN9BufferCPP6getCntEv>
    80001b00:	02050c63          	beqz	a0,80001b38 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80001b04:	0084b783          	ld	a5,8(s1)
    80001b08:	0104a703          	lw	a4,16(s1)
    80001b0c:	00271713          	slli	a4,a4,0x2
    80001b10:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80001b14:	0007c503          	lbu	a0,0(a5)
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	82c080e7          	jalr	-2004(ra) # 80002344 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80001b20:	0104a783          	lw	a5,16(s1)
    80001b24:	0017879b          	addiw	a5,a5,1
    80001b28:	0004a703          	lw	a4,0(s1)
    80001b2c:	02e7e7bb          	remw	a5,a5,a4
    80001b30:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80001b34:	fc1ff06f          	j	80001af4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80001b38:	02100513          	li	a0,33
    80001b3c:	00001097          	auipc	ra,0x1
    80001b40:	808080e7          	jalr	-2040(ra) # 80002344 <_ZN7Console4putcEc>
    Console::putc('\n');
    80001b44:	00a00513          	li	a0,10
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	7fc080e7          	jalr	2044(ra) # 80002344 <_ZN7Console4putcEc>
    mem_free(buffer);
    80001b50:	0084b503          	ld	a0,8(s1)
    80001b54:	fffff097          	auipc	ra,0xfffff
    80001b58:	71c080e7          	jalr	1820(ra) # 80001270 <_Z8mem_freePv>
    delete itemAvailable;
    80001b5c:	0204b503          	ld	a0,32(s1)
    80001b60:	00050863          	beqz	a0,80001b70 <_ZN9BufferCPPD1Ev+0xb0>
    80001b64:	00053783          	ld	a5,0(a0)
    80001b68:	0087b783          	ld	a5,8(a5)
    80001b6c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80001b70:	0184b503          	ld	a0,24(s1)
    80001b74:	00050863          	beqz	a0,80001b84 <_ZN9BufferCPPD1Ev+0xc4>
    80001b78:	00053783          	ld	a5,0(a0)
    80001b7c:	0087b783          	ld	a5,8(a5)
    80001b80:	000780e7          	jalr	a5
    delete mutexTail;
    80001b84:	0304b503          	ld	a0,48(s1)
    80001b88:	00050863          	beqz	a0,80001b98 <_ZN9BufferCPPD1Ev+0xd8>
    80001b8c:	00053783          	ld	a5,0(a0)
    80001b90:	0087b783          	ld	a5,8(a5)
    80001b94:	000780e7          	jalr	a5
    delete mutexHead;
    80001b98:	0284b503          	ld	a0,40(s1)
    80001b9c:	00050863          	beqz	a0,80001bac <_ZN9BufferCPPD1Ev+0xec>
    80001ba0:	00053783          	ld	a5,0(a0)
    80001ba4:	0087b783          	ld	a5,8(a5)
    80001ba8:	000780e7          	jalr	a5
}
    80001bac:	01813083          	ld	ra,24(sp)
    80001bb0:	01013403          	ld	s0,16(sp)
    80001bb4:	00813483          	ld	s1,8(sp)
    80001bb8:	02010113          	addi	sp,sp,32
    80001bbc:	00008067          	ret

0000000080001bc0 <_Z4funcPPi>:
#include "../lib/console.h"

extern void userMain();


void func(int** b){
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00813423          	sd	s0,8(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    b[0][0] = 3;
    80001bcc:	00053783          	ld	a5,0(a0)
    80001bd0:	00300713          	li	a4,3
    80001bd4:	00e7a023          	sw	a4,0(a5)
}
    80001bd8:	00813403          	ld	s0,8(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <main>:


int main()
{
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00113c23          	sd	ra,24(sp)
    80001bec:	00813823          	sd	s0,16(sp)
    80001bf0:	00913423          	sd	s1,8(sp)
    80001bf4:	02010413          	addi	s0,sp,32

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001bf8:	0000a797          	auipc	a5,0xa
    80001bfc:	8587b783          	ld	a5,-1960(a5) # 8000b450 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001c00:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c04:	00200793          	li	a5,2
    80001c08:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    //_thread :: running = _thread ::createCoroutine(nullptr, nullptr);
    Riscv ::Mode(1);
    80001c0c:	00100513          	li	a0,1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	774080e7          	jalr	1908(ra) # 80002384 <_ZN5Riscv4ModeEm>
    printInteger(b[0][0]);
    func(b);
    printInteger(b[0][0]);*/

    //userM();
    printString2("UserMode Started \n");
    80001c18:	00007517          	auipc	a0,0x7
    80001c1c:	42050513          	addi	a0,a0,1056 # 80009038 <CONSOLE_STATUS+0x28>
    80001c20:	00001097          	auipc	ra,0x1
    80001c24:	27c080e7          	jalr	636(ra) # 80002e9c <_Z12printString2PKc>
    userMain();
    80001c28:	00004097          	auipc	ra,0x4
    80001c2c:	bd4080e7          	jalr	-1068(ra) # 800057fc <_Z8userMainv>
    //Riscv ::Mode(1);


    //delete user;

    printString2("Finished\n");
    80001c30:	00007517          	auipc	a0,0x7
    80001c34:	42050513          	addi	a0,a0,1056 # 80009050 <CONSOLE_STATUS+0x40>
    80001c38:	00001097          	auipc	ra,0x1
    80001c3c:	264080e7          	jalr	612(ra) # 80002e9c <_Z12printString2PKc>

    delete _thread :: running;
    80001c40:	0000a797          	auipc	a5,0xa
    80001c44:	8087b783          	ld	a5,-2040(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c48:	0007b483          	ld	s1,0(a5)
    80001c4c:	02048063          	beqz	s1,80001c6c <main+0x88>
    bool isblk(){return blk;}
    void setblk(bool val){blk = val;}
    uint64 retID(){return this->id;}
    static void dispatch();

    ~ _thread() { delete[] stack; }
    80001c50:	0284b503          	ld	a0,40(s1)
    80001c54:	00050663          	beqz	a0,80001c60 <main+0x7c>
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	0a4080e7          	jalr	164(ra) # 80001cfc <_ZdaPv>
    80001c60:	00048513          	mv	a0,s1
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	070080e7          	jalr	112(ra) # 80001cd4 <_ZdlPv>

    return 0;
}
    80001c6c:	00000513          	li	a0,0
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	02010113          	addi	sp,sp,32
    80001c80:	00008067          	ret

0000000080001c84 <_Znwm>:
#include "../h/syscall_c.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00113423          	sd	ra,8(sp)
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	01010413          	addi	s0,sp,16
    //MemAlloc mem = MemAlloc :: getInstance();
    //return mem.malloc(n);
    return mem_alloc(n);
    80001c94:	fffff097          	auipc	ra,0xfffff
    80001c98:	5b0080e7          	jalr	1456(ra) # 80001244 <_Z9mem_allocm>
}
    80001c9c:	00813083          	ld	ra,8(sp)
    80001ca0:	00013403          	ld	s0,0(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_Znam>:

void *operator new[](size_t n)
{
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    //MemAlloc mem = MemAlloc :: getInstance();
    //return mem.malloc(n);
    return mem_alloc(n);
    80001cbc:	fffff097          	auipc	ra,0xfffff
    80001cc0:	588080e7          	jalr	1416(ra) # 80001244 <_Z9mem_allocm>
}
    80001cc4:	00813083          	ld	ra,8(sp)
    80001cc8:	00013403          	ld	s0,0(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00113423          	sd	ra,8(sp)
    80001cdc:	00813023          	sd	s0,0(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    //MemAlloc mem = MemAlloc :: getInstance();
    //mem.freemem(p);
    mem_free(p);
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	58c080e7          	jalr	1420(ra) # 80001270 <_Z8mem_freePv>
}
    80001cec:	00813083          	ld	ra,8(sp)
    80001cf0:	00013403          	ld	s0,0(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00113423          	sd	ra,8(sp)
    80001d04:	00813023          	sd	s0,0(sp)
    80001d08:	01010413          	addi	s0,sp,16
    //MemAlloc mem = MemAlloc :: getInstance();
    //mem.freemem(p);
    mem_free(p);
    80001d0c:	fffff097          	auipc	ra,0xfffff
    80001d10:	564080e7          	jalr	1380(ra) # 80001270 <_Z8mem_freePv>
}
    80001d14:	00813083          	ld	ra,8(sp)
    80001d18:	00013403          	ld	s0,0(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret

0000000080001d24 <_ZN7_thread13threadWrapperEv>:
void _thread ::rasetter() {
    context.ra = (uint64) &threadWrapper;

}

void _thread ::threadWrapper() {
    80001d24:	fe010113          	addi	sp,sp,-32
    80001d28:	00113c23          	sd	ra,24(sp)
    80001d2c:	00813823          	sd	s0,16(sp)
    80001d30:	00913423          	sd	s1,8(sp)
    80001d34:	02010413          	addi	s0,sp,32
    Riscv :: Rezim();
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	66c080e7          	jalr	1644(ra) # 800023a4 <_ZN5Riscv5RezimEv>
    running->body(running->argo);
    80001d40:	00009497          	auipc	s1,0x9
    80001d44:	77848493          	addi	s1,s1,1912 # 8000b4b8 <_ZN7_thread7runningE>
    80001d48:	0004b783          	ld	a5,0(s1)
    80001d4c:	0207b703          	ld	a4,32(a5)
    80001d50:	0087b503          	ld	a0,8(a5)
    80001d54:	000700e7          	jalr	a4
    //ako uspes nadji drugi nacin
    running->setFinished(true);
    80001d58:	0004b783          	ld	a5,0(s1)

    bool isFinished() const { return finished; }



    void setFinished(bool value) { finished = value; }
    80001d5c:	00100713          	li	a4,1
    80001d60:	04e78023          	sb	a4,64(a5)
    //printString("IZASAO IZ NITI ");
    //printInt(_thread :: running->retID());
    //printString("\n");
    thread_dispatch();
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	5d4080e7          	jalr	1492(ra) # 80001338 <_Z15thread_dispatchv>
    //_thread :: dispatch();
}
    80001d6c:	01813083          	ld	ra,24(sp)
    80001d70:	01013403          	ld	s0,16(sp)
    80001d74:	00813483          	ld	s1,8(sp)
    80001d78:	02010113          	addi	sp,sp,32
    80001d7c:	00008067          	ret

0000000080001d80 <_ZN7_thread15createCoroutineEPFvPvES0_>:
{
    80001d80:	fd010113          	addi	sp,sp,-48
    80001d84:	02113423          	sd	ra,40(sp)
    80001d88:	02813023          	sd	s0,32(sp)
    80001d8c:	00913c23          	sd	s1,24(sp)
    80001d90:	01213823          	sd	s2,16(sp)
    80001d94:	01313423          	sd	s3,8(sp)
    80001d98:	03010413          	addi	s0,sp,48
    80001d9c:	00050913          	mv	s2,a0
    80001da0:	00058993          	mv	s3,a1
    return new  _thread(body,arg);
    80001da4:	04800513          	li	a0,72
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	edc080e7          	jalr	-292(ra) # 80001c84 <_Znwm>
    80001db0:	00050493          	mv	s1,a0
            body(bd),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false)
    80001db4:	01353423          	sd	s3,8(a0)
    80001db8:	00052823          	sw	zero,16(a0)
    80001dbc:	03253023          	sd	s2,32(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001dc0:	00090a63          	beqz	s2,80001dd4 <_ZN7_thread15createCoroutineEPFvPvES0_+0x54>
    80001dc4:	00008537          	lui	a0,0x8
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	ee4080e7          	jalr	-284(ra) # 80001cac <_Znam>
    80001dd0:	0080006f          	j	80001dd8 <_ZN7_thread15createCoroutineEPFvPvES0_+0x58>
    80001dd4:	00000513          	li	a0,0
            finished(false)
    80001dd8:	02a4b423          	sd	a0,40(s1)
    80001ddc:	00000797          	auipc	a5,0x0
    80001de0:	f4878793          	addi	a5,a5,-184 # 80001d24 <_ZN7_thread13threadWrapperEv>
    80001de4:	02f4b823          	sd	a5,48(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001de8:	04050863          	beqz	a0,80001e38 <_ZN7_thread15createCoroutineEPFvPvES0_+0xb8>
    80001dec:	000087b7          	lui	a5,0x8
    80001df0:	00f50533          	add	a0,a0,a5
            finished(false)
    80001df4:	02a4bc23          	sd	a0,56(s1)
    80001df8:	04048023          	sb	zero,64(s1)
    {
        blk = false;
    80001dfc:	040480a3          	sb	zero,65(s1)
        this->id = ID++;
    80001e00:	00009717          	auipc	a4,0x9
    80001e04:	6b870713          	addi	a4,a4,1720 # 8000b4b8 <_ZN7_thread7runningE>
    80001e08:	00873783          	ld	a5,8(a4)
    80001e0c:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80001e10:	00d73423          	sd	a3,8(a4)
    80001e14:	00f4bc23          	sd	a5,24(s1)
}
    80001e18:	00048513          	mv	a0,s1
    80001e1c:	02813083          	ld	ra,40(sp)
    80001e20:	02013403          	ld	s0,32(sp)
    80001e24:	01813483          	ld	s1,24(sp)
    80001e28:	01013903          	ld	s2,16(sp)
    80001e2c:	00813983          	ld	s3,8(sp)
    80001e30:	03010113          	addi	sp,sp,48
    80001e34:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001e38:	00000513          	li	a0,0
    80001e3c:	fb9ff06f          	j	80001df4 <_ZN7_thread15createCoroutineEPFvPvES0_+0x74>
    80001e40:	00050913          	mv	s2,a0
    return new  _thread(body,arg);
    80001e44:	00048513          	mv	a0,s1
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	e8c080e7          	jalr	-372(ra) # 80001cd4 <_ZdlPv>
    80001e50:	00090513          	mv	a0,s2
    80001e54:	0000a097          	auipc	ra,0xa
    80001e58:	7b4080e7          	jalr	1972(ra) # 8000c608 <_Unwind_Resume>

0000000080001e5c <_ZN7_thread8dispatchEv>:
{
    80001e5c:	fe010113          	addi	sp,sp,-32
    80001e60:	00113c23          	sd	ra,24(sp)
    80001e64:	00813823          	sd	s0,16(sp)
    80001e68:	00913423          	sd	s1,8(sp)
    80001e6c:	02010413          	addi	s0,sp,32
    _thread *old = running;
    80001e70:	00009497          	auipc	s1,0x9
    80001e74:	6484b483          	ld	s1,1608(s1) # 8000b4b8 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    80001e78:	0404c783          	lbu	a5,64(s1)
    if (!old->isFinished() && !old->isblk()) {
    80001e7c:	00079663          	bnez	a5,80001e88 <_ZN7_thread8dispatchEv+0x2c>
    bool isblk(){return blk;}
    80001e80:	0414c783          	lbu	a5,65(s1)
    80001e84:	02078c63          	beqz	a5,80001ebc <_ZN7_thread8dispatchEv+0x60>
    running = Scheduler::get();
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	bec080e7          	jalr	-1044(ra) # 80002a74 <_ZN9Scheduler3getEv>
    80001e90:	00009797          	auipc	a5,0x9
    80001e94:	62a7b423          	sd	a0,1576(a5) # 8000b4b8 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    80001e98:	03050593          	addi	a1,a0,48 # 8030 <_entry-0x7fff7fd0>
    80001e9c:	03048513          	addi	a0,s1,48
    80001ea0:	fffff097          	auipc	ra,0xfffff
    80001ea4:	390080e7          	jalr	912(ra) # 80001230 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    80001ea8:	01813083          	ld	ra,24(sp)
    80001eac:	01013403          	ld	s0,16(sp)
    80001eb0:	00813483          	ld	s1,8(sp)
    80001eb4:	02010113          	addi	sp,sp,32
    80001eb8:	00008067          	ret
        Scheduler::put(old);
    80001ebc:	00048513          	mv	a0,s1
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	c1c080e7          	jalr	-996(ra) # 80002adc <_ZN9Scheduler3putEP7_thread>
    80001ec8:	fc1ff06f          	j	80001e88 <_ZN7_thread8dispatchEv+0x2c>

0000000080001ecc <_ZN7_thread5yieldEv>:
{
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	124080e7          	jalr	292(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    _thread::dispatch();
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	f78080e7          	jalr	-136(ra) # 80001e5c <_ZN7_thread8dispatchEv>
    Riscv::popRegisters();
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	190080e7          	jalr	400(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001ef4:	00813083          	ld	ra,8(sp)
    80001ef8:	00013403          	ld	s0,0(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN7_thread8rasetterEv>:
void _thread ::rasetter() {
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    context.ra = (uint64) &threadWrapper;
    80001f10:	00000797          	auipc	a5,0x0
    80001f14:	e1478793          	addi	a5,a5,-492 # 80001d24 <_ZN7_thread13threadWrapperEv>
    80001f18:	02f53823          	sd	a5,48(a0)
}
    80001f1c:	00813403          	ld	s0,8(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN7_thread19createCouroutineCPPEPFvPvES0_>:
_thread* _thread ::createCouroutineCPP(Body body, void *arg) {
    80001f28:	fd010113          	addi	sp,sp,-48
    80001f2c:	02113423          	sd	ra,40(sp)
    80001f30:	02813023          	sd	s0,32(sp)
    80001f34:	00913c23          	sd	s1,24(sp)
    80001f38:	01213823          	sd	s2,16(sp)
    80001f3c:	01313423          	sd	s3,8(sp)
    80001f40:	03010413          	addi	s0,sp,48
    80001f44:	00050913          	mv	s2,a0
    80001f48:	00058993          	mv	s3,a1
    _thread * t = new _thread(body,arg);
    80001f4c:	04800513          	li	a0,72
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	d34080e7          	jalr	-716(ra) # 80001c84 <_Znwm>
    80001f58:	00050493          	mv	s1,a0
            finished(false)
    80001f5c:	01353423          	sd	s3,8(a0)
    80001f60:	00052823          	sw	zero,16(a0)
    80001f64:	03253023          	sd	s2,32(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001f68:	00090a63          	beqz	s2,80001f7c <_ZN7_thread19createCouroutineCPPEPFvPvES0_+0x54>
    80001f6c:	00008537          	lui	a0,0x8
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	d3c080e7          	jalr	-708(ra) # 80001cac <_Znam>
    80001f78:	0080006f          	j	80001f80 <_ZN7_thread19createCouroutineCPPEPFvPvES0_+0x58>
    80001f7c:	00000513          	li	a0,0
            finished(false)
    80001f80:	02a4b423          	sd	a0,40(s1)
    80001f84:	00000797          	auipc	a5,0x0
    80001f88:	da078793          	addi	a5,a5,-608 # 80001d24 <_ZN7_thread13threadWrapperEv>
    80001f8c:	02f4b823          	sd	a5,48(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f90:	06050063          	beqz	a0,80001ff0 <_ZN7_thread19createCouroutineCPPEPFvPvES0_+0xc8>
    80001f94:	000087b7          	lui	a5,0x8
    80001f98:	00f50533          	add	a0,a0,a5
            finished(false)
    80001f9c:	02a4bc23          	sd	a0,56(s1)
    80001fa0:	04048023          	sb	zero,64(s1)
        blk = false;
    80001fa4:	040480a3          	sb	zero,65(s1)
        this->id = ID++;
    80001fa8:	00009717          	auipc	a4,0x9
    80001fac:	51070713          	addi	a4,a4,1296 # 8000b4b8 <_ZN7_thread7runningE>
    80001fb0:	00873783          	ld	a5,8(a4)
    80001fb4:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80001fb8:	00d73423          	sd	a3,8(a4)
    80001fbc:	00f4bc23          	sd	a5,24(s1)
    t->wrapington = arg;
    80001fc0:	0134b023          	sd	s3,0(s1)
    t->rasetter();
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	f3c080e7          	jalr	-196(ra) # 80001f04 <_ZN7_thread8rasetterEv>
    return t;
}
    80001fd0:	00048513          	mv	a0,s1
    80001fd4:	02813083          	ld	ra,40(sp)
    80001fd8:	02013403          	ld	s0,32(sp)
    80001fdc:	01813483          	ld	s1,24(sp)
    80001fe0:	01013903          	ld	s2,16(sp)
    80001fe4:	00813983          	ld	s3,8(sp)
    80001fe8:	03010113          	addi	sp,sp,48
    80001fec:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001ff0:	00000513          	li	a0,0
    80001ff4:	fa9ff06f          	j	80001f9c <_ZN7_thread19createCouroutineCPPEPFvPvES0_+0x74>
    80001ff8:	00050913          	mv	s2,a0
    _thread * t = new _thread(body,arg);
    80001ffc:	00048513          	mv	a0,s1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	cd4080e7          	jalr	-812(ra) # 80001cd4 <_ZdlPv>
    80002008:	00090513          	mv	a0,s2
    8000200c:	0000a097          	auipc	ra,0xa
    80002010:	5fc080e7          	jalr	1532(ra) # 8000c608 <_Unwind_Resume>

0000000080002014 <_ZN7_thread4joinEPPS_>:


void _thread ::join(thread_t* handle) {
    80002014:	fe010113          	addi	sp,sp,-32
    80002018:	00113c23          	sd	ra,24(sp)
    8000201c:	00813823          	sd	s0,16(sp)
    80002020:	00913423          	sd	s1,8(sp)
    80002024:	02010413          	addi	s0,sp,32
    80002028:	00050493          	mv	s1,a0
    while(!(*handle)->isFinished()){
    8000202c:	0004b783          	ld	a5,0(s1)
    bool isFinished() const { return finished; }
    80002030:	0407c783          	lbu	a5,64(a5)
    80002034:	00079863          	bnez	a5,80002044 <_ZN7_thread4joinEPPS_+0x30>
        _thread :: dispatch();
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	e24080e7          	jalr	-476(ra) # 80001e5c <_ZN7_thread8dispatchEv>
    while(!(*handle)->isFinished()){
    80002040:	fedff06f          	j	8000202c <_ZN7_thread4joinEPPS_+0x18>
    }


    80002044:	01813083          	ld	ra,24(sp)
    80002048:	01013403          	ld	s0,16(sp)
    8000204c:	00813483          	ld	s1,8(sp)
    80002050:	02010113          	addi	sp,sp,32
    80002054:	00008067          	ret

0000000080002058 <_ZN6Thread10thrwrapperEPv>:
    //kasnije sa wrapperom nesto sredi
    myHandle = nullptr;
    this->body = Thread :: thrwrapper;
    this->arg = (void*)this;
}
void Thread ::thrwrapper(void * thread) {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80002068:	00053783          	ld	a5,0(a0) # 8000 <_entry-0x7fff8000>
    8000206c:	0107b783          	ld	a5,16(a5)
    80002070:	000780e7          	jalr	a5
}
    80002074:	00813083          	ld	ra,8(sp)
    80002078:	00013403          	ld	s0,0(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN6ThreadD1Ev>:
Thread :: ~Thread(){
    80002084:	00009797          	auipc	a5,0x9
    80002088:	1ec78793          	addi	a5,a5,492 # 8000b270 <_ZTV6Thread+0x10>
    8000208c:	00f53023          	sd	a5,0(a0)
    delete &myHandle;
    80002090:	00850513          	addi	a0,a0,8
    80002094:	02050663          	beqz	a0,800020c0 <_ZN6ThreadD1Ev+0x3c>
Thread :: ~Thread(){
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00113423          	sd	ra,8(sp)
    800020a0:	00813023          	sd	s0,0(sp)
    800020a4:	01010413          	addi	s0,sp,16
    delete &myHandle;
    800020a8:	00000097          	auipc	ra,0x0
    800020ac:	c2c080e7          	jalr	-980(ra) # 80001cd4 <_ZdlPv>
}
    800020b0:	00813083          	ld	ra,8(sp)
    800020b4:	00013403          	ld	s0,0(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret
    800020c0:	00008067          	ret

00000000800020c4 <_ZN6ThreadD0Ev>:
Thread :: ~Thread(){
    800020c4:	fe010113          	addi	sp,sp,-32
    800020c8:	00113c23          	sd	ra,24(sp)
    800020cc:	00813823          	sd	s0,16(sp)
    800020d0:	00913423          	sd	s1,8(sp)
    800020d4:	02010413          	addi	s0,sp,32
    800020d8:	00050493          	mv	s1,a0
}
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	fa8080e7          	jalr	-88(ra) # 80002084 <_ZN6ThreadD1Ev>
    800020e4:	00048513          	mv	a0,s1
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	bec080e7          	jalr	-1044(ra) # 80001cd4 <_ZdlPv>
    800020f0:	01813083          	ld	ra,24(sp)
    800020f4:	01013403          	ld	s0,16(sp)
    800020f8:	00813483          	ld	s1,8(sp)
    800020fc:	02010113          	addi	sp,sp,32
    80002100:	00008067          	ret

0000000080002104 <_ZN9SemaphoreD1Ev>:
}

Semaphore ::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}
Semaphore ::~Semaphore() {
    80002104:	fe010113          	addi	sp,sp,-32
    80002108:	00113c23          	sd	ra,24(sp)
    8000210c:	00813823          	sd	s0,16(sp)
    80002110:	00913423          	sd	s1,8(sp)
    80002114:	02010413          	addi	s0,sp,32
    80002118:	00050493          	mv	s1,a0
    8000211c:	00009797          	auipc	a5,0x9
    80002120:	17c78793          	addi	a5,a5,380 # 8000b298 <_ZTV9Semaphore+0x10>
    80002124:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002128:	00853503          	ld	a0,8(a0)
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	230080e7          	jalr	560(ra) # 8000135c <_Z9sem_closeP4_sem>
    delete &myHandle;
    80002134:	00848513          	addi	a0,s1,8
    80002138:	00050663          	beqz	a0,80002144 <_ZN9SemaphoreD1Ev+0x40>
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	b98080e7          	jalr	-1128(ra) # 80001cd4 <_ZdlPv>

}
    80002144:	01813083          	ld	ra,24(sp)
    80002148:	01013403          	ld	s0,16(sp)
    8000214c:	00813483          	ld	s1,8(sp)
    80002150:	02010113          	addi	sp,sp,32
    80002154:	00008067          	ret

0000000080002158 <_ZN9SemaphoreD0Ev>:
Semaphore ::~Semaphore() {
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	02010413          	addi	s0,sp,32
    8000216c:	00050493          	mv	s1,a0
}
    80002170:	00000097          	auipc	ra,0x0
    80002174:	f94080e7          	jalr	-108(ra) # 80002104 <_ZN9SemaphoreD1Ev>
    80002178:	00048513          	mv	a0,s1
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	b58080e7          	jalr	-1192(ra) # 80001cd4 <_ZdlPv>
    80002184:	01813083          	ld	ra,24(sp)
    80002188:	01013403          	ld	s0,16(sp)
    8000218c:	00813483          	ld	s1,8(sp)
    80002190:	02010113          	addi	sp,sp,32
    80002194:	00008067          	ret

0000000080002198 <_ZN6ThreadC1EPFvPvES0_>:
Thread ::Thread(void (*body)(void *), void *arg) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    800021a4:	00009797          	auipc	a5,0x9
    800021a8:	0cc78793          	addi	a5,a5,204 # 8000b270 <_ZTV6Thread+0x10>
    800021ac:	00f53023          	sd	a5,0(a0)
    this->arg = arg;
    800021b0:	00c53c23          	sd	a2,24(a0)
    this->body = body;
    800021b4:	00b53823          	sd	a1,16(a0)
    this->myHandle = nullptr;
    800021b8:	00053423          	sd	zero,8(a0)
}
    800021bc:	00813403          	ld	s0,8(sp)
    800021c0:	01010113          	addi	sp,sp,16
    800021c4:	00008067          	ret

00000000800021c8 <_ZN6Thread5startEv>:
int Thread::start() {
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00113423          	sd	ra,8(sp)
    800021d0:	00813023          	sd	s0,0(sp)
    800021d4:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,this->body,this->arg);
    800021d8:	01853603          	ld	a2,24(a0)
    800021dc:	01053583          	ld	a1,16(a0)
    800021e0:	00850513          	addi	a0,a0,8
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	0bc080e7          	jalr	188(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800021ec:	00000513          	li	a0,0
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret

0000000080002200 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002200:	ff010113          	addi	sp,sp,-16
    80002204:	00113423          	sd	ra,8(sp)
    80002208:	00813023          	sd	s0,0(sp)
    8000220c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	128080e7          	jalr	296(ra) # 80001338 <_Z15thread_dispatchv>
}
    80002218:	00813083          	ld	ra,8(sp)
    8000221c:	00013403          	ld	s0,0(sp)
    80002220:	01010113          	addi	sp,sp,16
    80002224:	00008067          	ret

0000000080002228 <_ZN6ThreadC1Ev>:
Thread ::Thread() {
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00813423          	sd	s0,8(sp)
    80002230:	01010413          	addi	s0,sp,16
    80002234:	00009797          	auipc	a5,0x9
    80002238:	03c78793          	addi	a5,a5,60 # 8000b270 <_ZTV6Thread+0x10>
    8000223c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002240:	00053423          	sd	zero,8(a0)
    this->body = Thread :: thrwrapper;
    80002244:	00000797          	auipc	a5,0x0
    80002248:	e1478793          	addi	a5,a5,-492 # 80002058 <_ZN6Thread10thrwrapperEPv>
    8000224c:	00f53823          	sd	a5,16(a0)
    this->arg = (void*)this;
    80002250:	00a53c23          	sd	a0,24(a0)
}
    80002254:	00813403          	ld	s0,8(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <_ZN6Thread4joinEv>:
void Thread ::join() {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00113423          	sd	ra,8(sp)
    80002268:	00813023          	sd	s0,0(sp)
    8000226c:	01010413          	addi	s0,sp,16
    thread_join(&myHandle);
    80002270:	00850513          	addi	a0,a0,8
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	280080e7          	jalr	640(ra) # 800014f4 <_Z11thread_joinPP7_thread>
}
    8000227c:	00813083          	ld	ra,8(sp)
    80002280:	00013403          	ld	s0,0(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret

000000008000228c <_ZN9SemaphoreC1Ej>:
Semaphore ::Semaphore(unsigned int init) {
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00113423          	sd	ra,8(sp)
    80002294:	00813023          	sd	s0,0(sp)
    80002298:	01010413          	addi	s0,sp,16
    8000229c:	00009797          	auipc	a5,0x9
    800022a0:	ffc78793          	addi	a5,a5,-4 # 8000b298 <_ZTV9Semaphore+0x10>
    800022a4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    800022a8:	00850513          	addi	a0,a0,8
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	058080e7          	jalr	88(ra) # 80001304 <_Z8sem_openPP4_semj>
}
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN9Semaphore4waitEv>:
int Semaphore ::wait() {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00113423          	sd	ra,8(sp)
    800022cc:	00813023          	sd	s0,0(sp)
    800022d0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800022d4:	00853503          	ld	a0,8(a0)
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	0b4080e7          	jalr	180(ra) # 8000138c <_Z8sem_waitP4_sem>
}
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN9Semaphore6signalEv>:

int Semaphore ::signal() {
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00113423          	sd	ra,8(sp)
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002300:	00853503          	ld	a0,8(a0)
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	0b8080e7          	jalr	184(ra) # 800013bc <_Z10sem_signalP4_sem>
}
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZN7Console4getcEv>:

char Console ::getc() {
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00113423          	sd	ra,8(sp)
    80002324:	00813023          	sd	s0,0(sp)
    80002328:	01010413          	addi	s0,sp,16
    return ::getc();
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	0c0080e7          	jalr	192(ra) # 800013ec <_Z4getcv>
}
    80002334:	00813083          	ld	ra,8(sp)
    80002338:	00013403          	ld	s0,0(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZN7Console4putcEc>:

void Console ::putc(char c) {
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00113423          	sd	ra,8(sp)
    8000234c:	00813023          	sd	s0,0(sp)
    80002350:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	0cc080e7          	jalr	204(ra) # 80001420 <_Z4putcc>
    8000235c:	00813083          	ld	ra,8(sp)
    80002360:	00013403          	ld	s0,0(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <_ZN6Thread3runEv>:
    static void thrwrapper(void*);
    //static int sleep()
    //static void threadWrapper(void*)
protected:
    Thread();
    virtual void run(){}
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00813423          	sd	s0,8(sp)
    80002374:	01010413          	addi	s0,sp,16
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN5Riscv4ModeEm>:
#include "../lib/console.h"
typedef _thread* thread_t;
typedef _sem* sem_t;
uint64 Riscv:: mode = 0;
//upamti ako je mode = 1 to je user mode i onda se ne izvrsava dobro
void Riscv ::Mode(uint64 x) {
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00813423          	sd	s0,8(sp)
    8000238c:	01010413          	addi	s0,sp,16
    mode = x;
    80002390:	00009797          	auipc	a5,0x9
    80002394:	12a7bc23          	sd	a0,312(a5) # 8000b4c8 <_ZN5Riscv4modeE>
}
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_ZN5Riscv5RezimEv>:

void Riscv::Rezim()
{
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00813423          	sd	s0,8(sp)
    800023ac:	01010413          	addi	s0,sp,16
    switch(mode){
    800023b0:	00009797          	auipc	a5,0x9
    800023b4:	1187b783          	ld	a5,280(a5) # 8000b4c8 <_ZN5Riscv4modeE>
    800023b8:	00100713          	li	a4,1
    800023bc:	02e78063          	beq	a5,a4,800023dc <_ZN5Riscv5RezimEv+0x38>
    800023c0:	00200713          	li	a4,2
    800023c4:	02e78263          	beq	a5,a4,800023e8 <_ZN5Riscv5RezimEv+0x44>
        case 2:
            ms_sstatus(Riscv::SSTATUS_SPP);
            break;
    }

    __asm__ volatile ("csrw sepc, ra");
    800023c8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800023cc:	10200073          	sret
}
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800023dc:	10000793          	li	a5,256
    800023e0:	1007b073          	csrc	sstatus,a5
}
    800023e4:	fe5ff06f          	j	800023c8 <_ZN5Riscv5RezimEv+0x24>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800023e8:	10000793          	li	a5,256
    800023ec:	1007a073          	csrs	sstatus,a5
}
    800023f0:	fd9ff06f          	j	800023c8 <_ZN5Riscv5RezimEv+0x24>

00000000800023f4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv ::  handleSupervisorTrap(){
    800023f4:	f9010113          	addi	sp,sp,-112
    800023f8:	06113423          	sd	ra,104(sp)
    800023fc:	06813023          	sd	s0,96(sp)
    80002400:	04913c23          	sd	s1,88(sp)
    80002404:	05213823          	sd	s2,80(sp)
    80002408:	05313423          	sd	s3,72(sp)
    8000240c:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002410:	142027f3          	csrr	a5,scause
    80002414:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002418:	fb043703          	ld	a4,-80(s0)

    uint64 scause = r_scause();
    uint64 volatile r;
    __asm__ volatile ("ld %0, 10 * 8(fp)" : "=r"(r));
    8000241c:	05043783          	ld	a5,80(s0)
    80002420:	fcf43423          	sd	a5,-56(s0)

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002424:	ff870693          	addi	a3,a4,-8
    80002428:	00100793          	li	a5,1
    8000242c:	02d7f863          	bgeu	a5,a3,8000245c <_ZN5Riscv20handleSupervisorTrapEv+0x68>
        /*uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        w_sstatus(sstatus);
        w_sepc(sepc);*/

    }else if(scause == 0x8000000000000009L){
    80002430:	fff00793          	li	a5,-1
    80002434:	03f79793          	slli	a5,a5,0x3f
    80002438:	00978793          	addi	a5,a5,9
    8000243c:	3af70463          	beq	a4,a5,800027e4 <_ZN5Riscv20handleSupervisorTrapEv+0x3f0>
        console_handler();
    }else if(scause == 0x8000000000000001L){
    80002440:	fff00793          	li	a5,-1
    80002444:	03f79793          	slli	a5,a5,0x3f
    80002448:	00178793          	addi	a5,a5,1
    8000244c:	1af71a63          	bne	a4,a5,80002600 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002450:	00200793          	li	a5,2
    80002454:	1447b073          	csrc	sip,a5
}
    80002458:	1a80006f          	j	80002600 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000245c:	141027f3          	csrr	a5,sepc
    80002460:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80002464:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002468:	00478793          	addi	a5,a5,4
    8000246c:	faf43023          	sd	a5,-96(s0)

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002470:	100027f3          	csrr	a5,sstatus
    80002474:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002478:	fb843783          	ld	a5,-72(s0)
        uint64 volatile sstatus = r_sstatus();
    8000247c:	faf43423          	sd	a5,-88(s0)
        if(r == 0x01){
    80002480:	fc843703          	ld	a4,-56(s0)
    80002484:	00100793          	li	a5,1
    80002488:	0cf70a63          	beq	a4,a5,8000255c <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        }else if(r == 0x02){
    8000248c:	fc843703          	ld	a4,-56(s0)
    80002490:	00200793          	li	a5,2
    80002494:	0ef70863          	beq	a4,a5,80002584 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
        }else if(r == 0x11){
    80002498:	fc843703          	ld	a4,-56(s0)
    8000249c:	01100793          	li	a5,17
    800024a0:	10f70663          	beq	a4,a5,800025ac <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
        }else if(r == 0x12){
    800024a4:	fc843703          	ld	a4,-56(s0)
    800024a8:	01200793          	li	a5,18
    800024ac:	18f70863          	beq	a4,a5,8000263c <_ZN5Riscv20handleSupervisorTrapEv+0x248>
        }else if(r == 0x13){
    800024b0:	fc843703          	ld	a4,-56(s0)
    800024b4:	01300793          	li	a5,19
    800024b8:	1af70e63          	beq	a4,a5,80002674 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
        }else if(r == 0x21){
    800024bc:	fc843703          	ld	a4,-56(s0)
    800024c0:	02100793          	li	a5,33
    800024c4:	1cf70663          	beq	a4,a5,80002690 <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
        }else if(r == 0x22){
    800024c8:	fc843703          	ld	a4,-56(s0)
    800024cc:	02200793          	li	a5,34
    800024d0:	20f70063          	beq	a4,a5,800026d0 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
        }else if(r == 0x23){
    800024d4:	fc843703          	ld	a4,-56(s0)
    800024d8:	02300793          	li	a5,35
    800024dc:	22f70463          	beq	a4,a5,80002704 <_ZN5Riscv20handleSupervisorTrapEv+0x310>
        }else if(r == 0x24){
    800024e0:	fc843703          	ld	a4,-56(s0)
    800024e4:	02400793          	li	a5,36
    800024e8:	22f70a63          	beq	a4,a5,8000271c <_ZN5Riscv20handleSupervisorTrapEv+0x328>
        }else if(r == 0x31){
    800024ec:	fc843703          	ld	a4,-56(s0)
    800024f0:	03100793          	li	a5,49
    800024f4:	0ef70e63          	beq	a4,a5,800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        }else if(r == 0x41){
    800024f8:	fc843703          	ld	a4,-56(s0)
    800024fc:	04100793          	li	a5,65
    80002500:	24f70863          	beq	a4,a5,80002750 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
        }else if(r == 0x42){
    80002504:	fc843703          	ld	a4,-56(s0)
    80002508:	04200793          	li	a5,66
    8000250c:	24f70c63          	beq	a4,a5,80002764 <_ZN5Riscv20handleSupervisorTrapEv+0x370>
        }else if(r == 0x43){
    80002510:	fc843703          	ld	a4,-56(s0)
    80002514:	04300793          	li	a5,67
    80002518:	26f70063          	beq	a4,a5,80002778 <_ZN5Riscv20handleSupervisorTrapEv+0x384>
        }else if(r == 0x44){
    8000251c:	fc843703          	ld	a4,-56(s0)
    80002520:	04400793          	li	a5,68
    80002524:	26f70e63          	beq	a4,a5,800027a0 <_ZN5Riscv20handleSupervisorTrapEv+0x3ac>
        }else if(r == 0x70){
    80002528:	fc843703          	ld	a4,-56(s0)
    8000252c:	07000793          	li	a5,112
    80002530:	26f70e63          	beq	a4,a5,800027ac <_ZN5Riscv20handleSupervisorTrapEv+0x3b8>
        }else if(r == 0x71){
    80002534:	fc843703          	ld	a4,-56(s0)
    80002538:	07100793          	li	a5,113
    8000253c:	28f70a63          	beq	a4,a5,800027d0 <_ZN5Riscv20handleSupervisorTrapEv+0x3dc>
        }else if(r == 0x66){
    80002540:	fc843703          	ld	a4,-56(s0)
    80002544:	06600793          	li	a5,102
    80002548:	0af71463          	bne	a4,a5,800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile("mv %0,a1" : "=r"(handle));
    8000254c:	00058513          	mv	a0,a1
            _thread ::join(handle);
    80002550:	00000097          	auipc	ra,0x0
    80002554:	ac4080e7          	jalr	-1340(ra) # 80002014 <_ZN7_thread4joinEPPS_>
    80002558:	0980006f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(arg));
    8000255c:	05843483          	ld	s1,88(s0)
            MemAlloc mem = MemAlloc :: getInstance();
    80002560:	00001097          	auipc	ra,0x1
    80002564:	a10080e7          	jalr	-1520(ra) # 80002f70 <_ZN8MemAlloc11getInstanceEv>
            void* b = mem.malloc(arg);
    80002568:	00048593          	mv	a1,s1
    8000256c:	f9840513          	addi	a0,s0,-104
    80002570:	00001097          	auipc	ra,0x1
    80002574:	a5c080e7          	jalr	-1444(ra) # 80002fcc <_ZN8MemAlloc6mallocEm>
            __asm__ volatile("mv a0, %0" : : "r"(b));
    80002578:	00050513          	mv	a0,a0
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    8000257c:	04a43823          	sd	a0,80(s0)
    80002580:	0700006f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(arg));
    80002584:	05843483          	ld	s1,88(s0)
            MemAlloc mem = MemAlloc :: getInstance();
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	9e8080e7          	jalr	-1560(ra) # 80002f70 <_ZN8MemAlloc11getInstanceEv>
            int b =mem.freemem(arg);
    80002590:	00048593          	mv	a1,s1
    80002594:	f9840513          	addi	a0,s0,-104
    80002598:	00001097          	auipc	ra,0x1
    8000259c:	b90080e7          	jalr	-1136(ra) # 80003128 <_ZN8MemAlloc7freememEPv>
            __asm__ volatile("mv a0, %0" : : "r"(b));
    800025a0:	00050513          	mv	a0,a0
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    800025a4:	04a43823          	sd	a0,80(s0)
    800025a8:	0480006f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(t));
    800025ac:	05843483          	ld	s1,88(s0)
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(start_routine));
    800025b0:	06043903          	ld	s2,96(s0)
            __asm__ volatile ("ld %0, 13 * 8(fp)" : "=r"(arg));
    800025b4:	06843983          	ld	s3,104(s0)
            if(_thread :: running == nullptr){
    800025b8:	00009797          	auipc	a5,0x9
    800025bc:	e907b783          	ld	a5,-368(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    800025c0:	0007b783          	ld	a5,0(a5)
    800025c4:	04078c63          	beqz	a5,8000261c <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            *t = _thread::createCoroutine(start_routine,arg);
    800025c8:	00098593          	mv	a1,s3
    800025cc:	00090513          	mv	a0,s2
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	7b0080e7          	jalr	1968(ra) # 80001d80 <_ZN7_thread15createCoroutineEPFvPvES0_>
    800025d8:	00a4b023          	sd	a0,0(s1)
            Scheduler :: put(*t);
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	500080e7          	jalr	1280(ra) # 80002adc <_ZN9Scheduler3putEP7_thread>
            __asm__ volatile("mv a0, %0" : : "r"(b));
    800025e4:	00000793          	li	a5,0
    800025e8:	00078513          	mv	a0,a5
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    800025ec:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    800025f0:	fa843783          	ld	a5,-88(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800025f4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800025f8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800025fc:	14179073          	csrw	sepc,a5

    }



    80002600:	06813083          	ld	ra,104(sp)
    80002604:	06013403          	ld	s0,96(sp)
    80002608:	05813483          	ld	s1,88(sp)
    8000260c:	05013903          	ld	s2,80(sp)
    80002610:	04813983          	ld	s3,72(sp)
    80002614:	07010113          	addi	sp,sp,112
    80002618:	00008067          	ret
                _thread :: running = _thread ::createCoroutine(nullptr, nullptr);
    8000261c:	00000593          	li	a1,0
    80002620:	00000513          	li	a0,0
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	75c080e7          	jalr	1884(ra) # 80001d80 <_ZN7_thread15createCoroutineEPFvPvES0_>
    8000262c:	00009797          	auipc	a5,0x9
    80002630:	e1c7b783          	ld	a5,-484(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002634:	00a7b023          	sd	a0,0(a5)
    80002638:	f91ff06f          	j	800025c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            if(_thread :: running == nullptr)b = -1;
    8000263c:	00009797          	auipc	a5,0x9
    80002640:	e0c7b783          	ld	a5,-500(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002644:	0007b783          	ld	a5,0(a5)
    80002648:	02078263          	beqz	a5,8000266c <_ZN5Riscv20handleSupervisorTrapEv+0x278>
    void setFinished(bool value) { finished = value; }
    8000264c:	00100713          	li	a4,1
    80002650:	04e78023          	sb	a4,64(a5)
                _thread :: dispatch();
    80002654:	00000097          	auipc	ra,0x0
    80002658:	808080e7          	jalr	-2040(ra) # 80001e5c <_ZN7_thread8dispatchEv>
                b = 0;
    8000265c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r"(b));
    80002660:	00078513          	mv	a0,a5
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    80002664:	04a43823          	sd	a0,80(s0)
    80002668:	f89ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            if(_thread :: running == nullptr)b = -1;
    8000266c:	fff00793          	li	a5,-1
    80002670:	ff1ff06f          	j	80002660 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
            _thread :: dispatch();
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	7e8080e7          	jalr	2024(ra) # 80001e5c <_ZN7_thread8dispatchEv>
            w_sstatus(sstatus);
    8000267c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002680:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002684:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002688:	14179073          	csrw	sepc,a5
}
    8000268c:	f65ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
    80002690:	05843483          	ld	s1,88(s0)
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(n));
    80002694:	06043903          	ld	s2,96(s0)
            *s = new _sem(n);
    80002698:	02800513          	li	a0,40
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	5e8080e7          	jalr	1512(ra) # 80001c84 <_Znwm>
    List<_thread> queue;
    int status;//pokazuje da li je semafor vec gasen to jest freeSem ili ne
public:
    static _sem* createSem(int n);

    _sem(int b): value(b), status(1) {}
    800026a4:	01252023          	sw	s2,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800026a8:	00053423          	sd	zero,8(a0)
    800026ac:	00053823          	sd	zero,16(a0)
    800026b0:	00100793          	li	a5,1
    800026b4:	00f52c23          	sw	a5,24(a0)
    800026b8:	02053023          	sd	zero,32(a0)
    800026bc:	00a4b023          	sd	a0,0(s1)
            __asm__ volatile("mv a0, %0" : : "r"(b));
    800026c0:	00000793          	li	a5,0
    800026c4:	00078513          	mv	a0,a5
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    800026c8:	04a43823          	sd	a0,80(s0)
    800026cc:	f25ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
    800026d0:	05843483          	ld	s1,88(s0)
            _sem ::freeSem(s);
    800026d4:	00048513          	mv	a0,s1
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	2b4080e7          	jalr	692(ra) # 8000298c <_ZN4_sem7freeSemEPS_>
            MemAlloc mem = MemAlloc:: getInstance();
    800026e0:	00001097          	auipc	ra,0x1
    800026e4:	890080e7          	jalr	-1904(ra) # 80002f70 <_ZN8MemAlloc11getInstanceEv>
            int b = mem.freemem(s);
    800026e8:	00048593          	mv	a1,s1
    800026ec:	f9840513          	addi	a0,s0,-104
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	a38080e7          	jalr	-1480(ra) # 80003128 <_ZN8MemAlloc7freememEPv>
            __asm__ volatile("mv a0, %0" : : "r"(b));
    800026f8:	00050513          	mv	a0,a0
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    800026fc:	04a43823          	sd	a0,80(s0)
    80002700:	ef1ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
    80002704:	05843503          	ld	a0,88(s0)
            int b =s->wait();
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	23c080e7          	jalr	572(ra) # 80002944 <_ZN4_sem4waitEv>
            __asm__ volatile("mv a0, %0" : : "r"(b));
    80002710:	00050513          	mv	a0,a0
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    80002714:	04a43823          	sd	a0,80(s0)
    80002718:	ed9ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
    8000271c:	05843503          	ld	a0,88(s0)
    static int freeSem(_sem* hndl);

    int wait();

    int signal(){
        if(++value <= 0 )deblock();
    80002720:	00052783          	lw	a5,0(a0)
    80002724:	0017879b          	addiw	a5,a5,1
    80002728:	0007871b          	sext.w	a4,a5
    8000272c:	00f52023          	sw	a5,0(a0)
    80002730:	00e05a63          	blez	a4,80002744 <_ZN5Riscv20handleSupervisorTrapEv+0x350>
            __asm__ volatile("mv a0, %0" : : "r"(b));
    80002734:	00100793          	li	a5,1
    80002738:	00078513          	mv	a0,a5
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    8000273c:	04a43823          	sd	a0,80(s0)
    80002740:	eb1ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80002744:	00000097          	auipc	ra,0x0
    80002748:	0ac080e7          	jalr	172(ra) # 800027f0 <_ZN4_sem7deblockEv>
    8000274c:	fe9ff06f          	j	80002734 <_ZN5Riscv20handleSupervisorTrapEv+0x340>
            char a = __getc();
    80002750:	00006097          	auipc	ra,0x6
    80002754:	8d8080e7          	jalr	-1832(ra) # 80008028 <__getc>
            __asm__ volatile("mv a0, %0" : : "r"(a));
    80002758:	00050513          	mv	a0,a0
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    8000275c:	04a43823          	sd	a0,80(s0)
    80002760:	e91ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(s));
    80002764:	05843503          	ld	a0,88(s0)
            __putc(s);
    80002768:	0ff57513          	andi	a0,a0,255
    8000276c:	00006097          	auipc	ra,0x6
    80002770:	880080e7          	jalr	-1920(ra) # 80007fec <__putc>
    80002774:	e7dff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(t));
    80002778:	05843483          	ld	s1,88(s0)
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(start_routine));
    8000277c:	06043503          	ld	a0,96(s0)
            __asm__ volatile ("ld %0, 13 * 8(fp)" : "=r"(arg));
    80002780:	06843583          	ld	a1,104(s0)
            *t = _thread ::createCouroutineCPP(start_routine,arg);
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	7a4080e7          	jalr	1956(ra) # 80001f28 <_ZN7_thread19createCouroutineCPPEPFvPvES0_>
    8000278c:	00a4b023          	sd	a0,0(s1)
            __asm__ volatile("mv a0, %0" : : "r"(b));
    80002790:	00000793          	li	a5,0
    80002794:	00078513          	mv	a0,a5
            __asm__ volatile ("sd a0, 10 * 8(fp)");
    80002798:	04a43823          	sd	a0,80(s0)
    8000279c:	e55ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r"(t));
    800027a0:	05843783          	ld	a5,88(s0)
            __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r"(start_routine));
    800027a4:	06043783          	ld	a5,96(s0)
    800027a8:	e49ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            w_sstatus(sstatus);
    800027ac:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800027b0:	10079073          	csrw	sstatus,a5
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800027b4:	10000793          	li	a5,256
    800027b8:	1007b073          	csrc	sstatus,a5
            w_sepc(sepc);
    800027bc:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800027c0:	14179073          	csrw	sepc,a5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800027c4:	00200793          	li	a5,2
    800027c8:	1447b073          	csrc	sip,a5
            return;
    800027cc:	e35ff06f          	j	80002600 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800027d0:	10000793          	li	a5,256
    800027d4:	1007a073          	csrs	sstatus,a5
            __asm__ volatile ("csrw sepc, ra");
    800027d8:	14109073          	csrw	sepc,ra
            __asm__ volatile ("sret");
    800027dc:	10200073          	sret
    800027e0:	e11ff06f          	j	800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        console_handler();
    800027e4:	00006097          	auipc	ra,0x6
    800027e8:	87c080e7          	jalr	-1924(ra) # 80008060 <console_handler>
    800027ec:	e15ff06f          	j	80002600 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>

00000000800027f0 <_ZN4_sem7deblockEv>:
#include "../h/_sem.hpp"
#include "../h/syscall_c.h"
#include "../h/printing.hpp"


void _sem:: deblock(){
    800027f0:	fe010113          	addi	sp,sp,-32
    800027f4:	00113c23          	sd	ra,24(sp)
    800027f8:	00813823          	sd	s0,16(sp)
    800027fc:	00913423          	sd	s1,8(sp)
    80002800:	02010413          	addi	s0,sp,32
    80002804:	00050793          	mv	a5,a0
    // Deblocking:
    blockedthrd--;
    80002808:	02053703          	ld	a4,32(a0)
    8000280c:	fff70713          	addi	a4,a4,-1
    80002810:	02e53023          	sd	a4,32(a0)
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002814:	00853503          	ld	a0,8(a0)
    80002818:	04050463          	beqz	a0,80002860 <_ZN4_sem7deblockEv+0x70>

        Elem *elem = head;
        head = head->next;
    8000281c:	00853703          	ld	a4,8(a0)
    80002820:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80002824:	02070a63          	beqz	a4,80002858 <_ZN4_sem7deblockEv+0x68>

        T *ret = elem->data;
    80002828:	00053483          	ld	s1,0(a0)
        delete elem;
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	4a8080e7          	jalr	1192(ra) # 80001cd4 <_ZdlPv>
public:

    //novo
    static void join(thread_t* handle);
    bool isblk(){return blk;}
    void setblk(bool val){blk = val;}
    80002834:	040480a3          	sb	zero,65(s1)
    thread_t cur = queue.removeFirst();
    cur->setblk(false);
    Scheduler :: put(cur);
    80002838:	00048513          	mv	a0,s1
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	2a0080e7          	jalr	672(ra) # 80002adc <_ZN9Scheduler3putEP7_thread>
    //printString("Vracen\n");
}
    80002844:	01813083          	ld	ra,24(sp)
    80002848:	01013403          	ld	s0,16(sp)
    8000284c:	00813483          	ld	s1,8(sp)
    80002850:	02010113          	addi	sp,sp,32
    80002854:	00008067          	ret
        if (!head) { tail = 0; }
    80002858:	0007b823          	sd	zero,16(a5)
    8000285c:	fcdff06f          	j	80002828 <_ZN4_sem7deblockEv+0x38>
        if (!head) { return 0; }
    80002860:	00050493          	mv	s1,a0
    80002864:	fd1ff06f          	j	80002834 <_ZN4_sem7deblockEv+0x44>

0000000080002868 <_ZN4_sem5blockEv>:

void _sem:: block(){
    80002868:	fe010113          	addi	sp,sp,-32
    8000286c:	00113c23          	sd	ra,24(sp)
    80002870:	00813823          	sd	s0,16(sp)
    80002874:	00913423          	sd	s1,8(sp)
    80002878:	01213023          	sd	s2,0(sp)
    8000287c:	02010413          	addi	s0,sp,32
    80002880:	00050493          	mv	s1,a0
    blockedthrd++;
    80002884:	02053783          	ld	a5,32(a0)
    80002888:	00178793          	addi	a5,a5,1
    8000288c:	02f53023          	sd	a5,32(a0)
    _thread :: running->setblk(true);
    80002890:	00009797          	auipc	a5,0x9
    80002894:	bb87b783          	ld	a5,-1096(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002898:	0007b903          	ld	s2,0(a5)
    8000289c:	00100793          	li	a5,1
    800028a0:	04f900a3          	sb	a5,65(s2)
        Elem *elem = new Elem(data, 0);
    800028a4:	01000513          	li	a0,16
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	3dc080e7          	jalr	988(ra) # 80001c84 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800028b0:	01253023          	sd	s2,0(a0)
    800028b4:	00053423          	sd	zero,8(a0)
        if (tail)
    800028b8:	0104b783          	ld	a5,16(s1)
    800028bc:	02078663          	beqz	a5,800028e8 <_ZN4_sem5blockEv+0x80>
            tail->next = elem;
    800028c0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800028c4:	00a4b823          	sd	a0,16(s1)
    queue.addLast(_thread ::running);
    _thread :: yield();
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	604080e7          	jalr	1540(ra) # 80001ecc <_ZN7_thread5yieldEv>
    _thread :: running = Scheduler::get();

    _thread::contextSwitch(&old->context, &_thread :: running->context);*/


}
    800028d0:	01813083          	ld	ra,24(sp)
    800028d4:	01013403          	ld	s0,16(sp)
    800028d8:	00813483          	ld	s1,8(sp)
    800028dc:	00013903          	ld	s2,0(sp)
    800028e0:	02010113          	addi	sp,sp,32
    800028e4:	00008067          	ret
            head = tail = elem;
    800028e8:	00a4b823          	sd	a0,16(s1)
    800028ec:	00a4b423          	sd	a0,8(s1)
    800028f0:	fd9ff06f          	j	800028c8 <_ZN4_sem5blockEv+0x60>

00000000800028f4 <_ZN4_sem9createSemEi>:

_sem* _sem::createSem(int n) {
    800028f4:	fe010113          	addi	sp,sp,-32
    800028f8:	00113c23          	sd	ra,24(sp)
    800028fc:	00813823          	sd	s0,16(sp)
    80002900:	00913423          	sd	s1,8(sp)
    80002904:	02010413          	addi	s0,sp,32
    80002908:	00050493          	mv	s1,a0
    return new _sem(n);
    8000290c:	02800513          	li	a0,40
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	374080e7          	jalr	884(ra) # 80001c84 <_Znwm>
    _sem(int b): value(b), status(1) {}
    80002918:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    8000291c:	00053423          	sd	zero,8(a0)
    80002920:	00053823          	sd	zero,16(a0)
    80002924:	00100713          	li	a4,1
    80002928:	00e52c23          	sw	a4,24(a0)
    8000292c:	02053023          	sd	zero,32(a0)

}
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	01013403          	ld	s0,16(sp)
    80002938:	00813483          	ld	s1,8(sp)
    8000293c:	02010113          	addi	sp,sp,32
    80002940:	00008067          	ret

0000000080002944 <_ZN4_sem4waitEv>:

int _sem ::wait() {
    if(--value < 0)block();
    80002944:	00052783          	lw	a5,0(a0)
    80002948:	fff7879b          	addiw	a5,a5,-1
    8000294c:	00f52023          	sw	a5,0(a0)
    80002950:	02079713          	slli	a4,a5,0x20
    80002954:	00074663          	bltz	a4,80002960 <_ZN4_sem4waitEv+0x1c>
        return 0;
    }else{
        t->IDWait = 0;
        return -1;
    }*/
}
    80002958:	00100513          	li	a0,1
    8000295c:	00008067          	ret
int _sem ::wait() {
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00113423          	sd	ra,8(sp)
    80002968:	00813023          	sd	s0,0(sp)
    8000296c:	01010413          	addi	s0,sp,16
    if(--value < 0)block();
    80002970:	00000097          	auipc	ra,0x0
    80002974:	ef8080e7          	jalr	-264(ra) # 80002868 <_ZN4_sem5blockEv>
}
    80002978:	00100513          	li	a0,1
    8000297c:	00813083          	ld	ra,8(sp)
    80002980:	00013403          	ld	s0,0(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN4_sem7freeSemEPS_>:
        return 1;
    }

    int val(){return value;}
    int gtStatus(){return status;}
    8000298c:	01852783          	lw	a5,24(a0)

int _sem ::freeSem(_sem* hndl) {
    if(hndl->gtStatus() == 0)return -1;
    80002990:	06078e63          	beqz	a5,80002a0c <_ZN4_sem7freeSemEPS_+0x80>
int _sem ::freeSem(_sem* hndl) {
    80002994:	fd010113          	addi	sp,sp,-48
    80002998:	02113423          	sd	ra,40(sp)
    8000299c:	02813023          	sd	s0,32(sp)
    800029a0:	00913c23          	sd	s1,24(sp)
    800029a4:	01213823          	sd	s2,16(sp)
    800029a8:	01313423          	sd	s3,8(sp)
    800029ac:	03010413          	addi	s0,sp,48
    800029b0:	00050493          	mv	s1,a0



protected:
    void setStatus(int a){ status = a;}
    800029b4:	00052c23          	sw	zero,24(a0)
    hndl->setStatus(0);
    for(uint64 i = 0; i < hndl->blockedthrd;i++){
    800029b8:	00000913          	li	s2,0
    800029bc:	0280006f          	j	800029e4 <_ZN4_sem7freeSemEPS_+0x58>
        if (!head) { tail = 0; }
    800029c0:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    800029c4:	00053983          	ld	s3,0(a0)
        delete elem;
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	30c080e7          	jalr	780(ra) # 80001cd4 <_ZdlPv>
    800029d0:	040980a3          	sb	zero,65(s3)
        thread_t gt = hndl->queue.removeFirst();
        gt->setblk(false);
        Scheduler :: put(gt);
    800029d4:	00098513          	mv	a0,s3
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	104080e7          	jalr	260(ra) # 80002adc <_ZN9Scheduler3putEP7_thread>
    for(uint64 i = 0; i < hndl->blockedthrd;i++){
    800029e0:	00190913          	addi	s2,s2,1
    800029e4:	0204b783          	ld	a5,32(s1)
    800029e8:	02f97663          	bgeu	s2,a5,80002a14 <_ZN4_sem7freeSemEPS_+0x88>
        if (!head) { return 0; }
    800029ec:	0084b503          	ld	a0,8(s1)
    800029f0:	00050a63          	beqz	a0,80002a04 <_ZN4_sem7freeSemEPS_+0x78>
        head = head->next;
    800029f4:	00853783          	ld	a5,8(a0)
    800029f8:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800029fc:	fc0794e3          	bnez	a5,800029c4 <_ZN4_sem7freeSemEPS_+0x38>
    80002a00:	fc1ff06f          	j	800029c0 <_ZN4_sem7freeSemEPS_+0x34>
        if (!head) { return 0; }
    80002a04:	00050993          	mv	s3,a0
    80002a08:	fc9ff06f          	j	800029d0 <_ZN4_sem7freeSemEPS_+0x44>
    if(hndl->gtStatus() == 0)return -1;
    80002a0c:	fff00513          	li	a0,-1
    }
    return 1;
}
    80002a10:	00008067          	ret
    return 1;
    80002a14:	00100513          	li	a0,1
}
    80002a18:	02813083          	ld	ra,40(sp)
    80002a1c:	02013403          	ld	s0,32(sp)
    80002a20:	01813483          	ld	s1,24(sp)
    80002a24:	01013903          	ld	s2,16(sp)
    80002a28:	00813983          	ld	s3,8(sp)
    80002a2c:	03010113          	addi	sp,sp,48
    80002a30:	00008067          	ret

0000000080002a34 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put( thread_t ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00813423          	sd	s0,8(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	00100793          	li	a5,1
    80002a44:	00f50863          	beq	a0,a5,80002a54 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a48:	00813403          	ld	s0,8(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret
    80002a54:	000107b7          	lui	a5,0x10
    80002a58:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a5c:	fef596e3          	bne	a1,a5,80002a48 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002a60:	00009797          	auipc	a5,0x9
    80002a64:	a7078793          	addi	a5,a5,-1424 # 8000b4d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a68:	0007b023          	sd	zero,0(a5)
    80002a6c:	0007b423          	sd	zero,8(a5)
    80002a70:	fd9ff06f          	j	80002a48 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002a74 <_ZN9Scheduler3getEv>:
{
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002a88:	00009517          	auipc	a0,0x9
    80002a8c:	a4853503          	ld	a0,-1464(a0) # 8000b4d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a90:	04050263          	beqz	a0,80002ad4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002a94:	00853783          	ld	a5,8(a0)
    80002a98:	00009717          	auipc	a4,0x9
    80002a9c:	a2f73c23          	sd	a5,-1480(a4) # 8000b4d0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002aa0:	02078463          	beqz	a5,80002ac8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002aa4:	00053483          	ld	s1,0(a0)
        delete elem;
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	22c080e7          	jalr	556(ra) # 80001cd4 <_ZdlPv>
}
    80002ab0:	00048513          	mv	a0,s1
    80002ab4:	01813083          	ld	ra,24(sp)
    80002ab8:	01013403          	ld	s0,16(sp)
    80002abc:	00813483          	ld	s1,8(sp)
    80002ac0:	02010113          	addi	sp,sp,32
    80002ac4:	00008067          	ret
        if (!head) { tail = 0; }
    80002ac8:	00009797          	auipc	a5,0x9
    80002acc:	a007b823          	sd	zero,-1520(a5) # 8000b4d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002ad0:	fd5ff06f          	j	80002aa4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002ad4:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002ad8:	fd9ff06f          	j	80002ab0 <_ZN9Scheduler3getEv+0x3c>

0000000080002adc <_ZN9Scheduler3putEP7_thread>:
{
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00113c23          	sd	ra,24(sp)
    80002ae4:	00813823          	sd	s0,16(sp)
    80002ae8:	00913423          	sd	s1,8(sp)
    80002aec:	02010413          	addi	s0,sp,32
    80002af0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002af4:	01000513          	li	a0,16
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	18c080e7          	jalr	396(ra) # 80001c84 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b00:	00953023          	sd	s1,0(a0)
    80002b04:	00053423          	sd	zero,8(a0)
        if (tail)
    80002b08:	00009797          	auipc	a5,0x9
    80002b0c:	9d07b783          	ld	a5,-1584(a5) # 8000b4d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002b10:	02078263          	beqz	a5,80002b34 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80002b14:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b18:	00009797          	auipc	a5,0x9
    80002b1c:	9ca7b023          	sd	a0,-1600(a5) # 8000b4d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002b20:	01813083          	ld	ra,24(sp)
    80002b24:	01013403          	ld	s0,16(sp)
    80002b28:	00813483          	ld	s1,8(sp)
    80002b2c:	02010113          	addi	sp,sp,32
    80002b30:	00008067          	ret
            head = tail = elem;
    80002b34:	00009797          	auipc	a5,0x9
    80002b38:	99c78793          	addi	a5,a5,-1636 # 8000b4d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002b3c:	00a7b423          	sd	a0,8(a5)
    80002b40:	00a7b023          	sd	a0,0(a5)
    80002b44:	fddff06f          	j	80002b20 <_ZN9Scheduler3putEP7_thread+0x44>

0000000080002b48 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002b48:	ff010113          	addi	sp,sp,-16
    80002b4c:	00113423          	sd	ra,8(sp)
    80002b50:	00813023          	sd	s0,0(sp)
    80002b54:	01010413          	addi	s0,sp,16
    80002b58:	000105b7          	lui	a1,0x10
    80002b5c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b60:	00100513          	li	a0,1
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	ed0080e7          	jalr	-304(ra) # 80002a34 <_Z41__static_initialization_and_destruction_0ii>
    80002b6c:	00813083          	ld	ra,8(sp)
    80002b70:	00013403          	ld	s0,0(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret

0000000080002b7c <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00113c23          	sd	ra,24(sp)
    80002b84:	00813823          	sd	s0,16(sp)
    80002b88:	00913423          	sd	s1,8(sp)
    80002b8c:	01213023          	sd	s2,0(sp)
    80002b90:	02010413          	addi	s0,sp,32
    80002b94:	00050493          	mv	s1,a0
    80002b98:	00058913          	mv	s2,a1
    80002b9c:	0015879b          	addiw	a5,a1,1
    80002ba0:	0007851b          	sext.w	a0,a5
    80002ba4:	00f4a023          	sw	a5,0(s1)
    80002ba8:	0004a823          	sw	zero,16(s1)
    80002bac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002bb0:	00251513          	slli	a0,a0,0x2
    80002bb4:	ffffe097          	auipc	ra,0xffffe
    80002bb8:	690080e7          	jalr	1680(ra) # 80001244 <_Z9mem_allocm>
    80002bbc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002bc0:	00000593          	li	a1,0
    80002bc4:	02048513          	addi	a0,s1,32
    80002bc8:	ffffe097          	auipc	ra,0xffffe
    80002bcc:	73c080e7          	jalr	1852(ra) # 80001304 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002bd0:	00090593          	mv	a1,s2
    80002bd4:	01848513          	addi	a0,s1,24
    80002bd8:	ffffe097          	auipc	ra,0xffffe
    80002bdc:	72c080e7          	jalr	1836(ra) # 80001304 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002be0:	00100593          	li	a1,1
    80002be4:	02848513          	addi	a0,s1,40
    80002be8:	ffffe097          	auipc	ra,0xffffe
    80002bec:	71c080e7          	jalr	1820(ra) # 80001304 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002bf0:	00100593          	li	a1,1
    80002bf4:	03048513          	addi	a0,s1,48
    80002bf8:	ffffe097          	auipc	ra,0xffffe
    80002bfc:	70c080e7          	jalr	1804(ra) # 80001304 <_Z8sem_openPP4_semj>
}
    80002c00:	01813083          	ld	ra,24(sp)
    80002c04:	01013403          	ld	s0,16(sp)
    80002c08:	00813483          	ld	s1,8(sp)
    80002c0c:	00013903          	ld	s2,0(sp)
    80002c10:	02010113          	addi	sp,sp,32
    80002c14:	00008067          	ret

0000000080002c18 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	01213023          	sd	s2,0(sp)
    80002c2c:	02010413          	addi	s0,sp,32
    80002c30:	00050493          	mv	s1,a0
    80002c34:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002c38:	01853503          	ld	a0,24(a0)
    80002c3c:	ffffe097          	auipc	ra,0xffffe
    80002c40:	750080e7          	jalr	1872(ra) # 8000138c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80002c44:	0304b503          	ld	a0,48(s1)
    80002c48:	ffffe097          	auipc	ra,0xffffe
    80002c4c:	744080e7          	jalr	1860(ra) # 8000138c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80002c50:	0084b783          	ld	a5,8(s1)
    80002c54:	0144a703          	lw	a4,20(s1)
    80002c58:	00271713          	slli	a4,a4,0x2
    80002c5c:	00e787b3          	add	a5,a5,a4
    80002c60:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002c64:	0144a783          	lw	a5,20(s1)
    80002c68:	0017879b          	addiw	a5,a5,1
    80002c6c:	0004a703          	lw	a4,0(s1)
    80002c70:	02e7e7bb          	remw	a5,a5,a4
    80002c74:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002c78:	0304b503          	ld	a0,48(s1)
    80002c7c:	ffffe097          	auipc	ra,0xffffe
    80002c80:	740080e7          	jalr	1856(ra) # 800013bc <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002c84:	0204b503          	ld	a0,32(s1)
    80002c88:	ffffe097          	auipc	ra,0xffffe
    80002c8c:	734080e7          	jalr	1844(ra) # 800013bc <_Z10sem_signalP4_sem>

}
    80002c90:	01813083          	ld	ra,24(sp)
    80002c94:	01013403          	ld	s0,16(sp)
    80002c98:	00813483          	ld	s1,8(sp)
    80002c9c:	00013903          	ld	s2,0(sp)
    80002ca0:	02010113          	addi	sp,sp,32
    80002ca4:	00008067          	ret

0000000080002ca8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002ca8:	fe010113          	addi	sp,sp,-32
    80002cac:	00113c23          	sd	ra,24(sp)
    80002cb0:	00813823          	sd	s0,16(sp)
    80002cb4:	00913423          	sd	s1,8(sp)
    80002cb8:	01213023          	sd	s2,0(sp)
    80002cbc:	02010413          	addi	s0,sp,32
    80002cc0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002cc4:	02053503          	ld	a0,32(a0)
    80002cc8:	ffffe097          	auipc	ra,0xffffe
    80002ccc:	6c4080e7          	jalr	1732(ra) # 8000138c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002cd0:	0284b503          	ld	a0,40(s1)
    80002cd4:	ffffe097          	auipc	ra,0xffffe
    80002cd8:	6b8080e7          	jalr	1720(ra) # 8000138c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002cdc:	0084b703          	ld	a4,8(s1)
    80002ce0:	0104a783          	lw	a5,16(s1)
    80002ce4:	00279693          	slli	a3,a5,0x2
    80002ce8:	00d70733          	add	a4,a4,a3
    80002cec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002cf0:	0017879b          	addiw	a5,a5,1
    80002cf4:	0004a703          	lw	a4,0(s1)
    80002cf8:	02e7e7bb          	remw	a5,a5,a4
    80002cfc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002d00:	0284b503          	ld	a0,40(s1)
    80002d04:	ffffe097          	auipc	ra,0xffffe
    80002d08:	6b8080e7          	jalr	1720(ra) # 800013bc <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80002d0c:	0184b503          	ld	a0,24(s1)
    80002d10:	ffffe097          	auipc	ra,0xffffe
    80002d14:	6ac080e7          	jalr	1708(ra) # 800013bc <_Z10sem_signalP4_sem>

    return ret;
}
    80002d18:	00090513          	mv	a0,s2
    80002d1c:	01813083          	ld	ra,24(sp)
    80002d20:	01013403          	ld	s0,16(sp)
    80002d24:	00813483          	ld	s1,8(sp)
    80002d28:	00013903          	ld	s2,0(sp)
    80002d2c:	02010113          	addi	sp,sp,32
    80002d30:	00008067          	ret

0000000080002d34 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00113c23          	sd	ra,24(sp)
    80002d3c:	00813823          	sd	s0,16(sp)
    80002d40:	00913423          	sd	s1,8(sp)
    80002d44:	01213023          	sd	s2,0(sp)
    80002d48:	02010413          	addi	s0,sp,32
    80002d4c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002d50:	02853503          	ld	a0,40(a0)
    80002d54:	ffffe097          	auipc	ra,0xffffe
    80002d58:	638080e7          	jalr	1592(ra) # 8000138c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80002d5c:	0304b503          	ld	a0,48(s1)
    80002d60:	ffffe097          	auipc	ra,0xffffe
    80002d64:	62c080e7          	jalr	1580(ra) # 8000138c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002d68:	0144a783          	lw	a5,20(s1)
    80002d6c:	0104a903          	lw	s2,16(s1)
    80002d70:	0327ce63          	blt	a5,s2,80002dac <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002d74:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002d78:	0304b503          	ld	a0,48(s1)
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	640080e7          	jalr	1600(ra) # 800013bc <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80002d84:	0284b503          	ld	a0,40(s1)
    80002d88:	ffffe097          	auipc	ra,0xffffe
    80002d8c:	634080e7          	jalr	1588(ra) # 800013bc <_Z10sem_signalP4_sem>

    return ret;
}
    80002d90:	00090513          	mv	a0,s2
    80002d94:	01813083          	ld	ra,24(sp)
    80002d98:	01013403          	ld	s0,16(sp)
    80002d9c:	00813483          	ld	s1,8(sp)
    80002da0:	00013903          	ld	s2,0(sp)
    80002da4:	02010113          	addi	sp,sp,32
    80002da8:	00008067          	ret
        ret = cap - head + tail;
    80002dac:	0004a703          	lw	a4,0(s1)
    80002db0:	4127093b          	subw	s2,a4,s2
    80002db4:	00f9093b          	addw	s2,s2,a5
    80002db8:	fc1ff06f          	j	80002d78 <_ZN6Buffer6getCntEv+0x44>

0000000080002dbc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002dbc:	fe010113          	addi	sp,sp,-32
    80002dc0:	00113c23          	sd	ra,24(sp)
    80002dc4:	00813823          	sd	s0,16(sp)
    80002dc8:	00913423          	sd	s1,8(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    80002dd0:	00050493          	mv	s1,a0
    putc('\n');
    80002dd4:	00a00513          	li	a0,10
    80002dd8:	ffffe097          	auipc	ra,0xffffe
    80002ddc:	648080e7          	jalr	1608(ra) # 80001420 <_Z4putcc>
    printString("Buffer deleted!\n");
    80002de0:	00006517          	auipc	a0,0x6
    80002de4:	24050513          	addi	a0,a0,576 # 80009020 <CONSOLE_STATUS+0x10>
    80002de8:	ffffe097          	auipc	ra,0xffffe
    80002dec:	734080e7          	jalr	1844(ra) # 8000151c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002df0:	00048513          	mv	a0,s1
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	f40080e7          	jalr	-192(ra) # 80002d34 <_ZN6Buffer6getCntEv>
    80002dfc:	02a05c63          	blez	a0,80002e34 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80002e00:	0084b783          	ld	a5,8(s1)
    80002e04:	0104a703          	lw	a4,16(s1)
    80002e08:	00271713          	slli	a4,a4,0x2
    80002e0c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80002e10:	0007c503          	lbu	a0,0(a5)
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	60c080e7          	jalr	1548(ra) # 80001420 <_Z4putcc>
        head = (head + 1) % cap;
    80002e1c:	0104a783          	lw	a5,16(s1)
    80002e20:	0017879b          	addiw	a5,a5,1
    80002e24:	0004a703          	lw	a4,0(s1)
    80002e28:	02e7e7bb          	remw	a5,a5,a4
    80002e2c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80002e30:	fc1ff06f          	j	80002df0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80002e34:	02100513          	li	a0,33
    80002e38:	ffffe097          	auipc	ra,0xffffe
    80002e3c:	5e8080e7          	jalr	1512(ra) # 80001420 <_Z4putcc>
    putc('\n');
    80002e40:	00a00513          	li	a0,10
    80002e44:	ffffe097          	auipc	ra,0xffffe
    80002e48:	5dc080e7          	jalr	1500(ra) # 80001420 <_Z4putcc>
    mem_free(buffer);
    80002e4c:	0084b503          	ld	a0,8(s1)
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	420080e7          	jalr	1056(ra) # 80001270 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80002e58:	0204b503          	ld	a0,32(s1)
    80002e5c:	ffffe097          	auipc	ra,0xffffe
    80002e60:	500080e7          	jalr	1280(ra) # 8000135c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002e64:	0184b503          	ld	a0,24(s1)
    80002e68:	ffffe097          	auipc	ra,0xffffe
    80002e6c:	4f4080e7          	jalr	1268(ra) # 8000135c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80002e70:	0304b503          	ld	a0,48(s1)
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	4e8080e7          	jalr	1256(ra) # 8000135c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80002e7c:	0284b503          	ld	a0,40(s1)
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	4dc080e7          	jalr	1244(ra) # 8000135c <_Z9sem_closeP4_sem>
}
    80002e88:	01813083          	ld	ra,24(sp)
    80002e8c:	01013403          	ld	s0,16(sp)
    80002e90:	00813483          	ld	s1,8(sp)
    80002e94:	02010113          	addi	sp,sp,32
    80002e98:	00008067          	ret

0000000080002e9c <_Z12printString2PKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString2(char const *string)
{
    80002e9c:	fe010113          	addi	sp,sp,-32
    80002ea0:	00113c23          	sd	ra,24(sp)
    80002ea4:	00813823          	sd	s0,16(sp)
    80002ea8:	00913423          	sd	s1,8(sp)
    80002eac:	02010413          	addi	s0,sp,32
    80002eb0:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002eb4:	0004c503          	lbu	a0,0(s1)
    80002eb8:	00050a63          	beqz	a0,80002ecc <_Z12printString2PKc+0x30>
    {
        __putc(*string);
    80002ebc:	00005097          	auipc	ra,0x5
    80002ec0:	130080e7          	jalr	304(ra) # 80007fec <__putc>
        string++;
    80002ec4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ec8:	fedff06f          	j	80002eb4 <_Z12printString2PKc+0x18>
    }
}
    80002ecc:	01813083          	ld	ra,24(sp)
    80002ed0:	01013403          	ld	s0,16(sp)
    80002ed4:	00813483          	ld	s1,8(sp)
    80002ed8:	02010113          	addi	sp,sp,32
    80002edc:	00008067          	ret

0000000080002ee0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002ee0:	fd010113          	addi	sp,sp,-48
    80002ee4:	02113423          	sd	ra,40(sp)
    80002ee8:	02813023          	sd	s0,32(sp)
    80002eec:	00913c23          	sd	s1,24(sp)
    80002ef0:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002ef4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002ef8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002efc:	00a00613          	li	a2,10
    80002f00:	02c5773b          	remuw	a4,a0,a2
    80002f04:	02071693          	slli	a3,a4,0x20
    80002f08:	0206d693          	srli	a3,a3,0x20
    80002f0c:	00006717          	auipc	a4,0x6
    80002f10:	15470713          	addi	a4,a4,340 # 80009060 <_ZZ12printIntegermE6digits>
    80002f14:	00d70733          	add	a4,a4,a3
    80002f18:	00074703          	lbu	a4,0(a4)
    80002f1c:	fe040693          	addi	a3,s0,-32
    80002f20:	009687b3          	add	a5,a3,s1
    80002f24:	0014849b          	addiw	s1,s1,1
    80002f28:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002f2c:	0005071b          	sext.w	a4,a0
    80002f30:	02c5553b          	divuw	a0,a0,a2
    80002f34:	00900793          	li	a5,9
    80002f38:	fce7e2e3          	bltu	a5,a4,80002efc <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002f3c:	fff4849b          	addiw	s1,s1,-1
    80002f40:	0004ce63          	bltz	s1,80002f5c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002f44:	fe040793          	addi	a5,s0,-32
    80002f48:	009787b3          	add	a5,a5,s1
    80002f4c:	ff07c503          	lbu	a0,-16(a5)
    80002f50:	00005097          	auipc	ra,0x5
    80002f54:	09c080e7          	jalr	156(ra) # 80007fec <__putc>
    80002f58:	fe5ff06f          	j	80002f3c <_Z12printIntegerm+0x5c>
    80002f5c:	02813083          	ld	ra,40(sp)
    80002f60:	02013403          	ld	s0,32(sp)
    80002f64:	01813483          	ld	s1,24(sp)
    80002f68:	03010113          	addi	sp,sp,48
    80002f6c:	00008067          	ret

0000000080002f70 <_ZN8MemAlloc11getInstanceEv>:
//
#include "../h/MemAlloc.hpp"
BlockHeader* MemAlloc :: Free = nullptr;
BlockHeader* MemAlloc :: allocated = nullptr;

MemAlloc& MemAlloc ::getInstance() {
    80002f70:	ff010113          	addi	sp,sp,-16
    80002f74:	00813423          	sd	s0,8(sp)
    80002f78:	01010413          	addi	s0,sp,16
    if(!Free){
    80002f7c:	00008797          	auipc	a5,0x8
    80002f80:	5647b783          	ld	a5,1380(a5) # 8000b4e0 <_ZN8MemAlloc4FreeE>
    80002f84:	00078c63          	beqz	a5,80002f9c <_ZN8MemAlloc11getInstanceEv+0x2c>
        Free->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
        Free->next = nullptr;
    }
    static MemAlloc instance;
    return instance;
}
    80002f88:	00008517          	auipc	a0,0x8
    80002f8c:	56050513          	addi	a0,a0,1376 # 8000b4e8 <_ZZN8MemAlloc11getInstanceEvE8instance>
    80002f90:	00813403          	ld	s0,8(sp)
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	00008067          	ret
        Free = (BlockHeader*)HEAP_START_ADDR;
    80002f9c:	00008797          	auipc	a5,0x8
    80002fa0:	4a47b783          	ld	a5,1188(a5) # 8000b440 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fa4:	0007b783          	ld	a5,0(a5)
    80002fa8:	00008717          	auipc	a4,0x8
    80002fac:	52f73c23          	sd	a5,1336(a4) # 8000b4e0 <_ZN8MemAlloc4FreeE>
        Free->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80002fb0:	00008717          	auipc	a4,0x8
    80002fb4:	4b073703          	ld	a4,1200(a4) # 8000b460 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002fb8:	00073703          	ld	a4,0(a4)
    80002fbc:	40f70733          	sub	a4,a4,a5
    80002fc0:	00e7b423          	sd	a4,8(a5)
        Free->next = nullptr;
    80002fc4:	0007b023          	sd	zero,0(a5)
    80002fc8:	fc1ff06f          	j	80002f88 <_ZN8MemAlloc11getInstanceEv+0x18>

0000000080002fcc <_ZN8MemAlloc6mallocEm>:

void* MemAlloc ::malloc(size_t sz) {
    80002fcc:	ff010113          	addi	sp,sp,-16
    80002fd0:	00813423          	sd	s0,8(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    size_t numblk = sz/MEM_BLOCK_SIZE;
    80002fd8:	0065d713          	srli	a4,a1,0x6
    if(sz%MEM_BLOCK_SIZE > 0)numblk++;
    80002fdc:	03f5f593          	andi	a1,a1,63
    80002fe0:	00058463          	beqz	a1,80002fe8 <_ZN8MemAlloc6mallocEm+0x1c>
    80002fe4:	00170713          	addi	a4,a4,1
    size_t fullsize = numblk*MEM_BLOCK_SIZE;
    80002fe8:	00671713          	slli	a4,a4,0x6
    BlockHeader *blk = Free, *prev = nullptr;
    80002fec:	00008517          	auipc	a0,0x8
    80002ff0:	4f453503          	ld	a0,1268(a0) # 8000b4e0 <_ZN8MemAlloc4FreeE>
    80002ff4:	00000693          	li	a3,0
    for (; blk!=nullptr; prev=blk, blk=blk->next)
    80002ff8:	00050c63          	beqz	a0,80003010 <_ZN8MemAlloc6mallocEm+0x44>
        if (blk->size>=fullsize) break;
    80002ffc:	00853783          	ld	a5,8(a0)
    80003000:	00e7f863          	bgeu	a5,a4,80003010 <_ZN8MemAlloc6mallocEm+0x44>
    for (; blk!=nullptr; prev=blk, blk=blk->next)
    80003004:	00050693          	mv	a3,a0
    80003008:	00053503          	ld	a0,0(a0)
    8000300c:	fedff06f          	j	80002ff8 <_ZN8MemAlloc6mallocEm+0x2c>
    if(blk == nullptr)return nullptr;
    80003010:	0a050463          	beqz	a0,800030b8 <_ZN8MemAlloc6mallocEm+0xec>
    size_t remainingSize = blk->size - fullsize;
    80003014:	00853783          	ld	a5,8(a0)
    80003018:	40e787b3          	sub	a5,a5,a4
    if (remainingSize >= sizeof(BlockHeader) + MEM_BLOCK_SIZE){
    8000301c:	04f00613          	li	a2,79
    80003020:	04f67c63          	bgeu	a2,a5,80003078 <_ZN8MemAlloc6mallocEm+0xac>
        blk->size = fullsize;
    80003024:	00e53423          	sd	a4,8(a0)
        size_t offset = sizeof(BlockHeader) + fullsize;
    80003028:	01070713          	addi	a4,a4,16
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + offset);
    8000302c:	00e50733          	add	a4,a0,a4
        if (prev) prev->next = newBlk;
    80003030:	02068e63          	beqz	a3,8000306c <_ZN8MemAlloc6mallocEm+0xa0>
    80003034:	00e6b023          	sd	a4,0(a3)
        else Free = newBlk;
        newBlk->next = blk->next;
    80003038:	00053683          	ld	a3,0(a0)
    8000303c:	00d73023          	sd	a3,0(a4)
        newBlk->size = remainingSize - sizeof(BlockHeader);
    80003040:	ff078793          	addi	a5,a5,-16
    80003044:	00f73423          	sd	a5,8(a4)
    }else {
        if (prev) prev->next = blk->next;
        else Free = blk->next;
    }
    //allocated
    if(!allocated){
    80003048:	00008797          	auipc	a5,0x8
    8000304c:	4a87b783          	ld	a5,1192(a5) # 8000b4f0 <_ZN8MemAlloc9allocatedE>
    80003050:	04078463          	beqz	a5,80003098 <_ZN8MemAlloc6mallocEm+0xcc>

        blk->next = nullptr;
        allocated = blk;
    }else{

        BlockHeader *blk2 = allocated, *prev2 = nullptr;
    80003054:	00000713          	li	a4,0
        for (; blk2!=nullptr; prev2=blk2, blk2=blk2->next)
    80003058:	04078863          	beqz	a5,800030a8 <_ZN8MemAlloc6mallocEm+0xdc>
            if((char*)blk < (char*)blk2)break;
    8000305c:	04f56663          	bltu	a0,a5,800030a8 <_ZN8MemAlloc6mallocEm+0xdc>
        for (; blk2!=nullptr; prev2=blk2, blk2=blk2->next)
    80003060:	00078713          	mv	a4,a5
    80003064:	0007b783          	ld	a5,0(a5)
    80003068:	ff1ff06f          	j	80003058 <_ZN8MemAlloc6mallocEm+0x8c>
        else Free = newBlk;
    8000306c:	00008697          	auipc	a3,0x8
    80003070:	46e6ba23          	sd	a4,1140(a3) # 8000b4e0 <_ZN8MemAlloc4FreeE>
    80003074:	fc5ff06f          	j	80003038 <_ZN8MemAlloc6mallocEm+0x6c>
        if (prev) prev->next = blk->next;
    80003078:	00068863          	beqz	a3,80003088 <_ZN8MemAlloc6mallocEm+0xbc>
    8000307c:	00053783          	ld	a5,0(a0)
    80003080:	00f6b023          	sd	a5,0(a3)
    80003084:	fc5ff06f          	j	80003048 <_ZN8MemAlloc6mallocEm+0x7c>
        else Free = blk->next;
    80003088:	00053783          	ld	a5,0(a0)
    8000308c:	00008717          	auipc	a4,0x8
    80003090:	44f73a23          	sd	a5,1108(a4) # 8000b4e0 <_ZN8MemAlloc4FreeE>
    80003094:	fb5ff06f          	j	80003048 <_ZN8MemAlloc6mallocEm+0x7c>
        blk->next = nullptr;
    80003098:	00053023          	sd	zero,0(a0)
        allocated = blk;
    8000309c:	00008797          	auipc	a5,0x8
    800030a0:	44a7ba23          	sd	a0,1108(a5) # 8000b4f0 <_ZN8MemAlloc9allocatedE>
    800030a4:	0100006f          	j	800030b4 <_ZN8MemAlloc6mallocEm+0xe8>
        if(!blk2){
    800030a8:	00078e63          	beqz	a5,800030c4 <_ZN8MemAlloc6mallocEm+0xf8>
            prev2->next = blk;
            blk->next = nullptr;
        }else{
            prev2->next = blk;
    800030ac:	00a73023          	sd	a0,0(a4)
            blk->next = blk2;
    800030b0:	00f53023          	sd	a5,0(a0)
        }
    }
    return (char*)blk + sizeof(BlockHeader);
    800030b4:	01050513          	addi	a0,a0,16
}
    800030b8:	00813403          	ld	s0,8(sp)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret
            prev2->next = blk;
    800030c4:	00a73023          	sd	a0,0(a4)
            blk->next = nullptr;
    800030c8:	00053023          	sd	zero,0(a0)
    800030cc:	fe9ff06f          	j	800030b4 <_ZN8MemAlloc6mallocEm+0xe8>

00000000800030d0 <_ZN8MemAlloc4joinEP11BlockHeader>:

int MemAlloc::join(BlockHeader *cur) {
    800030d0:	ff010113          	addi	sp,sp,-16
    800030d4:	00813423          	sd	s0,8(sp)
    800030d8:	01010413          	addi	s0,sp,16
    BlockHeader* nxt = cur->next;
    800030dc:	0005b783          	ld	a5,0(a1)
    if (nxt && (char*)cur+cur->size + sizeof(BlockHeader) == (char*)(nxt)) {
    800030e0:	04078063          	beqz	a5,80003120 <_ZN8MemAlloc4joinEP11BlockHeader+0x50>
    800030e4:	0085b683          	ld	a3,8(a1)
    800030e8:	01068713          	addi	a4,a3,16
    800030ec:	00e58733          	add	a4,a1,a4
    800030f0:	00f70a63          	beq	a4,a5,80003104 <_ZN8MemAlloc4joinEP11BlockHeader+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    } else
        return 0;
    800030f4:	00000513          	li	a0,0

}
    800030f8:	00813403          	ld	s0,8(sp)
    800030fc:	01010113          	addi	sp,sp,16
    80003100:	00008067          	ret
        cur->size += cur->next->size;
    80003104:	0087b703          	ld	a4,8(a5)
    80003108:	00e686b3          	add	a3,a3,a4
    8000310c:	00d5b423          	sd	a3,8(a1)
        cur->next = cur->next->next;
    80003110:	0007b783          	ld	a5,0(a5)
    80003114:	00f5b023          	sd	a5,0(a1)
        return 1;
    80003118:	00100513          	li	a0,1
    8000311c:	fddff06f          	j	800030f8 <_ZN8MemAlloc4joinEP11BlockHeader+0x28>
        return 0;
    80003120:	00000513          	li	a0,0
    80003124:	fd5ff06f          	j	800030f8 <_ZN8MemAlloc4joinEP11BlockHeader+0x28>

0000000080003128 <_ZN8MemAlloc7freememEPv>:

int MemAlloc ::freemem(void *ptr) {
    80003128:	fe010113          	addi	sp,sp,-32
    8000312c:	00113c23          	sd	ra,24(sp)
    80003130:	00813823          	sd	s0,16(sp)
    80003134:	00913423          	sd	s1,8(sp)
    80003138:	01213023          	sd	s2,0(sp)
    8000313c:	02010413          	addi	s0,sp,32
    80003140:	00050913          	mv	s2,a0
    80003144:	00058613          	mv	a2,a1
    char *addr = (char *) ptr - sizeof(BlockHeader);
    80003148:	ff058593          	addi	a1,a1,-16
    BlockHeader *blk = allocated, *prev = nullptr;
    8000314c:	00008797          	auipc	a5,0x8
    80003150:	3a47b783          	ld	a5,932(a5) # 8000b4f0 <_ZN8MemAlloc9allocatedE>
    80003154:	00000693          	li	a3,0
    //ovde problem razresi bracki moj limasti
    for (; blk != nullptr; prev = blk, blk = blk->next){
    80003158:	00078a63          	beqz	a5,8000316c <_ZN8MemAlloc7freememEPv+0x44>
        if ((char *) blk == addr) {
    8000315c:	00b78863          	beq	a5,a1,8000316c <_ZN8MemAlloc7freememEPv+0x44>
    for (; blk != nullptr; prev = blk, blk = blk->next){
    80003160:	00078693          	mv	a3,a5
    80003164:	0007b783          	ld	a5,0(a5)
    80003168:	ff1ff06f          	j	80003158 <_ZN8MemAlloc7freememEPv+0x30>
            break;
        }
    }
    if(blk == nullptr)return -1;
    8000316c:	0a078263          	beqz	a5,80003210 <_ZN8MemAlloc7freememEPv+0xe8>
    size_t sz = blk->size;
    80003170:	0087b503          	ld	a0,8(a5)
    BlockHeader *blk2 = Free, *prev2 = nullptr;
    80003174:	00008717          	auipc	a4,0x8
    80003178:	36c73703          	ld	a4,876(a4) # 8000b4e0 <_ZN8MemAlloc4FreeE>
    8000317c:	00000493          	li	s1,0
    for (; blk2!=nullptr; prev2=blk2, blk2=blk2->next)
    80003180:	00070a63          	beqz	a4,80003194 <_ZN8MemAlloc7freememEPv+0x6c>
        if (addr <  (char*)blk2) break;
    80003184:	00e5e863          	bltu	a1,a4,80003194 <_ZN8MemAlloc7freememEPv+0x6c>
    for (; blk2!=nullptr; prev2=blk2, blk2=blk2->next)
    80003188:	00070493          	mv	s1,a4
    8000318c:	00073703          	ld	a4,0(a4)
    80003190:	ff1ff06f          	j	80003180 <_ZN8MemAlloc7freememEPv+0x58>
    if(prev){
    80003194:	06068063          	beqz	a3,800031f4 <_ZN8MemAlloc7freememEPv+0xcc>
        prev->next = blk->next;
    80003198:	0007b783          	ld	a5,0(a5)
    8000319c:	00f6b023          	sd	a5,0(a3)
    }else{
        allocated = blk->next;
    }
    BlockHeader* newSeg =(BlockHeader*) addr;
    newSeg->size = sz;
    800031a0:	fea63c23          	sd	a0,-8(a2)
    if(blk2)newSeg->next = blk2;
    800031a4:	00070463          	beqz	a4,800031ac <_ZN8MemAlloc7freememEPv+0x84>
    800031a8:	fee63823          	sd	a4,-16(a2)
    if(prev2)prev2->next = newSeg;
    800031ac:	04048c63          	beqz	s1,80003204 <_ZN8MemAlloc7freememEPv+0xdc>
    800031b0:	00b4b023          	sd	a1,0(s1)
    else Free = newSeg;
    if(blk2)join(newSeg);
    800031b4:	00070863          	beqz	a4,800031c4 <_ZN8MemAlloc7freememEPv+0x9c>
    800031b8:	00090513          	mv	a0,s2
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	f14080e7          	jalr	-236(ra) # 800030d0 <_ZN8MemAlloc4joinEP11BlockHeader>
    if(prev2)join(prev2);
    800031c4:	04048a63          	beqz	s1,80003218 <_ZN8MemAlloc7freememEPv+0xf0>
    800031c8:	00048593          	mv	a1,s1
    800031cc:	00090513          	mv	a0,s2
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	f00080e7          	jalr	-256(ra) # 800030d0 <_ZN8MemAlloc4joinEP11BlockHeader>

    return 0;
    800031d8:	00000513          	li	a0,0


    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	00013903          	ld	s2,0(sp)
    800031ec:	02010113          	addi	sp,sp,32
    800031f0:	00008067          	ret
        allocated = blk->next;
    800031f4:	0007b783          	ld	a5,0(a5)
    800031f8:	00008697          	auipc	a3,0x8
    800031fc:	2ef6bc23          	sd	a5,760(a3) # 8000b4f0 <_ZN8MemAlloc9allocatedE>
    80003200:	fa1ff06f          	j	800031a0 <_ZN8MemAlloc7freememEPv+0x78>
    else Free = newSeg;
    80003204:	00008797          	auipc	a5,0x8
    80003208:	2cb7be23          	sd	a1,732(a5) # 8000b4e0 <_ZN8MemAlloc4FreeE>
    8000320c:	fa9ff06f          	j	800031b4 <_ZN8MemAlloc7freememEPv+0x8c>
    if(blk == nullptr)return -1;
    80003210:	fff00513          	li	a0,-1
    80003214:	fc9ff06f          	j	800031dc <_ZN8MemAlloc7freememEPv+0xb4>
    return 0;
    80003218:	00000513          	li	a0,0
    8000321c:	fc1ff06f          	j	800031dc <_ZN8MemAlloc7freememEPv+0xb4>

0000000080003220 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003220:	fe010113          	addi	sp,sp,-32
    80003224:	00113c23          	sd	ra,24(sp)
    80003228:	00813823          	sd	s0,16(sp)
    8000322c:	00913423          	sd	s1,8(sp)
    80003230:	01213023          	sd	s2,0(sp)
    80003234:	02010413          	addi	s0,sp,32
    80003238:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000323c:	00000913          	li	s2,0
    80003240:	00c0006f          	j	8000324c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != '`') {//bilo 0x1b
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	0f4080e7          	jalr	244(ra) # 80001338 <_Z15thread_dispatchv>
    while ((key = getc()) != '`') {//bilo 0x1b
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	1a0080e7          	jalr	416(ra) # 800013ec <_Z4getcv>
    80003254:	0005059b          	sext.w	a1,a0
    80003258:	06000793          	li	a5,96
    8000325c:	02f58a63          	beq	a1,a5,80003290 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003260:	0084b503          	ld	a0,8(s1)
    80003264:	00000097          	auipc	ra,0x0
    80003268:	9b4080e7          	jalr	-1612(ra) # 80002c18 <_ZN6Buffer3putEi>
        i++;
    8000326c:	0019071b          	addiw	a4,s2,1
    80003270:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003274:	0004a683          	lw	a3,0(s1)
    80003278:	0026979b          	slliw	a5,a3,0x2
    8000327c:	00d787bb          	addw	a5,a5,a3
    80003280:	0017979b          	slliw	a5,a5,0x1
    80003284:	02f767bb          	remw	a5,a4,a5
    80003288:	fc0792e3          	bnez	a5,8000324c <_ZL16producerKeyboardPv+0x2c>
    8000328c:	fb9ff06f          	j	80003244 <_ZL16producerKeyboardPv+0x24>
        }
    }


    threadEnd = 1;
    80003290:	00100793          	li	a5,1
    80003294:	00008717          	auipc	a4,0x8
    80003298:	26f72223          	sw	a5,612(a4) # 8000b4f8 <_ZL9threadEnd>
    printString("END1\n");
    8000329c:	00006517          	auipc	a0,0x6
    800032a0:	dd450513          	addi	a0,a0,-556 # 80009070 <_ZZ12printIntegermE6digits+0x10>
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	278080e7          	jalr	632(ra) # 8000151c <_Z11printStringPKc>
    data->buffer->put('!');
    800032ac:	02100593          	li	a1,33
    800032b0:	0084b503          	ld	a0,8(s1)
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	964080e7          	jalr	-1692(ra) # 80002c18 <_ZN6Buffer3putEi>
    printString("END2\n");
    800032bc:	00006517          	auipc	a0,0x6
    800032c0:	dbc50513          	addi	a0,a0,-580 # 80009078 <_ZZ12printIntegermE6digits+0x18>
    800032c4:	ffffe097          	auipc	ra,0xffffe
    800032c8:	258080e7          	jalr	600(ra) # 8000151c <_Z11printStringPKc>

    sem_signal(data->wait);
    800032cc:	0104b503          	ld	a0,16(s1)
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	0ec080e7          	jalr	236(ra) # 800013bc <_Z10sem_signalP4_sem>
}
    800032d8:	01813083          	ld	ra,24(sp)
    800032dc:	01013403          	ld	s0,16(sp)
    800032e0:	00813483          	ld	s1,8(sp)
    800032e4:	00013903          	ld	s2,0(sp)
    800032e8:	02010113          	addi	sp,sp,32
    800032ec:	00008067          	ret

00000000800032f0 <_ZL8producerPv>:

static void producer(void *arg) {
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	01213023          	sd	s2,0(sp)
    80003304:	02010413          	addi	s0,sp,32
    80003308:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000330c:	00000913          	li	s2,0
    80003310:	00c0006f          	j	8000331c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003314:	ffffe097          	auipc	ra,0xffffe
    80003318:	024080e7          	jalr	36(ra) # 80001338 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000331c:	00008797          	auipc	a5,0x8
    80003320:	1dc7a783          	lw	a5,476(a5) # 8000b4f8 <_ZL9threadEnd>
    80003324:	02079e63          	bnez	a5,80003360 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003328:	0004a583          	lw	a1,0(s1)
    8000332c:	0305859b          	addiw	a1,a1,48
    80003330:	0084b503          	ld	a0,8(s1)
    80003334:	00000097          	auipc	ra,0x0
    80003338:	8e4080e7          	jalr	-1820(ra) # 80002c18 <_ZN6Buffer3putEi>
        i++;
    8000333c:	0019071b          	addiw	a4,s2,1
    80003340:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003344:	0004a683          	lw	a3,0(s1)
    80003348:	0026979b          	slliw	a5,a3,0x2
    8000334c:	00d787bb          	addw	a5,a5,a3
    80003350:	0017979b          	slliw	a5,a5,0x1
    80003354:	02f767bb          	remw	a5,a4,a5
    80003358:	fc0792e3          	bnez	a5,8000331c <_ZL8producerPv+0x2c>
    8000335c:	fb9ff06f          	j	80003314 <_ZL8producerPv+0x24>
        }
    }


    sem_signal(data->wait);
    80003360:	0104b503          	ld	a0,16(s1)
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	058080e7          	jalr	88(ra) # 800013bc <_Z10sem_signalP4_sem>

}
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	00013903          	ld	s2,0(sp)
    8000337c:	02010113          	addi	sp,sp,32
    80003380:	00008067          	ret

0000000080003384 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003384:	fd010113          	addi	sp,sp,-48
    80003388:	02113423          	sd	ra,40(sp)
    8000338c:	02813023          	sd	s0,32(sp)
    80003390:	00913c23          	sd	s1,24(sp)
    80003394:	01213823          	sd	s2,16(sp)
    80003398:	01313423          	sd	s3,8(sp)
    8000339c:	03010413          	addi	s0,sp,48
    800033a0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033a4:	00000993          	li	s3,0
    800033a8:	01c0006f          	j	800033c4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	f8c080e7          	jalr	-116(ra) # 80001338 <_Z15thread_dispatchv>
    800033b4:	0500006f          	j	80003404 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800033b8:	00a00513          	li	a0,10
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	064080e7          	jalr	100(ra) # 80001420 <_Z4putcc>
    while (!threadEnd) {
    800033c4:	00008797          	auipc	a5,0x8
    800033c8:	1347a783          	lw	a5,308(a5) # 8000b4f8 <_ZL9threadEnd>
    800033cc:	06079063          	bnez	a5,8000342c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800033d0:	00893503          	ld	a0,8(s2)
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	8d4080e7          	jalr	-1836(ra) # 80002ca8 <_ZN6Buffer3getEv>
        i++;
    800033dc:	0019849b          	addiw	s1,s3,1
    800033e0:	0004899b          	sext.w	s3,s1
        putc(key);
    800033e4:	0ff57513          	andi	a0,a0,255
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	038080e7          	jalr	56(ra) # 80001420 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800033f0:	00092703          	lw	a4,0(s2)
    800033f4:	0027179b          	slliw	a5,a4,0x2
    800033f8:	00e787bb          	addw	a5,a5,a4
    800033fc:	02f4e7bb          	remw	a5,s1,a5
    80003400:	fa0786e3          	beqz	a5,800033ac <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003404:	05000793          	li	a5,80
    80003408:	02f4e4bb          	remw	s1,s1,a5
    8000340c:	fa049ce3          	bnez	s1,800033c4 <_ZL8consumerPv+0x40>
    80003410:	fa9ff06f          	j	800033b8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003414:	00893503          	ld	a0,8(s2)
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	890080e7          	jalr	-1904(ra) # 80002ca8 <_ZN6Buffer3getEv>
        putc(key);
    80003420:	0ff57513          	andi	a0,a0,255
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	ffc080e7          	jalr	-4(ra) # 80001420 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000342c:	00893503          	ld	a0,8(s2)
    80003430:	00000097          	auipc	ra,0x0
    80003434:	904080e7          	jalr	-1788(ra) # 80002d34 <_ZN6Buffer6getCntEv>
    80003438:	fca04ee3          	bgtz	a0,80003414 <_ZL8consumerPv+0x90>
    }


    sem_signal(data->wait);
    8000343c:	01093503          	ld	a0,16(s2)
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	f7c080e7          	jalr	-132(ra) # 800013bc <_Z10sem_signalP4_sem>

}
    80003448:	02813083          	ld	ra,40(sp)
    8000344c:	02013403          	ld	s0,32(sp)
    80003450:	01813483          	ld	s1,24(sp)
    80003454:	01013903          	ld	s2,16(sp)
    80003458:	00813983          	ld	s3,8(sp)
    8000345c:	03010113          	addi	sp,sp,48
    80003460:	00008067          	ret

0000000080003464 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003464:	f9010113          	addi	sp,sp,-112
    80003468:	06113423          	sd	ra,104(sp)
    8000346c:	06813023          	sd	s0,96(sp)
    80003470:	04913c23          	sd	s1,88(sp)
    80003474:	05213823          	sd	s2,80(sp)
    80003478:	05313423          	sd	s3,72(sp)
    8000347c:	05413023          	sd	s4,64(sp)
    80003480:	03513c23          	sd	s5,56(sp)
    80003484:	03613823          	sd	s6,48(sp)
    80003488:	07010413          	addi	s0,sp,112



    sem_close(waitForAll);

    delete buffer;
    8000348c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003490:	00006517          	auipc	a0,0x6
    80003494:	bf050513          	addi	a0,a0,-1040 # 80009080 <_ZZ12printIntegermE6digits+0x20>
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	084080e7          	jalr	132(ra) # 8000151c <_Z11printStringPKc>
    getString(input, 30);
    800034a0:	01e00593          	li	a1,30
    800034a4:	fa040493          	addi	s1,s0,-96
    800034a8:	00048513          	mv	a0,s1
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	0ec080e7          	jalr	236(ra) # 80001598 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800034b4:	00048513          	mv	a0,s1
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	1ac080e7          	jalr	428(ra) # 80001664 <_Z11stringToIntPKc>
    800034c0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800034c4:	00006517          	auipc	a0,0x6
    800034c8:	bdc50513          	addi	a0,a0,-1060 # 800090a0 <_ZZ12printIntegermE6digits+0x40>
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	050080e7          	jalr	80(ra) # 8000151c <_Z11printStringPKc>
    getString(input, 30);
    800034d4:	01e00593          	li	a1,30
    800034d8:	00048513          	mv	a0,s1
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	0bc080e7          	jalr	188(ra) # 80001598 <_Z9getStringPci>
    n = stringToInt(input);
    800034e4:	00048513          	mv	a0,s1
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	17c080e7          	jalr	380(ra) # 80001664 <_Z11stringToIntPKc>
    800034f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800034f4:	00006517          	auipc	a0,0x6
    800034f8:	bcc50513          	addi	a0,a0,-1076 # 800090c0 <_ZZ12printIntegermE6digits+0x60>
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	020080e7          	jalr	32(ra) # 8000151c <_Z11printStringPKc>
    80003504:	00000613          	li	a2,0
    80003508:	00a00593          	li	a1,10
    8000350c:	00090513          	mv	a0,s2
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	1a4080e7          	jalr	420(ra) # 800016b4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003518:	00006517          	auipc	a0,0x6
    8000351c:	bc050513          	addi	a0,a0,-1088 # 800090d8 <_ZZ12printIntegermE6digits+0x78>
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	ffc080e7          	jalr	-4(ra) # 8000151c <_Z11printStringPKc>
    80003528:	00000613          	li	a2,0
    8000352c:	00a00593          	li	a1,10
    80003530:	00048513          	mv	a0,s1
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	180080e7          	jalr	384(ra) # 800016b4 <_Z8printIntiii>
    printString(".\n");
    8000353c:	00006517          	auipc	a0,0x6
    80003540:	bb450513          	addi	a0,a0,-1100 # 800090f0 <_ZZ12printIntegermE6digits+0x90>
    80003544:	ffffe097          	auipc	ra,0xffffe
    80003548:	fd8080e7          	jalr	-40(ra) # 8000151c <_Z11printStringPKc>
    if(threadNum > n) {
    8000354c:	0324c463          	blt	s1,s2,80003574 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003550:	03205c63          	blez	s2,80003588 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003554:	03800513          	li	a0,56
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	72c080e7          	jalr	1836(ra) # 80001c84 <_Znwm>
    80003560:	00050a13          	mv	s4,a0
    80003564:	00048593          	mv	a1,s1
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	614080e7          	jalr	1556(ra) # 80002b7c <_ZN6BufferC1Ei>
    80003570:	0300006f          	j	800035a0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003574:	00006517          	auipc	a0,0x6
    80003578:	b8450513          	addi	a0,a0,-1148 # 800090f8 <_ZZ12printIntegermE6digits+0x98>
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	fa0080e7          	jalr	-96(ra) # 8000151c <_Z11printStringPKc>
        return;
    80003584:	0140006f          	j	80003598 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003588:	00006517          	auipc	a0,0x6
    8000358c:	bb050513          	addi	a0,a0,-1104 # 80009138 <_ZZ12printIntegermE6digits+0xd8>
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	f8c080e7          	jalr	-116(ra) # 8000151c <_Z11printStringPKc>
        return;
    80003598:	000b0113          	mv	sp,s6
    8000359c:	1500006f          	j	800036ec <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800035a0:	00000593          	li	a1,0
    800035a4:	00008517          	auipc	a0,0x8
    800035a8:	f5c50513          	addi	a0,a0,-164 # 8000b500 <_ZL10waitForAll>
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	d58080e7          	jalr	-680(ra) # 80001304 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800035b4:	00391793          	slli	a5,s2,0x3
    800035b8:	00f78793          	addi	a5,a5,15
    800035bc:	ff07f793          	andi	a5,a5,-16
    800035c0:	40f10133          	sub	sp,sp,a5
    800035c4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800035c8:	0019071b          	addiw	a4,s2,1
    800035cc:	00171793          	slli	a5,a4,0x1
    800035d0:	00e787b3          	add	a5,a5,a4
    800035d4:	00379793          	slli	a5,a5,0x3
    800035d8:	00f78793          	addi	a5,a5,15
    800035dc:	ff07f793          	andi	a5,a5,-16
    800035e0:	40f10133          	sub	sp,sp,a5
    800035e4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800035e8:	00191613          	slli	a2,s2,0x1
    800035ec:	012607b3          	add	a5,a2,s2
    800035f0:	00379793          	slli	a5,a5,0x3
    800035f4:	00f987b3          	add	a5,s3,a5
    800035f8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800035fc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003600:	00008717          	auipc	a4,0x8
    80003604:	f0073703          	ld	a4,-256(a4) # 8000b500 <_ZL10waitForAll>
    80003608:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000360c:	00078613          	mv	a2,a5
    80003610:	00000597          	auipc	a1,0x0
    80003614:	d7458593          	addi	a1,a1,-652 # 80003384 <_ZL8consumerPv>
    80003618:	f9840513          	addi	a0,s0,-104
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	c84080e7          	jalr	-892(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003624:	00000493          	li	s1,0
    80003628:	0280006f          	j	80003650 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000362c:	00000597          	auipc	a1,0x0
    80003630:	bf458593          	addi	a1,a1,-1036 # 80003220 <_ZL16producerKeyboardPv>
                      data + i);
    80003634:	00179613          	slli	a2,a5,0x1
    80003638:	00f60633          	add	a2,a2,a5
    8000363c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003640:	00c98633          	add	a2,s3,a2
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	c5c080e7          	jalr	-932(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000364c:	0014849b          	addiw	s1,s1,1
    80003650:	0524d263          	bge	s1,s2,80003694 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003654:	00149793          	slli	a5,s1,0x1
    80003658:	009787b3          	add	a5,a5,s1
    8000365c:	00379793          	slli	a5,a5,0x3
    80003660:	00f987b3          	add	a5,s3,a5
    80003664:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003668:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000366c:	00008717          	auipc	a4,0x8
    80003670:	e9473703          	ld	a4,-364(a4) # 8000b500 <_ZL10waitForAll>
    80003674:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003678:	00048793          	mv	a5,s1
    8000367c:	00349513          	slli	a0,s1,0x3
    80003680:	00aa8533          	add	a0,s5,a0
    80003684:	fa9054e3          	blez	s1,8000362c <_Z22producerConsumer_C_APIv+0x1c8>
    80003688:	00000597          	auipc	a1,0x0
    8000368c:	c6858593          	addi	a1,a1,-920 # 800032f0 <_ZL8producerPv>
    80003690:	fa5ff06f          	j	80003634 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	ca4080e7          	jalr	-860(ra) # 80001338 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000369c:	00000493          	li	s1,0
    800036a0:	00994e63          	blt	s2,s1,800036bc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800036a4:	00008517          	auipc	a0,0x8
    800036a8:	e5c53503          	ld	a0,-420(a0) # 8000b500 <_ZL10waitForAll>
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	ce0080e7          	jalr	-800(ra) # 8000138c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800036b4:	0014849b          	addiw	s1,s1,1
    800036b8:	fe9ff06f          	j	800036a0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800036bc:	00008517          	auipc	a0,0x8
    800036c0:	e4453503          	ld	a0,-444(a0) # 8000b500 <_ZL10waitForAll>
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	c98080e7          	jalr	-872(ra) # 8000135c <_Z9sem_closeP4_sem>
    delete buffer;
    800036cc:	000a0e63          	beqz	s4,800036e8 <_Z22producerConsumer_C_APIv+0x284>
    800036d0:	000a0513          	mv	a0,s4
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	6e8080e7          	jalr	1768(ra) # 80002dbc <_ZN6BufferD1Ev>
    800036dc:	000a0513          	mv	a0,s4
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	5f4080e7          	jalr	1524(ra) # 80001cd4 <_ZdlPv>
    800036e8:	000b0113          	mv	sp,s6

}
    800036ec:	f9040113          	addi	sp,s0,-112
    800036f0:	06813083          	ld	ra,104(sp)
    800036f4:	06013403          	ld	s0,96(sp)
    800036f8:	05813483          	ld	s1,88(sp)
    800036fc:	05013903          	ld	s2,80(sp)
    80003700:	04813983          	ld	s3,72(sp)
    80003704:	04013a03          	ld	s4,64(sp)
    80003708:	03813a83          	ld	s5,56(sp)
    8000370c:	03013b03          	ld	s6,48(sp)
    80003710:	07010113          	addi	sp,sp,112
    80003714:	00008067          	ret
    80003718:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000371c:	000a0513          	mv	a0,s4
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	5b4080e7          	jalr	1460(ra) # 80001cd4 <_ZdlPv>
    80003728:	00048513          	mv	a0,s1
    8000372c:	00009097          	auipc	ra,0x9
    80003730:	edc080e7          	jalr	-292(ra) # 8000c608 <_Unwind_Resume>

0000000080003734 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003734:	fe010113          	addi	sp,sp,-32
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	00813823          	sd	s0,16(sp)
    80003740:	00913423          	sd	s1,8(sp)
    80003744:	01213023          	sd	s2,0(sp)
    80003748:	02010413          	addi	s0,sp,32
    8000374c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003750:	00100793          	li	a5,1
    80003754:	02a7f863          	bgeu	a5,a0,80003784 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003758:	00a00793          	li	a5,10
    8000375c:	02f577b3          	remu	a5,a0,a5
    80003760:	02078e63          	beqz	a5,8000379c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003764:	fff48513          	addi	a0,s1,-1
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	fcc080e7          	jalr	-52(ra) # 80003734 <_ZL9fibonaccim>
    80003770:	00050913          	mv	s2,a0
    80003774:	ffe48513          	addi	a0,s1,-2
    80003778:	00000097          	auipc	ra,0x0
    8000377c:	fbc080e7          	jalr	-68(ra) # 80003734 <_ZL9fibonaccim>
    80003780:	00a90533          	add	a0,s2,a0
}
    80003784:	01813083          	ld	ra,24(sp)
    80003788:	01013403          	ld	s0,16(sp)
    8000378c:	00813483          	ld	s1,8(sp)
    80003790:	00013903          	ld	s2,0(sp)
    80003794:	02010113          	addi	sp,sp,32
    80003798:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	b9c080e7          	jalr	-1124(ra) # 80001338 <_Z15thread_dispatchv>
    800037a4:	fc1ff06f          	j	80003764 <_ZL9fibonaccim+0x30>

00000000800037a8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800037a8:	fe010113          	addi	sp,sp,-32
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	01213023          	sd	s2,0(sp)
    800037bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800037c0:	00000913          	li	s2,0
    800037c4:	0380006f          	j	800037fc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	b70080e7          	jalr	-1168(ra) # 80001338 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800037d0:	00148493          	addi	s1,s1,1
    800037d4:	000027b7          	lui	a5,0x2
    800037d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800037dc:	0097ee63          	bltu	a5,s1,800037f8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800037e0:	00000713          	li	a4,0
    800037e4:	000077b7          	lui	a5,0x7
    800037e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800037ec:	fce7eee3          	bltu	a5,a4,800037c8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800037f0:	00170713          	addi	a4,a4,1
    800037f4:	ff1ff06f          	j	800037e4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800037f8:	00190913          	addi	s2,s2,1
    800037fc:	00900793          	li	a5,9
    80003800:	0527e063          	bltu	a5,s2,80003840 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003804:	00006517          	auipc	a0,0x6
    80003808:	96450513          	addi	a0,a0,-1692 # 80009168 <_ZZ12printIntegermE6digits+0x108>
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	d10080e7          	jalr	-752(ra) # 8000151c <_Z11printStringPKc>
    80003814:	00000613          	li	a2,0
    80003818:	00a00593          	li	a1,10
    8000381c:	0009051b          	sext.w	a0,s2
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	e94080e7          	jalr	-364(ra) # 800016b4 <_Z8printIntiii>
    80003828:	00006517          	auipc	a0,0x6
    8000382c:	c7050513          	addi	a0,a0,-912 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	cec080e7          	jalr	-788(ra) # 8000151c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003838:	00000493          	li	s1,0
    8000383c:	f99ff06f          	j	800037d4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003840:	00006517          	auipc	a0,0x6
    80003844:	93050513          	addi	a0,a0,-1744 # 80009170 <_ZZ12printIntegermE6digits+0x110>
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	cd4080e7          	jalr	-812(ra) # 8000151c <_Z11printStringPKc>
    finishedA = true;
    80003850:	00100793          	li	a5,1
    80003854:	00008717          	auipc	a4,0x8
    80003858:	caf70a23          	sb	a5,-844(a4) # 8000b508 <_ZL9finishedA>
}
    8000385c:	01813083          	ld	ra,24(sp)
    80003860:	01013403          	ld	s0,16(sp)
    80003864:	00813483          	ld	s1,8(sp)
    80003868:	00013903          	ld	s2,0(sp)
    8000386c:	02010113          	addi	sp,sp,32
    80003870:	00008067          	ret

0000000080003874 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003874:	fe010113          	addi	sp,sp,-32
    80003878:	00113c23          	sd	ra,24(sp)
    8000387c:	00813823          	sd	s0,16(sp)
    80003880:	00913423          	sd	s1,8(sp)
    80003884:	01213023          	sd	s2,0(sp)
    80003888:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000388c:	00000913          	li	s2,0
    80003890:	0380006f          	j	800038c8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	aa4080e7          	jalr	-1372(ra) # 80001338 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000389c:	00148493          	addi	s1,s1,1
    800038a0:	000027b7          	lui	a5,0x2
    800038a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038a8:	0097ee63          	bltu	a5,s1,800038c4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038ac:	00000713          	li	a4,0
    800038b0:	000077b7          	lui	a5,0x7
    800038b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038b8:	fce7eee3          	bltu	a5,a4,80003894 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800038bc:	00170713          	addi	a4,a4,1
    800038c0:	ff1ff06f          	j	800038b0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800038c4:	00190913          	addi	s2,s2,1
    800038c8:	00f00793          	li	a5,15
    800038cc:	0527e063          	bltu	a5,s2,8000390c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800038d0:	00006517          	auipc	a0,0x6
    800038d4:	8b050513          	addi	a0,a0,-1872 # 80009180 <_ZZ12printIntegermE6digits+0x120>
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	c44080e7          	jalr	-956(ra) # 8000151c <_Z11printStringPKc>
    800038e0:	00000613          	li	a2,0
    800038e4:	00a00593          	li	a1,10
    800038e8:	0009051b          	sext.w	a0,s2
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	dc8080e7          	jalr	-568(ra) # 800016b4 <_Z8printIntiii>
    800038f4:	00006517          	auipc	a0,0x6
    800038f8:	ba450513          	addi	a0,a0,-1116 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	c20080e7          	jalr	-992(ra) # 8000151c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003904:	00000493          	li	s1,0
    80003908:	f99ff06f          	j	800038a0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000390c:	00006517          	auipc	a0,0x6
    80003910:	87c50513          	addi	a0,a0,-1924 # 80009188 <_ZZ12printIntegermE6digits+0x128>
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	c08080e7          	jalr	-1016(ra) # 8000151c <_Z11printStringPKc>
    finishedB = true;
    8000391c:	00100793          	li	a5,1
    80003920:	00008717          	auipc	a4,0x8
    80003924:	bef704a3          	sb	a5,-1047(a4) # 8000b509 <_ZL9finishedB>
    thread_dispatch();
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	a10080e7          	jalr	-1520(ra) # 80001338 <_Z15thread_dispatchv>
}
    80003930:	01813083          	ld	ra,24(sp)
    80003934:	01013403          	ld	s0,16(sp)
    80003938:	00813483          	ld	s1,8(sp)
    8000393c:	00013903          	ld	s2,0(sp)
    80003940:	02010113          	addi	sp,sp,32
    80003944:	00008067          	ret

0000000080003948 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003948:	fe010113          	addi	sp,sp,-32
    8000394c:	00113c23          	sd	ra,24(sp)
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00913423          	sd	s1,8(sp)
    80003958:	01213023          	sd	s2,0(sp)
    8000395c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003960:	00000493          	li	s1,0
    80003964:	0400006f          	j	800039a4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003968:	00006517          	auipc	a0,0x6
    8000396c:	83050513          	addi	a0,a0,-2000 # 80009198 <_ZZ12printIntegermE6digits+0x138>
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	bac080e7          	jalr	-1108(ra) # 8000151c <_Z11printStringPKc>
    80003978:	00000613          	li	a2,0
    8000397c:	00a00593          	li	a1,10
    80003980:	00048513          	mv	a0,s1
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	d30080e7          	jalr	-720(ra) # 800016b4 <_Z8printIntiii>
    8000398c:	00006517          	auipc	a0,0x6
    80003990:	b0c50513          	addi	a0,a0,-1268 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	b88080e7          	jalr	-1144(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000399c:	0014849b          	addiw	s1,s1,1
    800039a0:	0ff4f493          	andi	s1,s1,255
    800039a4:	00200793          	li	a5,2
    800039a8:	fc97f0e3          	bgeu	a5,s1,80003968 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800039ac:	00005517          	auipc	a0,0x5
    800039b0:	7f450513          	addi	a0,a0,2036 # 800091a0 <_ZZ12printIntegermE6digits+0x140>
    800039b4:	ffffe097          	auipc	ra,0xffffe
    800039b8:	b68080e7          	jalr	-1176(ra) # 8000151c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800039bc:	00700313          	li	t1,7
    thread_dispatch();
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	978080e7          	jalr	-1672(ra) # 80001338 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800039c8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800039cc:	00005517          	auipc	a0,0x5
    800039d0:	7e450513          	addi	a0,a0,2020 # 800091b0 <_ZZ12printIntegermE6digits+0x150>
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	b48080e7          	jalr	-1208(ra) # 8000151c <_Z11printStringPKc>
    800039dc:	00000613          	li	a2,0
    800039e0:	00a00593          	li	a1,10
    800039e4:	0009051b          	sext.w	a0,s2
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	ccc080e7          	jalr	-820(ra) # 800016b4 <_Z8printIntiii>
    800039f0:	00006517          	auipc	a0,0x6
    800039f4:	aa850513          	addi	a0,a0,-1368 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	b24080e7          	jalr	-1244(ra) # 8000151c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003a00:	00c00513          	li	a0,12
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	d30080e7          	jalr	-720(ra) # 80003734 <_ZL9fibonaccim>
    80003a0c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003a10:	00005517          	auipc	a0,0x5
    80003a14:	7a850513          	addi	a0,a0,1960 # 800091b8 <_ZZ12printIntegermE6digits+0x158>
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	b04080e7          	jalr	-1276(ra) # 8000151c <_Z11printStringPKc>
    80003a20:	00000613          	li	a2,0
    80003a24:	00a00593          	li	a1,10
    80003a28:	0009051b          	sext.w	a0,s2
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	c88080e7          	jalr	-888(ra) # 800016b4 <_Z8printIntiii>
    80003a34:	00006517          	auipc	a0,0x6
    80003a38:	a6450513          	addi	a0,a0,-1436 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	ae0080e7          	jalr	-1312(ra) # 8000151c <_Z11printStringPKc>
    80003a44:	0400006f          	j	80003a84 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a48:	00005517          	auipc	a0,0x5
    80003a4c:	75050513          	addi	a0,a0,1872 # 80009198 <_ZZ12printIntegermE6digits+0x138>
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	acc080e7          	jalr	-1332(ra) # 8000151c <_Z11printStringPKc>
    80003a58:	00000613          	li	a2,0
    80003a5c:	00a00593          	li	a1,10
    80003a60:	00048513          	mv	a0,s1
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	c50080e7          	jalr	-944(ra) # 800016b4 <_Z8printIntiii>
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	a2c50513          	addi	a0,a0,-1492 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	aa8080e7          	jalr	-1368(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003a7c:	0014849b          	addiw	s1,s1,1
    80003a80:	0ff4f493          	andi	s1,s1,255
    80003a84:	00500793          	li	a5,5
    80003a88:	fc97f0e3          	bgeu	a5,s1,80003a48 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003a8c:	00005517          	auipc	a0,0x5
    80003a90:	73c50513          	addi	a0,a0,1852 # 800091c8 <_ZZ12printIntegermE6digits+0x168>
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	a88080e7          	jalr	-1400(ra) # 8000151c <_Z11printStringPKc>
    finishedC = true;
    80003a9c:	00100793          	li	a5,1
    80003aa0:	00008717          	auipc	a4,0x8
    80003aa4:	a6f70523          	sb	a5,-1430(a4) # 8000b50a <_ZL9finishedC>
    thread_dispatch();
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	890080e7          	jalr	-1904(ra) # 80001338 <_Z15thread_dispatchv>
}
    80003ab0:	01813083          	ld	ra,24(sp)
    80003ab4:	01013403          	ld	s0,16(sp)
    80003ab8:	00813483          	ld	s1,8(sp)
    80003abc:	00013903          	ld	s2,0(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret

0000000080003ac8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003ac8:	fe010113          	addi	sp,sp,-32
    80003acc:	00113c23          	sd	ra,24(sp)
    80003ad0:	00813823          	sd	s0,16(sp)
    80003ad4:	00913423          	sd	s1,8(sp)
    80003ad8:	01213023          	sd	s2,0(sp)
    80003adc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ae0:	00a00493          	li	s1,10
    80003ae4:	0400006f          	j	80003b24 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ae8:	00005517          	auipc	a0,0x5
    80003aec:	6f050513          	addi	a0,a0,1776 # 800091d8 <_ZZ12printIntegermE6digits+0x178>
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	a2c080e7          	jalr	-1492(ra) # 8000151c <_Z11printStringPKc>
    80003af8:	00000613          	li	a2,0
    80003afc:	00a00593          	li	a1,10
    80003b00:	00048513          	mv	a0,s1
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	bb0080e7          	jalr	-1104(ra) # 800016b4 <_Z8printIntiii>
    80003b0c:	00006517          	auipc	a0,0x6
    80003b10:	98c50513          	addi	a0,a0,-1652 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	a08080e7          	jalr	-1528(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003b1c:	0014849b          	addiw	s1,s1,1
    80003b20:	0ff4f493          	andi	s1,s1,255
    80003b24:	00c00793          	li	a5,12
    80003b28:	fc97f0e3          	bgeu	a5,s1,80003ae8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003b2c:	00005517          	auipc	a0,0x5
    80003b30:	6b450513          	addi	a0,a0,1716 # 800091e0 <_ZZ12printIntegermE6digits+0x180>
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	9e8080e7          	jalr	-1560(ra) # 8000151c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003b3c:	00500313          	li	t1,5
    thread_dispatch();
    80003b40:	ffffd097          	auipc	ra,0xffffd
    80003b44:	7f8080e7          	jalr	2040(ra) # 80001338 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003b48:	01000513          	li	a0,16
    80003b4c:	00000097          	auipc	ra,0x0
    80003b50:	be8080e7          	jalr	-1048(ra) # 80003734 <_ZL9fibonaccim>
    80003b54:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003b58:	00005517          	auipc	a0,0x5
    80003b5c:	69850513          	addi	a0,a0,1688 # 800091f0 <_ZZ12printIntegermE6digits+0x190>
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	9bc080e7          	jalr	-1604(ra) # 8000151c <_Z11printStringPKc>
    80003b68:	00000613          	li	a2,0
    80003b6c:	00a00593          	li	a1,10
    80003b70:	0009051b          	sext.w	a0,s2
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	b40080e7          	jalr	-1216(ra) # 800016b4 <_Z8printIntiii>
    80003b7c:	00006517          	auipc	a0,0x6
    80003b80:	91c50513          	addi	a0,a0,-1764 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	998080e7          	jalr	-1640(ra) # 8000151c <_Z11printStringPKc>
    80003b8c:	0400006f          	j	80003bcc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b90:	00005517          	auipc	a0,0x5
    80003b94:	64850513          	addi	a0,a0,1608 # 800091d8 <_ZZ12printIntegermE6digits+0x178>
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	984080e7          	jalr	-1660(ra) # 8000151c <_Z11printStringPKc>
    80003ba0:	00000613          	li	a2,0
    80003ba4:	00a00593          	li	a1,10
    80003ba8:	00048513          	mv	a0,s1
    80003bac:	ffffe097          	auipc	ra,0xffffe
    80003bb0:	b08080e7          	jalr	-1272(ra) # 800016b4 <_Z8printIntiii>
    80003bb4:	00006517          	auipc	a0,0x6
    80003bb8:	8e450513          	addi	a0,a0,-1820 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	960080e7          	jalr	-1696(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003bc4:	0014849b          	addiw	s1,s1,1
    80003bc8:	0ff4f493          	andi	s1,s1,255
    80003bcc:	00f00793          	li	a5,15
    80003bd0:	fc97f0e3          	bgeu	a5,s1,80003b90 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	62c50513          	addi	a0,a0,1580 # 80009200 <_ZZ12printIntegermE6digits+0x1a0>
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	940080e7          	jalr	-1728(ra) # 8000151c <_Z11printStringPKc>
    finishedD = true;
    80003be4:	00100793          	li	a5,1
    80003be8:	00008717          	auipc	a4,0x8
    80003bec:	92f701a3          	sb	a5,-1757(a4) # 8000b50b <_ZL9finishedD>
    thread_dispatch();
    80003bf0:	ffffd097          	auipc	ra,0xffffd
    80003bf4:	748080e7          	jalr	1864(ra) # 80001338 <_Z15thread_dispatchv>
}
    80003bf8:	01813083          	ld	ra,24(sp)
    80003bfc:	01013403          	ld	s0,16(sp)
    80003c00:	00813483          	ld	s1,8(sp)
    80003c04:	00013903          	ld	s2,0(sp)
    80003c08:	02010113          	addi	sp,sp,32
    80003c0c:	00008067          	ret

0000000080003c10 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003c10:	fc010113          	addi	sp,sp,-64
    80003c14:	02113c23          	sd	ra,56(sp)
    80003c18:	02813823          	sd	s0,48(sp)
    80003c1c:	02913423          	sd	s1,40(sp)
    80003c20:	03213023          	sd	s2,32(sp)
    80003c24:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003c28:	02000513          	li	a0,32
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	058080e7          	jalr	88(ra) # 80001c84 <_Znwm>
    80003c34:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	5f0080e7          	jalr	1520(ra) # 80002228 <_ZN6ThreadC1Ev>
    80003c40:	00007797          	auipc	a5,0x7
    80003c44:	67878793          	addi	a5,a5,1656 # 8000b2b8 <_ZTV7WorkerA+0x10>
    80003c48:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003c4c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003c50:	00005517          	auipc	a0,0x5
    80003c54:	5c050513          	addi	a0,a0,1472 # 80009210 <_ZZ12printIntegermE6digits+0x1b0>
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	8c4080e7          	jalr	-1852(ra) # 8000151c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003c60:	02000513          	li	a0,32
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	020080e7          	jalr	32(ra) # 80001c84 <_Znwm>
    80003c6c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	5b8080e7          	jalr	1464(ra) # 80002228 <_ZN6ThreadC1Ev>
    80003c78:	00007797          	auipc	a5,0x7
    80003c7c:	66878793          	addi	a5,a5,1640 # 8000b2e0 <_ZTV7WorkerB+0x10>
    80003c80:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003c84:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003c88:	00005517          	auipc	a0,0x5
    80003c8c:	5a050513          	addi	a0,a0,1440 # 80009228 <_ZZ12printIntegermE6digits+0x1c8>
    80003c90:	ffffe097          	auipc	ra,0xffffe
    80003c94:	88c080e7          	jalr	-1908(ra) # 8000151c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003c98:	02000513          	li	a0,32
    80003c9c:	ffffe097          	auipc	ra,0xffffe
    80003ca0:	fe8080e7          	jalr	-24(ra) # 80001c84 <_Znwm>
    80003ca4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	580080e7          	jalr	1408(ra) # 80002228 <_ZN6ThreadC1Ev>
    80003cb0:	00007797          	auipc	a5,0x7
    80003cb4:	65878793          	addi	a5,a5,1624 # 8000b308 <_ZTV7WorkerC+0x10>
    80003cb8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003cbc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003cc0:	00005517          	auipc	a0,0x5
    80003cc4:	58050513          	addi	a0,a0,1408 # 80009240 <_ZZ12printIntegermE6digits+0x1e0>
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	854080e7          	jalr	-1964(ra) # 8000151c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003cd0:	02000513          	li	a0,32
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	fb0080e7          	jalr	-80(ra) # 80001c84 <_Znwm>
    80003cdc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	548080e7          	jalr	1352(ra) # 80002228 <_ZN6ThreadC1Ev>
    80003ce8:	00007797          	auipc	a5,0x7
    80003cec:	64878793          	addi	a5,a5,1608 # 8000b330 <_ZTV7WorkerD+0x10>
    80003cf0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003cf4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003cf8:	00005517          	auipc	a0,0x5
    80003cfc:	56050513          	addi	a0,a0,1376 # 80009258 <_ZZ12printIntegermE6digits+0x1f8>
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	81c080e7          	jalr	-2020(ra) # 8000151c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003d08:	00000493          	li	s1,0
    80003d0c:	00300793          	li	a5,3
    80003d10:	0297c263          	blt	a5,s1,80003d34 <_Z20Threads_CPP_API_testv+0x124>
        threads[i]->start();
    80003d14:	00349793          	slli	a5,s1,0x3
    80003d18:	fe040713          	addi	a4,s0,-32
    80003d1c:	00f707b3          	add	a5,a4,a5
    80003d20:	fe07b503          	ld	a0,-32(a5)
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	4a4080e7          	jalr	1188(ra) # 800021c8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003d2c:	0014849b          	addiw	s1,s1,1
    80003d30:	fddff06f          	j	80003d0c <_Z20Threads_CPP_API_testv+0xfc>
    }
    printString("OVDE SAM DOSO\n");
    80003d34:	00005517          	auipc	a0,0x5
    80003d38:	53c50513          	addi	a0,a0,1340 # 80009270 <_ZZ12printIntegermE6digits+0x210>
    80003d3c:	ffffd097          	auipc	ra,0xffffd
    80003d40:	7e0080e7          	jalr	2016(ra) # 8000151c <_Z11printStringPKc>
    80003d44:	00c0006f          	j	80003d50 <_Z20Threads_CPP_API_testv+0x140>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	4b8080e7          	jalr	1208(ra) # 80002200 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003d50:	00007797          	auipc	a5,0x7
    80003d54:	7b87c783          	lbu	a5,1976(a5) # 8000b508 <_ZL9finishedA>
    80003d58:	fe0788e3          	beqz	a5,80003d48 <_Z20Threads_CPP_API_testv+0x138>
    80003d5c:	00007797          	auipc	a5,0x7
    80003d60:	7ad7c783          	lbu	a5,1965(a5) # 8000b509 <_ZL9finishedB>
    80003d64:	fe0782e3          	beqz	a5,80003d48 <_Z20Threads_CPP_API_testv+0x138>
    80003d68:	00007797          	auipc	a5,0x7
    80003d6c:	7a27c783          	lbu	a5,1954(a5) # 8000b50a <_ZL9finishedC>
    80003d70:	fc078ce3          	beqz	a5,80003d48 <_Z20Threads_CPP_API_testv+0x138>
    80003d74:	00007797          	auipc	a5,0x7
    80003d78:	7977c783          	lbu	a5,1943(a5) # 8000b50b <_ZL9finishedD>
    80003d7c:	fc0786e3          	beqz	a5,80003d48 <_Z20Threads_CPP_API_testv+0x138>
    }
    printString("OVDE NISAM DOSO\n");
    80003d80:	00005517          	auipc	a0,0x5
    80003d84:	50050513          	addi	a0,a0,1280 # 80009280 <_ZZ12printIntegermE6digits+0x220>
    80003d88:	ffffd097          	auipc	ra,0xffffd
    80003d8c:	794080e7          	jalr	1940(ra) # 8000151c <_Z11printStringPKc>

    for (auto thread: threads) { delete thread; }
    80003d90:	fc040493          	addi	s1,s0,-64
    80003d94:	0080006f          	j	80003d9c <_Z20Threads_CPP_API_testv+0x18c>
    80003d98:	00848493          	addi	s1,s1,8
    80003d9c:	fe040793          	addi	a5,s0,-32
    80003da0:	00f48e63          	beq	s1,a5,80003dbc <_Z20Threads_CPP_API_testv+0x1ac>
    80003da4:	0004b503          	ld	a0,0(s1)
    80003da8:	fe0508e3          	beqz	a0,80003d98 <_Z20Threads_CPP_API_testv+0x188>
    80003dac:	00053783          	ld	a5,0(a0)
    80003db0:	0087b783          	ld	a5,8(a5)
    80003db4:	000780e7          	jalr	a5
    80003db8:	fe1ff06f          	j	80003d98 <_Z20Threads_CPP_API_testv+0x188>
    printString("OVDE NISAM DOSO2.0\n");
    80003dbc:	00005517          	auipc	a0,0x5
    80003dc0:	4dc50513          	addi	a0,a0,1244 # 80009298 <_ZZ12printIntegermE6digits+0x238>
    80003dc4:	ffffd097          	auipc	ra,0xffffd
    80003dc8:	758080e7          	jalr	1880(ra) # 8000151c <_Z11printStringPKc>

}
    80003dcc:	03813083          	ld	ra,56(sp)
    80003dd0:	03013403          	ld	s0,48(sp)
    80003dd4:	02813483          	ld	s1,40(sp)
    80003dd8:	02013903          	ld	s2,32(sp)
    80003ddc:	04010113          	addi	sp,sp,64
    80003de0:	00008067          	ret
    80003de4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003de8:	00048513          	mv	a0,s1
    80003dec:	ffffe097          	auipc	ra,0xffffe
    80003df0:	ee8080e7          	jalr	-280(ra) # 80001cd4 <_ZdlPv>
    80003df4:	00090513          	mv	a0,s2
    80003df8:	00009097          	auipc	ra,0x9
    80003dfc:	810080e7          	jalr	-2032(ra) # 8000c608 <_Unwind_Resume>
    80003e00:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e04:	00048513          	mv	a0,s1
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	ecc080e7          	jalr	-308(ra) # 80001cd4 <_ZdlPv>
    80003e10:	00090513          	mv	a0,s2
    80003e14:	00008097          	auipc	ra,0x8
    80003e18:	7f4080e7          	jalr	2036(ra) # 8000c608 <_Unwind_Resume>
    80003e1c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e20:	00048513          	mv	a0,s1
    80003e24:	ffffe097          	auipc	ra,0xffffe
    80003e28:	eb0080e7          	jalr	-336(ra) # 80001cd4 <_ZdlPv>
    80003e2c:	00090513          	mv	a0,s2
    80003e30:	00008097          	auipc	ra,0x8
    80003e34:	7d8080e7          	jalr	2008(ra) # 8000c608 <_Unwind_Resume>
    80003e38:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	ffffe097          	auipc	ra,0xffffe
    80003e44:	e94080e7          	jalr	-364(ra) # 80001cd4 <_ZdlPv>
    80003e48:	00090513          	mv	a0,s2
    80003e4c:	00008097          	auipc	ra,0x8
    80003e50:	7bc080e7          	jalr	1980(ra) # 8000c608 <_Unwind_Resume>

0000000080003e54 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003e54:	ff010113          	addi	sp,sp,-16
    80003e58:	00113423          	sd	ra,8(sp)
    80003e5c:	00813023          	sd	s0,0(sp)
    80003e60:	01010413          	addi	s0,sp,16
    80003e64:	00007797          	auipc	a5,0x7
    80003e68:	45478793          	addi	a5,a5,1108 # 8000b2b8 <_ZTV7WorkerA+0x10>
    80003e6c:	00f53023          	sd	a5,0(a0)
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	214080e7          	jalr	532(ra) # 80002084 <_ZN6ThreadD1Ev>
    80003e78:	00813083          	ld	ra,8(sp)
    80003e7c:	00013403          	ld	s0,0(sp)
    80003e80:	01010113          	addi	sp,sp,16
    80003e84:	00008067          	ret

0000000080003e88 <_ZN7WorkerAD0Ev>:
    80003e88:	fe010113          	addi	sp,sp,-32
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	00813823          	sd	s0,16(sp)
    80003e94:	00913423          	sd	s1,8(sp)
    80003e98:	02010413          	addi	s0,sp,32
    80003e9c:	00050493          	mv	s1,a0
    80003ea0:	00007797          	auipc	a5,0x7
    80003ea4:	41878793          	addi	a5,a5,1048 # 8000b2b8 <_ZTV7WorkerA+0x10>
    80003ea8:	00f53023          	sd	a5,0(a0)
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	1d8080e7          	jalr	472(ra) # 80002084 <_ZN6ThreadD1Ev>
    80003eb4:	00048513          	mv	a0,s1
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	e1c080e7          	jalr	-484(ra) # 80001cd4 <_ZdlPv>
    80003ec0:	01813083          	ld	ra,24(sp)
    80003ec4:	01013403          	ld	s0,16(sp)
    80003ec8:	00813483          	ld	s1,8(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ed4:	ff010113          	addi	sp,sp,-16
    80003ed8:	00113423          	sd	ra,8(sp)
    80003edc:	00813023          	sd	s0,0(sp)
    80003ee0:	01010413          	addi	s0,sp,16
    80003ee4:	00007797          	auipc	a5,0x7
    80003ee8:	3fc78793          	addi	a5,a5,1020 # 8000b2e0 <_ZTV7WorkerB+0x10>
    80003eec:	00f53023          	sd	a5,0(a0)
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	194080e7          	jalr	404(ra) # 80002084 <_ZN6ThreadD1Ev>
    80003ef8:	00813083          	ld	ra,8(sp)
    80003efc:	00013403          	ld	s0,0(sp)
    80003f00:	01010113          	addi	sp,sp,16
    80003f04:	00008067          	ret

0000000080003f08 <_ZN7WorkerBD0Ev>:
    80003f08:	fe010113          	addi	sp,sp,-32
    80003f0c:	00113c23          	sd	ra,24(sp)
    80003f10:	00813823          	sd	s0,16(sp)
    80003f14:	00913423          	sd	s1,8(sp)
    80003f18:	02010413          	addi	s0,sp,32
    80003f1c:	00050493          	mv	s1,a0
    80003f20:	00007797          	auipc	a5,0x7
    80003f24:	3c078793          	addi	a5,a5,960 # 8000b2e0 <_ZTV7WorkerB+0x10>
    80003f28:	00f53023          	sd	a5,0(a0)
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	158080e7          	jalr	344(ra) # 80002084 <_ZN6ThreadD1Ev>
    80003f34:	00048513          	mv	a0,s1
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	d9c080e7          	jalr	-612(ra) # 80001cd4 <_ZdlPv>
    80003f40:	01813083          	ld	ra,24(sp)
    80003f44:	01013403          	ld	s0,16(sp)
    80003f48:	00813483          	ld	s1,8(sp)
    80003f4c:	02010113          	addi	sp,sp,32
    80003f50:	00008067          	ret

0000000080003f54 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003f54:	ff010113          	addi	sp,sp,-16
    80003f58:	00113423          	sd	ra,8(sp)
    80003f5c:	00813023          	sd	s0,0(sp)
    80003f60:	01010413          	addi	s0,sp,16
    80003f64:	00007797          	auipc	a5,0x7
    80003f68:	3a478793          	addi	a5,a5,932 # 8000b308 <_ZTV7WorkerC+0x10>
    80003f6c:	00f53023          	sd	a5,0(a0)
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	114080e7          	jalr	276(ra) # 80002084 <_ZN6ThreadD1Ev>
    80003f78:	00813083          	ld	ra,8(sp)
    80003f7c:	00013403          	ld	s0,0(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <_ZN7WorkerCD0Ev>:
    80003f88:	fe010113          	addi	sp,sp,-32
    80003f8c:	00113c23          	sd	ra,24(sp)
    80003f90:	00813823          	sd	s0,16(sp)
    80003f94:	00913423          	sd	s1,8(sp)
    80003f98:	02010413          	addi	s0,sp,32
    80003f9c:	00050493          	mv	s1,a0
    80003fa0:	00007797          	auipc	a5,0x7
    80003fa4:	36878793          	addi	a5,a5,872 # 8000b308 <_ZTV7WorkerC+0x10>
    80003fa8:	00f53023          	sd	a5,0(a0)
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	0d8080e7          	jalr	216(ra) # 80002084 <_ZN6ThreadD1Ev>
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	d1c080e7          	jalr	-740(ra) # 80001cd4 <_ZdlPv>
    80003fc0:	01813083          	ld	ra,24(sp)
    80003fc4:	01013403          	ld	s0,16(sp)
    80003fc8:	00813483          	ld	s1,8(sp)
    80003fcc:	02010113          	addi	sp,sp,32
    80003fd0:	00008067          	ret

0000000080003fd4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003fd4:	ff010113          	addi	sp,sp,-16
    80003fd8:	00113423          	sd	ra,8(sp)
    80003fdc:	00813023          	sd	s0,0(sp)
    80003fe0:	01010413          	addi	s0,sp,16
    80003fe4:	00007797          	auipc	a5,0x7
    80003fe8:	34c78793          	addi	a5,a5,844 # 8000b330 <_ZTV7WorkerD+0x10>
    80003fec:	00f53023          	sd	a5,0(a0)
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	094080e7          	jalr	148(ra) # 80002084 <_ZN6ThreadD1Ev>
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN7WorkerDD0Ev>:
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	02010413          	addi	s0,sp,32
    8000401c:	00050493          	mv	s1,a0
    80004020:	00007797          	auipc	a5,0x7
    80004024:	31078793          	addi	a5,a5,784 # 8000b330 <_ZTV7WorkerD+0x10>
    80004028:	00f53023          	sd	a5,0(a0)
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	058080e7          	jalr	88(ra) # 80002084 <_ZN6ThreadD1Ev>
    80004034:	00048513          	mv	a0,s1
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	c9c080e7          	jalr	-868(ra) # 80001cd4 <_ZdlPv>
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	00813483          	ld	s1,8(sp)
    8000404c:	02010113          	addi	sp,sp,32
    80004050:	00008067          	ret

0000000080004054 <_ZN7WorkerA3runEv>:
    void run() override {
    80004054:	ff010113          	addi	sp,sp,-16
    80004058:	00113423          	sd	ra,8(sp)
    8000405c:	00813023          	sd	s0,0(sp)
    80004060:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004064:	00000593          	li	a1,0
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	740080e7          	jalr	1856(ra) # 800037a8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004070:	00813083          	ld	ra,8(sp)
    80004074:	00013403          	ld	s0,0(sp)
    80004078:	01010113          	addi	sp,sp,16
    8000407c:	00008067          	ret

0000000080004080 <_ZN7WorkerB3runEv>:
    void run() override {
    80004080:	ff010113          	addi	sp,sp,-16
    80004084:	00113423          	sd	ra,8(sp)
    80004088:	00813023          	sd	s0,0(sp)
    8000408c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004090:	00000593          	li	a1,0
    80004094:	fffff097          	auipc	ra,0xfffff
    80004098:	7e0080e7          	jalr	2016(ra) # 80003874 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000409c:	00813083          	ld	ra,8(sp)
    800040a0:	00013403          	ld	s0,0(sp)
    800040a4:	01010113          	addi	sp,sp,16
    800040a8:	00008067          	ret

00000000800040ac <_ZN7WorkerC3runEv>:
    void run() override {
    800040ac:	ff010113          	addi	sp,sp,-16
    800040b0:	00113423          	sd	ra,8(sp)
    800040b4:	00813023          	sd	s0,0(sp)
    800040b8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800040bc:	00000593          	li	a1,0
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	888080e7          	jalr	-1912(ra) # 80003948 <_ZN7WorkerC11workerBodyCEPv>
    }
    800040c8:	00813083          	ld	ra,8(sp)
    800040cc:	00013403          	ld	s0,0(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret

00000000800040d8 <_ZN7WorkerD3runEv>:
    void run() override {
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00113423          	sd	ra,8(sp)
    800040e0:	00813023          	sd	s0,0(sp)
    800040e4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800040e8:	00000593          	li	a1,0
    800040ec:	00000097          	auipc	ra,0x0
    800040f0:	9dc080e7          	jalr	-1572(ra) # 80003ac8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800040f4:	00813083          	ld	ra,8(sp)
    800040f8:	00013403          	ld	s0,0(sp)
    800040fc:	01010113          	addi	sp,sp,16
    80004100:	00008067          	ret

0000000080004104 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004104:	f8010113          	addi	sp,sp,-128
    80004108:	06113c23          	sd	ra,120(sp)
    8000410c:	06813823          	sd	s0,112(sp)
    80004110:	06913423          	sd	s1,104(sp)
    80004114:	07213023          	sd	s2,96(sp)
    80004118:	05313c23          	sd	s3,88(sp)
    8000411c:	05413823          	sd	s4,80(sp)
    80004120:	05513423          	sd	s5,72(sp)
    80004124:	05613023          	sd	s6,64(sp)
    80004128:	03713c23          	sd	s7,56(sp)
    8000412c:	03813823          	sd	s8,48(sp)
    80004130:	03913423          	sd	s9,40(sp)
    80004134:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004138:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000413c:	00005517          	auipc	a0,0x5
    80004140:	f4450513          	addi	a0,a0,-188 # 80009080 <_ZZ12printIntegermE6digits+0x20>
    80004144:	ffffd097          	auipc	ra,0xffffd
    80004148:	3d8080e7          	jalr	984(ra) # 8000151c <_Z11printStringPKc>
    getString(input, 30);
    8000414c:	01e00593          	li	a1,30
    80004150:	f8040493          	addi	s1,s0,-128
    80004154:	00048513          	mv	a0,s1
    80004158:	ffffd097          	auipc	ra,0xffffd
    8000415c:	440080e7          	jalr	1088(ra) # 80001598 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004160:	00048513          	mv	a0,s1
    80004164:	ffffd097          	auipc	ra,0xffffd
    80004168:	500080e7          	jalr	1280(ra) # 80001664 <_Z11stringToIntPKc>
    8000416c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004170:	00005517          	auipc	a0,0x5
    80004174:	f3050513          	addi	a0,a0,-208 # 800090a0 <_ZZ12printIntegermE6digits+0x40>
    80004178:	ffffd097          	auipc	ra,0xffffd
    8000417c:	3a4080e7          	jalr	932(ra) # 8000151c <_Z11printStringPKc>
    getString(input, 30);
    80004180:	01e00593          	li	a1,30
    80004184:	00048513          	mv	a0,s1
    80004188:	ffffd097          	auipc	ra,0xffffd
    8000418c:	410080e7          	jalr	1040(ra) # 80001598 <_Z9getStringPci>
    n = stringToInt(input);
    80004190:	00048513          	mv	a0,s1
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	4d0080e7          	jalr	1232(ra) # 80001664 <_Z11stringToIntPKc>
    8000419c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800041a0:	00005517          	auipc	a0,0x5
    800041a4:	f2050513          	addi	a0,a0,-224 # 800090c0 <_ZZ12printIntegermE6digits+0x60>
    800041a8:	ffffd097          	auipc	ra,0xffffd
    800041ac:	374080e7          	jalr	884(ra) # 8000151c <_Z11printStringPKc>
    printInt(threadNum);
    800041b0:	00000613          	li	a2,0
    800041b4:	00a00593          	li	a1,10
    800041b8:	00098513          	mv	a0,s3
    800041bc:	ffffd097          	auipc	ra,0xffffd
    800041c0:	4f8080e7          	jalr	1272(ra) # 800016b4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800041c4:	00005517          	auipc	a0,0x5
    800041c8:	f1450513          	addi	a0,a0,-236 # 800090d8 <_ZZ12printIntegermE6digits+0x78>
    800041cc:	ffffd097          	auipc	ra,0xffffd
    800041d0:	350080e7          	jalr	848(ra) # 8000151c <_Z11printStringPKc>
    printInt(n);
    800041d4:	00000613          	li	a2,0
    800041d8:	00a00593          	li	a1,10
    800041dc:	00048513          	mv	a0,s1
    800041e0:	ffffd097          	auipc	ra,0xffffd
    800041e4:	4d4080e7          	jalr	1236(ra) # 800016b4 <_Z8printIntiii>
    printString(".\n");
    800041e8:	00005517          	auipc	a0,0x5
    800041ec:	f0850513          	addi	a0,a0,-248 # 800090f0 <_ZZ12printIntegermE6digits+0x90>
    800041f0:	ffffd097          	auipc	ra,0xffffd
    800041f4:	32c080e7          	jalr	812(ra) # 8000151c <_Z11printStringPKc>
    if (threadNum > n) {
    800041f8:	0334c463          	blt	s1,s3,80004220 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800041fc:	03305c63          	blez	s3,80004234 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004200:	03800513          	li	a0,56
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	a80080e7          	jalr	-1408(ra) # 80001c84 <_Znwm>
    8000420c:	00050a93          	mv	s5,a0
    80004210:	00048593          	mv	a1,s1
    80004214:	ffffd097          	auipc	ra,0xffffd
    80004218:	5b4080e7          	jalr	1460(ra) # 800017c8 <_ZN9BufferCPPC1Ei>
    8000421c:	0300006f          	j	8000424c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004220:	00005517          	auipc	a0,0x5
    80004224:	ed850513          	addi	a0,a0,-296 # 800090f8 <_ZZ12printIntegermE6digits+0x98>
    80004228:	ffffd097          	auipc	ra,0xffffd
    8000422c:	2f4080e7          	jalr	756(ra) # 8000151c <_Z11printStringPKc>
        return;
    80004230:	0140006f          	j	80004244 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004234:	00005517          	auipc	a0,0x5
    80004238:	f0450513          	addi	a0,a0,-252 # 80009138 <_ZZ12printIntegermE6digits+0xd8>
    8000423c:	ffffd097          	auipc	ra,0xffffd
    80004240:	2e0080e7          	jalr	736(ra) # 8000151c <_Z11printStringPKc>
        return;
    80004244:	000c0113          	mv	sp,s8
    80004248:	2240006f          	j	8000446c <_Z20testConsumerProducerv+0x368>
    waitForAll = new Semaphore(0);
    8000424c:	01000513          	li	a0,16
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	a34080e7          	jalr	-1484(ra) # 80001c84 <_Znwm>
    80004258:	00050913          	mv	s2,a0
    8000425c:	00000593          	li	a1,0
    80004260:	ffffe097          	auipc	ra,0xffffe
    80004264:	02c080e7          	jalr	44(ra) # 8000228c <_ZN9SemaphoreC1Ej>
    80004268:	00007797          	auipc	a5,0x7
    8000426c:	2b27b823          	sd	s2,688(a5) # 8000b518 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004270:	00399793          	slli	a5,s3,0x3
    80004274:	00f78793          	addi	a5,a5,15
    80004278:	ff07f793          	andi	a5,a5,-16
    8000427c:	40f10133          	sub	sp,sp,a5
    80004280:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004284:	0019871b          	addiw	a4,s3,1
    80004288:	00171793          	slli	a5,a4,0x1
    8000428c:	00e787b3          	add	a5,a5,a4
    80004290:	00379793          	slli	a5,a5,0x3
    80004294:	00f78793          	addi	a5,a5,15
    80004298:	ff07f793          	andi	a5,a5,-16
    8000429c:	40f10133          	sub	sp,sp,a5
    800042a0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800042a4:	00199493          	slli	s1,s3,0x1
    800042a8:	013484b3          	add	s1,s1,s3
    800042ac:	00349493          	slli	s1,s1,0x3
    800042b0:	009b04b3          	add	s1,s6,s1
    800042b4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800042b8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800042bc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042c0:	02800513          	li	a0,40
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	9c0080e7          	jalr	-1600(ra) # 80001c84 <_Znwm>
    800042cc:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800042d0:	ffffe097          	auipc	ra,0xffffe
    800042d4:	f58080e7          	jalr	-168(ra) # 80002228 <_ZN6ThreadC1Ev>
    800042d8:	00007797          	auipc	a5,0x7
    800042dc:	0d078793          	addi	a5,a5,208 # 8000b3a8 <_ZTV8Consumer+0x10>
    800042e0:	00fbb023          	sd	a5,0(s7)
    800042e4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800042e8:	000b8513          	mv	a0,s7
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	edc080e7          	jalr	-292(ra) # 800021c8 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800042f4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800042f8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800042fc:	00007797          	auipc	a5,0x7
    80004300:	21c7b783          	ld	a5,540(a5) # 8000b518 <_ZL10waitForAll>
    80004304:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004308:	02800513          	li	a0,40
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	978080e7          	jalr	-1672(ra) # 80001c84 <_Znwm>
    80004314:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	f10080e7          	jalr	-240(ra) # 80002228 <_ZN6ThreadC1Ev>
    80004320:	00007797          	auipc	a5,0x7
    80004324:	03878793          	addi	a5,a5,56 # 8000b358 <_ZTV16ProducerKeyborad+0x10>
    80004328:	00f4b023          	sd	a5,0(s1)
    8000432c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004330:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004334:	00048513          	mv	a0,s1
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	e90080e7          	jalr	-368(ra) # 800021c8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004340:	00100913          	li	s2,1
    80004344:	0300006f          	j	80004374 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004348:	00007797          	auipc	a5,0x7
    8000434c:	03878793          	addi	a5,a5,56 # 8000b380 <_ZTV8Producer+0x10>
    80004350:	00fcb023          	sd	a5,0(s9)
    80004354:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004358:	00391793          	slli	a5,s2,0x3
    8000435c:	00fa07b3          	add	a5,s4,a5
    80004360:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004364:	000c8513          	mv	a0,s9
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	e60080e7          	jalr	-416(ra) # 800021c8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004370:	0019091b          	addiw	s2,s2,1
    80004374:	05395263          	bge	s2,s3,800043b8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004378:	00191493          	slli	s1,s2,0x1
    8000437c:	012484b3          	add	s1,s1,s2
    80004380:	00349493          	slli	s1,s1,0x3
    80004384:	009b04b3          	add	s1,s6,s1
    80004388:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000438c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004390:	00007797          	auipc	a5,0x7
    80004394:	1887b783          	ld	a5,392(a5) # 8000b518 <_ZL10waitForAll>
    80004398:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000439c:	02800513          	li	a0,40
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	8e4080e7          	jalr	-1820(ra) # 80001c84 <_Znwm>
    800043a8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043ac:	ffffe097          	auipc	ra,0xffffe
    800043b0:	e7c080e7          	jalr	-388(ra) # 80002228 <_ZN6ThreadC1Ev>
    800043b4:	f95ff06f          	j	80004348 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	e48080e7          	jalr	-440(ra) # 80002200 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800043c0:	00000493          	li	s1,0
    800043c4:	0099ce63          	blt	s3,s1,800043e0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800043c8:	00007517          	auipc	a0,0x7
    800043cc:	15053503          	ld	a0,336(a0) # 8000b518 <_ZL10waitForAll>
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	ef4080e7          	jalr	-268(ra) # 800022c4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800043d8:	0014849b          	addiw	s1,s1,1
    800043dc:	fe9ff06f          	j	800043c4 <_Z20testConsumerProducerv+0x2c0>
    printString("GOTOV WAIT SAD IDE DELETE\n");
    800043e0:	00005517          	auipc	a0,0x5
    800043e4:	ed050513          	addi	a0,a0,-304 # 800092b0 <_ZZ12printIntegermE6digits+0x250>
    800043e8:	ffffd097          	auipc	ra,0xffffd
    800043ec:	134080e7          	jalr	308(ra) # 8000151c <_Z11printStringPKc>
    delete waitForAll;
    800043f0:	00007517          	auipc	a0,0x7
    800043f4:	12853503          	ld	a0,296(a0) # 8000b518 <_ZL10waitForAll>
    800043f8:	00050863          	beqz	a0,80004408 <_Z20testConsumerProducerv+0x304>
    800043fc:	00053783          	ld	a5,0(a0)
    80004400:	0087b783          	ld	a5,8(a5)
    80004404:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004408:	00000493          	li	s1,0
    8000440c:	0080006f          	j	80004414 <_Z20testConsumerProducerv+0x310>
    for (int i = 0; i < threadNum; i++) {
    80004410:	0014849b          	addiw	s1,s1,1
    80004414:	0334d263          	bge	s1,s3,80004438 <_Z20testConsumerProducerv+0x334>
        delete producers[i];
    80004418:	00349793          	slli	a5,s1,0x3
    8000441c:	00fa07b3          	add	a5,s4,a5
    80004420:	0007b503          	ld	a0,0(a5)
    80004424:	fe0506e3          	beqz	a0,80004410 <_Z20testConsumerProducerv+0x30c>
    80004428:	00053783          	ld	a5,0(a0)
    8000442c:	0087b783          	ld	a5,8(a5)
    80004430:	000780e7          	jalr	a5
    80004434:	fddff06f          	j	80004410 <_Z20testConsumerProducerv+0x30c>
    delete consumer;
    80004438:	000b8a63          	beqz	s7,8000444c <_Z20testConsumerProducerv+0x348>
    8000443c:	000bb783          	ld	a5,0(s7)
    80004440:	0087b783          	ld	a5,8(a5)
    80004444:	000b8513          	mv	a0,s7
    80004448:	000780e7          	jalr	a5
    delete buffer;
    8000444c:	000a8e63          	beqz	s5,80004468 <_Z20testConsumerProducerv+0x364>
    80004450:	000a8513          	mv	a0,s5
    80004454:	ffffd097          	auipc	ra,0xffffd
    80004458:	66c080e7          	jalr	1644(ra) # 80001ac0 <_ZN9BufferCPPD1Ev>
    8000445c:	000a8513          	mv	a0,s5
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	874080e7          	jalr	-1932(ra) # 80001cd4 <_ZdlPv>
    80004468:	000c0113          	mv	sp,s8
}
    8000446c:	f8040113          	addi	sp,s0,-128
    80004470:	07813083          	ld	ra,120(sp)
    80004474:	07013403          	ld	s0,112(sp)
    80004478:	06813483          	ld	s1,104(sp)
    8000447c:	06013903          	ld	s2,96(sp)
    80004480:	05813983          	ld	s3,88(sp)
    80004484:	05013a03          	ld	s4,80(sp)
    80004488:	04813a83          	ld	s5,72(sp)
    8000448c:	04013b03          	ld	s6,64(sp)
    80004490:	03813b83          	ld	s7,56(sp)
    80004494:	03013c03          	ld	s8,48(sp)
    80004498:	02813c83          	ld	s9,40(sp)
    8000449c:	08010113          	addi	sp,sp,128
    800044a0:	00008067          	ret
    800044a4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800044a8:	000a8513          	mv	a0,s5
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	828080e7          	jalr	-2008(ra) # 80001cd4 <_ZdlPv>
    800044b4:	00048513          	mv	a0,s1
    800044b8:	00008097          	auipc	ra,0x8
    800044bc:	150080e7          	jalr	336(ra) # 8000c608 <_Unwind_Resume>
    800044c0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800044c4:	00090513          	mv	a0,s2
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	80c080e7          	jalr	-2036(ra) # 80001cd4 <_ZdlPv>
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00008097          	auipc	ra,0x8
    800044d8:	134080e7          	jalr	308(ra) # 8000c608 <_Unwind_Resume>
    800044dc:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800044e0:	000b8513          	mv	a0,s7
    800044e4:	ffffd097          	auipc	ra,0xffffd
    800044e8:	7f0080e7          	jalr	2032(ra) # 80001cd4 <_ZdlPv>
    800044ec:	00048513          	mv	a0,s1
    800044f0:	00008097          	auipc	ra,0x8
    800044f4:	118080e7          	jalr	280(ra) # 8000c608 <_Unwind_Resume>
    800044f8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800044fc:	00048513          	mv	a0,s1
    80004500:	ffffd097          	auipc	ra,0xffffd
    80004504:	7d4080e7          	jalr	2004(ra) # 80001cd4 <_ZdlPv>
    80004508:	00090513          	mv	a0,s2
    8000450c:	00008097          	auipc	ra,0x8
    80004510:	0fc080e7          	jalr	252(ra) # 8000c608 <_Unwind_Resume>
    80004514:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004518:	000c8513          	mv	a0,s9
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	7b8080e7          	jalr	1976(ra) # 80001cd4 <_ZdlPv>
    80004524:	00048513          	mv	a0,s1
    80004528:	00008097          	auipc	ra,0x8
    8000452c:	0e0080e7          	jalr	224(ra) # 8000c608 <_Unwind_Resume>

0000000080004530 <_ZN8Consumer3runEv>:
    void run() override {
    80004530:	fd010113          	addi	sp,sp,-48
    80004534:	02113423          	sd	ra,40(sp)
    80004538:	02813023          	sd	s0,32(sp)
    8000453c:	00913c23          	sd	s1,24(sp)
    80004540:	01213823          	sd	s2,16(sp)
    80004544:	01313423          	sd	s3,8(sp)
    80004548:	03010413          	addi	s0,sp,48
    8000454c:	00050913          	mv	s2,a0
        int i = 0;
    80004550:	00000993          	li	s3,0
    80004554:	0100006f          	j	80004564 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004558:	00a00513          	li	a0,10
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	de8080e7          	jalr	-536(ra) # 80002344 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004564:	00007797          	auipc	a5,0x7
    80004568:	fac7a783          	lw	a5,-84(a5) # 8000b510 <_ZL9threadEnd>
    8000456c:	04079a63          	bnez	a5,800045c0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004570:	02093783          	ld	a5,32(s2)
    80004574:	0087b503          	ld	a0,8(a5)
    80004578:	ffffd097          	auipc	ra,0xffffd
    8000457c:	434080e7          	jalr	1076(ra) # 800019ac <_ZN9BufferCPP3getEv>
            i++;
    80004580:	0019849b          	addiw	s1,s3,1
    80004584:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004588:	0ff57513          	andi	a0,a0,255
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	db8080e7          	jalr	-584(ra) # 80002344 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004594:	05000793          	li	a5,80
    80004598:	02f4e4bb          	remw	s1,s1,a5
    8000459c:	fc0494e3          	bnez	s1,80004564 <_ZN8Consumer3runEv+0x34>
    800045a0:	fb9ff06f          	j	80004558 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800045a4:	02093783          	ld	a5,32(s2)
    800045a8:	0087b503          	ld	a0,8(a5)
    800045ac:	ffffd097          	auipc	ra,0xffffd
    800045b0:	400080e7          	jalr	1024(ra) # 800019ac <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800045b4:	0ff57513          	andi	a0,a0,255
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	d8c080e7          	jalr	-628(ra) # 80002344 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800045c0:	02093783          	ld	a5,32(s2)
    800045c4:	0087b503          	ld	a0,8(a5)
    800045c8:	ffffd097          	auipc	ra,0xffffd
    800045cc:	470080e7          	jalr	1136(ra) # 80001a38 <_ZN9BufferCPP6getCntEv>
    800045d0:	fca04ae3          	bgtz	a0,800045a4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800045d4:	02093783          	ld	a5,32(s2)
    800045d8:	0107b503          	ld	a0,16(a5)
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	d14080e7          	jalr	-748(ra) # 800022f0 <_ZN9Semaphore6signalEv>
    }
    800045e4:	02813083          	ld	ra,40(sp)
    800045e8:	02013403          	ld	s0,32(sp)
    800045ec:	01813483          	ld	s1,24(sp)
    800045f0:	01013903          	ld	s2,16(sp)
    800045f4:	00813983          	ld	s3,8(sp)
    800045f8:	03010113          	addi	sp,sp,48
    800045fc:	00008067          	ret

0000000080004600 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004600:	ff010113          	addi	sp,sp,-16
    80004604:	00113423          	sd	ra,8(sp)
    80004608:	00813023          	sd	s0,0(sp)
    8000460c:	01010413          	addi	s0,sp,16
    80004610:	00007797          	auipc	a5,0x7
    80004614:	d9878793          	addi	a5,a5,-616 # 8000b3a8 <_ZTV8Consumer+0x10>
    80004618:	00f53023          	sd	a5,0(a0)
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	a68080e7          	jalr	-1432(ra) # 80002084 <_ZN6ThreadD1Ev>
    80004624:	00813083          	ld	ra,8(sp)
    80004628:	00013403          	ld	s0,0(sp)
    8000462c:	01010113          	addi	sp,sp,16
    80004630:	00008067          	ret

0000000080004634 <_ZN8ConsumerD0Ev>:
    80004634:	fe010113          	addi	sp,sp,-32
    80004638:	00113c23          	sd	ra,24(sp)
    8000463c:	00813823          	sd	s0,16(sp)
    80004640:	00913423          	sd	s1,8(sp)
    80004644:	02010413          	addi	s0,sp,32
    80004648:	00050493          	mv	s1,a0
    8000464c:	00007797          	auipc	a5,0x7
    80004650:	d5c78793          	addi	a5,a5,-676 # 8000b3a8 <_ZTV8Consumer+0x10>
    80004654:	00f53023          	sd	a5,0(a0)
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	a2c080e7          	jalr	-1492(ra) # 80002084 <_ZN6ThreadD1Ev>
    80004660:	00048513          	mv	a0,s1
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	670080e7          	jalr	1648(ra) # 80001cd4 <_ZdlPv>
    8000466c:	01813083          	ld	ra,24(sp)
    80004670:	01013403          	ld	s0,16(sp)
    80004674:	00813483          	ld	s1,8(sp)
    80004678:	02010113          	addi	sp,sp,32
    8000467c:	00008067          	ret

0000000080004680 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004680:	ff010113          	addi	sp,sp,-16
    80004684:	00113423          	sd	ra,8(sp)
    80004688:	00813023          	sd	s0,0(sp)
    8000468c:	01010413          	addi	s0,sp,16
    80004690:	00007797          	auipc	a5,0x7
    80004694:	cc878793          	addi	a5,a5,-824 # 8000b358 <_ZTV16ProducerKeyborad+0x10>
    80004698:	00f53023          	sd	a5,0(a0)
    8000469c:	ffffe097          	auipc	ra,0xffffe
    800046a0:	9e8080e7          	jalr	-1560(ra) # 80002084 <_ZN6ThreadD1Ev>
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	01010113          	addi	sp,sp,16
    800046b0:	00008067          	ret

00000000800046b4 <_ZN16ProducerKeyboradD0Ev>:
    800046b4:	fe010113          	addi	sp,sp,-32
    800046b8:	00113c23          	sd	ra,24(sp)
    800046bc:	00813823          	sd	s0,16(sp)
    800046c0:	00913423          	sd	s1,8(sp)
    800046c4:	02010413          	addi	s0,sp,32
    800046c8:	00050493          	mv	s1,a0
    800046cc:	00007797          	auipc	a5,0x7
    800046d0:	c8c78793          	addi	a5,a5,-884 # 8000b358 <_ZTV16ProducerKeyborad+0x10>
    800046d4:	00f53023          	sd	a5,0(a0)
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	9ac080e7          	jalr	-1620(ra) # 80002084 <_ZN6ThreadD1Ev>
    800046e0:	00048513          	mv	a0,s1
    800046e4:	ffffd097          	auipc	ra,0xffffd
    800046e8:	5f0080e7          	jalr	1520(ra) # 80001cd4 <_ZdlPv>
    800046ec:	01813083          	ld	ra,24(sp)
    800046f0:	01013403          	ld	s0,16(sp)
    800046f4:	00813483          	ld	s1,8(sp)
    800046f8:	02010113          	addi	sp,sp,32
    800046fc:	00008067          	ret

0000000080004700 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00113423          	sd	ra,8(sp)
    80004708:	00813023          	sd	s0,0(sp)
    8000470c:	01010413          	addi	s0,sp,16
    80004710:	00007797          	auipc	a5,0x7
    80004714:	c7078793          	addi	a5,a5,-912 # 8000b380 <_ZTV8Producer+0x10>
    80004718:	00f53023          	sd	a5,0(a0)
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	968080e7          	jalr	-1688(ra) # 80002084 <_ZN6ThreadD1Ev>
    80004724:	00813083          	ld	ra,8(sp)
    80004728:	00013403          	ld	s0,0(sp)
    8000472c:	01010113          	addi	sp,sp,16
    80004730:	00008067          	ret

0000000080004734 <_ZN8ProducerD0Ev>:
    80004734:	fe010113          	addi	sp,sp,-32
    80004738:	00113c23          	sd	ra,24(sp)
    8000473c:	00813823          	sd	s0,16(sp)
    80004740:	00913423          	sd	s1,8(sp)
    80004744:	02010413          	addi	s0,sp,32
    80004748:	00050493          	mv	s1,a0
    8000474c:	00007797          	auipc	a5,0x7
    80004750:	c3478793          	addi	a5,a5,-972 # 8000b380 <_ZTV8Producer+0x10>
    80004754:	00f53023          	sd	a5,0(a0)
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	92c080e7          	jalr	-1748(ra) # 80002084 <_ZN6ThreadD1Ev>
    80004760:	00048513          	mv	a0,s1
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	570080e7          	jalr	1392(ra) # 80001cd4 <_ZdlPv>
    8000476c:	01813083          	ld	ra,24(sp)
    80004770:	01013403          	ld	s0,16(sp)
    80004774:	00813483          	ld	s1,8(sp)
    80004778:	02010113          	addi	sp,sp,32
    8000477c:	00008067          	ret

0000000080004780 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004780:	fe010113          	addi	sp,sp,-32
    80004784:	00113c23          	sd	ra,24(sp)
    80004788:	00813823          	sd	s0,16(sp)
    8000478c:	00913423          	sd	s1,8(sp)
    80004790:	02010413          	addi	s0,sp,32
    80004794:	00050493          	mv	s1,a0
        while ((key = getc()) != '`') {//bilo 0x1b
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	c54080e7          	jalr	-940(ra) # 800013ec <_Z4getcv>
    800047a0:	0005059b          	sext.w	a1,a0
    800047a4:	06000793          	li	a5,96
    800047a8:	00f58c63          	beq	a1,a5,800047c0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800047ac:	0204b783          	ld	a5,32(s1)
    800047b0:	0087b503          	ld	a0,8(a5)
    800047b4:	ffffd097          	auipc	ra,0xffffd
    800047b8:	168080e7          	jalr	360(ra) # 8000191c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != '`') {//bilo 0x1b
    800047bc:	fddff06f          	j	80004798 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800047c0:	00100793          	li	a5,1
    800047c4:	00007717          	auipc	a4,0x7
    800047c8:	d4f72623          	sw	a5,-692(a4) # 8000b510 <_ZL9threadEnd>
        td->buffer->put('!');
    800047cc:	0204b783          	ld	a5,32(s1)
    800047d0:	02100593          	li	a1,33
    800047d4:	0087b503          	ld	a0,8(a5)
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	144080e7          	jalr	324(ra) # 8000191c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800047e0:	0204b783          	ld	a5,32(s1)
    800047e4:	0107b503          	ld	a0,16(a5)
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	b08080e7          	jalr	-1272(ra) # 800022f0 <_ZN9Semaphore6signalEv>
    }
    800047f0:	01813083          	ld	ra,24(sp)
    800047f4:	01013403          	ld	s0,16(sp)
    800047f8:	00813483          	ld	s1,8(sp)
    800047fc:	02010113          	addi	sp,sp,32
    80004800:	00008067          	ret

0000000080004804 <_ZN8Producer3runEv>:
    void run() override {
    80004804:	fe010113          	addi	sp,sp,-32
    80004808:	00113c23          	sd	ra,24(sp)
    8000480c:	00813823          	sd	s0,16(sp)
    80004810:	00913423          	sd	s1,8(sp)
    80004814:	02010413          	addi	s0,sp,32
    80004818:	00050493          	mv	s1,a0
        while (!threadEnd) {
    8000481c:	00007797          	auipc	a5,0x7
    80004820:	cf47a783          	lw	a5,-780(a5) # 8000b510 <_ZL9threadEnd>
    80004824:	02079063          	bnez	a5,80004844 <_ZN8Producer3runEv+0x40>
            td->buffer->put(td->id + '0');
    80004828:	0204b783          	ld	a5,32(s1)
    8000482c:	0007a583          	lw	a1,0(a5)
    80004830:	0305859b          	addiw	a1,a1,48
    80004834:	0087b503          	ld	a0,8(a5)
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	0e4080e7          	jalr	228(ra) # 8000191c <_ZN9BufferCPP3putEi>
        while (!threadEnd) {
    80004840:	fddff06f          	j	8000481c <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80004844:	0204b783          	ld	a5,32(s1)
    80004848:	0107b503          	ld	a0,16(a5)
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	aa4080e7          	jalr	-1372(ra) # 800022f0 <_ZN9Semaphore6signalEv>
    }
    80004854:	01813083          	ld	ra,24(sp)
    80004858:	01013403          	ld	s0,16(sp)
    8000485c:	00813483          	ld	s1,8(sp)
    80004860:	02010113          	addi	sp,sp,32
    80004864:	00008067          	ret

0000000080004868 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004868:	fe010113          	addi	sp,sp,-32
    8000486c:	00113c23          	sd	ra,24(sp)
    80004870:	00813823          	sd	s0,16(sp)
    80004874:	00913423          	sd	s1,8(sp)
    80004878:	01213023          	sd	s2,0(sp)
    8000487c:	02010413          	addi	s0,sp,32
    80004880:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004884:	00100793          	li	a5,1
    80004888:	02a7f863          	bgeu	a5,a0,800048b8 <_ZL9fibonaccim+0x50>

    if (n % 10 == 0) { thread_dispatch(); }
    8000488c:	00a00793          	li	a5,10
    80004890:	02f577b3          	remu	a5,a0,a5
    80004894:	02078e63          	beqz	a5,800048d0 <_ZL9fibonaccim+0x68>

    return fibonacci(n - 1) + fibonacci(n - 2);
    80004898:	fff48513          	addi	a0,s1,-1
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	fcc080e7          	jalr	-52(ra) # 80004868 <_ZL9fibonaccim>
    800048a4:	00050913          	mv	s2,a0
    800048a8:	ffe48513          	addi	a0,s1,-2
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	fbc080e7          	jalr	-68(ra) # 80004868 <_ZL9fibonaccim>
    800048b4:	00a90533          	add	a0,s2,a0
}
    800048b8:	01813083          	ld	ra,24(sp)
    800048bc:	01013403          	ld	s0,16(sp)
    800048c0:	00813483          	ld	s1,8(sp)
    800048c4:	00013903          	ld	s2,0(sp)
    800048c8:	02010113          	addi	sp,sp,32
    800048cc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	a68080e7          	jalr	-1432(ra) # 80001338 <_Z15thread_dispatchv>
    800048d8:	fc1ff06f          	j	80004898 <_ZL9fibonaccim+0x30>

00000000800048dc <_ZL11workerBodyDPv>:
    finishedC = true;
    thread_dispatch();
    printString("C finished NUMERO DOS!\n");
}

static void workerBodyD(void* arg) {
    800048dc:	fe010113          	addi	sp,sp,-32
    800048e0:	00113c23          	sd	ra,24(sp)
    800048e4:	00813823          	sd	s0,16(sp)
    800048e8:	00913423          	sd	s1,8(sp)
    800048ec:	01213023          	sd	s2,0(sp)
    800048f0:	02010413          	addi	s0,sp,32
    printString("NIT D ");
    800048f4:	00005517          	auipc	a0,0x5
    800048f8:	9dc50513          	addi	a0,a0,-1572 # 800092d0 <_ZZ12printIntegermE6digits+0x270>
    800048fc:	ffffd097          	auipc	ra,0xffffd
    80004900:	c20080e7          	jalr	-992(ra) # 8000151c <_Z11printStringPKc>
    printInt(_thread :: running->retID());
    80004904:	00007797          	auipc	a5,0x7
    80004908:	b447b783          	ld	a5,-1212(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000490c:	0007b783          	ld	a5,0(a5)
    80004910:	00000613          	li	a2,0
    80004914:	00a00593          	li	a1,10
    80004918:	0187a503          	lw	a0,24(a5)
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	d98080e7          	jalr	-616(ra) # 800016b4 <_Z8printIntiii>
    printString("\n");
    80004924:	00005517          	auipc	a0,0x5
    80004928:	b7450513          	addi	a0,a0,-1164 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	bf0080e7          	jalr	-1040(ra) # 8000151c <_Z11printStringPKc>
    uint8 i = 10;
    80004934:	00a00493          	li	s1,10
    80004938:	0400006f          	j	80004978 <_ZL11workerBodyDPv+0x9c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000493c:	00005517          	auipc	a0,0x5
    80004940:	89c50513          	addi	a0,a0,-1892 # 800091d8 <_ZZ12printIntegermE6digits+0x178>
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	bd8080e7          	jalr	-1064(ra) # 8000151c <_Z11printStringPKc>
    8000494c:	00000613          	li	a2,0
    80004950:	00a00593          	li	a1,10
    80004954:	00048513          	mv	a0,s1
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	d5c080e7          	jalr	-676(ra) # 800016b4 <_Z8printIntiii>
    80004960:	00005517          	auipc	a0,0x5
    80004964:	b3850513          	addi	a0,a0,-1224 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	bb4080e7          	jalr	-1100(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004970:	0014849b          	addiw	s1,s1,1
    80004974:	0ff4f493          	andi	s1,s1,255
    80004978:	00c00793          	li	a5,12
    8000497c:	fc97f0e3          	bgeu	a5,s1,8000493c <_ZL11workerBodyDPv+0x60>
    }

    printString("D: dispatch\n");
    80004980:	00005517          	auipc	a0,0x5
    80004984:	86050513          	addi	a0,a0,-1952 # 800091e0 <_ZZ12printIntegermE6digits+0x180>
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	b94080e7          	jalr	-1132(ra) # 8000151c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004990:	00500313          	li	t1,5
    thread_dispatch();
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	9a4080e7          	jalr	-1628(ra) # 80001338 <_Z15thread_dispatchv>
    printString("U D SAM\n");
    8000499c:	00005517          	auipc	a0,0x5
    800049a0:	93c50513          	addi	a0,a0,-1732 # 800092d8 <_ZZ12printIntegermE6digits+0x278>
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	b78080e7          	jalr	-1160(ra) # 8000151c <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    800049ac:	01000513          	li	a0,16
    800049b0:	00000097          	auipc	ra,0x0
    800049b4:	eb8080e7          	jalr	-328(ra) # 80004868 <_ZL9fibonaccim>
    800049b8:	00050913          	mv	s2,a0
    printString("U D SAM 2\n");
    800049bc:	00005517          	auipc	a0,0x5
    800049c0:	92c50513          	addi	a0,a0,-1748 # 800092e8 <_ZZ12printIntegermE6digits+0x288>
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	b58080e7          	jalr	-1192(ra) # 8000151c <_Z11printStringPKc>

    printString("D: fibonaci="); printInt(result); printString("\n");
    800049cc:	00005517          	auipc	a0,0x5
    800049d0:	82450513          	addi	a0,a0,-2012 # 800091f0 <_ZZ12printIntegermE6digits+0x190>
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	b48080e7          	jalr	-1208(ra) # 8000151c <_Z11printStringPKc>
    800049dc:	00000613          	li	a2,0
    800049e0:	00a00593          	li	a1,10
    800049e4:	0009051b          	sext.w	a0,s2
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	ccc080e7          	jalr	-820(ra) # 800016b4 <_Z8printIntiii>
    800049f0:	00005517          	auipc	a0,0x5
    800049f4:	aa850513          	addi	a0,a0,-1368 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    800049f8:	ffffd097          	auipc	ra,0xffffd
    800049fc:	b24080e7          	jalr	-1244(ra) # 8000151c <_Z11printStringPKc>
    80004a00:	0400006f          	j	80004a40 <_ZL11workerBodyDPv+0x164>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a04:	00004517          	auipc	a0,0x4
    80004a08:	7d450513          	addi	a0,a0,2004 # 800091d8 <_ZZ12printIntegermE6digits+0x178>
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	b10080e7          	jalr	-1264(ra) # 8000151c <_Z11printStringPKc>
    80004a14:	00000613          	li	a2,0
    80004a18:	00a00593          	li	a1,10
    80004a1c:	00048513          	mv	a0,s1
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	c94080e7          	jalr	-876(ra) # 800016b4 <_Z8printIntiii>
    80004a28:	00005517          	auipc	a0,0x5
    80004a2c:	a7050513          	addi	a0,a0,-1424 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	aec080e7          	jalr	-1300(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a38:	0014849b          	addiw	s1,s1,1
    80004a3c:	0ff4f493          	andi	s1,s1,255
    80004a40:	00f00793          	li	a5,15
    80004a44:	fc97f0e3          	bgeu	a5,s1,80004a04 <_ZL11workerBodyDPv+0x128>
    }

    printString("D finished!\n");
    80004a48:	00004517          	auipc	a0,0x4
    80004a4c:	7b850513          	addi	a0,a0,1976 # 80009200 <_ZZ12printIntegermE6digits+0x1a0>
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	acc080e7          	jalr	-1332(ra) # 8000151c <_Z11printStringPKc>
    finishedD = true;
    80004a58:	00100793          	li	a5,1
    80004a5c:	00007717          	auipc	a4,0x7
    80004a60:	acf70223          	sb	a5,-1340(a4) # 8000b520 <_ZL9finishedD>

    thread_dispatch();
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	8d4080e7          	jalr	-1836(ra) # 80001338 <_Z15thread_dispatchv>
}
    80004a6c:	01813083          	ld	ra,24(sp)
    80004a70:	01013403          	ld	s0,16(sp)
    80004a74:	00813483          	ld	s1,8(sp)
    80004a78:	00013903          	ld	s2,0(sp)
    80004a7c:	02010113          	addi	sp,sp,32
    80004a80:	00008067          	ret

0000000080004a84 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004a84:	fe010113          	addi	sp,sp,-32
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	00813823          	sd	s0,16(sp)
    80004a90:	00913423          	sd	s1,8(sp)
    80004a94:	01213023          	sd	s2,0(sp)
    80004a98:	02010413          	addi	s0,sp,32
    printString("NIT C ");
    80004a9c:	00005517          	auipc	a0,0x5
    80004aa0:	85c50513          	addi	a0,a0,-1956 # 800092f8 <_ZZ12printIntegermE6digits+0x298>
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	a78080e7          	jalr	-1416(ra) # 8000151c <_Z11printStringPKc>
    printInt(_thread :: running->retID());
    80004aac:	00007797          	auipc	a5,0x7
    80004ab0:	99c7b783          	ld	a5,-1636(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004ab4:	0007b783          	ld	a5,0(a5)
    80004ab8:	00000613          	li	a2,0
    80004abc:	00a00593          	li	a1,10
    80004ac0:	0187a503          	lw	a0,24(a5)
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	bf0080e7          	jalr	-1040(ra) # 800016b4 <_Z8printIntiii>
    printString("\n");
    80004acc:	00005517          	auipc	a0,0x5
    80004ad0:	9cc50513          	addi	a0,a0,-1588 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004ad4:	ffffd097          	auipc	ra,0xffffd
    80004ad8:	a48080e7          	jalr	-1464(ra) # 8000151c <_Z11printStringPKc>
    uint8 i = 0;
    80004adc:	00000493          	li	s1,0
    80004ae0:	0400006f          	j	80004b20 <_ZL11workerBodyCPv+0x9c>
        printString("C: i="); printInt(i); printString("\n");
    80004ae4:	00004517          	auipc	a0,0x4
    80004ae8:	6b450513          	addi	a0,a0,1716 # 80009198 <_ZZ12printIntegermE6digits+0x138>
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	a30080e7          	jalr	-1488(ra) # 8000151c <_Z11printStringPKc>
    80004af4:	00000613          	li	a2,0
    80004af8:	00a00593          	li	a1,10
    80004afc:	00048513          	mv	a0,s1
    80004b00:	ffffd097          	auipc	ra,0xffffd
    80004b04:	bb4080e7          	jalr	-1100(ra) # 800016b4 <_Z8printIntiii>
    80004b08:	00005517          	auipc	a0,0x5
    80004b0c:	99050513          	addi	a0,a0,-1648 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004b10:	ffffd097          	auipc	ra,0xffffd
    80004b14:	a0c080e7          	jalr	-1524(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b18:	0014849b          	addiw	s1,s1,1
    80004b1c:	0ff4f493          	andi	s1,s1,255
    80004b20:	00200793          	li	a5,2
    80004b24:	fc97f0e3          	bgeu	a5,s1,80004ae4 <_ZL11workerBodyCPv+0x60>
    printString("C: dispatch\n");
    80004b28:	00004517          	auipc	a0,0x4
    80004b2c:	67850513          	addi	a0,a0,1656 # 800091a0 <_ZZ12printIntegermE6digits+0x140>
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	9ec080e7          	jalr	-1556(ra) # 8000151c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b38:	00700313          	li	t1,7
    thread_dispatch();
    80004b3c:	ffffc097          	auipc	ra,0xffffc
    80004b40:	7fc080e7          	jalr	2044(ra) # 80001338 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b44:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b48:	00004517          	auipc	a0,0x4
    80004b4c:	66850513          	addi	a0,a0,1640 # 800091b0 <_ZZ12printIntegermE6digits+0x150>
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	9cc080e7          	jalr	-1588(ra) # 8000151c <_Z11printStringPKc>
    80004b58:	00000613          	li	a2,0
    80004b5c:	00a00593          	li	a1,10
    80004b60:	0009051b          	sext.w	a0,s2
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	b50080e7          	jalr	-1200(ra) # 800016b4 <_Z8printIntiii>
    80004b6c:	00005517          	auipc	a0,0x5
    80004b70:	92c50513          	addi	a0,a0,-1748 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	9a8080e7          	jalr	-1624(ra) # 8000151c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b7c:	00c00513          	li	a0,12
    80004b80:	00000097          	auipc	ra,0x0
    80004b84:	ce8080e7          	jalr	-792(ra) # 80004868 <_ZL9fibonaccim>
    80004b88:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b8c:	00004517          	auipc	a0,0x4
    80004b90:	62c50513          	addi	a0,a0,1580 # 800091b8 <_ZZ12printIntegermE6digits+0x158>
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	988080e7          	jalr	-1656(ra) # 8000151c <_Z11printStringPKc>
    80004b9c:	00000613          	li	a2,0
    80004ba0:	00a00593          	li	a1,10
    80004ba4:	0009051b          	sext.w	a0,s2
    80004ba8:	ffffd097          	auipc	ra,0xffffd
    80004bac:	b0c080e7          	jalr	-1268(ra) # 800016b4 <_Z8printIntiii>
    80004bb0:	00005517          	auipc	a0,0x5
    80004bb4:	8e850513          	addi	a0,a0,-1816 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004bb8:	ffffd097          	auipc	ra,0xffffd
    80004bbc:	964080e7          	jalr	-1692(ra) # 8000151c <_Z11printStringPKc>
    80004bc0:	0400006f          	j	80004c00 <_ZL11workerBodyCPv+0x17c>
        printString("C: i="); printInt(i); printString("\n");
    80004bc4:	00004517          	auipc	a0,0x4
    80004bc8:	5d450513          	addi	a0,a0,1492 # 80009198 <_ZZ12printIntegermE6digits+0x138>
    80004bcc:	ffffd097          	auipc	ra,0xffffd
    80004bd0:	950080e7          	jalr	-1712(ra) # 8000151c <_Z11printStringPKc>
    80004bd4:	00000613          	li	a2,0
    80004bd8:	00a00593          	li	a1,10
    80004bdc:	00048513          	mv	a0,s1
    80004be0:	ffffd097          	auipc	ra,0xffffd
    80004be4:	ad4080e7          	jalr	-1324(ra) # 800016b4 <_Z8printIntiii>
    80004be8:	00005517          	auipc	a0,0x5
    80004bec:	8b050513          	addi	a0,a0,-1872 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	92c080e7          	jalr	-1748(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004bf8:	0014849b          	addiw	s1,s1,1
    80004bfc:	0ff4f493          	andi	s1,s1,255
    80004c00:	00500793          	li	a5,5
    80004c04:	fc97f0e3          	bgeu	a5,s1,80004bc4 <_ZL11workerBodyCPv+0x140>
    printString("C finished!\n");
    80004c08:	00004517          	auipc	a0,0x4
    80004c0c:	5c050513          	addi	a0,a0,1472 # 800091c8 <_ZZ12printIntegermE6digits+0x168>
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	90c080e7          	jalr	-1780(ra) # 8000151c <_Z11printStringPKc>
    finishedC = true;
    80004c18:	00100793          	li	a5,1
    80004c1c:	00007717          	auipc	a4,0x7
    80004c20:	90f702a3          	sb	a5,-1787(a4) # 8000b521 <_ZL9finishedC>
    thread_dispatch();
    80004c24:	ffffc097          	auipc	ra,0xffffc
    80004c28:	714080e7          	jalr	1812(ra) # 80001338 <_Z15thread_dispatchv>
    printString("C finished NUMERO DOS!\n");
    80004c2c:	00004517          	auipc	a0,0x4
    80004c30:	6d450513          	addi	a0,a0,1748 # 80009300 <_ZZ12printIntegermE6digits+0x2a0>
    80004c34:	ffffd097          	auipc	ra,0xffffd
    80004c38:	8e8080e7          	jalr	-1816(ra) # 8000151c <_Z11printStringPKc>
}
    80004c3c:	01813083          	ld	ra,24(sp)
    80004c40:	01013403          	ld	s0,16(sp)
    80004c44:	00813483          	ld	s1,8(sp)
    80004c48:	00013903          	ld	s2,0(sp)
    80004c4c:	02010113          	addi	sp,sp,32
    80004c50:	00008067          	ret

0000000080004c54 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c54:	fe010113          	addi	sp,sp,-32
    80004c58:	00113c23          	sd	ra,24(sp)
    80004c5c:	00813823          	sd	s0,16(sp)
    80004c60:	00913423          	sd	s1,8(sp)
    80004c64:	01213023          	sd	s2,0(sp)
    80004c68:	02010413          	addi	s0,sp,32
    printString("NIT B ");
    80004c6c:	00004517          	auipc	a0,0x4
    80004c70:	6ac50513          	addi	a0,a0,1708 # 80009318 <_ZZ12printIntegermE6digits+0x2b8>
    80004c74:	ffffd097          	auipc	ra,0xffffd
    80004c78:	8a8080e7          	jalr	-1880(ra) # 8000151c <_Z11printStringPKc>
    printInt(_thread :: running->retID());
    80004c7c:	00006797          	auipc	a5,0x6
    80004c80:	7cc7b783          	ld	a5,1996(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004c84:	0007b783          	ld	a5,0(a5)
    80004c88:	00000613          	li	a2,0
    80004c8c:	00a00593          	li	a1,10
    80004c90:	0187a503          	lw	a0,24(a5)
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	a20080e7          	jalr	-1504(ra) # 800016b4 <_Z8printIntiii>
    printString("\n");
    80004c9c:	00004517          	auipc	a0,0x4
    80004ca0:	7fc50513          	addi	a0,a0,2044 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	878080e7          	jalr	-1928(ra) # 8000151c <_Z11printStringPKc>
    for (uint64 i = 0; i < 16; i++) {
    80004cac:	00000913          	li	s2,0
    80004cb0:	0380006f          	j	80004ce8 <_ZL11workerBodyBPv+0x94>
            thread_dispatch();
    80004cb4:	ffffc097          	auipc	ra,0xffffc
    80004cb8:	684080e7          	jalr	1668(ra) # 80001338 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cbc:	00148493          	addi	s1,s1,1
    80004cc0:	000027b7          	lui	a5,0x2
    80004cc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004cc8:	0097ee63          	bltu	a5,s1,80004ce4 <_ZL11workerBodyBPv+0x90>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ccc:	00000713          	li	a4,0
    80004cd0:	000077b7          	lui	a5,0x7
    80004cd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004cd8:	fce7eee3          	bltu	a5,a4,80004cb4 <_ZL11workerBodyBPv+0x60>
    80004cdc:	00170713          	addi	a4,a4,1
    80004ce0:	ff1ff06f          	j	80004cd0 <_ZL11workerBodyBPv+0x7c>
    for (uint64 i = 0; i < 16; i++) {
    80004ce4:	00190913          	addi	s2,s2,1
    80004ce8:	00f00793          	li	a5,15
    80004cec:	0527e063          	bltu	a5,s2,80004d2c <_ZL11workerBodyBPv+0xd8>
        printString("B: i="); printInt(i); printString("\n");
    80004cf0:	00004517          	auipc	a0,0x4
    80004cf4:	49050513          	addi	a0,a0,1168 # 80009180 <_ZZ12printIntegermE6digits+0x120>
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	824080e7          	jalr	-2012(ra) # 8000151c <_Z11printStringPKc>
    80004d00:	00000613          	li	a2,0
    80004d04:	00a00593          	li	a1,10
    80004d08:	0009051b          	sext.w	a0,s2
    80004d0c:	ffffd097          	auipc	ra,0xffffd
    80004d10:	9a8080e7          	jalr	-1624(ra) # 800016b4 <_Z8printIntiii>
    80004d14:	00004517          	auipc	a0,0x4
    80004d18:	78450513          	addi	a0,a0,1924 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004d1c:	ffffd097          	auipc	ra,0xffffd
    80004d20:	800080e7          	jalr	-2048(ra) # 8000151c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d24:	00000493          	li	s1,0
    80004d28:	f99ff06f          	j	80004cc0 <_ZL11workerBodyBPv+0x6c>
    printString("B finished!\n");
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	45c50513          	addi	a0,a0,1116 # 80009188 <_ZZ12printIntegermE6digits+0x128>
    80004d34:	ffffc097          	auipc	ra,0xffffc
    80004d38:	7e8080e7          	jalr	2024(ra) # 8000151c <_Z11printStringPKc>
    finishedB = true;
    80004d3c:	00100793          	li	a5,1
    80004d40:	00006717          	auipc	a4,0x6
    80004d44:	7ef70123          	sb	a5,2018(a4) # 8000b522 <_ZL9finishedB>
    thread_dispatch();
    80004d48:	ffffc097          	auipc	ra,0xffffc
    80004d4c:	5f0080e7          	jalr	1520(ra) # 80001338 <_Z15thread_dispatchv>
}
    80004d50:	01813083          	ld	ra,24(sp)
    80004d54:	01013403          	ld	s0,16(sp)
    80004d58:	00813483          	ld	s1,8(sp)
    80004d5c:	00013903          	ld	s2,0(sp)
    80004d60:	02010113          	addi	sp,sp,32
    80004d64:	00008067          	ret

0000000080004d68 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004d68:	fe010113          	addi	sp,sp,-32
    80004d6c:	00113c23          	sd	ra,24(sp)
    80004d70:	00813823          	sd	s0,16(sp)
    80004d74:	00913423          	sd	s1,8(sp)
    80004d78:	01213023          	sd	s2,0(sp)
    80004d7c:	02010413          	addi	s0,sp,32
    printString("NIT A ");
    80004d80:	00004517          	auipc	a0,0x4
    80004d84:	5a050513          	addi	a0,a0,1440 # 80009320 <_ZZ12printIntegermE6digits+0x2c0>
    80004d88:	ffffc097          	auipc	ra,0xffffc
    80004d8c:	794080e7          	jalr	1940(ra) # 8000151c <_Z11printStringPKc>
    printInt(_thread :: running->retID());
    80004d90:	00006797          	auipc	a5,0x6
    80004d94:	6b87b783          	ld	a5,1720(a5) # 8000b448 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004d98:	0007b783          	ld	a5,0(a5)
    80004d9c:	00000613          	li	a2,0
    80004da0:	00a00593          	li	a1,10
    80004da4:	0187a503          	lw	a0,24(a5)
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	90c080e7          	jalr	-1780(ra) # 800016b4 <_Z8printIntiii>
    printString("\n");
    80004db0:	00004517          	auipc	a0,0x4
    80004db4:	6e850513          	addi	a0,a0,1768 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004db8:	ffffc097          	auipc	ra,0xffffc
    80004dbc:	764080e7          	jalr	1892(ra) # 8000151c <_Z11printStringPKc>
    for (uint64 i = 0; i < 10; i++) {
    80004dc0:	00000913          	li	s2,0
    80004dc4:	0380006f          	j	80004dfc <_ZL11workerBodyAPv+0x94>
            thread_dispatch();
    80004dc8:	ffffc097          	auipc	ra,0xffffc
    80004dcc:	570080e7          	jalr	1392(ra) # 80001338 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004dd0:	00148493          	addi	s1,s1,1
    80004dd4:	000027b7          	lui	a5,0x2
    80004dd8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ddc:	0097ee63          	bltu	a5,s1,80004df8 <_ZL11workerBodyAPv+0x90>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004de0:	00000713          	li	a4,0
    80004de4:	000077b7          	lui	a5,0x7
    80004de8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004dec:	fce7eee3          	bltu	a5,a4,80004dc8 <_ZL11workerBodyAPv+0x60>
    80004df0:	00170713          	addi	a4,a4,1
    80004df4:	ff1ff06f          	j	80004de4 <_ZL11workerBodyAPv+0x7c>
    for (uint64 i = 0; i < 10; i++) {
    80004df8:	00190913          	addi	s2,s2,1
    80004dfc:	00900793          	li	a5,9
    80004e00:	0527e063          	bltu	a5,s2,80004e40 <_ZL11workerBodyAPv+0xd8>
        printString("A: i="); printInt(i); printString("\n");
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	36450513          	addi	a0,a0,868 # 80009168 <_ZZ12printIntegermE6digits+0x108>
    80004e0c:	ffffc097          	auipc	ra,0xffffc
    80004e10:	710080e7          	jalr	1808(ra) # 8000151c <_Z11printStringPKc>
    80004e14:	00000613          	li	a2,0
    80004e18:	00a00593          	li	a1,10
    80004e1c:	0009051b          	sext.w	a0,s2
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	894080e7          	jalr	-1900(ra) # 800016b4 <_Z8printIntiii>
    80004e28:	00004517          	auipc	a0,0x4
    80004e2c:	67050513          	addi	a0,a0,1648 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80004e30:	ffffc097          	auipc	ra,0xffffc
    80004e34:	6ec080e7          	jalr	1772(ra) # 8000151c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e38:	00000493          	li	s1,0
    80004e3c:	f99ff06f          	j	80004dd4 <_ZL11workerBodyAPv+0x6c>
    printString("A finished!\n");
    80004e40:	00004517          	auipc	a0,0x4
    80004e44:	33050513          	addi	a0,a0,816 # 80009170 <_ZZ12printIntegermE6digits+0x110>
    80004e48:	ffffc097          	auipc	ra,0xffffc
    80004e4c:	6d4080e7          	jalr	1748(ra) # 8000151c <_Z11printStringPKc>
    finishedA = true;
    80004e50:	00100793          	li	a5,1
    80004e54:	00006717          	auipc	a4,0x6
    80004e58:	6cf707a3          	sb	a5,1743(a4) # 8000b523 <_ZL9finishedA>
}
    80004e5c:	01813083          	ld	ra,24(sp)
    80004e60:	01013403          	ld	s0,16(sp)
    80004e64:	00813483          	ld	s1,8(sp)
    80004e68:	00013903          	ld	s2,0(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004e74:	fd010113          	addi	sp,sp,-48
    80004e78:	02113423          	sd	ra,40(sp)
    80004e7c:	02813023          	sd	s0,32(sp)
    80004e80:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e84:	00000613          	li	a2,0
    80004e88:	00000597          	auipc	a1,0x0
    80004e8c:	ee058593          	addi	a1,a1,-288 # 80004d68 <_ZL11workerBodyAPv>
    80004e90:	fd040513          	addi	a0,s0,-48
    80004e94:	ffffc097          	auipc	ra,0xffffc
    80004e98:	40c080e7          	jalr	1036(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004e9c:	00004517          	auipc	a0,0x4
    80004ea0:	37450513          	addi	a0,a0,884 # 80009210 <_ZZ12printIntegermE6digits+0x1b0>
    80004ea4:	ffffc097          	auipc	ra,0xffffc
    80004ea8:	678080e7          	jalr	1656(ra) # 8000151c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004eac:	00000613          	li	a2,0
    80004eb0:	00000597          	auipc	a1,0x0
    80004eb4:	da458593          	addi	a1,a1,-604 # 80004c54 <_ZL11workerBodyBPv>
    80004eb8:	fd840513          	addi	a0,s0,-40
    80004ebc:	ffffc097          	auipc	ra,0xffffc
    80004ec0:	3e4080e7          	jalr	996(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004ec4:	00004517          	auipc	a0,0x4
    80004ec8:	36450513          	addi	a0,a0,868 # 80009228 <_ZZ12printIntegermE6digits+0x1c8>
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	650080e7          	jalr	1616(ra) # 8000151c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004ed4:	00000613          	li	a2,0
    80004ed8:	00000597          	auipc	a1,0x0
    80004edc:	bac58593          	addi	a1,a1,-1108 # 80004a84 <_ZL11workerBodyCPv>
    80004ee0:	fe040513          	addi	a0,s0,-32
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	3bc080e7          	jalr	956(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004eec:	00004517          	auipc	a0,0x4
    80004ef0:	35450513          	addi	a0,a0,852 # 80009240 <_ZZ12printIntegermE6digits+0x1e0>
    80004ef4:	ffffc097          	auipc	ra,0xffffc
    80004ef8:	628080e7          	jalr	1576(ra) # 8000151c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004efc:	00000613          	li	a2,0
    80004f00:	00000597          	auipc	a1,0x0
    80004f04:	9dc58593          	addi	a1,a1,-1572 # 800048dc <_ZL11workerBodyDPv>
    80004f08:	fe840513          	addi	a0,s0,-24
    80004f0c:	ffffc097          	auipc	ra,0xffffc
    80004f10:	394080e7          	jalr	916(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004f14:	00004517          	auipc	a0,0x4
    80004f18:	34450513          	addi	a0,a0,836 # 80009258 <_ZZ12printIntegermE6digits+0x1f8>
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	600080e7          	jalr	1536(ra) # 8000151c <_Z11printStringPKc>
    80004f24:	00c0006f          	j	80004f30 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004f28:	ffffc097          	auipc	ra,0xffffc
    80004f2c:	410080e7          	jalr	1040(ra) # 80001338 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f30:	00006797          	auipc	a5,0x6
    80004f34:	5f37c783          	lbu	a5,1523(a5) # 8000b523 <_ZL9finishedA>
    80004f38:	fe0788e3          	beqz	a5,80004f28 <_Z18Threads_C_API_testv+0xb4>
    80004f3c:	00006797          	auipc	a5,0x6
    80004f40:	5e67c783          	lbu	a5,1510(a5) # 8000b522 <_ZL9finishedB>
    80004f44:	fe0782e3          	beqz	a5,80004f28 <_Z18Threads_C_API_testv+0xb4>
    80004f48:	00006797          	auipc	a5,0x6
    80004f4c:	5d97c783          	lbu	a5,1497(a5) # 8000b521 <_ZL9finishedC>
    80004f50:	fc078ce3          	beqz	a5,80004f28 <_Z18Threads_C_API_testv+0xb4>
    80004f54:	00006797          	auipc	a5,0x6
    80004f58:	5cc7c783          	lbu	a5,1484(a5) # 8000b520 <_ZL9finishedD>
    80004f5c:	fc0786e3          	beqz	a5,80004f28 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004f60:	02813083          	ld	ra,40(sp)
    80004f64:	02013403          	ld	s0,32(sp)
    80004f68:	03010113          	addi	sp,sp,48
    80004f6c:	00008067          	ret

0000000080004f70 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004f70:	fd010113          	addi	sp,sp,-48
    80004f74:	02113423          	sd	ra,40(sp)
    80004f78:	02813023          	sd	s0,32(sp)
    80004f7c:	00913c23          	sd	s1,24(sp)
    80004f80:	01213823          	sd	s2,16(sp)
    80004f84:	01313423          	sd	s3,8(sp)
    80004f88:	03010413          	addi	s0,sp,48
    80004f8c:	00050993          	mv	s3,a0
    80004f90:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f94:	00000913          	li	s2,0
    80004f98:	00c0006f          	j	80004fa4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != '`') {//sa 0x1b na `
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f9c:	ffffd097          	auipc	ra,0xffffd
    80004fa0:	264080e7          	jalr	612(ra) # 80002200 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != '`') {//sa 0x1b na `
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	448080e7          	jalr	1096(ra) # 800013ec <_Z4getcv>
    80004fac:	0005059b          	sext.w	a1,a0
    80004fb0:	06000793          	li	a5,96
    80004fb4:	02f58a63          	beq	a1,a5,80004fe8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004fb8:	0084b503          	ld	a0,8(s1)
    80004fbc:	ffffd097          	auipc	ra,0xffffd
    80004fc0:	960080e7          	jalr	-1696(ra) # 8000191c <_ZN9BufferCPP3putEi>
        i++;
    80004fc4:	0019071b          	addiw	a4,s2,1
    80004fc8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004fcc:	0004a683          	lw	a3,0(s1)
    80004fd0:	0026979b          	slliw	a5,a3,0x2
    80004fd4:	00d787bb          	addw	a5,a5,a3
    80004fd8:	0017979b          	slliw	a5,a5,0x1
    80004fdc:	02f767bb          	remw	a5,a4,a5
    80004fe0:	fc0792e3          	bnez	a5,80004fa4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004fe4:	fb9ff06f          	j	80004f9c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004fe8:	00100793          	li	a5,1
    80004fec:	00006717          	auipc	a4,0x6
    80004ff0:	52f72e23          	sw	a5,1340(a4) # 8000b528 <_ZL9threadEnd>
    td->buffer->put('!');
    80004ff4:	0209b783          	ld	a5,32(s3)
    80004ff8:	02100593          	li	a1,33
    80004ffc:	0087b503          	ld	a0,8(a5)
    80005000:	ffffd097          	auipc	ra,0xffffd
    80005004:	91c080e7          	jalr	-1764(ra) # 8000191c <_ZN9BufferCPP3putEi>


    data->wait->signal();
    80005008:	0104b503          	ld	a0,16(s1)
    8000500c:	ffffd097          	auipc	ra,0xffffd
    80005010:	2e4080e7          	jalr	740(ra) # 800022f0 <_ZN9Semaphore6signalEv>
}
    80005014:	02813083          	ld	ra,40(sp)
    80005018:	02013403          	ld	s0,32(sp)
    8000501c:	01813483          	ld	s1,24(sp)
    80005020:	01013903          	ld	s2,16(sp)
    80005024:	00813983          	ld	s3,8(sp)
    80005028:	03010113          	addi	sp,sp,48
    8000502c:	00008067          	ret

0000000080005030 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005030:	fe010113          	addi	sp,sp,-32
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	00813823          	sd	s0,16(sp)
    8000503c:	00913423          	sd	s1,8(sp)
    80005040:	01213023          	sd	s2,0(sp)
    80005044:	02010413          	addi	s0,sp,32
    80005048:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000504c:	00000913          	li	s2,0
    80005050:	00c0006f          	j	8000505c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	1ac080e7          	jalr	428(ra) # 80002200 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000505c:	00006797          	auipc	a5,0x6
    80005060:	4cc7a783          	lw	a5,1228(a5) # 8000b528 <_ZL9threadEnd>
    80005064:	02079e63          	bnez	a5,800050a0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005068:	0004a583          	lw	a1,0(s1)
    8000506c:	0305859b          	addiw	a1,a1,48
    80005070:	0084b503          	ld	a0,8(s1)
    80005074:	ffffd097          	auipc	ra,0xffffd
    80005078:	8a8080e7          	jalr	-1880(ra) # 8000191c <_ZN9BufferCPP3putEi>
        i++;
    8000507c:	0019071b          	addiw	a4,s2,1
    80005080:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005084:	0004a683          	lw	a3,0(s1)
    80005088:	0026979b          	slliw	a5,a3,0x2
    8000508c:	00d787bb          	addw	a5,a5,a3
    80005090:	0017979b          	slliw	a5,a5,0x1
    80005094:	02f767bb          	remw	a5,a4,a5
    80005098:	fc0792e3          	bnez	a5,8000505c <_ZN12ProducerSync8producerEPv+0x2c>
    8000509c:	fb9ff06f          	j	80005054 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800050a0:	0104b503          	ld	a0,16(s1)
    800050a4:	ffffd097          	auipc	ra,0xffffd
    800050a8:	24c080e7          	jalr	588(ra) # 800022f0 <_ZN9Semaphore6signalEv>
}
    800050ac:	01813083          	ld	ra,24(sp)
    800050b0:	01013403          	ld	s0,16(sp)
    800050b4:	00813483          	ld	s1,8(sp)
    800050b8:	00013903          	ld	s2,0(sp)
    800050bc:	02010113          	addi	sp,sp,32
    800050c0:	00008067          	ret

00000000800050c4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800050c4:	fd010113          	addi	sp,sp,-48
    800050c8:	02113423          	sd	ra,40(sp)
    800050cc:	02813023          	sd	s0,32(sp)
    800050d0:	00913c23          	sd	s1,24(sp)
    800050d4:	01213823          	sd	s2,16(sp)
    800050d8:	01313423          	sd	s3,8(sp)
    800050dc:	01413023          	sd	s4,0(sp)
    800050e0:	03010413          	addi	s0,sp,48
    800050e4:	00050993          	mv	s3,a0
    800050e8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800050ec:	00000a13          	li	s4,0
    800050f0:	01c0006f          	j	8000510c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	10c080e7          	jalr	268(ra) # 80002200 <_ZN6Thread8dispatchEv>
    800050fc:	0500006f          	j	8000514c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005100:	00a00513          	li	a0,10
    80005104:	ffffc097          	auipc	ra,0xffffc
    80005108:	31c080e7          	jalr	796(ra) # 80001420 <_Z4putcc>
    while (!threadEnd) {
    8000510c:	00006797          	auipc	a5,0x6
    80005110:	41c7a783          	lw	a5,1052(a5) # 8000b528 <_ZL9threadEnd>
    80005114:	06079263          	bnez	a5,80005178 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005118:	00893503          	ld	a0,8(s2)
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	890080e7          	jalr	-1904(ra) # 800019ac <_ZN9BufferCPP3getEv>
        i++;
    80005124:	001a049b          	addiw	s1,s4,1
    80005128:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000512c:	0ff57513          	andi	a0,a0,255
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	2f0080e7          	jalr	752(ra) # 80001420 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005138:	00092703          	lw	a4,0(s2)
    8000513c:	0027179b          	slliw	a5,a4,0x2
    80005140:	00e787bb          	addw	a5,a5,a4
    80005144:	02f4e7bb          	remw	a5,s1,a5
    80005148:	fa0786e3          	beqz	a5,800050f4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000514c:	05000793          	li	a5,80
    80005150:	02f4e4bb          	remw	s1,s1,a5
    80005154:	fa049ce3          	bnez	s1,8000510c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005158:	fa9ff06f          	j	80005100 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000515c:	0209b783          	ld	a5,32(s3)
    80005160:	0087b503          	ld	a0,8(a5)
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	848080e7          	jalr	-1976(ra) # 800019ac <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000516c:	0ff57513          	andi	a0,a0,255
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	1d4080e7          	jalr	468(ra) # 80002344 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005178:	0209b783          	ld	a5,32(s3)
    8000517c:	0087b503          	ld	a0,8(a5)
    80005180:	ffffd097          	auipc	ra,0xffffd
    80005184:	8b8080e7          	jalr	-1864(ra) # 80001a38 <_ZN9BufferCPP6getCntEv>
    80005188:	fca04ae3          	bgtz	a0,8000515c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000518c:	01093503          	ld	a0,16(s2)
    80005190:	ffffd097          	auipc	ra,0xffffd
    80005194:	160080e7          	jalr	352(ra) # 800022f0 <_ZN9Semaphore6signalEv>
}
    80005198:	02813083          	ld	ra,40(sp)
    8000519c:	02013403          	ld	s0,32(sp)
    800051a0:	01813483          	ld	s1,24(sp)
    800051a4:	01013903          	ld	s2,16(sp)
    800051a8:	00813983          	ld	s3,8(sp)
    800051ac:	00013a03          	ld	s4,0(sp)
    800051b0:	03010113          	addi	sp,sp,48
    800051b4:	00008067          	ret

00000000800051b8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800051b8:	f8010113          	addi	sp,sp,-128
    800051bc:	06113c23          	sd	ra,120(sp)
    800051c0:	06813823          	sd	s0,112(sp)
    800051c4:	06913423          	sd	s1,104(sp)
    800051c8:	07213023          	sd	s2,96(sp)
    800051cc:	05313c23          	sd	s3,88(sp)
    800051d0:	05413823          	sd	s4,80(sp)
    800051d4:	05513423          	sd	s5,72(sp)
    800051d8:	05613023          	sd	s6,64(sp)
    800051dc:	03713c23          	sd	s7,56(sp)
    800051e0:	03813823          	sd	s8,48(sp)
    800051e4:	03913423          	sd	s9,40(sp)
    800051e8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800051ec:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800051f0:	00004517          	auipc	a0,0x4
    800051f4:	e9050513          	addi	a0,a0,-368 # 80009080 <_ZZ12printIntegermE6digits+0x20>
    800051f8:	ffffc097          	auipc	ra,0xffffc
    800051fc:	324080e7          	jalr	804(ra) # 8000151c <_Z11printStringPKc>
    getString(input, 30);
    80005200:	01e00593          	li	a1,30
    80005204:	f8040493          	addi	s1,s0,-128
    80005208:	00048513          	mv	a0,s1
    8000520c:	ffffc097          	auipc	ra,0xffffc
    80005210:	38c080e7          	jalr	908(ra) # 80001598 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005214:	00048513          	mv	a0,s1
    80005218:	ffffc097          	auipc	ra,0xffffc
    8000521c:	44c080e7          	jalr	1100(ra) # 80001664 <_Z11stringToIntPKc>
    80005220:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005224:	00004517          	auipc	a0,0x4
    80005228:	e7c50513          	addi	a0,a0,-388 # 800090a0 <_ZZ12printIntegermE6digits+0x40>
    8000522c:	ffffc097          	auipc	ra,0xffffc
    80005230:	2f0080e7          	jalr	752(ra) # 8000151c <_Z11printStringPKc>
    getString(input, 30);
    80005234:	01e00593          	li	a1,30
    80005238:	00048513          	mv	a0,s1
    8000523c:	ffffc097          	auipc	ra,0xffffc
    80005240:	35c080e7          	jalr	860(ra) # 80001598 <_Z9getStringPci>
    n = stringToInt(input);
    80005244:	00048513          	mv	a0,s1
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	41c080e7          	jalr	1052(ra) # 80001664 <_Z11stringToIntPKc>
    80005250:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005254:	00004517          	auipc	a0,0x4
    80005258:	e6c50513          	addi	a0,a0,-404 # 800090c0 <_ZZ12printIntegermE6digits+0x60>
    8000525c:	ffffc097          	auipc	ra,0xffffc
    80005260:	2c0080e7          	jalr	704(ra) # 8000151c <_Z11printStringPKc>
    80005264:	00000613          	li	a2,0
    80005268:	00a00593          	li	a1,10
    8000526c:	00090513          	mv	a0,s2
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	444080e7          	jalr	1092(ra) # 800016b4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005278:	00004517          	auipc	a0,0x4
    8000527c:	e6050513          	addi	a0,a0,-416 # 800090d8 <_ZZ12printIntegermE6digits+0x78>
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	29c080e7          	jalr	668(ra) # 8000151c <_Z11printStringPKc>
    80005288:	00000613          	li	a2,0
    8000528c:	00a00593          	li	a1,10
    80005290:	00048513          	mv	a0,s1
    80005294:	ffffc097          	auipc	ra,0xffffc
    80005298:	420080e7          	jalr	1056(ra) # 800016b4 <_Z8printIntiii>
    printString(".\n");
    8000529c:	00004517          	auipc	a0,0x4
    800052a0:	e5450513          	addi	a0,a0,-428 # 800090f0 <_ZZ12printIntegermE6digits+0x90>
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	278080e7          	jalr	632(ra) # 8000151c <_Z11printStringPKc>
    if(threadNum > n) {
    800052ac:	0324c463          	blt	s1,s2,800052d4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800052b0:	03205c63          	blez	s2,800052e8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800052b4:	03800513          	li	a0,56
    800052b8:	ffffd097          	auipc	ra,0xffffd
    800052bc:	9cc080e7          	jalr	-1588(ra) # 80001c84 <_Znwm>
    800052c0:	00050a93          	mv	s5,a0
    800052c4:	00048593          	mv	a1,s1
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	500080e7          	jalr	1280(ra) # 800017c8 <_ZN9BufferCPPC1Ei>
    800052d0:	0300006f          	j	80005300 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800052d4:	00004517          	auipc	a0,0x4
    800052d8:	e2450513          	addi	a0,a0,-476 # 800090f8 <_ZZ12printIntegermE6digits+0x98>
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	240080e7          	jalr	576(ra) # 8000151c <_Z11printStringPKc>
        return;
    800052e4:	0140006f          	j	800052f8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800052e8:	00004517          	auipc	a0,0x4
    800052ec:	e5050513          	addi	a0,a0,-432 # 80009138 <_ZZ12printIntegermE6digits+0xd8>
    800052f0:	ffffc097          	auipc	ra,0xffffc
    800052f4:	22c080e7          	jalr	556(ra) # 8000151c <_Z11printStringPKc>
        return;
    800052f8:	000b8113          	mv	sp,s7
    800052fc:	2380006f          	j	80005534 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005300:	01000513          	li	a0,16
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	980080e7          	jalr	-1664(ra) # 80001c84 <_Znwm>
    8000530c:	00050493          	mv	s1,a0
    80005310:	00000593          	li	a1,0
    80005314:	ffffd097          	auipc	ra,0xffffd
    80005318:	f78080e7          	jalr	-136(ra) # 8000228c <_ZN9SemaphoreC1Ej>
    8000531c:	00006797          	auipc	a5,0x6
    80005320:	2097ba23          	sd	s1,532(a5) # 8000b530 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005324:	00391793          	slli	a5,s2,0x3
    80005328:	00f78793          	addi	a5,a5,15
    8000532c:	ff07f793          	andi	a5,a5,-16
    80005330:	40f10133          	sub	sp,sp,a5
    80005334:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005338:	0019071b          	addiw	a4,s2,1
    8000533c:	00171793          	slli	a5,a4,0x1
    80005340:	00e787b3          	add	a5,a5,a4
    80005344:	00379793          	slli	a5,a5,0x3
    80005348:	00f78793          	addi	a5,a5,15
    8000534c:	ff07f793          	andi	a5,a5,-16
    80005350:	40f10133          	sub	sp,sp,a5
    80005354:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005358:	00191c13          	slli	s8,s2,0x1
    8000535c:	012c07b3          	add	a5,s8,s2
    80005360:	00379793          	slli	a5,a5,0x3
    80005364:	00fa07b3          	add	a5,s4,a5
    80005368:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000536c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005370:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005374:	02800513          	li	a0,40
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	90c080e7          	jalr	-1780(ra) # 80001c84 <_Znwm>
    80005380:	00050b13          	mv	s6,a0
    80005384:	012c0c33          	add	s8,s8,s2
    80005388:	003c1c13          	slli	s8,s8,0x3
    8000538c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	e98080e7          	jalr	-360(ra) # 80002228 <_ZN6ThreadC1Ev>
    80005398:	00006797          	auipc	a5,0x6
    8000539c:	08878793          	addi	a5,a5,136 # 8000b420 <_ZTV12ConsumerSync+0x10>
    800053a0:	00fb3023          	sd	a5,0(s6)
    800053a4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800053a8:	000b0513          	mv	a0,s6
    800053ac:	ffffd097          	auipc	ra,0xffffd
    800053b0:	e1c080e7          	jalr	-484(ra) # 800021c8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053b4:	00000493          	li	s1,0
    800053b8:	0380006f          	j	800053f0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053bc:	00006797          	auipc	a5,0x6
    800053c0:	03c78793          	addi	a5,a5,60 # 8000b3f8 <_ZTV12ProducerSync+0x10>
    800053c4:	00fcb023          	sd	a5,0(s9)
    800053c8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800053cc:	00349793          	slli	a5,s1,0x3
    800053d0:	00f987b3          	add	a5,s3,a5
    800053d4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800053d8:	00349793          	slli	a5,s1,0x3
    800053dc:	00f987b3          	add	a5,s3,a5
    800053e0:	0007b503          	ld	a0,0(a5)
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	de4080e7          	jalr	-540(ra) # 800021c8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053ec:	0014849b          	addiw	s1,s1,1
    800053f0:	0b24d063          	bge	s1,s2,80005490 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800053f4:	00149793          	slli	a5,s1,0x1
    800053f8:	009787b3          	add	a5,a5,s1
    800053fc:	00379793          	slli	a5,a5,0x3
    80005400:	00fa07b3          	add	a5,s4,a5
    80005404:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005408:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000540c:	00006717          	auipc	a4,0x6
    80005410:	12473703          	ld	a4,292(a4) # 8000b530 <_ZL10waitForAll>
    80005414:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005418:	02905863          	blez	s1,80005448 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000541c:	02800513          	li	a0,40
    80005420:	ffffd097          	auipc	ra,0xffffd
    80005424:	864080e7          	jalr	-1948(ra) # 80001c84 <_Znwm>
    80005428:	00050c93          	mv	s9,a0
    8000542c:	00149c13          	slli	s8,s1,0x1
    80005430:	009c0c33          	add	s8,s8,s1
    80005434:	003c1c13          	slli	s8,s8,0x3
    80005438:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000543c:	ffffd097          	auipc	ra,0xffffd
    80005440:	dec080e7          	jalr	-532(ra) # 80002228 <_ZN6ThreadC1Ev>
    80005444:	f79ff06f          	j	800053bc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005448:	02800513          	li	a0,40
    8000544c:	ffffd097          	auipc	ra,0xffffd
    80005450:	838080e7          	jalr	-1992(ra) # 80001c84 <_Znwm>
    80005454:	00050c93          	mv	s9,a0
    80005458:	00149c13          	slli	s8,s1,0x1
    8000545c:	009c0c33          	add	s8,s8,s1
    80005460:	003c1c13          	slli	s8,s8,0x3
    80005464:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005468:	ffffd097          	auipc	ra,0xffffd
    8000546c:	dc0080e7          	jalr	-576(ra) # 80002228 <_ZN6ThreadC1Ev>
    80005470:	00006797          	auipc	a5,0x6
    80005474:	f6078793          	addi	a5,a5,-160 # 8000b3d0 <_ZTV16ProducerKeyboard+0x10>
    80005478:	00fcb023          	sd	a5,0(s9)
    8000547c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005480:	00349793          	slli	a5,s1,0x3
    80005484:	00f987b3          	add	a5,s3,a5
    80005488:	0197b023          	sd	s9,0(a5)
    8000548c:	f4dff06f          	j	800053d8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005490:	ffffd097          	auipc	ra,0xffffd
    80005494:	d70080e7          	jalr	-656(ra) # 80002200 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005498:	00000493          	li	s1,0
    8000549c:	00994e63          	blt	s2,s1,800054b8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800054a0:	00006517          	auipc	a0,0x6
    800054a4:	09053503          	ld	a0,144(a0) # 8000b530 <_ZL10waitForAll>
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	e1c080e7          	jalr	-484(ra) # 800022c4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800054b0:	0014849b          	addiw	s1,s1,1
    800054b4:	fe9ff06f          	j	8000549c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800054b8:	00000493          	li	s1,0
    800054bc:	0080006f          	j	800054c4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800054c0:	0014849b          	addiw	s1,s1,1
    800054c4:	0324d263          	bge	s1,s2,800054e8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800054c8:	00349793          	slli	a5,s1,0x3
    800054cc:	00f987b3          	add	a5,s3,a5
    800054d0:	0007b503          	ld	a0,0(a5)
    800054d4:	fe0506e3          	beqz	a0,800054c0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800054d8:	00053783          	ld	a5,0(a0)
    800054dc:	0087b783          	ld	a5,8(a5)
    800054e0:	000780e7          	jalr	a5
    800054e4:	fddff06f          	j	800054c0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800054e8:	000b0a63          	beqz	s6,800054fc <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800054ec:	000b3783          	ld	a5,0(s6)
    800054f0:	0087b783          	ld	a5,8(a5)
    800054f4:	000b0513          	mv	a0,s6
    800054f8:	000780e7          	jalr	a5
    delete waitForAll;
    800054fc:	00006517          	auipc	a0,0x6
    80005500:	03453503          	ld	a0,52(a0) # 8000b530 <_ZL10waitForAll>
    80005504:	00050863          	beqz	a0,80005514 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005508:	00053783          	ld	a5,0(a0)
    8000550c:	0087b783          	ld	a5,8(a5)
    80005510:	000780e7          	jalr	a5
    delete buffer;
    80005514:	000a8e63          	beqz	s5,80005530 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005518:	000a8513          	mv	a0,s5
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	5a4080e7          	jalr	1444(ra) # 80001ac0 <_ZN9BufferCPPD1Ev>
    80005524:	000a8513          	mv	a0,s5
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	7ac080e7          	jalr	1964(ra) # 80001cd4 <_ZdlPv>
    80005530:	000b8113          	mv	sp,s7

}
    80005534:	f8040113          	addi	sp,s0,-128
    80005538:	07813083          	ld	ra,120(sp)
    8000553c:	07013403          	ld	s0,112(sp)
    80005540:	06813483          	ld	s1,104(sp)
    80005544:	06013903          	ld	s2,96(sp)
    80005548:	05813983          	ld	s3,88(sp)
    8000554c:	05013a03          	ld	s4,80(sp)
    80005550:	04813a83          	ld	s5,72(sp)
    80005554:	04013b03          	ld	s6,64(sp)
    80005558:	03813b83          	ld	s7,56(sp)
    8000555c:	03013c03          	ld	s8,48(sp)
    80005560:	02813c83          	ld	s9,40(sp)
    80005564:	08010113          	addi	sp,sp,128
    80005568:	00008067          	ret
    8000556c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005570:	000a8513          	mv	a0,s5
    80005574:	ffffc097          	auipc	ra,0xffffc
    80005578:	760080e7          	jalr	1888(ra) # 80001cd4 <_ZdlPv>
    8000557c:	00048513          	mv	a0,s1
    80005580:	00007097          	auipc	ra,0x7
    80005584:	088080e7          	jalr	136(ra) # 8000c608 <_Unwind_Resume>
    80005588:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000558c:	00048513          	mv	a0,s1
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	744080e7          	jalr	1860(ra) # 80001cd4 <_ZdlPv>
    80005598:	00090513          	mv	a0,s2
    8000559c:	00007097          	auipc	ra,0x7
    800055a0:	06c080e7          	jalr	108(ra) # 8000c608 <_Unwind_Resume>
    800055a4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800055a8:	000b0513          	mv	a0,s6
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	728080e7          	jalr	1832(ra) # 80001cd4 <_ZdlPv>
    800055b4:	00048513          	mv	a0,s1
    800055b8:	00007097          	auipc	ra,0x7
    800055bc:	050080e7          	jalr	80(ra) # 8000c608 <_Unwind_Resume>
    800055c0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800055c4:	000c8513          	mv	a0,s9
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	70c080e7          	jalr	1804(ra) # 80001cd4 <_ZdlPv>
    800055d0:	00048513          	mv	a0,s1
    800055d4:	00007097          	auipc	ra,0x7
    800055d8:	034080e7          	jalr	52(ra) # 8000c608 <_Unwind_Resume>
    800055dc:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800055e0:	000c8513          	mv	a0,s9
    800055e4:	ffffc097          	auipc	ra,0xffffc
    800055e8:	6f0080e7          	jalr	1776(ra) # 80001cd4 <_ZdlPv>
    800055ec:	00048513          	mv	a0,s1
    800055f0:	00007097          	auipc	ra,0x7
    800055f4:	018080e7          	jalr	24(ra) # 8000c608 <_Unwind_Resume>

00000000800055f8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800055f8:	ff010113          	addi	sp,sp,-16
    800055fc:	00113423          	sd	ra,8(sp)
    80005600:	00813023          	sd	s0,0(sp)
    80005604:	01010413          	addi	s0,sp,16
    80005608:	00006797          	auipc	a5,0x6
    8000560c:	e1878793          	addi	a5,a5,-488 # 8000b420 <_ZTV12ConsumerSync+0x10>
    80005610:	00f53023          	sd	a5,0(a0)
    80005614:	ffffd097          	auipc	ra,0xffffd
    80005618:	a70080e7          	jalr	-1424(ra) # 80002084 <_ZN6ThreadD1Ev>
    8000561c:	00813083          	ld	ra,8(sp)
    80005620:	00013403          	ld	s0,0(sp)
    80005624:	01010113          	addi	sp,sp,16
    80005628:	00008067          	ret

000000008000562c <_ZN12ConsumerSyncD0Ev>:
    8000562c:	fe010113          	addi	sp,sp,-32
    80005630:	00113c23          	sd	ra,24(sp)
    80005634:	00813823          	sd	s0,16(sp)
    80005638:	00913423          	sd	s1,8(sp)
    8000563c:	02010413          	addi	s0,sp,32
    80005640:	00050493          	mv	s1,a0
    80005644:	00006797          	auipc	a5,0x6
    80005648:	ddc78793          	addi	a5,a5,-548 # 8000b420 <_ZTV12ConsumerSync+0x10>
    8000564c:	00f53023          	sd	a5,0(a0)
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	a34080e7          	jalr	-1484(ra) # 80002084 <_ZN6ThreadD1Ev>
    80005658:	00048513          	mv	a0,s1
    8000565c:	ffffc097          	auipc	ra,0xffffc
    80005660:	678080e7          	jalr	1656(ra) # 80001cd4 <_ZdlPv>
    80005664:	01813083          	ld	ra,24(sp)
    80005668:	01013403          	ld	s0,16(sp)
    8000566c:	00813483          	ld	s1,8(sp)
    80005670:	02010113          	addi	sp,sp,32
    80005674:	00008067          	ret

0000000080005678 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005678:	ff010113          	addi	sp,sp,-16
    8000567c:	00113423          	sd	ra,8(sp)
    80005680:	00813023          	sd	s0,0(sp)
    80005684:	01010413          	addi	s0,sp,16
    80005688:	00006797          	auipc	a5,0x6
    8000568c:	d7078793          	addi	a5,a5,-656 # 8000b3f8 <_ZTV12ProducerSync+0x10>
    80005690:	00f53023          	sd	a5,0(a0)
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	9f0080e7          	jalr	-1552(ra) # 80002084 <_ZN6ThreadD1Ev>
    8000569c:	00813083          	ld	ra,8(sp)
    800056a0:	00013403          	ld	s0,0(sp)
    800056a4:	01010113          	addi	sp,sp,16
    800056a8:	00008067          	ret

00000000800056ac <_ZN12ProducerSyncD0Ev>:
    800056ac:	fe010113          	addi	sp,sp,-32
    800056b0:	00113c23          	sd	ra,24(sp)
    800056b4:	00813823          	sd	s0,16(sp)
    800056b8:	00913423          	sd	s1,8(sp)
    800056bc:	02010413          	addi	s0,sp,32
    800056c0:	00050493          	mv	s1,a0
    800056c4:	00006797          	auipc	a5,0x6
    800056c8:	d3478793          	addi	a5,a5,-716 # 8000b3f8 <_ZTV12ProducerSync+0x10>
    800056cc:	00f53023          	sd	a5,0(a0)
    800056d0:	ffffd097          	auipc	ra,0xffffd
    800056d4:	9b4080e7          	jalr	-1612(ra) # 80002084 <_ZN6ThreadD1Ev>
    800056d8:	00048513          	mv	a0,s1
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	5f8080e7          	jalr	1528(ra) # 80001cd4 <_ZdlPv>
    800056e4:	01813083          	ld	ra,24(sp)
    800056e8:	01013403          	ld	s0,16(sp)
    800056ec:	00813483          	ld	s1,8(sp)
    800056f0:	02010113          	addi	sp,sp,32
    800056f4:	00008067          	ret

00000000800056f8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800056f8:	ff010113          	addi	sp,sp,-16
    800056fc:	00113423          	sd	ra,8(sp)
    80005700:	00813023          	sd	s0,0(sp)
    80005704:	01010413          	addi	s0,sp,16
    80005708:	00006797          	auipc	a5,0x6
    8000570c:	cc878793          	addi	a5,a5,-824 # 8000b3d0 <_ZTV16ProducerKeyboard+0x10>
    80005710:	00f53023          	sd	a5,0(a0)
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	970080e7          	jalr	-1680(ra) # 80002084 <_ZN6ThreadD1Ev>
    8000571c:	00813083          	ld	ra,8(sp)
    80005720:	00013403          	ld	s0,0(sp)
    80005724:	01010113          	addi	sp,sp,16
    80005728:	00008067          	ret

000000008000572c <_ZN16ProducerKeyboardD0Ev>:
    8000572c:	fe010113          	addi	sp,sp,-32
    80005730:	00113c23          	sd	ra,24(sp)
    80005734:	00813823          	sd	s0,16(sp)
    80005738:	00913423          	sd	s1,8(sp)
    8000573c:	02010413          	addi	s0,sp,32
    80005740:	00050493          	mv	s1,a0
    80005744:	00006797          	auipc	a5,0x6
    80005748:	c8c78793          	addi	a5,a5,-884 # 8000b3d0 <_ZTV16ProducerKeyboard+0x10>
    8000574c:	00f53023          	sd	a5,0(a0)
    80005750:	ffffd097          	auipc	ra,0xffffd
    80005754:	934080e7          	jalr	-1740(ra) # 80002084 <_ZN6ThreadD1Ev>
    80005758:	00048513          	mv	a0,s1
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	578080e7          	jalr	1400(ra) # 80001cd4 <_ZdlPv>
    80005764:	01813083          	ld	ra,24(sp)
    80005768:	01013403          	ld	s0,16(sp)
    8000576c:	00813483          	ld	s1,8(sp)
    80005770:	02010113          	addi	sp,sp,32
    80005774:	00008067          	ret

0000000080005778 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005778:	ff010113          	addi	sp,sp,-16
    8000577c:	00113423          	sd	ra,8(sp)
    80005780:	00813023          	sd	s0,0(sp)
    80005784:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005788:	02053583          	ld	a1,32(a0)
    8000578c:	fffff097          	auipc	ra,0xfffff
    80005790:	7e4080e7          	jalr	2020(ra) # 80004f70 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005794:	00813083          	ld	ra,8(sp)
    80005798:	00013403          	ld	s0,0(sp)
    8000579c:	01010113          	addi	sp,sp,16
    800057a0:	00008067          	ret

00000000800057a4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800057a4:	ff010113          	addi	sp,sp,-16
    800057a8:	00113423          	sd	ra,8(sp)
    800057ac:	00813023          	sd	s0,0(sp)
    800057b0:	01010413          	addi	s0,sp,16
        producer(td);
    800057b4:	02053583          	ld	a1,32(a0)
    800057b8:	00000097          	auipc	ra,0x0
    800057bc:	878080e7          	jalr	-1928(ra) # 80005030 <_ZN12ProducerSync8producerEPv>
    }
    800057c0:	00813083          	ld	ra,8(sp)
    800057c4:	00013403          	ld	s0,0(sp)
    800057c8:	01010113          	addi	sp,sp,16
    800057cc:	00008067          	ret

00000000800057d0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800057d0:	ff010113          	addi	sp,sp,-16
    800057d4:	00113423          	sd	ra,8(sp)
    800057d8:	00813023          	sd	s0,0(sp)
    800057dc:	01010413          	addi	s0,sp,16
        consumer(td);
    800057e0:	02053583          	ld	a1,32(a0)
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	8e0080e7          	jalr	-1824(ra) # 800050c4 <_ZN12ConsumerSync8consumerEPv>
    }
    800057ec:	00813083          	ld	ra,8(sp)
    800057f0:	00013403          	ld	s0,0(sp)
    800057f4:	01010113          	addi	sp,sp,16
    800057f8:	00008067          	ret

00000000800057fc <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"
//#include "System_Mode_test.hpp"

#endif

void userMain() {
    800057fc:	fe010113          	addi	sp,sp,-32
    80005800:	00113c23          	sd	ra,24(sp)
    80005804:	00813823          	sd	s0,16(sp)
    80005808:	00913423          	sd	s1,8(sp)
    8000580c:	01213023          	sd	s2,0(sp)
    80005810:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005814:	00004517          	auipc	a0,0x4
    80005818:	b1450513          	addi	a0,a0,-1260 # 80009328 <_ZZ12printIntegermE6digits+0x2c8>
    8000581c:	ffffc097          	auipc	ra,0xffffc
    80005820:	d00080e7          	jalr	-768(ra) # 8000151c <_Z11printStringPKc>
    int test = getc() - '0';
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	bc8080e7          	jalr	-1080(ra) # 800013ec <_Z4getcv>
    8000582c:	00050913          	mv	s2,a0
    80005830:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	bb8080e7          	jalr	-1096(ra) # 800013ec <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000583c:	fcb9091b          	addiw	s2,s2,-53
    80005840:	00100793          	li	a5,1
    80005844:	0327f463          	bgeu	a5,s2,8000586c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005848:	00700793          	li	a5,7
    8000584c:	0e97e263          	bltu	a5,s1,80005930 <_Z8userMainv+0x134>
    80005850:	00249493          	slli	s1,s1,0x2
    80005854:	00004717          	auipc	a4,0x4
    80005858:	cec70713          	addi	a4,a4,-788 # 80009540 <_ZZ12printIntegermE6digits+0x4e0>
    8000585c:	00e484b3          	add	s1,s1,a4
    80005860:	0004a783          	lw	a5,0(s1)
    80005864:	00e787b3          	add	a5,a5,a4
    80005868:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000586c:	00004517          	auipc	a0,0x4
    80005870:	adc50513          	addi	a0,a0,-1316 # 80009348 <_ZZ12printIntegermE6digits+0x2e8>
    80005874:	ffffc097          	auipc	ra,0xffffc
    80005878:	ca8080e7          	jalr	-856(ra) # 8000151c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000587c:	01813083          	ld	ra,24(sp)
    80005880:	01013403          	ld	s0,16(sp)
    80005884:	00813483          	ld	s1,8(sp)
    80005888:	00013903          	ld	s2,0(sp)
    8000588c:	02010113          	addi	sp,sp,32
    80005890:	00008067          	ret
            Threads_C_API_test();
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	5e0080e7          	jalr	1504(ra) # 80004e74 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000589c:	00004517          	auipc	a0,0x4
    800058a0:	adc50513          	addi	a0,a0,-1316 # 80009378 <_ZZ12printIntegermE6digits+0x318>
    800058a4:	ffffc097          	auipc	ra,0xffffc
    800058a8:	c78080e7          	jalr	-904(ra) # 8000151c <_Z11printStringPKc>
            break;
    800058ac:	fd1ff06f          	j	8000587c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800058b0:	ffffe097          	auipc	ra,0xffffe
    800058b4:	360080e7          	jalr	864(ra) # 80003c10 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800058b8:	00004517          	auipc	a0,0x4
    800058bc:	b0050513          	addi	a0,a0,-1280 # 800093b8 <_ZZ12printIntegermE6digits+0x358>
    800058c0:	ffffc097          	auipc	ra,0xffffc
    800058c4:	c5c080e7          	jalr	-932(ra) # 8000151c <_Z11printStringPKc>
            break;
    800058c8:	fb5ff06f          	j	8000587c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800058cc:	ffffe097          	auipc	ra,0xffffe
    800058d0:	b98080e7          	jalr	-1128(ra) # 80003464 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800058d4:	00004517          	auipc	a0,0x4
    800058d8:	b2450513          	addi	a0,a0,-1244 # 800093f8 <_ZZ12printIntegermE6digits+0x398>
    800058dc:	ffffc097          	auipc	ra,0xffffc
    800058e0:	c40080e7          	jalr	-960(ra) # 8000151c <_Z11printStringPKc>
            break;
    800058e4:	f99ff06f          	j	8000587c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	8d0080e7          	jalr	-1840(ra) # 800051b8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800058f0:	00004517          	auipc	a0,0x4
    800058f4:	b5850513          	addi	a0,a0,-1192 # 80009448 <_ZZ12printIntegermE6digits+0x3e8>
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	c24080e7          	jalr	-988(ra) # 8000151c <_Z11printStringPKc>
            break;
    80005900:	f7dff06f          	j	8000587c <_Z8userMainv+0x80>
            System_Mode_test();
    80005904:	00000097          	auipc	ra,0x0
    80005908:	52c080e7          	jalr	1324(ra) # 80005e30 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	b9450513          	addi	a0,a0,-1132 # 800094a0 <_ZZ12printIntegermE6digits+0x440>
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	c08080e7          	jalr	-1016(ra) # 8000151c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000591c:	00004517          	auipc	a0,0x4
    80005920:	ba450513          	addi	a0,a0,-1116 # 800094c0 <_ZZ12printIntegermE6digits+0x460>
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	bf8080e7          	jalr	-1032(ra) # 8000151c <_Z11printStringPKc>
            break;
    8000592c:	f51ff06f          	j	8000587c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005930:	00004517          	auipc	a0,0x4
    80005934:	be850513          	addi	a0,a0,-1048 # 80009518 <_ZZ12printIntegermE6digits+0x4b8>
    80005938:	ffffc097          	auipc	ra,0xffffc
    8000593c:	be4080e7          	jalr	-1052(ra) # 8000151c <_Z11printStringPKc>
    80005940:	f3dff06f          	j	8000587c <_Z8userMainv+0x80>

0000000080005944 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005944:	fe010113          	addi	sp,sp,-32
    80005948:	00113c23          	sd	ra,24(sp)
    8000594c:	00813823          	sd	s0,16(sp)
    80005950:	00913423          	sd	s1,8(sp)
    80005954:	01213023          	sd	s2,0(sp)
    80005958:	02010413          	addi	s0,sp,32
    8000595c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005960:	00100793          	li	a5,1
    80005964:	02a7f863          	bgeu	a5,a0,80005994 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005968:	00a00793          	li	a5,10
    8000596c:	02f577b3          	remu	a5,a0,a5
    80005970:	02078e63          	beqz	a5,800059ac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005974:	fff48513          	addi	a0,s1,-1
    80005978:	00000097          	auipc	ra,0x0
    8000597c:	fcc080e7          	jalr	-52(ra) # 80005944 <_ZL9fibonaccim>
    80005980:	00050913          	mv	s2,a0
    80005984:	ffe48513          	addi	a0,s1,-2
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	fbc080e7          	jalr	-68(ra) # 80005944 <_ZL9fibonaccim>
    80005990:	00a90533          	add	a0,s2,a0
}
    80005994:	01813083          	ld	ra,24(sp)
    80005998:	01013403          	ld	s0,16(sp)
    8000599c:	00813483          	ld	s1,8(sp)
    800059a0:	00013903          	ld	s2,0(sp)
    800059a4:	02010113          	addi	sp,sp,32
    800059a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	98c080e7          	jalr	-1652(ra) # 80001338 <_Z15thread_dispatchv>
    800059b4:	fc1ff06f          	j	80005974 <_ZL9fibonaccim+0x30>

00000000800059b8 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800059b8:	fe010113          	addi	sp,sp,-32
    800059bc:	00113c23          	sd	ra,24(sp)
    800059c0:	00813823          	sd	s0,16(sp)
    800059c4:	00913423          	sd	s1,8(sp)
    800059c8:	01213023          	sd	s2,0(sp)
    800059cc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800059d0:	00a00493          	li	s1,10
    800059d4:	0400006f          	j	80005a14 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	80050513          	addi	a0,a0,-2048 # 800091d8 <_ZZ12printIntegermE6digits+0x178>
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	b3c080e7          	jalr	-1220(ra) # 8000151c <_Z11printStringPKc>
    800059e8:	00000613          	li	a2,0
    800059ec:	00a00593          	li	a1,10
    800059f0:	00048513          	mv	a0,s1
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	cc0080e7          	jalr	-832(ra) # 800016b4 <_Z8printIntiii>
    800059fc:	00004517          	auipc	a0,0x4
    80005a00:	a9c50513          	addi	a0,a0,-1380 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005a04:	ffffc097          	auipc	ra,0xffffc
    80005a08:	b18080e7          	jalr	-1256(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a0c:	0014849b          	addiw	s1,s1,1
    80005a10:	0ff4f493          	andi	s1,s1,255
    80005a14:	00c00793          	li	a5,12
    80005a18:	fc97f0e3          	bgeu	a5,s1,800059d8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a1c:	00003517          	auipc	a0,0x3
    80005a20:	7c450513          	addi	a0,a0,1988 # 800091e0 <_ZZ12printIntegermE6digits+0x180>
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	af8080e7          	jalr	-1288(ra) # 8000151c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a2c:	00500313          	li	t1,5
    thread_dispatch();
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	908080e7          	jalr	-1784(ra) # 80001338 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005a38:	01000513          	li	a0,16
    80005a3c:	00000097          	auipc	ra,0x0
    80005a40:	f08080e7          	jalr	-248(ra) # 80005944 <_ZL9fibonaccim>
    80005a44:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a48:	00003517          	auipc	a0,0x3
    80005a4c:	7a850513          	addi	a0,a0,1960 # 800091f0 <_ZZ12printIntegermE6digits+0x190>
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	acc080e7          	jalr	-1332(ra) # 8000151c <_Z11printStringPKc>
    80005a58:	00000613          	li	a2,0
    80005a5c:	00a00593          	li	a1,10
    80005a60:	0009051b          	sext.w	a0,s2
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	c50080e7          	jalr	-944(ra) # 800016b4 <_Z8printIntiii>
    80005a6c:	00004517          	auipc	a0,0x4
    80005a70:	a2c50513          	addi	a0,a0,-1492 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	aa8080e7          	jalr	-1368(ra) # 8000151c <_Z11printStringPKc>
    80005a7c:	0400006f          	j	80005abc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a80:	00003517          	auipc	a0,0x3
    80005a84:	75850513          	addi	a0,a0,1880 # 800091d8 <_ZZ12printIntegermE6digits+0x178>
    80005a88:	ffffc097          	auipc	ra,0xffffc
    80005a8c:	a94080e7          	jalr	-1388(ra) # 8000151c <_Z11printStringPKc>
    80005a90:	00000613          	li	a2,0
    80005a94:	00a00593          	li	a1,10
    80005a98:	00048513          	mv	a0,s1
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	c18080e7          	jalr	-1000(ra) # 800016b4 <_Z8printIntiii>
    80005aa4:	00004517          	auipc	a0,0x4
    80005aa8:	9f450513          	addi	a0,a0,-1548 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	a70080e7          	jalr	-1424(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ab4:	0014849b          	addiw	s1,s1,1
    80005ab8:	0ff4f493          	andi	s1,s1,255
    80005abc:	00f00793          	li	a5,15
    80005ac0:	fc97f0e3          	bgeu	a5,s1,80005a80 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ac4:	00003517          	auipc	a0,0x3
    80005ac8:	73c50513          	addi	a0,a0,1852 # 80009200 <_ZZ12printIntegermE6digits+0x1a0>
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	a50080e7          	jalr	-1456(ra) # 8000151c <_Z11printStringPKc>
    finishedD = true;
    80005ad4:	00100793          	li	a5,1
    80005ad8:	00006717          	auipc	a4,0x6
    80005adc:	a6f70023          	sb	a5,-1440(a4) # 8000b538 <_ZL9finishedD>
    thread_dispatch();
    80005ae0:	ffffc097          	auipc	ra,0xffffc
    80005ae4:	858080e7          	jalr	-1960(ra) # 80001338 <_Z15thread_dispatchv>
}
    80005ae8:	01813083          	ld	ra,24(sp)
    80005aec:	01013403          	ld	s0,16(sp)
    80005af0:	00813483          	ld	s1,8(sp)
    80005af4:	00013903          	ld	s2,0(sp)
    80005af8:	02010113          	addi	sp,sp,32
    80005afc:	00008067          	ret

0000000080005b00 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005b00:	fe010113          	addi	sp,sp,-32
    80005b04:	00113c23          	sd	ra,24(sp)
    80005b08:	00813823          	sd	s0,16(sp)
    80005b0c:	00913423          	sd	s1,8(sp)
    80005b10:	01213023          	sd	s2,0(sp)
    80005b14:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b18:	00000493          	li	s1,0
    80005b1c:	0400006f          	j	80005b5c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005b20:	00003517          	auipc	a0,0x3
    80005b24:	67850513          	addi	a0,a0,1656 # 80009198 <_ZZ12printIntegermE6digits+0x138>
    80005b28:	ffffc097          	auipc	ra,0xffffc
    80005b2c:	9f4080e7          	jalr	-1548(ra) # 8000151c <_Z11printStringPKc>
    80005b30:	00000613          	li	a2,0
    80005b34:	00a00593          	li	a1,10
    80005b38:	00048513          	mv	a0,s1
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	b78080e7          	jalr	-1160(ra) # 800016b4 <_Z8printIntiii>
    80005b44:	00004517          	auipc	a0,0x4
    80005b48:	95450513          	addi	a0,a0,-1708 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	9d0080e7          	jalr	-1584(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b54:	0014849b          	addiw	s1,s1,1
    80005b58:	0ff4f493          	andi	s1,s1,255
    80005b5c:	00200793          	li	a5,2
    80005b60:	fc97f0e3          	bgeu	a5,s1,80005b20 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005b64:	00003517          	auipc	a0,0x3
    80005b68:	63c50513          	addi	a0,a0,1596 # 800091a0 <_ZZ12printIntegermE6digits+0x140>
    80005b6c:	ffffc097          	auipc	ra,0xffffc
    80005b70:	9b0080e7          	jalr	-1616(ra) # 8000151c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005b74:	00700313          	li	t1,7
    thread_dispatch();
    80005b78:	ffffb097          	auipc	ra,0xffffb
    80005b7c:	7c0080e7          	jalr	1984(ra) # 80001338 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005b80:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005b84:	00003517          	auipc	a0,0x3
    80005b88:	62c50513          	addi	a0,a0,1580 # 800091b0 <_ZZ12printIntegermE6digits+0x150>
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	990080e7          	jalr	-1648(ra) # 8000151c <_Z11printStringPKc>
    80005b94:	00000613          	li	a2,0
    80005b98:	00a00593          	li	a1,10
    80005b9c:	0009051b          	sext.w	a0,s2
    80005ba0:	ffffc097          	auipc	ra,0xffffc
    80005ba4:	b14080e7          	jalr	-1260(ra) # 800016b4 <_Z8printIntiii>
    80005ba8:	00004517          	auipc	a0,0x4
    80005bac:	8f050513          	addi	a0,a0,-1808 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005bb0:	ffffc097          	auipc	ra,0xffffc
    80005bb4:	96c080e7          	jalr	-1684(ra) # 8000151c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005bb8:	00c00513          	li	a0,12
    80005bbc:	00000097          	auipc	ra,0x0
    80005bc0:	d88080e7          	jalr	-632(ra) # 80005944 <_ZL9fibonaccim>
    80005bc4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005bc8:	00003517          	auipc	a0,0x3
    80005bcc:	5f050513          	addi	a0,a0,1520 # 800091b8 <_ZZ12printIntegermE6digits+0x158>
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	94c080e7          	jalr	-1716(ra) # 8000151c <_Z11printStringPKc>
    80005bd8:	00000613          	li	a2,0
    80005bdc:	00a00593          	li	a1,10
    80005be0:	0009051b          	sext.w	a0,s2
    80005be4:	ffffc097          	auipc	ra,0xffffc
    80005be8:	ad0080e7          	jalr	-1328(ra) # 800016b4 <_Z8printIntiii>
    80005bec:	00004517          	auipc	a0,0x4
    80005bf0:	8ac50513          	addi	a0,a0,-1876 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005bf4:	ffffc097          	auipc	ra,0xffffc
    80005bf8:	928080e7          	jalr	-1752(ra) # 8000151c <_Z11printStringPKc>
    80005bfc:	0400006f          	j	80005c3c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005c00:	00003517          	auipc	a0,0x3
    80005c04:	59850513          	addi	a0,a0,1432 # 80009198 <_ZZ12printIntegermE6digits+0x138>
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	914080e7          	jalr	-1772(ra) # 8000151c <_Z11printStringPKc>
    80005c10:	00000613          	li	a2,0
    80005c14:	00a00593          	li	a1,10
    80005c18:	00048513          	mv	a0,s1
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	a98080e7          	jalr	-1384(ra) # 800016b4 <_Z8printIntiii>
    80005c24:	00004517          	auipc	a0,0x4
    80005c28:	87450513          	addi	a0,a0,-1932 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005c2c:	ffffc097          	auipc	ra,0xffffc
    80005c30:	8f0080e7          	jalr	-1808(ra) # 8000151c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c34:	0014849b          	addiw	s1,s1,1
    80005c38:	0ff4f493          	andi	s1,s1,255
    80005c3c:	00500793          	li	a5,5
    80005c40:	fc97f0e3          	bgeu	a5,s1,80005c00 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005c44:	00003517          	auipc	a0,0x3
    80005c48:	58450513          	addi	a0,a0,1412 # 800091c8 <_ZZ12printIntegermE6digits+0x168>
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	8d0080e7          	jalr	-1840(ra) # 8000151c <_Z11printStringPKc>
    finishedC = true;
    80005c54:	00100793          	li	a5,1
    80005c58:	00006717          	auipc	a4,0x6
    80005c5c:	8ef700a3          	sb	a5,-1823(a4) # 8000b539 <_ZL9finishedC>
    thread_dispatch();
    80005c60:	ffffb097          	auipc	ra,0xffffb
    80005c64:	6d8080e7          	jalr	1752(ra) # 80001338 <_Z15thread_dispatchv>
}
    80005c68:	01813083          	ld	ra,24(sp)
    80005c6c:	01013403          	ld	s0,16(sp)
    80005c70:	00813483          	ld	s1,8(sp)
    80005c74:	00013903          	ld	s2,0(sp)
    80005c78:	02010113          	addi	sp,sp,32
    80005c7c:	00008067          	ret

0000000080005c80 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005c80:	fe010113          	addi	sp,sp,-32
    80005c84:	00113c23          	sd	ra,24(sp)
    80005c88:	00813823          	sd	s0,16(sp)
    80005c8c:	00913423          	sd	s1,8(sp)
    80005c90:	01213023          	sd	s2,0(sp)
    80005c94:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005c98:	00000913          	li	s2,0
    80005c9c:	0400006f          	j	80005cdc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005ca0:	ffffb097          	auipc	ra,0xffffb
    80005ca4:	698080e7          	jalr	1688(ra) # 80001338 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005ca8:	00148493          	addi	s1,s1,1
    80005cac:	000027b7          	lui	a5,0x2
    80005cb0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005cb4:	0097ee63          	bltu	a5,s1,80005cd0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005cb8:	00000713          	li	a4,0
    80005cbc:	000077b7          	lui	a5,0x7
    80005cc0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005cc4:	fce7eee3          	bltu	a5,a4,80005ca0 <_ZL11workerBodyBPv+0x20>
    80005cc8:	00170713          	addi	a4,a4,1
    80005ccc:	ff1ff06f          	j	80005cbc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005cd0:	00a00793          	li	a5,10
    80005cd4:	04f90663          	beq	s2,a5,80005d20 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005cd8:	00190913          	addi	s2,s2,1
    80005cdc:	00f00793          	li	a5,15
    80005ce0:	0527e463          	bltu	a5,s2,80005d28 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ce4:	00003517          	auipc	a0,0x3
    80005ce8:	49c50513          	addi	a0,a0,1180 # 80009180 <_ZZ12printIntegermE6digits+0x120>
    80005cec:	ffffc097          	auipc	ra,0xffffc
    80005cf0:	830080e7          	jalr	-2000(ra) # 8000151c <_Z11printStringPKc>
    80005cf4:	00000613          	li	a2,0
    80005cf8:	00a00593          	li	a1,10
    80005cfc:	0009051b          	sext.w	a0,s2
    80005d00:	ffffc097          	auipc	ra,0xffffc
    80005d04:	9b4080e7          	jalr	-1612(ra) # 800016b4 <_Z8printIntiii>
    80005d08:	00003517          	auipc	a0,0x3
    80005d0c:	79050513          	addi	a0,a0,1936 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005d10:	ffffc097          	auipc	ra,0xffffc
    80005d14:	80c080e7          	jalr	-2036(ra) # 8000151c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005d18:	00000493          	li	s1,0
    80005d1c:	f91ff06f          	j	80005cac <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005d20:	14102ff3          	csrr	t6,sepc
    80005d24:	fb5ff06f          	j	80005cd8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	46050513          	addi	a0,a0,1120 # 80009188 <_ZZ12printIntegermE6digits+0x128>
    80005d30:	ffffb097          	auipc	ra,0xffffb
    80005d34:	7ec080e7          	jalr	2028(ra) # 8000151c <_Z11printStringPKc>
    finishedB = true;
    80005d38:	00100793          	li	a5,1
    80005d3c:	00005717          	auipc	a4,0x5
    80005d40:	7ef70f23          	sb	a5,2046(a4) # 8000b53a <_ZL9finishedB>
    thread_dispatch();
    80005d44:	ffffb097          	auipc	ra,0xffffb
    80005d48:	5f4080e7          	jalr	1524(ra) # 80001338 <_Z15thread_dispatchv>
}
    80005d4c:	01813083          	ld	ra,24(sp)
    80005d50:	01013403          	ld	s0,16(sp)
    80005d54:	00813483          	ld	s1,8(sp)
    80005d58:	00013903          	ld	s2,0(sp)
    80005d5c:	02010113          	addi	sp,sp,32
    80005d60:	00008067          	ret

0000000080005d64 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005d64:	fe010113          	addi	sp,sp,-32
    80005d68:	00113c23          	sd	ra,24(sp)
    80005d6c:	00813823          	sd	s0,16(sp)
    80005d70:	00913423          	sd	s1,8(sp)
    80005d74:	01213023          	sd	s2,0(sp)
    80005d78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005d7c:	00000913          	li	s2,0
    80005d80:	0380006f          	j	80005db8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005d84:	ffffb097          	auipc	ra,0xffffb
    80005d88:	5b4080e7          	jalr	1460(ra) # 80001338 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005d8c:	00148493          	addi	s1,s1,1
    80005d90:	000027b7          	lui	a5,0x2
    80005d94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005d98:	0097ee63          	bltu	a5,s1,80005db4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005d9c:	00000713          	li	a4,0
    80005da0:	000077b7          	lui	a5,0x7
    80005da4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005da8:	fce7eee3          	bltu	a5,a4,80005d84 <_ZL11workerBodyAPv+0x20>
    80005dac:	00170713          	addi	a4,a4,1
    80005db0:	ff1ff06f          	j	80005da0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005db4:	00190913          	addi	s2,s2,1
    80005db8:	00900793          	li	a5,9
    80005dbc:	0527e063          	bltu	a5,s2,80005dfc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005dc0:	00003517          	auipc	a0,0x3
    80005dc4:	3a850513          	addi	a0,a0,936 # 80009168 <_ZZ12printIntegermE6digits+0x108>
    80005dc8:	ffffb097          	auipc	ra,0xffffb
    80005dcc:	754080e7          	jalr	1876(ra) # 8000151c <_Z11printStringPKc>
    80005dd0:	00000613          	li	a2,0
    80005dd4:	00a00593          	li	a1,10
    80005dd8:	0009051b          	sext.w	a0,s2
    80005ddc:	ffffc097          	auipc	ra,0xffffc
    80005de0:	8d8080e7          	jalr	-1832(ra) # 800016b4 <_Z8printIntiii>
    80005de4:	00003517          	auipc	a0,0x3
    80005de8:	6b450513          	addi	a0,a0,1716 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80005dec:	ffffb097          	auipc	ra,0xffffb
    80005df0:	730080e7          	jalr	1840(ra) # 8000151c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005df4:	00000493          	li	s1,0
    80005df8:	f99ff06f          	j	80005d90 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005dfc:	00003517          	auipc	a0,0x3
    80005e00:	37450513          	addi	a0,a0,884 # 80009170 <_ZZ12printIntegermE6digits+0x110>
    80005e04:	ffffb097          	auipc	ra,0xffffb
    80005e08:	718080e7          	jalr	1816(ra) # 8000151c <_Z11printStringPKc>
    finishedA = true;
    80005e0c:	00100793          	li	a5,1
    80005e10:	00005717          	auipc	a4,0x5
    80005e14:	72f705a3          	sb	a5,1835(a4) # 8000b53b <_ZL9finishedA>
}
    80005e18:	01813083          	ld	ra,24(sp)
    80005e1c:	01013403          	ld	s0,16(sp)
    80005e20:	00813483          	ld	s1,8(sp)
    80005e24:	00013903          	ld	s2,0(sp)
    80005e28:	02010113          	addi	sp,sp,32
    80005e2c:	00008067          	ret

0000000080005e30 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005e30:	fd010113          	addi	sp,sp,-48
    80005e34:	02113423          	sd	ra,40(sp)
    80005e38:	02813023          	sd	s0,32(sp)
    80005e3c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e40:	00000613          	li	a2,0
    80005e44:	00000597          	auipc	a1,0x0
    80005e48:	f2058593          	addi	a1,a1,-224 # 80005d64 <_ZL11workerBodyAPv>
    80005e4c:	fd040513          	addi	a0,s0,-48
    80005e50:	ffffb097          	auipc	ra,0xffffb
    80005e54:	450080e7          	jalr	1104(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005e58:	00003517          	auipc	a0,0x3
    80005e5c:	3b850513          	addi	a0,a0,952 # 80009210 <_ZZ12printIntegermE6digits+0x1b0>
    80005e60:	ffffb097          	auipc	ra,0xffffb
    80005e64:	6bc080e7          	jalr	1724(ra) # 8000151c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e68:	00000613          	li	a2,0
    80005e6c:	00000597          	auipc	a1,0x0
    80005e70:	e1458593          	addi	a1,a1,-492 # 80005c80 <_ZL11workerBodyBPv>
    80005e74:	fd840513          	addi	a0,s0,-40
    80005e78:	ffffb097          	auipc	ra,0xffffb
    80005e7c:	428080e7          	jalr	1064(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005e80:	00003517          	auipc	a0,0x3
    80005e84:	3a850513          	addi	a0,a0,936 # 80009228 <_ZZ12printIntegermE6digits+0x1c8>
    80005e88:	ffffb097          	auipc	ra,0xffffb
    80005e8c:	694080e7          	jalr	1684(ra) # 8000151c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005e90:	00000613          	li	a2,0
    80005e94:	00000597          	auipc	a1,0x0
    80005e98:	c6c58593          	addi	a1,a1,-916 # 80005b00 <_ZL11workerBodyCPv>
    80005e9c:	fe040513          	addi	a0,s0,-32
    80005ea0:	ffffb097          	auipc	ra,0xffffb
    80005ea4:	400080e7          	jalr	1024(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005ea8:	00003517          	auipc	a0,0x3
    80005eac:	39850513          	addi	a0,a0,920 # 80009240 <_ZZ12printIntegermE6digits+0x1e0>
    80005eb0:	ffffb097          	auipc	ra,0xffffb
    80005eb4:	66c080e7          	jalr	1644(ra) # 8000151c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005eb8:	00000613          	li	a2,0
    80005ebc:	00000597          	auipc	a1,0x0
    80005ec0:	afc58593          	addi	a1,a1,-1284 # 800059b8 <_ZL11workerBodyDPv>
    80005ec4:	fe840513          	addi	a0,s0,-24
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	3d8080e7          	jalr	984(ra) # 800012a0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005ed0:	00003517          	auipc	a0,0x3
    80005ed4:	38850513          	addi	a0,a0,904 # 80009258 <_ZZ12printIntegermE6digits+0x1f8>
    80005ed8:	ffffb097          	auipc	ra,0xffffb
    80005edc:	644080e7          	jalr	1604(ra) # 8000151c <_Z11printStringPKc>
    80005ee0:	00c0006f          	j	80005eec <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005ee4:	ffffb097          	auipc	ra,0xffffb
    80005ee8:	454080e7          	jalr	1108(ra) # 80001338 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005eec:	00005797          	auipc	a5,0x5
    80005ef0:	64f7c783          	lbu	a5,1615(a5) # 8000b53b <_ZL9finishedA>
    80005ef4:	fe0788e3          	beqz	a5,80005ee4 <_Z16System_Mode_testv+0xb4>
    80005ef8:	00005797          	auipc	a5,0x5
    80005efc:	6427c783          	lbu	a5,1602(a5) # 8000b53a <_ZL9finishedB>
    80005f00:	fe0782e3          	beqz	a5,80005ee4 <_Z16System_Mode_testv+0xb4>
    80005f04:	00005797          	auipc	a5,0x5
    80005f08:	6357c783          	lbu	a5,1589(a5) # 8000b539 <_ZL9finishedC>
    80005f0c:	fc078ce3          	beqz	a5,80005ee4 <_Z16System_Mode_testv+0xb4>
    80005f10:	00005797          	auipc	a5,0x5
    80005f14:	6287c783          	lbu	a5,1576(a5) # 8000b538 <_ZL9finishedD>
    80005f18:	fc0786e3          	beqz	a5,80005ee4 <_Z16System_Mode_testv+0xb4>
    }

}
    80005f1c:	02813083          	ld	ra,40(sp)
    80005f20:	02013403          	ld	s0,32(sp)
    80005f24:	03010113          	addi	sp,sp,48
    80005f28:	00008067          	ret

0000000080005f2c <start>:
    80005f2c:	ff010113          	addi	sp,sp,-16
    80005f30:	00813423          	sd	s0,8(sp)
    80005f34:	01010413          	addi	s0,sp,16
    80005f38:	300027f3          	csrr	a5,mstatus
    80005f3c:	ffffe737          	lui	a4,0xffffe
    80005f40:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff205f>
    80005f44:	00e7f7b3          	and	a5,a5,a4
    80005f48:	00001737          	lui	a4,0x1
    80005f4c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005f50:	00e7e7b3          	or	a5,a5,a4
    80005f54:	30079073          	csrw	mstatus,a5
    80005f58:	00000797          	auipc	a5,0x0
    80005f5c:	16078793          	addi	a5,a5,352 # 800060b8 <system_main>
    80005f60:	34179073          	csrw	mepc,a5
    80005f64:	00000793          	li	a5,0
    80005f68:	18079073          	csrw	satp,a5
    80005f6c:	000107b7          	lui	a5,0x10
    80005f70:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005f74:	30279073          	csrw	medeleg,a5
    80005f78:	30379073          	csrw	mideleg,a5
    80005f7c:	104027f3          	csrr	a5,sie
    80005f80:	2227e793          	ori	a5,a5,546
    80005f84:	10479073          	csrw	sie,a5
    80005f88:	fff00793          	li	a5,-1
    80005f8c:	00a7d793          	srli	a5,a5,0xa
    80005f90:	3b079073          	csrw	pmpaddr0,a5
    80005f94:	00f00793          	li	a5,15
    80005f98:	3a079073          	csrw	pmpcfg0,a5
    80005f9c:	f14027f3          	csrr	a5,mhartid
    80005fa0:	0200c737          	lui	a4,0x200c
    80005fa4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005fa8:	0007869b          	sext.w	a3,a5
    80005fac:	00269713          	slli	a4,a3,0x2
    80005fb0:	000f4637          	lui	a2,0xf4
    80005fb4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005fb8:	00d70733          	add	a4,a4,a3
    80005fbc:	0037979b          	slliw	a5,a5,0x3
    80005fc0:	020046b7          	lui	a3,0x2004
    80005fc4:	00d787b3          	add	a5,a5,a3
    80005fc8:	00c585b3          	add	a1,a1,a2
    80005fcc:	00371693          	slli	a3,a4,0x3
    80005fd0:	00005717          	auipc	a4,0x5
    80005fd4:	57070713          	addi	a4,a4,1392 # 8000b540 <timer_scratch>
    80005fd8:	00b7b023          	sd	a1,0(a5)
    80005fdc:	00d70733          	add	a4,a4,a3
    80005fe0:	00f73c23          	sd	a5,24(a4)
    80005fe4:	02c73023          	sd	a2,32(a4)
    80005fe8:	34071073          	csrw	mscratch,a4
    80005fec:	00000797          	auipc	a5,0x0
    80005ff0:	6e478793          	addi	a5,a5,1764 # 800066d0 <timervec>
    80005ff4:	30579073          	csrw	mtvec,a5
    80005ff8:	300027f3          	csrr	a5,mstatus
    80005ffc:	0087e793          	ori	a5,a5,8
    80006000:	30079073          	csrw	mstatus,a5
    80006004:	304027f3          	csrr	a5,mie
    80006008:	0807e793          	ori	a5,a5,128
    8000600c:	30479073          	csrw	mie,a5
    80006010:	f14027f3          	csrr	a5,mhartid
    80006014:	0007879b          	sext.w	a5,a5
    80006018:	00078213          	mv	tp,a5
    8000601c:	30200073          	mret
    80006020:	00813403          	ld	s0,8(sp)
    80006024:	01010113          	addi	sp,sp,16
    80006028:	00008067          	ret

000000008000602c <timerinit>:
    8000602c:	ff010113          	addi	sp,sp,-16
    80006030:	00813423          	sd	s0,8(sp)
    80006034:	01010413          	addi	s0,sp,16
    80006038:	f14027f3          	csrr	a5,mhartid
    8000603c:	0200c737          	lui	a4,0x200c
    80006040:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006044:	0007869b          	sext.w	a3,a5
    80006048:	00269713          	slli	a4,a3,0x2
    8000604c:	000f4637          	lui	a2,0xf4
    80006050:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006054:	00d70733          	add	a4,a4,a3
    80006058:	0037979b          	slliw	a5,a5,0x3
    8000605c:	020046b7          	lui	a3,0x2004
    80006060:	00d787b3          	add	a5,a5,a3
    80006064:	00c585b3          	add	a1,a1,a2
    80006068:	00371693          	slli	a3,a4,0x3
    8000606c:	00005717          	auipc	a4,0x5
    80006070:	4d470713          	addi	a4,a4,1236 # 8000b540 <timer_scratch>
    80006074:	00b7b023          	sd	a1,0(a5)
    80006078:	00d70733          	add	a4,a4,a3
    8000607c:	00f73c23          	sd	a5,24(a4)
    80006080:	02c73023          	sd	a2,32(a4)
    80006084:	34071073          	csrw	mscratch,a4
    80006088:	00000797          	auipc	a5,0x0
    8000608c:	64878793          	addi	a5,a5,1608 # 800066d0 <timervec>
    80006090:	30579073          	csrw	mtvec,a5
    80006094:	300027f3          	csrr	a5,mstatus
    80006098:	0087e793          	ori	a5,a5,8
    8000609c:	30079073          	csrw	mstatus,a5
    800060a0:	304027f3          	csrr	a5,mie
    800060a4:	0807e793          	ori	a5,a5,128
    800060a8:	30479073          	csrw	mie,a5
    800060ac:	00813403          	ld	s0,8(sp)
    800060b0:	01010113          	addi	sp,sp,16
    800060b4:	00008067          	ret

00000000800060b8 <system_main>:
    800060b8:	fe010113          	addi	sp,sp,-32
    800060bc:	00813823          	sd	s0,16(sp)
    800060c0:	00913423          	sd	s1,8(sp)
    800060c4:	00113c23          	sd	ra,24(sp)
    800060c8:	02010413          	addi	s0,sp,32
    800060cc:	00000097          	auipc	ra,0x0
    800060d0:	0c4080e7          	jalr	196(ra) # 80006190 <cpuid>
    800060d4:	00005497          	auipc	s1,0x5
    800060d8:	3ac48493          	addi	s1,s1,940 # 8000b480 <started>
    800060dc:	02050263          	beqz	a0,80006100 <system_main+0x48>
    800060e0:	0004a783          	lw	a5,0(s1)
    800060e4:	0007879b          	sext.w	a5,a5
    800060e8:	fe078ce3          	beqz	a5,800060e0 <system_main+0x28>
    800060ec:	0ff0000f          	fence
    800060f0:	00003517          	auipc	a0,0x3
    800060f4:	4a050513          	addi	a0,a0,1184 # 80009590 <_ZZ12printIntegermE6digits+0x530>
    800060f8:	00001097          	auipc	ra,0x1
    800060fc:	a74080e7          	jalr	-1420(ra) # 80006b6c <panic>
    80006100:	00001097          	auipc	ra,0x1
    80006104:	9c8080e7          	jalr	-1592(ra) # 80006ac8 <consoleinit>
    80006108:	00001097          	auipc	ra,0x1
    8000610c:	154080e7          	jalr	340(ra) # 8000725c <printfinit>
    80006110:	00003517          	auipc	a0,0x3
    80006114:	38850513          	addi	a0,a0,904 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80006118:	00001097          	auipc	ra,0x1
    8000611c:	ab0080e7          	jalr	-1360(ra) # 80006bc8 <__printf>
    80006120:	00003517          	auipc	a0,0x3
    80006124:	44050513          	addi	a0,a0,1088 # 80009560 <_ZZ12printIntegermE6digits+0x500>
    80006128:	00001097          	auipc	ra,0x1
    8000612c:	aa0080e7          	jalr	-1376(ra) # 80006bc8 <__printf>
    80006130:	00003517          	auipc	a0,0x3
    80006134:	36850513          	addi	a0,a0,872 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80006138:	00001097          	auipc	ra,0x1
    8000613c:	a90080e7          	jalr	-1392(ra) # 80006bc8 <__printf>
    80006140:	00001097          	auipc	ra,0x1
    80006144:	4a8080e7          	jalr	1192(ra) # 800075e8 <kinit>
    80006148:	00000097          	auipc	ra,0x0
    8000614c:	148080e7          	jalr	328(ra) # 80006290 <trapinit>
    80006150:	00000097          	auipc	ra,0x0
    80006154:	16c080e7          	jalr	364(ra) # 800062bc <trapinithart>
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	5b8080e7          	jalr	1464(ra) # 80006710 <plicinit>
    80006160:	00000097          	auipc	ra,0x0
    80006164:	5d8080e7          	jalr	1496(ra) # 80006738 <plicinithart>
    80006168:	00000097          	auipc	ra,0x0
    8000616c:	078080e7          	jalr	120(ra) # 800061e0 <userinit>
    80006170:	0ff0000f          	fence
    80006174:	00100793          	li	a5,1
    80006178:	00003517          	auipc	a0,0x3
    8000617c:	40050513          	addi	a0,a0,1024 # 80009578 <_ZZ12printIntegermE6digits+0x518>
    80006180:	00f4a023          	sw	a5,0(s1)
    80006184:	00001097          	auipc	ra,0x1
    80006188:	a44080e7          	jalr	-1468(ra) # 80006bc8 <__printf>
    8000618c:	0000006f          	j	8000618c <system_main+0xd4>

0000000080006190 <cpuid>:
    80006190:	ff010113          	addi	sp,sp,-16
    80006194:	00813423          	sd	s0,8(sp)
    80006198:	01010413          	addi	s0,sp,16
    8000619c:	00020513          	mv	a0,tp
    800061a0:	00813403          	ld	s0,8(sp)
    800061a4:	0005051b          	sext.w	a0,a0
    800061a8:	01010113          	addi	sp,sp,16
    800061ac:	00008067          	ret

00000000800061b0 <mycpu>:
    800061b0:	ff010113          	addi	sp,sp,-16
    800061b4:	00813423          	sd	s0,8(sp)
    800061b8:	01010413          	addi	s0,sp,16
    800061bc:	00020793          	mv	a5,tp
    800061c0:	00813403          	ld	s0,8(sp)
    800061c4:	0007879b          	sext.w	a5,a5
    800061c8:	00779793          	slli	a5,a5,0x7
    800061cc:	00006517          	auipc	a0,0x6
    800061d0:	3a450513          	addi	a0,a0,932 # 8000c570 <cpus>
    800061d4:	00f50533          	add	a0,a0,a5
    800061d8:	01010113          	addi	sp,sp,16
    800061dc:	00008067          	ret

00000000800061e0 <userinit>:
    800061e0:	ff010113          	addi	sp,sp,-16
    800061e4:	00813423          	sd	s0,8(sp)
    800061e8:	01010413          	addi	s0,sp,16
    800061ec:	00813403          	ld	s0,8(sp)
    800061f0:	01010113          	addi	sp,sp,16
    800061f4:	ffffc317          	auipc	t1,0xffffc
    800061f8:	9f030067          	jr	-1552(t1) # 80001be4 <main>

00000000800061fc <either_copyout>:
    800061fc:	ff010113          	addi	sp,sp,-16
    80006200:	00813023          	sd	s0,0(sp)
    80006204:	00113423          	sd	ra,8(sp)
    80006208:	01010413          	addi	s0,sp,16
    8000620c:	02051663          	bnez	a0,80006238 <either_copyout+0x3c>
    80006210:	00058513          	mv	a0,a1
    80006214:	00060593          	mv	a1,a2
    80006218:	0006861b          	sext.w	a2,a3
    8000621c:	00002097          	auipc	ra,0x2
    80006220:	c58080e7          	jalr	-936(ra) # 80007e74 <__memmove>
    80006224:	00813083          	ld	ra,8(sp)
    80006228:	00013403          	ld	s0,0(sp)
    8000622c:	00000513          	li	a0,0
    80006230:	01010113          	addi	sp,sp,16
    80006234:	00008067          	ret
    80006238:	00003517          	auipc	a0,0x3
    8000623c:	38050513          	addi	a0,a0,896 # 800095b8 <_ZZ12printIntegermE6digits+0x558>
    80006240:	00001097          	auipc	ra,0x1
    80006244:	92c080e7          	jalr	-1748(ra) # 80006b6c <panic>

0000000080006248 <either_copyin>:
    80006248:	ff010113          	addi	sp,sp,-16
    8000624c:	00813023          	sd	s0,0(sp)
    80006250:	00113423          	sd	ra,8(sp)
    80006254:	01010413          	addi	s0,sp,16
    80006258:	02059463          	bnez	a1,80006280 <either_copyin+0x38>
    8000625c:	00060593          	mv	a1,a2
    80006260:	0006861b          	sext.w	a2,a3
    80006264:	00002097          	auipc	ra,0x2
    80006268:	c10080e7          	jalr	-1008(ra) # 80007e74 <__memmove>
    8000626c:	00813083          	ld	ra,8(sp)
    80006270:	00013403          	ld	s0,0(sp)
    80006274:	00000513          	li	a0,0
    80006278:	01010113          	addi	sp,sp,16
    8000627c:	00008067          	ret
    80006280:	00003517          	auipc	a0,0x3
    80006284:	36050513          	addi	a0,a0,864 # 800095e0 <_ZZ12printIntegermE6digits+0x580>
    80006288:	00001097          	auipc	ra,0x1
    8000628c:	8e4080e7          	jalr	-1820(ra) # 80006b6c <panic>

0000000080006290 <trapinit>:
    80006290:	ff010113          	addi	sp,sp,-16
    80006294:	00813423          	sd	s0,8(sp)
    80006298:	01010413          	addi	s0,sp,16
    8000629c:	00813403          	ld	s0,8(sp)
    800062a0:	00003597          	auipc	a1,0x3
    800062a4:	36858593          	addi	a1,a1,872 # 80009608 <_ZZ12printIntegermE6digits+0x5a8>
    800062a8:	00006517          	auipc	a0,0x6
    800062ac:	34850513          	addi	a0,a0,840 # 8000c5f0 <tickslock>
    800062b0:	01010113          	addi	sp,sp,16
    800062b4:	00001317          	auipc	t1,0x1
    800062b8:	5c430067          	jr	1476(t1) # 80007878 <initlock>

00000000800062bc <trapinithart>:
    800062bc:	ff010113          	addi	sp,sp,-16
    800062c0:	00813423          	sd	s0,8(sp)
    800062c4:	01010413          	addi	s0,sp,16
    800062c8:	00000797          	auipc	a5,0x0
    800062cc:	2f878793          	addi	a5,a5,760 # 800065c0 <kernelvec>
    800062d0:	10579073          	csrw	stvec,a5
    800062d4:	00813403          	ld	s0,8(sp)
    800062d8:	01010113          	addi	sp,sp,16
    800062dc:	00008067          	ret

00000000800062e0 <usertrap>:
    800062e0:	ff010113          	addi	sp,sp,-16
    800062e4:	00813423          	sd	s0,8(sp)
    800062e8:	01010413          	addi	s0,sp,16
    800062ec:	00813403          	ld	s0,8(sp)
    800062f0:	01010113          	addi	sp,sp,16
    800062f4:	00008067          	ret

00000000800062f8 <usertrapret>:
    800062f8:	ff010113          	addi	sp,sp,-16
    800062fc:	00813423          	sd	s0,8(sp)
    80006300:	01010413          	addi	s0,sp,16
    80006304:	00813403          	ld	s0,8(sp)
    80006308:	01010113          	addi	sp,sp,16
    8000630c:	00008067          	ret

0000000080006310 <kerneltrap>:
    80006310:	fe010113          	addi	sp,sp,-32
    80006314:	00813823          	sd	s0,16(sp)
    80006318:	00113c23          	sd	ra,24(sp)
    8000631c:	00913423          	sd	s1,8(sp)
    80006320:	02010413          	addi	s0,sp,32
    80006324:	142025f3          	csrr	a1,scause
    80006328:	100027f3          	csrr	a5,sstatus
    8000632c:	0027f793          	andi	a5,a5,2
    80006330:	10079c63          	bnez	a5,80006448 <kerneltrap+0x138>
    80006334:	142027f3          	csrr	a5,scause
    80006338:	0207ce63          	bltz	a5,80006374 <kerneltrap+0x64>
    8000633c:	00003517          	auipc	a0,0x3
    80006340:	31450513          	addi	a0,a0,788 # 80009650 <_ZZ12printIntegermE6digits+0x5f0>
    80006344:	00001097          	auipc	ra,0x1
    80006348:	884080e7          	jalr	-1916(ra) # 80006bc8 <__printf>
    8000634c:	141025f3          	csrr	a1,sepc
    80006350:	14302673          	csrr	a2,stval
    80006354:	00003517          	auipc	a0,0x3
    80006358:	30c50513          	addi	a0,a0,780 # 80009660 <_ZZ12printIntegermE6digits+0x600>
    8000635c:	00001097          	auipc	ra,0x1
    80006360:	86c080e7          	jalr	-1940(ra) # 80006bc8 <__printf>
    80006364:	00003517          	auipc	a0,0x3
    80006368:	31450513          	addi	a0,a0,788 # 80009678 <_ZZ12printIntegermE6digits+0x618>
    8000636c:	00001097          	auipc	ra,0x1
    80006370:	800080e7          	jalr	-2048(ra) # 80006b6c <panic>
    80006374:	0ff7f713          	andi	a4,a5,255
    80006378:	00900693          	li	a3,9
    8000637c:	04d70063          	beq	a4,a3,800063bc <kerneltrap+0xac>
    80006380:	fff00713          	li	a4,-1
    80006384:	03f71713          	slli	a4,a4,0x3f
    80006388:	00170713          	addi	a4,a4,1
    8000638c:	fae798e3          	bne	a5,a4,8000633c <kerneltrap+0x2c>
    80006390:	00000097          	auipc	ra,0x0
    80006394:	e00080e7          	jalr	-512(ra) # 80006190 <cpuid>
    80006398:	06050663          	beqz	a0,80006404 <kerneltrap+0xf4>
    8000639c:	144027f3          	csrr	a5,sip
    800063a0:	ffd7f793          	andi	a5,a5,-3
    800063a4:	14479073          	csrw	sip,a5
    800063a8:	01813083          	ld	ra,24(sp)
    800063ac:	01013403          	ld	s0,16(sp)
    800063b0:	00813483          	ld	s1,8(sp)
    800063b4:	02010113          	addi	sp,sp,32
    800063b8:	00008067          	ret
    800063bc:	00000097          	auipc	ra,0x0
    800063c0:	3c8080e7          	jalr	968(ra) # 80006784 <plic_claim>
    800063c4:	00a00793          	li	a5,10
    800063c8:	00050493          	mv	s1,a0
    800063cc:	06f50863          	beq	a0,a5,8000643c <kerneltrap+0x12c>
    800063d0:	fc050ce3          	beqz	a0,800063a8 <kerneltrap+0x98>
    800063d4:	00050593          	mv	a1,a0
    800063d8:	00003517          	auipc	a0,0x3
    800063dc:	25850513          	addi	a0,a0,600 # 80009630 <_ZZ12printIntegermE6digits+0x5d0>
    800063e0:	00000097          	auipc	ra,0x0
    800063e4:	7e8080e7          	jalr	2024(ra) # 80006bc8 <__printf>
    800063e8:	01013403          	ld	s0,16(sp)
    800063ec:	01813083          	ld	ra,24(sp)
    800063f0:	00048513          	mv	a0,s1
    800063f4:	00813483          	ld	s1,8(sp)
    800063f8:	02010113          	addi	sp,sp,32
    800063fc:	00000317          	auipc	t1,0x0
    80006400:	3c030067          	jr	960(t1) # 800067bc <plic_complete>
    80006404:	00006517          	auipc	a0,0x6
    80006408:	1ec50513          	addi	a0,a0,492 # 8000c5f0 <tickslock>
    8000640c:	00001097          	auipc	ra,0x1
    80006410:	490080e7          	jalr	1168(ra) # 8000789c <acquire>
    80006414:	00005717          	auipc	a4,0x5
    80006418:	07070713          	addi	a4,a4,112 # 8000b484 <ticks>
    8000641c:	00072783          	lw	a5,0(a4)
    80006420:	00006517          	auipc	a0,0x6
    80006424:	1d050513          	addi	a0,a0,464 # 8000c5f0 <tickslock>
    80006428:	0017879b          	addiw	a5,a5,1
    8000642c:	00f72023          	sw	a5,0(a4)
    80006430:	00001097          	auipc	ra,0x1
    80006434:	538080e7          	jalr	1336(ra) # 80007968 <release>
    80006438:	f65ff06f          	j	8000639c <kerneltrap+0x8c>
    8000643c:	00001097          	auipc	ra,0x1
    80006440:	094080e7          	jalr	148(ra) # 800074d0 <uartintr>
    80006444:	fa5ff06f          	j	800063e8 <kerneltrap+0xd8>
    80006448:	00003517          	auipc	a0,0x3
    8000644c:	1c850513          	addi	a0,a0,456 # 80009610 <_ZZ12printIntegermE6digits+0x5b0>
    80006450:	00000097          	auipc	ra,0x0
    80006454:	71c080e7          	jalr	1820(ra) # 80006b6c <panic>

0000000080006458 <clockintr>:
    80006458:	fe010113          	addi	sp,sp,-32
    8000645c:	00813823          	sd	s0,16(sp)
    80006460:	00913423          	sd	s1,8(sp)
    80006464:	00113c23          	sd	ra,24(sp)
    80006468:	02010413          	addi	s0,sp,32
    8000646c:	00006497          	auipc	s1,0x6
    80006470:	18448493          	addi	s1,s1,388 # 8000c5f0 <tickslock>
    80006474:	00048513          	mv	a0,s1
    80006478:	00001097          	auipc	ra,0x1
    8000647c:	424080e7          	jalr	1060(ra) # 8000789c <acquire>
    80006480:	00005717          	auipc	a4,0x5
    80006484:	00470713          	addi	a4,a4,4 # 8000b484 <ticks>
    80006488:	00072783          	lw	a5,0(a4)
    8000648c:	01013403          	ld	s0,16(sp)
    80006490:	01813083          	ld	ra,24(sp)
    80006494:	00048513          	mv	a0,s1
    80006498:	0017879b          	addiw	a5,a5,1
    8000649c:	00813483          	ld	s1,8(sp)
    800064a0:	00f72023          	sw	a5,0(a4)
    800064a4:	02010113          	addi	sp,sp,32
    800064a8:	00001317          	auipc	t1,0x1
    800064ac:	4c030067          	jr	1216(t1) # 80007968 <release>

00000000800064b0 <devintr>:
    800064b0:	142027f3          	csrr	a5,scause
    800064b4:	00000513          	li	a0,0
    800064b8:	0007c463          	bltz	a5,800064c0 <devintr+0x10>
    800064bc:	00008067          	ret
    800064c0:	fe010113          	addi	sp,sp,-32
    800064c4:	00813823          	sd	s0,16(sp)
    800064c8:	00113c23          	sd	ra,24(sp)
    800064cc:	00913423          	sd	s1,8(sp)
    800064d0:	02010413          	addi	s0,sp,32
    800064d4:	0ff7f713          	andi	a4,a5,255
    800064d8:	00900693          	li	a3,9
    800064dc:	04d70c63          	beq	a4,a3,80006534 <devintr+0x84>
    800064e0:	fff00713          	li	a4,-1
    800064e4:	03f71713          	slli	a4,a4,0x3f
    800064e8:	00170713          	addi	a4,a4,1
    800064ec:	00e78c63          	beq	a5,a4,80006504 <devintr+0x54>
    800064f0:	01813083          	ld	ra,24(sp)
    800064f4:	01013403          	ld	s0,16(sp)
    800064f8:	00813483          	ld	s1,8(sp)
    800064fc:	02010113          	addi	sp,sp,32
    80006500:	00008067          	ret
    80006504:	00000097          	auipc	ra,0x0
    80006508:	c8c080e7          	jalr	-884(ra) # 80006190 <cpuid>
    8000650c:	06050663          	beqz	a0,80006578 <devintr+0xc8>
    80006510:	144027f3          	csrr	a5,sip
    80006514:	ffd7f793          	andi	a5,a5,-3
    80006518:	14479073          	csrw	sip,a5
    8000651c:	01813083          	ld	ra,24(sp)
    80006520:	01013403          	ld	s0,16(sp)
    80006524:	00813483          	ld	s1,8(sp)
    80006528:	00200513          	li	a0,2
    8000652c:	02010113          	addi	sp,sp,32
    80006530:	00008067          	ret
    80006534:	00000097          	auipc	ra,0x0
    80006538:	250080e7          	jalr	592(ra) # 80006784 <plic_claim>
    8000653c:	00a00793          	li	a5,10
    80006540:	00050493          	mv	s1,a0
    80006544:	06f50663          	beq	a0,a5,800065b0 <devintr+0x100>
    80006548:	00100513          	li	a0,1
    8000654c:	fa0482e3          	beqz	s1,800064f0 <devintr+0x40>
    80006550:	00048593          	mv	a1,s1
    80006554:	00003517          	auipc	a0,0x3
    80006558:	0dc50513          	addi	a0,a0,220 # 80009630 <_ZZ12printIntegermE6digits+0x5d0>
    8000655c:	00000097          	auipc	ra,0x0
    80006560:	66c080e7          	jalr	1644(ra) # 80006bc8 <__printf>
    80006564:	00048513          	mv	a0,s1
    80006568:	00000097          	auipc	ra,0x0
    8000656c:	254080e7          	jalr	596(ra) # 800067bc <plic_complete>
    80006570:	00100513          	li	a0,1
    80006574:	f7dff06f          	j	800064f0 <devintr+0x40>
    80006578:	00006517          	auipc	a0,0x6
    8000657c:	07850513          	addi	a0,a0,120 # 8000c5f0 <tickslock>
    80006580:	00001097          	auipc	ra,0x1
    80006584:	31c080e7          	jalr	796(ra) # 8000789c <acquire>
    80006588:	00005717          	auipc	a4,0x5
    8000658c:	efc70713          	addi	a4,a4,-260 # 8000b484 <ticks>
    80006590:	00072783          	lw	a5,0(a4)
    80006594:	00006517          	auipc	a0,0x6
    80006598:	05c50513          	addi	a0,a0,92 # 8000c5f0 <tickslock>
    8000659c:	0017879b          	addiw	a5,a5,1
    800065a0:	00f72023          	sw	a5,0(a4)
    800065a4:	00001097          	auipc	ra,0x1
    800065a8:	3c4080e7          	jalr	964(ra) # 80007968 <release>
    800065ac:	f65ff06f          	j	80006510 <devintr+0x60>
    800065b0:	00001097          	auipc	ra,0x1
    800065b4:	f20080e7          	jalr	-224(ra) # 800074d0 <uartintr>
    800065b8:	fadff06f          	j	80006564 <devintr+0xb4>
    800065bc:	0000                	unimp
	...

00000000800065c0 <kernelvec>:
    800065c0:	f0010113          	addi	sp,sp,-256
    800065c4:	00113023          	sd	ra,0(sp)
    800065c8:	00213423          	sd	sp,8(sp)
    800065cc:	00313823          	sd	gp,16(sp)
    800065d0:	00413c23          	sd	tp,24(sp)
    800065d4:	02513023          	sd	t0,32(sp)
    800065d8:	02613423          	sd	t1,40(sp)
    800065dc:	02713823          	sd	t2,48(sp)
    800065e0:	02813c23          	sd	s0,56(sp)
    800065e4:	04913023          	sd	s1,64(sp)
    800065e8:	04a13423          	sd	a0,72(sp)
    800065ec:	04b13823          	sd	a1,80(sp)
    800065f0:	04c13c23          	sd	a2,88(sp)
    800065f4:	06d13023          	sd	a3,96(sp)
    800065f8:	06e13423          	sd	a4,104(sp)
    800065fc:	06f13823          	sd	a5,112(sp)
    80006600:	07013c23          	sd	a6,120(sp)
    80006604:	09113023          	sd	a7,128(sp)
    80006608:	09213423          	sd	s2,136(sp)
    8000660c:	09313823          	sd	s3,144(sp)
    80006610:	09413c23          	sd	s4,152(sp)
    80006614:	0b513023          	sd	s5,160(sp)
    80006618:	0b613423          	sd	s6,168(sp)
    8000661c:	0b713823          	sd	s7,176(sp)
    80006620:	0b813c23          	sd	s8,184(sp)
    80006624:	0d913023          	sd	s9,192(sp)
    80006628:	0da13423          	sd	s10,200(sp)
    8000662c:	0db13823          	sd	s11,208(sp)
    80006630:	0dc13c23          	sd	t3,216(sp)
    80006634:	0fd13023          	sd	t4,224(sp)
    80006638:	0fe13423          	sd	t5,232(sp)
    8000663c:	0ff13823          	sd	t6,240(sp)
    80006640:	cd1ff0ef          	jal	ra,80006310 <kerneltrap>
    80006644:	00013083          	ld	ra,0(sp)
    80006648:	00813103          	ld	sp,8(sp)
    8000664c:	01013183          	ld	gp,16(sp)
    80006650:	02013283          	ld	t0,32(sp)
    80006654:	02813303          	ld	t1,40(sp)
    80006658:	03013383          	ld	t2,48(sp)
    8000665c:	03813403          	ld	s0,56(sp)
    80006660:	04013483          	ld	s1,64(sp)
    80006664:	04813503          	ld	a0,72(sp)
    80006668:	05013583          	ld	a1,80(sp)
    8000666c:	05813603          	ld	a2,88(sp)
    80006670:	06013683          	ld	a3,96(sp)
    80006674:	06813703          	ld	a4,104(sp)
    80006678:	07013783          	ld	a5,112(sp)
    8000667c:	07813803          	ld	a6,120(sp)
    80006680:	08013883          	ld	a7,128(sp)
    80006684:	08813903          	ld	s2,136(sp)
    80006688:	09013983          	ld	s3,144(sp)
    8000668c:	09813a03          	ld	s4,152(sp)
    80006690:	0a013a83          	ld	s5,160(sp)
    80006694:	0a813b03          	ld	s6,168(sp)
    80006698:	0b013b83          	ld	s7,176(sp)
    8000669c:	0b813c03          	ld	s8,184(sp)
    800066a0:	0c013c83          	ld	s9,192(sp)
    800066a4:	0c813d03          	ld	s10,200(sp)
    800066a8:	0d013d83          	ld	s11,208(sp)
    800066ac:	0d813e03          	ld	t3,216(sp)
    800066b0:	0e013e83          	ld	t4,224(sp)
    800066b4:	0e813f03          	ld	t5,232(sp)
    800066b8:	0f013f83          	ld	t6,240(sp)
    800066bc:	10010113          	addi	sp,sp,256
    800066c0:	10200073          	sret
    800066c4:	00000013          	nop
    800066c8:	00000013          	nop
    800066cc:	00000013          	nop

00000000800066d0 <timervec>:
    800066d0:	34051573          	csrrw	a0,mscratch,a0
    800066d4:	00b53023          	sd	a1,0(a0)
    800066d8:	00c53423          	sd	a2,8(a0)
    800066dc:	00d53823          	sd	a3,16(a0)
    800066e0:	01853583          	ld	a1,24(a0)
    800066e4:	02053603          	ld	a2,32(a0)
    800066e8:	0005b683          	ld	a3,0(a1)
    800066ec:	00c686b3          	add	a3,a3,a2
    800066f0:	00d5b023          	sd	a3,0(a1)
    800066f4:	00200593          	li	a1,2
    800066f8:	14459073          	csrw	sip,a1
    800066fc:	01053683          	ld	a3,16(a0)
    80006700:	00853603          	ld	a2,8(a0)
    80006704:	00053583          	ld	a1,0(a0)
    80006708:	34051573          	csrrw	a0,mscratch,a0
    8000670c:	30200073          	mret

0000000080006710 <plicinit>:
    80006710:	ff010113          	addi	sp,sp,-16
    80006714:	00813423          	sd	s0,8(sp)
    80006718:	01010413          	addi	s0,sp,16
    8000671c:	00813403          	ld	s0,8(sp)
    80006720:	0c0007b7          	lui	a5,0xc000
    80006724:	00100713          	li	a4,1
    80006728:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000672c:	00e7a223          	sw	a4,4(a5)
    80006730:	01010113          	addi	sp,sp,16
    80006734:	00008067          	ret

0000000080006738 <plicinithart>:
    80006738:	ff010113          	addi	sp,sp,-16
    8000673c:	00813023          	sd	s0,0(sp)
    80006740:	00113423          	sd	ra,8(sp)
    80006744:	01010413          	addi	s0,sp,16
    80006748:	00000097          	auipc	ra,0x0
    8000674c:	a48080e7          	jalr	-1464(ra) # 80006190 <cpuid>
    80006750:	0085171b          	slliw	a4,a0,0x8
    80006754:	0c0027b7          	lui	a5,0xc002
    80006758:	00e787b3          	add	a5,a5,a4
    8000675c:	40200713          	li	a4,1026
    80006760:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006764:	00813083          	ld	ra,8(sp)
    80006768:	00013403          	ld	s0,0(sp)
    8000676c:	00d5151b          	slliw	a0,a0,0xd
    80006770:	0c2017b7          	lui	a5,0xc201
    80006774:	00a78533          	add	a0,a5,a0
    80006778:	00052023          	sw	zero,0(a0)
    8000677c:	01010113          	addi	sp,sp,16
    80006780:	00008067          	ret

0000000080006784 <plic_claim>:
    80006784:	ff010113          	addi	sp,sp,-16
    80006788:	00813023          	sd	s0,0(sp)
    8000678c:	00113423          	sd	ra,8(sp)
    80006790:	01010413          	addi	s0,sp,16
    80006794:	00000097          	auipc	ra,0x0
    80006798:	9fc080e7          	jalr	-1540(ra) # 80006190 <cpuid>
    8000679c:	00813083          	ld	ra,8(sp)
    800067a0:	00013403          	ld	s0,0(sp)
    800067a4:	00d5151b          	slliw	a0,a0,0xd
    800067a8:	0c2017b7          	lui	a5,0xc201
    800067ac:	00a78533          	add	a0,a5,a0
    800067b0:	00452503          	lw	a0,4(a0)
    800067b4:	01010113          	addi	sp,sp,16
    800067b8:	00008067          	ret

00000000800067bc <plic_complete>:
    800067bc:	fe010113          	addi	sp,sp,-32
    800067c0:	00813823          	sd	s0,16(sp)
    800067c4:	00913423          	sd	s1,8(sp)
    800067c8:	00113c23          	sd	ra,24(sp)
    800067cc:	02010413          	addi	s0,sp,32
    800067d0:	00050493          	mv	s1,a0
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	9bc080e7          	jalr	-1604(ra) # 80006190 <cpuid>
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	00d5179b          	slliw	a5,a0,0xd
    800067e8:	0c201737          	lui	a4,0xc201
    800067ec:	00f707b3          	add	a5,a4,a5
    800067f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800067f4:	00813483          	ld	s1,8(sp)
    800067f8:	02010113          	addi	sp,sp,32
    800067fc:	00008067          	ret

0000000080006800 <consolewrite>:
    80006800:	fb010113          	addi	sp,sp,-80
    80006804:	04813023          	sd	s0,64(sp)
    80006808:	04113423          	sd	ra,72(sp)
    8000680c:	02913c23          	sd	s1,56(sp)
    80006810:	03213823          	sd	s2,48(sp)
    80006814:	03313423          	sd	s3,40(sp)
    80006818:	03413023          	sd	s4,32(sp)
    8000681c:	01513c23          	sd	s5,24(sp)
    80006820:	05010413          	addi	s0,sp,80
    80006824:	06c05c63          	blez	a2,8000689c <consolewrite+0x9c>
    80006828:	00060993          	mv	s3,a2
    8000682c:	00050a13          	mv	s4,a0
    80006830:	00058493          	mv	s1,a1
    80006834:	00000913          	li	s2,0
    80006838:	fff00a93          	li	s5,-1
    8000683c:	01c0006f          	j	80006858 <consolewrite+0x58>
    80006840:	fbf44503          	lbu	a0,-65(s0)
    80006844:	0019091b          	addiw	s2,s2,1
    80006848:	00148493          	addi	s1,s1,1
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	a9c080e7          	jalr	-1380(ra) # 800072e8 <uartputc>
    80006854:	03298063          	beq	s3,s2,80006874 <consolewrite+0x74>
    80006858:	00048613          	mv	a2,s1
    8000685c:	00100693          	li	a3,1
    80006860:	000a0593          	mv	a1,s4
    80006864:	fbf40513          	addi	a0,s0,-65
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	9e0080e7          	jalr	-1568(ra) # 80006248 <either_copyin>
    80006870:	fd5518e3          	bne	a0,s5,80006840 <consolewrite+0x40>
    80006874:	04813083          	ld	ra,72(sp)
    80006878:	04013403          	ld	s0,64(sp)
    8000687c:	03813483          	ld	s1,56(sp)
    80006880:	02813983          	ld	s3,40(sp)
    80006884:	02013a03          	ld	s4,32(sp)
    80006888:	01813a83          	ld	s5,24(sp)
    8000688c:	00090513          	mv	a0,s2
    80006890:	03013903          	ld	s2,48(sp)
    80006894:	05010113          	addi	sp,sp,80
    80006898:	00008067          	ret
    8000689c:	00000913          	li	s2,0
    800068a0:	fd5ff06f          	j	80006874 <consolewrite+0x74>

00000000800068a4 <consoleread>:
    800068a4:	f9010113          	addi	sp,sp,-112
    800068a8:	06813023          	sd	s0,96(sp)
    800068ac:	04913c23          	sd	s1,88(sp)
    800068b0:	05213823          	sd	s2,80(sp)
    800068b4:	05313423          	sd	s3,72(sp)
    800068b8:	05413023          	sd	s4,64(sp)
    800068bc:	03513c23          	sd	s5,56(sp)
    800068c0:	03613823          	sd	s6,48(sp)
    800068c4:	03713423          	sd	s7,40(sp)
    800068c8:	03813023          	sd	s8,32(sp)
    800068cc:	06113423          	sd	ra,104(sp)
    800068d0:	01913c23          	sd	s9,24(sp)
    800068d4:	07010413          	addi	s0,sp,112
    800068d8:	00060b93          	mv	s7,a2
    800068dc:	00050913          	mv	s2,a0
    800068e0:	00058c13          	mv	s8,a1
    800068e4:	00060b1b          	sext.w	s6,a2
    800068e8:	00006497          	auipc	s1,0x6
    800068ec:	d3048493          	addi	s1,s1,-720 # 8000c618 <cons>
    800068f0:	00400993          	li	s3,4
    800068f4:	fff00a13          	li	s4,-1
    800068f8:	00a00a93          	li	s5,10
    800068fc:	05705e63          	blez	s7,80006958 <consoleread+0xb4>
    80006900:	09c4a703          	lw	a4,156(s1)
    80006904:	0984a783          	lw	a5,152(s1)
    80006908:	0007071b          	sext.w	a4,a4
    8000690c:	08e78463          	beq	a5,a4,80006994 <consoleread+0xf0>
    80006910:	07f7f713          	andi	a4,a5,127
    80006914:	00e48733          	add	a4,s1,a4
    80006918:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000691c:	0017869b          	addiw	a3,a5,1
    80006920:	08d4ac23          	sw	a3,152(s1)
    80006924:	00070c9b          	sext.w	s9,a4
    80006928:	0b370663          	beq	a4,s3,800069d4 <consoleread+0x130>
    8000692c:	00100693          	li	a3,1
    80006930:	f9f40613          	addi	a2,s0,-97
    80006934:	000c0593          	mv	a1,s8
    80006938:	00090513          	mv	a0,s2
    8000693c:	f8e40fa3          	sb	a4,-97(s0)
    80006940:	00000097          	auipc	ra,0x0
    80006944:	8bc080e7          	jalr	-1860(ra) # 800061fc <either_copyout>
    80006948:	01450863          	beq	a0,s4,80006958 <consoleread+0xb4>
    8000694c:	001c0c13          	addi	s8,s8,1
    80006950:	fffb8b9b          	addiw	s7,s7,-1
    80006954:	fb5c94e3          	bne	s9,s5,800068fc <consoleread+0x58>
    80006958:	000b851b          	sext.w	a0,s7
    8000695c:	06813083          	ld	ra,104(sp)
    80006960:	06013403          	ld	s0,96(sp)
    80006964:	05813483          	ld	s1,88(sp)
    80006968:	05013903          	ld	s2,80(sp)
    8000696c:	04813983          	ld	s3,72(sp)
    80006970:	04013a03          	ld	s4,64(sp)
    80006974:	03813a83          	ld	s5,56(sp)
    80006978:	02813b83          	ld	s7,40(sp)
    8000697c:	02013c03          	ld	s8,32(sp)
    80006980:	01813c83          	ld	s9,24(sp)
    80006984:	40ab053b          	subw	a0,s6,a0
    80006988:	03013b03          	ld	s6,48(sp)
    8000698c:	07010113          	addi	sp,sp,112
    80006990:	00008067          	ret
    80006994:	00001097          	auipc	ra,0x1
    80006998:	1d8080e7          	jalr	472(ra) # 80007b6c <push_on>
    8000699c:	0984a703          	lw	a4,152(s1)
    800069a0:	09c4a783          	lw	a5,156(s1)
    800069a4:	0007879b          	sext.w	a5,a5
    800069a8:	fef70ce3          	beq	a4,a5,800069a0 <consoleread+0xfc>
    800069ac:	00001097          	auipc	ra,0x1
    800069b0:	234080e7          	jalr	564(ra) # 80007be0 <pop_on>
    800069b4:	0984a783          	lw	a5,152(s1)
    800069b8:	07f7f713          	andi	a4,a5,127
    800069bc:	00e48733          	add	a4,s1,a4
    800069c0:	01874703          	lbu	a4,24(a4)
    800069c4:	0017869b          	addiw	a3,a5,1
    800069c8:	08d4ac23          	sw	a3,152(s1)
    800069cc:	00070c9b          	sext.w	s9,a4
    800069d0:	f5371ee3          	bne	a4,s3,8000692c <consoleread+0x88>
    800069d4:	000b851b          	sext.w	a0,s7
    800069d8:	f96bf2e3          	bgeu	s7,s6,8000695c <consoleread+0xb8>
    800069dc:	08f4ac23          	sw	a5,152(s1)
    800069e0:	f7dff06f          	j	8000695c <consoleread+0xb8>

00000000800069e4 <consputc>:
    800069e4:	10000793          	li	a5,256
    800069e8:	00f50663          	beq	a0,a5,800069f4 <consputc+0x10>
    800069ec:	00001317          	auipc	t1,0x1
    800069f0:	9f430067          	jr	-1548(t1) # 800073e0 <uartputc_sync>
    800069f4:	ff010113          	addi	sp,sp,-16
    800069f8:	00113423          	sd	ra,8(sp)
    800069fc:	00813023          	sd	s0,0(sp)
    80006a00:	01010413          	addi	s0,sp,16
    80006a04:	00800513          	li	a0,8
    80006a08:	00001097          	auipc	ra,0x1
    80006a0c:	9d8080e7          	jalr	-1576(ra) # 800073e0 <uartputc_sync>
    80006a10:	02000513          	li	a0,32
    80006a14:	00001097          	auipc	ra,0x1
    80006a18:	9cc080e7          	jalr	-1588(ra) # 800073e0 <uartputc_sync>
    80006a1c:	00013403          	ld	s0,0(sp)
    80006a20:	00813083          	ld	ra,8(sp)
    80006a24:	00800513          	li	a0,8
    80006a28:	01010113          	addi	sp,sp,16
    80006a2c:	00001317          	auipc	t1,0x1
    80006a30:	9b430067          	jr	-1612(t1) # 800073e0 <uartputc_sync>

0000000080006a34 <consoleintr>:
    80006a34:	fe010113          	addi	sp,sp,-32
    80006a38:	00813823          	sd	s0,16(sp)
    80006a3c:	00913423          	sd	s1,8(sp)
    80006a40:	01213023          	sd	s2,0(sp)
    80006a44:	00113c23          	sd	ra,24(sp)
    80006a48:	02010413          	addi	s0,sp,32
    80006a4c:	00006917          	auipc	s2,0x6
    80006a50:	bcc90913          	addi	s2,s2,-1076 # 8000c618 <cons>
    80006a54:	00050493          	mv	s1,a0
    80006a58:	00090513          	mv	a0,s2
    80006a5c:	00001097          	auipc	ra,0x1
    80006a60:	e40080e7          	jalr	-448(ra) # 8000789c <acquire>
    80006a64:	02048c63          	beqz	s1,80006a9c <consoleintr+0x68>
    80006a68:	0a092783          	lw	a5,160(s2)
    80006a6c:	09892703          	lw	a4,152(s2)
    80006a70:	07f00693          	li	a3,127
    80006a74:	40e7873b          	subw	a4,a5,a4
    80006a78:	02e6e263          	bltu	a3,a4,80006a9c <consoleintr+0x68>
    80006a7c:	00d00713          	li	a4,13
    80006a80:	04e48063          	beq	s1,a4,80006ac0 <consoleintr+0x8c>
    80006a84:	07f7f713          	andi	a4,a5,127
    80006a88:	00e90733          	add	a4,s2,a4
    80006a8c:	0017879b          	addiw	a5,a5,1
    80006a90:	0af92023          	sw	a5,160(s2)
    80006a94:	00970c23          	sb	s1,24(a4)
    80006a98:	08f92e23          	sw	a5,156(s2)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	01813083          	ld	ra,24(sp)
    80006aa4:	00813483          	ld	s1,8(sp)
    80006aa8:	00013903          	ld	s2,0(sp)
    80006aac:	00006517          	auipc	a0,0x6
    80006ab0:	b6c50513          	addi	a0,a0,-1172 # 8000c618 <cons>
    80006ab4:	02010113          	addi	sp,sp,32
    80006ab8:	00001317          	auipc	t1,0x1
    80006abc:	eb030067          	jr	-336(t1) # 80007968 <release>
    80006ac0:	00a00493          	li	s1,10
    80006ac4:	fc1ff06f          	j	80006a84 <consoleintr+0x50>

0000000080006ac8 <consoleinit>:
    80006ac8:	fe010113          	addi	sp,sp,-32
    80006acc:	00113c23          	sd	ra,24(sp)
    80006ad0:	00813823          	sd	s0,16(sp)
    80006ad4:	00913423          	sd	s1,8(sp)
    80006ad8:	02010413          	addi	s0,sp,32
    80006adc:	00006497          	auipc	s1,0x6
    80006ae0:	b3c48493          	addi	s1,s1,-1220 # 8000c618 <cons>
    80006ae4:	00048513          	mv	a0,s1
    80006ae8:	00003597          	auipc	a1,0x3
    80006aec:	ba058593          	addi	a1,a1,-1120 # 80009688 <_ZZ12printIntegermE6digits+0x628>
    80006af0:	00001097          	auipc	ra,0x1
    80006af4:	d88080e7          	jalr	-632(ra) # 80007878 <initlock>
    80006af8:	00000097          	auipc	ra,0x0
    80006afc:	7ac080e7          	jalr	1964(ra) # 800072a4 <uartinit>
    80006b00:	01813083          	ld	ra,24(sp)
    80006b04:	01013403          	ld	s0,16(sp)
    80006b08:	00000797          	auipc	a5,0x0
    80006b0c:	d9c78793          	addi	a5,a5,-612 # 800068a4 <consoleread>
    80006b10:	0af4bc23          	sd	a5,184(s1)
    80006b14:	00000797          	auipc	a5,0x0
    80006b18:	cec78793          	addi	a5,a5,-788 # 80006800 <consolewrite>
    80006b1c:	0cf4b023          	sd	a5,192(s1)
    80006b20:	00813483          	ld	s1,8(sp)
    80006b24:	02010113          	addi	sp,sp,32
    80006b28:	00008067          	ret

0000000080006b2c <console_read>:
    80006b2c:	ff010113          	addi	sp,sp,-16
    80006b30:	00813423          	sd	s0,8(sp)
    80006b34:	01010413          	addi	s0,sp,16
    80006b38:	00813403          	ld	s0,8(sp)
    80006b3c:	00006317          	auipc	t1,0x6
    80006b40:	b9433303          	ld	t1,-1132(t1) # 8000c6d0 <devsw+0x10>
    80006b44:	01010113          	addi	sp,sp,16
    80006b48:	00030067          	jr	t1

0000000080006b4c <console_write>:
    80006b4c:	ff010113          	addi	sp,sp,-16
    80006b50:	00813423          	sd	s0,8(sp)
    80006b54:	01010413          	addi	s0,sp,16
    80006b58:	00813403          	ld	s0,8(sp)
    80006b5c:	00006317          	auipc	t1,0x6
    80006b60:	b7c33303          	ld	t1,-1156(t1) # 8000c6d8 <devsw+0x18>
    80006b64:	01010113          	addi	sp,sp,16
    80006b68:	00030067          	jr	t1

0000000080006b6c <panic>:
    80006b6c:	fe010113          	addi	sp,sp,-32
    80006b70:	00113c23          	sd	ra,24(sp)
    80006b74:	00813823          	sd	s0,16(sp)
    80006b78:	00913423          	sd	s1,8(sp)
    80006b7c:	02010413          	addi	s0,sp,32
    80006b80:	00050493          	mv	s1,a0
    80006b84:	00003517          	auipc	a0,0x3
    80006b88:	b0c50513          	addi	a0,a0,-1268 # 80009690 <_ZZ12printIntegermE6digits+0x630>
    80006b8c:	00006797          	auipc	a5,0x6
    80006b90:	be07a623          	sw	zero,-1044(a5) # 8000c778 <pr+0x18>
    80006b94:	00000097          	auipc	ra,0x0
    80006b98:	034080e7          	jalr	52(ra) # 80006bc8 <__printf>
    80006b9c:	00048513          	mv	a0,s1
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	028080e7          	jalr	40(ra) # 80006bc8 <__printf>
    80006ba8:	00003517          	auipc	a0,0x3
    80006bac:	8f050513          	addi	a0,a0,-1808 # 80009498 <_ZZ12printIntegermE6digits+0x438>
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	018080e7          	jalr	24(ra) # 80006bc8 <__printf>
    80006bb8:	00100793          	li	a5,1
    80006bbc:	00005717          	auipc	a4,0x5
    80006bc0:	8cf72623          	sw	a5,-1844(a4) # 8000b488 <panicked>
    80006bc4:	0000006f          	j	80006bc4 <panic+0x58>

0000000080006bc8 <__printf>:
    80006bc8:	f3010113          	addi	sp,sp,-208
    80006bcc:	08813023          	sd	s0,128(sp)
    80006bd0:	07313423          	sd	s3,104(sp)
    80006bd4:	09010413          	addi	s0,sp,144
    80006bd8:	05813023          	sd	s8,64(sp)
    80006bdc:	08113423          	sd	ra,136(sp)
    80006be0:	06913c23          	sd	s1,120(sp)
    80006be4:	07213823          	sd	s2,112(sp)
    80006be8:	07413023          	sd	s4,96(sp)
    80006bec:	05513c23          	sd	s5,88(sp)
    80006bf0:	05613823          	sd	s6,80(sp)
    80006bf4:	05713423          	sd	s7,72(sp)
    80006bf8:	03913c23          	sd	s9,56(sp)
    80006bfc:	03a13823          	sd	s10,48(sp)
    80006c00:	03b13423          	sd	s11,40(sp)
    80006c04:	00006317          	auipc	t1,0x6
    80006c08:	b5c30313          	addi	t1,t1,-1188 # 8000c760 <pr>
    80006c0c:	01832c03          	lw	s8,24(t1)
    80006c10:	00b43423          	sd	a1,8(s0)
    80006c14:	00c43823          	sd	a2,16(s0)
    80006c18:	00d43c23          	sd	a3,24(s0)
    80006c1c:	02e43023          	sd	a4,32(s0)
    80006c20:	02f43423          	sd	a5,40(s0)
    80006c24:	03043823          	sd	a6,48(s0)
    80006c28:	03143c23          	sd	a7,56(s0)
    80006c2c:	00050993          	mv	s3,a0
    80006c30:	4a0c1663          	bnez	s8,800070dc <__printf+0x514>
    80006c34:	60098c63          	beqz	s3,8000724c <__printf+0x684>
    80006c38:	0009c503          	lbu	a0,0(s3)
    80006c3c:	00840793          	addi	a5,s0,8
    80006c40:	f6f43c23          	sd	a5,-136(s0)
    80006c44:	00000493          	li	s1,0
    80006c48:	22050063          	beqz	a0,80006e68 <__printf+0x2a0>
    80006c4c:	00002a37          	lui	s4,0x2
    80006c50:	00018ab7          	lui	s5,0x18
    80006c54:	000f4b37          	lui	s6,0xf4
    80006c58:	00989bb7          	lui	s7,0x989
    80006c5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006c60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006c64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006c68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006c6c:	00148c9b          	addiw	s9,s1,1
    80006c70:	02500793          	li	a5,37
    80006c74:	01998933          	add	s2,s3,s9
    80006c78:	38f51263          	bne	a0,a5,80006ffc <__printf+0x434>
    80006c7c:	00094783          	lbu	a5,0(s2)
    80006c80:	00078c9b          	sext.w	s9,a5
    80006c84:	1e078263          	beqz	a5,80006e68 <__printf+0x2a0>
    80006c88:	0024849b          	addiw	s1,s1,2
    80006c8c:	07000713          	li	a4,112
    80006c90:	00998933          	add	s2,s3,s1
    80006c94:	38e78a63          	beq	a5,a4,80007028 <__printf+0x460>
    80006c98:	20f76863          	bltu	a4,a5,80006ea8 <__printf+0x2e0>
    80006c9c:	42a78863          	beq	a5,a0,800070cc <__printf+0x504>
    80006ca0:	06400713          	li	a4,100
    80006ca4:	40e79663          	bne	a5,a4,800070b0 <__printf+0x4e8>
    80006ca8:	f7843783          	ld	a5,-136(s0)
    80006cac:	0007a603          	lw	a2,0(a5)
    80006cb0:	00878793          	addi	a5,a5,8
    80006cb4:	f6f43c23          	sd	a5,-136(s0)
    80006cb8:	42064a63          	bltz	a2,800070ec <__printf+0x524>
    80006cbc:	00a00713          	li	a4,10
    80006cc0:	02e677bb          	remuw	a5,a2,a4
    80006cc4:	00003d97          	auipc	s11,0x3
    80006cc8:	9f4d8d93          	addi	s11,s11,-1548 # 800096b8 <digits>
    80006ccc:	00900593          	li	a1,9
    80006cd0:	0006051b          	sext.w	a0,a2
    80006cd4:	00000c93          	li	s9,0
    80006cd8:	02079793          	slli	a5,a5,0x20
    80006cdc:	0207d793          	srli	a5,a5,0x20
    80006ce0:	00fd87b3          	add	a5,s11,a5
    80006ce4:	0007c783          	lbu	a5,0(a5)
    80006ce8:	02e656bb          	divuw	a3,a2,a4
    80006cec:	f8f40023          	sb	a5,-128(s0)
    80006cf0:	14c5d863          	bge	a1,a2,80006e40 <__printf+0x278>
    80006cf4:	06300593          	li	a1,99
    80006cf8:	00100c93          	li	s9,1
    80006cfc:	02e6f7bb          	remuw	a5,a3,a4
    80006d00:	02079793          	slli	a5,a5,0x20
    80006d04:	0207d793          	srli	a5,a5,0x20
    80006d08:	00fd87b3          	add	a5,s11,a5
    80006d0c:	0007c783          	lbu	a5,0(a5)
    80006d10:	02e6d73b          	divuw	a4,a3,a4
    80006d14:	f8f400a3          	sb	a5,-127(s0)
    80006d18:	12a5f463          	bgeu	a1,a0,80006e40 <__printf+0x278>
    80006d1c:	00a00693          	li	a3,10
    80006d20:	00900593          	li	a1,9
    80006d24:	02d777bb          	remuw	a5,a4,a3
    80006d28:	02079793          	slli	a5,a5,0x20
    80006d2c:	0207d793          	srli	a5,a5,0x20
    80006d30:	00fd87b3          	add	a5,s11,a5
    80006d34:	0007c503          	lbu	a0,0(a5)
    80006d38:	02d757bb          	divuw	a5,a4,a3
    80006d3c:	f8a40123          	sb	a0,-126(s0)
    80006d40:	48e5f263          	bgeu	a1,a4,800071c4 <__printf+0x5fc>
    80006d44:	06300513          	li	a0,99
    80006d48:	02d7f5bb          	remuw	a1,a5,a3
    80006d4c:	02059593          	slli	a1,a1,0x20
    80006d50:	0205d593          	srli	a1,a1,0x20
    80006d54:	00bd85b3          	add	a1,s11,a1
    80006d58:	0005c583          	lbu	a1,0(a1)
    80006d5c:	02d7d7bb          	divuw	a5,a5,a3
    80006d60:	f8b401a3          	sb	a1,-125(s0)
    80006d64:	48e57263          	bgeu	a0,a4,800071e8 <__printf+0x620>
    80006d68:	3e700513          	li	a0,999
    80006d6c:	02d7f5bb          	remuw	a1,a5,a3
    80006d70:	02059593          	slli	a1,a1,0x20
    80006d74:	0205d593          	srli	a1,a1,0x20
    80006d78:	00bd85b3          	add	a1,s11,a1
    80006d7c:	0005c583          	lbu	a1,0(a1)
    80006d80:	02d7d7bb          	divuw	a5,a5,a3
    80006d84:	f8b40223          	sb	a1,-124(s0)
    80006d88:	46e57663          	bgeu	a0,a4,800071f4 <__printf+0x62c>
    80006d8c:	02d7f5bb          	remuw	a1,a5,a3
    80006d90:	02059593          	slli	a1,a1,0x20
    80006d94:	0205d593          	srli	a1,a1,0x20
    80006d98:	00bd85b3          	add	a1,s11,a1
    80006d9c:	0005c583          	lbu	a1,0(a1)
    80006da0:	02d7d7bb          	divuw	a5,a5,a3
    80006da4:	f8b402a3          	sb	a1,-123(s0)
    80006da8:	46ea7863          	bgeu	s4,a4,80007218 <__printf+0x650>
    80006dac:	02d7f5bb          	remuw	a1,a5,a3
    80006db0:	02059593          	slli	a1,a1,0x20
    80006db4:	0205d593          	srli	a1,a1,0x20
    80006db8:	00bd85b3          	add	a1,s11,a1
    80006dbc:	0005c583          	lbu	a1,0(a1)
    80006dc0:	02d7d7bb          	divuw	a5,a5,a3
    80006dc4:	f8b40323          	sb	a1,-122(s0)
    80006dc8:	3eeaf863          	bgeu	s5,a4,800071b8 <__printf+0x5f0>
    80006dcc:	02d7f5bb          	remuw	a1,a5,a3
    80006dd0:	02059593          	slli	a1,a1,0x20
    80006dd4:	0205d593          	srli	a1,a1,0x20
    80006dd8:	00bd85b3          	add	a1,s11,a1
    80006ddc:	0005c583          	lbu	a1,0(a1)
    80006de0:	02d7d7bb          	divuw	a5,a5,a3
    80006de4:	f8b403a3          	sb	a1,-121(s0)
    80006de8:	42eb7e63          	bgeu	s6,a4,80007224 <__printf+0x65c>
    80006dec:	02d7f5bb          	remuw	a1,a5,a3
    80006df0:	02059593          	slli	a1,a1,0x20
    80006df4:	0205d593          	srli	a1,a1,0x20
    80006df8:	00bd85b3          	add	a1,s11,a1
    80006dfc:	0005c583          	lbu	a1,0(a1)
    80006e00:	02d7d7bb          	divuw	a5,a5,a3
    80006e04:	f8b40423          	sb	a1,-120(s0)
    80006e08:	42ebfc63          	bgeu	s7,a4,80007240 <__printf+0x678>
    80006e0c:	02079793          	slli	a5,a5,0x20
    80006e10:	0207d793          	srli	a5,a5,0x20
    80006e14:	00fd8db3          	add	s11,s11,a5
    80006e18:	000dc703          	lbu	a4,0(s11)
    80006e1c:	00a00793          	li	a5,10
    80006e20:	00900c93          	li	s9,9
    80006e24:	f8e404a3          	sb	a4,-119(s0)
    80006e28:	00065c63          	bgez	a2,80006e40 <__printf+0x278>
    80006e2c:	f9040713          	addi	a4,s0,-112
    80006e30:	00f70733          	add	a4,a4,a5
    80006e34:	02d00693          	li	a3,45
    80006e38:	fed70823          	sb	a3,-16(a4)
    80006e3c:	00078c93          	mv	s9,a5
    80006e40:	f8040793          	addi	a5,s0,-128
    80006e44:	01978cb3          	add	s9,a5,s9
    80006e48:	f7f40d13          	addi	s10,s0,-129
    80006e4c:	000cc503          	lbu	a0,0(s9)
    80006e50:	fffc8c93          	addi	s9,s9,-1
    80006e54:	00000097          	auipc	ra,0x0
    80006e58:	b90080e7          	jalr	-1136(ra) # 800069e4 <consputc>
    80006e5c:	ffac98e3          	bne	s9,s10,80006e4c <__printf+0x284>
    80006e60:	00094503          	lbu	a0,0(s2)
    80006e64:	e00514e3          	bnez	a0,80006c6c <__printf+0xa4>
    80006e68:	1a0c1663          	bnez	s8,80007014 <__printf+0x44c>
    80006e6c:	08813083          	ld	ra,136(sp)
    80006e70:	08013403          	ld	s0,128(sp)
    80006e74:	07813483          	ld	s1,120(sp)
    80006e78:	07013903          	ld	s2,112(sp)
    80006e7c:	06813983          	ld	s3,104(sp)
    80006e80:	06013a03          	ld	s4,96(sp)
    80006e84:	05813a83          	ld	s5,88(sp)
    80006e88:	05013b03          	ld	s6,80(sp)
    80006e8c:	04813b83          	ld	s7,72(sp)
    80006e90:	04013c03          	ld	s8,64(sp)
    80006e94:	03813c83          	ld	s9,56(sp)
    80006e98:	03013d03          	ld	s10,48(sp)
    80006e9c:	02813d83          	ld	s11,40(sp)
    80006ea0:	0d010113          	addi	sp,sp,208
    80006ea4:	00008067          	ret
    80006ea8:	07300713          	li	a4,115
    80006eac:	1ce78a63          	beq	a5,a4,80007080 <__printf+0x4b8>
    80006eb0:	07800713          	li	a4,120
    80006eb4:	1ee79e63          	bne	a5,a4,800070b0 <__printf+0x4e8>
    80006eb8:	f7843783          	ld	a5,-136(s0)
    80006ebc:	0007a703          	lw	a4,0(a5)
    80006ec0:	00878793          	addi	a5,a5,8
    80006ec4:	f6f43c23          	sd	a5,-136(s0)
    80006ec8:	28074263          	bltz	a4,8000714c <__printf+0x584>
    80006ecc:	00002d97          	auipc	s11,0x2
    80006ed0:	7ecd8d93          	addi	s11,s11,2028 # 800096b8 <digits>
    80006ed4:	00f77793          	andi	a5,a4,15
    80006ed8:	00fd87b3          	add	a5,s11,a5
    80006edc:	0007c683          	lbu	a3,0(a5)
    80006ee0:	00f00613          	li	a2,15
    80006ee4:	0007079b          	sext.w	a5,a4
    80006ee8:	f8d40023          	sb	a3,-128(s0)
    80006eec:	0047559b          	srliw	a1,a4,0x4
    80006ef0:	0047569b          	srliw	a3,a4,0x4
    80006ef4:	00000c93          	li	s9,0
    80006ef8:	0ee65063          	bge	a2,a4,80006fd8 <__printf+0x410>
    80006efc:	00f6f693          	andi	a3,a3,15
    80006f00:	00dd86b3          	add	a3,s11,a3
    80006f04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006f08:	0087d79b          	srliw	a5,a5,0x8
    80006f0c:	00100c93          	li	s9,1
    80006f10:	f8d400a3          	sb	a3,-127(s0)
    80006f14:	0cb67263          	bgeu	a2,a1,80006fd8 <__printf+0x410>
    80006f18:	00f7f693          	andi	a3,a5,15
    80006f1c:	00dd86b3          	add	a3,s11,a3
    80006f20:	0006c583          	lbu	a1,0(a3)
    80006f24:	00f00613          	li	a2,15
    80006f28:	0047d69b          	srliw	a3,a5,0x4
    80006f2c:	f8b40123          	sb	a1,-126(s0)
    80006f30:	0047d593          	srli	a1,a5,0x4
    80006f34:	28f67e63          	bgeu	a2,a5,800071d0 <__printf+0x608>
    80006f38:	00f6f693          	andi	a3,a3,15
    80006f3c:	00dd86b3          	add	a3,s11,a3
    80006f40:	0006c503          	lbu	a0,0(a3)
    80006f44:	0087d813          	srli	a6,a5,0x8
    80006f48:	0087d69b          	srliw	a3,a5,0x8
    80006f4c:	f8a401a3          	sb	a0,-125(s0)
    80006f50:	28b67663          	bgeu	a2,a1,800071dc <__printf+0x614>
    80006f54:	00f6f693          	andi	a3,a3,15
    80006f58:	00dd86b3          	add	a3,s11,a3
    80006f5c:	0006c583          	lbu	a1,0(a3)
    80006f60:	00c7d513          	srli	a0,a5,0xc
    80006f64:	00c7d69b          	srliw	a3,a5,0xc
    80006f68:	f8b40223          	sb	a1,-124(s0)
    80006f6c:	29067a63          	bgeu	a2,a6,80007200 <__printf+0x638>
    80006f70:	00f6f693          	andi	a3,a3,15
    80006f74:	00dd86b3          	add	a3,s11,a3
    80006f78:	0006c583          	lbu	a1,0(a3)
    80006f7c:	0107d813          	srli	a6,a5,0x10
    80006f80:	0107d69b          	srliw	a3,a5,0x10
    80006f84:	f8b402a3          	sb	a1,-123(s0)
    80006f88:	28a67263          	bgeu	a2,a0,8000720c <__printf+0x644>
    80006f8c:	00f6f693          	andi	a3,a3,15
    80006f90:	00dd86b3          	add	a3,s11,a3
    80006f94:	0006c683          	lbu	a3,0(a3)
    80006f98:	0147d79b          	srliw	a5,a5,0x14
    80006f9c:	f8d40323          	sb	a3,-122(s0)
    80006fa0:	21067663          	bgeu	a2,a6,800071ac <__printf+0x5e4>
    80006fa4:	02079793          	slli	a5,a5,0x20
    80006fa8:	0207d793          	srli	a5,a5,0x20
    80006fac:	00fd8db3          	add	s11,s11,a5
    80006fb0:	000dc683          	lbu	a3,0(s11)
    80006fb4:	00800793          	li	a5,8
    80006fb8:	00700c93          	li	s9,7
    80006fbc:	f8d403a3          	sb	a3,-121(s0)
    80006fc0:	00075c63          	bgez	a4,80006fd8 <__printf+0x410>
    80006fc4:	f9040713          	addi	a4,s0,-112
    80006fc8:	00f70733          	add	a4,a4,a5
    80006fcc:	02d00693          	li	a3,45
    80006fd0:	fed70823          	sb	a3,-16(a4)
    80006fd4:	00078c93          	mv	s9,a5
    80006fd8:	f8040793          	addi	a5,s0,-128
    80006fdc:	01978cb3          	add	s9,a5,s9
    80006fe0:	f7f40d13          	addi	s10,s0,-129
    80006fe4:	000cc503          	lbu	a0,0(s9)
    80006fe8:	fffc8c93          	addi	s9,s9,-1
    80006fec:	00000097          	auipc	ra,0x0
    80006ff0:	9f8080e7          	jalr	-1544(ra) # 800069e4 <consputc>
    80006ff4:	ff9d18e3          	bne	s10,s9,80006fe4 <__printf+0x41c>
    80006ff8:	0100006f          	j	80007008 <__printf+0x440>
    80006ffc:	00000097          	auipc	ra,0x0
    80007000:	9e8080e7          	jalr	-1560(ra) # 800069e4 <consputc>
    80007004:	000c8493          	mv	s1,s9
    80007008:	00094503          	lbu	a0,0(s2)
    8000700c:	c60510e3          	bnez	a0,80006c6c <__printf+0xa4>
    80007010:	e40c0ee3          	beqz	s8,80006e6c <__printf+0x2a4>
    80007014:	00005517          	auipc	a0,0x5
    80007018:	74c50513          	addi	a0,a0,1868 # 8000c760 <pr>
    8000701c:	00001097          	auipc	ra,0x1
    80007020:	94c080e7          	jalr	-1716(ra) # 80007968 <release>
    80007024:	e49ff06f          	j	80006e6c <__printf+0x2a4>
    80007028:	f7843783          	ld	a5,-136(s0)
    8000702c:	03000513          	li	a0,48
    80007030:	01000d13          	li	s10,16
    80007034:	00878713          	addi	a4,a5,8
    80007038:	0007bc83          	ld	s9,0(a5)
    8000703c:	f6e43c23          	sd	a4,-136(s0)
    80007040:	00000097          	auipc	ra,0x0
    80007044:	9a4080e7          	jalr	-1628(ra) # 800069e4 <consputc>
    80007048:	07800513          	li	a0,120
    8000704c:	00000097          	auipc	ra,0x0
    80007050:	998080e7          	jalr	-1640(ra) # 800069e4 <consputc>
    80007054:	00002d97          	auipc	s11,0x2
    80007058:	664d8d93          	addi	s11,s11,1636 # 800096b8 <digits>
    8000705c:	03ccd793          	srli	a5,s9,0x3c
    80007060:	00fd87b3          	add	a5,s11,a5
    80007064:	0007c503          	lbu	a0,0(a5)
    80007068:	fffd0d1b          	addiw	s10,s10,-1
    8000706c:	004c9c93          	slli	s9,s9,0x4
    80007070:	00000097          	auipc	ra,0x0
    80007074:	974080e7          	jalr	-1676(ra) # 800069e4 <consputc>
    80007078:	fe0d12e3          	bnez	s10,8000705c <__printf+0x494>
    8000707c:	f8dff06f          	j	80007008 <__printf+0x440>
    80007080:	f7843783          	ld	a5,-136(s0)
    80007084:	0007bc83          	ld	s9,0(a5)
    80007088:	00878793          	addi	a5,a5,8
    8000708c:	f6f43c23          	sd	a5,-136(s0)
    80007090:	000c9a63          	bnez	s9,800070a4 <__printf+0x4dc>
    80007094:	1080006f          	j	8000719c <__printf+0x5d4>
    80007098:	001c8c93          	addi	s9,s9,1
    8000709c:	00000097          	auipc	ra,0x0
    800070a0:	948080e7          	jalr	-1720(ra) # 800069e4 <consputc>
    800070a4:	000cc503          	lbu	a0,0(s9)
    800070a8:	fe0518e3          	bnez	a0,80007098 <__printf+0x4d0>
    800070ac:	f5dff06f          	j	80007008 <__printf+0x440>
    800070b0:	02500513          	li	a0,37
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	930080e7          	jalr	-1744(ra) # 800069e4 <consputc>
    800070bc:	000c8513          	mv	a0,s9
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	924080e7          	jalr	-1756(ra) # 800069e4 <consputc>
    800070c8:	f41ff06f          	j	80007008 <__printf+0x440>
    800070cc:	02500513          	li	a0,37
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	914080e7          	jalr	-1772(ra) # 800069e4 <consputc>
    800070d8:	f31ff06f          	j	80007008 <__printf+0x440>
    800070dc:	00030513          	mv	a0,t1
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	7bc080e7          	jalr	1980(ra) # 8000789c <acquire>
    800070e8:	b4dff06f          	j	80006c34 <__printf+0x6c>
    800070ec:	40c0053b          	negw	a0,a2
    800070f0:	00a00713          	li	a4,10
    800070f4:	02e576bb          	remuw	a3,a0,a4
    800070f8:	00002d97          	auipc	s11,0x2
    800070fc:	5c0d8d93          	addi	s11,s11,1472 # 800096b8 <digits>
    80007100:	ff700593          	li	a1,-9
    80007104:	02069693          	slli	a3,a3,0x20
    80007108:	0206d693          	srli	a3,a3,0x20
    8000710c:	00dd86b3          	add	a3,s11,a3
    80007110:	0006c683          	lbu	a3,0(a3)
    80007114:	02e557bb          	divuw	a5,a0,a4
    80007118:	f8d40023          	sb	a3,-128(s0)
    8000711c:	10b65e63          	bge	a2,a1,80007238 <__printf+0x670>
    80007120:	06300593          	li	a1,99
    80007124:	02e7f6bb          	remuw	a3,a5,a4
    80007128:	02069693          	slli	a3,a3,0x20
    8000712c:	0206d693          	srli	a3,a3,0x20
    80007130:	00dd86b3          	add	a3,s11,a3
    80007134:	0006c683          	lbu	a3,0(a3)
    80007138:	02e7d73b          	divuw	a4,a5,a4
    8000713c:	00200793          	li	a5,2
    80007140:	f8d400a3          	sb	a3,-127(s0)
    80007144:	bca5ece3          	bltu	a1,a0,80006d1c <__printf+0x154>
    80007148:	ce5ff06f          	j	80006e2c <__printf+0x264>
    8000714c:	40e007bb          	negw	a5,a4
    80007150:	00002d97          	auipc	s11,0x2
    80007154:	568d8d93          	addi	s11,s11,1384 # 800096b8 <digits>
    80007158:	00f7f693          	andi	a3,a5,15
    8000715c:	00dd86b3          	add	a3,s11,a3
    80007160:	0006c583          	lbu	a1,0(a3)
    80007164:	ff100613          	li	a2,-15
    80007168:	0047d69b          	srliw	a3,a5,0x4
    8000716c:	f8b40023          	sb	a1,-128(s0)
    80007170:	0047d59b          	srliw	a1,a5,0x4
    80007174:	0ac75e63          	bge	a4,a2,80007230 <__printf+0x668>
    80007178:	00f6f693          	andi	a3,a3,15
    8000717c:	00dd86b3          	add	a3,s11,a3
    80007180:	0006c603          	lbu	a2,0(a3)
    80007184:	00f00693          	li	a3,15
    80007188:	0087d79b          	srliw	a5,a5,0x8
    8000718c:	f8c400a3          	sb	a2,-127(s0)
    80007190:	d8b6e4e3          	bltu	a3,a1,80006f18 <__printf+0x350>
    80007194:	00200793          	li	a5,2
    80007198:	e2dff06f          	j	80006fc4 <__printf+0x3fc>
    8000719c:	00002c97          	auipc	s9,0x2
    800071a0:	4fcc8c93          	addi	s9,s9,1276 # 80009698 <_ZZ12printIntegermE6digits+0x638>
    800071a4:	02800513          	li	a0,40
    800071a8:	ef1ff06f          	j	80007098 <__printf+0x4d0>
    800071ac:	00700793          	li	a5,7
    800071b0:	00600c93          	li	s9,6
    800071b4:	e0dff06f          	j	80006fc0 <__printf+0x3f8>
    800071b8:	00700793          	li	a5,7
    800071bc:	00600c93          	li	s9,6
    800071c0:	c69ff06f          	j	80006e28 <__printf+0x260>
    800071c4:	00300793          	li	a5,3
    800071c8:	00200c93          	li	s9,2
    800071cc:	c5dff06f          	j	80006e28 <__printf+0x260>
    800071d0:	00300793          	li	a5,3
    800071d4:	00200c93          	li	s9,2
    800071d8:	de9ff06f          	j	80006fc0 <__printf+0x3f8>
    800071dc:	00400793          	li	a5,4
    800071e0:	00300c93          	li	s9,3
    800071e4:	dddff06f          	j	80006fc0 <__printf+0x3f8>
    800071e8:	00400793          	li	a5,4
    800071ec:	00300c93          	li	s9,3
    800071f0:	c39ff06f          	j	80006e28 <__printf+0x260>
    800071f4:	00500793          	li	a5,5
    800071f8:	00400c93          	li	s9,4
    800071fc:	c2dff06f          	j	80006e28 <__printf+0x260>
    80007200:	00500793          	li	a5,5
    80007204:	00400c93          	li	s9,4
    80007208:	db9ff06f          	j	80006fc0 <__printf+0x3f8>
    8000720c:	00600793          	li	a5,6
    80007210:	00500c93          	li	s9,5
    80007214:	dadff06f          	j	80006fc0 <__printf+0x3f8>
    80007218:	00600793          	li	a5,6
    8000721c:	00500c93          	li	s9,5
    80007220:	c09ff06f          	j	80006e28 <__printf+0x260>
    80007224:	00800793          	li	a5,8
    80007228:	00700c93          	li	s9,7
    8000722c:	bfdff06f          	j	80006e28 <__printf+0x260>
    80007230:	00100793          	li	a5,1
    80007234:	d91ff06f          	j	80006fc4 <__printf+0x3fc>
    80007238:	00100793          	li	a5,1
    8000723c:	bf1ff06f          	j	80006e2c <__printf+0x264>
    80007240:	00900793          	li	a5,9
    80007244:	00800c93          	li	s9,8
    80007248:	be1ff06f          	j	80006e28 <__printf+0x260>
    8000724c:	00002517          	auipc	a0,0x2
    80007250:	45450513          	addi	a0,a0,1108 # 800096a0 <_ZZ12printIntegermE6digits+0x640>
    80007254:	00000097          	auipc	ra,0x0
    80007258:	918080e7          	jalr	-1768(ra) # 80006b6c <panic>

000000008000725c <printfinit>:
    8000725c:	fe010113          	addi	sp,sp,-32
    80007260:	00813823          	sd	s0,16(sp)
    80007264:	00913423          	sd	s1,8(sp)
    80007268:	00113c23          	sd	ra,24(sp)
    8000726c:	02010413          	addi	s0,sp,32
    80007270:	00005497          	auipc	s1,0x5
    80007274:	4f048493          	addi	s1,s1,1264 # 8000c760 <pr>
    80007278:	00048513          	mv	a0,s1
    8000727c:	00002597          	auipc	a1,0x2
    80007280:	43458593          	addi	a1,a1,1076 # 800096b0 <_ZZ12printIntegermE6digits+0x650>
    80007284:	00000097          	auipc	ra,0x0
    80007288:	5f4080e7          	jalr	1524(ra) # 80007878 <initlock>
    8000728c:	01813083          	ld	ra,24(sp)
    80007290:	01013403          	ld	s0,16(sp)
    80007294:	0004ac23          	sw	zero,24(s1)
    80007298:	00813483          	ld	s1,8(sp)
    8000729c:	02010113          	addi	sp,sp,32
    800072a0:	00008067          	ret

00000000800072a4 <uartinit>:
    800072a4:	ff010113          	addi	sp,sp,-16
    800072a8:	00813423          	sd	s0,8(sp)
    800072ac:	01010413          	addi	s0,sp,16
    800072b0:	100007b7          	lui	a5,0x10000
    800072b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800072b8:	f8000713          	li	a4,-128
    800072bc:	00e781a3          	sb	a4,3(a5)
    800072c0:	00300713          	li	a4,3
    800072c4:	00e78023          	sb	a4,0(a5)
    800072c8:	000780a3          	sb	zero,1(a5)
    800072cc:	00e781a3          	sb	a4,3(a5)
    800072d0:	00700693          	li	a3,7
    800072d4:	00d78123          	sb	a3,2(a5)
    800072d8:	00e780a3          	sb	a4,1(a5)
    800072dc:	00813403          	ld	s0,8(sp)
    800072e0:	01010113          	addi	sp,sp,16
    800072e4:	00008067          	ret

00000000800072e8 <uartputc>:
    800072e8:	00004797          	auipc	a5,0x4
    800072ec:	1a07a783          	lw	a5,416(a5) # 8000b488 <panicked>
    800072f0:	00078463          	beqz	a5,800072f8 <uartputc+0x10>
    800072f4:	0000006f          	j	800072f4 <uartputc+0xc>
    800072f8:	fd010113          	addi	sp,sp,-48
    800072fc:	02813023          	sd	s0,32(sp)
    80007300:	00913c23          	sd	s1,24(sp)
    80007304:	01213823          	sd	s2,16(sp)
    80007308:	01313423          	sd	s3,8(sp)
    8000730c:	02113423          	sd	ra,40(sp)
    80007310:	03010413          	addi	s0,sp,48
    80007314:	00004917          	auipc	s2,0x4
    80007318:	17c90913          	addi	s2,s2,380 # 8000b490 <uart_tx_r>
    8000731c:	00093783          	ld	a5,0(s2)
    80007320:	00004497          	auipc	s1,0x4
    80007324:	17848493          	addi	s1,s1,376 # 8000b498 <uart_tx_w>
    80007328:	0004b703          	ld	a4,0(s1)
    8000732c:	02078693          	addi	a3,a5,32
    80007330:	00050993          	mv	s3,a0
    80007334:	02e69c63          	bne	a3,a4,8000736c <uartputc+0x84>
    80007338:	00001097          	auipc	ra,0x1
    8000733c:	834080e7          	jalr	-1996(ra) # 80007b6c <push_on>
    80007340:	00093783          	ld	a5,0(s2)
    80007344:	0004b703          	ld	a4,0(s1)
    80007348:	02078793          	addi	a5,a5,32
    8000734c:	00e79463          	bne	a5,a4,80007354 <uartputc+0x6c>
    80007350:	0000006f          	j	80007350 <uartputc+0x68>
    80007354:	00001097          	auipc	ra,0x1
    80007358:	88c080e7          	jalr	-1908(ra) # 80007be0 <pop_on>
    8000735c:	00093783          	ld	a5,0(s2)
    80007360:	0004b703          	ld	a4,0(s1)
    80007364:	02078693          	addi	a3,a5,32
    80007368:	fce688e3          	beq	a3,a4,80007338 <uartputc+0x50>
    8000736c:	01f77693          	andi	a3,a4,31
    80007370:	00005597          	auipc	a1,0x5
    80007374:	41058593          	addi	a1,a1,1040 # 8000c780 <uart_tx_buf>
    80007378:	00d586b3          	add	a3,a1,a3
    8000737c:	00170713          	addi	a4,a4,1
    80007380:	01368023          	sb	s3,0(a3)
    80007384:	00e4b023          	sd	a4,0(s1)
    80007388:	10000637          	lui	a2,0x10000
    8000738c:	02f71063          	bne	a4,a5,800073ac <uartputc+0xc4>
    80007390:	0340006f          	j	800073c4 <uartputc+0xdc>
    80007394:	00074703          	lbu	a4,0(a4)
    80007398:	00f93023          	sd	a5,0(s2)
    8000739c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800073a0:	00093783          	ld	a5,0(s2)
    800073a4:	0004b703          	ld	a4,0(s1)
    800073a8:	00f70e63          	beq	a4,a5,800073c4 <uartputc+0xdc>
    800073ac:	00564683          	lbu	a3,5(a2)
    800073b0:	01f7f713          	andi	a4,a5,31
    800073b4:	00e58733          	add	a4,a1,a4
    800073b8:	0206f693          	andi	a3,a3,32
    800073bc:	00178793          	addi	a5,a5,1
    800073c0:	fc069ae3          	bnez	a3,80007394 <uartputc+0xac>
    800073c4:	02813083          	ld	ra,40(sp)
    800073c8:	02013403          	ld	s0,32(sp)
    800073cc:	01813483          	ld	s1,24(sp)
    800073d0:	01013903          	ld	s2,16(sp)
    800073d4:	00813983          	ld	s3,8(sp)
    800073d8:	03010113          	addi	sp,sp,48
    800073dc:	00008067          	ret

00000000800073e0 <uartputc_sync>:
    800073e0:	ff010113          	addi	sp,sp,-16
    800073e4:	00813423          	sd	s0,8(sp)
    800073e8:	01010413          	addi	s0,sp,16
    800073ec:	00004717          	auipc	a4,0x4
    800073f0:	09c72703          	lw	a4,156(a4) # 8000b488 <panicked>
    800073f4:	02071663          	bnez	a4,80007420 <uartputc_sync+0x40>
    800073f8:	00050793          	mv	a5,a0
    800073fc:	100006b7          	lui	a3,0x10000
    80007400:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007404:	02077713          	andi	a4,a4,32
    80007408:	fe070ce3          	beqz	a4,80007400 <uartputc_sync+0x20>
    8000740c:	0ff7f793          	andi	a5,a5,255
    80007410:	00f68023          	sb	a5,0(a3)
    80007414:	00813403          	ld	s0,8(sp)
    80007418:	01010113          	addi	sp,sp,16
    8000741c:	00008067          	ret
    80007420:	0000006f          	j	80007420 <uartputc_sync+0x40>

0000000080007424 <uartstart>:
    80007424:	ff010113          	addi	sp,sp,-16
    80007428:	00813423          	sd	s0,8(sp)
    8000742c:	01010413          	addi	s0,sp,16
    80007430:	00004617          	auipc	a2,0x4
    80007434:	06060613          	addi	a2,a2,96 # 8000b490 <uart_tx_r>
    80007438:	00004517          	auipc	a0,0x4
    8000743c:	06050513          	addi	a0,a0,96 # 8000b498 <uart_tx_w>
    80007440:	00063783          	ld	a5,0(a2)
    80007444:	00053703          	ld	a4,0(a0)
    80007448:	04f70263          	beq	a4,a5,8000748c <uartstart+0x68>
    8000744c:	100005b7          	lui	a1,0x10000
    80007450:	00005817          	auipc	a6,0x5
    80007454:	33080813          	addi	a6,a6,816 # 8000c780 <uart_tx_buf>
    80007458:	01c0006f          	j	80007474 <uartstart+0x50>
    8000745c:	0006c703          	lbu	a4,0(a3)
    80007460:	00f63023          	sd	a5,0(a2)
    80007464:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007468:	00063783          	ld	a5,0(a2)
    8000746c:	00053703          	ld	a4,0(a0)
    80007470:	00f70e63          	beq	a4,a5,8000748c <uartstart+0x68>
    80007474:	01f7f713          	andi	a4,a5,31
    80007478:	00e806b3          	add	a3,a6,a4
    8000747c:	0055c703          	lbu	a4,5(a1)
    80007480:	00178793          	addi	a5,a5,1
    80007484:	02077713          	andi	a4,a4,32
    80007488:	fc071ae3          	bnez	a4,8000745c <uartstart+0x38>
    8000748c:	00813403          	ld	s0,8(sp)
    80007490:	01010113          	addi	sp,sp,16
    80007494:	00008067          	ret

0000000080007498 <uartgetc>:
    80007498:	ff010113          	addi	sp,sp,-16
    8000749c:	00813423          	sd	s0,8(sp)
    800074a0:	01010413          	addi	s0,sp,16
    800074a4:	10000737          	lui	a4,0x10000
    800074a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800074ac:	0017f793          	andi	a5,a5,1
    800074b0:	00078c63          	beqz	a5,800074c8 <uartgetc+0x30>
    800074b4:	00074503          	lbu	a0,0(a4)
    800074b8:	0ff57513          	andi	a0,a0,255
    800074bc:	00813403          	ld	s0,8(sp)
    800074c0:	01010113          	addi	sp,sp,16
    800074c4:	00008067          	ret
    800074c8:	fff00513          	li	a0,-1
    800074cc:	ff1ff06f          	j	800074bc <uartgetc+0x24>

00000000800074d0 <uartintr>:
    800074d0:	100007b7          	lui	a5,0x10000
    800074d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800074d8:	0017f793          	andi	a5,a5,1
    800074dc:	0a078463          	beqz	a5,80007584 <uartintr+0xb4>
    800074e0:	fe010113          	addi	sp,sp,-32
    800074e4:	00813823          	sd	s0,16(sp)
    800074e8:	00913423          	sd	s1,8(sp)
    800074ec:	00113c23          	sd	ra,24(sp)
    800074f0:	02010413          	addi	s0,sp,32
    800074f4:	100004b7          	lui	s1,0x10000
    800074f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800074fc:	0ff57513          	andi	a0,a0,255
    80007500:	fffff097          	auipc	ra,0xfffff
    80007504:	534080e7          	jalr	1332(ra) # 80006a34 <consoleintr>
    80007508:	0054c783          	lbu	a5,5(s1)
    8000750c:	0017f793          	andi	a5,a5,1
    80007510:	fe0794e3          	bnez	a5,800074f8 <uartintr+0x28>
    80007514:	00004617          	auipc	a2,0x4
    80007518:	f7c60613          	addi	a2,a2,-132 # 8000b490 <uart_tx_r>
    8000751c:	00004517          	auipc	a0,0x4
    80007520:	f7c50513          	addi	a0,a0,-132 # 8000b498 <uart_tx_w>
    80007524:	00063783          	ld	a5,0(a2)
    80007528:	00053703          	ld	a4,0(a0)
    8000752c:	04f70263          	beq	a4,a5,80007570 <uartintr+0xa0>
    80007530:	100005b7          	lui	a1,0x10000
    80007534:	00005817          	auipc	a6,0x5
    80007538:	24c80813          	addi	a6,a6,588 # 8000c780 <uart_tx_buf>
    8000753c:	01c0006f          	j	80007558 <uartintr+0x88>
    80007540:	0006c703          	lbu	a4,0(a3)
    80007544:	00f63023          	sd	a5,0(a2)
    80007548:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000754c:	00063783          	ld	a5,0(a2)
    80007550:	00053703          	ld	a4,0(a0)
    80007554:	00f70e63          	beq	a4,a5,80007570 <uartintr+0xa0>
    80007558:	01f7f713          	andi	a4,a5,31
    8000755c:	00e806b3          	add	a3,a6,a4
    80007560:	0055c703          	lbu	a4,5(a1)
    80007564:	00178793          	addi	a5,a5,1
    80007568:	02077713          	andi	a4,a4,32
    8000756c:	fc071ae3          	bnez	a4,80007540 <uartintr+0x70>
    80007570:	01813083          	ld	ra,24(sp)
    80007574:	01013403          	ld	s0,16(sp)
    80007578:	00813483          	ld	s1,8(sp)
    8000757c:	02010113          	addi	sp,sp,32
    80007580:	00008067          	ret
    80007584:	00004617          	auipc	a2,0x4
    80007588:	f0c60613          	addi	a2,a2,-244 # 8000b490 <uart_tx_r>
    8000758c:	00004517          	auipc	a0,0x4
    80007590:	f0c50513          	addi	a0,a0,-244 # 8000b498 <uart_tx_w>
    80007594:	00063783          	ld	a5,0(a2)
    80007598:	00053703          	ld	a4,0(a0)
    8000759c:	04f70263          	beq	a4,a5,800075e0 <uartintr+0x110>
    800075a0:	100005b7          	lui	a1,0x10000
    800075a4:	00005817          	auipc	a6,0x5
    800075a8:	1dc80813          	addi	a6,a6,476 # 8000c780 <uart_tx_buf>
    800075ac:	01c0006f          	j	800075c8 <uartintr+0xf8>
    800075b0:	0006c703          	lbu	a4,0(a3)
    800075b4:	00f63023          	sd	a5,0(a2)
    800075b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075bc:	00063783          	ld	a5,0(a2)
    800075c0:	00053703          	ld	a4,0(a0)
    800075c4:	02f70063          	beq	a4,a5,800075e4 <uartintr+0x114>
    800075c8:	01f7f713          	andi	a4,a5,31
    800075cc:	00e806b3          	add	a3,a6,a4
    800075d0:	0055c703          	lbu	a4,5(a1)
    800075d4:	00178793          	addi	a5,a5,1
    800075d8:	02077713          	andi	a4,a4,32
    800075dc:	fc071ae3          	bnez	a4,800075b0 <uartintr+0xe0>
    800075e0:	00008067          	ret
    800075e4:	00008067          	ret

00000000800075e8 <kinit>:
    800075e8:	fc010113          	addi	sp,sp,-64
    800075ec:	02913423          	sd	s1,40(sp)
    800075f0:	fffff7b7          	lui	a5,0xfffff
    800075f4:	00006497          	auipc	s1,0x6
    800075f8:	1ab48493          	addi	s1,s1,427 # 8000d79f <end+0xfff>
    800075fc:	02813823          	sd	s0,48(sp)
    80007600:	01313c23          	sd	s3,24(sp)
    80007604:	00f4f4b3          	and	s1,s1,a5
    80007608:	02113c23          	sd	ra,56(sp)
    8000760c:	03213023          	sd	s2,32(sp)
    80007610:	01413823          	sd	s4,16(sp)
    80007614:	01513423          	sd	s5,8(sp)
    80007618:	04010413          	addi	s0,sp,64
    8000761c:	000017b7          	lui	a5,0x1
    80007620:	01100993          	li	s3,17
    80007624:	00f487b3          	add	a5,s1,a5
    80007628:	01b99993          	slli	s3,s3,0x1b
    8000762c:	06f9e063          	bltu	s3,a5,8000768c <kinit+0xa4>
    80007630:	00005a97          	auipc	s5,0x5
    80007634:	170a8a93          	addi	s5,s5,368 # 8000c7a0 <end>
    80007638:	0754ec63          	bltu	s1,s5,800076b0 <kinit+0xc8>
    8000763c:	0734fa63          	bgeu	s1,s3,800076b0 <kinit+0xc8>
    80007640:	00088a37          	lui	s4,0x88
    80007644:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007648:	00004917          	auipc	s2,0x4
    8000764c:	e5890913          	addi	s2,s2,-424 # 8000b4a0 <kmem>
    80007650:	00ca1a13          	slli	s4,s4,0xc
    80007654:	0140006f          	j	80007668 <kinit+0x80>
    80007658:	000017b7          	lui	a5,0x1
    8000765c:	00f484b3          	add	s1,s1,a5
    80007660:	0554e863          	bltu	s1,s5,800076b0 <kinit+0xc8>
    80007664:	0534f663          	bgeu	s1,s3,800076b0 <kinit+0xc8>
    80007668:	00001637          	lui	a2,0x1
    8000766c:	00100593          	li	a1,1
    80007670:	00048513          	mv	a0,s1
    80007674:	00000097          	auipc	ra,0x0
    80007678:	5e4080e7          	jalr	1508(ra) # 80007c58 <__memset>
    8000767c:	00093783          	ld	a5,0(s2)
    80007680:	00f4b023          	sd	a5,0(s1)
    80007684:	00993023          	sd	s1,0(s2)
    80007688:	fd4498e3          	bne	s1,s4,80007658 <kinit+0x70>
    8000768c:	03813083          	ld	ra,56(sp)
    80007690:	03013403          	ld	s0,48(sp)
    80007694:	02813483          	ld	s1,40(sp)
    80007698:	02013903          	ld	s2,32(sp)
    8000769c:	01813983          	ld	s3,24(sp)
    800076a0:	01013a03          	ld	s4,16(sp)
    800076a4:	00813a83          	ld	s5,8(sp)
    800076a8:	04010113          	addi	sp,sp,64
    800076ac:	00008067          	ret
    800076b0:	00002517          	auipc	a0,0x2
    800076b4:	02050513          	addi	a0,a0,32 # 800096d0 <digits+0x18>
    800076b8:	fffff097          	auipc	ra,0xfffff
    800076bc:	4b4080e7          	jalr	1204(ra) # 80006b6c <panic>

00000000800076c0 <freerange>:
    800076c0:	fc010113          	addi	sp,sp,-64
    800076c4:	000017b7          	lui	a5,0x1
    800076c8:	02913423          	sd	s1,40(sp)
    800076cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800076d0:	009504b3          	add	s1,a0,s1
    800076d4:	fffff537          	lui	a0,0xfffff
    800076d8:	02813823          	sd	s0,48(sp)
    800076dc:	02113c23          	sd	ra,56(sp)
    800076e0:	03213023          	sd	s2,32(sp)
    800076e4:	01313c23          	sd	s3,24(sp)
    800076e8:	01413823          	sd	s4,16(sp)
    800076ec:	01513423          	sd	s5,8(sp)
    800076f0:	01613023          	sd	s6,0(sp)
    800076f4:	04010413          	addi	s0,sp,64
    800076f8:	00a4f4b3          	and	s1,s1,a0
    800076fc:	00f487b3          	add	a5,s1,a5
    80007700:	06f5e463          	bltu	a1,a5,80007768 <freerange+0xa8>
    80007704:	00005a97          	auipc	s5,0x5
    80007708:	09ca8a93          	addi	s5,s5,156 # 8000c7a0 <end>
    8000770c:	0954e263          	bltu	s1,s5,80007790 <freerange+0xd0>
    80007710:	01100993          	li	s3,17
    80007714:	01b99993          	slli	s3,s3,0x1b
    80007718:	0734fc63          	bgeu	s1,s3,80007790 <freerange+0xd0>
    8000771c:	00058a13          	mv	s4,a1
    80007720:	00004917          	auipc	s2,0x4
    80007724:	d8090913          	addi	s2,s2,-640 # 8000b4a0 <kmem>
    80007728:	00002b37          	lui	s6,0x2
    8000772c:	0140006f          	j	80007740 <freerange+0x80>
    80007730:	000017b7          	lui	a5,0x1
    80007734:	00f484b3          	add	s1,s1,a5
    80007738:	0554ec63          	bltu	s1,s5,80007790 <freerange+0xd0>
    8000773c:	0534fa63          	bgeu	s1,s3,80007790 <freerange+0xd0>
    80007740:	00001637          	lui	a2,0x1
    80007744:	00100593          	li	a1,1
    80007748:	00048513          	mv	a0,s1
    8000774c:	00000097          	auipc	ra,0x0
    80007750:	50c080e7          	jalr	1292(ra) # 80007c58 <__memset>
    80007754:	00093703          	ld	a4,0(s2)
    80007758:	016487b3          	add	a5,s1,s6
    8000775c:	00e4b023          	sd	a4,0(s1)
    80007760:	00993023          	sd	s1,0(s2)
    80007764:	fcfa76e3          	bgeu	s4,a5,80007730 <freerange+0x70>
    80007768:	03813083          	ld	ra,56(sp)
    8000776c:	03013403          	ld	s0,48(sp)
    80007770:	02813483          	ld	s1,40(sp)
    80007774:	02013903          	ld	s2,32(sp)
    80007778:	01813983          	ld	s3,24(sp)
    8000777c:	01013a03          	ld	s4,16(sp)
    80007780:	00813a83          	ld	s5,8(sp)
    80007784:	00013b03          	ld	s6,0(sp)
    80007788:	04010113          	addi	sp,sp,64
    8000778c:	00008067          	ret
    80007790:	00002517          	auipc	a0,0x2
    80007794:	f4050513          	addi	a0,a0,-192 # 800096d0 <digits+0x18>
    80007798:	fffff097          	auipc	ra,0xfffff
    8000779c:	3d4080e7          	jalr	980(ra) # 80006b6c <panic>

00000000800077a0 <kfree>:
    800077a0:	fe010113          	addi	sp,sp,-32
    800077a4:	00813823          	sd	s0,16(sp)
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	00913423          	sd	s1,8(sp)
    800077b0:	02010413          	addi	s0,sp,32
    800077b4:	03451793          	slli	a5,a0,0x34
    800077b8:	04079c63          	bnez	a5,80007810 <kfree+0x70>
    800077bc:	00005797          	auipc	a5,0x5
    800077c0:	fe478793          	addi	a5,a5,-28 # 8000c7a0 <end>
    800077c4:	00050493          	mv	s1,a0
    800077c8:	04f56463          	bltu	a0,a5,80007810 <kfree+0x70>
    800077cc:	01100793          	li	a5,17
    800077d0:	01b79793          	slli	a5,a5,0x1b
    800077d4:	02f57e63          	bgeu	a0,a5,80007810 <kfree+0x70>
    800077d8:	00001637          	lui	a2,0x1
    800077dc:	00100593          	li	a1,1
    800077e0:	00000097          	auipc	ra,0x0
    800077e4:	478080e7          	jalr	1144(ra) # 80007c58 <__memset>
    800077e8:	00004797          	auipc	a5,0x4
    800077ec:	cb878793          	addi	a5,a5,-840 # 8000b4a0 <kmem>
    800077f0:	0007b703          	ld	a4,0(a5)
    800077f4:	01813083          	ld	ra,24(sp)
    800077f8:	01013403          	ld	s0,16(sp)
    800077fc:	00e4b023          	sd	a4,0(s1)
    80007800:	0097b023          	sd	s1,0(a5)
    80007804:	00813483          	ld	s1,8(sp)
    80007808:	02010113          	addi	sp,sp,32
    8000780c:	00008067          	ret
    80007810:	00002517          	auipc	a0,0x2
    80007814:	ec050513          	addi	a0,a0,-320 # 800096d0 <digits+0x18>
    80007818:	fffff097          	auipc	ra,0xfffff
    8000781c:	354080e7          	jalr	852(ra) # 80006b6c <panic>

0000000080007820 <kalloc>:
    80007820:	fe010113          	addi	sp,sp,-32
    80007824:	00813823          	sd	s0,16(sp)
    80007828:	00913423          	sd	s1,8(sp)
    8000782c:	00113c23          	sd	ra,24(sp)
    80007830:	02010413          	addi	s0,sp,32
    80007834:	00004797          	auipc	a5,0x4
    80007838:	c6c78793          	addi	a5,a5,-916 # 8000b4a0 <kmem>
    8000783c:	0007b483          	ld	s1,0(a5)
    80007840:	02048063          	beqz	s1,80007860 <kalloc+0x40>
    80007844:	0004b703          	ld	a4,0(s1)
    80007848:	00001637          	lui	a2,0x1
    8000784c:	00500593          	li	a1,5
    80007850:	00048513          	mv	a0,s1
    80007854:	00e7b023          	sd	a4,0(a5)
    80007858:	00000097          	auipc	ra,0x0
    8000785c:	400080e7          	jalr	1024(ra) # 80007c58 <__memset>
    80007860:	01813083          	ld	ra,24(sp)
    80007864:	01013403          	ld	s0,16(sp)
    80007868:	00048513          	mv	a0,s1
    8000786c:	00813483          	ld	s1,8(sp)
    80007870:	02010113          	addi	sp,sp,32
    80007874:	00008067          	ret

0000000080007878 <initlock>:
    80007878:	ff010113          	addi	sp,sp,-16
    8000787c:	00813423          	sd	s0,8(sp)
    80007880:	01010413          	addi	s0,sp,16
    80007884:	00813403          	ld	s0,8(sp)
    80007888:	00b53423          	sd	a1,8(a0)
    8000788c:	00052023          	sw	zero,0(a0)
    80007890:	00053823          	sd	zero,16(a0)
    80007894:	01010113          	addi	sp,sp,16
    80007898:	00008067          	ret

000000008000789c <acquire>:
    8000789c:	fe010113          	addi	sp,sp,-32
    800078a0:	00813823          	sd	s0,16(sp)
    800078a4:	00913423          	sd	s1,8(sp)
    800078a8:	00113c23          	sd	ra,24(sp)
    800078ac:	01213023          	sd	s2,0(sp)
    800078b0:	02010413          	addi	s0,sp,32
    800078b4:	00050493          	mv	s1,a0
    800078b8:	10002973          	csrr	s2,sstatus
    800078bc:	100027f3          	csrr	a5,sstatus
    800078c0:	ffd7f793          	andi	a5,a5,-3
    800078c4:	10079073          	csrw	sstatus,a5
    800078c8:	fffff097          	auipc	ra,0xfffff
    800078cc:	8e8080e7          	jalr	-1816(ra) # 800061b0 <mycpu>
    800078d0:	07852783          	lw	a5,120(a0)
    800078d4:	06078e63          	beqz	a5,80007950 <acquire+0xb4>
    800078d8:	fffff097          	auipc	ra,0xfffff
    800078dc:	8d8080e7          	jalr	-1832(ra) # 800061b0 <mycpu>
    800078e0:	07852783          	lw	a5,120(a0)
    800078e4:	0004a703          	lw	a4,0(s1)
    800078e8:	0017879b          	addiw	a5,a5,1
    800078ec:	06f52c23          	sw	a5,120(a0)
    800078f0:	04071063          	bnez	a4,80007930 <acquire+0x94>
    800078f4:	00100713          	li	a4,1
    800078f8:	00070793          	mv	a5,a4
    800078fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007900:	0007879b          	sext.w	a5,a5
    80007904:	fe079ae3          	bnez	a5,800078f8 <acquire+0x5c>
    80007908:	0ff0000f          	fence
    8000790c:	fffff097          	auipc	ra,0xfffff
    80007910:	8a4080e7          	jalr	-1884(ra) # 800061b0 <mycpu>
    80007914:	01813083          	ld	ra,24(sp)
    80007918:	01013403          	ld	s0,16(sp)
    8000791c:	00a4b823          	sd	a0,16(s1)
    80007920:	00013903          	ld	s2,0(sp)
    80007924:	00813483          	ld	s1,8(sp)
    80007928:	02010113          	addi	sp,sp,32
    8000792c:	00008067          	ret
    80007930:	0104b903          	ld	s2,16(s1)
    80007934:	fffff097          	auipc	ra,0xfffff
    80007938:	87c080e7          	jalr	-1924(ra) # 800061b0 <mycpu>
    8000793c:	faa91ce3          	bne	s2,a0,800078f4 <acquire+0x58>
    80007940:	00002517          	auipc	a0,0x2
    80007944:	d9850513          	addi	a0,a0,-616 # 800096d8 <digits+0x20>
    80007948:	fffff097          	auipc	ra,0xfffff
    8000794c:	224080e7          	jalr	548(ra) # 80006b6c <panic>
    80007950:	00195913          	srli	s2,s2,0x1
    80007954:	fffff097          	auipc	ra,0xfffff
    80007958:	85c080e7          	jalr	-1956(ra) # 800061b0 <mycpu>
    8000795c:	00197913          	andi	s2,s2,1
    80007960:	07252e23          	sw	s2,124(a0)
    80007964:	f75ff06f          	j	800078d8 <acquire+0x3c>

0000000080007968 <release>:
    80007968:	fe010113          	addi	sp,sp,-32
    8000796c:	00813823          	sd	s0,16(sp)
    80007970:	00113c23          	sd	ra,24(sp)
    80007974:	00913423          	sd	s1,8(sp)
    80007978:	01213023          	sd	s2,0(sp)
    8000797c:	02010413          	addi	s0,sp,32
    80007980:	00052783          	lw	a5,0(a0)
    80007984:	00079a63          	bnez	a5,80007998 <release+0x30>
    80007988:	00002517          	auipc	a0,0x2
    8000798c:	d5850513          	addi	a0,a0,-680 # 800096e0 <digits+0x28>
    80007990:	fffff097          	auipc	ra,0xfffff
    80007994:	1dc080e7          	jalr	476(ra) # 80006b6c <panic>
    80007998:	01053903          	ld	s2,16(a0)
    8000799c:	00050493          	mv	s1,a0
    800079a0:	fffff097          	auipc	ra,0xfffff
    800079a4:	810080e7          	jalr	-2032(ra) # 800061b0 <mycpu>
    800079a8:	fea910e3          	bne	s2,a0,80007988 <release+0x20>
    800079ac:	0004b823          	sd	zero,16(s1)
    800079b0:	0ff0000f          	fence
    800079b4:	0f50000f          	fence	iorw,ow
    800079b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800079bc:	ffffe097          	auipc	ra,0xffffe
    800079c0:	7f4080e7          	jalr	2036(ra) # 800061b0 <mycpu>
    800079c4:	100027f3          	csrr	a5,sstatus
    800079c8:	0027f793          	andi	a5,a5,2
    800079cc:	04079a63          	bnez	a5,80007a20 <release+0xb8>
    800079d0:	07852783          	lw	a5,120(a0)
    800079d4:	02f05e63          	blez	a5,80007a10 <release+0xa8>
    800079d8:	fff7871b          	addiw	a4,a5,-1
    800079dc:	06e52c23          	sw	a4,120(a0)
    800079e0:	00071c63          	bnez	a4,800079f8 <release+0x90>
    800079e4:	07c52783          	lw	a5,124(a0)
    800079e8:	00078863          	beqz	a5,800079f8 <release+0x90>
    800079ec:	100027f3          	csrr	a5,sstatus
    800079f0:	0027e793          	ori	a5,a5,2
    800079f4:	10079073          	csrw	sstatus,a5
    800079f8:	01813083          	ld	ra,24(sp)
    800079fc:	01013403          	ld	s0,16(sp)
    80007a00:	00813483          	ld	s1,8(sp)
    80007a04:	00013903          	ld	s2,0(sp)
    80007a08:	02010113          	addi	sp,sp,32
    80007a0c:	00008067          	ret
    80007a10:	00002517          	auipc	a0,0x2
    80007a14:	cf050513          	addi	a0,a0,-784 # 80009700 <digits+0x48>
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	154080e7          	jalr	340(ra) # 80006b6c <panic>
    80007a20:	00002517          	auipc	a0,0x2
    80007a24:	cc850513          	addi	a0,a0,-824 # 800096e8 <digits+0x30>
    80007a28:	fffff097          	auipc	ra,0xfffff
    80007a2c:	144080e7          	jalr	324(ra) # 80006b6c <panic>

0000000080007a30 <holding>:
    80007a30:	00052783          	lw	a5,0(a0)
    80007a34:	00079663          	bnez	a5,80007a40 <holding+0x10>
    80007a38:	00000513          	li	a0,0
    80007a3c:	00008067          	ret
    80007a40:	fe010113          	addi	sp,sp,-32
    80007a44:	00813823          	sd	s0,16(sp)
    80007a48:	00913423          	sd	s1,8(sp)
    80007a4c:	00113c23          	sd	ra,24(sp)
    80007a50:	02010413          	addi	s0,sp,32
    80007a54:	01053483          	ld	s1,16(a0)
    80007a58:	ffffe097          	auipc	ra,0xffffe
    80007a5c:	758080e7          	jalr	1880(ra) # 800061b0 <mycpu>
    80007a60:	01813083          	ld	ra,24(sp)
    80007a64:	01013403          	ld	s0,16(sp)
    80007a68:	40a48533          	sub	a0,s1,a0
    80007a6c:	00153513          	seqz	a0,a0
    80007a70:	00813483          	ld	s1,8(sp)
    80007a74:	02010113          	addi	sp,sp,32
    80007a78:	00008067          	ret

0000000080007a7c <push_off>:
    80007a7c:	fe010113          	addi	sp,sp,-32
    80007a80:	00813823          	sd	s0,16(sp)
    80007a84:	00113c23          	sd	ra,24(sp)
    80007a88:	00913423          	sd	s1,8(sp)
    80007a8c:	02010413          	addi	s0,sp,32
    80007a90:	100024f3          	csrr	s1,sstatus
    80007a94:	100027f3          	csrr	a5,sstatus
    80007a98:	ffd7f793          	andi	a5,a5,-3
    80007a9c:	10079073          	csrw	sstatus,a5
    80007aa0:	ffffe097          	auipc	ra,0xffffe
    80007aa4:	710080e7          	jalr	1808(ra) # 800061b0 <mycpu>
    80007aa8:	07852783          	lw	a5,120(a0)
    80007aac:	02078663          	beqz	a5,80007ad8 <push_off+0x5c>
    80007ab0:	ffffe097          	auipc	ra,0xffffe
    80007ab4:	700080e7          	jalr	1792(ra) # 800061b0 <mycpu>
    80007ab8:	07852783          	lw	a5,120(a0)
    80007abc:	01813083          	ld	ra,24(sp)
    80007ac0:	01013403          	ld	s0,16(sp)
    80007ac4:	0017879b          	addiw	a5,a5,1
    80007ac8:	06f52c23          	sw	a5,120(a0)
    80007acc:	00813483          	ld	s1,8(sp)
    80007ad0:	02010113          	addi	sp,sp,32
    80007ad4:	00008067          	ret
    80007ad8:	0014d493          	srli	s1,s1,0x1
    80007adc:	ffffe097          	auipc	ra,0xffffe
    80007ae0:	6d4080e7          	jalr	1748(ra) # 800061b0 <mycpu>
    80007ae4:	0014f493          	andi	s1,s1,1
    80007ae8:	06952e23          	sw	s1,124(a0)
    80007aec:	fc5ff06f          	j	80007ab0 <push_off+0x34>

0000000080007af0 <pop_off>:
    80007af0:	ff010113          	addi	sp,sp,-16
    80007af4:	00813023          	sd	s0,0(sp)
    80007af8:	00113423          	sd	ra,8(sp)
    80007afc:	01010413          	addi	s0,sp,16
    80007b00:	ffffe097          	auipc	ra,0xffffe
    80007b04:	6b0080e7          	jalr	1712(ra) # 800061b0 <mycpu>
    80007b08:	100027f3          	csrr	a5,sstatus
    80007b0c:	0027f793          	andi	a5,a5,2
    80007b10:	04079663          	bnez	a5,80007b5c <pop_off+0x6c>
    80007b14:	07852783          	lw	a5,120(a0)
    80007b18:	02f05a63          	blez	a5,80007b4c <pop_off+0x5c>
    80007b1c:	fff7871b          	addiw	a4,a5,-1
    80007b20:	06e52c23          	sw	a4,120(a0)
    80007b24:	00071c63          	bnez	a4,80007b3c <pop_off+0x4c>
    80007b28:	07c52783          	lw	a5,124(a0)
    80007b2c:	00078863          	beqz	a5,80007b3c <pop_off+0x4c>
    80007b30:	100027f3          	csrr	a5,sstatus
    80007b34:	0027e793          	ori	a5,a5,2
    80007b38:	10079073          	csrw	sstatus,a5
    80007b3c:	00813083          	ld	ra,8(sp)
    80007b40:	00013403          	ld	s0,0(sp)
    80007b44:	01010113          	addi	sp,sp,16
    80007b48:	00008067          	ret
    80007b4c:	00002517          	auipc	a0,0x2
    80007b50:	bb450513          	addi	a0,a0,-1100 # 80009700 <digits+0x48>
    80007b54:	fffff097          	auipc	ra,0xfffff
    80007b58:	018080e7          	jalr	24(ra) # 80006b6c <panic>
    80007b5c:	00002517          	auipc	a0,0x2
    80007b60:	b8c50513          	addi	a0,a0,-1140 # 800096e8 <digits+0x30>
    80007b64:	fffff097          	auipc	ra,0xfffff
    80007b68:	008080e7          	jalr	8(ra) # 80006b6c <panic>

0000000080007b6c <push_on>:
    80007b6c:	fe010113          	addi	sp,sp,-32
    80007b70:	00813823          	sd	s0,16(sp)
    80007b74:	00113c23          	sd	ra,24(sp)
    80007b78:	00913423          	sd	s1,8(sp)
    80007b7c:	02010413          	addi	s0,sp,32
    80007b80:	100024f3          	csrr	s1,sstatus
    80007b84:	100027f3          	csrr	a5,sstatus
    80007b88:	0027e793          	ori	a5,a5,2
    80007b8c:	10079073          	csrw	sstatus,a5
    80007b90:	ffffe097          	auipc	ra,0xffffe
    80007b94:	620080e7          	jalr	1568(ra) # 800061b0 <mycpu>
    80007b98:	07852783          	lw	a5,120(a0)
    80007b9c:	02078663          	beqz	a5,80007bc8 <push_on+0x5c>
    80007ba0:	ffffe097          	auipc	ra,0xffffe
    80007ba4:	610080e7          	jalr	1552(ra) # 800061b0 <mycpu>
    80007ba8:	07852783          	lw	a5,120(a0)
    80007bac:	01813083          	ld	ra,24(sp)
    80007bb0:	01013403          	ld	s0,16(sp)
    80007bb4:	0017879b          	addiw	a5,a5,1
    80007bb8:	06f52c23          	sw	a5,120(a0)
    80007bbc:	00813483          	ld	s1,8(sp)
    80007bc0:	02010113          	addi	sp,sp,32
    80007bc4:	00008067          	ret
    80007bc8:	0014d493          	srli	s1,s1,0x1
    80007bcc:	ffffe097          	auipc	ra,0xffffe
    80007bd0:	5e4080e7          	jalr	1508(ra) # 800061b0 <mycpu>
    80007bd4:	0014f493          	andi	s1,s1,1
    80007bd8:	06952e23          	sw	s1,124(a0)
    80007bdc:	fc5ff06f          	j	80007ba0 <push_on+0x34>

0000000080007be0 <pop_on>:
    80007be0:	ff010113          	addi	sp,sp,-16
    80007be4:	00813023          	sd	s0,0(sp)
    80007be8:	00113423          	sd	ra,8(sp)
    80007bec:	01010413          	addi	s0,sp,16
    80007bf0:	ffffe097          	auipc	ra,0xffffe
    80007bf4:	5c0080e7          	jalr	1472(ra) # 800061b0 <mycpu>
    80007bf8:	100027f3          	csrr	a5,sstatus
    80007bfc:	0027f793          	andi	a5,a5,2
    80007c00:	04078463          	beqz	a5,80007c48 <pop_on+0x68>
    80007c04:	07852783          	lw	a5,120(a0)
    80007c08:	02f05863          	blez	a5,80007c38 <pop_on+0x58>
    80007c0c:	fff7879b          	addiw	a5,a5,-1
    80007c10:	06f52c23          	sw	a5,120(a0)
    80007c14:	07853783          	ld	a5,120(a0)
    80007c18:	00079863          	bnez	a5,80007c28 <pop_on+0x48>
    80007c1c:	100027f3          	csrr	a5,sstatus
    80007c20:	ffd7f793          	andi	a5,a5,-3
    80007c24:	10079073          	csrw	sstatus,a5
    80007c28:	00813083          	ld	ra,8(sp)
    80007c2c:	00013403          	ld	s0,0(sp)
    80007c30:	01010113          	addi	sp,sp,16
    80007c34:	00008067          	ret
    80007c38:	00002517          	auipc	a0,0x2
    80007c3c:	af050513          	addi	a0,a0,-1296 # 80009728 <digits+0x70>
    80007c40:	fffff097          	auipc	ra,0xfffff
    80007c44:	f2c080e7          	jalr	-212(ra) # 80006b6c <panic>
    80007c48:	00002517          	auipc	a0,0x2
    80007c4c:	ac050513          	addi	a0,a0,-1344 # 80009708 <digits+0x50>
    80007c50:	fffff097          	auipc	ra,0xfffff
    80007c54:	f1c080e7          	jalr	-228(ra) # 80006b6c <panic>

0000000080007c58 <__memset>:
    80007c58:	ff010113          	addi	sp,sp,-16
    80007c5c:	00813423          	sd	s0,8(sp)
    80007c60:	01010413          	addi	s0,sp,16
    80007c64:	1a060e63          	beqz	a2,80007e20 <__memset+0x1c8>
    80007c68:	40a007b3          	neg	a5,a0
    80007c6c:	0077f793          	andi	a5,a5,7
    80007c70:	00778693          	addi	a3,a5,7
    80007c74:	00b00813          	li	a6,11
    80007c78:	0ff5f593          	andi	a1,a1,255
    80007c7c:	fff6071b          	addiw	a4,a2,-1
    80007c80:	1b06e663          	bltu	a3,a6,80007e2c <__memset+0x1d4>
    80007c84:	1cd76463          	bltu	a4,a3,80007e4c <__memset+0x1f4>
    80007c88:	1a078e63          	beqz	a5,80007e44 <__memset+0x1ec>
    80007c8c:	00b50023          	sb	a1,0(a0)
    80007c90:	00100713          	li	a4,1
    80007c94:	1ae78463          	beq	a5,a4,80007e3c <__memset+0x1e4>
    80007c98:	00b500a3          	sb	a1,1(a0)
    80007c9c:	00200713          	li	a4,2
    80007ca0:	1ae78a63          	beq	a5,a4,80007e54 <__memset+0x1fc>
    80007ca4:	00b50123          	sb	a1,2(a0)
    80007ca8:	00300713          	li	a4,3
    80007cac:	18e78463          	beq	a5,a4,80007e34 <__memset+0x1dc>
    80007cb0:	00b501a3          	sb	a1,3(a0)
    80007cb4:	00400713          	li	a4,4
    80007cb8:	1ae78263          	beq	a5,a4,80007e5c <__memset+0x204>
    80007cbc:	00b50223          	sb	a1,4(a0)
    80007cc0:	00500713          	li	a4,5
    80007cc4:	1ae78063          	beq	a5,a4,80007e64 <__memset+0x20c>
    80007cc8:	00b502a3          	sb	a1,5(a0)
    80007ccc:	00700713          	li	a4,7
    80007cd0:	18e79e63          	bne	a5,a4,80007e6c <__memset+0x214>
    80007cd4:	00b50323          	sb	a1,6(a0)
    80007cd8:	00700e93          	li	t4,7
    80007cdc:	00859713          	slli	a4,a1,0x8
    80007ce0:	00e5e733          	or	a4,a1,a4
    80007ce4:	01059e13          	slli	t3,a1,0x10
    80007ce8:	01c76e33          	or	t3,a4,t3
    80007cec:	01859313          	slli	t1,a1,0x18
    80007cf0:	006e6333          	or	t1,t3,t1
    80007cf4:	02059893          	slli	a7,a1,0x20
    80007cf8:	40f60e3b          	subw	t3,a2,a5
    80007cfc:	011368b3          	or	a7,t1,a7
    80007d00:	02859813          	slli	a6,a1,0x28
    80007d04:	0108e833          	or	a6,a7,a6
    80007d08:	03059693          	slli	a3,a1,0x30
    80007d0c:	003e589b          	srliw	a7,t3,0x3
    80007d10:	00d866b3          	or	a3,a6,a3
    80007d14:	03859713          	slli	a4,a1,0x38
    80007d18:	00389813          	slli	a6,a7,0x3
    80007d1c:	00f507b3          	add	a5,a0,a5
    80007d20:	00e6e733          	or	a4,a3,a4
    80007d24:	000e089b          	sext.w	a7,t3
    80007d28:	00f806b3          	add	a3,a6,a5
    80007d2c:	00e7b023          	sd	a4,0(a5)
    80007d30:	00878793          	addi	a5,a5,8
    80007d34:	fed79ce3          	bne	a5,a3,80007d2c <__memset+0xd4>
    80007d38:	ff8e7793          	andi	a5,t3,-8
    80007d3c:	0007871b          	sext.w	a4,a5
    80007d40:	01d787bb          	addw	a5,a5,t4
    80007d44:	0ce88e63          	beq	a7,a4,80007e20 <__memset+0x1c8>
    80007d48:	00f50733          	add	a4,a0,a5
    80007d4c:	00b70023          	sb	a1,0(a4)
    80007d50:	0017871b          	addiw	a4,a5,1
    80007d54:	0cc77663          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007d58:	00e50733          	add	a4,a0,a4
    80007d5c:	00b70023          	sb	a1,0(a4)
    80007d60:	0027871b          	addiw	a4,a5,2
    80007d64:	0ac77e63          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007d68:	00e50733          	add	a4,a0,a4
    80007d6c:	00b70023          	sb	a1,0(a4)
    80007d70:	0037871b          	addiw	a4,a5,3
    80007d74:	0ac77663          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007d78:	00e50733          	add	a4,a0,a4
    80007d7c:	00b70023          	sb	a1,0(a4)
    80007d80:	0047871b          	addiw	a4,a5,4
    80007d84:	08c77e63          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007d88:	00e50733          	add	a4,a0,a4
    80007d8c:	00b70023          	sb	a1,0(a4)
    80007d90:	0057871b          	addiw	a4,a5,5
    80007d94:	08c77663          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007d98:	00e50733          	add	a4,a0,a4
    80007d9c:	00b70023          	sb	a1,0(a4)
    80007da0:	0067871b          	addiw	a4,a5,6
    80007da4:	06c77e63          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007da8:	00e50733          	add	a4,a0,a4
    80007dac:	00b70023          	sb	a1,0(a4)
    80007db0:	0077871b          	addiw	a4,a5,7
    80007db4:	06c77663          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007db8:	00e50733          	add	a4,a0,a4
    80007dbc:	00b70023          	sb	a1,0(a4)
    80007dc0:	0087871b          	addiw	a4,a5,8
    80007dc4:	04c77e63          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007dc8:	00e50733          	add	a4,a0,a4
    80007dcc:	00b70023          	sb	a1,0(a4)
    80007dd0:	0097871b          	addiw	a4,a5,9
    80007dd4:	04c77663          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007dd8:	00e50733          	add	a4,a0,a4
    80007ddc:	00b70023          	sb	a1,0(a4)
    80007de0:	00a7871b          	addiw	a4,a5,10
    80007de4:	02c77e63          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007de8:	00e50733          	add	a4,a0,a4
    80007dec:	00b70023          	sb	a1,0(a4)
    80007df0:	00b7871b          	addiw	a4,a5,11
    80007df4:	02c77663          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007df8:	00e50733          	add	a4,a0,a4
    80007dfc:	00b70023          	sb	a1,0(a4)
    80007e00:	00c7871b          	addiw	a4,a5,12
    80007e04:	00c77e63          	bgeu	a4,a2,80007e20 <__memset+0x1c8>
    80007e08:	00e50733          	add	a4,a0,a4
    80007e0c:	00b70023          	sb	a1,0(a4)
    80007e10:	00d7879b          	addiw	a5,a5,13
    80007e14:	00c7f663          	bgeu	a5,a2,80007e20 <__memset+0x1c8>
    80007e18:	00f507b3          	add	a5,a0,a5
    80007e1c:	00b78023          	sb	a1,0(a5)
    80007e20:	00813403          	ld	s0,8(sp)
    80007e24:	01010113          	addi	sp,sp,16
    80007e28:	00008067          	ret
    80007e2c:	00b00693          	li	a3,11
    80007e30:	e55ff06f          	j	80007c84 <__memset+0x2c>
    80007e34:	00300e93          	li	t4,3
    80007e38:	ea5ff06f          	j	80007cdc <__memset+0x84>
    80007e3c:	00100e93          	li	t4,1
    80007e40:	e9dff06f          	j	80007cdc <__memset+0x84>
    80007e44:	00000e93          	li	t4,0
    80007e48:	e95ff06f          	j	80007cdc <__memset+0x84>
    80007e4c:	00000793          	li	a5,0
    80007e50:	ef9ff06f          	j	80007d48 <__memset+0xf0>
    80007e54:	00200e93          	li	t4,2
    80007e58:	e85ff06f          	j	80007cdc <__memset+0x84>
    80007e5c:	00400e93          	li	t4,4
    80007e60:	e7dff06f          	j	80007cdc <__memset+0x84>
    80007e64:	00500e93          	li	t4,5
    80007e68:	e75ff06f          	j	80007cdc <__memset+0x84>
    80007e6c:	00600e93          	li	t4,6
    80007e70:	e6dff06f          	j	80007cdc <__memset+0x84>

0000000080007e74 <__memmove>:
    80007e74:	ff010113          	addi	sp,sp,-16
    80007e78:	00813423          	sd	s0,8(sp)
    80007e7c:	01010413          	addi	s0,sp,16
    80007e80:	0e060863          	beqz	a2,80007f70 <__memmove+0xfc>
    80007e84:	fff6069b          	addiw	a3,a2,-1
    80007e88:	0006881b          	sext.w	a6,a3
    80007e8c:	0ea5e863          	bltu	a1,a0,80007f7c <__memmove+0x108>
    80007e90:	00758713          	addi	a4,a1,7
    80007e94:	00a5e7b3          	or	a5,a1,a0
    80007e98:	40a70733          	sub	a4,a4,a0
    80007e9c:	0077f793          	andi	a5,a5,7
    80007ea0:	00f73713          	sltiu	a4,a4,15
    80007ea4:	00174713          	xori	a4,a4,1
    80007ea8:	0017b793          	seqz	a5,a5
    80007eac:	00e7f7b3          	and	a5,a5,a4
    80007eb0:	10078863          	beqz	a5,80007fc0 <__memmove+0x14c>
    80007eb4:	00900793          	li	a5,9
    80007eb8:	1107f463          	bgeu	a5,a6,80007fc0 <__memmove+0x14c>
    80007ebc:	0036581b          	srliw	a6,a2,0x3
    80007ec0:	fff8081b          	addiw	a6,a6,-1
    80007ec4:	02081813          	slli	a6,a6,0x20
    80007ec8:	01d85893          	srli	a7,a6,0x1d
    80007ecc:	00858813          	addi	a6,a1,8
    80007ed0:	00058793          	mv	a5,a1
    80007ed4:	00050713          	mv	a4,a0
    80007ed8:	01088833          	add	a6,a7,a6
    80007edc:	0007b883          	ld	a7,0(a5)
    80007ee0:	00878793          	addi	a5,a5,8
    80007ee4:	00870713          	addi	a4,a4,8
    80007ee8:	ff173c23          	sd	a7,-8(a4)
    80007eec:	ff0798e3          	bne	a5,a6,80007edc <__memmove+0x68>
    80007ef0:	ff867713          	andi	a4,a2,-8
    80007ef4:	02071793          	slli	a5,a4,0x20
    80007ef8:	0207d793          	srli	a5,a5,0x20
    80007efc:	00f585b3          	add	a1,a1,a5
    80007f00:	40e686bb          	subw	a3,a3,a4
    80007f04:	00f507b3          	add	a5,a0,a5
    80007f08:	06e60463          	beq	a2,a4,80007f70 <__memmove+0xfc>
    80007f0c:	0005c703          	lbu	a4,0(a1)
    80007f10:	00e78023          	sb	a4,0(a5)
    80007f14:	04068e63          	beqz	a3,80007f70 <__memmove+0xfc>
    80007f18:	0015c603          	lbu	a2,1(a1)
    80007f1c:	00100713          	li	a4,1
    80007f20:	00c780a3          	sb	a2,1(a5)
    80007f24:	04e68663          	beq	a3,a4,80007f70 <__memmove+0xfc>
    80007f28:	0025c603          	lbu	a2,2(a1)
    80007f2c:	00200713          	li	a4,2
    80007f30:	00c78123          	sb	a2,2(a5)
    80007f34:	02e68e63          	beq	a3,a4,80007f70 <__memmove+0xfc>
    80007f38:	0035c603          	lbu	a2,3(a1)
    80007f3c:	00300713          	li	a4,3
    80007f40:	00c781a3          	sb	a2,3(a5)
    80007f44:	02e68663          	beq	a3,a4,80007f70 <__memmove+0xfc>
    80007f48:	0045c603          	lbu	a2,4(a1)
    80007f4c:	00400713          	li	a4,4
    80007f50:	00c78223          	sb	a2,4(a5)
    80007f54:	00e68e63          	beq	a3,a4,80007f70 <__memmove+0xfc>
    80007f58:	0055c603          	lbu	a2,5(a1)
    80007f5c:	00500713          	li	a4,5
    80007f60:	00c782a3          	sb	a2,5(a5)
    80007f64:	00e68663          	beq	a3,a4,80007f70 <__memmove+0xfc>
    80007f68:	0065c703          	lbu	a4,6(a1)
    80007f6c:	00e78323          	sb	a4,6(a5)
    80007f70:	00813403          	ld	s0,8(sp)
    80007f74:	01010113          	addi	sp,sp,16
    80007f78:	00008067          	ret
    80007f7c:	02061713          	slli	a4,a2,0x20
    80007f80:	02075713          	srli	a4,a4,0x20
    80007f84:	00e587b3          	add	a5,a1,a4
    80007f88:	f0f574e3          	bgeu	a0,a5,80007e90 <__memmove+0x1c>
    80007f8c:	02069613          	slli	a2,a3,0x20
    80007f90:	02065613          	srli	a2,a2,0x20
    80007f94:	fff64613          	not	a2,a2
    80007f98:	00e50733          	add	a4,a0,a4
    80007f9c:	00c78633          	add	a2,a5,a2
    80007fa0:	fff7c683          	lbu	a3,-1(a5)
    80007fa4:	fff78793          	addi	a5,a5,-1
    80007fa8:	fff70713          	addi	a4,a4,-1
    80007fac:	00d70023          	sb	a3,0(a4)
    80007fb0:	fec798e3          	bne	a5,a2,80007fa0 <__memmove+0x12c>
    80007fb4:	00813403          	ld	s0,8(sp)
    80007fb8:	01010113          	addi	sp,sp,16
    80007fbc:	00008067          	ret
    80007fc0:	02069713          	slli	a4,a3,0x20
    80007fc4:	02075713          	srli	a4,a4,0x20
    80007fc8:	00170713          	addi	a4,a4,1
    80007fcc:	00e50733          	add	a4,a0,a4
    80007fd0:	00050793          	mv	a5,a0
    80007fd4:	0005c683          	lbu	a3,0(a1)
    80007fd8:	00178793          	addi	a5,a5,1
    80007fdc:	00158593          	addi	a1,a1,1
    80007fe0:	fed78fa3          	sb	a3,-1(a5)
    80007fe4:	fee798e3          	bne	a5,a4,80007fd4 <__memmove+0x160>
    80007fe8:	f89ff06f          	j	80007f70 <__memmove+0xfc>

0000000080007fec <__putc>:
    80007fec:	fe010113          	addi	sp,sp,-32
    80007ff0:	00813823          	sd	s0,16(sp)
    80007ff4:	00113c23          	sd	ra,24(sp)
    80007ff8:	02010413          	addi	s0,sp,32
    80007ffc:	00050793          	mv	a5,a0
    80008000:	fef40593          	addi	a1,s0,-17
    80008004:	00100613          	li	a2,1
    80008008:	00000513          	li	a0,0
    8000800c:	fef407a3          	sb	a5,-17(s0)
    80008010:	fffff097          	auipc	ra,0xfffff
    80008014:	b3c080e7          	jalr	-1220(ra) # 80006b4c <console_write>
    80008018:	01813083          	ld	ra,24(sp)
    8000801c:	01013403          	ld	s0,16(sp)
    80008020:	02010113          	addi	sp,sp,32
    80008024:	00008067          	ret

0000000080008028 <__getc>:
    80008028:	fe010113          	addi	sp,sp,-32
    8000802c:	00813823          	sd	s0,16(sp)
    80008030:	00113c23          	sd	ra,24(sp)
    80008034:	02010413          	addi	s0,sp,32
    80008038:	fe840593          	addi	a1,s0,-24
    8000803c:	00100613          	li	a2,1
    80008040:	00000513          	li	a0,0
    80008044:	fffff097          	auipc	ra,0xfffff
    80008048:	ae8080e7          	jalr	-1304(ra) # 80006b2c <console_read>
    8000804c:	fe844503          	lbu	a0,-24(s0)
    80008050:	01813083          	ld	ra,24(sp)
    80008054:	01013403          	ld	s0,16(sp)
    80008058:	02010113          	addi	sp,sp,32
    8000805c:	00008067          	ret

0000000080008060 <console_handler>:
    80008060:	fe010113          	addi	sp,sp,-32
    80008064:	00813823          	sd	s0,16(sp)
    80008068:	00113c23          	sd	ra,24(sp)
    8000806c:	00913423          	sd	s1,8(sp)
    80008070:	02010413          	addi	s0,sp,32
    80008074:	14202773          	csrr	a4,scause
    80008078:	100027f3          	csrr	a5,sstatus
    8000807c:	0027f793          	andi	a5,a5,2
    80008080:	06079e63          	bnez	a5,800080fc <console_handler+0x9c>
    80008084:	00074c63          	bltz	a4,8000809c <console_handler+0x3c>
    80008088:	01813083          	ld	ra,24(sp)
    8000808c:	01013403          	ld	s0,16(sp)
    80008090:	00813483          	ld	s1,8(sp)
    80008094:	02010113          	addi	sp,sp,32
    80008098:	00008067          	ret
    8000809c:	0ff77713          	andi	a4,a4,255
    800080a0:	00900793          	li	a5,9
    800080a4:	fef712e3          	bne	a4,a5,80008088 <console_handler+0x28>
    800080a8:	ffffe097          	auipc	ra,0xffffe
    800080ac:	6dc080e7          	jalr	1756(ra) # 80006784 <plic_claim>
    800080b0:	00a00793          	li	a5,10
    800080b4:	00050493          	mv	s1,a0
    800080b8:	02f50c63          	beq	a0,a5,800080f0 <console_handler+0x90>
    800080bc:	fc0506e3          	beqz	a0,80008088 <console_handler+0x28>
    800080c0:	00050593          	mv	a1,a0
    800080c4:	00001517          	auipc	a0,0x1
    800080c8:	56c50513          	addi	a0,a0,1388 # 80009630 <_ZZ12printIntegermE6digits+0x5d0>
    800080cc:	fffff097          	auipc	ra,0xfffff
    800080d0:	afc080e7          	jalr	-1284(ra) # 80006bc8 <__printf>
    800080d4:	01013403          	ld	s0,16(sp)
    800080d8:	01813083          	ld	ra,24(sp)
    800080dc:	00048513          	mv	a0,s1
    800080e0:	00813483          	ld	s1,8(sp)
    800080e4:	02010113          	addi	sp,sp,32
    800080e8:	ffffe317          	auipc	t1,0xffffe
    800080ec:	6d430067          	jr	1748(t1) # 800067bc <plic_complete>
    800080f0:	fffff097          	auipc	ra,0xfffff
    800080f4:	3e0080e7          	jalr	992(ra) # 800074d0 <uartintr>
    800080f8:	fddff06f          	j	800080d4 <console_handler+0x74>
    800080fc:	00001517          	auipc	a0,0x1
    80008100:	63450513          	addi	a0,a0,1588 # 80009730 <digits+0x78>
    80008104:	fffff097          	auipc	ra,0xfffff
    80008108:	a68080e7          	jalr	-1432(ra) # 80006b6c <panic>
	...
