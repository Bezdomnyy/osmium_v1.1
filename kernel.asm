
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	e8813103          	ld	sp,-376(sp) # 80005e88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	720020ef          	jal	ra,8000273c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <mem_alloc>:
.global mem_alloc
mem_alloc:
    mv a1, a0
    80001000:	00050593          	mv	a1,a0
    addi a0, zero, 0x01
    80001004:	00100513          	li	a0,1
    ecall
    80001008:	00000073          	ecall
    ret
    8000100c:	00008067          	ret

0000000080001010 <mem_free>:

.global mem_free
mem_free:
    mv a1, a0
    80001010:	00050593          	mv	a1,a0
    addi a0, zero, 0x02
    80001014:	00200513          	li	a0,2
    ecall
    80001018:	00000073          	ecall
    8000101c:	00008067          	ret

0000000080001020 <_ZN5RiscV13pushRegistersEv>:
.global _ZN5RiscV13pushRegistersEv
.type _ZN5RiscV13pushRegistersEv, @function

_ZN5RiscV13pushRegistersEv:
    addi sp, sp, -256
    80001020:	f0010113          	addi	sp,sp,-256
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8 (sp)
    .endr
    80001024:	00313c23          	sd	gp,24(sp)
    80001028:	02413023          	sd	tp,32(sp)
    8000102c:	02513423          	sd	t0,40(sp)
    80001030:	02613823          	sd	t1,48(sp)
    80001034:	02713c23          	sd	t2,56(sp)
    80001038:	04813023          	sd	s0,64(sp)
    8000103c:	04913423          	sd	s1,72(sp)
    80001040:	04a13823          	sd	a0,80(sp)
    80001044:	04b13c23          	sd	a1,88(sp)
    80001048:	06c13023          	sd	a2,96(sp)
    8000104c:	06d13423          	sd	a3,104(sp)
    80001050:	06e13823          	sd	a4,112(sp)
    80001054:	06f13c23          	sd	a5,120(sp)
    80001058:	09013023          	sd	a6,128(sp)
    8000105c:	09113423          	sd	a7,136(sp)
    80001060:	09213823          	sd	s2,144(sp)
    80001064:	09313c23          	sd	s3,152(sp)
    80001068:	0b413023          	sd	s4,160(sp)
    8000106c:	0b513423          	sd	s5,168(sp)
    80001070:	0b613823          	sd	s6,176(sp)
    80001074:	0b713c23          	sd	s7,184(sp)
    80001078:	0d813023          	sd	s8,192(sp)
    8000107c:	0d913423          	sd	s9,200(sp)
    80001080:	0da13823          	sd	s10,208(sp)
    80001084:	0db13c23          	sd	s11,216(sp)
    80001088:	0fc13023          	sd	t3,224(sp)
    8000108c:	0fd13423          	sd	t4,232(sp)
    80001090:	0fe13823          	sd	t5,240(sp)
    80001094:	0ff13c23          	sd	t6,248(sp)
    ret
    80001098:	00008067          	ret

000000008000109c <_ZN5RiscV12popRegistersEv>:
.type _ZN5RiscV12popRegistersEv, @function

_ZN5RiscV12popRegistersEv:
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8 (sp)
    .endr
    8000109c:	01813183          	ld	gp,24(sp)
    800010a0:	02013203          	ld	tp,32(sp)
    800010a4:	02813283          	ld	t0,40(sp)
    800010a8:	03013303          	ld	t1,48(sp)
    800010ac:	03813383          	ld	t2,56(sp)
    800010b0:	04013403          	ld	s0,64(sp)
    800010b4:	04813483          	ld	s1,72(sp)
    800010b8:	05013503          	ld	a0,80(sp)
    800010bc:	05813583          	ld	a1,88(sp)
    800010c0:	06013603          	ld	a2,96(sp)
    800010c4:	06813683          	ld	a3,104(sp)
    800010c8:	07013703          	ld	a4,112(sp)
    800010cc:	07813783          	ld	a5,120(sp)
    800010d0:	08013803          	ld	a6,128(sp)
    800010d4:	08813883          	ld	a7,136(sp)
    800010d8:	09013903          	ld	s2,144(sp)
    800010dc:	09813983          	ld	s3,152(sp)
    800010e0:	0a013a03          	ld	s4,160(sp)
    800010e4:	0a813a83          	ld	s5,168(sp)
    800010e8:	0b013b03          	ld	s6,176(sp)
    800010ec:	0b813b83          	ld	s7,184(sp)
    800010f0:	0c013c03          	ld	s8,192(sp)
    800010f4:	0c813c83          	ld	s9,200(sp)
    800010f8:	0d013d03          	ld	s10,208(sp)
    800010fc:	0d813d83          	ld	s11,216(sp)
    80001100:	0e013e03          	ld	t3,224(sp)
    80001104:	0e813e83          	ld	t4,232(sp)
    80001108:	0f013f03          	ld	t5,240(sp)
    8000110c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001110:	10010113          	addi	sp,sp,256
    ret
    80001114:	00008067          	ret

0000000080001118 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:


.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001118:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000111c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001120:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001124:	0085b103          	ld	sp,8(a1)

    80001128:	00008067          	ret
    8000112c:	0000                	unimp
	...

0000000080001130 <_ZN6Kernel14supervisorTrapEv>:

.align 4
.global _ZN6Kernel14supervisorTrapEv
.type _ZN6Kernel14supervisorTrapEv, @function
_ZN6Kernel14supervisorTrapEv:
    addi sp, sp, -256
    80001130:	f0010113          	addi	sp,sp,-256
    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8(sp)
    .endr
    80001134:	00013023          	sd	zero,0(sp)
    80001138:	00113423          	sd	ra,8(sp)
    8000113c:	00213823          	sd	sp,16(sp)
    80001140:	00313c23          	sd	gp,24(sp)
    80001144:	02413023          	sd	tp,32(sp)
    80001148:	02513423          	sd	t0,40(sp)
    8000114c:	02613823          	sd	t1,48(sp)
    80001150:	02713c23          	sd	t2,56(sp)
    80001154:	04813023          	sd	s0,64(sp)
    80001158:	04913423          	sd	s1,72(sp)
    8000115c:	04a13823          	sd	a0,80(sp)
    80001160:	04b13c23          	sd	a1,88(sp)
    80001164:	06c13023          	sd	a2,96(sp)
    80001168:	06d13423          	sd	a3,104(sp)
    8000116c:	06e13823          	sd	a4,112(sp)
    80001170:	06f13c23          	sd	a5,120(sp)
    80001174:	09013023          	sd	a6,128(sp)
    80001178:	09113423          	sd	a7,136(sp)
    8000117c:	09213823          	sd	s2,144(sp)
    80001180:	09313c23          	sd	s3,152(sp)
    80001184:	0b413023          	sd	s4,160(sp)
    80001188:	0b513423          	sd	s5,168(sp)
    8000118c:	0b613823          	sd	s6,176(sp)
    80001190:	0b713c23          	sd	s7,184(sp)
    80001194:	0d813023          	sd	s8,192(sp)
    80001198:	0d913423          	sd	s9,200(sp)
    8000119c:	0da13823          	sd	s10,208(sp)
    800011a0:	0db13c23          	sd	s11,216(sp)
    800011a4:	0fc13023          	sd	t3,224(sp)
    800011a8:	0fd13423          	sd	t4,232(sp)
    800011ac:	0fe13823          	sd	t5,240(sp)
    800011b0:	0ff13c23          	sd	t6,248(sp)

    call _ZN6Kernel21supervisorTrapHandlerEv
    800011b4:	260000ef          	jal	ra,80001414 <_ZN6Kernel21supervisorTrapHandlerEv>



    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8(sp)
    .endr
    800011b8:	00013003          	ld	zero,0(sp)
    800011bc:	00813083          	ld	ra,8(sp)
    800011c0:	01013103          	ld	sp,16(sp)
    800011c4:	01813183          	ld	gp,24(sp)
    800011c8:	02013203          	ld	tp,32(sp)
    800011cc:	02813283          	ld	t0,40(sp)
    800011d0:	03013303          	ld	t1,48(sp)
    800011d4:	03813383          	ld	t2,56(sp)
    800011d8:	04013403          	ld	s0,64(sp)
    800011dc:	04813483          	ld	s1,72(sp)
    800011e0:	05013503          	ld	a0,80(sp)
    800011e4:	05813583          	ld	a1,88(sp)
    800011e8:	06013603          	ld	a2,96(sp)
    800011ec:	06813683          	ld	a3,104(sp)
    800011f0:	07013703          	ld	a4,112(sp)
    800011f4:	07813783          	ld	a5,120(sp)
    800011f8:	08013803          	ld	a6,128(sp)
    800011fc:	08813883          	ld	a7,136(sp)
    80001200:	09013903          	ld	s2,144(sp)
    80001204:	09813983          	ld	s3,152(sp)
    80001208:	0a013a03          	ld	s4,160(sp)
    8000120c:	0a813a83          	ld	s5,168(sp)
    80001210:	0b013b03          	ld	s6,176(sp)
    80001214:	0b813b83          	ld	s7,184(sp)
    80001218:	0c013c03          	ld	s8,192(sp)
    8000121c:	0c813c83          	ld	s9,200(sp)
    80001220:	0d013d03          	ld	s10,208(sp)
    80001224:	0d813d83          	ld	s11,216(sp)
    80001228:	0e013e03          	ld	t3,224(sp)
    8000122c:	0e813e83          	ld	t4,232(sp)
    80001230:	0f013f03          	ld	t5,240(sp)
    80001234:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001238:	10010113          	addi	sp,sp,256

    sret
    8000123c:	10200073          	sret

0000000080001240 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001240:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001244:	00b29a63          	bne	t0,a1,80001258 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001248:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000124c:	fe029ae3          	bnez	t0,80001240 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001250:	00000513          	li	a0,0
    jr ra                  # Return.
    80001254:	00008067          	ret

0000000080001258 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001258:	00100513          	li	a0,1
    8000125c:	00008067          	ret

0000000080001260 <_Z13thread_createPP7_threadPFvPvES2_>:
//

#include "../h/syscall_c.h"
#include "../lib/console.h"

int thread_create(thread_t *handle,void(*start_routine)(void *),void *arg) {
    80001260:	ff010113          	addi	sp,sp,-16
    80001264:	00813423          	sd	s0,8(sp)
    80001268:	01010413          	addi	s0,sp,16
    return 0;
}
    8000126c:	00000513          	li	a0,0
    80001270:	00813403          	ld	s0,8(sp)
    80001274:	01010113          	addi	sp,sp,16
    80001278:	00008067          	ret

000000008000127c <_Z11thread_exitv>:

int thread_exit() {
    8000127c:	ff010113          	addi	sp,sp,-16
    80001280:	00813423          	sd	s0,8(sp)
    80001284:	01010413          	addi	s0,sp,16
    return 0;
}
    80001288:	00000513          	li	a0,0
    8000128c:	00813403          	ld	s0,8(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret

0000000080001298 <_Z8sem_openPP4_semj>:


void thread_dispatch();

int sem_open( sem_t *handle, unsigned init) {
    80001298:	ff010113          	addi	sp,sp,-16
    8000129c:	00813423          	sd	s0,8(sp)
    800012a0:	01010413          	addi	s0,sp,16
    return 0;
}
    800012a4:	00000513          	li	a0,0
    800012a8:	00813403          	ld	s0,8(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00813423          	sd	s0,8(sp)
    800012bc:	01010413          	addi	s0,sp,16
    return 0;
}
    800012c0:	00000513          	li	a0,0
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00813423          	sd	s0,8(sp)
    800012d8:	01010413          	addi	s0,sp,16
    return 0;
}
    800012dc:	00000513          	li	a0,0
    800012e0:	00813403          	ld	s0,8(sp)
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00813423          	sd	s0,8(sp)
    800012f4:	01010413          	addi	s0,sp,16
    return 0;
}
    800012f8:	00000513          	li	a0,0
    800012fc:	00813403          	ld	s0,8(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_Z10time_sleepm>:

int time_sleep(time_t){
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00813423          	sd	s0,8(sp)
    80001310:	01010413          	addi	s0,sp,16
    return 0;
}
    80001314:	00000513          	li	a0,0
    80001318:	00813403          	ld	s0,8(sp)
    8000131c:	01010113          	addi	sp,sp,16
    80001320:	00008067          	ret

0000000080001324 <_Z4getcv>:

char getc(){
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00113423          	sd	ra,8(sp)
    8000132c:	00813023          	sd	s0,0(sp)
    80001330:	01010413          	addi	s0,sp,16
    return __getc();
    80001334:	00003097          	auipc	ra,0x3
    80001338:	504080e7          	jalr	1284(ra) # 80004838 <__getc>
}
    8000133c:	00813083          	ld	ra,8(sp)
    80001340:	00013403          	ld	s0,0(sp)
    80001344:	01010113          	addi	sp,sp,16
    80001348:	00008067          	ret

000000008000134c <_Z4putcc>:

void putc(char c) {
    8000134c:	ff010113          	addi	sp,sp,-16
    80001350:	00113423          	sd	ra,8(sp)
    80001354:	00813023          	sd	s0,0(sp)
    80001358:	01010413          	addi	s0,sp,16
    __putc(c);
    8000135c:	00003097          	auipc	ra,0x3
    80001360:	4a0080e7          	jalr	1184(ra) # 800047fc <__putc>
    80001364:	00813083          	ld	ra,8(sp)
    80001368:	00013403          	ld	s0,0(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_ZN6Kernel10initKernelEv>:
#include "../h/memory_allocator.hpp"
#include "../h/riscv.hpp"
//#include "../test/userMain.cpp"
extern void userMain();

void Kernel::initKernel() {
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00113423          	sd	ra,8(sp)
    8000137c:	00813023          	sd	s0,0(sp)
    80001380:	01010413          	addi	s0,sp,16
    RiscV::writeStvec((uint64) &supervisorTrap);
    80001384:	00005797          	auipc	a5,0x5
    80001388:	b0c7b783          	ld	a5,-1268(a5) # 80005e90 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    8000138c:	10579073          	csrw	stvec,a5
    MemoryAllocator::initMem();
    80001390:	00000097          	auipc	ra,0x0
    80001394:	348080e7          	jalr	840(ra) # 800016d8 <_ZN15MemoryAllocator7initMemEv>

}
    80001398:	00813083          	ld	ra,8(sp)
    8000139c:	00013403          	ld	s0,0(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_ZN6Kernel15syscall_handlerEv>:
    RiscV::clearSip(RiscV::SEIP);
    console_handler();
    RiscV::writeSepc(sepc);
}

void Kernel::syscall_handler() {
    800013a8:	fe010113          	addi	sp,sp,-32
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	00813823          	sd	s0,16(sp)
    800013b4:	02010413          	addi	s0,sp,32
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a0": [syscall_id] "=r" (syscall_id));
    800013b8:	00050793          	mv	a5,a0
    800013bc:	fef43423          	sd	a5,-24(s0)

    volatile uint64 arg0;
    switch(syscall_id) {
    800013c0:	fe843783          	ld	a5,-24(s0)
    800013c4:	00100713          	li	a4,1
    800013c8:	00e78e63          	beq	a5,a4,800013e4 <_ZN6Kernel15syscall_handlerEv+0x3c>
    800013cc:	00200713          	li	a4,2
    800013d0:	02e78663          	beq	a5,a4,800013fc <_ZN6Kernel15syscall_handlerEv+0x54>
            asm volatile ("mv %[arg0], a1": [arg0] "=r"(arg0));
            MemoryAllocator::free((void*)arg0);
            break;
    }
    //RiscV::writeSepc(sepc);
}
    800013d4:	01813083          	ld	ra,24(sp)
    800013d8:	01013403          	ld	s0,16(sp)
    800013dc:	02010113          	addi	sp,sp,32
    800013e0:	00008067          	ret
            asm volatile ("mv %[arg0], a1": [arg0] "=r"(arg0));
    800013e4:	00058793          	mv	a5,a1
    800013e8:	fef43023          	sd	a5,-32(s0)
            MemoryAllocator::allocate((size_t)arg0);
    800013ec:	fe043503          	ld	a0,-32(s0)
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	484080e7          	jalr	1156(ra) # 80001874 <_ZN15MemoryAllocator8allocateEm>
            break;
    800013f8:	fddff06f          	j	800013d4 <_ZN6Kernel15syscall_handlerEv+0x2c>
            asm volatile ("mv %[arg0], a1": [arg0] "=r"(arg0));
    800013fc:	00058793          	mv	a5,a1
    80001400:	fef43023          	sd	a5,-32(s0)
            MemoryAllocator::free((void*)arg0);
    80001404:	fe043503          	ld	a0,-32(s0)
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	50c080e7          	jalr	1292(ra) # 80001914 <_ZN15MemoryAllocator4freeEPv>
}
    80001410:	fc5ff06f          	j	800013d4 <_ZN6Kernel15syscall_handlerEv+0x2c>

0000000080001414 <_ZN6Kernel21supervisorTrapHandlerEv>:
void Kernel::supervisorTrapHandler() {
    80001414:	fc010113          	addi	sp,sp,-64
    80001418:	02113c23          	sd	ra,56(sp)
    8000141c:	02813823          	sd	s0,48(sp)
    80001420:	02913423          	sd	s1,40(sp)
    80001424:	03213023          	sd	s2,32(sp)
    80001428:	04010413          	addi	s0,sp,64
    asm volatile("csrr %[scause], scause": [scause] "=r" (scause));
    8000142c:	142027f3          	csrr	a5,scause
    80001430:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001434:	fc043483          	ld	s1,-64(s0)
    if (scause == 0x08 || scause == 0x09) {
    80001438:	ff848713          	addi	a4,s1,-8
    8000143c:	00100793          	li	a5,1
    80001440:	08e7f063          	bgeu	a5,a4,800014c0 <_ZN6Kernel21supervisorTrapHandlerEv+0xac>
    if (scause == 0x07) {
    80001444:	00700793          	li	a5,7
    80001448:	0af48463          	beq	s1,a5,800014f0 <_ZN6Kernel21supervisorTrapHandlerEv+0xdc>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000144c:	141027f3          	csrr	a5,sepc
    80001450:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001454:	fd843903          	ld	s2,-40(s0)
    uint64 sepc = RiscV::readSepc() + 4;
    80001458:	00490913          	addi	s2,s2,4
    __print_string("Neobradjen izuzetak.\n");
    8000145c:	00004517          	auipc	a0,0x4
    80001460:	bf450513          	addi	a0,a0,-1036 # 80005050 <CONSOLE_STATUS+0x40>
    80001464:	00000097          	auipc	ra,0x0
    80001468:	664080e7          	jalr	1636(ra) # 80001ac8 <_Z14__print_stringPKc>
    __print_string("scause: ");
    8000146c:	00004517          	auipc	a0,0x4
    80001470:	bd450513          	addi	a0,a0,-1068 # 80005040 <CONSOLE_STATUS+0x30>
    80001474:	00000097          	auipc	ra,0x0
    80001478:	654080e7          	jalr	1620(ra) # 80001ac8 <_Z14__print_stringPKc>
    __print_uint64(scause);
    8000147c:	00048513          	mv	a0,s1
    80001480:	00000097          	auipc	ra,0x0
    80001484:	68c080e7          	jalr	1676(ra) # 80001b0c <_Z14__print_uint64m>
    __putc('\n');
    80001488:	00a00513          	li	a0,10
    8000148c:	00003097          	auipc	ra,0x3
    80001490:	370080e7          	jalr	880(ra) # 800047fc <__putc>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    80001494:	20000793          	li	a5,512
    80001498:	1447b073          	csrc	sip,a5
    console_handler();
    8000149c:	00003097          	auipc	ra,0x3
    800014a0:	3d4080e7          	jalr	980(ra) # 80004870 <console_handler>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800014a4:	14191073          	csrw	sepc,s2
}
    800014a8:	03813083          	ld	ra,56(sp)
    800014ac:	03013403          	ld	s0,48(sp)
    800014b0:	02813483          	ld	s1,40(sp)
    800014b4:	02013903          	ld	s2,32(sp)
    800014b8:	04010113          	addi	sp,sp,64
    800014bc:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800014c0:	141027f3          	csrr	a5,sepc
    800014c4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800014c8:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    800014cc:	00448493          	addi	s1,s1,4
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    800014d0:	00200913          	li	s2,2
    800014d4:	14493073          	csrc	sip,s2
        syscall_handler();
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	ed0080e7          	jalr	-304(ra) # 800013a8 <_ZN6Kernel15syscall_handlerEv>
        asm volatile ("sd a0, 80(s0)");
    800014e0:	04a43823          	sd	a0,80(s0)
    800014e4:	14493073          	csrc	sip,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800014e8:	14149073          	csrw	sepc,s1
        return;
    800014ec:	fbdff06f          	j	800014a8 <_ZN6Kernel21supervisorTrapHandlerEv+0x94>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800014f0:	141027f3          	csrr	a5,sepc
    800014f4:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    800014f8:	fd043903          	ld	s2,-48(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    800014fc:	00490913          	addi	s2,s2,4
        __print_string("Nedozvoljena adresa upisa.\n");
    80001500:	00004517          	auipc	a0,0x4
    80001504:	b2050513          	addi	a0,a0,-1248 # 80005020 <CONSOLE_STATUS+0x10>
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	5c0080e7          	jalr	1472(ra) # 80001ac8 <_Z14__print_stringPKc>
        __print_string("scause: ");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	b3050513          	addi	a0,a0,-1232 # 80005040 <CONSOLE_STATUS+0x30>
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	5b0080e7          	jalr	1456(ra) # 80001ac8 <_Z14__print_stringPKc>
        __print_uint64(scause);
    80001520:	00048513          	mv	a0,s1
    80001524:	00000097          	auipc	ra,0x0
    80001528:	5e8080e7          	jalr	1512(ra) # 80001b0c <_Z14__print_uint64m>
        __putc('\n');
    8000152c:	00a00513          	li	a0,10
    80001530:	00003097          	auipc	ra,0x3
    80001534:	2cc080e7          	jalr	716(ra) # 800047fc <__putc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001538:	14191073          	csrw	sepc,s2
        return;
    8000153c:	f6dff06f          	j	800014a8 <_ZN6Kernel21supervisorTrapHandlerEv+0x94>

0000000080001540 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return 0;
}

Semaphore::~Semaphore() {
    80001540:	ff010113          	addi	sp,sp,-16
    80001544:	00813423          	sd	s0,8(sp)
    80001548:	01010413          	addi	s0,sp,16

}
    8000154c:	00813403          	ld	s0,8(sp)
    80001550:	01010113          	addi	sp,sp,16
    80001554:	00008067          	ret

0000000080001558 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00113423          	sd	ra,8(sp)
    80001560:	00813023          	sd	s0,0(sp)
    80001564:	01010413          	addi	s0,sp,16
}
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	120080e7          	jalr	288(ra) # 80001688 <_ZdlPv>
    80001570:	00813083          	ld	ra,8(sp)
    80001574:	00013403          	ld	s0,0(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00813423          	sd	s0,8(sp)
    80001588:	01010413          	addi	s0,sp,16
    8000158c:	00005797          	auipc	a5,0x5
    80001590:	86478793          	addi	a5,a5,-1948 # 80005df0 <_ZTV9Semaphore+0x10>
    80001594:	00f53023          	sd	a5,0(a0)
}
    80001598:	00813403          	ld	s0,8(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret

00000000800015a4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800015a4:	ff010113          	addi	sp,sp,-16
    800015a8:	00813423          	sd	s0,8(sp)
    800015ac:	01010413          	addi	s0,sp,16
}
    800015b0:	00000513          	li	a0,0
    800015b4:	00813403          	ld	s0,8(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00813423          	sd	s0,8(sp)
    800015c8:	01010413          	addi	s0,sp,16
}
    800015cc:	00000513          	li	a0,0
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <main>:
#include "../h/kernel.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"


void main() {
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00113423          	sd	ra,8(sp)
    800015e4:	00813023          	sd	s0,0(sp)
    800015e8:	01010413          	addi	s0,sp,16
    Kernel::initKernel();
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	d88080e7          	jalr	-632(ra) # 80001374 <_ZN6Kernel10initKernelEv>
    800015f4:	00813083          	ld	ra,8(sp)
    800015f8:	00013403          	ld	s0,0(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_ZN7Console4getcEv>:
//

#include "../h/syscall_cpp.hpp"


char Console::getc() {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00813423          	sd	s0,8(sp)
    8000160c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001610:	00000513          	li	a0,0
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_ZN7Console4putcEc>:

void Console::putc(char) {
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00813423          	sd	s0,8(sp)
    80001628:	01010413          	addi	s0,sp,16

    8000162c:	00813403          	ld	s0,8(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret

0000000080001638 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00113423          	sd	ra,8(sp)
    80001640:	00813023          	sd	s0,0(sp)
    80001644:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	9b8080e7          	jalr	-1608(ra) # 80001000 <mem_alloc>
}
    80001650:	00813083          	ld	ra,8(sp)
    80001654:	00013403          	ld	s0,0(sp)
    80001658:	01010113          	addi	sp,sp,16
    8000165c:	00008067          	ret

0000000080001660 <_Znam>:

void* operator new[](size_t size) {
    80001660:	ff010113          	addi	sp,sp,-16
    80001664:	00113423          	sd	ra,8(sp)
    80001668:	00813023          	sd	s0,0(sp)
    8000166c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001670:	00000097          	auipc	ra,0x0
    80001674:	990080e7          	jalr	-1648(ra) # 80001000 <mem_alloc>
}
    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZdlPv>:

void operator delete(void* ptr) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	978080e7          	jalr	-1672(ra) # 80001010 <mem_free>
}
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZdaPv>:

void operator delete[](void* ptr) {
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00113423          	sd	ra,8(sp)
    800016b8:	00813023          	sd	s0,0(sp)
    800016bc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	950080e7          	jalr	-1712(ra) # 80001010 <mem_free>
}
    800016c8:	00813083          	ld	ra,8(sp)
    800016cc:	00013403          	ld	s0,0(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);

}

void MemoryAllocator::initMem()  {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    800016e4:	00004797          	auipc	a5,0x4
    800016e8:	79c7b783          	ld	a5,1948(a5) # 80005e80 <_GLOBAL_OFFSET_TABLE_+0x8>
    800016ec:	0007b783          	ld	a5,0(a5)
    800016f0:	00004697          	auipc	a3,0x4
    800016f4:	7f068693          	addi	a3,a3,2032 # 80005ee0 <_ZN15MemoryAllocator8fMemHeadE>
    800016f8:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    800016fc:	00004717          	auipc	a4,0x4
    80001700:	79c73703          	ld	a4,1948(a4) # 80005e98 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001704:	00073703          	ld	a4,0(a4)
    80001708:	40f70733          	sub	a4,a4,a5
    8000170c:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80001710:	0006b783          	ld	a5,0(a3)
    80001714:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    80001718:	0007b823          	sd	zero,16(a5)
}
    8000171c:	00813403          	ld	s0,8(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00813423          	sd	s0,8(sp)
    80001730:	01010413          	addi	s0,sp,16
    80001734:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    80001738:	00004517          	auipc	a0,0x4
    8000173c:	7a853503          	ld	a0,1960(a0) # 80005ee0 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80001740:	02050063          	beqz	a0,80001760 <_ZN15MemoryAllocator8firstFitEm+0x38>
    80001744:	01053703          	ld	a4,16(a0)
    80001748:	00070c63          	beqz	a4,80001760 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    8000174c:	00860793          	addi	a5,a2,8
    80001750:	00053683          	ld	a3,0(a0)
    80001754:	00f6fe63          	bgeu	a3,a5,80001770 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80001758:	00070513          	mv	a0,a4
    8000175c:	fe5ff06f          	j	80001740 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001760:	00050863          	beqz	a0,80001770 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001764:	00860613          	addi	a2,a2,8
    80001768:	00053783          	ld	a5,0(a0)
    8000176c:	00c7e863          	bltu	a5,a2,8000177c <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001770:	00813403          	ld	s0,8(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret
    return nullptr;
    8000177c:	00000513          	li	a0,0
    80001780:	ff1ff06f          	j	80001770 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001784 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00813423          	sd	s0,8(sp)
    8000178c:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001790:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001794:	03f57793          	andi	a5,a0,63
    80001798:	00078863          	beqz	a5,800017a8 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    8000179c:	04000713          	li	a4,64
    800017a0:	40f707b3          	sub	a5,a4,a5
    800017a4:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    800017b4:	fe010113          	addi	sp,sp,-32
    800017b8:	00113c23          	sd	ra,24(sp)
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	02010413          	addi	s0,sp,32
    800017c8:	00050493          	mv	s1,a0
    if (node) {
    800017cc:	04050c63          	beqz	a0,80001824 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    800017d0:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	fb0080e7          	jalr	-80(ra) # 80001784 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    800017dc:	0004b783          	ld	a5,0(s1)
    800017e0:	40a787b3          	sub	a5,a5,a0
    800017e4:	03f00713          	li	a4,63
    800017e8:	04f77e63          	bgeu	a4,a5,80001844 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    800017ec:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    800017f0:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    800017f4:	0084b783          	ld	a5,8(s1)
    800017f8:	04078063          	beqz	a5,80001838 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    800017fc:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80001800:	0104b783          	ld	a5,16(s1)
    80001804:	00078463          	beqz	a5,8000180c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001808:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    8000180c:	0104b783          	ld	a5,16(s1)
    80001810:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80001814:	0084b783          	ld	a5,8(s1)
    80001818:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    8000181c:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + sizeof(size_t));
    80001820:	00848513          	addi	a0,s1,8
}
    80001824:	01813083          	ld	ra,24(sp)
    80001828:	01013403          	ld	s0,16(sp)
    8000182c:	00813483          	ld	s1,8(sp)
    80001830:	02010113          	addi	sp,sp,32
    80001834:	00008067          	ret
            else fMemHead = newNode;
    80001838:	00004797          	auipc	a5,0x4
    8000183c:	6ae7b423          	sd	a4,1704(a5) # 80005ee0 <_ZN15MemoryAllocator8fMemHeadE>
    80001840:	fc1ff06f          	j	80001800 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80001844:	0084b783          	ld	a5,8(s1)
    80001848:	02078063          	beqz	a5,80001868 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    8000184c:	0104b703          	ld	a4,16(s1)
    80001850:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001854:	0104b783          	ld	a5,16(s1)
    80001858:	fc0782e3          	beqz	a5,8000181c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    8000185c:	0084b703          	ld	a4,8(s1)
    80001860:	00e7b423          	sd	a4,8(a5)
    80001864:	fb9ff06f          	j	8000181c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = newNode;
    80001868:	00004797          	auipc	a5,0x4
    8000186c:	6607bc23          	sd	zero,1656(a5) # 80005ee0 <_ZN15MemoryAllocator8fMemHeadE>
    80001870:	fe5ff06f          	j	80001854 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080001874 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80001874:	fe010113          	addi	sp,sp,-32
    80001878:	00113c23          	sd	ra,24(sp)
    8000187c:	00813823          	sd	s0,16(sp)
    80001880:	00913423          	sd	s1,8(sp)
    80001884:	02010413          	addi	s0,sp,32
    80001888:	00050493          	mv	s1,a0
    return allocBlocks(firstFit(size), size);
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	e9c080e7          	jalr	-356(ra) # 80001728 <_ZN15MemoryAllocator8firstFitEm>
    80001894:	00048593          	mv	a1,s1
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	f1c080e7          	jalr	-228(ra) # 800017b4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    800018a0:	01813083          	ld	ra,24(sp)
    800018a4:	01013403          	ld	s0,16(sp)
    800018a8:	00813483          	ld	s1,8(sp)
    800018ac:	02010113          	addi	sp,sp,32
    800018b0:	00008067          	ret

00000000800018b4 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    800018b4:	ff010113          	addi	sp,sp,-16
    800018b8:	00813423          	sd	s0,8(sp)
    800018bc:	01010413          	addi	s0,sp,16
    if(!node) return;
    800018c0:	02050663          	beqz	a0,800018ec <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    if (!node->next && node + node->size != node->next) return;
    800018c4:	01053783          	ld	a5,16(a0)
    800018c8:	02078863          	beqz	a5,800018f8 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x44>

    node->size += node->next->size;
    800018cc:	0007b683          	ld	a3,0(a5)
    800018d0:	00053703          	ld	a4,0(a0)
    800018d4:	00d70733          	add	a4,a4,a3
    800018d8:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    800018dc:	0107b783          	ld	a5,16(a5)
    800018e0:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    800018e4:	00078463          	beqz	a5,800018ec <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    800018e8:	00a7b423          	sd	a0,8(a5)
}
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret
    if (!node->next && node + node->size != node->next) return;
    800018f8:	00053683          	ld	a3,0(a0)
    800018fc:	00169713          	slli	a4,a3,0x1
    80001900:	00d70733          	add	a4,a4,a3
    80001904:	00371713          	slli	a4,a4,0x3
    80001908:	00e50733          	add	a4,a0,a4
    8000190c:	fee790e3          	bne	a5,a4,800018ec <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    80001910:	fbdff06f          	j	800018cc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x18>

0000000080001914 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80001914:	fe010113          	addi	sp,sp,-32
    80001918:	00113c23          	sd	ra,24(sp)
    8000191c:	00813823          	sd	s0,16(sp)
    80001920:	00913423          	sd	s1,8(sp)
    80001924:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80001928:	ff850513          	addi	a0,a0,-8
    if (fMemHead && addr>(void*)fMemHead)
    8000192c:	00004717          	auipc	a4,0x4
    80001930:	5b473703          	ld	a4,1460(a4) # 80005ee0 <_ZN15MemoryAllocator8fMemHeadE>
    80001934:	02070063          	beqz	a4,80001954 <_ZN15MemoryAllocator4freeEPv+0x40>
    80001938:	02a77263          	bgeu	a4,a0,8000195c <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    8000193c:	00070793          	mv	a5,a4
    80001940:	00078493          	mv	s1,a5
    80001944:	0107b783          	ld	a5,16(a5)
    80001948:	00078c63          	beqz	a5,80001960 <_ZN15MemoryAllocator4freeEPv+0x4c>
    8000194c:	fea7eae3          	bltu	a5,a0,80001940 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80001950:	0100006f          	j	80001960 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80001954:	00070493          	mv	s1,a4
    80001958:	0080006f          	j	80001960 <_ZN15MemoryAllocator4freeEPv+0x4c>
    8000195c:	00000493          	li	s1,0
    newNode->prev = curr;
    80001960:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80001964:	04048263          	beqz	s1,800019a8 <_ZN15MemoryAllocator4freeEPv+0x94>
    80001968:	0104b783          	ld	a5,16(s1)
    8000196c:	00f53823          	sd	a5,16(a0)
    80001970:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80001974:	01053783          	ld	a5,16(a0)
    80001978:	00078463          	beqz	a5,80001980 <_ZN15MemoryAllocator4freeEPv+0x6c>
    8000197c:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80001980:	00000097          	auipc	ra,0x0
    80001984:	f34080e7          	jalr	-204(ra) # 800018b4 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80001988:	00048513          	mv	a0,s1
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	f28080e7          	jalr	-216(ra) # 800018b4 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80001994:	01813083          	ld	ra,24(sp)
    80001998:	01013403          	ld	s0,16(sp)
    8000199c:	00813483          	ld	s1,8(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    800019a8:	00e53823          	sd	a4,16(a0)
    800019ac:	00004797          	auipc	a5,0x4
    800019b0:	52a7ba23          	sd	a0,1332(a5) # 80005ee0 <_ZN15MemoryAllocator8fMemHeadE>
    800019b4:	fc1ff06f          	j	80001974 <_ZN15MemoryAllocator4freeEPv+0x60>

00000000800019b8 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00813423          	sd	s0,8(sp)
    800019c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800019c4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800019c8:	10200073          	sret
    800019cc:	00813403          	ld	s0,8(sp)
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret

00000000800019d8 <_ZN14PeriodicThreadC1Em>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

PeriodicThread::PeriodicThread(time_t period) {
    800019d8:	fe010113          	addi	sp,sp,-32
    800019dc:	00113c23          	sd	ra,24(sp)
    800019e0:	00813823          	sd	s0,16(sp)
    800019e4:	00913423          	sd	s1,8(sp)
    800019e8:	02010413          	addi	s0,sp,32
    800019ec:	00050493          	mv	s1,a0
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	334080e7          	jalr	820(ra) # 80001d24 <_ZN6ThreadC1Ev>
    800019f8:	00004797          	auipc	a5,0x4
    800019fc:	41878793          	addi	a5,a5,1048 # 80005e10 <_ZTV14PeriodicThread+0x10>
    80001a00:	00f4b023          	sd	a5,0(s1)

    80001a04:	01813083          	ld	ra,24(sp)
    80001a08:	01013403          	ld	s0,16(sp)
    80001a0c:	00813483          	ld	s1,8(sp)
    80001a10:	02010113          	addi	sp,sp,32
    80001a14:	00008067          	ret

0000000080001a18 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00813423          	sd	s0,8(sp)
    80001a20:	01010413          	addi	s0,sp,16
    80001a24:	00813403          	ld	s0,8(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00813423          	sd	s0,8(sp)
    80001a38:	01010413          	addi	s0,sp,16
    80001a3c:	00813403          	ld	s0,8(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret

0000000080001a48 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00113423          	sd	ra,8(sp)
    80001a50:	00813023          	sd	s0,0(sp)
    80001a54:	01010413          	addi	s0,sp,16
    80001a58:	00004797          	auipc	a5,0x4
    80001a5c:	3b878793          	addi	a5,a5,952 # 80005e10 <_ZTV14PeriodicThread+0x10>
    80001a60:	00f53023          	sd	a5,0(a0)
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	20c080e7          	jalr	524(ra) # 80001c70 <_ZN6ThreadD1Ev>
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_ZN14PeriodicThreadD0Ev>:
    80001a7c:	fe010113          	addi	sp,sp,-32
    80001a80:	00113c23          	sd	ra,24(sp)
    80001a84:	00813823          	sd	s0,16(sp)
    80001a88:	00913423          	sd	s1,8(sp)
    80001a8c:	02010413          	addi	s0,sp,32
    80001a90:	00050493          	mv	s1,a0
    80001a94:	00004797          	auipc	a5,0x4
    80001a98:	37c78793          	addi	a5,a5,892 # 80005e10 <_ZTV14PeriodicThread+0x10>
    80001a9c:	00f53023          	sd	a5,0(a0)
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	1d0080e7          	jalr	464(ra) # 80001c70 <_ZN6ThreadD1Ev>
    80001aa8:	00048513          	mv	a0,s1
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	bdc080e7          	jalr	-1060(ra) # 80001688 <_ZdlPv>
    80001ab4:	01813083          	ld	ra,24(sp)
    80001ab8:	01013403          	ld	s0,16(sp)
    80001abc:	00813483          	ld	s1,8(sp)
    80001ac0:	02010113          	addi	sp,sp,32
    80001ac4:	00008067          	ret

0000000080001ac8 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    80001ac8:	fe010113          	addi	sp,sp,-32
    80001acc:	00113c23          	sd	ra,24(sp)
    80001ad0:	00813823          	sd	s0,16(sp)
    80001ad4:	00913423          	sd	s1,8(sp)
    80001ad8:	02010413          	addi	s0,sp,32
    80001adc:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80001ae0:	0004c503          	lbu	a0,0(s1)
    80001ae4:	00050a63          	beqz	a0,80001af8 <_Z14__print_stringPKc+0x30>
    80001ae8:	00003097          	auipc	ra,0x3
    80001aec:	d14080e7          	jalr	-748(ra) # 800047fc <__putc>
    80001af0:	00148493          	addi	s1,s1,1
    80001af4:	fedff06f          	j	80001ae0 <_Z14__print_stringPKc+0x18>
}
    80001af8:	01813083          	ld	ra,24(sp)
    80001afc:	01013403          	ld	s0,16(sp)
    80001b00:	00813483          	ld	s1,8(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret

0000000080001b0c <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80001b0c:	fc010113          	addi	sp,sp,-64
    80001b10:	02113c23          	sd	ra,56(sp)
    80001b14:	02813823          	sd	s0,48(sp)
    80001b18:	02913423          	sd	s1,40(sp)
    80001b1c:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80001b20:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80001b24:	00a00693          	li	a3,10
    80001b28:	02d57633          	remu	a2,a0,a3
    80001b2c:	00003717          	auipc	a4,0x3
    80001b30:	53c70713          	addi	a4,a4,1340 # 80005068 <_ZZ14__print_uint64mE6digits>
    80001b34:	00c70733          	add	a4,a4,a2
    80001b38:	00074703          	lbu	a4,0(a4)
    80001b3c:	fe040613          	addi	a2,s0,-32
    80001b40:	009607b3          	add	a5,a2,s1
    80001b44:	0014849b          	addiw	s1,s1,1
    80001b48:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80001b4c:	00050713          	mv	a4,a0
    80001b50:	02d55533          	divu	a0,a0,a3
    80001b54:	00900793          	li	a5,9
    80001b58:	fce7e6e3          	bltu	a5,a4,80001b24 <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    80001b5c:	fff4849b          	addiw	s1,s1,-1
    80001b60:	0004ce63          	bltz	s1,80001b7c <_Z14__print_uint64m+0x70>
    80001b64:	fe040793          	addi	a5,s0,-32
    80001b68:	009787b3          	add	a5,a5,s1
    80001b6c:	fe87c503          	lbu	a0,-24(a5)
    80001b70:	00003097          	auipc	ra,0x3
    80001b74:	c8c080e7          	jalr	-884(ra) # 800047fc <__putc>
    80001b78:	fe5ff06f          	j	80001b5c <_Z14__print_uint64m+0x50>
}
    80001b7c:	03813083          	ld	ra,56(sp)
    80001b80:	03013403          	ld	s0,48(sp)
    80001b84:	02813483          	ld	s1,40(sp)
    80001b88:	04010113          	addi	sp,sp,64
    80001b8c:	00008067          	ret

0000000080001b90 <_Z11__print_intx>:

void __print_int(long long int integer) {
    80001b90:	fe010113          	addi	sp,sp,-32
    80001b94:	00113c23          	sd	ra,24(sp)
    80001b98:	00813823          	sd	s0,16(sp)
    80001b9c:	00913423          	sd	s1,8(sp)
    80001ba0:	02010413          	addi	s0,sp,32
    80001ba4:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    80001ba8:	02054263          	bltz	a0,80001bcc <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80001bac:	00048513          	mv	a0,s1
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	f5c080e7          	jalr	-164(ra) # 80001b0c <_Z14__print_uint64m>
}
    80001bb8:	01813083          	ld	ra,24(sp)
    80001bbc:	01013403          	ld	s0,16(sp)
    80001bc0:	00813483          	ld	s1,8(sp)
    80001bc4:	02010113          	addi	sp,sp,32
    80001bc8:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    80001bcc:	02d00513          	li	a0,45
    80001bd0:	00003097          	auipc	ra,0x3
    80001bd4:	c2c080e7          	jalr	-980(ra) # 800047fc <__putc>
    80001bd8:	409004b3          	neg	s1,s1
    80001bdc:	fd1ff06f          	j	80001bac <_Z11__print_intx+0x1c>

0000000080001be0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001be0:	fd010113          	addi	sp,sp,-48
    80001be4:	02113423          	sd	ra,40(sp)
    80001be8:	02813023          	sd	s0,32(sp)
    80001bec:	00913c23          	sd	s1,24(sp)
    80001bf0:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001bf4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001bf8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001bfc:	00a00613          	li	a2,10
    80001c00:	02c5773b          	remuw	a4,a0,a2
    80001c04:	02071693          	slli	a3,a4,0x20
    80001c08:	0206d693          	srli	a3,a3,0x20
    80001c0c:	00003717          	auipc	a4,0x3
    80001c10:	45c70713          	addi	a4,a4,1116 # 80005068 <_ZZ14__print_uint64mE6digits>
    80001c14:	00d70733          	add	a4,a4,a3
    80001c18:	01074703          	lbu	a4,16(a4)
    80001c1c:	fe040693          	addi	a3,s0,-32
    80001c20:	009687b3          	add	a5,a3,s1
    80001c24:	0014849b          	addiw	s1,s1,1
    80001c28:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001c2c:	0005071b          	sext.w	a4,a0
    80001c30:	02c5553b          	divuw	a0,a0,a2
    80001c34:	00900793          	li	a5,9
    80001c38:	fce7e2e3          	bltu	a5,a4,80001bfc <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80001c3c:	fff4849b          	addiw	s1,s1,-1
    80001c40:	0004ce63          	bltz	s1,80001c5c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80001c44:	fe040793          	addi	a5,s0,-32
    80001c48:	009787b3          	add	a5,a5,s1
    80001c4c:	ff07c503          	lbu	a0,-16(a5)
    80001c50:	00003097          	auipc	ra,0x3
    80001c54:	bac080e7          	jalr	-1108(ra) # 800047fc <__putc>
    80001c58:	fe5ff06f          	j	80001c3c <_Z12printIntegerm+0x5c>
}
    80001c5c:	02813083          	ld	ra,40(sp)
    80001c60:	02013403          	ld	s0,32(sp)
    80001c64:	01813483          	ld	s1,24(sp)
    80001c68:	03010113          	addi	sp,sp,48
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00813423          	sd	s0,8(sp)
    80001c78:	01010413          	addi	s0,sp,16

}
    80001c7c:	00813403          	ld	s0,8(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
}
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	9f0080e7          	jalr	-1552(ra) # 80001688 <_ZdlPv>
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	00004797          	auipc	a5,0x4
    80001cc0:	18478793          	addi	a5,a5,388 # 80005e40 <_ZTV6Thread+0x10>
    80001cc4:	00f53023          	sd	a5,0(a0)
}
    80001cc8:	00813403          	ld	s0,8(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <_ZN6Thread5startEv>:

int Thread::start() {
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00813423          	sd	s0,8(sp)
    80001cdc:	01010413          	addi	s0,sp,16
    return 0;
}
    80001ce0:	00000513          	li	a0,0
    80001ce4:	00813403          	ld	s0,8(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00813423          	sd	s0,8(sp)
    80001cf8:	01010413          	addi	s0,sp,16

}
    80001cfc:	00813403          	ld	s0,8(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
    return 0;
}
    80001d14:	00000513          	li	a0,0
    80001d18:	00813403          	ld	s0,8(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret

0000000080001d24 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80001d24:	ff010113          	addi	sp,sp,-16
    80001d28:	00813423          	sd	s0,8(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    80001d30:	00004797          	auipc	a5,0x4
    80001d34:	11078793          	addi	a5,a5,272 # 80005e40 <_ZTV6Thread+0x10>
    80001d38:	00f53023          	sd	a5,0(a0)

}
    80001d3c:	00813403          	ld	s0,8(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001d48:	fe010113          	addi	sp,sp,-32
    80001d4c:	00113c23          	sd	ra,24(sp)
    80001d50:	00813823          	sd	s0,16(sp)
    80001d54:	00913423          	sd	s1,8(sp)
    80001d58:	02010413          	addi	s0,sp,32
    80001d5c:	00050493          	mv	s1,a0
    LOCK();
    80001d60:	00100613          	li	a2,1
    80001d64:	00000593          	li	a1,0
    80001d68:	00004517          	auipc	a0,0x4
    80001d6c:	18050513          	addi	a0,a0,384 # 80005ee8 <lockPrint>
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	4d0080e7          	jalr	1232(ra) # 80001240 <copy_and_swap>
    80001d78:	fe0514e3          	bnez	a0,80001d60 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001d7c:	0004c503          	lbu	a0,0(s1)
    80001d80:	00050a63          	beqz	a0,80001d94 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	5c8080e7          	jalr	1480(ra) # 8000134c <_Z4putcc>
        string++;
    80001d8c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001d90:	fedff06f          	j	80001d7c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80001d94:	00000613          	li	a2,0
    80001d98:	00100593          	li	a1,1
    80001d9c:	00004517          	auipc	a0,0x4
    80001da0:	14c50513          	addi	a0,a0,332 # 80005ee8 <lockPrint>
    80001da4:	fffff097          	auipc	ra,0xfffff
    80001da8:	49c080e7          	jalr	1180(ra) # 80001240 <copy_and_swap>
    80001dac:	fe0514e3          	bnez	a0,80001d94 <_Z11printStringPKc+0x4c>
}
    80001db0:	01813083          	ld	ra,24(sp)
    80001db4:	01013403          	ld	s0,16(sp)
    80001db8:	00813483          	ld	s1,8(sp)
    80001dbc:	02010113          	addi	sp,sp,32
    80001dc0:	00008067          	ret

0000000080001dc4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001dc4:	fd010113          	addi	sp,sp,-48
    80001dc8:	02113423          	sd	ra,40(sp)
    80001dcc:	02813023          	sd	s0,32(sp)
    80001dd0:	00913c23          	sd	s1,24(sp)
    80001dd4:	01213823          	sd	s2,16(sp)
    80001dd8:	01313423          	sd	s3,8(sp)
    80001ddc:	01413023          	sd	s4,0(sp)
    80001de0:	03010413          	addi	s0,sp,48
    80001de4:	00050993          	mv	s3,a0
    80001de8:	00058a13          	mv	s4,a1
    LOCK();
    80001dec:	00100613          	li	a2,1
    80001df0:	00000593          	li	a1,0
    80001df4:	00004517          	auipc	a0,0x4
    80001df8:	0f450513          	addi	a0,a0,244 # 80005ee8 <lockPrint>
    80001dfc:	fffff097          	auipc	ra,0xfffff
    80001e00:	444080e7          	jalr	1092(ra) # 80001240 <copy_and_swap>
    80001e04:	fe0514e3          	bnez	a0,80001dec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001e08:	00000913          	li	s2,0
    80001e0c:	00090493          	mv	s1,s2
    80001e10:	0019091b          	addiw	s2,s2,1
    80001e14:	03495a63          	bge	s2,s4,80001e48 <_Z9getStringPci+0x84>
        cc = getc();
    80001e18:	fffff097          	auipc	ra,0xfffff
    80001e1c:	50c080e7          	jalr	1292(ra) # 80001324 <_Z4getcv>
        if(cc < 1)
    80001e20:	02050463          	beqz	a0,80001e48 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80001e24:	009984b3          	add	s1,s3,s1
    80001e28:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001e2c:	00a00793          	li	a5,10
    80001e30:	00f50a63          	beq	a0,a5,80001e44 <_Z9getStringPci+0x80>
    80001e34:	00d00793          	li	a5,13
    80001e38:	fcf51ae3          	bne	a0,a5,80001e0c <_Z9getStringPci+0x48>
        buf[i++] = c;
    80001e3c:	00090493          	mv	s1,s2
    80001e40:	0080006f          	j	80001e48 <_Z9getStringPci+0x84>
    80001e44:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001e48:	009984b3          	add	s1,s3,s1
    80001e4c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001e50:	00000613          	li	a2,0
    80001e54:	00100593          	li	a1,1
    80001e58:	00004517          	auipc	a0,0x4
    80001e5c:	09050513          	addi	a0,a0,144 # 80005ee8 <lockPrint>
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	3e0080e7          	jalr	992(ra) # 80001240 <copy_and_swap>
    80001e68:	fe0514e3          	bnez	a0,80001e50 <_Z9getStringPci+0x8c>
    return buf;
}
    80001e6c:	00098513          	mv	a0,s3
    80001e70:	02813083          	ld	ra,40(sp)
    80001e74:	02013403          	ld	s0,32(sp)
    80001e78:	01813483          	ld	s1,24(sp)
    80001e7c:	01013903          	ld	s2,16(sp)
    80001e80:	00813983          	ld	s3,8(sp)
    80001e84:	00013a03          	ld	s4,0(sp)
    80001e88:	03010113          	addi	sp,sp,48
    80001e8c:	00008067          	ret

0000000080001e90 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00813423          	sd	s0,8(sp)
    80001e98:	01010413          	addi	s0,sp,16
    80001e9c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001ea0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001ea4:	0006c603          	lbu	a2,0(a3)
    80001ea8:	fd06071b          	addiw	a4,a2,-48
    80001eac:	0ff77713          	andi	a4,a4,255
    80001eb0:	00900793          	li	a5,9
    80001eb4:	02e7e063          	bltu	a5,a4,80001ed4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001eb8:	0025179b          	slliw	a5,a0,0x2
    80001ebc:	00a787bb          	addw	a5,a5,a0
    80001ec0:	0017979b          	slliw	a5,a5,0x1
    80001ec4:	00168693          	addi	a3,a3,1
    80001ec8:	00c787bb          	addw	a5,a5,a2
    80001ecc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001ed0:	fd5ff06f          	j	80001ea4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001ed4:	00813403          	ld	s0,8(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001ee0:	fc010113          	addi	sp,sp,-64
    80001ee4:	02113c23          	sd	ra,56(sp)
    80001ee8:	02813823          	sd	s0,48(sp)
    80001eec:	02913423          	sd	s1,40(sp)
    80001ef0:	03213023          	sd	s2,32(sp)
    80001ef4:	01313c23          	sd	s3,24(sp)
    80001ef8:	04010413          	addi	s0,sp,64
    80001efc:	00050493          	mv	s1,a0
    80001f00:	00058913          	mv	s2,a1
    80001f04:	00060993          	mv	s3,a2
    LOCK();
    80001f08:	00100613          	li	a2,1
    80001f0c:	00000593          	li	a1,0
    80001f10:	00004517          	auipc	a0,0x4
    80001f14:	fd850513          	addi	a0,a0,-40 # 80005ee8 <lockPrint>
    80001f18:	fffff097          	auipc	ra,0xfffff
    80001f1c:	328080e7          	jalr	808(ra) # 80001240 <copy_and_swap>
    80001f20:	fe0514e3          	bnez	a0,80001f08 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001f24:	00098463          	beqz	s3,80001f2c <_Z8printIntiii+0x4c>
    80001f28:	0804c463          	bltz	s1,80001fb0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001f2c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001f30:	00000593          	li	a1,0
    }

    i = 0;
    80001f34:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001f38:	0009079b          	sext.w	a5,s2
    80001f3c:	0325773b          	remuw	a4,a0,s2
    80001f40:	00048613          	mv	a2,s1
    80001f44:	0014849b          	addiw	s1,s1,1
    80001f48:	02071693          	slli	a3,a4,0x20
    80001f4c:	0206d693          	srli	a3,a3,0x20
    80001f50:	00004717          	auipc	a4,0x4
    80001f54:	f0870713          	addi	a4,a4,-248 # 80005e58 <digits>
    80001f58:	00d70733          	add	a4,a4,a3
    80001f5c:	00074683          	lbu	a3,0(a4)
    80001f60:	fd040713          	addi	a4,s0,-48
    80001f64:	00c70733          	add	a4,a4,a2
    80001f68:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001f6c:	0005071b          	sext.w	a4,a0
    80001f70:	0325553b          	divuw	a0,a0,s2
    80001f74:	fcf772e3          	bgeu	a4,a5,80001f38 <_Z8printIntiii+0x58>
    if(neg)
    80001f78:	00058c63          	beqz	a1,80001f90 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80001f7c:	fd040793          	addi	a5,s0,-48
    80001f80:	009784b3          	add	s1,a5,s1
    80001f84:	02d00793          	li	a5,45
    80001f88:	fef48823          	sb	a5,-16(s1)
    80001f8c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001f90:	fff4849b          	addiw	s1,s1,-1
    80001f94:	0204c463          	bltz	s1,80001fbc <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80001f98:	fd040793          	addi	a5,s0,-48
    80001f9c:	009787b3          	add	a5,a5,s1
    80001fa0:	ff07c503          	lbu	a0,-16(a5)
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	3a8080e7          	jalr	936(ra) # 8000134c <_Z4putcc>
    80001fac:	fe5ff06f          	j	80001f90 <_Z8printIntiii+0xb0>
        x = -xx;
    80001fb0:	4090053b          	negw	a0,s1
        neg = 1;
    80001fb4:	00100593          	li	a1,1
        x = -xx;
    80001fb8:	f7dff06f          	j	80001f34 <_Z8printIntiii+0x54>

    UNLOCK();
    80001fbc:	00000613          	li	a2,0
    80001fc0:	00100593          	li	a1,1
    80001fc4:	00004517          	auipc	a0,0x4
    80001fc8:	f2450513          	addi	a0,a0,-220 # 80005ee8 <lockPrint>
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	274080e7          	jalr	628(ra) # 80001240 <copy_and_swap>
    80001fd4:	fe0514e3          	bnez	a0,80001fbc <_Z8printIntiii+0xdc>
    80001fd8:	03813083          	ld	ra,56(sp)
    80001fdc:	03013403          	ld	s0,48(sp)
    80001fe0:	02813483          	ld	s1,40(sp)
    80001fe4:	02013903          	ld	s2,32(sp)
    80001fe8:	01813983          	ld	s3,24(sp)
    80001fec:	04010113          	addi	sp,sp,64
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80001ff4:	fd010113          	addi	sp,sp,-48
    80001ff8:	02113423          	sd	ra,40(sp)
    80001ffc:	02813023          	sd	s0,32(sp)
    80002000:	00913c23          	sd	s1,24(sp)
    80002004:	01213823          	sd	s2,16(sp)
    80002008:	01313423          	sd	s3,8(sp)
    8000200c:	03010413          	addi	s0,sp,48
    80002010:	00050493          	mv	s1,a0
    80002014:	00058913          	mv	s2,a1
    80002018:	0015879b          	addiw	a5,a1,1
    8000201c:	0007851b          	sext.w	a0,a5
    80002020:	00f4a023          	sw	a5,0(s1)
    80002024:	0004a823          	sw	zero,16(s1)
    80002028:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000202c:	00251513          	slli	a0,a0,0x2
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	fd0080e7          	jalr	-48(ra) # 80001000 <mem_alloc>
    80002038:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000203c:	01000513          	li	a0,16
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	5f8080e7          	jalr	1528(ra) # 80001638 <_Znwm>
    80002048:	00050993          	mv	s3,a0
    8000204c:	00000593          	li	a1,0
    80002050:	fffff097          	auipc	ra,0xfffff
    80002054:	530080e7          	jalr	1328(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    80002058:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000205c:	01000513          	li	a0,16
    80002060:	fffff097          	auipc	ra,0xfffff
    80002064:	5d8080e7          	jalr	1496(ra) # 80001638 <_Znwm>
    80002068:	00050993          	mv	s3,a0
    8000206c:	00090593          	mv	a1,s2
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	510080e7          	jalr	1296(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    80002078:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000207c:	01000513          	li	a0,16
    80002080:	fffff097          	auipc	ra,0xfffff
    80002084:	5b8080e7          	jalr	1464(ra) # 80001638 <_Znwm>
    80002088:	00050913          	mv	s2,a0
    8000208c:	00100593          	li	a1,1
    80002090:	fffff097          	auipc	ra,0xfffff
    80002094:	4f0080e7          	jalr	1264(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    80002098:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000209c:	01000513          	li	a0,16
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	598080e7          	jalr	1432(ra) # 80001638 <_Znwm>
    800020a8:	00050913          	mv	s2,a0
    800020ac:	00100593          	li	a1,1
    800020b0:	fffff097          	auipc	ra,0xfffff
    800020b4:	4d0080e7          	jalr	1232(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    800020b8:	0324b823          	sd	s2,48(s1)
}
    800020bc:	02813083          	ld	ra,40(sp)
    800020c0:	02013403          	ld	s0,32(sp)
    800020c4:	01813483          	ld	s1,24(sp)
    800020c8:	01013903          	ld	s2,16(sp)
    800020cc:	00813983          	ld	s3,8(sp)
    800020d0:	03010113          	addi	sp,sp,48
    800020d4:	00008067          	ret
    800020d8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800020dc:	00098513          	mv	a0,s3
    800020e0:	fffff097          	auipc	ra,0xfffff
    800020e4:	5a8080e7          	jalr	1448(ra) # 80001688 <_ZdlPv>
    800020e8:	00048513          	mv	a0,s1
    800020ec:	00005097          	auipc	ra,0x5
    800020f0:	ecc080e7          	jalr	-308(ra) # 80006fb8 <_Unwind_Resume>
    800020f4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800020f8:	00098513          	mv	a0,s3
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	58c080e7          	jalr	1420(ra) # 80001688 <_ZdlPv>
    80002104:	00048513          	mv	a0,s1
    80002108:	00005097          	auipc	ra,0x5
    8000210c:	eb0080e7          	jalr	-336(ra) # 80006fb8 <_Unwind_Resume>
    80002110:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002114:	00090513          	mv	a0,s2
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	570080e7          	jalr	1392(ra) # 80001688 <_ZdlPv>
    80002120:	00048513          	mv	a0,s1
    80002124:	00005097          	auipc	ra,0x5
    80002128:	e94080e7          	jalr	-364(ra) # 80006fb8 <_Unwind_Resume>
    8000212c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002130:	00090513          	mv	a0,s2
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	554080e7          	jalr	1364(ra) # 80001688 <_ZdlPv>
    8000213c:	00048513          	mv	a0,s1
    80002140:	00005097          	auipc	ra,0x5
    80002144:	e78080e7          	jalr	-392(ra) # 80006fb8 <_Unwind_Resume>

0000000080002148 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002148:	fe010113          	addi	sp,sp,-32
    8000214c:	00113c23          	sd	ra,24(sp)
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00913423          	sd	s1,8(sp)
    80002158:	01213023          	sd	s2,0(sp)
    8000215c:	02010413          	addi	s0,sp,32
    80002160:	00050493          	mv	s1,a0
    80002164:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002168:	01853503          	ld	a0,24(a0)
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	438080e7          	jalr	1080(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002174:	0304b503          	ld	a0,48(s1)
    80002178:	fffff097          	auipc	ra,0xfffff
    8000217c:	42c080e7          	jalr	1068(ra) # 800015a4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002180:	0084b783          	ld	a5,8(s1)
    80002184:	0144a703          	lw	a4,20(s1)
    80002188:	00271713          	slli	a4,a4,0x2
    8000218c:	00e787b3          	add	a5,a5,a4
    80002190:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002194:	0144a783          	lw	a5,20(s1)
    80002198:	0017879b          	addiw	a5,a5,1
    8000219c:	0004a703          	lw	a4,0(s1)
    800021a0:	02e7e7bb          	remw	a5,a5,a4
    800021a4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800021a8:	0304b503          	ld	a0,48(s1)
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	414080e7          	jalr	1044(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800021b4:	0204b503          	ld	a0,32(s1)
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	408080e7          	jalr	1032(ra) # 800015c0 <_ZN9Semaphore6signalEv>

}
    800021c0:	01813083          	ld	ra,24(sp)
    800021c4:	01013403          	ld	s0,16(sp)
    800021c8:	00813483          	ld	s1,8(sp)
    800021cc:	00013903          	ld	s2,0(sp)
    800021d0:	02010113          	addi	sp,sp,32
    800021d4:	00008067          	ret

00000000800021d8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800021d8:	fe010113          	addi	sp,sp,-32
    800021dc:	00113c23          	sd	ra,24(sp)
    800021e0:	00813823          	sd	s0,16(sp)
    800021e4:	00913423          	sd	s1,8(sp)
    800021e8:	01213023          	sd	s2,0(sp)
    800021ec:	02010413          	addi	s0,sp,32
    800021f0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800021f4:	02053503          	ld	a0,32(a0)
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	3ac080e7          	jalr	940(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002200:	0284b503          	ld	a0,40(s1)
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	3a0080e7          	jalr	928(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000220c:	0084b703          	ld	a4,8(s1)
    80002210:	0104a783          	lw	a5,16(s1)
    80002214:	00279693          	slli	a3,a5,0x2
    80002218:	00d70733          	add	a4,a4,a3
    8000221c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002220:	0017879b          	addiw	a5,a5,1
    80002224:	0004a703          	lw	a4,0(s1)
    80002228:	02e7e7bb          	remw	a5,a5,a4
    8000222c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002230:	0284b503          	ld	a0,40(s1)
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	38c080e7          	jalr	908(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000223c:	0184b503          	ld	a0,24(s1)
    80002240:	fffff097          	auipc	ra,0xfffff
    80002244:	380080e7          	jalr	896(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002248:	00090513          	mv	a0,s2
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	00013903          	ld	s2,0(sp)
    8000225c:	02010113          	addi	sp,sp,32
    80002260:	00008067          	ret

0000000080002264 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002264:	fe010113          	addi	sp,sp,-32
    80002268:	00113c23          	sd	ra,24(sp)
    8000226c:	00813823          	sd	s0,16(sp)
    80002270:	00913423          	sd	s1,8(sp)
    80002274:	01213023          	sd	s2,0(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002280:	02853503          	ld	a0,40(a0)
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	320080e7          	jalr	800(ra) # 800015a4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000228c:	0304b503          	ld	a0,48(s1)
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	314080e7          	jalr	788(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002298:	0144a783          	lw	a5,20(s1)
    8000229c:	0104a903          	lw	s2,16(s1)
    800022a0:	0327ce63          	blt	a5,s2,800022dc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800022a4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800022a8:	0304b503          	ld	a0,48(s1)
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	314080e7          	jalr	788(ra) # 800015c0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800022b4:	0284b503          	ld	a0,40(s1)
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	308080e7          	jalr	776(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800022c0:	00090513          	mv	a0,s2
    800022c4:	01813083          	ld	ra,24(sp)
    800022c8:	01013403          	ld	s0,16(sp)
    800022cc:	00813483          	ld	s1,8(sp)
    800022d0:	00013903          	ld	s2,0(sp)
    800022d4:	02010113          	addi	sp,sp,32
    800022d8:	00008067          	ret
        ret = cap - head + tail;
    800022dc:	0004a703          	lw	a4,0(s1)
    800022e0:	4127093b          	subw	s2,a4,s2
    800022e4:	00f9093b          	addw	s2,s2,a5
    800022e8:	fc1ff06f          	j	800022a8 <_ZN9BufferCPP6getCntEv+0x44>

00000000800022ec <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002304:	00a00513          	li	a0,10
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	318080e7          	jalr	792(ra) # 80001620 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002310:	00003517          	auipc	a0,0x3
    80002314:	d7850513          	addi	a0,a0,-648 # 80005088 <_ZZ12printIntegermE6digits+0x10>
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	a30080e7          	jalr	-1488(ra) # 80001d48 <_Z11printStringPKc>
    while (getCnt()) {
    80002320:	00048513          	mv	a0,s1
    80002324:	00000097          	auipc	ra,0x0
    80002328:	f40080e7          	jalr	-192(ra) # 80002264 <_ZN9BufferCPP6getCntEv>
    8000232c:	02050c63          	beqz	a0,80002364 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002330:	0084b783          	ld	a5,8(s1)
    80002334:	0104a703          	lw	a4,16(s1)
    80002338:	00271713          	slli	a4,a4,0x2
    8000233c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002340:	0007c503          	lbu	a0,0(a5)
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	2dc080e7          	jalr	732(ra) # 80001620 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000234c:	0104a783          	lw	a5,16(s1)
    80002350:	0017879b          	addiw	a5,a5,1
    80002354:	0004a703          	lw	a4,0(s1)
    80002358:	02e7e7bb          	remw	a5,a5,a4
    8000235c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002360:	fc1ff06f          	j	80002320 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002364:	02100513          	li	a0,33
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	2b8080e7          	jalr	696(ra) # 80001620 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002370:	00a00513          	li	a0,10
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	2ac080e7          	jalr	684(ra) # 80001620 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000237c:	0084b503          	ld	a0,8(s1)
    80002380:	fffff097          	auipc	ra,0xfffff
    80002384:	c90080e7          	jalr	-880(ra) # 80001010 <mem_free>
    delete itemAvailable;
    80002388:	0204b503          	ld	a0,32(s1)
    8000238c:	00050863          	beqz	a0,8000239c <_ZN9BufferCPPD1Ev+0xb0>
    80002390:	00053783          	ld	a5,0(a0)
    80002394:	0087b783          	ld	a5,8(a5)
    80002398:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000239c:	0184b503          	ld	a0,24(s1)
    800023a0:	00050863          	beqz	a0,800023b0 <_ZN9BufferCPPD1Ev+0xc4>
    800023a4:	00053783          	ld	a5,0(a0)
    800023a8:	0087b783          	ld	a5,8(a5)
    800023ac:	000780e7          	jalr	a5
    delete mutexTail;
    800023b0:	0304b503          	ld	a0,48(s1)
    800023b4:	00050863          	beqz	a0,800023c4 <_ZN9BufferCPPD1Ev+0xd8>
    800023b8:	00053783          	ld	a5,0(a0)
    800023bc:	0087b783          	ld	a5,8(a5)
    800023c0:	000780e7          	jalr	a5
    delete mutexHead;
    800023c4:	0284b503          	ld	a0,40(s1)
    800023c8:	00050863          	beqz	a0,800023d8 <_ZN9BufferCPPD1Ev+0xec>
    800023cc:	00053783          	ld	a5,0(a0)
    800023d0:	0087b783          	ld	a5,8(a5)
    800023d4:	000780e7          	jalr	a5
}
    800023d8:	01813083          	ld	ra,24(sp)
    800023dc:	01013403          	ld	s0,16(sp)
    800023e0:	00813483          	ld	s1,8(sp)
    800023e4:	02010113          	addi	sp,sp,32
    800023e8:	00008067          	ret

00000000800023ec <_Z8userMainv>:
//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

#include "../h/print.hpp"

void userMain() {
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	00813023          	sd	s0,0(sp)
    800023f8:	01010413          	addi	s0,sp,16
    __print_string("I am here!");
    800023fc:	00003517          	auipc	a0,0x3
    80002400:	ca450513          	addi	a0,a0,-860 # 800050a0 <_ZZ12printIntegermE6digits+0x28>
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	6c4080e7          	jalr	1732(ra) # 80001ac8 <_Z14__print_stringPKc>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    8000240c:	00813083          	ld	ra,8(sp)
    80002410:	00013403          	ld	s0,0(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000241c:	fe010113          	addi	sp,sp,-32
    80002420:	00113c23          	sd	ra,24(sp)
    80002424:	00813823          	sd	s0,16(sp)
    80002428:	00913423          	sd	s1,8(sp)
    8000242c:	01213023          	sd	s2,0(sp)
    80002430:	02010413          	addi	s0,sp,32
    80002434:	00050493          	mv	s1,a0
    80002438:	00058913          	mv	s2,a1
    8000243c:	0015879b          	addiw	a5,a1,1
    80002440:	0007851b          	sext.w	a0,a5
    80002444:	00f4a023          	sw	a5,0(s1)
    80002448:	0004a823          	sw	zero,16(s1)
    8000244c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002450:	00251513          	slli	a0,a0,0x2
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	bac080e7          	jalr	-1108(ra) # 80001000 <mem_alloc>
    8000245c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002460:	00000593          	li	a1,0
    80002464:	02048513          	addi	a0,s1,32
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	e30080e7          	jalr	-464(ra) # 80001298 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002470:	00090593          	mv	a1,s2
    80002474:	01848513          	addi	a0,s1,24
    80002478:	fffff097          	auipc	ra,0xfffff
    8000247c:	e20080e7          	jalr	-480(ra) # 80001298 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002480:	00100593          	li	a1,1
    80002484:	02848513          	addi	a0,s1,40
    80002488:	fffff097          	auipc	ra,0xfffff
    8000248c:	e10080e7          	jalr	-496(ra) # 80001298 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002490:	00100593          	li	a1,1
    80002494:	03048513          	addi	a0,s1,48
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	e00080e7          	jalr	-512(ra) # 80001298 <_Z8sem_openPP4_semj>
}
    800024a0:	01813083          	ld	ra,24(sp)
    800024a4:	01013403          	ld	s0,16(sp)
    800024a8:	00813483          	ld	s1,8(sp)
    800024ac:	00013903          	ld	s2,0(sp)
    800024b0:	02010113          	addi	sp,sp,32
    800024b4:	00008067          	ret

00000000800024b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800024b8:	fe010113          	addi	sp,sp,-32
    800024bc:	00113c23          	sd	ra,24(sp)
    800024c0:	00813823          	sd	s0,16(sp)
    800024c4:	00913423          	sd	s1,8(sp)
    800024c8:	01213023          	sd	s2,0(sp)
    800024cc:	02010413          	addi	s0,sp,32
    800024d0:	00050493          	mv	s1,a0
    800024d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800024d8:	01853503          	ld	a0,24(a0)
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	df4080e7          	jalr	-524(ra) # 800012d0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800024e4:	0304b503          	ld	a0,48(s1)
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	de8080e7          	jalr	-536(ra) # 800012d0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800024f0:	0084b783          	ld	a5,8(s1)
    800024f4:	0144a703          	lw	a4,20(s1)
    800024f8:	00271713          	slli	a4,a4,0x2
    800024fc:	00e787b3          	add	a5,a5,a4
    80002500:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002504:	0144a783          	lw	a5,20(s1)
    80002508:	0017879b          	addiw	a5,a5,1
    8000250c:	0004a703          	lw	a4,0(s1)
    80002510:	02e7e7bb          	remw	a5,a5,a4
    80002514:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002518:	0304b503          	ld	a0,48(s1)
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	dd0080e7          	jalr	-560(ra) # 800012ec <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002524:	0204b503          	ld	a0,32(s1)
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	dc4080e7          	jalr	-572(ra) # 800012ec <_Z10sem_signalP4_sem>

}
    80002530:	01813083          	ld	ra,24(sp)
    80002534:	01013403          	ld	s0,16(sp)
    80002538:	00813483          	ld	s1,8(sp)
    8000253c:	00013903          	ld	s2,0(sp)
    80002540:	02010113          	addi	sp,sp,32
    80002544:	00008067          	ret

0000000080002548 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002548:	fe010113          	addi	sp,sp,-32
    8000254c:	00113c23          	sd	ra,24(sp)
    80002550:	00813823          	sd	s0,16(sp)
    80002554:	00913423          	sd	s1,8(sp)
    80002558:	01213023          	sd	s2,0(sp)
    8000255c:	02010413          	addi	s0,sp,32
    80002560:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002564:	02053503          	ld	a0,32(a0)
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	d68080e7          	jalr	-664(ra) # 800012d0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002570:	0284b503          	ld	a0,40(s1)
    80002574:	fffff097          	auipc	ra,0xfffff
    80002578:	d5c080e7          	jalr	-676(ra) # 800012d0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000257c:	0084b703          	ld	a4,8(s1)
    80002580:	0104a783          	lw	a5,16(s1)
    80002584:	00279693          	slli	a3,a5,0x2
    80002588:	00d70733          	add	a4,a4,a3
    8000258c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002590:	0017879b          	addiw	a5,a5,1
    80002594:	0004a703          	lw	a4,0(s1)
    80002598:	02e7e7bb          	remw	a5,a5,a4
    8000259c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800025a0:	0284b503          	ld	a0,40(s1)
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	d48080e7          	jalr	-696(ra) # 800012ec <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800025ac:	0184b503          	ld	a0,24(s1)
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	d3c080e7          	jalr	-708(ra) # 800012ec <_Z10sem_signalP4_sem>

    return ret;
}
    800025b8:	00090513          	mv	a0,s2
    800025bc:	01813083          	ld	ra,24(sp)
    800025c0:	01013403          	ld	s0,16(sp)
    800025c4:	00813483          	ld	s1,8(sp)
    800025c8:	00013903          	ld	s2,0(sp)
    800025cc:	02010113          	addi	sp,sp,32
    800025d0:	00008067          	ret

00000000800025d4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800025d4:	fe010113          	addi	sp,sp,-32
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	00813823          	sd	s0,16(sp)
    800025e0:	00913423          	sd	s1,8(sp)
    800025e4:	01213023          	sd	s2,0(sp)
    800025e8:	02010413          	addi	s0,sp,32
    800025ec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800025f0:	02853503          	ld	a0,40(a0)
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	cdc080e7          	jalr	-804(ra) # 800012d0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800025fc:	0304b503          	ld	a0,48(s1)
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	cd0080e7          	jalr	-816(ra) # 800012d0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002608:	0144a783          	lw	a5,20(s1)
    8000260c:	0104a903          	lw	s2,16(s1)
    80002610:	0327ce63          	blt	a5,s2,8000264c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002614:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002618:	0304b503          	ld	a0,48(s1)
    8000261c:	fffff097          	auipc	ra,0xfffff
    80002620:	cd0080e7          	jalr	-816(ra) # 800012ec <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80002624:	0284b503          	ld	a0,40(s1)
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	cc4080e7          	jalr	-828(ra) # 800012ec <_Z10sem_signalP4_sem>

    return ret;
}
    80002630:	00090513          	mv	a0,s2
    80002634:	01813083          	ld	ra,24(sp)
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	00813483          	ld	s1,8(sp)
    80002640:	00013903          	ld	s2,0(sp)
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret
        ret = cap - head + tail;
    8000264c:	0004a703          	lw	a4,0(s1)
    80002650:	4127093b          	subw	s2,a4,s2
    80002654:	00f9093b          	addw	s2,s2,a5
    80002658:	fc1ff06f          	j	80002618 <_ZN6Buffer6getCntEv+0x44>

000000008000265c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000265c:	fe010113          	addi	sp,sp,-32
    80002660:	00113c23          	sd	ra,24(sp)
    80002664:	00813823          	sd	s0,16(sp)
    80002668:	00913423          	sd	s1,8(sp)
    8000266c:	02010413          	addi	s0,sp,32
    80002670:	00050493          	mv	s1,a0
    putc('\n');
    80002674:	00a00513          	li	a0,10
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	cd4080e7          	jalr	-812(ra) # 8000134c <_Z4putcc>
    printString("Buffer deleted!\n");
    80002680:	00003517          	auipc	a0,0x3
    80002684:	a0850513          	addi	a0,a0,-1528 # 80005088 <_ZZ12printIntegermE6digits+0x10>
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	6c0080e7          	jalr	1728(ra) # 80001d48 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002690:	00048513          	mv	a0,s1
    80002694:	00000097          	auipc	ra,0x0
    80002698:	f40080e7          	jalr	-192(ra) # 800025d4 <_ZN6Buffer6getCntEv>
    8000269c:	02a05c63          	blez	a0,800026d4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800026a0:	0084b783          	ld	a5,8(s1)
    800026a4:	0104a703          	lw	a4,16(s1)
    800026a8:	00271713          	slli	a4,a4,0x2
    800026ac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800026b0:	0007c503          	lbu	a0,0(a5)
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	c98080e7          	jalr	-872(ra) # 8000134c <_Z4putcc>
        head = (head + 1) % cap;
    800026bc:	0104a783          	lw	a5,16(s1)
    800026c0:	0017879b          	addiw	a5,a5,1
    800026c4:	0004a703          	lw	a4,0(s1)
    800026c8:	02e7e7bb          	remw	a5,a5,a4
    800026cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800026d0:	fc1ff06f          	j	80002690 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800026d4:	02100513          	li	a0,33
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	c74080e7          	jalr	-908(ra) # 8000134c <_Z4putcc>
    putc('\n');
    800026e0:	00a00513          	li	a0,10
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	c68080e7          	jalr	-920(ra) # 8000134c <_Z4putcc>
    mem_free(buffer);
    800026ec:	0084b503          	ld	a0,8(s1)
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	920080e7          	jalr	-1760(ra) # 80001010 <mem_free>
    sem_close(itemAvailable);
    800026f8:	0204b503          	ld	a0,32(s1)
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	bb8080e7          	jalr	-1096(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002704:	0184b503          	ld	a0,24(s1)
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	bac080e7          	jalr	-1108(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80002710:	0304b503          	ld	a0,48(s1)
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	ba0080e7          	jalr	-1120(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000271c:	0284b503          	ld	a0,40(s1)
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	b94080e7          	jalr	-1132(ra) # 800012b4 <_Z9sem_closeP4_sem>
}
    80002728:	01813083          	ld	ra,24(sp)
    8000272c:	01013403          	ld	s0,16(sp)
    80002730:	00813483          	ld	s1,8(sp)
    80002734:	02010113          	addi	sp,sp,32
    80002738:	00008067          	ret

000000008000273c <start>:
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    80002748:	300027f3          	csrr	a5,mstatus
    8000274c:	ffffe737          	lui	a4,0xffffe
    80002750:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff76af>
    80002754:	00e7f7b3          	and	a5,a5,a4
    80002758:	00001737          	lui	a4,0x1
    8000275c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002760:	00e7e7b3          	or	a5,a5,a4
    80002764:	30079073          	csrw	mstatus,a5
    80002768:	00000797          	auipc	a5,0x0
    8000276c:	16078793          	addi	a5,a5,352 # 800028c8 <system_main>
    80002770:	34179073          	csrw	mepc,a5
    80002774:	00000793          	li	a5,0
    80002778:	18079073          	csrw	satp,a5
    8000277c:	000107b7          	lui	a5,0x10
    80002780:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002784:	30279073          	csrw	medeleg,a5
    80002788:	30379073          	csrw	mideleg,a5
    8000278c:	104027f3          	csrr	a5,sie
    80002790:	2227e793          	ori	a5,a5,546
    80002794:	10479073          	csrw	sie,a5
    80002798:	fff00793          	li	a5,-1
    8000279c:	00a7d793          	srli	a5,a5,0xa
    800027a0:	3b079073          	csrw	pmpaddr0,a5
    800027a4:	00f00793          	li	a5,15
    800027a8:	3a079073          	csrw	pmpcfg0,a5
    800027ac:	f14027f3          	csrr	a5,mhartid
    800027b0:	0200c737          	lui	a4,0x200c
    800027b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800027b8:	0007869b          	sext.w	a3,a5
    800027bc:	00269713          	slli	a4,a3,0x2
    800027c0:	000f4637          	lui	a2,0xf4
    800027c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800027c8:	00d70733          	add	a4,a4,a3
    800027cc:	0037979b          	slliw	a5,a5,0x3
    800027d0:	020046b7          	lui	a3,0x2004
    800027d4:	00d787b3          	add	a5,a5,a3
    800027d8:	00c585b3          	add	a1,a1,a2
    800027dc:	00371693          	slli	a3,a4,0x3
    800027e0:	00003717          	auipc	a4,0x3
    800027e4:	71070713          	addi	a4,a4,1808 # 80005ef0 <timer_scratch>
    800027e8:	00b7b023          	sd	a1,0(a5)
    800027ec:	00d70733          	add	a4,a4,a3
    800027f0:	00f73c23          	sd	a5,24(a4)
    800027f4:	02c73023          	sd	a2,32(a4)
    800027f8:	34071073          	csrw	mscratch,a4
    800027fc:	00000797          	auipc	a5,0x0
    80002800:	6e478793          	addi	a5,a5,1764 # 80002ee0 <timervec>
    80002804:	30579073          	csrw	mtvec,a5
    80002808:	300027f3          	csrr	a5,mstatus
    8000280c:	0087e793          	ori	a5,a5,8
    80002810:	30079073          	csrw	mstatus,a5
    80002814:	304027f3          	csrr	a5,mie
    80002818:	0807e793          	ori	a5,a5,128
    8000281c:	30479073          	csrw	mie,a5
    80002820:	f14027f3          	csrr	a5,mhartid
    80002824:	0007879b          	sext.w	a5,a5
    80002828:	00078213          	mv	tp,a5
    8000282c:	30200073          	mret
    80002830:	00813403          	ld	s0,8(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <timerinit>:
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	f14027f3          	csrr	a5,mhartid
    8000284c:	0200c737          	lui	a4,0x200c
    80002850:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002854:	0007869b          	sext.w	a3,a5
    80002858:	00269713          	slli	a4,a3,0x2
    8000285c:	000f4637          	lui	a2,0xf4
    80002860:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002864:	00d70733          	add	a4,a4,a3
    80002868:	0037979b          	slliw	a5,a5,0x3
    8000286c:	020046b7          	lui	a3,0x2004
    80002870:	00d787b3          	add	a5,a5,a3
    80002874:	00c585b3          	add	a1,a1,a2
    80002878:	00371693          	slli	a3,a4,0x3
    8000287c:	00003717          	auipc	a4,0x3
    80002880:	67470713          	addi	a4,a4,1652 # 80005ef0 <timer_scratch>
    80002884:	00b7b023          	sd	a1,0(a5)
    80002888:	00d70733          	add	a4,a4,a3
    8000288c:	00f73c23          	sd	a5,24(a4)
    80002890:	02c73023          	sd	a2,32(a4)
    80002894:	34071073          	csrw	mscratch,a4
    80002898:	00000797          	auipc	a5,0x0
    8000289c:	64878793          	addi	a5,a5,1608 # 80002ee0 <timervec>
    800028a0:	30579073          	csrw	mtvec,a5
    800028a4:	300027f3          	csrr	a5,mstatus
    800028a8:	0087e793          	ori	a5,a5,8
    800028ac:	30079073          	csrw	mstatus,a5
    800028b0:	304027f3          	csrr	a5,mie
    800028b4:	0807e793          	ori	a5,a5,128
    800028b8:	30479073          	csrw	mie,a5
    800028bc:	00813403          	ld	s0,8(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <system_main>:
    800028c8:	fe010113          	addi	sp,sp,-32
    800028cc:	00813823          	sd	s0,16(sp)
    800028d0:	00913423          	sd	s1,8(sp)
    800028d4:	00113c23          	sd	ra,24(sp)
    800028d8:	02010413          	addi	s0,sp,32
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	0c4080e7          	jalr	196(ra) # 800029a0 <cpuid>
    800028e4:	00003497          	auipc	s1,0x3
    800028e8:	5cc48493          	addi	s1,s1,1484 # 80005eb0 <started>
    800028ec:	02050263          	beqz	a0,80002910 <system_main+0x48>
    800028f0:	0004a783          	lw	a5,0(s1)
    800028f4:	0007879b          	sext.w	a5,a5
    800028f8:	fe078ce3          	beqz	a5,800028f0 <system_main+0x28>
    800028fc:	0ff0000f          	fence
    80002900:	00002517          	auipc	a0,0x2
    80002904:	7e050513          	addi	a0,a0,2016 # 800050e0 <_ZZ12printIntegermE6digits+0x68>
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	a74080e7          	jalr	-1420(ra) # 8000337c <panic>
    80002910:	00001097          	auipc	ra,0x1
    80002914:	9c8080e7          	jalr	-1592(ra) # 800032d8 <consoleinit>
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	154080e7          	jalr	340(ra) # 80003a6c <printfinit>
    80002920:	00003517          	auipc	a0,0x3
    80002924:	8a050513          	addi	a0,a0,-1888 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	ab0080e7          	jalr	-1360(ra) # 800033d8 <__printf>
    80002930:	00002517          	auipc	a0,0x2
    80002934:	78050513          	addi	a0,a0,1920 # 800050b0 <_ZZ12printIntegermE6digits+0x38>
    80002938:	00001097          	auipc	ra,0x1
    8000293c:	aa0080e7          	jalr	-1376(ra) # 800033d8 <__printf>
    80002940:	00003517          	auipc	a0,0x3
    80002944:	88050513          	addi	a0,a0,-1920 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    80002948:	00001097          	auipc	ra,0x1
    8000294c:	a90080e7          	jalr	-1392(ra) # 800033d8 <__printf>
    80002950:	00001097          	auipc	ra,0x1
    80002954:	4a8080e7          	jalr	1192(ra) # 80003df8 <kinit>
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	148080e7          	jalr	328(ra) # 80002aa0 <trapinit>
    80002960:	00000097          	auipc	ra,0x0
    80002964:	16c080e7          	jalr	364(ra) # 80002acc <trapinithart>
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	5b8080e7          	jalr	1464(ra) # 80002f20 <plicinit>
    80002970:	00000097          	auipc	ra,0x0
    80002974:	5d8080e7          	jalr	1496(ra) # 80002f48 <plicinithart>
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	078080e7          	jalr	120(ra) # 800029f0 <userinit>
    80002980:	0ff0000f          	fence
    80002984:	00100793          	li	a5,1
    80002988:	00002517          	auipc	a0,0x2
    8000298c:	74050513          	addi	a0,a0,1856 # 800050c8 <_ZZ12printIntegermE6digits+0x50>
    80002990:	00f4a023          	sw	a5,0(s1)
    80002994:	00001097          	auipc	ra,0x1
    80002998:	a44080e7          	jalr	-1468(ra) # 800033d8 <__printf>
    8000299c:	0000006f          	j	8000299c <system_main+0xd4>

00000000800029a0 <cpuid>:
    800029a0:	ff010113          	addi	sp,sp,-16
    800029a4:	00813423          	sd	s0,8(sp)
    800029a8:	01010413          	addi	s0,sp,16
    800029ac:	00020513          	mv	a0,tp
    800029b0:	00813403          	ld	s0,8(sp)
    800029b4:	0005051b          	sext.w	a0,a0
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <mycpu>:
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00813423          	sd	s0,8(sp)
    800029c8:	01010413          	addi	s0,sp,16
    800029cc:	00020793          	mv	a5,tp
    800029d0:	00813403          	ld	s0,8(sp)
    800029d4:	0007879b          	sext.w	a5,a5
    800029d8:	00779793          	slli	a5,a5,0x7
    800029dc:	00004517          	auipc	a0,0x4
    800029e0:	54450513          	addi	a0,a0,1348 # 80006f20 <cpus>
    800029e4:	00f50533          	add	a0,a0,a5
    800029e8:	01010113          	addi	sp,sp,16
    800029ec:	00008067          	ret

00000000800029f0 <userinit>:
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00813423          	sd	s0,8(sp)
    800029f8:	01010413          	addi	s0,sp,16
    800029fc:	00813403          	ld	s0,8(sp)
    80002a00:	01010113          	addi	sp,sp,16
    80002a04:	fffff317          	auipc	t1,0xfffff
    80002a08:	bd830067          	jr	-1064(t1) # 800015dc <main>

0000000080002a0c <either_copyout>:
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00813023          	sd	s0,0(sp)
    80002a14:	00113423          	sd	ra,8(sp)
    80002a18:	01010413          	addi	s0,sp,16
    80002a1c:	02051663          	bnez	a0,80002a48 <either_copyout+0x3c>
    80002a20:	00058513          	mv	a0,a1
    80002a24:	00060593          	mv	a1,a2
    80002a28:	0006861b          	sext.w	a2,a3
    80002a2c:	00002097          	auipc	ra,0x2
    80002a30:	c58080e7          	jalr	-936(ra) # 80004684 <__memmove>
    80002a34:	00813083          	ld	ra,8(sp)
    80002a38:	00013403          	ld	s0,0(sp)
    80002a3c:	00000513          	li	a0,0
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret
    80002a48:	00002517          	auipc	a0,0x2
    80002a4c:	6c050513          	addi	a0,a0,1728 # 80005108 <_ZZ12printIntegermE6digits+0x90>
    80002a50:	00001097          	auipc	ra,0x1
    80002a54:	92c080e7          	jalr	-1748(ra) # 8000337c <panic>

0000000080002a58 <either_copyin>:
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00813023          	sd	s0,0(sp)
    80002a60:	00113423          	sd	ra,8(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	02059463          	bnez	a1,80002a90 <either_copyin+0x38>
    80002a6c:	00060593          	mv	a1,a2
    80002a70:	0006861b          	sext.w	a2,a3
    80002a74:	00002097          	auipc	ra,0x2
    80002a78:	c10080e7          	jalr	-1008(ra) # 80004684 <__memmove>
    80002a7c:	00813083          	ld	ra,8(sp)
    80002a80:	00013403          	ld	s0,0(sp)
    80002a84:	00000513          	li	a0,0
    80002a88:	01010113          	addi	sp,sp,16
    80002a8c:	00008067          	ret
    80002a90:	00002517          	auipc	a0,0x2
    80002a94:	6a050513          	addi	a0,a0,1696 # 80005130 <_ZZ12printIntegermE6digits+0xb8>
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	8e4080e7          	jalr	-1820(ra) # 8000337c <panic>

0000000080002aa0 <trapinit>:
    80002aa0:	ff010113          	addi	sp,sp,-16
    80002aa4:	00813423          	sd	s0,8(sp)
    80002aa8:	01010413          	addi	s0,sp,16
    80002aac:	00813403          	ld	s0,8(sp)
    80002ab0:	00002597          	auipc	a1,0x2
    80002ab4:	6a858593          	addi	a1,a1,1704 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    80002ab8:	00004517          	auipc	a0,0x4
    80002abc:	4e850513          	addi	a0,a0,1256 # 80006fa0 <tickslock>
    80002ac0:	01010113          	addi	sp,sp,16
    80002ac4:	00001317          	auipc	t1,0x1
    80002ac8:	5c430067          	jr	1476(t1) # 80004088 <initlock>

0000000080002acc <trapinithart>:
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00813423          	sd	s0,8(sp)
    80002ad4:	01010413          	addi	s0,sp,16
    80002ad8:	00000797          	auipc	a5,0x0
    80002adc:	2f878793          	addi	a5,a5,760 # 80002dd0 <kernelvec>
    80002ae0:	10579073          	csrw	stvec,a5
    80002ae4:	00813403          	ld	s0,8(sp)
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret

0000000080002af0 <usertrap>:
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00813423          	sd	s0,8(sp)
    80002af8:	01010413          	addi	s0,sp,16
    80002afc:	00813403          	ld	s0,8(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <usertrapret>:
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00813423          	sd	s0,8(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00813403          	ld	s0,8(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <kerneltrap>:
    80002b20:	fe010113          	addi	sp,sp,-32
    80002b24:	00813823          	sd	s0,16(sp)
    80002b28:	00113c23          	sd	ra,24(sp)
    80002b2c:	00913423          	sd	s1,8(sp)
    80002b30:	02010413          	addi	s0,sp,32
    80002b34:	142025f3          	csrr	a1,scause
    80002b38:	100027f3          	csrr	a5,sstatus
    80002b3c:	0027f793          	andi	a5,a5,2
    80002b40:	10079c63          	bnez	a5,80002c58 <kerneltrap+0x138>
    80002b44:	142027f3          	csrr	a5,scause
    80002b48:	0207ce63          	bltz	a5,80002b84 <kerneltrap+0x64>
    80002b4c:	00002517          	auipc	a0,0x2
    80002b50:	65450513          	addi	a0,a0,1620 # 800051a0 <_ZZ12printIntegermE6digits+0x128>
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	884080e7          	jalr	-1916(ra) # 800033d8 <__printf>
    80002b5c:	141025f3          	csrr	a1,sepc
    80002b60:	14302673          	csrr	a2,stval
    80002b64:	00002517          	auipc	a0,0x2
    80002b68:	64c50513          	addi	a0,a0,1612 # 800051b0 <_ZZ12printIntegermE6digits+0x138>
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	86c080e7          	jalr	-1940(ra) # 800033d8 <__printf>
    80002b74:	00002517          	auipc	a0,0x2
    80002b78:	65450513          	addi	a0,a0,1620 # 800051c8 <_ZZ12printIntegermE6digits+0x150>
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	800080e7          	jalr	-2048(ra) # 8000337c <panic>
    80002b84:	0ff7f713          	andi	a4,a5,255
    80002b88:	00900693          	li	a3,9
    80002b8c:	04d70063          	beq	a4,a3,80002bcc <kerneltrap+0xac>
    80002b90:	fff00713          	li	a4,-1
    80002b94:	03f71713          	slli	a4,a4,0x3f
    80002b98:	00170713          	addi	a4,a4,1
    80002b9c:	fae798e3          	bne	a5,a4,80002b4c <kerneltrap+0x2c>
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	e00080e7          	jalr	-512(ra) # 800029a0 <cpuid>
    80002ba8:	06050663          	beqz	a0,80002c14 <kerneltrap+0xf4>
    80002bac:	144027f3          	csrr	a5,sip
    80002bb0:	ffd7f793          	andi	a5,a5,-3
    80002bb4:	14479073          	csrw	sip,a5
    80002bb8:	01813083          	ld	ra,24(sp)
    80002bbc:	01013403          	ld	s0,16(sp)
    80002bc0:	00813483          	ld	s1,8(sp)
    80002bc4:	02010113          	addi	sp,sp,32
    80002bc8:	00008067          	ret
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	3c8080e7          	jalr	968(ra) # 80002f94 <plic_claim>
    80002bd4:	00a00793          	li	a5,10
    80002bd8:	00050493          	mv	s1,a0
    80002bdc:	06f50863          	beq	a0,a5,80002c4c <kerneltrap+0x12c>
    80002be0:	fc050ce3          	beqz	a0,80002bb8 <kerneltrap+0x98>
    80002be4:	00050593          	mv	a1,a0
    80002be8:	00002517          	auipc	a0,0x2
    80002bec:	59850513          	addi	a0,a0,1432 # 80005180 <_ZZ12printIntegermE6digits+0x108>
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	7e8080e7          	jalr	2024(ra) # 800033d8 <__printf>
    80002bf8:	01013403          	ld	s0,16(sp)
    80002bfc:	01813083          	ld	ra,24(sp)
    80002c00:	00048513          	mv	a0,s1
    80002c04:	00813483          	ld	s1,8(sp)
    80002c08:	02010113          	addi	sp,sp,32
    80002c0c:	00000317          	auipc	t1,0x0
    80002c10:	3c030067          	jr	960(t1) # 80002fcc <plic_complete>
    80002c14:	00004517          	auipc	a0,0x4
    80002c18:	38c50513          	addi	a0,a0,908 # 80006fa0 <tickslock>
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	490080e7          	jalr	1168(ra) # 800040ac <acquire>
    80002c24:	00003717          	auipc	a4,0x3
    80002c28:	29070713          	addi	a4,a4,656 # 80005eb4 <ticks>
    80002c2c:	00072783          	lw	a5,0(a4)
    80002c30:	00004517          	auipc	a0,0x4
    80002c34:	37050513          	addi	a0,a0,880 # 80006fa0 <tickslock>
    80002c38:	0017879b          	addiw	a5,a5,1
    80002c3c:	00f72023          	sw	a5,0(a4)
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	538080e7          	jalr	1336(ra) # 80004178 <release>
    80002c48:	f65ff06f          	j	80002bac <kerneltrap+0x8c>
    80002c4c:	00001097          	auipc	ra,0x1
    80002c50:	094080e7          	jalr	148(ra) # 80003ce0 <uartintr>
    80002c54:	fa5ff06f          	j	80002bf8 <kerneltrap+0xd8>
    80002c58:	00002517          	auipc	a0,0x2
    80002c5c:	50850513          	addi	a0,a0,1288 # 80005160 <_ZZ12printIntegermE6digits+0xe8>
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	71c080e7          	jalr	1820(ra) # 8000337c <panic>

0000000080002c68 <clockintr>:
    80002c68:	fe010113          	addi	sp,sp,-32
    80002c6c:	00813823          	sd	s0,16(sp)
    80002c70:	00913423          	sd	s1,8(sp)
    80002c74:	00113c23          	sd	ra,24(sp)
    80002c78:	02010413          	addi	s0,sp,32
    80002c7c:	00004497          	auipc	s1,0x4
    80002c80:	32448493          	addi	s1,s1,804 # 80006fa0 <tickslock>
    80002c84:	00048513          	mv	a0,s1
    80002c88:	00001097          	auipc	ra,0x1
    80002c8c:	424080e7          	jalr	1060(ra) # 800040ac <acquire>
    80002c90:	00003717          	auipc	a4,0x3
    80002c94:	22470713          	addi	a4,a4,548 # 80005eb4 <ticks>
    80002c98:	00072783          	lw	a5,0(a4)
    80002c9c:	01013403          	ld	s0,16(sp)
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	00048513          	mv	a0,s1
    80002ca8:	0017879b          	addiw	a5,a5,1
    80002cac:	00813483          	ld	s1,8(sp)
    80002cb0:	00f72023          	sw	a5,0(a4)
    80002cb4:	02010113          	addi	sp,sp,32
    80002cb8:	00001317          	auipc	t1,0x1
    80002cbc:	4c030067          	jr	1216(t1) # 80004178 <release>

0000000080002cc0 <devintr>:
    80002cc0:	142027f3          	csrr	a5,scause
    80002cc4:	00000513          	li	a0,0
    80002cc8:	0007c463          	bltz	a5,80002cd0 <devintr+0x10>
    80002ccc:	00008067          	ret
    80002cd0:	fe010113          	addi	sp,sp,-32
    80002cd4:	00813823          	sd	s0,16(sp)
    80002cd8:	00113c23          	sd	ra,24(sp)
    80002cdc:	00913423          	sd	s1,8(sp)
    80002ce0:	02010413          	addi	s0,sp,32
    80002ce4:	0ff7f713          	andi	a4,a5,255
    80002ce8:	00900693          	li	a3,9
    80002cec:	04d70c63          	beq	a4,a3,80002d44 <devintr+0x84>
    80002cf0:	fff00713          	li	a4,-1
    80002cf4:	03f71713          	slli	a4,a4,0x3f
    80002cf8:	00170713          	addi	a4,a4,1
    80002cfc:	00e78c63          	beq	a5,a4,80002d14 <devintr+0x54>
    80002d00:	01813083          	ld	ra,24(sp)
    80002d04:	01013403          	ld	s0,16(sp)
    80002d08:	00813483          	ld	s1,8(sp)
    80002d0c:	02010113          	addi	sp,sp,32
    80002d10:	00008067          	ret
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	c8c080e7          	jalr	-884(ra) # 800029a0 <cpuid>
    80002d1c:	06050663          	beqz	a0,80002d88 <devintr+0xc8>
    80002d20:	144027f3          	csrr	a5,sip
    80002d24:	ffd7f793          	andi	a5,a5,-3
    80002d28:	14479073          	csrw	sip,a5
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	00813483          	ld	s1,8(sp)
    80002d38:	00200513          	li	a0,2
    80002d3c:	02010113          	addi	sp,sp,32
    80002d40:	00008067          	ret
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	250080e7          	jalr	592(ra) # 80002f94 <plic_claim>
    80002d4c:	00a00793          	li	a5,10
    80002d50:	00050493          	mv	s1,a0
    80002d54:	06f50663          	beq	a0,a5,80002dc0 <devintr+0x100>
    80002d58:	00100513          	li	a0,1
    80002d5c:	fa0482e3          	beqz	s1,80002d00 <devintr+0x40>
    80002d60:	00048593          	mv	a1,s1
    80002d64:	00002517          	auipc	a0,0x2
    80002d68:	41c50513          	addi	a0,a0,1052 # 80005180 <_ZZ12printIntegermE6digits+0x108>
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	66c080e7          	jalr	1644(ra) # 800033d8 <__printf>
    80002d74:	00048513          	mv	a0,s1
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	254080e7          	jalr	596(ra) # 80002fcc <plic_complete>
    80002d80:	00100513          	li	a0,1
    80002d84:	f7dff06f          	j	80002d00 <devintr+0x40>
    80002d88:	00004517          	auipc	a0,0x4
    80002d8c:	21850513          	addi	a0,a0,536 # 80006fa0 <tickslock>
    80002d90:	00001097          	auipc	ra,0x1
    80002d94:	31c080e7          	jalr	796(ra) # 800040ac <acquire>
    80002d98:	00003717          	auipc	a4,0x3
    80002d9c:	11c70713          	addi	a4,a4,284 # 80005eb4 <ticks>
    80002da0:	00072783          	lw	a5,0(a4)
    80002da4:	00004517          	auipc	a0,0x4
    80002da8:	1fc50513          	addi	a0,a0,508 # 80006fa0 <tickslock>
    80002dac:	0017879b          	addiw	a5,a5,1
    80002db0:	00f72023          	sw	a5,0(a4)
    80002db4:	00001097          	auipc	ra,0x1
    80002db8:	3c4080e7          	jalr	964(ra) # 80004178 <release>
    80002dbc:	f65ff06f          	j	80002d20 <devintr+0x60>
    80002dc0:	00001097          	auipc	ra,0x1
    80002dc4:	f20080e7          	jalr	-224(ra) # 80003ce0 <uartintr>
    80002dc8:	fadff06f          	j	80002d74 <devintr+0xb4>
    80002dcc:	0000                	unimp
	...

0000000080002dd0 <kernelvec>:
    80002dd0:	f0010113          	addi	sp,sp,-256
    80002dd4:	00113023          	sd	ra,0(sp)
    80002dd8:	00213423          	sd	sp,8(sp)
    80002ddc:	00313823          	sd	gp,16(sp)
    80002de0:	00413c23          	sd	tp,24(sp)
    80002de4:	02513023          	sd	t0,32(sp)
    80002de8:	02613423          	sd	t1,40(sp)
    80002dec:	02713823          	sd	t2,48(sp)
    80002df0:	02813c23          	sd	s0,56(sp)
    80002df4:	04913023          	sd	s1,64(sp)
    80002df8:	04a13423          	sd	a0,72(sp)
    80002dfc:	04b13823          	sd	a1,80(sp)
    80002e00:	04c13c23          	sd	a2,88(sp)
    80002e04:	06d13023          	sd	a3,96(sp)
    80002e08:	06e13423          	sd	a4,104(sp)
    80002e0c:	06f13823          	sd	a5,112(sp)
    80002e10:	07013c23          	sd	a6,120(sp)
    80002e14:	09113023          	sd	a7,128(sp)
    80002e18:	09213423          	sd	s2,136(sp)
    80002e1c:	09313823          	sd	s3,144(sp)
    80002e20:	09413c23          	sd	s4,152(sp)
    80002e24:	0b513023          	sd	s5,160(sp)
    80002e28:	0b613423          	sd	s6,168(sp)
    80002e2c:	0b713823          	sd	s7,176(sp)
    80002e30:	0b813c23          	sd	s8,184(sp)
    80002e34:	0d913023          	sd	s9,192(sp)
    80002e38:	0da13423          	sd	s10,200(sp)
    80002e3c:	0db13823          	sd	s11,208(sp)
    80002e40:	0dc13c23          	sd	t3,216(sp)
    80002e44:	0fd13023          	sd	t4,224(sp)
    80002e48:	0fe13423          	sd	t5,232(sp)
    80002e4c:	0ff13823          	sd	t6,240(sp)
    80002e50:	cd1ff0ef          	jal	ra,80002b20 <kerneltrap>
    80002e54:	00013083          	ld	ra,0(sp)
    80002e58:	00813103          	ld	sp,8(sp)
    80002e5c:	01013183          	ld	gp,16(sp)
    80002e60:	02013283          	ld	t0,32(sp)
    80002e64:	02813303          	ld	t1,40(sp)
    80002e68:	03013383          	ld	t2,48(sp)
    80002e6c:	03813403          	ld	s0,56(sp)
    80002e70:	04013483          	ld	s1,64(sp)
    80002e74:	04813503          	ld	a0,72(sp)
    80002e78:	05013583          	ld	a1,80(sp)
    80002e7c:	05813603          	ld	a2,88(sp)
    80002e80:	06013683          	ld	a3,96(sp)
    80002e84:	06813703          	ld	a4,104(sp)
    80002e88:	07013783          	ld	a5,112(sp)
    80002e8c:	07813803          	ld	a6,120(sp)
    80002e90:	08013883          	ld	a7,128(sp)
    80002e94:	08813903          	ld	s2,136(sp)
    80002e98:	09013983          	ld	s3,144(sp)
    80002e9c:	09813a03          	ld	s4,152(sp)
    80002ea0:	0a013a83          	ld	s5,160(sp)
    80002ea4:	0a813b03          	ld	s6,168(sp)
    80002ea8:	0b013b83          	ld	s7,176(sp)
    80002eac:	0b813c03          	ld	s8,184(sp)
    80002eb0:	0c013c83          	ld	s9,192(sp)
    80002eb4:	0c813d03          	ld	s10,200(sp)
    80002eb8:	0d013d83          	ld	s11,208(sp)
    80002ebc:	0d813e03          	ld	t3,216(sp)
    80002ec0:	0e013e83          	ld	t4,224(sp)
    80002ec4:	0e813f03          	ld	t5,232(sp)
    80002ec8:	0f013f83          	ld	t6,240(sp)
    80002ecc:	10010113          	addi	sp,sp,256
    80002ed0:	10200073          	sret
    80002ed4:	00000013          	nop
    80002ed8:	00000013          	nop
    80002edc:	00000013          	nop

0000000080002ee0 <timervec>:
    80002ee0:	34051573          	csrrw	a0,mscratch,a0
    80002ee4:	00b53023          	sd	a1,0(a0)
    80002ee8:	00c53423          	sd	a2,8(a0)
    80002eec:	00d53823          	sd	a3,16(a0)
    80002ef0:	01853583          	ld	a1,24(a0)
    80002ef4:	02053603          	ld	a2,32(a0)
    80002ef8:	0005b683          	ld	a3,0(a1)
    80002efc:	00c686b3          	add	a3,a3,a2
    80002f00:	00d5b023          	sd	a3,0(a1)
    80002f04:	00200593          	li	a1,2
    80002f08:	14459073          	csrw	sip,a1
    80002f0c:	01053683          	ld	a3,16(a0)
    80002f10:	00853603          	ld	a2,8(a0)
    80002f14:	00053583          	ld	a1,0(a0)
    80002f18:	34051573          	csrrw	a0,mscratch,a0
    80002f1c:	30200073          	mret

0000000080002f20 <plicinit>:
    80002f20:	ff010113          	addi	sp,sp,-16
    80002f24:	00813423          	sd	s0,8(sp)
    80002f28:	01010413          	addi	s0,sp,16
    80002f2c:	00813403          	ld	s0,8(sp)
    80002f30:	0c0007b7          	lui	a5,0xc000
    80002f34:	00100713          	li	a4,1
    80002f38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002f3c:	00e7a223          	sw	a4,4(a5)
    80002f40:	01010113          	addi	sp,sp,16
    80002f44:	00008067          	ret

0000000080002f48 <plicinithart>:
    80002f48:	ff010113          	addi	sp,sp,-16
    80002f4c:	00813023          	sd	s0,0(sp)
    80002f50:	00113423          	sd	ra,8(sp)
    80002f54:	01010413          	addi	s0,sp,16
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	a48080e7          	jalr	-1464(ra) # 800029a0 <cpuid>
    80002f60:	0085171b          	slliw	a4,a0,0x8
    80002f64:	0c0027b7          	lui	a5,0xc002
    80002f68:	00e787b3          	add	a5,a5,a4
    80002f6c:	40200713          	li	a4,1026
    80002f70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002f74:	00813083          	ld	ra,8(sp)
    80002f78:	00013403          	ld	s0,0(sp)
    80002f7c:	00d5151b          	slliw	a0,a0,0xd
    80002f80:	0c2017b7          	lui	a5,0xc201
    80002f84:	00a78533          	add	a0,a5,a0
    80002f88:	00052023          	sw	zero,0(a0)
    80002f8c:	01010113          	addi	sp,sp,16
    80002f90:	00008067          	ret

0000000080002f94 <plic_claim>:
    80002f94:	ff010113          	addi	sp,sp,-16
    80002f98:	00813023          	sd	s0,0(sp)
    80002f9c:	00113423          	sd	ra,8(sp)
    80002fa0:	01010413          	addi	s0,sp,16
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	9fc080e7          	jalr	-1540(ra) # 800029a0 <cpuid>
    80002fac:	00813083          	ld	ra,8(sp)
    80002fb0:	00013403          	ld	s0,0(sp)
    80002fb4:	00d5151b          	slliw	a0,a0,0xd
    80002fb8:	0c2017b7          	lui	a5,0xc201
    80002fbc:	00a78533          	add	a0,a5,a0
    80002fc0:	00452503          	lw	a0,4(a0)
    80002fc4:	01010113          	addi	sp,sp,16
    80002fc8:	00008067          	ret

0000000080002fcc <plic_complete>:
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00813823          	sd	s0,16(sp)
    80002fd4:	00913423          	sd	s1,8(sp)
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	02010413          	addi	s0,sp,32
    80002fe0:	00050493          	mv	s1,a0
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	9bc080e7          	jalr	-1604(ra) # 800029a0 <cpuid>
    80002fec:	01813083          	ld	ra,24(sp)
    80002ff0:	01013403          	ld	s0,16(sp)
    80002ff4:	00d5179b          	slliw	a5,a0,0xd
    80002ff8:	0c201737          	lui	a4,0xc201
    80002ffc:	00f707b3          	add	a5,a4,a5
    80003000:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003004:	00813483          	ld	s1,8(sp)
    80003008:	02010113          	addi	sp,sp,32
    8000300c:	00008067          	ret

0000000080003010 <consolewrite>:
    80003010:	fb010113          	addi	sp,sp,-80
    80003014:	04813023          	sd	s0,64(sp)
    80003018:	04113423          	sd	ra,72(sp)
    8000301c:	02913c23          	sd	s1,56(sp)
    80003020:	03213823          	sd	s2,48(sp)
    80003024:	03313423          	sd	s3,40(sp)
    80003028:	03413023          	sd	s4,32(sp)
    8000302c:	01513c23          	sd	s5,24(sp)
    80003030:	05010413          	addi	s0,sp,80
    80003034:	06c05c63          	blez	a2,800030ac <consolewrite+0x9c>
    80003038:	00060993          	mv	s3,a2
    8000303c:	00050a13          	mv	s4,a0
    80003040:	00058493          	mv	s1,a1
    80003044:	00000913          	li	s2,0
    80003048:	fff00a93          	li	s5,-1
    8000304c:	01c0006f          	j	80003068 <consolewrite+0x58>
    80003050:	fbf44503          	lbu	a0,-65(s0)
    80003054:	0019091b          	addiw	s2,s2,1
    80003058:	00148493          	addi	s1,s1,1
    8000305c:	00001097          	auipc	ra,0x1
    80003060:	a9c080e7          	jalr	-1380(ra) # 80003af8 <uartputc>
    80003064:	03298063          	beq	s3,s2,80003084 <consolewrite+0x74>
    80003068:	00048613          	mv	a2,s1
    8000306c:	00100693          	li	a3,1
    80003070:	000a0593          	mv	a1,s4
    80003074:	fbf40513          	addi	a0,s0,-65
    80003078:	00000097          	auipc	ra,0x0
    8000307c:	9e0080e7          	jalr	-1568(ra) # 80002a58 <either_copyin>
    80003080:	fd5518e3          	bne	a0,s5,80003050 <consolewrite+0x40>
    80003084:	04813083          	ld	ra,72(sp)
    80003088:	04013403          	ld	s0,64(sp)
    8000308c:	03813483          	ld	s1,56(sp)
    80003090:	02813983          	ld	s3,40(sp)
    80003094:	02013a03          	ld	s4,32(sp)
    80003098:	01813a83          	ld	s5,24(sp)
    8000309c:	00090513          	mv	a0,s2
    800030a0:	03013903          	ld	s2,48(sp)
    800030a4:	05010113          	addi	sp,sp,80
    800030a8:	00008067          	ret
    800030ac:	00000913          	li	s2,0
    800030b0:	fd5ff06f          	j	80003084 <consolewrite+0x74>

00000000800030b4 <consoleread>:
    800030b4:	f9010113          	addi	sp,sp,-112
    800030b8:	06813023          	sd	s0,96(sp)
    800030bc:	04913c23          	sd	s1,88(sp)
    800030c0:	05213823          	sd	s2,80(sp)
    800030c4:	05313423          	sd	s3,72(sp)
    800030c8:	05413023          	sd	s4,64(sp)
    800030cc:	03513c23          	sd	s5,56(sp)
    800030d0:	03613823          	sd	s6,48(sp)
    800030d4:	03713423          	sd	s7,40(sp)
    800030d8:	03813023          	sd	s8,32(sp)
    800030dc:	06113423          	sd	ra,104(sp)
    800030e0:	01913c23          	sd	s9,24(sp)
    800030e4:	07010413          	addi	s0,sp,112
    800030e8:	00060b93          	mv	s7,a2
    800030ec:	00050913          	mv	s2,a0
    800030f0:	00058c13          	mv	s8,a1
    800030f4:	00060b1b          	sext.w	s6,a2
    800030f8:	00004497          	auipc	s1,0x4
    800030fc:	ed048493          	addi	s1,s1,-304 # 80006fc8 <cons>
    80003100:	00400993          	li	s3,4
    80003104:	fff00a13          	li	s4,-1
    80003108:	00a00a93          	li	s5,10
    8000310c:	05705e63          	blez	s7,80003168 <consoleread+0xb4>
    80003110:	09c4a703          	lw	a4,156(s1)
    80003114:	0984a783          	lw	a5,152(s1)
    80003118:	0007071b          	sext.w	a4,a4
    8000311c:	08e78463          	beq	a5,a4,800031a4 <consoleread+0xf0>
    80003120:	07f7f713          	andi	a4,a5,127
    80003124:	00e48733          	add	a4,s1,a4
    80003128:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000312c:	0017869b          	addiw	a3,a5,1
    80003130:	08d4ac23          	sw	a3,152(s1)
    80003134:	00070c9b          	sext.w	s9,a4
    80003138:	0b370663          	beq	a4,s3,800031e4 <consoleread+0x130>
    8000313c:	00100693          	li	a3,1
    80003140:	f9f40613          	addi	a2,s0,-97
    80003144:	000c0593          	mv	a1,s8
    80003148:	00090513          	mv	a0,s2
    8000314c:	f8e40fa3          	sb	a4,-97(s0)
    80003150:	00000097          	auipc	ra,0x0
    80003154:	8bc080e7          	jalr	-1860(ra) # 80002a0c <either_copyout>
    80003158:	01450863          	beq	a0,s4,80003168 <consoleread+0xb4>
    8000315c:	001c0c13          	addi	s8,s8,1
    80003160:	fffb8b9b          	addiw	s7,s7,-1
    80003164:	fb5c94e3          	bne	s9,s5,8000310c <consoleread+0x58>
    80003168:	000b851b          	sext.w	a0,s7
    8000316c:	06813083          	ld	ra,104(sp)
    80003170:	06013403          	ld	s0,96(sp)
    80003174:	05813483          	ld	s1,88(sp)
    80003178:	05013903          	ld	s2,80(sp)
    8000317c:	04813983          	ld	s3,72(sp)
    80003180:	04013a03          	ld	s4,64(sp)
    80003184:	03813a83          	ld	s5,56(sp)
    80003188:	02813b83          	ld	s7,40(sp)
    8000318c:	02013c03          	ld	s8,32(sp)
    80003190:	01813c83          	ld	s9,24(sp)
    80003194:	40ab053b          	subw	a0,s6,a0
    80003198:	03013b03          	ld	s6,48(sp)
    8000319c:	07010113          	addi	sp,sp,112
    800031a0:	00008067          	ret
    800031a4:	00001097          	auipc	ra,0x1
    800031a8:	1d8080e7          	jalr	472(ra) # 8000437c <push_on>
    800031ac:	0984a703          	lw	a4,152(s1)
    800031b0:	09c4a783          	lw	a5,156(s1)
    800031b4:	0007879b          	sext.w	a5,a5
    800031b8:	fef70ce3          	beq	a4,a5,800031b0 <consoleread+0xfc>
    800031bc:	00001097          	auipc	ra,0x1
    800031c0:	234080e7          	jalr	564(ra) # 800043f0 <pop_on>
    800031c4:	0984a783          	lw	a5,152(s1)
    800031c8:	07f7f713          	andi	a4,a5,127
    800031cc:	00e48733          	add	a4,s1,a4
    800031d0:	01874703          	lbu	a4,24(a4)
    800031d4:	0017869b          	addiw	a3,a5,1
    800031d8:	08d4ac23          	sw	a3,152(s1)
    800031dc:	00070c9b          	sext.w	s9,a4
    800031e0:	f5371ee3          	bne	a4,s3,8000313c <consoleread+0x88>
    800031e4:	000b851b          	sext.w	a0,s7
    800031e8:	f96bf2e3          	bgeu	s7,s6,8000316c <consoleread+0xb8>
    800031ec:	08f4ac23          	sw	a5,152(s1)
    800031f0:	f7dff06f          	j	8000316c <consoleread+0xb8>

00000000800031f4 <consputc>:
    800031f4:	10000793          	li	a5,256
    800031f8:	00f50663          	beq	a0,a5,80003204 <consputc+0x10>
    800031fc:	00001317          	auipc	t1,0x1
    80003200:	9f430067          	jr	-1548(t1) # 80003bf0 <uartputc_sync>
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00113423          	sd	ra,8(sp)
    8000320c:	00813023          	sd	s0,0(sp)
    80003210:	01010413          	addi	s0,sp,16
    80003214:	00800513          	li	a0,8
    80003218:	00001097          	auipc	ra,0x1
    8000321c:	9d8080e7          	jalr	-1576(ra) # 80003bf0 <uartputc_sync>
    80003220:	02000513          	li	a0,32
    80003224:	00001097          	auipc	ra,0x1
    80003228:	9cc080e7          	jalr	-1588(ra) # 80003bf0 <uartputc_sync>
    8000322c:	00013403          	ld	s0,0(sp)
    80003230:	00813083          	ld	ra,8(sp)
    80003234:	00800513          	li	a0,8
    80003238:	01010113          	addi	sp,sp,16
    8000323c:	00001317          	auipc	t1,0x1
    80003240:	9b430067          	jr	-1612(t1) # 80003bf0 <uartputc_sync>

0000000080003244 <consoleintr>:
    80003244:	fe010113          	addi	sp,sp,-32
    80003248:	00813823          	sd	s0,16(sp)
    8000324c:	00913423          	sd	s1,8(sp)
    80003250:	01213023          	sd	s2,0(sp)
    80003254:	00113c23          	sd	ra,24(sp)
    80003258:	02010413          	addi	s0,sp,32
    8000325c:	00004917          	auipc	s2,0x4
    80003260:	d6c90913          	addi	s2,s2,-660 # 80006fc8 <cons>
    80003264:	00050493          	mv	s1,a0
    80003268:	00090513          	mv	a0,s2
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	e40080e7          	jalr	-448(ra) # 800040ac <acquire>
    80003274:	02048c63          	beqz	s1,800032ac <consoleintr+0x68>
    80003278:	0a092783          	lw	a5,160(s2)
    8000327c:	09892703          	lw	a4,152(s2)
    80003280:	07f00693          	li	a3,127
    80003284:	40e7873b          	subw	a4,a5,a4
    80003288:	02e6e263          	bltu	a3,a4,800032ac <consoleintr+0x68>
    8000328c:	00d00713          	li	a4,13
    80003290:	04e48063          	beq	s1,a4,800032d0 <consoleintr+0x8c>
    80003294:	07f7f713          	andi	a4,a5,127
    80003298:	00e90733          	add	a4,s2,a4
    8000329c:	0017879b          	addiw	a5,a5,1
    800032a0:	0af92023          	sw	a5,160(s2)
    800032a4:	00970c23          	sb	s1,24(a4)
    800032a8:	08f92e23          	sw	a5,156(s2)
    800032ac:	01013403          	ld	s0,16(sp)
    800032b0:	01813083          	ld	ra,24(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	00013903          	ld	s2,0(sp)
    800032bc:	00004517          	auipc	a0,0x4
    800032c0:	d0c50513          	addi	a0,a0,-756 # 80006fc8 <cons>
    800032c4:	02010113          	addi	sp,sp,32
    800032c8:	00001317          	auipc	t1,0x1
    800032cc:	eb030067          	jr	-336(t1) # 80004178 <release>
    800032d0:	00a00493          	li	s1,10
    800032d4:	fc1ff06f          	j	80003294 <consoleintr+0x50>

00000000800032d8 <consoleinit>:
    800032d8:	fe010113          	addi	sp,sp,-32
    800032dc:	00113c23          	sd	ra,24(sp)
    800032e0:	00813823          	sd	s0,16(sp)
    800032e4:	00913423          	sd	s1,8(sp)
    800032e8:	02010413          	addi	s0,sp,32
    800032ec:	00004497          	auipc	s1,0x4
    800032f0:	cdc48493          	addi	s1,s1,-804 # 80006fc8 <cons>
    800032f4:	00048513          	mv	a0,s1
    800032f8:	00002597          	auipc	a1,0x2
    800032fc:	ee058593          	addi	a1,a1,-288 # 800051d8 <_ZZ12printIntegermE6digits+0x160>
    80003300:	00001097          	auipc	ra,0x1
    80003304:	d88080e7          	jalr	-632(ra) # 80004088 <initlock>
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	7ac080e7          	jalr	1964(ra) # 80003ab4 <uartinit>
    80003310:	01813083          	ld	ra,24(sp)
    80003314:	01013403          	ld	s0,16(sp)
    80003318:	00000797          	auipc	a5,0x0
    8000331c:	d9c78793          	addi	a5,a5,-612 # 800030b4 <consoleread>
    80003320:	0af4bc23          	sd	a5,184(s1)
    80003324:	00000797          	auipc	a5,0x0
    80003328:	cec78793          	addi	a5,a5,-788 # 80003010 <consolewrite>
    8000332c:	0cf4b023          	sd	a5,192(s1)
    80003330:	00813483          	ld	s1,8(sp)
    80003334:	02010113          	addi	sp,sp,32
    80003338:	00008067          	ret

000000008000333c <console_read>:
    8000333c:	ff010113          	addi	sp,sp,-16
    80003340:	00813423          	sd	s0,8(sp)
    80003344:	01010413          	addi	s0,sp,16
    80003348:	00813403          	ld	s0,8(sp)
    8000334c:	00004317          	auipc	t1,0x4
    80003350:	d3433303          	ld	t1,-716(t1) # 80007080 <devsw+0x10>
    80003354:	01010113          	addi	sp,sp,16
    80003358:	00030067          	jr	t1

000000008000335c <console_write>:
    8000335c:	ff010113          	addi	sp,sp,-16
    80003360:	00813423          	sd	s0,8(sp)
    80003364:	01010413          	addi	s0,sp,16
    80003368:	00813403          	ld	s0,8(sp)
    8000336c:	00004317          	auipc	t1,0x4
    80003370:	d1c33303          	ld	t1,-740(t1) # 80007088 <devsw+0x18>
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00030067          	jr	t1

000000008000337c <panic>:
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00113c23          	sd	ra,24(sp)
    80003384:	00813823          	sd	s0,16(sp)
    80003388:	00913423          	sd	s1,8(sp)
    8000338c:	02010413          	addi	s0,sp,32
    80003390:	00050493          	mv	s1,a0
    80003394:	00002517          	auipc	a0,0x2
    80003398:	e4c50513          	addi	a0,a0,-436 # 800051e0 <_ZZ12printIntegermE6digits+0x168>
    8000339c:	00004797          	auipc	a5,0x4
    800033a0:	d807a623          	sw	zero,-628(a5) # 80007128 <pr+0x18>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	034080e7          	jalr	52(ra) # 800033d8 <__printf>
    800033ac:	00048513          	mv	a0,s1
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	028080e7          	jalr	40(ra) # 800033d8 <__printf>
    800033b8:	00002517          	auipc	a0,0x2
    800033bc:	e0850513          	addi	a0,a0,-504 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	018080e7          	jalr	24(ra) # 800033d8 <__printf>
    800033c8:	00100793          	li	a5,1
    800033cc:	00003717          	auipc	a4,0x3
    800033d0:	aef72623          	sw	a5,-1300(a4) # 80005eb8 <panicked>
    800033d4:	0000006f          	j	800033d4 <panic+0x58>

00000000800033d8 <__printf>:
    800033d8:	f3010113          	addi	sp,sp,-208
    800033dc:	08813023          	sd	s0,128(sp)
    800033e0:	07313423          	sd	s3,104(sp)
    800033e4:	09010413          	addi	s0,sp,144
    800033e8:	05813023          	sd	s8,64(sp)
    800033ec:	08113423          	sd	ra,136(sp)
    800033f0:	06913c23          	sd	s1,120(sp)
    800033f4:	07213823          	sd	s2,112(sp)
    800033f8:	07413023          	sd	s4,96(sp)
    800033fc:	05513c23          	sd	s5,88(sp)
    80003400:	05613823          	sd	s6,80(sp)
    80003404:	05713423          	sd	s7,72(sp)
    80003408:	03913c23          	sd	s9,56(sp)
    8000340c:	03a13823          	sd	s10,48(sp)
    80003410:	03b13423          	sd	s11,40(sp)
    80003414:	00004317          	auipc	t1,0x4
    80003418:	cfc30313          	addi	t1,t1,-772 # 80007110 <pr>
    8000341c:	01832c03          	lw	s8,24(t1)
    80003420:	00b43423          	sd	a1,8(s0)
    80003424:	00c43823          	sd	a2,16(s0)
    80003428:	00d43c23          	sd	a3,24(s0)
    8000342c:	02e43023          	sd	a4,32(s0)
    80003430:	02f43423          	sd	a5,40(s0)
    80003434:	03043823          	sd	a6,48(s0)
    80003438:	03143c23          	sd	a7,56(s0)
    8000343c:	00050993          	mv	s3,a0
    80003440:	4a0c1663          	bnez	s8,800038ec <__printf+0x514>
    80003444:	60098c63          	beqz	s3,80003a5c <__printf+0x684>
    80003448:	0009c503          	lbu	a0,0(s3)
    8000344c:	00840793          	addi	a5,s0,8
    80003450:	f6f43c23          	sd	a5,-136(s0)
    80003454:	00000493          	li	s1,0
    80003458:	22050063          	beqz	a0,80003678 <__printf+0x2a0>
    8000345c:	00002a37          	lui	s4,0x2
    80003460:	00018ab7          	lui	s5,0x18
    80003464:	000f4b37          	lui	s6,0xf4
    80003468:	00989bb7          	lui	s7,0x989
    8000346c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003470:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003474:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003478:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000347c:	00148c9b          	addiw	s9,s1,1
    80003480:	02500793          	li	a5,37
    80003484:	01998933          	add	s2,s3,s9
    80003488:	38f51263          	bne	a0,a5,8000380c <__printf+0x434>
    8000348c:	00094783          	lbu	a5,0(s2)
    80003490:	00078c9b          	sext.w	s9,a5
    80003494:	1e078263          	beqz	a5,80003678 <__printf+0x2a0>
    80003498:	0024849b          	addiw	s1,s1,2
    8000349c:	07000713          	li	a4,112
    800034a0:	00998933          	add	s2,s3,s1
    800034a4:	38e78a63          	beq	a5,a4,80003838 <__printf+0x460>
    800034a8:	20f76863          	bltu	a4,a5,800036b8 <__printf+0x2e0>
    800034ac:	42a78863          	beq	a5,a0,800038dc <__printf+0x504>
    800034b0:	06400713          	li	a4,100
    800034b4:	40e79663          	bne	a5,a4,800038c0 <__printf+0x4e8>
    800034b8:	f7843783          	ld	a5,-136(s0)
    800034bc:	0007a603          	lw	a2,0(a5)
    800034c0:	00878793          	addi	a5,a5,8
    800034c4:	f6f43c23          	sd	a5,-136(s0)
    800034c8:	42064a63          	bltz	a2,800038fc <__printf+0x524>
    800034cc:	00a00713          	li	a4,10
    800034d0:	02e677bb          	remuw	a5,a2,a4
    800034d4:	00002d97          	auipc	s11,0x2
    800034d8:	d34d8d93          	addi	s11,s11,-716 # 80005208 <digits>
    800034dc:	00900593          	li	a1,9
    800034e0:	0006051b          	sext.w	a0,a2
    800034e4:	00000c93          	li	s9,0
    800034e8:	02079793          	slli	a5,a5,0x20
    800034ec:	0207d793          	srli	a5,a5,0x20
    800034f0:	00fd87b3          	add	a5,s11,a5
    800034f4:	0007c783          	lbu	a5,0(a5)
    800034f8:	02e656bb          	divuw	a3,a2,a4
    800034fc:	f8f40023          	sb	a5,-128(s0)
    80003500:	14c5d863          	bge	a1,a2,80003650 <__printf+0x278>
    80003504:	06300593          	li	a1,99
    80003508:	00100c93          	li	s9,1
    8000350c:	02e6f7bb          	remuw	a5,a3,a4
    80003510:	02079793          	slli	a5,a5,0x20
    80003514:	0207d793          	srli	a5,a5,0x20
    80003518:	00fd87b3          	add	a5,s11,a5
    8000351c:	0007c783          	lbu	a5,0(a5)
    80003520:	02e6d73b          	divuw	a4,a3,a4
    80003524:	f8f400a3          	sb	a5,-127(s0)
    80003528:	12a5f463          	bgeu	a1,a0,80003650 <__printf+0x278>
    8000352c:	00a00693          	li	a3,10
    80003530:	00900593          	li	a1,9
    80003534:	02d777bb          	remuw	a5,a4,a3
    80003538:	02079793          	slli	a5,a5,0x20
    8000353c:	0207d793          	srli	a5,a5,0x20
    80003540:	00fd87b3          	add	a5,s11,a5
    80003544:	0007c503          	lbu	a0,0(a5)
    80003548:	02d757bb          	divuw	a5,a4,a3
    8000354c:	f8a40123          	sb	a0,-126(s0)
    80003550:	48e5f263          	bgeu	a1,a4,800039d4 <__printf+0x5fc>
    80003554:	06300513          	li	a0,99
    80003558:	02d7f5bb          	remuw	a1,a5,a3
    8000355c:	02059593          	slli	a1,a1,0x20
    80003560:	0205d593          	srli	a1,a1,0x20
    80003564:	00bd85b3          	add	a1,s11,a1
    80003568:	0005c583          	lbu	a1,0(a1)
    8000356c:	02d7d7bb          	divuw	a5,a5,a3
    80003570:	f8b401a3          	sb	a1,-125(s0)
    80003574:	48e57263          	bgeu	a0,a4,800039f8 <__printf+0x620>
    80003578:	3e700513          	li	a0,999
    8000357c:	02d7f5bb          	remuw	a1,a5,a3
    80003580:	02059593          	slli	a1,a1,0x20
    80003584:	0205d593          	srli	a1,a1,0x20
    80003588:	00bd85b3          	add	a1,s11,a1
    8000358c:	0005c583          	lbu	a1,0(a1)
    80003590:	02d7d7bb          	divuw	a5,a5,a3
    80003594:	f8b40223          	sb	a1,-124(s0)
    80003598:	46e57663          	bgeu	a0,a4,80003a04 <__printf+0x62c>
    8000359c:	02d7f5bb          	remuw	a1,a5,a3
    800035a0:	02059593          	slli	a1,a1,0x20
    800035a4:	0205d593          	srli	a1,a1,0x20
    800035a8:	00bd85b3          	add	a1,s11,a1
    800035ac:	0005c583          	lbu	a1,0(a1)
    800035b0:	02d7d7bb          	divuw	a5,a5,a3
    800035b4:	f8b402a3          	sb	a1,-123(s0)
    800035b8:	46ea7863          	bgeu	s4,a4,80003a28 <__printf+0x650>
    800035bc:	02d7f5bb          	remuw	a1,a5,a3
    800035c0:	02059593          	slli	a1,a1,0x20
    800035c4:	0205d593          	srli	a1,a1,0x20
    800035c8:	00bd85b3          	add	a1,s11,a1
    800035cc:	0005c583          	lbu	a1,0(a1)
    800035d0:	02d7d7bb          	divuw	a5,a5,a3
    800035d4:	f8b40323          	sb	a1,-122(s0)
    800035d8:	3eeaf863          	bgeu	s5,a4,800039c8 <__printf+0x5f0>
    800035dc:	02d7f5bb          	remuw	a1,a5,a3
    800035e0:	02059593          	slli	a1,a1,0x20
    800035e4:	0205d593          	srli	a1,a1,0x20
    800035e8:	00bd85b3          	add	a1,s11,a1
    800035ec:	0005c583          	lbu	a1,0(a1)
    800035f0:	02d7d7bb          	divuw	a5,a5,a3
    800035f4:	f8b403a3          	sb	a1,-121(s0)
    800035f8:	42eb7e63          	bgeu	s6,a4,80003a34 <__printf+0x65c>
    800035fc:	02d7f5bb          	remuw	a1,a5,a3
    80003600:	02059593          	slli	a1,a1,0x20
    80003604:	0205d593          	srli	a1,a1,0x20
    80003608:	00bd85b3          	add	a1,s11,a1
    8000360c:	0005c583          	lbu	a1,0(a1)
    80003610:	02d7d7bb          	divuw	a5,a5,a3
    80003614:	f8b40423          	sb	a1,-120(s0)
    80003618:	42ebfc63          	bgeu	s7,a4,80003a50 <__printf+0x678>
    8000361c:	02079793          	slli	a5,a5,0x20
    80003620:	0207d793          	srli	a5,a5,0x20
    80003624:	00fd8db3          	add	s11,s11,a5
    80003628:	000dc703          	lbu	a4,0(s11)
    8000362c:	00a00793          	li	a5,10
    80003630:	00900c93          	li	s9,9
    80003634:	f8e404a3          	sb	a4,-119(s0)
    80003638:	00065c63          	bgez	a2,80003650 <__printf+0x278>
    8000363c:	f9040713          	addi	a4,s0,-112
    80003640:	00f70733          	add	a4,a4,a5
    80003644:	02d00693          	li	a3,45
    80003648:	fed70823          	sb	a3,-16(a4)
    8000364c:	00078c93          	mv	s9,a5
    80003650:	f8040793          	addi	a5,s0,-128
    80003654:	01978cb3          	add	s9,a5,s9
    80003658:	f7f40d13          	addi	s10,s0,-129
    8000365c:	000cc503          	lbu	a0,0(s9)
    80003660:	fffc8c93          	addi	s9,s9,-1
    80003664:	00000097          	auipc	ra,0x0
    80003668:	b90080e7          	jalr	-1136(ra) # 800031f4 <consputc>
    8000366c:	ffac98e3          	bne	s9,s10,8000365c <__printf+0x284>
    80003670:	00094503          	lbu	a0,0(s2)
    80003674:	e00514e3          	bnez	a0,8000347c <__printf+0xa4>
    80003678:	1a0c1663          	bnez	s8,80003824 <__printf+0x44c>
    8000367c:	08813083          	ld	ra,136(sp)
    80003680:	08013403          	ld	s0,128(sp)
    80003684:	07813483          	ld	s1,120(sp)
    80003688:	07013903          	ld	s2,112(sp)
    8000368c:	06813983          	ld	s3,104(sp)
    80003690:	06013a03          	ld	s4,96(sp)
    80003694:	05813a83          	ld	s5,88(sp)
    80003698:	05013b03          	ld	s6,80(sp)
    8000369c:	04813b83          	ld	s7,72(sp)
    800036a0:	04013c03          	ld	s8,64(sp)
    800036a4:	03813c83          	ld	s9,56(sp)
    800036a8:	03013d03          	ld	s10,48(sp)
    800036ac:	02813d83          	ld	s11,40(sp)
    800036b0:	0d010113          	addi	sp,sp,208
    800036b4:	00008067          	ret
    800036b8:	07300713          	li	a4,115
    800036bc:	1ce78a63          	beq	a5,a4,80003890 <__printf+0x4b8>
    800036c0:	07800713          	li	a4,120
    800036c4:	1ee79e63          	bne	a5,a4,800038c0 <__printf+0x4e8>
    800036c8:	f7843783          	ld	a5,-136(s0)
    800036cc:	0007a703          	lw	a4,0(a5)
    800036d0:	00878793          	addi	a5,a5,8
    800036d4:	f6f43c23          	sd	a5,-136(s0)
    800036d8:	28074263          	bltz	a4,8000395c <__printf+0x584>
    800036dc:	00002d97          	auipc	s11,0x2
    800036e0:	b2cd8d93          	addi	s11,s11,-1236 # 80005208 <digits>
    800036e4:	00f77793          	andi	a5,a4,15
    800036e8:	00fd87b3          	add	a5,s11,a5
    800036ec:	0007c683          	lbu	a3,0(a5)
    800036f0:	00f00613          	li	a2,15
    800036f4:	0007079b          	sext.w	a5,a4
    800036f8:	f8d40023          	sb	a3,-128(s0)
    800036fc:	0047559b          	srliw	a1,a4,0x4
    80003700:	0047569b          	srliw	a3,a4,0x4
    80003704:	00000c93          	li	s9,0
    80003708:	0ee65063          	bge	a2,a4,800037e8 <__printf+0x410>
    8000370c:	00f6f693          	andi	a3,a3,15
    80003710:	00dd86b3          	add	a3,s11,a3
    80003714:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003718:	0087d79b          	srliw	a5,a5,0x8
    8000371c:	00100c93          	li	s9,1
    80003720:	f8d400a3          	sb	a3,-127(s0)
    80003724:	0cb67263          	bgeu	a2,a1,800037e8 <__printf+0x410>
    80003728:	00f7f693          	andi	a3,a5,15
    8000372c:	00dd86b3          	add	a3,s11,a3
    80003730:	0006c583          	lbu	a1,0(a3)
    80003734:	00f00613          	li	a2,15
    80003738:	0047d69b          	srliw	a3,a5,0x4
    8000373c:	f8b40123          	sb	a1,-126(s0)
    80003740:	0047d593          	srli	a1,a5,0x4
    80003744:	28f67e63          	bgeu	a2,a5,800039e0 <__printf+0x608>
    80003748:	00f6f693          	andi	a3,a3,15
    8000374c:	00dd86b3          	add	a3,s11,a3
    80003750:	0006c503          	lbu	a0,0(a3)
    80003754:	0087d813          	srli	a6,a5,0x8
    80003758:	0087d69b          	srliw	a3,a5,0x8
    8000375c:	f8a401a3          	sb	a0,-125(s0)
    80003760:	28b67663          	bgeu	a2,a1,800039ec <__printf+0x614>
    80003764:	00f6f693          	andi	a3,a3,15
    80003768:	00dd86b3          	add	a3,s11,a3
    8000376c:	0006c583          	lbu	a1,0(a3)
    80003770:	00c7d513          	srli	a0,a5,0xc
    80003774:	00c7d69b          	srliw	a3,a5,0xc
    80003778:	f8b40223          	sb	a1,-124(s0)
    8000377c:	29067a63          	bgeu	a2,a6,80003a10 <__printf+0x638>
    80003780:	00f6f693          	andi	a3,a3,15
    80003784:	00dd86b3          	add	a3,s11,a3
    80003788:	0006c583          	lbu	a1,0(a3)
    8000378c:	0107d813          	srli	a6,a5,0x10
    80003790:	0107d69b          	srliw	a3,a5,0x10
    80003794:	f8b402a3          	sb	a1,-123(s0)
    80003798:	28a67263          	bgeu	a2,a0,80003a1c <__printf+0x644>
    8000379c:	00f6f693          	andi	a3,a3,15
    800037a0:	00dd86b3          	add	a3,s11,a3
    800037a4:	0006c683          	lbu	a3,0(a3)
    800037a8:	0147d79b          	srliw	a5,a5,0x14
    800037ac:	f8d40323          	sb	a3,-122(s0)
    800037b0:	21067663          	bgeu	a2,a6,800039bc <__printf+0x5e4>
    800037b4:	02079793          	slli	a5,a5,0x20
    800037b8:	0207d793          	srli	a5,a5,0x20
    800037bc:	00fd8db3          	add	s11,s11,a5
    800037c0:	000dc683          	lbu	a3,0(s11)
    800037c4:	00800793          	li	a5,8
    800037c8:	00700c93          	li	s9,7
    800037cc:	f8d403a3          	sb	a3,-121(s0)
    800037d0:	00075c63          	bgez	a4,800037e8 <__printf+0x410>
    800037d4:	f9040713          	addi	a4,s0,-112
    800037d8:	00f70733          	add	a4,a4,a5
    800037dc:	02d00693          	li	a3,45
    800037e0:	fed70823          	sb	a3,-16(a4)
    800037e4:	00078c93          	mv	s9,a5
    800037e8:	f8040793          	addi	a5,s0,-128
    800037ec:	01978cb3          	add	s9,a5,s9
    800037f0:	f7f40d13          	addi	s10,s0,-129
    800037f4:	000cc503          	lbu	a0,0(s9)
    800037f8:	fffc8c93          	addi	s9,s9,-1
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	9f8080e7          	jalr	-1544(ra) # 800031f4 <consputc>
    80003804:	ff9d18e3          	bne	s10,s9,800037f4 <__printf+0x41c>
    80003808:	0100006f          	j	80003818 <__printf+0x440>
    8000380c:	00000097          	auipc	ra,0x0
    80003810:	9e8080e7          	jalr	-1560(ra) # 800031f4 <consputc>
    80003814:	000c8493          	mv	s1,s9
    80003818:	00094503          	lbu	a0,0(s2)
    8000381c:	c60510e3          	bnez	a0,8000347c <__printf+0xa4>
    80003820:	e40c0ee3          	beqz	s8,8000367c <__printf+0x2a4>
    80003824:	00004517          	auipc	a0,0x4
    80003828:	8ec50513          	addi	a0,a0,-1812 # 80007110 <pr>
    8000382c:	00001097          	auipc	ra,0x1
    80003830:	94c080e7          	jalr	-1716(ra) # 80004178 <release>
    80003834:	e49ff06f          	j	8000367c <__printf+0x2a4>
    80003838:	f7843783          	ld	a5,-136(s0)
    8000383c:	03000513          	li	a0,48
    80003840:	01000d13          	li	s10,16
    80003844:	00878713          	addi	a4,a5,8
    80003848:	0007bc83          	ld	s9,0(a5)
    8000384c:	f6e43c23          	sd	a4,-136(s0)
    80003850:	00000097          	auipc	ra,0x0
    80003854:	9a4080e7          	jalr	-1628(ra) # 800031f4 <consputc>
    80003858:	07800513          	li	a0,120
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	998080e7          	jalr	-1640(ra) # 800031f4 <consputc>
    80003864:	00002d97          	auipc	s11,0x2
    80003868:	9a4d8d93          	addi	s11,s11,-1628 # 80005208 <digits>
    8000386c:	03ccd793          	srli	a5,s9,0x3c
    80003870:	00fd87b3          	add	a5,s11,a5
    80003874:	0007c503          	lbu	a0,0(a5)
    80003878:	fffd0d1b          	addiw	s10,s10,-1
    8000387c:	004c9c93          	slli	s9,s9,0x4
    80003880:	00000097          	auipc	ra,0x0
    80003884:	974080e7          	jalr	-1676(ra) # 800031f4 <consputc>
    80003888:	fe0d12e3          	bnez	s10,8000386c <__printf+0x494>
    8000388c:	f8dff06f          	j	80003818 <__printf+0x440>
    80003890:	f7843783          	ld	a5,-136(s0)
    80003894:	0007bc83          	ld	s9,0(a5)
    80003898:	00878793          	addi	a5,a5,8
    8000389c:	f6f43c23          	sd	a5,-136(s0)
    800038a0:	000c9a63          	bnez	s9,800038b4 <__printf+0x4dc>
    800038a4:	1080006f          	j	800039ac <__printf+0x5d4>
    800038a8:	001c8c93          	addi	s9,s9,1
    800038ac:	00000097          	auipc	ra,0x0
    800038b0:	948080e7          	jalr	-1720(ra) # 800031f4 <consputc>
    800038b4:	000cc503          	lbu	a0,0(s9)
    800038b8:	fe0518e3          	bnez	a0,800038a8 <__printf+0x4d0>
    800038bc:	f5dff06f          	j	80003818 <__printf+0x440>
    800038c0:	02500513          	li	a0,37
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	930080e7          	jalr	-1744(ra) # 800031f4 <consputc>
    800038cc:	000c8513          	mv	a0,s9
    800038d0:	00000097          	auipc	ra,0x0
    800038d4:	924080e7          	jalr	-1756(ra) # 800031f4 <consputc>
    800038d8:	f41ff06f          	j	80003818 <__printf+0x440>
    800038dc:	02500513          	li	a0,37
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	914080e7          	jalr	-1772(ra) # 800031f4 <consputc>
    800038e8:	f31ff06f          	j	80003818 <__printf+0x440>
    800038ec:	00030513          	mv	a0,t1
    800038f0:	00000097          	auipc	ra,0x0
    800038f4:	7bc080e7          	jalr	1980(ra) # 800040ac <acquire>
    800038f8:	b4dff06f          	j	80003444 <__printf+0x6c>
    800038fc:	40c0053b          	negw	a0,a2
    80003900:	00a00713          	li	a4,10
    80003904:	02e576bb          	remuw	a3,a0,a4
    80003908:	00002d97          	auipc	s11,0x2
    8000390c:	900d8d93          	addi	s11,s11,-1792 # 80005208 <digits>
    80003910:	ff700593          	li	a1,-9
    80003914:	02069693          	slli	a3,a3,0x20
    80003918:	0206d693          	srli	a3,a3,0x20
    8000391c:	00dd86b3          	add	a3,s11,a3
    80003920:	0006c683          	lbu	a3,0(a3)
    80003924:	02e557bb          	divuw	a5,a0,a4
    80003928:	f8d40023          	sb	a3,-128(s0)
    8000392c:	10b65e63          	bge	a2,a1,80003a48 <__printf+0x670>
    80003930:	06300593          	li	a1,99
    80003934:	02e7f6bb          	remuw	a3,a5,a4
    80003938:	02069693          	slli	a3,a3,0x20
    8000393c:	0206d693          	srli	a3,a3,0x20
    80003940:	00dd86b3          	add	a3,s11,a3
    80003944:	0006c683          	lbu	a3,0(a3)
    80003948:	02e7d73b          	divuw	a4,a5,a4
    8000394c:	00200793          	li	a5,2
    80003950:	f8d400a3          	sb	a3,-127(s0)
    80003954:	bca5ece3          	bltu	a1,a0,8000352c <__printf+0x154>
    80003958:	ce5ff06f          	j	8000363c <__printf+0x264>
    8000395c:	40e007bb          	negw	a5,a4
    80003960:	00002d97          	auipc	s11,0x2
    80003964:	8a8d8d93          	addi	s11,s11,-1880 # 80005208 <digits>
    80003968:	00f7f693          	andi	a3,a5,15
    8000396c:	00dd86b3          	add	a3,s11,a3
    80003970:	0006c583          	lbu	a1,0(a3)
    80003974:	ff100613          	li	a2,-15
    80003978:	0047d69b          	srliw	a3,a5,0x4
    8000397c:	f8b40023          	sb	a1,-128(s0)
    80003980:	0047d59b          	srliw	a1,a5,0x4
    80003984:	0ac75e63          	bge	a4,a2,80003a40 <__printf+0x668>
    80003988:	00f6f693          	andi	a3,a3,15
    8000398c:	00dd86b3          	add	a3,s11,a3
    80003990:	0006c603          	lbu	a2,0(a3)
    80003994:	00f00693          	li	a3,15
    80003998:	0087d79b          	srliw	a5,a5,0x8
    8000399c:	f8c400a3          	sb	a2,-127(s0)
    800039a0:	d8b6e4e3          	bltu	a3,a1,80003728 <__printf+0x350>
    800039a4:	00200793          	li	a5,2
    800039a8:	e2dff06f          	j	800037d4 <__printf+0x3fc>
    800039ac:	00002c97          	auipc	s9,0x2
    800039b0:	83cc8c93          	addi	s9,s9,-1988 # 800051e8 <_ZZ12printIntegermE6digits+0x170>
    800039b4:	02800513          	li	a0,40
    800039b8:	ef1ff06f          	j	800038a8 <__printf+0x4d0>
    800039bc:	00700793          	li	a5,7
    800039c0:	00600c93          	li	s9,6
    800039c4:	e0dff06f          	j	800037d0 <__printf+0x3f8>
    800039c8:	00700793          	li	a5,7
    800039cc:	00600c93          	li	s9,6
    800039d0:	c69ff06f          	j	80003638 <__printf+0x260>
    800039d4:	00300793          	li	a5,3
    800039d8:	00200c93          	li	s9,2
    800039dc:	c5dff06f          	j	80003638 <__printf+0x260>
    800039e0:	00300793          	li	a5,3
    800039e4:	00200c93          	li	s9,2
    800039e8:	de9ff06f          	j	800037d0 <__printf+0x3f8>
    800039ec:	00400793          	li	a5,4
    800039f0:	00300c93          	li	s9,3
    800039f4:	dddff06f          	j	800037d0 <__printf+0x3f8>
    800039f8:	00400793          	li	a5,4
    800039fc:	00300c93          	li	s9,3
    80003a00:	c39ff06f          	j	80003638 <__printf+0x260>
    80003a04:	00500793          	li	a5,5
    80003a08:	00400c93          	li	s9,4
    80003a0c:	c2dff06f          	j	80003638 <__printf+0x260>
    80003a10:	00500793          	li	a5,5
    80003a14:	00400c93          	li	s9,4
    80003a18:	db9ff06f          	j	800037d0 <__printf+0x3f8>
    80003a1c:	00600793          	li	a5,6
    80003a20:	00500c93          	li	s9,5
    80003a24:	dadff06f          	j	800037d0 <__printf+0x3f8>
    80003a28:	00600793          	li	a5,6
    80003a2c:	00500c93          	li	s9,5
    80003a30:	c09ff06f          	j	80003638 <__printf+0x260>
    80003a34:	00800793          	li	a5,8
    80003a38:	00700c93          	li	s9,7
    80003a3c:	bfdff06f          	j	80003638 <__printf+0x260>
    80003a40:	00100793          	li	a5,1
    80003a44:	d91ff06f          	j	800037d4 <__printf+0x3fc>
    80003a48:	00100793          	li	a5,1
    80003a4c:	bf1ff06f          	j	8000363c <__printf+0x264>
    80003a50:	00900793          	li	a5,9
    80003a54:	00800c93          	li	s9,8
    80003a58:	be1ff06f          	j	80003638 <__printf+0x260>
    80003a5c:	00001517          	auipc	a0,0x1
    80003a60:	79450513          	addi	a0,a0,1940 # 800051f0 <_ZZ12printIntegermE6digits+0x178>
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	918080e7          	jalr	-1768(ra) # 8000337c <panic>

0000000080003a6c <printfinit>:
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00813823          	sd	s0,16(sp)
    80003a74:	00913423          	sd	s1,8(sp)
    80003a78:	00113c23          	sd	ra,24(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	00003497          	auipc	s1,0x3
    80003a84:	69048493          	addi	s1,s1,1680 # 80007110 <pr>
    80003a88:	00048513          	mv	a0,s1
    80003a8c:	00001597          	auipc	a1,0x1
    80003a90:	77458593          	addi	a1,a1,1908 # 80005200 <_ZZ12printIntegermE6digits+0x188>
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	5f4080e7          	jalr	1524(ra) # 80004088 <initlock>
    80003a9c:	01813083          	ld	ra,24(sp)
    80003aa0:	01013403          	ld	s0,16(sp)
    80003aa4:	0004ac23          	sw	zero,24(s1)
    80003aa8:	00813483          	ld	s1,8(sp)
    80003aac:	02010113          	addi	sp,sp,32
    80003ab0:	00008067          	ret

0000000080003ab4 <uartinit>:
    80003ab4:	ff010113          	addi	sp,sp,-16
    80003ab8:	00813423          	sd	s0,8(sp)
    80003abc:	01010413          	addi	s0,sp,16
    80003ac0:	100007b7          	lui	a5,0x10000
    80003ac4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003ac8:	f8000713          	li	a4,-128
    80003acc:	00e781a3          	sb	a4,3(a5)
    80003ad0:	00300713          	li	a4,3
    80003ad4:	00e78023          	sb	a4,0(a5)
    80003ad8:	000780a3          	sb	zero,1(a5)
    80003adc:	00e781a3          	sb	a4,3(a5)
    80003ae0:	00700693          	li	a3,7
    80003ae4:	00d78123          	sb	a3,2(a5)
    80003ae8:	00e780a3          	sb	a4,1(a5)
    80003aec:	00813403          	ld	s0,8(sp)
    80003af0:	01010113          	addi	sp,sp,16
    80003af4:	00008067          	ret

0000000080003af8 <uartputc>:
    80003af8:	00002797          	auipc	a5,0x2
    80003afc:	3c07a783          	lw	a5,960(a5) # 80005eb8 <panicked>
    80003b00:	00078463          	beqz	a5,80003b08 <uartputc+0x10>
    80003b04:	0000006f          	j	80003b04 <uartputc+0xc>
    80003b08:	fd010113          	addi	sp,sp,-48
    80003b0c:	02813023          	sd	s0,32(sp)
    80003b10:	00913c23          	sd	s1,24(sp)
    80003b14:	01213823          	sd	s2,16(sp)
    80003b18:	01313423          	sd	s3,8(sp)
    80003b1c:	02113423          	sd	ra,40(sp)
    80003b20:	03010413          	addi	s0,sp,48
    80003b24:	00002917          	auipc	s2,0x2
    80003b28:	39c90913          	addi	s2,s2,924 # 80005ec0 <uart_tx_r>
    80003b2c:	00093783          	ld	a5,0(s2)
    80003b30:	00002497          	auipc	s1,0x2
    80003b34:	39848493          	addi	s1,s1,920 # 80005ec8 <uart_tx_w>
    80003b38:	0004b703          	ld	a4,0(s1)
    80003b3c:	02078693          	addi	a3,a5,32
    80003b40:	00050993          	mv	s3,a0
    80003b44:	02e69c63          	bne	a3,a4,80003b7c <uartputc+0x84>
    80003b48:	00001097          	auipc	ra,0x1
    80003b4c:	834080e7          	jalr	-1996(ra) # 8000437c <push_on>
    80003b50:	00093783          	ld	a5,0(s2)
    80003b54:	0004b703          	ld	a4,0(s1)
    80003b58:	02078793          	addi	a5,a5,32
    80003b5c:	00e79463          	bne	a5,a4,80003b64 <uartputc+0x6c>
    80003b60:	0000006f          	j	80003b60 <uartputc+0x68>
    80003b64:	00001097          	auipc	ra,0x1
    80003b68:	88c080e7          	jalr	-1908(ra) # 800043f0 <pop_on>
    80003b6c:	00093783          	ld	a5,0(s2)
    80003b70:	0004b703          	ld	a4,0(s1)
    80003b74:	02078693          	addi	a3,a5,32
    80003b78:	fce688e3          	beq	a3,a4,80003b48 <uartputc+0x50>
    80003b7c:	01f77693          	andi	a3,a4,31
    80003b80:	00003597          	auipc	a1,0x3
    80003b84:	5b058593          	addi	a1,a1,1456 # 80007130 <uart_tx_buf>
    80003b88:	00d586b3          	add	a3,a1,a3
    80003b8c:	00170713          	addi	a4,a4,1
    80003b90:	01368023          	sb	s3,0(a3)
    80003b94:	00e4b023          	sd	a4,0(s1)
    80003b98:	10000637          	lui	a2,0x10000
    80003b9c:	02f71063          	bne	a4,a5,80003bbc <uartputc+0xc4>
    80003ba0:	0340006f          	j	80003bd4 <uartputc+0xdc>
    80003ba4:	00074703          	lbu	a4,0(a4)
    80003ba8:	00f93023          	sd	a5,0(s2)
    80003bac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003bb0:	00093783          	ld	a5,0(s2)
    80003bb4:	0004b703          	ld	a4,0(s1)
    80003bb8:	00f70e63          	beq	a4,a5,80003bd4 <uartputc+0xdc>
    80003bbc:	00564683          	lbu	a3,5(a2)
    80003bc0:	01f7f713          	andi	a4,a5,31
    80003bc4:	00e58733          	add	a4,a1,a4
    80003bc8:	0206f693          	andi	a3,a3,32
    80003bcc:	00178793          	addi	a5,a5,1
    80003bd0:	fc069ae3          	bnez	a3,80003ba4 <uartputc+0xac>
    80003bd4:	02813083          	ld	ra,40(sp)
    80003bd8:	02013403          	ld	s0,32(sp)
    80003bdc:	01813483          	ld	s1,24(sp)
    80003be0:	01013903          	ld	s2,16(sp)
    80003be4:	00813983          	ld	s3,8(sp)
    80003be8:	03010113          	addi	sp,sp,48
    80003bec:	00008067          	ret

0000000080003bf0 <uartputc_sync>:
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00813423          	sd	s0,8(sp)
    80003bf8:	01010413          	addi	s0,sp,16
    80003bfc:	00002717          	auipc	a4,0x2
    80003c00:	2bc72703          	lw	a4,700(a4) # 80005eb8 <panicked>
    80003c04:	02071663          	bnez	a4,80003c30 <uartputc_sync+0x40>
    80003c08:	00050793          	mv	a5,a0
    80003c0c:	100006b7          	lui	a3,0x10000
    80003c10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003c14:	02077713          	andi	a4,a4,32
    80003c18:	fe070ce3          	beqz	a4,80003c10 <uartputc_sync+0x20>
    80003c1c:	0ff7f793          	andi	a5,a5,255
    80003c20:	00f68023          	sb	a5,0(a3)
    80003c24:	00813403          	ld	s0,8(sp)
    80003c28:	01010113          	addi	sp,sp,16
    80003c2c:	00008067          	ret
    80003c30:	0000006f          	j	80003c30 <uartputc_sync+0x40>

0000000080003c34 <uartstart>:
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00813423          	sd	s0,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    80003c40:	00002617          	auipc	a2,0x2
    80003c44:	28060613          	addi	a2,a2,640 # 80005ec0 <uart_tx_r>
    80003c48:	00002517          	auipc	a0,0x2
    80003c4c:	28050513          	addi	a0,a0,640 # 80005ec8 <uart_tx_w>
    80003c50:	00063783          	ld	a5,0(a2)
    80003c54:	00053703          	ld	a4,0(a0)
    80003c58:	04f70263          	beq	a4,a5,80003c9c <uartstart+0x68>
    80003c5c:	100005b7          	lui	a1,0x10000
    80003c60:	00003817          	auipc	a6,0x3
    80003c64:	4d080813          	addi	a6,a6,1232 # 80007130 <uart_tx_buf>
    80003c68:	01c0006f          	j	80003c84 <uartstart+0x50>
    80003c6c:	0006c703          	lbu	a4,0(a3)
    80003c70:	00f63023          	sd	a5,0(a2)
    80003c74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c78:	00063783          	ld	a5,0(a2)
    80003c7c:	00053703          	ld	a4,0(a0)
    80003c80:	00f70e63          	beq	a4,a5,80003c9c <uartstart+0x68>
    80003c84:	01f7f713          	andi	a4,a5,31
    80003c88:	00e806b3          	add	a3,a6,a4
    80003c8c:	0055c703          	lbu	a4,5(a1)
    80003c90:	00178793          	addi	a5,a5,1
    80003c94:	02077713          	andi	a4,a4,32
    80003c98:	fc071ae3          	bnez	a4,80003c6c <uartstart+0x38>
    80003c9c:	00813403          	ld	s0,8(sp)
    80003ca0:	01010113          	addi	sp,sp,16
    80003ca4:	00008067          	ret

0000000080003ca8 <uartgetc>:
    80003ca8:	ff010113          	addi	sp,sp,-16
    80003cac:	00813423          	sd	s0,8(sp)
    80003cb0:	01010413          	addi	s0,sp,16
    80003cb4:	10000737          	lui	a4,0x10000
    80003cb8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003cbc:	0017f793          	andi	a5,a5,1
    80003cc0:	00078c63          	beqz	a5,80003cd8 <uartgetc+0x30>
    80003cc4:	00074503          	lbu	a0,0(a4)
    80003cc8:	0ff57513          	andi	a0,a0,255
    80003ccc:	00813403          	ld	s0,8(sp)
    80003cd0:	01010113          	addi	sp,sp,16
    80003cd4:	00008067          	ret
    80003cd8:	fff00513          	li	a0,-1
    80003cdc:	ff1ff06f          	j	80003ccc <uartgetc+0x24>

0000000080003ce0 <uartintr>:
    80003ce0:	100007b7          	lui	a5,0x10000
    80003ce4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003ce8:	0017f793          	andi	a5,a5,1
    80003cec:	0a078463          	beqz	a5,80003d94 <uartintr+0xb4>
    80003cf0:	fe010113          	addi	sp,sp,-32
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	00113c23          	sd	ra,24(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	100004b7          	lui	s1,0x10000
    80003d08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003d0c:	0ff57513          	andi	a0,a0,255
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	534080e7          	jalr	1332(ra) # 80003244 <consoleintr>
    80003d18:	0054c783          	lbu	a5,5(s1)
    80003d1c:	0017f793          	andi	a5,a5,1
    80003d20:	fe0794e3          	bnez	a5,80003d08 <uartintr+0x28>
    80003d24:	00002617          	auipc	a2,0x2
    80003d28:	19c60613          	addi	a2,a2,412 # 80005ec0 <uart_tx_r>
    80003d2c:	00002517          	auipc	a0,0x2
    80003d30:	19c50513          	addi	a0,a0,412 # 80005ec8 <uart_tx_w>
    80003d34:	00063783          	ld	a5,0(a2)
    80003d38:	00053703          	ld	a4,0(a0)
    80003d3c:	04f70263          	beq	a4,a5,80003d80 <uartintr+0xa0>
    80003d40:	100005b7          	lui	a1,0x10000
    80003d44:	00003817          	auipc	a6,0x3
    80003d48:	3ec80813          	addi	a6,a6,1004 # 80007130 <uart_tx_buf>
    80003d4c:	01c0006f          	j	80003d68 <uartintr+0x88>
    80003d50:	0006c703          	lbu	a4,0(a3)
    80003d54:	00f63023          	sd	a5,0(a2)
    80003d58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d5c:	00063783          	ld	a5,0(a2)
    80003d60:	00053703          	ld	a4,0(a0)
    80003d64:	00f70e63          	beq	a4,a5,80003d80 <uartintr+0xa0>
    80003d68:	01f7f713          	andi	a4,a5,31
    80003d6c:	00e806b3          	add	a3,a6,a4
    80003d70:	0055c703          	lbu	a4,5(a1)
    80003d74:	00178793          	addi	a5,a5,1
    80003d78:	02077713          	andi	a4,a4,32
    80003d7c:	fc071ae3          	bnez	a4,80003d50 <uartintr+0x70>
    80003d80:	01813083          	ld	ra,24(sp)
    80003d84:	01013403          	ld	s0,16(sp)
    80003d88:	00813483          	ld	s1,8(sp)
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret
    80003d94:	00002617          	auipc	a2,0x2
    80003d98:	12c60613          	addi	a2,a2,300 # 80005ec0 <uart_tx_r>
    80003d9c:	00002517          	auipc	a0,0x2
    80003da0:	12c50513          	addi	a0,a0,300 # 80005ec8 <uart_tx_w>
    80003da4:	00063783          	ld	a5,0(a2)
    80003da8:	00053703          	ld	a4,0(a0)
    80003dac:	04f70263          	beq	a4,a5,80003df0 <uartintr+0x110>
    80003db0:	100005b7          	lui	a1,0x10000
    80003db4:	00003817          	auipc	a6,0x3
    80003db8:	37c80813          	addi	a6,a6,892 # 80007130 <uart_tx_buf>
    80003dbc:	01c0006f          	j	80003dd8 <uartintr+0xf8>
    80003dc0:	0006c703          	lbu	a4,0(a3)
    80003dc4:	00f63023          	sd	a5,0(a2)
    80003dc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003dcc:	00063783          	ld	a5,0(a2)
    80003dd0:	00053703          	ld	a4,0(a0)
    80003dd4:	02f70063          	beq	a4,a5,80003df4 <uartintr+0x114>
    80003dd8:	01f7f713          	andi	a4,a5,31
    80003ddc:	00e806b3          	add	a3,a6,a4
    80003de0:	0055c703          	lbu	a4,5(a1)
    80003de4:	00178793          	addi	a5,a5,1
    80003de8:	02077713          	andi	a4,a4,32
    80003dec:	fc071ae3          	bnez	a4,80003dc0 <uartintr+0xe0>
    80003df0:	00008067          	ret
    80003df4:	00008067          	ret

0000000080003df8 <kinit>:
    80003df8:	fc010113          	addi	sp,sp,-64
    80003dfc:	02913423          	sd	s1,40(sp)
    80003e00:	fffff7b7          	lui	a5,0xfffff
    80003e04:	00004497          	auipc	s1,0x4
    80003e08:	34b48493          	addi	s1,s1,843 # 8000814f <end+0xfff>
    80003e0c:	02813823          	sd	s0,48(sp)
    80003e10:	01313c23          	sd	s3,24(sp)
    80003e14:	00f4f4b3          	and	s1,s1,a5
    80003e18:	02113c23          	sd	ra,56(sp)
    80003e1c:	03213023          	sd	s2,32(sp)
    80003e20:	01413823          	sd	s4,16(sp)
    80003e24:	01513423          	sd	s5,8(sp)
    80003e28:	04010413          	addi	s0,sp,64
    80003e2c:	000017b7          	lui	a5,0x1
    80003e30:	01100993          	li	s3,17
    80003e34:	00f487b3          	add	a5,s1,a5
    80003e38:	01b99993          	slli	s3,s3,0x1b
    80003e3c:	06f9e063          	bltu	s3,a5,80003e9c <kinit+0xa4>
    80003e40:	00003a97          	auipc	s5,0x3
    80003e44:	310a8a93          	addi	s5,s5,784 # 80007150 <end>
    80003e48:	0754ec63          	bltu	s1,s5,80003ec0 <kinit+0xc8>
    80003e4c:	0734fa63          	bgeu	s1,s3,80003ec0 <kinit+0xc8>
    80003e50:	00088a37          	lui	s4,0x88
    80003e54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003e58:	00002917          	auipc	s2,0x2
    80003e5c:	07890913          	addi	s2,s2,120 # 80005ed0 <kmem>
    80003e60:	00ca1a13          	slli	s4,s4,0xc
    80003e64:	0140006f          	j	80003e78 <kinit+0x80>
    80003e68:	000017b7          	lui	a5,0x1
    80003e6c:	00f484b3          	add	s1,s1,a5
    80003e70:	0554e863          	bltu	s1,s5,80003ec0 <kinit+0xc8>
    80003e74:	0534f663          	bgeu	s1,s3,80003ec0 <kinit+0xc8>
    80003e78:	00001637          	lui	a2,0x1
    80003e7c:	00100593          	li	a1,1
    80003e80:	00048513          	mv	a0,s1
    80003e84:	00000097          	auipc	ra,0x0
    80003e88:	5e4080e7          	jalr	1508(ra) # 80004468 <__memset>
    80003e8c:	00093783          	ld	a5,0(s2)
    80003e90:	00f4b023          	sd	a5,0(s1)
    80003e94:	00993023          	sd	s1,0(s2)
    80003e98:	fd4498e3          	bne	s1,s4,80003e68 <kinit+0x70>
    80003e9c:	03813083          	ld	ra,56(sp)
    80003ea0:	03013403          	ld	s0,48(sp)
    80003ea4:	02813483          	ld	s1,40(sp)
    80003ea8:	02013903          	ld	s2,32(sp)
    80003eac:	01813983          	ld	s3,24(sp)
    80003eb0:	01013a03          	ld	s4,16(sp)
    80003eb4:	00813a83          	ld	s5,8(sp)
    80003eb8:	04010113          	addi	sp,sp,64
    80003ebc:	00008067          	ret
    80003ec0:	00001517          	auipc	a0,0x1
    80003ec4:	36050513          	addi	a0,a0,864 # 80005220 <digits+0x18>
    80003ec8:	fffff097          	auipc	ra,0xfffff
    80003ecc:	4b4080e7          	jalr	1204(ra) # 8000337c <panic>

0000000080003ed0 <freerange>:
    80003ed0:	fc010113          	addi	sp,sp,-64
    80003ed4:	000017b7          	lui	a5,0x1
    80003ed8:	02913423          	sd	s1,40(sp)
    80003edc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003ee0:	009504b3          	add	s1,a0,s1
    80003ee4:	fffff537          	lui	a0,0xfffff
    80003ee8:	02813823          	sd	s0,48(sp)
    80003eec:	02113c23          	sd	ra,56(sp)
    80003ef0:	03213023          	sd	s2,32(sp)
    80003ef4:	01313c23          	sd	s3,24(sp)
    80003ef8:	01413823          	sd	s4,16(sp)
    80003efc:	01513423          	sd	s5,8(sp)
    80003f00:	01613023          	sd	s6,0(sp)
    80003f04:	04010413          	addi	s0,sp,64
    80003f08:	00a4f4b3          	and	s1,s1,a0
    80003f0c:	00f487b3          	add	a5,s1,a5
    80003f10:	06f5e463          	bltu	a1,a5,80003f78 <freerange+0xa8>
    80003f14:	00003a97          	auipc	s5,0x3
    80003f18:	23ca8a93          	addi	s5,s5,572 # 80007150 <end>
    80003f1c:	0954e263          	bltu	s1,s5,80003fa0 <freerange+0xd0>
    80003f20:	01100993          	li	s3,17
    80003f24:	01b99993          	slli	s3,s3,0x1b
    80003f28:	0734fc63          	bgeu	s1,s3,80003fa0 <freerange+0xd0>
    80003f2c:	00058a13          	mv	s4,a1
    80003f30:	00002917          	auipc	s2,0x2
    80003f34:	fa090913          	addi	s2,s2,-96 # 80005ed0 <kmem>
    80003f38:	00002b37          	lui	s6,0x2
    80003f3c:	0140006f          	j	80003f50 <freerange+0x80>
    80003f40:	000017b7          	lui	a5,0x1
    80003f44:	00f484b3          	add	s1,s1,a5
    80003f48:	0554ec63          	bltu	s1,s5,80003fa0 <freerange+0xd0>
    80003f4c:	0534fa63          	bgeu	s1,s3,80003fa0 <freerange+0xd0>
    80003f50:	00001637          	lui	a2,0x1
    80003f54:	00100593          	li	a1,1
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	00000097          	auipc	ra,0x0
    80003f60:	50c080e7          	jalr	1292(ra) # 80004468 <__memset>
    80003f64:	00093703          	ld	a4,0(s2)
    80003f68:	016487b3          	add	a5,s1,s6
    80003f6c:	00e4b023          	sd	a4,0(s1)
    80003f70:	00993023          	sd	s1,0(s2)
    80003f74:	fcfa76e3          	bgeu	s4,a5,80003f40 <freerange+0x70>
    80003f78:	03813083          	ld	ra,56(sp)
    80003f7c:	03013403          	ld	s0,48(sp)
    80003f80:	02813483          	ld	s1,40(sp)
    80003f84:	02013903          	ld	s2,32(sp)
    80003f88:	01813983          	ld	s3,24(sp)
    80003f8c:	01013a03          	ld	s4,16(sp)
    80003f90:	00813a83          	ld	s5,8(sp)
    80003f94:	00013b03          	ld	s6,0(sp)
    80003f98:	04010113          	addi	sp,sp,64
    80003f9c:	00008067          	ret
    80003fa0:	00001517          	auipc	a0,0x1
    80003fa4:	28050513          	addi	a0,a0,640 # 80005220 <digits+0x18>
    80003fa8:	fffff097          	auipc	ra,0xfffff
    80003fac:	3d4080e7          	jalr	980(ra) # 8000337c <panic>

0000000080003fb0 <kfree>:
    80003fb0:	fe010113          	addi	sp,sp,-32
    80003fb4:	00813823          	sd	s0,16(sp)
    80003fb8:	00113c23          	sd	ra,24(sp)
    80003fbc:	00913423          	sd	s1,8(sp)
    80003fc0:	02010413          	addi	s0,sp,32
    80003fc4:	03451793          	slli	a5,a0,0x34
    80003fc8:	04079c63          	bnez	a5,80004020 <kfree+0x70>
    80003fcc:	00003797          	auipc	a5,0x3
    80003fd0:	18478793          	addi	a5,a5,388 # 80007150 <end>
    80003fd4:	00050493          	mv	s1,a0
    80003fd8:	04f56463          	bltu	a0,a5,80004020 <kfree+0x70>
    80003fdc:	01100793          	li	a5,17
    80003fe0:	01b79793          	slli	a5,a5,0x1b
    80003fe4:	02f57e63          	bgeu	a0,a5,80004020 <kfree+0x70>
    80003fe8:	00001637          	lui	a2,0x1
    80003fec:	00100593          	li	a1,1
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	478080e7          	jalr	1144(ra) # 80004468 <__memset>
    80003ff8:	00002797          	auipc	a5,0x2
    80003ffc:	ed878793          	addi	a5,a5,-296 # 80005ed0 <kmem>
    80004000:	0007b703          	ld	a4,0(a5)
    80004004:	01813083          	ld	ra,24(sp)
    80004008:	01013403          	ld	s0,16(sp)
    8000400c:	00e4b023          	sd	a4,0(s1)
    80004010:	0097b023          	sd	s1,0(a5)
    80004014:	00813483          	ld	s1,8(sp)
    80004018:	02010113          	addi	sp,sp,32
    8000401c:	00008067          	ret
    80004020:	00001517          	auipc	a0,0x1
    80004024:	20050513          	addi	a0,a0,512 # 80005220 <digits+0x18>
    80004028:	fffff097          	auipc	ra,0xfffff
    8000402c:	354080e7          	jalr	852(ra) # 8000337c <panic>

0000000080004030 <kalloc>:
    80004030:	fe010113          	addi	sp,sp,-32
    80004034:	00813823          	sd	s0,16(sp)
    80004038:	00913423          	sd	s1,8(sp)
    8000403c:	00113c23          	sd	ra,24(sp)
    80004040:	02010413          	addi	s0,sp,32
    80004044:	00002797          	auipc	a5,0x2
    80004048:	e8c78793          	addi	a5,a5,-372 # 80005ed0 <kmem>
    8000404c:	0007b483          	ld	s1,0(a5)
    80004050:	02048063          	beqz	s1,80004070 <kalloc+0x40>
    80004054:	0004b703          	ld	a4,0(s1)
    80004058:	00001637          	lui	a2,0x1
    8000405c:	00500593          	li	a1,5
    80004060:	00048513          	mv	a0,s1
    80004064:	00e7b023          	sd	a4,0(a5)
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	400080e7          	jalr	1024(ra) # 80004468 <__memset>
    80004070:	01813083          	ld	ra,24(sp)
    80004074:	01013403          	ld	s0,16(sp)
    80004078:	00048513          	mv	a0,s1
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	02010113          	addi	sp,sp,32
    80004084:	00008067          	ret

0000000080004088 <initlock>:
    80004088:	ff010113          	addi	sp,sp,-16
    8000408c:	00813423          	sd	s0,8(sp)
    80004090:	01010413          	addi	s0,sp,16
    80004094:	00813403          	ld	s0,8(sp)
    80004098:	00b53423          	sd	a1,8(a0)
    8000409c:	00052023          	sw	zero,0(a0)
    800040a0:	00053823          	sd	zero,16(a0)
    800040a4:	01010113          	addi	sp,sp,16
    800040a8:	00008067          	ret

00000000800040ac <acquire>:
    800040ac:	fe010113          	addi	sp,sp,-32
    800040b0:	00813823          	sd	s0,16(sp)
    800040b4:	00913423          	sd	s1,8(sp)
    800040b8:	00113c23          	sd	ra,24(sp)
    800040bc:	01213023          	sd	s2,0(sp)
    800040c0:	02010413          	addi	s0,sp,32
    800040c4:	00050493          	mv	s1,a0
    800040c8:	10002973          	csrr	s2,sstatus
    800040cc:	100027f3          	csrr	a5,sstatus
    800040d0:	ffd7f793          	andi	a5,a5,-3
    800040d4:	10079073          	csrw	sstatus,a5
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	8e8080e7          	jalr	-1816(ra) # 800029c0 <mycpu>
    800040e0:	07852783          	lw	a5,120(a0)
    800040e4:	06078e63          	beqz	a5,80004160 <acquire+0xb4>
    800040e8:	fffff097          	auipc	ra,0xfffff
    800040ec:	8d8080e7          	jalr	-1832(ra) # 800029c0 <mycpu>
    800040f0:	07852783          	lw	a5,120(a0)
    800040f4:	0004a703          	lw	a4,0(s1)
    800040f8:	0017879b          	addiw	a5,a5,1
    800040fc:	06f52c23          	sw	a5,120(a0)
    80004100:	04071063          	bnez	a4,80004140 <acquire+0x94>
    80004104:	00100713          	li	a4,1
    80004108:	00070793          	mv	a5,a4
    8000410c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004110:	0007879b          	sext.w	a5,a5
    80004114:	fe079ae3          	bnez	a5,80004108 <acquire+0x5c>
    80004118:	0ff0000f          	fence
    8000411c:	fffff097          	auipc	ra,0xfffff
    80004120:	8a4080e7          	jalr	-1884(ra) # 800029c0 <mycpu>
    80004124:	01813083          	ld	ra,24(sp)
    80004128:	01013403          	ld	s0,16(sp)
    8000412c:	00a4b823          	sd	a0,16(s1)
    80004130:	00013903          	ld	s2,0(sp)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret
    80004140:	0104b903          	ld	s2,16(s1)
    80004144:	fffff097          	auipc	ra,0xfffff
    80004148:	87c080e7          	jalr	-1924(ra) # 800029c0 <mycpu>
    8000414c:	faa91ce3          	bne	s2,a0,80004104 <acquire+0x58>
    80004150:	00001517          	auipc	a0,0x1
    80004154:	0d850513          	addi	a0,a0,216 # 80005228 <digits+0x20>
    80004158:	fffff097          	auipc	ra,0xfffff
    8000415c:	224080e7          	jalr	548(ra) # 8000337c <panic>
    80004160:	00195913          	srli	s2,s2,0x1
    80004164:	fffff097          	auipc	ra,0xfffff
    80004168:	85c080e7          	jalr	-1956(ra) # 800029c0 <mycpu>
    8000416c:	00197913          	andi	s2,s2,1
    80004170:	07252e23          	sw	s2,124(a0)
    80004174:	f75ff06f          	j	800040e8 <acquire+0x3c>

0000000080004178 <release>:
    80004178:	fe010113          	addi	sp,sp,-32
    8000417c:	00813823          	sd	s0,16(sp)
    80004180:	00113c23          	sd	ra,24(sp)
    80004184:	00913423          	sd	s1,8(sp)
    80004188:	01213023          	sd	s2,0(sp)
    8000418c:	02010413          	addi	s0,sp,32
    80004190:	00052783          	lw	a5,0(a0)
    80004194:	00079a63          	bnez	a5,800041a8 <release+0x30>
    80004198:	00001517          	auipc	a0,0x1
    8000419c:	09850513          	addi	a0,a0,152 # 80005230 <digits+0x28>
    800041a0:	fffff097          	auipc	ra,0xfffff
    800041a4:	1dc080e7          	jalr	476(ra) # 8000337c <panic>
    800041a8:	01053903          	ld	s2,16(a0)
    800041ac:	00050493          	mv	s1,a0
    800041b0:	fffff097          	auipc	ra,0xfffff
    800041b4:	810080e7          	jalr	-2032(ra) # 800029c0 <mycpu>
    800041b8:	fea910e3          	bne	s2,a0,80004198 <release+0x20>
    800041bc:	0004b823          	sd	zero,16(s1)
    800041c0:	0ff0000f          	fence
    800041c4:	0f50000f          	fence	iorw,ow
    800041c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	7f4080e7          	jalr	2036(ra) # 800029c0 <mycpu>
    800041d4:	100027f3          	csrr	a5,sstatus
    800041d8:	0027f793          	andi	a5,a5,2
    800041dc:	04079a63          	bnez	a5,80004230 <release+0xb8>
    800041e0:	07852783          	lw	a5,120(a0)
    800041e4:	02f05e63          	blez	a5,80004220 <release+0xa8>
    800041e8:	fff7871b          	addiw	a4,a5,-1
    800041ec:	06e52c23          	sw	a4,120(a0)
    800041f0:	00071c63          	bnez	a4,80004208 <release+0x90>
    800041f4:	07c52783          	lw	a5,124(a0)
    800041f8:	00078863          	beqz	a5,80004208 <release+0x90>
    800041fc:	100027f3          	csrr	a5,sstatus
    80004200:	0027e793          	ori	a5,a5,2
    80004204:	10079073          	csrw	sstatus,a5
    80004208:	01813083          	ld	ra,24(sp)
    8000420c:	01013403          	ld	s0,16(sp)
    80004210:	00813483          	ld	s1,8(sp)
    80004214:	00013903          	ld	s2,0(sp)
    80004218:	02010113          	addi	sp,sp,32
    8000421c:	00008067          	ret
    80004220:	00001517          	auipc	a0,0x1
    80004224:	03050513          	addi	a0,a0,48 # 80005250 <digits+0x48>
    80004228:	fffff097          	auipc	ra,0xfffff
    8000422c:	154080e7          	jalr	340(ra) # 8000337c <panic>
    80004230:	00001517          	auipc	a0,0x1
    80004234:	00850513          	addi	a0,a0,8 # 80005238 <digits+0x30>
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	144080e7          	jalr	324(ra) # 8000337c <panic>

0000000080004240 <holding>:
    80004240:	00052783          	lw	a5,0(a0)
    80004244:	00079663          	bnez	a5,80004250 <holding+0x10>
    80004248:	00000513          	li	a0,0
    8000424c:	00008067          	ret
    80004250:	fe010113          	addi	sp,sp,-32
    80004254:	00813823          	sd	s0,16(sp)
    80004258:	00913423          	sd	s1,8(sp)
    8000425c:	00113c23          	sd	ra,24(sp)
    80004260:	02010413          	addi	s0,sp,32
    80004264:	01053483          	ld	s1,16(a0)
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	758080e7          	jalr	1880(ra) # 800029c0 <mycpu>
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	01013403          	ld	s0,16(sp)
    80004278:	40a48533          	sub	a0,s1,a0
    8000427c:	00153513          	seqz	a0,a0
    80004280:	00813483          	ld	s1,8(sp)
    80004284:	02010113          	addi	sp,sp,32
    80004288:	00008067          	ret

000000008000428c <push_off>:
    8000428c:	fe010113          	addi	sp,sp,-32
    80004290:	00813823          	sd	s0,16(sp)
    80004294:	00113c23          	sd	ra,24(sp)
    80004298:	00913423          	sd	s1,8(sp)
    8000429c:	02010413          	addi	s0,sp,32
    800042a0:	100024f3          	csrr	s1,sstatus
    800042a4:	100027f3          	csrr	a5,sstatus
    800042a8:	ffd7f793          	andi	a5,a5,-3
    800042ac:	10079073          	csrw	sstatus,a5
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	710080e7          	jalr	1808(ra) # 800029c0 <mycpu>
    800042b8:	07852783          	lw	a5,120(a0)
    800042bc:	02078663          	beqz	a5,800042e8 <push_off+0x5c>
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	700080e7          	jalr	1792(ra) # 800029c0 <mycpu>
    800042c8:	07852783          	lw	a5,120(a0)
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	01013403          	ld	s0,16(sp)
    800042d4:	0017879b          	addiw	a5,a5,1
    800042d8:	06f52c23          	sw	a5,120(a0)
    800042dc:	00813483          	ld	s1,8(sp)
    800042e0:	02010113          	addi	sp,sp,32
    800042e4:	00008067          	ret
    800042e8:	0014d493          	srli	s1,s1,0x1
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	6d4080e7          	jalr	1748(ra) # 800029c0 <mycpu>
    800042f4:	0014f493          	andi	s1,s1,1
    800042f8:	06952e23          	sw	s1,124(a0)
    800042fc:	fc5ff06f          	j	800042c0 <push_off+0x34>

0000000080004300 <pop_off>:
    80004300:	ff010113          	addi	sp,sp,-16
    80004304:	00813023          	sd	s0,0(sp)
    80004308:	00113423          	sd	ra,8(sp)
    8000430c:	01010413          	addi	s0,sp,16
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	6b0080e7          	jalr	1712(ra) # 800029c0 <mycpu>
    80004318:	100027f3          	csrr	a5,sstatus
    8000431c:	0027f793          	andi	a5,a5,2
    80004320:	04079663          	bnez	a5,8000436c <pop_off+0x6c>
    80004324:	07852783          	lw	a5,120(a0)
    80004328:	02f05a63          	blez	a5,8000435c <pop_off+0x5c>
    8000432c:	fff7871b          	addiw	a4,a5,-1
    80004330:	06e52c23          	sw	a4,120(a0)
    80004334:	00071c63          	bnez	a4,8000434c <pop_off+0x4c>
    80004338:	07c52783          	lw	a5,124(a0)
    8000433c:	00078863          	beqz	a5,8000434c <pop_off+0x4c>
    80004340:	100027f3          	csrr	a5,sstatus
    80004344:	0027e793          	ori	a5,a5,2
    80004348:	10079073          	csrw	sstatus,a5
    8000434c:	00813083          	ld	ra,8(sp)
    80004350:	00013403          	ld	s0,0(sp)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret
    8000435c:	00001517          	auipc	a0,0x1
    80004360:	ef450513          	addi	a0,a0,-268 # 80005250 <digits+0x48>
    80004364:	fffff097          	auipc	ra,0xfffff
    80004368:	018080e7          	jalr	24(ra) # 8000337c <panic>
    8000436c:	00001517          	auipc	a0,0x1
    80004370:	ecc50513          	addi	a0,a0,-308 # 80005238 <digits+0x30>
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	008080e7          	jalr	8(ra) # 8000337c <panic>

000000008000437c <push_on>:
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00813823          	sd	s0,16(sp)
    80004384:	00113c23          	sd	ra,24(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	02010413          	addi	s0,sp,32
    80004390:	100024f3          	csrr	s1,sstatus
    80004394:	100027f3          	csrr	a5,sstatus
    80004398:	0027e793          	ori	a5,a5,2
    8000439c:	10079073          	csrw	sstatus,a5
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	620080e7          	jalr	1568(ra) # 800029c0 <mycpu>
    800043a8:	07852783          	lw	a5,120(a0)
    800043ac:	02078663          	beqz	a5,800043d8 <push_on+0x5c>
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	610080e7          	jalr	1552(ra) # 800029c0 <mycpu>
    800043b8:	07852783          	lw	a5,120(a0)
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	0017879b          	addiw	a5,a5,1
    800043c8:	06f52c23          	sw	a5,120(a0)
    800043cc:	00813483          	ld	s1,8(sp)
    800043d0:	02010113          	addi	sp,sp,32
    800043d4:	00008067          	ret
    800043d8:	0014d493          	srli	s1,s1,0x1
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	5e4080e7          	jalr	1508(ra) # 800029c0 <mycpu>
    800043e4:	0014f493          	andi	s1,s1,1
    800043e8:	06952e23          	sw	s1,124(a0)
    800043ec:	fc5ff06f          	j	800043b0 <push_on+0x34>

00000000800043f0 <pop_on>:
    800043f0:	ff010113          	addi	sp,sp,-16
    800043f4:	00813023          	sd	s0,0(sp)
    800043f8:	00113423          	sd	ra,8(sp)
    800043fc:	01010413          	addi	s0,sp,16
    80004400:	ffffe097          	auipc	ra,0xffffe
    80004404:	5c0080e7          	jalr	1472(ra) # 800029c0 <mycpu>
    80004408:	100027f3          	csrr	a5,sstatus
    8000440c:	0027f793          	andi	a5,a5,2
    80004410:	04078463          	beqz	a5,80004458 <pop_on+0x68>
    80004414:	07852783          	lw	a5,120(a0)
    80004418:	02f05863          	blez	a5,80004448 <pop_on+0x58>
    8000441c:	fff7879b          	addiw	a5,a5,-1
    80004420:	06f52c23          	sw	a5,120(a0)
    80004424:	07853783          	ld	a5,120(a0)
    80004428:	00079863          	bnez	a5,80004438 <pop_on+0x48>
    8000442c:	100027f3          	csrr	a5,sstatus
    80004430:	ffd7f793          	andi	a5,a5,-3
    80004434:	10079073          	csrw	sstatus,a5
    80004438:	00813083          	ld	ra,8(sp)
    8000443c:	00013403          	ld	s0,0(sp)
    80004440:	01010113          	addi	sp,sp,16
    80004444:	00008067          	ret
    80004448:	00001517          	auipc	a0,0x1
    8000444c:	e3050513          	addi	a0,a0,-464 # 80005278 <digits+0x70>
    80004450:	fffff097          	auipc	ra,0xfffff
    80004454:	f2c080e7          	jalr	-212(ra) # 8000337c <panic>
    80004458:	00001517          	auipc	a0,0x1
    8000445c:	e0050513          	addi	a0,a0,-512 # 80005258 <digits+0x50>
    80004460:	fffff097          	auipc	ra,0xfffff
    80004464:	f1c080e7          	jalr	-228(ra) # 8000337c <panic>

0000000080004468 <__memset>:
    80004468:	ff010113          	addi	sp,sp,-16
    8000446c:	00813423          	sd	s0,8(sp)
    80004470:	01010413          	addi	s0,sp,16
    80004474:	1a060e63          	beqz	a2,80004630 <__memset+0x1c8>
    80004478:	40a007b3          	neg	a5,a0
    8000447c:	0077f793          	andi	a5,a5,7
    80004480:	00778693          	addi	a3,a5,7
    80004484:	00b00813          	li	a6,11
    80004488:	0ff5f593          	andi	a1,a1,255
    8000448c:	fff6071b          	addiw	a4,a2,-1
    80004490:	1b06e663          	bltu	a3,a6,8000463c <__memset+0x1d4>
    80004494:	1cd76463          	bltu	a4,a3,8000465c <__memset+0x1f4>
    80004498:	1a078e63          	beqz	a5,80004654 <__memset+0x1ec>
    8000449c:	00b50023          	sb	a1,0(a0)
    800044a0:	00100713          	li	a4,1
    800044a4:	1ae78463          	beq	a5,a4,8000464c <__memset+0x1e4>
    800044a8:	00b500a3          	sb	a1,1(a0)
    800044ac:	00200713          	li	a4,2
    800044b0:	1ae78a63          	beq	a5,a4,80004664 <__memset+0x1fc>
    800044b4:	00b50123          	sb	a1,2(a0)
    800044b8:	00300713          	li	a4,3
    800044bc:	18e78463          	beq	a5,a4,80004644 <__memset+0x1dc>
    800044c0:	00b501a3          	sb	a1,3(a0)
    800044c4:	00400713          	li	a4,4
    800044c8:	1ae78263          	beq	a5,a4,8000466c <__memset+0x204>
    800044cc:	00b50223          	sb	a1,4(a0)
    800044d0:	00500713          	li	a4,5
    800044d4:	1ae78063          	beq	a5,a4,80004674 <__memset+0x20c>
    800044d8:	00b502a3          	sb	a1,5(a0)
    800044dc:	00700713          	li	a4,7
    800044e0:	18e79e63          	bne	a5,a4,8000467c <__memset+0x214>
    800044e4:	00b50323          	sb	a1,6(a0)
    800044e8:	00700e93          	li	t4,7
    800044ec:	00859713          	slli	a4,a1,0x8
    800044f0:	00e5e733          	or	a4,a1,a4
    800044f4:	01059e13          	slli	t3,a1,0x10
    800044f8:	01c76e33          	or	t3,a4,t3
    800044fc:	01859313          	slli	t1,a1,0x18
    80004500:	006e6333          	or	t1,t3,t1
    80004504:	02059893          	slli	a7,a1,0x20
    80004508:	40f60e3b          	subw	t3,a2,a5
    8000450c:	011368b3          	or	a7,t1,a7
    80004510:	02859813          	slli	a6,a1,0x28
    80004514:	0108e833          	or	a6,a7,a6
    80004518:	03059693          	slli	a3,a1,0x30
    8000451c:	003e589b          	srliw	a7,t3,0x3
    80004520:	00d866b3          	or	a3,a6,a3
    80004524:	03859713          	slli	a4,a1,0x38
    80004528:	00389813          	slli	a6,a7,0x3
    8000452c:	00f507b3          	add	a5,a0,a5
    80004530:	00e6e733          	or	a4,a3,a4
    80004534:	000e089b          	sext.w	a7,t3
    80004538:	00f806b3          	add	a3,a6,a5
    8000453c:	00e7b023          	sd	a4,0(a5)
    80004540:	00878793          	addi	a5,a5,8
    80004544:	fed79ce3          	bne	a5,a3,8000453c <__memset+0xd4>
    80004548:	ff8e7793          	andi	a5,t3,-8
    8000454c:	0007871b          	sext.w	a4,a5
    80004550:	01d787bb          	addw	a5,a5,t4
    80004554:	0ce88e63          	beq	a7,a4,80004630 <__memset+0x1c8>
    80004558:	00f50733          	add	a4,a0,a5
    8000455c:	00b70023          	sb	a1,0(a4)
    80004560:	0017871b          	addiw	a4,a5,1
    80004564:	0cc77663          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    80004568:	00e50733          	add	a4,a0,a4
    8000456c:	00b70023          	sb	a1,0(a4)
    80004570:	0027871b          	addiw	a4,a5,2
    80004574:	0ac77e63          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    80004578:	00e50733          	add	a4,a0,a4
    8000457c:	00b70023          	sb	a1,0(a4)
    80004580:	0037871b          	addiw	a4,a5,3
    80004584:	0ac77663          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    80004588:	00e50733          	add	a4,a0,a4
    8000458c:	00b70023          	sb	a1,0(a4)
    80004590:	0047871b          	addiw	a4,a5,4
    80004594:	08c77e63          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    80004598:	00e50733          	add	a4,a0,a4
    8000459c:	00b70023          	sb	a1,0(a4)
    800045a0:	0057871b          	addiw	a4,a5,5
    800045a4:	08c77663          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    800045a8:	00e50733          	add	a4,a0,a4
    800045ac:	00b70023          	sb	a1,0(a4)
    800045b0:	0067871b          	addiw	a4,a5,6
    800045b4:	06c77e63          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    800045b8:	00e50733          	add	a4,a0,a4
    800045bc:	00b70023          	sb	a1,0(a4)
    800045c0:	0077871b          	addiw	a4,a5,7
    800045c4:	06c77663          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    800045c8:	00e50733          	add	a4,a0,a4
    800045cc:	00b70023          	sb	a1,0(a4)
    800045d0:	0087871b          	addiw	a4,a5,8
    800045d4:	04c77e63          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    800045d8:	00e50733          	add	a4,a0,a4
    800045dc:	00b70023          	sb	a1,0(a4)
    800045e0:	0097871b          	addiw	a4,a5,9
    800045e4:	04c77663          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    800045e8:	00e50733          	add	a4,a0,a4
    800045ec:	00b70023          	sb	a1,0(a4)
    800045f0:	00a7871b          	addiw	a4,a5,10
    800045f4:	02c77e63          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00b70023          	sb	a1,0(a4)
    80004600:	00b7871b          	addiw	a4,a5,11
    80004604:	02c77663          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    80004608:	00e50733          	add	a4,a0,a4
    8000460c:	00b70023          	sb	a1,0(a4)
    80004610:	00c7871b          	addiw	a4,a5,12
    80004614:	00c77e63          	bgeu	a4,a2,80004630 <__memset+0x1c8>
    80004618:	00e50733          	add	a4,a0,a4
    8000461c:	00b70023          	sb	a1,0(a4)
    80004620:	00d7879b          	addiw	a5,a5,13
    80004624:	00c7f663          	bgeu	a5,a2,80004630 <__memset+0x1c8>
    80004628:	00f507b3          	add	a5,a0,a5
    8000462c:	00b78023          	sb	a1,0(a5)
    80004630:	00813403          	ld	s0,8(sp)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret
    8000463c:	00b00693          	li	a3,11
    80004640:	e55ff06f          	j	80004494 <__memset+0x2c>
    80004644:	00300e93          	li	t4,3
    80004648:	ea5ff06f          	j	800044ec <__memset+0x84>
    8000464c:	00100e93          	li	t4,1
    80004650:	e9dff06f          	j	800044ec <__memset+0x84>
    80004654:	00000e93          	li	t4,0
    80004658:	e95ff06f          	j	800044ec <__memset+0x84>
    8000465c:	00000793          	li	a5,0
    80004660:	ef9ff06f          	j	80004558 <__memset+0xf0>
    80004664:	00200e93          	li	t4,2
    80004668:	e85ff06f          	j	800044ec <__memset+0x84>
    8000466c:	00400e93          	li	t4,4
    80004670:	e7dff06f          	j	800044ec <__memset+0x84>
    80004674:	00500e93          	li	t4,5
    80004678:	e75ff06f          	j	800044ec <__memset+0x84>
    8000467c:	00600e93          	li	t4,6
    80004680:	e6dff06f          	j	800044ec <__memset+0x84>

0000000080004684 <__memmove>:
    80004684:	ff010113          	addi	sp,sp,-16
    80004688:	00813423          	sd	s0,8(sp)
    8000468c:	01010413          	addi	s0,sp,16
    80004690:	0e060863          	beqz	a2,80004780 <__memmove+0xfc>
    80004694:	fff6069b          	addiw	a3,a2,-1
    80004698:	0006881b          	sext.w	a6,a3
    8000469c:	0ea5e863          	bltu	a1,a0,8000478c <__memmove+0x108>
    800046a0:	00758713          	addi	a4,a1,7
    800046a4:	00a5e7b3          	or	a5,a1,a0
    800046a8:	40a70733          	sub	a4,a4,a0
    800046ac:	0077f793          	andi	a5,a5,7
    800046b0:	00f73713          	sltiu	a4,a4,15
    800046b4:	00174713          	xori	a4,a4,1
    800046b8:	0017b793          	seqz	a5,a5
    800046bc:	00e7f7b3          	and	a5,a5,a4
    800046c0:	10078863          	beqz	a5,800047d0 <__memmove+0x14c>
    800046c4:	00900793          	li	a5,9
    800046c8:	1107f463          	bgeu	a5,a6,800047d0 <__memmove+0x14c>
    800046cc:	0036581b          	srliw	a6,a2,0x3
    800046d0:	fff8081b          	addiw	a6,a6,-1
    800046d4:	02081813          	slli	a6,a6,0x20
    800046d8:	01d85893          	srli	a7,a6,0x1d
    800046dc:	00858813          	addi	a6,a1,8
    800046e0:	00058793          	mv	a5,a1
    800046e4:	00050713          	mv	a4,a0
    800046e8:	01088833          	add	a6,a7,a6
    800046ec:	0007b883          	ld	a7,0(a5)
    800046f0:	00878793          	addi	a5,a5,8
    800046f4:	00870713          	addi	a4,a4,8
    800046f8:	ff173c23          	sd	a7,-8(a4)
    800046fc:	ff0798e3          	bne	a5,a6,800046ec <__memmove+0x68>
    80004700:	ff867713          	andi	a4,a2,-8
    80004704:	02071793          	slli	a5,a4,0x20
    80004708:	0207d793          	srli	a5,a5,0x20
    8000470c:	00f585b3          	add	a1,a1,a5
    80004710:	40e686bb          	subw	a3,a3,a4
    80004714:	00f507b3          	add	a5,a0,a5
    80004718:	06e60463          	beq	a2,a4,80004780 <__memmove+0xfc>
    8000471c:	0005c703          	lbu	a4,0(a1)
    80004720:	00e78023          	sb	a4,0(a5)
    80004724:	04068e63          	beqz	a3,80004780 <__memmove+0xfc>
    80004728:	0015c603          	lbu	a2,1(a1)
    8000472c:	00100713          	li	a4,1
    80004730:	00c780a3          	sb	a2,1(a5)
    80004734:	04e68663          	beq	a3,a4,80004780 <__memmove+0xfc>
    80004738:	0025c603          	lbu	a2,2(a1)
    8000473c:	00200713          	li	a4,2
    80004740:	00c78123          	sb	a2,2(a5)
    80004744:	02e68e63          	beq	a3,a4,80004780 <__memmove+0xfc>
    80004748:	0035c603          	lbu	a2,3(a1)
    8000474c:	00300713          	li	a4,3
    80004750:	00c781a3          	sb	a2,3(a5)
    80004754:	02e68663          	beq	a3,a4,80004780 <__memmove+0xfc>
    80004758:	0045c603          	lbu	a2,4(a1)
    8000475c:	00400713          	li	a4,4
    80004760:	00c78223          	sb	a2,4(a5)
    80004764:	00e68e63          	beq	a3,a4,80004780 <__memmove+0xfc>
    80004768:	0055c603          	lbu	a2,5(a1)
    8000476c:	00500713          	li	a4,5
    80004770:	00c782a3          	sb	a2,5(a5)
    80004774:	00e68663          	beq	a3,a4,80004780 <__memmove+0xfc>
    80004778:	0065c703          	lbu	a4,6(a1)
    8000477c:	00e78323          	sb	a4,6(a5)
    80004780:	00813403          	ld	s0,8(sp)
    80004784:	01010113          	addi	sp,sp,16
    80004788:	00008067          	ret
    8000478c:	02061713          	slli	a4,a2,0x20
    80004790:	02075713          	srli	a4,a4,0x20
    80004794:	00e587b3          	add	a5,a1,a4
    80004798:	f0f574e3          	bgeu	a0,a5,800046a0 <__memmove+0x1c>
    8000479c:	02069613          	slli	a2,a3,0x20
    800047a0:	02065613          	srli	a2,a2,0x20
    800047a4:	fff64613          	not	a2,a2
    800047a8:	00e50733          	add	a4,a0,a4
    800047ac:	00c78633          	add	a2,a5,a2
    800047b0:	fff7c683          	lbu	a3,-1(a5)
    800047b4:	fff78793          	addi	a5,a5,-1
    800047b8:	fff70713          	addi	a4,a4,-1
    800047bc:	00d70023          	sb	a3,0(a4)
    800047c0:	fec798e3          	bne	a5,a2,800047b0 <__memmove+0x12c>
    800047c4:	00813403          	ld	s0,8(sp)
    800047c8:	01010113          	addi	sp,sp,16
    800047cc:	00008067          	ret
    800047d0:	02069713          	slli	a4,a3,0x20
    800047d4:	02075713          	srli	a4,a4,0x20
    800047d8:	00170713          	addi	a4,a4,1
    800047dc:	00e50733          	add	a4,a0,a4
    800047e0:	00050793          	mv	a5,a0
    800047e4:	0005c683          	lbu	a3,0(a1)
    800047e8:	00178793          	addi	a5,a5,1
    800047ec:	00158593          	addi	a1,a1,1
    800047f0:	fed78fa3          	sb	a3,-1(a5)
    800047f4:	fee798e3          	bne	a5,a4,800047e4 <__memmove+0x160>
    800047f8:	f89ff06f          	j	80004780 <__memmove+0xfc>

00000000800047fc <__putc>:
    800047fc:	fe010113          	addi	sp,sp,-32
    80004800:	00813823          	sd	s0,16(sp)
    80004804:	00113c23          	sd	ra,24(sp)
    80004808:	02010413          	addi	s0,sp,32
    8000480c:	00050793          	mv	a5,a0
    80004810:	fef40593          	addi	a1,s0,-17
    80004814:	00100613          	li	a2,1
    80004818:	00000513          	li	a0,0
    8000481c:	fef407a3          	sb	a5,-17(s0)
    80004820:	fffff097          	auipc	ra,0xfffff
    80004824:	b3c080e7          	jalr	-1220(ra) # 8000335c <console_write>
    80004828:	01813083          	ld	ra,24(sp)
    8000482c:	01013403          	ld	s0,16(sp)
    80004830:	02010113          	addi	sp,sp,32
    80004834:	00008067          	ret

0000000080004838 <__getc>:
    80004838:	fe010113          	addi	sp,sp,-32
    8000483c:	00813823          	sd	s0,16(sp)
    80004840:	00113c23          	sd	ra,24(sp)
    80004844:	02010413          	addi	s0,sp,32
    80004848:	fe840593          	addi	a1,s0,-24
    8000484c:	00100613          	li	a2,1
    80004850:	00000513          	li	a0,0
    80004854:	fffff097          	auipc	ra,0xfffff
    80004858:	ae8080e7          	jalr	-1304(ra) # 8000333c <console_read>
    8000485c:	fe844503          	lbu	a0,-24(s0)
    80004860:	01813083          	ld	ra,24(sp)
    80004864:	01013403          	ld	s0,16(sp)
    80004868:	02010113          	addi	sp,sp,32
    8000486c:	00008067          	ret

0000000080004870 <console_handler>:
    80004870:	fe010113          	addi	sp,sp,-32
    80004874:	00813823          	sd	s0,16(sp)
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	00913423          	sd	s1,8(sp)
    80004880:	02010413          	addi	s0,sp,32
    80004884:	14202773          	csrr	a4,scause
    80004888:	100027f3          	csrr	a5,sstatus
    8000488c:	0027f793          	andi	a5,a5,2
    80004890:	06079e63          	bnez	a5,8000490c <console_handler+0x9c>
    80004894:	00074c63          	bltz	a4,800048ac <console_handler+0x3c>
    80004898:	01813083          	ld	ra,24(sp)
    8000489c:	01013403          	ld	s0,16(sp)
    800048a0:	00813483          	ld	s1,8(sp)
    800048a4:	02010113          	addi	sp,sp,32
    800048a8:	00008067          	ret
    800048ac:	0ff77713          	andi	a4,a4,255
    800048b0:	00900793          	li	a5,9
    800048b4:	fef712e3          	bne	a4,a5,80004898 <console_handler+0x28>
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	6dc080e7          	jalr	1756(ra) # 80002f94 <plic_claim>
    800048c0:	00a00793          	li	a5,10
    800048c4:	00050493          	mv	s1,a0
    800048c8:	02f50c63          	beq	a0,a5,80004900 <console_handler+0x90>
    800048cc:	fc0506e3          	beqz	a0,80004898 <console_handler+0x28>
    800048d0:	00050593          	mv	a1,a0
    800048d4:	00001517          	auipc	a0,0x1
    800048d8:	8ac50513          	addi	a0,a0,-1876 # 80005180 <_ZZ12printIntegermE6digits+0x108>
    800048dc:	fffff097          	auipc	ra,0xfffff
    800048e0:	afc080e7          	jalr	-1284(ra) # 800033d8 <__printf>
    800048e4:	01013403          	ld	s0,16(sp)
    800048e8:	01813083          	ld	ra,24(sp)
    800048ec:	00048513          	mv	a0,s1
    800048f0:	00813483          	ld	s1,8(sp)
    800048f4:	02010113          	addi	sp,sp,32
    800048f8:	ffffe317          	auipc	t1,0xffffe
    800048fc:	6d430067          	jr	1748(t1) # 80002fcc <plic_complete>
    80004900:	fffff097          	auipc	ra,0xfffff
    80004904:	3e0080e7          	jalr	992(ra) # 80003ce0 <uartintr>
    80004908:	fddff06f          	j	800048e4 <console_handler+0x74>
    8000490c:	00001517          	auipc	a0,0x1
    80004910:	97450513          	addi	a0,a0,-1676 # 80005280 <digits+0x78>
    80004914:	fffff097          	auipc	ra,0xfffff
    80004918:	a68080e7          	jalr	-1432(ra) # 8000337c <panic>
	...
