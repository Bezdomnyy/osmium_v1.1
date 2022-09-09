
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	01813103          	ld	sp,24(sp) # 80006018 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	219020ef          	jal	ra,80002a34 <start>

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
    80001114:	00008067          	ret
	...

0000000080001120 <_ZN6Kernel14supervisorTrapEv>:

.align 4
.global _ZN6Kernel14supervisorTrapEv
.type _ZN6Kernel14supervisorTrapEv, @function
_ZN6Kernel14supervisorTrapEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8(sp)
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

    call _ZN6Kernel21supervisorTrapHandlerEv
    800011a4:	274000ef          	jal	ra,80001418 <_ZN6Kernel21supervisorTrapHandlerEv>



    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8(sp)
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

    sret
    8000122c:	10200073          	sret

0000000080001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001244:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001248:	00b29a63          	bne	t0,a1,8000125c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000124c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001250:	fe029ae3          	bnez	t0,80001244 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001254:	00000513          	li	a0,0
    jr ra                  # Return.
    80001258:	00008067          	ret

000000008000125c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000125c:	00100513          	li	a0,1
    80001260:	00008067          	ret

0000000080001264 <_Z13thread_createPP7_threadPFvPvES2_>:
//

#include "../h/syscall_c.h"
#include "../lib/console.h"

int thread_create(thread_t *handle,void(*start_routine)(void *),void *arg) {
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00813423          	sd	s0,8(sp)
    8000126c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001270:	00000513          	li	a0,0
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z11thread_exitv>:

int thread_exit() {
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    return 0;
}
    8000128c:	00000513          	li	a0,0
    80001290:	00813403          	ld	s0,8(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret

000000008000129c <_Z8sem_openPP4_semj>:


void thread_dispatch();

int sem_open( sem_t *handle, unsigned init) {
    8000129c:	ff010113          	addi	sp,sp,-16
    800012a0:	00813423          	sd	s0,8(sp)
    800012a4:	01010413          	addi	s0,sp,16
    return 0;
}
    800012a8:	00000513          	li	a0,0
    800012ac:	00813403          	ld	s0,8(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00813423          	sd	s0,8(sp)
    800012c0:	01010413          	addi	s0,sp,16
    return 0;
}
    800012c4:	00000513          	li	a0,0
    800012c8:	00813403          	ld	s0,8(sp)
    800012cc:	01010113          	addi	sp,sp,16
    800012d0:	00008067          	ret

00000000800012d4 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00813423          	sd	s0,8(sp)
    800012dc:	01010413          	addi	s0,sp,16
    return 0;
}
    800012e0:	00000513          	li	a0,0
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    return 0;
}
    800012fc:	00000513          	li	a0,0
    80001300:	00813403          	ld	s0,8(sp)
    80001304:	01010113          	addi	sp,sp,16
    80001308:	00008067          	ret

000000008000130c <_Z10time_sleepm>:

int time_sleep(time_t){
    8000130c:	ff010113          	addi	sp,sp,-16
    80001310:	00813423          	sd	s0,8(sp)
    80001314:	01010413          	addi	s0,sp,16
    return 0;
}
    80001318:	00000513          	li	a0,0
    8000131c:	00813403          	ld	s0,8(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z4getcv>:

char getc(){
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00113423          	sd	ra,8(sp)
    80001330:	00813023          	sd	s0,0(sp)
    80001334:	01010413          	addi	s0,sp,16
    return __getc();
    80001338:	00004097          	auipc	ra,0x4
    8000133c:	800080e7          	jalr	-2048(ra) # 80004b38 <__getc>
}
    80001340:	00813083          	ld	ra,8(sp)
    80001344:	00013403          	ld	s0,0(sp)
    80001348:	01010113          	addi	sp,sp,16
    8000134c:	00008067          	ret

0000000080001350 <_Z4putcc>:

void putc(char c) {
    80001350:	ff010113          	addi	sp,sp,-16
    80001354:	00113423          	sd	ra,8(sp)
    80001358:	00813023          	sd	s0,0(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __putc(c);
    80001360:	00003097          	auipc	ra,0x3
    80001364:	79c080e7          	jalr	1948(ra) # 80004afc <__putc>
    80001368:	00813083          	ld	ra,8(sp)
    8000136c:	00013403          	ld	s0,0(sp)
    80001370:	01010113          	addi	sp,sp,16
    80001374:	00008067          	ret

0000000080001378 <_ZN6Kernel10initKernelEv>:
#include "../h/memory_allocator.hpp"
#include "../h/riscv.hpp"
//#include "../test/userMain.cpp"
extern void userMain();

void Kernel::initKernel() {
    80001378:	ff010113          	addi	sp,sp,-16
    8000137c:	00113423          	sd	ra,8(sp)
    80001380:	00813023          	sd	s0,0(sp)
    80001384:	01010413          	addi	s0,sp,16
    RiscV::writeStvec((uint64) &supervisorTrap);
    80001388:	00005797          	auipc	a5,0x5
    8000138c:	c987b783          	ld	a5,-872(a5) # 80006020 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    80001390:	10579073          	csrw	stvec,a5
    MemoryAllocator::initMem();
    80001394:	00000097          	auipc	ra,0x0
    80001398:	4f4080e7          	jalr	1268(ra) # 80001888 <_ZN15MemoryAllocator7initMemEv>

}
    8000139c:	00813083          	ld	ra,8(sp)
    800013a0:	00013403          	ld	s0,0(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret

00000000800013ac <_ZN6Kernel15syscall_handlerEv>:
    RiscV::clearSip(RiscV::SEIP);
    console_handler();
    RiscV::writeSepc(sepc);
}

void Kernel::syscall_handler() {
    800013ac:	fe010113          	addi	sp,sp,-32
    800013b0:	00113c23          	sd	ra,24(sp)
    800013b4:	00813823          	sd	s0,16(sp)
    800013b8:	02010413          	addi	s0,sp,32
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a0": [syscall_id] "=r" (syscall_id));
    800013bc:	00050793          	mv	a5,a0
    800013c0:	fef43423          	sd	a5,-24(s0)

    volatile uint64 arg0;
    switch(syscall_id) {
    800013c4:	fe843783          	ld	a5,-24(s0)
    800013c8:	00100713          	li	a4,1
    800013cc:	00e78e63          	beq	a5,a4,800013e8 <_ZN6Kernel15syscall_handlerEv+0x3c>
    800013d0:	00200713          	li	a4,2
    800013d4:	02e78663          	beq	a5,a4,80001400 <_ZN6Kernel15syscall_handlerEv+0x54>
            asm volatile ("mv %[arg0], a1": [arg0] "=r"(arg0));
            MemoryAllocator::free((void*)arg0);
            break;
    }
    //RiscV::writeSepc(sepc);
}
    800013d8:	01813083          	ld	ra,24(sp)
    800013dc:	01013403          	ld	s0,16(sp)
    800013e0:	02010113          	addi	sp,sp,32
    800013e4:	00008067          	ret
            asm volatile ("mv %[arg0], a1": [arg0] "=r"(arg0));
    800013e8:	00058793          	mv	a5,a1
    800013ec:	fef43023          	sd	a5,-32(s0)
            MemoryAllocator::allocate((size_t)arg0);
    800013f0:	fe043503          	ld	a0,-32(s0)
    800013f4:	00000097          	auipc	ra,0x0
    800013f8:	630080e7          	jalr	1584(ra) # 80001a24 <_ZN15MemoryAllocator8allocateEm>
            break;
    800013fc:	fddff06f          	j	800013d8 <_ZN6Kernel15syscall_handlerEv+0x2c>
            asm volatile ("mv %[arg0], a1": [arg0] "=r"(arg0));
    80001400:	00058793          	mv	a5,a1
    80001404:	fef43023          	sd	a5,-32(s0)
            MemoryAllocator::free((void*)arg0);
    80001408:	fe043503          	ld	a0,-32(s0)
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	6b8080e7          	jalr	1720(ra) # 80001ac4 <_ZN15MemoryAllocator4freeEPv>
}
    80001414:	fc5ff06f          	j	800013d8 <_ZN6Kernel15syscall_handlerEv+0x2c>

0000000080001418 <_ZN6Kernel21supervisorTrapHandlerEv>:
void Kernel::supervisorTrapHandler() {
    80001418:	fc010113          	addi	sp,sp,-64
    8000141c:	02113c23          	sd	ra,56(sp)
    80001420:	02813823          	sd	s0,48(sp)
    80001424:	02913423          	sd	s1,40(sp)
    80001428:	03213023          	sd	s2,32(sp)
    8000142c:	04010413          	addi	s0,sp,64
    asm volatile("csrr %[scause], scause": [scause] "=r" (scause));
    80001430:	142027f3          	csrr	a5,scause
    80001434:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001438:	fc043483          	ld	s1,-64(s0)
    if (scause == 0x08 || scause == 0x09) {
    8000143c:	ff848713          	addi	a4,s1,-8
    80001440:	00100793          	li	a5,1
    80001444:	08e7f063          	bgeu	a5,a4,800014c4 <_ZN6Kernel21supervisorTrapHandlerEv+0xac>
    if (scause == 0x07) {
    80001448:	00700793          	li	a5,7
    8000144c:	0af48463          	beq	s1,a5,800014f4 <_ZN6Kernel21supervisorTrapHandlerEv+0xdc>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001450:	141027f3          	csrr	a5,sepc
    80001454:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001458:	fd843903          	ld	s2,-40(s0)
    uint64 sepc = RiscV::readSepc() + 4;
    8000145c:	00490913          	addi	s2,s2,4
    __print_string("Neobradjen izuzetak.\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	bf050513          	addi	a0,a0,-1040 # 80005050 <CONSOLE_STATUS+0x40>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	958080e7          	jalr	-1704(ra) # 80001dc0 <_Z14__print_stringPKc>
    __print_string("scause: ");
    80001470:	00004517          	auipc	a0,0x4
    80001474:	bd050513          	addi	a0,a0,-1072 # 80005040 <CONSOLE_STATUS+0x30>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	948080e7          	jalr	-1720(ra) # 80001dc0 <_Z14__print_stringPKc>
    __print_uint64(scause);
    80001480:	00048513          	mv	a0,s1
    80001484:	00001097          	auipc	ra,0x1
    80001488:	980080e7          	jalr	-1664(ra) # 80001e04 <_Z14__print_uint64m>
    __putc('\n');
    8000148c:	00a00513          	li	a0,10
    80001490:	00003097          	auipc	ra,0x3
    80001494:	66c080e7          	jalr	1644(ra) # 80004afc <__putc>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    80001498:	20000793          	li	a5,512
    8000149c:	1447b073          	csrc	sip,a5
    console_handler();
    800014a0:	00003097          	auipc	ra,0x3
    800014a4:	6d0080e7          	jalr	1744(ra) # 80004b70 <console_handler>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800014a8:	14191073          	csrw	sepc,s2
}
    800014ac:	03813083          	ld	ra,56(sp)
    800014b0:	03013403          	ld	s0,48(sp)
    800014b4:	02813483          	ld	s1,40(sp)
    800014b8:	02013903          	ld	s2,32(sp)
    800014bc:	04010113          	addi	sp,sp,64
    800014c0:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800014c4:	141027f3          	csrr	a5,sepc
    800014c8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800014cc:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    800014d0:	00448493          	addi	s1,s1,4
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    800014d4:	00200913          	li	s2,2
    800014d8:	14493073          	csrc	sip,s2
        syscall_handler();
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	ed0080e7          	jalr	-304(ra) # 800013ac <_ZN6Kernel15syscall_handlerEv>
        asm volatile ("sd a0, 80(s0)");
    800014e4:	04a43823          	sd	a0,80(s0)
    800014e8:	14493073          	csrc	sip,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800014ec:	14149073          	csrw	sepc,s1
        return;
    800014f0:	fbdff06f          	j	800014ac <_ZN6Kernel21supervisorTrapHandlerEv+0x94>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800014f4:	141027f3          	csrr	a5,sepc
    800014f8:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    800014fc:	fd043903          	ld	s2,-48(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    80001500:	00490913          	addi	s2,s2,4
        __print_string("Nedozvoljena adresa upisa.\n");
    80001504:	00004517          	auipc	a0,0x4
    80001508:	b1c50513          	addi	a0,a0,-1252 # 80005020 <CONSOLE_STATUS+0x10>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	8b4080e7          	jalr	-1868(ra) # 80001dc0 <_Z14__print_stringPKc>
        __print_string("scause: ");
    80001514:	00004517          	auipc	a0,0x4
    80001518:	b2c50513          	addi	a0,a0,-1236 # 80005040 <CONSOLE_STATUS+0x30>
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	8a4080e7          	jalr	-1884(ra) # 80001dc0 <_Z14__print_stringPKc>
        __print_uint64(scause);
    80001524:	00048513          	mv	a0,s1
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	8dc080e7          	jalr	-1828(ra) # 80001e04 <_Z14__print_uint64m>
        __putc('\n');
    80001530:	00a00513          	li	a0,10
    80001534:	00003097          	auipc	ra,0x3
    80001538:	5c8080e7          	jalr	1480(ra) # 80004afc <__putc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    8000153c:	14191073          	csrw	sepc,s2
        return;
    80001540:	f6dff06f          	j	800014ac <_ZN6Kernel21supervisorTrapHandlerEv+0x94>

0000000080001544 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return 0;
}

Semaphore::~Semaphore() {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00813423          	sd	s0,8(sp)
    8000154c:	01010413          	addi	s0,sp,16

}
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00113423          	sd	ra,8(sp)
    80001564:	00813023          	sd	s0,0(sp)
    80001568:	01010413          	addi	s0,sp,16
}
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	2cc080e7          	jalr	716(ra) # 80001838 <_ZdlPv>
    80001574:	00813083          	ld	ra,8(sp)
    80001578:	00013403          	ld	s0,0(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16
    80001590:	00005797          	auipc	a5,0x5
    80001594:	9f078793          	addi	a5,a5,-1552 # 80005f80 <_ZTV9Semaphore+0x10>
    80001598:	00f53023          	sd	a5,0(a0)
}
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
}
    800015b4:	00000513          	li	a0,0
    800015b8:	00813403          	ld	s0,8(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16
}
    800015d0:	00000513          	li	a0,0
    800015d4:	00813403          	ld	s0,8(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <main>:
#include "../h/kernel.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"


void main() {
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00113423          	sd	ra,8(sp)
    800015e8:	00813023          	sd	s0,0(sp)
    800015ec:	01010413          	addi	s0,sp,16
    Kernel::initKernel();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	d88080e7          	jalr	-632(ra) # 80001378 <_ZN6Kernel10initKernelEv>
    800015f8:	00813083          	ld	ra,8(sp)
    800015fc:	00013403          	ld	s0,0(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_ZN7Console4getcEv>:
//

#include "../h/syscall_cpp.hpp"


char Console::getc() {
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00813423          	sd	s0,8(sp)
    80001610:	01010413          	addi	s0,sp,16
    return 0;
}
    80001614:	00000513          	li	a0,0
    80001618:	00813403          	ld	s0,8(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret

0000000080001624 <_ZN7Console4putcEc>:

void Console::putc(char) {
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00813423          	sd	s0,8(sp)
    8000162c:	01010413          	addi	s0,sp,16

    80001630:	00813403          	ld	s0,8(sp)
    80001634:	01010113          	addi	sp,sp,16
    80001638:	00008067          	ret

000000008000163c <_ZN3TCB9createTCBEPFvPvES0_>:

#include "../h/tcb.hpp"

TCB *TCB::running = nullptr;

TCB *TCB::createTCB(TCB::Body body, void *args) {
    8000163c:	fd010113          	addi	sp,sp,-48
    80001640:	02113423          	sd	ra,40(sp)
    80001644:	02813023          	sd	s0,32(sp)
    80001648:	00913c23          	sd	s1,24(sp)
    8000164c:	01213823          	sd	s2,16(sp)
    80001650:	01313423          	sd	s3,8(sp)
    80001654:	03010413          	addi	s0,sp,48
    80001658:	00050913          	mv	s2,a0
    8000165c:	00058993          	mv	s3,a1
    return new TCB(body, args);
    80001660:	03800513          	li	a0,56
    80001664:	00000097          	auipc	ra,0x0
    80001668:	184080e7          	jalr	388(ra) # 800017e8 <_Znwm>
    8000166c:	00050493          	mv	s1,a0
    static void dispatch();

private:
    TCB(Body body, void* args)
        : body(body), args(args), stack(new uint64[DEFAULT_STACK_SIZE]), finished(false),
        context({(uint64)body, (uint64)&stack[DEFAULT_STACK_SIZE], (uint64)args})
    80001670:	01253023          	sd	s2,0(a0)
    80001674:	01353423          	sd	s3,8(a0)
        : body(body), args(args), stack(new uint64[DEFAULT_STACK_SIZE]), finished(false),
    80001678:	00008537          	lui	a0,0x8
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	194080e7          	jalr	404(ra) # 80001810 <_Znam>
        context({(uint64)body, (uint64)&stack[DEFAULT_STACK_SIZE], (uint64)args})
    80001684:	00a4b823          	sd	a0,16(s1)
    80001688:	00048c23          	sb	zero,24(s1)
    8000168c:	0324b023          	sd	s2,32(s1)
    80001690:	000087b7          	lui	a5,0x8
    80001694:	00f507b3          	add	a5,a0,a5
    80001698:	02f4b423          	sd	a5,40(s1)
    8000169c:	0334b823          	sd	s3,48(s1)
        {
        if (body != nullptr) Scheduler::put(this);
    800016a0:	02090863          	beqz	s2,800016d0 <_ZN3TCB9createTCBEPFvPvES0_+0x94>
    800016a4:	00048513          	mv	a0,s1
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	588080e7          	jalr	1416(ra) # 80001c30 <_ZN9Scheduler3putEP3TCB>
    800016b0:	0200006f          	j	800016d0 <_ZN3TCB9createTCBEPFvPvES0_+0x94>
    800016b4:	00050913          	mv	s2,a0
    800016b8:	00048513          	mv	a0,s1
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	17c080e7          	jalr	380(ra) # 80001838 <_ZdlPv>
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00006097          	auipc	ra,0x6
    800016cc:	ab0080e7          	jalr	-1360(ra) # 80007178 <_Unwind_Resume>
}
    800016d0:	00048513          	mv	a0,s1
    800016d4:	02813083          	ld	ra,40(sp)
    800016d8:	02013403          	ld	s0,32(sp)
    800016dc:	01813483          	ld	s1,24(sp)
    800016e0:	01013903          	ld	s2,16(sp)
    800016e4:	00813983          	ld	s3,8(sp)
    800016e8:	03010113          	addi	sp,sp,48
    800016ec:	00008067          	ret

00000000800016f0 <_ZN3TCB9createTCBEv>:

TCB *TCB::createTCB() {
    800016f0:	ff010113          	addi	sp,sp,-16
    800016f4:	00113423          	sd	ra,8(sp)
    800016f8:	00813023          	sd	s0,0(sp)
    800016fc:	01010413          	addi	s0,sp,16
    return new TCB();
    80001700:	03800513          	li	a0,56
    80001704:	00000097          	auipc	ra,0x0
    80001708:	0e4080e7          	jalr	228(ra) # 800017e8 <_Znwm>
    }

    TCB() : body(nullptr), args(nullptr), stack(nullptr), finished(false), context({0, 0, 0}){}
    8000170c:	00053023          	sd	zero,0(a0) # 8000 <_entry-0x7fff8000>
    80001710:	00053423          	sd	zero,8(a0)
    80001714:	00053823          	sd	zero,16(a0)
    80001718:	00050c23          	sb	zero,24(a0)
    8000171c:	02053023          	sd	zero,32(a0)
    80001720:	02053423          	sd	zero,40(a0)
    80001724:	02053823          	sd	zero,48(a0)
}
    80001728:	00813083          	ld	ra,8(sp)
    8000172c:	00013403          	ld	s0,0(sp)
    80001730:	01010113          	addi	sp,sp,16
    80001734:	00008067          	ret

0000000080001738 <_ZN3TCB10putForwardEv>:
    putForward();

    RiscV::popRegisters();
}

void TCB::putForward() {
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00113c23          	sd	ra,24(sp)
    80001740:	00813823          	sd	s0,16(sp)
    80001744:	00913423          	sd	s1,8(sp)
    80001748:	01213023          	sd	s2,0(sp)
    8000174c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001750:	00005917          	auipc	s2,0x5
    80001754:	93090913          	addi	s2,s2,-1744 # 80006080 <_ZN3TCB7runningE>
    80001758:	00093483          	ld	s1,0(s2)
    running = Scheduler::get();
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	46c080e7          	jalr	1132(ra) # 80001bc8 <_ZN9Scheduler3getEv>
    80001764:	00a93023          	sd	a0,0(s2)
    bool isFinished() const { return finished; }
    80001768:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished()) Scheduler::put(old);
    8000176c:	02078a63          	beqz	a5,800017a0 <_ZN3TCB10putForwardEv+0x68>

    contextSwitch(&old->context, &running->context);
    80001770:	00005597          	auipc	a1,0x5
    80001774:	9105b583          	ld	a1,-1776(a1) # 80006080 <_ZN3TCB7runningE>
    80001778:	02058593          	addi	a1,a1,32
    8000177c:	02048513          	addi	a0,s1,32
    80001780:	00000097          	auipc	ra,0x0
    80001784:	ab0080e7          	jalr	-1360(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>

    80001788:	01813083          	ld	ra,24(sp)
    8000178c:	01013403          	ld	s0,16(sp)
    80001790:	00813483          	ld	s1,8(sp)
    80001794:	00013903          	ld	s2,0(sp)
    80001798:	02010113          	addi	sp,sp,32
    8000179c:	00008067          	ret
    if (!old->isFinished()) Scheduler::put(old);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	48c080e7          	jalr	1164(ra) # 80001c30 <_ZN9Scheduler3putEP3TCB>
    800017ac:	fc5ff06f          	j	80001770 <_ZN3TCB10putForwardEv+0x38>

00000000800017b0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800017b0:	ff010113          	addi	sp,sp,-16
    800017b4:	00113423          	sd	ra,8(sp)
    800017b8:	00813023          	sd	s0,0(sp)
    800017bc:	01010413          	addi	s0,sp,16
    RiscV::pushRegisters();
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	860080e7          	jalr	-1952(ra) # 80001020 <_ZN5RiscV13pushRegistersEv>
    putForward();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	f70080e7          	jalr	-144(ra) # 80001738 <_ZN3TCB10putForwardEv>
    RiscV::popRegisters();
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	8cc080e7          	jalr	-1844(ra) # 8000109c <_ZN5RiscV12popRegistersEv>
}
    800017d8:	00813083          	ld	ra,8(sp)
    800017dc:	00013403          	ld	s0,0(sp)
    800017e0:	01010113          	addi	sp,sp,16
    800017e4:	00008067          	ret

00000000800017e8 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00113423          	sd	ra,8(sp)
    800017f0:	00813023          	sd	s0,0(sp)
    800017f4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	808080e7          	jalr	-2040(ra) # 80001000 <mem_alloc>
}
    80001800:	00813083          	ld	ra,8(sp)
    80001804:	00013403          	ld	s0,0(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret

0000000080001810 <_Znam>:

void* operator new[](size_t size) {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00113423          	sd	ra,8(sp)
    80001818:	00813023          	sd	s0,0(sp)
    8000181c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001820:	fffff097          	auipc	ra,0xfffff
    80001824:	7e0080e7          	jalr	2016(ra) # 80001000 <mem_alloc>
}
    80001828:	00813083          	ld	ra,8(sp)
    8000182c:	00013403          	ld	s0,0(sp)
    80001830:	01010113          	addi	sp,sp,16
    80001834:	00008067          	ret

0000000080001838 <_ZdlPv>:

void operator delete(void* ptr) {
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00113423          	sd	ra,8(sp)
    80001840:	00813023          	sd	s0,0(sp)
    80001844:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001848:	fffff097          	auipc	ra,0xfffff
    8000184c:	7c8080e7          	jalr	1992(ra) # 80001010 <mem_free>
}
    80001850:	00813083          	ld	ra,8(sp)
    80001854:	00013403          	ld	s0,0(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00113423          	sd	ra,8(sp)
    80001868:	00813023          	sd	s0,0(sp)
    8000186c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001870:	fffff097          	auipc	ra,0xfffff
    80001874:	7a0080e7          	jalr	1952(ra) # 80001010 <mem_free>
}
    80001878:	00813083          	ld	ra,8(sp)
    8000187c:	00013403          	ld	s0,0(sp)
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret

0000000080001888 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);

}

void MemoryAllocator::initMem()  {
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00813423          	sd	s0,8(sp)
    80001890:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    80001894:	00004797          	auipc	a5,0x4
    80001898:	77c7b783          	ld	a5,1916(a5) # 80006010 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000189c:	0007b783          	ld	a5,0(a5)
    800018a0:	00004697          	auipc	a3,0x4
    800018a4:	7e868693          	addi	a3,a3,2024 # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    800018a8:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    800018ac:	00004717          	auipc	a4,0x4
    800018b0:	77c73703          	ld	a4,1916(a4) # 80006028 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018b4:	00073703          	ld	a4,0(a4)
    800018b8:	40f70733          	sub	a4,a4,a5
    800018bc:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    800018c0:	0006b783          	ld	a5,0(a3)
    800018c4:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    800018c8:	0007b823          	sd	zero,16(a5)
}
    800018cc:	00813403          	ld	s0,8(sp)
    800018d0:	01010113          	addi	sp,sp,16
    800018d4:	00008067          	ret

00000000800018d8 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    800018d8:	ff010113          	addi	sp,sp,-16
    800018dc:	00813423          	sd	s0,8(sp)
    800018e0:	01010413          	addi	s0,sp,16
    800018e4:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	7a053503          	ld	a0,1952(a0) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    800018f0:	02050063          	beqz	a0,80001910 <_ZN15MemoryAllocator8firstFitEm+0x38>
    800018f4:	01053703          	ld	a4,16(a0)
    800018f8:	00070c63          	beqz	a4,80001910 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    800018fc:	00860793          	addi	a5,a2,8
    80001900:	00053683          	ld	a3,0(a0)
    80001904:	00f6fe63          	bgeu	a3,a5,80001920 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80001908:	00070513          	mv	a0,a4
    8000190c:	fe5ff06f          	j	800018f0 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001910:	00050863          	beqz	a0,80001920 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001914:	00860613          	addi	a2,a2,8
    80001918:	00053783          	ld	a5,0(a0)
    8000191c:	00c7e863          	bltu	a5,a2,8000192c <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001920:	00813403          	ld	s0,8(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret
    return nullptr;
    8000192c:	00000513          	li	a0,0
    80001930:	ff1ff06f          	j	80001920 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001934 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00813423          	sd	s0,8(sp)
    8000193c:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001940:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001944:	03f57793          	andi	a5,a0,63
    80001948:	00078863          	beqz	a5,80001958 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    8000194c:	04000713          	li	a4,64
    80001950:	40f707b3          	sub	a5,a4,a5
    80001954:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001958:	00813403          	ld	s0,8(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	00913423          	sd	s1,8(sp)
    80001974:	02010413          	addi	s0,sp,32
    80001978:	00050493          	mv	s1,a0
    if (node) {
    8000197c:	04050c63          	beqz	a0,800019d4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80001980:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001984:	00000097          	auipc	ra,0x0
    80001988:	fb0080e7          	jalr	-80(ra) # 80001934 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    8000198c:	0004b783          	ld	a5,0(s1)
    80001990:	40a787b3          	sub	a5,a5,a0
    80001994:	03f00713          	li	a4,63
    80001998:	04f77e63          	bgeu	a4,a5,800019f4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    8000199c:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    800019a0:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    800019a4:	0084b783          	ld	a5,8(s1)
    800019a8:	04078063          	beqz	a5,800019e8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    800019ac:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    800019b0:	0104b783          	ld	a5,16(s1)
    800019b4:	00078463          	beqz	a5,800019bc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    800019b8:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    800019bc:	0104b783          	ld	a5,16(s1)
    800019c0:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    800019c4:	0084b783          	ld	a5,8(s1)
    800019c8:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    800019cc:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + sizeof(size_t));
    800019d0:	00848513          	addi	a0,s1,8
}
    800019d4:	01813083          	ld	ra,24(sp)
    800019d8:	01013403          	ld	s0,16(sp)
    800019dc:	00813483          	ld	s1,8(sp)
    800019e0:	02010113          	addi	sp,sp,32
    800019e4:	00008067          	ret
            else fMemHead = newNode;
    800019e8:	00004797          	auipc	a5,0x4
    800019ec:	6ae7b023          	sd	a4,1696(a5) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    800019f0:	fc1ff06f          	j	800019b0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    800019f4:	0084b783          	ld	a5,8(s1)
    800019f8:	02078063          	beqz	a5,80001a18 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    800019fc:	0104b703          	ld	a4,16(s1)
    80001a00:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001a04:	0104b783          	ld	a5,16(s1)
    80001a08:	fc0782e3          	beqz	a5,800019cc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80001a0c:	0084b703          	ld	a4,8(s1)
    80001a10:	00e7b423          	sd	a4,8(a5)
    80001a14:	fb9ff06f          	j	800019cc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = newNode;
    80001a18:	00004797          	auipc	a5,0x4
    80001a1c:	6607b823          	sd	zero,1648(a5) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    80001a20:	fe5ff06f          	j	80001a04 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080001a24 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80001a24:	fe010113          	addi	sp,sp,-32
    80001a28:	00113c23          	sd	ra,24(sp)
    80001a2c:	00813823          	sd	s0,16(sp)
    80001a30:	00913423          	sd	s1,8(sp)
    80001a34:	02010413          	addi	s0,sp,32
    80001a38:	00050493          	mv	s1,a0
    return allocBlocks(firstFit(size), size);
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	e9c080e7          	jalr	-356(ra) # 800018d8 <_ZN15MemoryAllocator8firstFitEm>
    80001a44:	00048593          	mv	a1,s1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	f1c080e7          	jalr	-228(ra) # 80001964 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80001a50:	01813083          	ld	ra,24(sp)
    80001a54:	01013403          	ld	s0,16(sp)
    80001a58:	00813483          	ld	s1,8(sp)
    80001a5c:	02010113          	addi	sp,sp,32
    80001a60:	00008067          	ret

0000000080001a64 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80001a64:	ff010113          	addi	sp,sp,-16
    80001a68:	00813423          	sd	s0,8(sp)
    80001a6c:	01010413          	addi	s0,sp,16
    if(!node) return;
    80001a70:	02050663          	beqz	a0,80001a9c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    if (!node->next && node + node->size != node->next) return;
    80001a74:	01053783          	ld	a5,16(a0)
    80001a78:	02078863          	beqz	a5,80001aa8 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x44>

    node->size += node->next->size;
    80001a7c:	0007b683          	ld	a3,0(a5)
    80001a80:	00053703          	ld	a4,0(a0)
    80001a84:	00d70733          	add	a4,a4,a3
    80001a88:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80001a8c:	0107b783          	ld	a5,16(a5)
    80001a90:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80001a94:	00078463          	beqz	a5,80001a9c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    80001a98:	00a7b423          	sd	a0,8(a5)
}
    80001a9c:	00813403          	ld	s0,8(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret
    if (!node->next && node + node->size != node->next) return;
    80001aa8:	00053683          	ld	a3,0(a0)
    80001aac:	00169713          	slli	a4,a3,0x1
    80001ab0:	00d70733          	add	a4,a4,a3
    80001ab4:	00371713          	slli	a4,a4,0x3
    80001ab8:	00e50733          	add	a4,a0,a4
    80001abc:	fee790e3          	bne	a5,a4,80001a9c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    80001ac0:	fbdff06f          	j	80001a7c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x18>

0000000080001ac4 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80001ac4:	fe010113          	addi	sp,sp,-32
    80001ac8:	00113c23          	sd	ra,24(sp)
    80001acc:	00813823          	sd	s0,16(sp)
    80001ad0:	00913423          	sd	s1,8(sp)
    80001ad4:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80001ad8:	ff850513          	addi	a0,a0,-8
    if (fMemHead && addr>(void*)fMemHead)
    80001adc:	00004717          	auipc	a4,0x4
    80001ae0:	5ac73703          	ld	a4,1452(a4) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    80001ae4:	02070063          	beqz	a4,80001b04 <_ZN15MemoryAllocator4freeEPv+0x40>
    80001ae8:	02a77263          	bgeu	a4,a0,80001b0c <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80001aec:	00070793          	mv	a5,a4
    80001af0:	00078493          	mv	s1,a5
    80001af4:	0107b783          	ld	a5,16(a5)
    80001af8:	00078c63          	beqz	a5,80001b10 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001afc:	fea7eae3          	bltu	a5,a0,80001af0 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80001b00:	0100006f          	j	80001b10 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80001b04:	00070493          	mv	s1,a4
    80001b08:	0080006f          	j	80001b10 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001b0c:	00000493          	li	s1,0
    newNode->prev = curr;
    80001b10:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80001b14:	04048263          	beqz	s1,80001b58 <_ZN15MemoryAllocator4freeEPv+0x94>
    80001b18:	0104b783          	ld	a5,16(s1)
    80001b1c:	00f53823          	sd	a5,16(a0)
    80001b20:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80001b24:	01053783          	ld	a5,16(a0)
    80001b28:	00078463          	beqz	a5,80001b30 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80001b2c:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	f34080e7          	jalr	-204(ra) # 80001a64 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80001b38:	00048513          	mv	a0,s1
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	f28080e7          	jalr	-216(ra) # 80001a64 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	01013403          	ld	s0,16(sp)
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	02010113          	addi	sp,sp,32
    80001b54:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80001b58:	00e53823          	sd	a4,16(a0)
    80001b5c:	00004797          	auipc	a5,0x4
    80001b60:	52a7b623          	sd	a0,1324(a5) # 80006088 <_ZN15MemoryAllocator8fMemHeadE>
    80001b64:	fc1ff06f          	j	80001b24 <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080001b68 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00813423          	sd	s0,8(sp)
    80001b70:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001b74:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001b78:	10200073          	sret
    80001b7c:	00813403          	ld	s0,8(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_Z41__static_initialization_and_destruction_0ii>:
    return readyQueue.takeFirst();
}

void Scheduler::put(TCB* tcb) {
    readyQueue.putLast(tcb);
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00813423          	sd	s0,8(sp)
    80001b90:	01010413          	addi	s0,sp,16
    80001b94:	00100793          	li	a5,1
    80001b98:	00f50863          	beq	a0,a5,80001ba8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b9c:	00813403          	ld	s0,8(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret
    80001ba8:	000107b7          	lui	a5,0x10
    80001bac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001bb0:	fef596e3          	bne	a1,a5,80001b9c <_Z41__static_initialization_and_destruction_0ii+0x14>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	4dc78793          	addi	a5,a5,1244 # 80006090 <_ZN9Scheduler10readyQueueE>
    80001bbc:	0007b023          	sd	zero,0(a5)
    80001bc0:	0007b423          	sd	zero,8(a5)
    80001bc4:	fd9ff06f          	j	80001b9c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001bc8 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00113c23          	sd	ra,24(sp)
    80001bd0:	00813823          	sd	s0,16(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	02010413          	addi	s0,sp,32
            tail = newNode;
        }
    }

    T* takeFirst() {
        if (!head) return 0;
    80001bdc:	00004517          	auipc	a0,0x4
    80001be0:	4b453503          	ld	a0,1204(a0) # 80006090 <_ZN9Scheduler10readyQueueE>
    80001be4:	04050263          	beqz	a0,80001c28 <_ZN9Scheduler3getEv+0x60>

        T* ret = head->data;
    80001be8:	00053483          	ld	s1,0(a0)
        Node* old = head;
        head = head->next;
    80001bec:	00853783          	ld	a5,8(a0)
    80001bf0:	00004717          	auipc	a4,0x4
    80001bf4:	4af73023          	sd	a5,1184(a4) # 80006090 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80001bf8:	02078263          	beqz	a5,80001c1c <_ZN9Scheduler3getEv+0x54>
        delete old;
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	c3c080e7          	jalr	-964(ra) # 80001838 <_ZdlPv>
}
    80001c04:	00048513          	mv	a0,s1
    80001c08:	01813083          	ld	ra,24(sp)
    80001c0c:	01013403          	ld	s0,16(sp)
    80001c10:	00813483          	ld	s1,8(sp)
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00008067          	ret
        if (!head) tail = 0;
    80001c1c:	00004797          	auipc	a5,0x4
    80001c20:	4607be23          	sd	zero,1148(a5) # 80006098 <_ZN9Scheduler10readyQueueE+0x8>
    80001c24:	fd9ff06f          	j	80001bfc <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80001c28:	00050493          	mv	s1,a0
    return readyQueue.takeFirst();
    80001c2c:	fd9ff06f          	j	80001c04 <_ZN9Scheduler3getEv+0x3c>

0000000080001c30 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80001c30:	fe010113          	addi	sp,sp,-32
    80001c34:	00113c23          	sd	ra,24(sp)
    80001c38:	00813823          	sd	s0,16(sp)
    80001c3c:	00913423          	sd	s1,8(sp)
    80001c40:	02010413          	addi	s0,sp,32
    80001c44:	00050493          	mv	s1,a0
        Node *newNode = new Node(data, 0);
    80001c48:	01000513          	li	a0,16
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	b9c080e7          	jalr	-1124(ra) # 800017e8 <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80001c54:	00953023          	sd	s1,0(a0)
    80001c58:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80001c5c:	00004797          	auipc	a5,0x4
    80001c60:	43c7b783          	ld	a5,1084(a5) # 80006098 <_ZN9Scheduler10readyQueueE+0x8>
    80001c64:	02078263          	beqz	a5,80001c88 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80001c68:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80001c6c:	00004797          	auipc	a5,0x4
    80001c70:	42a7b623          	sd	a0,1068(a5) # 80006098 <_ZN9Scheduler10readyQueueE+0x8>
    80001c74:	01813083          	ld	ra,24(sp)
    80001c78:	01013403          	ld	s0,16(sp)
    80001c7c:	00813483          	ld	s1,8(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret
        if (!tail) head = tail = newNode;
    80001c88:	00004797          	auipc	a5,0x4
    80001c8c:	40878793          	addi	a5,a5,1032 # 80006090 <_ZN9Scheduler10readyQueueE>
    80001c90:	00a7b423          	sd	a0,8(a5)
    80001c94:	00a7b023          	sd	a0,0(a5)
    80001c98:	fddff06f          	j	80001c74 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c9c <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    80001cac:	000105b7          	lui	a1,0x10
    80001cb0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001cb4:	00100513          	li	a0,1
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	ed0080e7          	jalr	-304(ra) # 80001b88 <_Z41__static_initialization_and_destruction_0ii>
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN14PeriodicThreadC1Em>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

PeriodicThread::PeriodicThread(time_t period) {
    80001cd0:	fe010113          	addi	sp,sp,-32
    80001cd4:	00113c23          	sd	ra,24(sp)
    80001cd8:	00813823          	sd	s0,16(sp)
    80001cdc:	00913423          	sd	s1,8(sp)
    80001ce0:	02010413          	addi	s0,sp,32
    80001ce4:	00050493          	mv	s1,a0
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	334080e7          	jalr	820(ra) # 8000201c <_ZN6ThreadC1Ev>
    80001cf0:	00004797          	auipc	a5,0x4
    80001cf4:	2b878793          	addi	a5,a5,696 # 80005fa8 <_ZTV14PeriodicThread+0x10>
    80001cf8:	00f4b023          	sd	a5,0(s1)

    80001cfc:	01813083          	ld	ra,24(sp)
    80001d00:	01013403          	ld	s0,16(sp)
    80001d04:	00813483          	ld	s1,8(sp)
    80001d08:	02010113          	addi	sp,sp,32
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00813423          	sd	s0,8(sp)
    80001d18:	01010413          	addi	s0,sp,16
    80001d1c:	00813403          	ld	s0,8(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813423          	sd	s0,8(sp)
    80001d30:	01010413          	addi	s0,sp,16
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00113423          	sd	ra,8(sp)
    80001d48:	00813023          	sd	s0,0(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    80001d50:	00004797          	auipc	a5,0x4
    80001d54:	25878793          	addi	a5,a5,600 # 80005fa8 <_ZTV14PeriodicThread+0x10>
    80001d58:	00f53023          	sd	a5,0(a0)
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	20c080e7          	jalr	524(ra) # 80001f68 <_ZN6ThreadD1Ev>
    80001d64:	00813083          	ld	ra,8(sp)
    80001d68:	00013403          	ld	s0,0(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <_ZN14PeriodicThreadD0Ev>:
    80001d74:	fe010113          	addi	sp,sp,-32
    80001d78:	00113c23          	sd	ra,24(sp)
    80001d7c:	00813823          	sd	s0,16(sp)
    80001d80:	00913423          	sd	s1,8(sp)
    80001d84:	02010413          	addi	s0,sp,32
    80001d88:	00050493          	mv	s1,a0
    80001d8c:	00004797          	auipc	a5,0x4
    80001d90:	21c78793          	addi	a5,a5,540 # 80005fa8 <_ZTV14PeriodicThread+0x10>
    80001d94:	00f53023          	sd	a5,0(a0)
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	1d0080e7          	jalr	464(ra) # 80001f68 <_ZN6ThreadD1Ev>
    80001da0:	00048513          	mv	a0,s1
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	a94080e7          	jalr	-1388(ra) # 80001838 <_ZdlPv>
    80001dac:	01813083          	ld	ra,24(sp)
    80001db0:	01013403          	ld	s0,16(sp)
    80001db4:	00813483          	ld	s1,8(sp)
    80001db8:	02010113          	addi	sp,sp,32
    80001dbc:	00008067          	ret

0000000080001dc0 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    80001dd4:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80001dd8:	0004c503          	lbu	a0,0(s1)
    80001ddc:	00050a63          	beqz	a0,80001df0 <_Z14__print_stringPKc+0x30>
    80001de0:	00003097          	auipc	ra,0x3
    80001de4:	d1c080e7          	jalr	-740(ra) # 80004afc <__putc>
    80001de8:	00148493          	addi	s1,s1,1
    80001dec:	fedff06f          	j	80001dd8 <_Z14__print_stringPKc+0x18>
}
    80001df0:	01813083          	ld	ra,24(sp)
    80001df4:	01013403          	ld	s0,16(sp)
    80001df8:	00813483          	ld	s1,8(sp)
    80001dfc:	02010113          	addi	sp,sp,32
    80001e00:	00008067          	ret

0000000080001e04 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80001e04:	fc010113          	addi	sp,sp,-64
    80001e08:	02113c23          	sd	ra,56(sp)
    80001e0c:	02813823          	sd	s0,48(sp)
    80001e10:	02913423          	sd	s1,40(sp)
    80001e14:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80001e18:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80001e1c:	00a00693          	li	a3,10
    80001e20:	02d57633          	remu	a2,a0,a3
    80001e24:	00003717          	auipc	a4,0x3
    80001e28:	24470713          	addi	a4,a4,580 # 80005068 <_ZZ14__print_uint64mE6digits>
    80001e2c:	00c70733          	add	a4,a4,a2
    80001e30:	00074703          	lbu	a4,0(a4)
    80001e34:	fe040613          	addi	a2,s0,-32
    80001e38:	009607b3          	add	a5,a2,s1
    80001e3c:	0014849b          	addiw	s1,s1,1
    80001e40:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80001e44:	00050713          	mv	a4,a0
    80001e48:	02d55533          	divu	a0,a0,a3
    80001e4c:	00900793          	li	a5,9
    80001e50:	fce7e6e3          	bltu	a5,a4,80001e1c <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    80001e54:	fff4849b          	addiw	s1,s1,-1
    80001e58:	0004ce63          	bltz	s1,80001e74 <_Z14__print_uint64m+0x70>
    80001e5c:	fe040793          	addi	a5,s0,-32
    80001e60:	009787b3          	add	a5,a5,s1
    80001e64:	fe87c503          	lbu	a0,-24(a5)
    80001e68:	00003097          	auipc	ra,0x3
    80001e6c:	c94080e7          	jalr	-876(ra) # 80004afc <__putc>
    80001e70:	fe5ff06f          	j	80001e54 <_Z14__print_uint64m+0x50>
}
    80001e74:	03813083          	ld	ra,56(sp)
    80001e78:	03013403          	ld	s0,48(sp)
    80001e7c:	02813483          	ld	s1,40(sp)
    80001e80:	04010113          	addi	sp,sp,64
    80001e84:	00008067          	ret

0000000080001e88 <_Z11__print_intx>:

void __print_int(long long int integer) {
    80001e88:	fe010113          	addi	sp,sp,-32
    80001e8c:	00113c23          	sd	ra,24(sp)
    80001e90:	00813823          	sd	s0,16(sp)
    80001e94:	00913423          	sd	s1,8(sp)
    80001e98:	02010413          	addi	s0,sp,32
    80001e9c:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    80001ea0:	02054263          	bltz	a0,80001ec4 <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	f5c080e7          	jalr	-164(ra) # 80001e04 <_Z14__print_uint64m>
}
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    80001ec4:	02d00513          	li	a0,45
    80001ec8:	00003097          	auipc	ra,0x3
    80001ecc:	c34080e7          	jalr	-972(ra) # 80004afc <__putc>
    80001ed0:	409004b3          	neg	s1,s1
    80001ed4:	fd1ff06f          	j	80001ea4 <_Z11__print_intx+0x1c>

0000000080001ed8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001ed8:	fd010113          	addi	sp,sp,-48
    80001edc:	02113423          	sd	ra,40(sp)
    80001ee0:	02813023          	sd	s0,32(sp)
    80001ee4:	00913c23          	sd	s1,24(sp)
    80001ee8:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001eec:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001ef0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001ef4:	00a00613          	li	a2,10
    80001ef8:	02c5773b          	remuw	a4,a0,a2
    80001efc:	02071693          	slli	a3,a4,0x20
    80001f00:	0206d693          	srli	a3,a3,0x20
    80001f04:	00003717          	auipc	a4,0x3
    80001f08:	16470713          	addi	a4,a4,356 # 80005068 <_ZZ14__print_uint64mE6digits>
    80001f0c:	00d70733          	add	a4,a4,a3
    80001f10:	01074703          	lbu	a4,16(a4)
    80001f14:	fe040693          	addi	a3,s0,-32
    80001f18:	009687b3          	add	a5,a3,s1
    80001f1c:	0014849b          	addiw	s1,s1,1
    80001f20:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001f24:	0005071b          	sext.w	a4,a0
    80001f28:	02c5553b          	divuw	a0,a0,a2
    80001f2c:	00900793          	li	a5,9
    80001f30:	fce7e2e3          	bltu	a5,a4,80001ef4 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80001f34:	fff4849b          	addiw	s1,s1,-1
    80001f38:	0004ce63          	bltz	s1,80001f54 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80001f3c:	fe040793          	addi	a5,s0,-32
    80001f40:	009787b3          	add	a5,a5,s1
    80001f44:	ff07c503          	lbu	a0,-16(a5)
    80001f48:	00003097          	auipc	ra,0x3
    80001f4c:	bb4080e7          	jalr	-1100(ra) # 80004afc <__putc>
    80001f50:	fe5ff06f          	j	80001f34 <_Z12printIntegerm+0x5c>
}
    80001f54:	02813083          	ld	ra,40(sp)
    80001f58:	02013403          	ld	s0,32(sp)
    80001f5c:	01813483          	ld	s1,24(sp)
    80001f60:	03010113          	addi	sp,sp,48
    80001f64:	00008067          	ret

0000000080001f68 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00813423          	sd	s0,8(sp)
    80001f70:	01010413          	addi	s0,sp,16

}
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret

0000000080001f80 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001f80:	ff010113          	addi	sp,sp,-16
    80001f84:	00113423          	sd	ra,8(sp)
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	01010413          	addi	s0,sp,16
}
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	8a8080e7          	jalr	-1880(ra) # 80001838 <_ZdlPv>
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00813423          	sd	s0,8(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    80001fb4:	00004797          	auipc	a5,0x4
    80001fb8:	02478793          	addi	a5,a5,36 # 80005fd8 <_ZTV6Thread+0x10>
    80001fbc:	00f53023          	sd	a5,0(a0)
}
    80001fc0:	00813403          	ld	s0,8(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN6Thread5startEv>:

int Thread::start() {
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00813423          	sd	s0,8(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    return 0;
}
    80001fd8:	00000513          	li	a0,0
    80001fdc:	00813403          	ld	s0,8(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret

0000000080001fe8 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00813423          	sd	s0,8(sp)
    80001ff0:	01010413          	addi	s0,sp,16

}
    80001ff4:	00813403          	ld	s0,8(sp)
    80001ff8:	01010113          	addi	sp,sp,16
    80001ffc:	00008067          	ret

0000000080002000 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00813423          	sd	s0,8(sp)
    80002008:	01010413          	addi	s0,sp,16
    return 0;
}
    8000200c:	00000513          	li	a0,0
    80002010:	00813403          	ld	s0,8(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <_ZN6ThreadC1Ev>:

Thread::Thread() {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00004797          	auipc	a5,0x4
    8000202c:	fb078793          	addi	a5,a5,-80 # 80005fd8 <_ZTV6Thread+0x10>
    80002030:	00f53023          	sd	a5,0(a0)

}
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002040:	fe010113          	addi	sp,sp,-32
    80002044:	00113c23          	sd	ra,24(sp)
    80002048:	00813823          	sd	s0,16(sp)
    8000204c:	00913423          	sd	s1,8(sp)
    80002050:	02010413          	addi	s0,sp,32
    80002054:	00050493          	mv	s1,a0
    LOCK();
    80002058:	00100613          	li	a2,1
    8000205c:	00000593          	li	a1,0
    80002060:	00004517          	auipc	a0,0x4
    80002064:	04050513          	addi	a0,a0,64 # 800060a0 <lockPrint>
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	1dc080e7          	jalr	476(ra) # 80001244 <copy_and_swap>
    80002070:	fe0514e3          	bnez	a0,80002058 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002074:	0004c503          	lbu	a0,0(s1)
    80002078:	00050a63          	beqz	a0,8000208c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000207c:	fffff097          	auipc	ra,0xfffff
    80002080:	2d4080e7          	jalr	724(ra) # 80001350 <_Z4putcc>
        string++;
    80002084:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002088:	fedff06f          	j	80002074 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000208c:	00000613          	li	a2,0
    80002090:	00100593          	li	a1,1
    80002094:	00004517          	auipc	a0,0x4
    80002098:	00c50513          	addi	a0,a0,12 # 800060a0 <lockPrint>
    8000209c:	fffff097          	auipc	ra,0xfffff
    800020a0:	1a8080e7          	jalr	424(ra) # 80001244 <copy_and_swap>
    800020a4:	fe0514e3          	bnez	a0,8000208c <_Z11printStringPKc+0x4c>
}
    800020a8:	01813083          	ld	ra,24(sp)
    800020ac:	01013403          	ld	s0,16(sp)
    800020b0:	00813483          	ld	s1,8(sp)
    800020b4:	02010113          	addi	sp,sp,32
    800020b8:	00008067          	ret

00000000800020bc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800020bc:	fd010113          	addi	sp,sp,-48
    800020c0:	02113423          	sd	ra,40(sp)
    800020c4:	02813023          	sd	s0,32(sp)
    800020c8:	00913c23          	sd	s1,24(sp)
    800020cc:	01213823          	sd	s2,16(sp)
    800020d0:	01313423          	sd	s3,8(sp)
    800020d4:	01413023          	sd	s4,0(sp)
    800020d8:	03010413          	addi	s0,sp,48
    800020dc:	00050993          	mv	s3,a0
    800020e0:	00058a13          	mv	s4,a1
    LOCK();
    800020e4:	00100613          	li	a2,1
    800020e8:	00000593          	li	a1,0
    800020ec:	00004517          	auipc	a0,0x4
    800020f0:	fb450513          	addi	a0,a0,-76 # 800060a0 <lockPrint>
    800020f4:	fffff097          	auipc	ra,0xfffff
    800020f8:	150080e7          	jalr	336(ra) # 80001244 <copy_and_swap>
    800020fc:	fe0514e3          	bnez	a0,800020e4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002100:	00000913          	li	s2,0
    80002104:	00090493          	mv	s1,s2
    80002108:	0019091b          	addiw	s2,s2,1
    8000210c:	03495a63          	bge	s2,s4,80002140 <_Z9getStringPci+0x84>
        cc = getc();
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	218080e7          	jalr	536(ra) # 80001328 <_Z4getcv>
        if(cc < 1)
    80002118:	02050463          	beqz	a0,80002140 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000211c:	009984b3          	add	s1,s3,s1
    80002120:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002124:	00a00793          	li	a5,10
    80002128:	00f50a63          	beq	a0,a5,8000213c <_Z9getStringPci+0x80>
    8000212c:	00d00793          	li	a5,13
    80002130:	fcf51ae3          	bne	a0,a5,80002104 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002134:	00090493          	mv	s1,s2
    80002138:	0080006f          	j	80002140 <_Z9getStringPci+0x84>
    8000213c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002140:	009984b3          	add	s1,s3,s1
    80002144:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002148:	00000613          	li	a2,0
    8000214c:	00100593          	li	a1,1
    80002150:	00004517          	auipc	a0,0x4
    80002154:	f5050513          	addi	a0,a0,-176 # 800060a0 <lockPrint>
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	0ec080e7          	jalr	236(ra) # 80001244 <copy_and_swap>
    80002160:	fe0514e3          	bnez	a0,80002148 <_Z9getStringPci+0x8c>
    return buf;
}
    80002164:	00098513          	mv	a0,s3
    80002168:	02813083          	ld	ra,40(sp)
    8000216c:	02013403          	ld	s0,32(sp)
    80002170:	01813483          	ld	s1,24(sp)
    80002174:	01013903          	ld	s2,16(sp)
    80002178:	00813983          	ld	s3,8(sp)
    8000217c:	00013a03          	ld	s4,0(sp)
    80002180:	03010113          	addi	sp,sp,48
    80002184:	00008067          	ret

0000000080002188 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00813423          	sd	s0,8(sp)
    80002190:	01010413          	addi	s0,sp,16
    80002194:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002198:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000219c:	0006c603          	lbu	a2,0(a3)
    800021a0:	fd06071b          	addiw	a4,a2,-48
    800021a4:	0ff77713          	andi	a4,a4,255
    800021a8:	00900793          	li	a5,9
    800021ac:	02e7e063          	bltu	a5,a4,800021cc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800021b0:	0025179b          	slliw	a5,a0,0x2
    800021b4:	00a787bb          	addw	a5,a5,a0
    800021b8:	0017979b          	slliw	a5,a5,0x1
    800021bc:	00168693          	addi	a3,a3,1
    800021c0:	00c787bb          	addw	a5,a5,a2
    800021c4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800021c8:	fd5ff06f          	j	8000219c <_Z11stringToIntPKc+0x14>
    return n;
}
    800021cc:	00813403          	ld	s0,8(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret

00000000800021d8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800021d8:	fc010113          	addi	sp,sp,-64
    800021dc:	02113c23          	sd	ra,56(sp)
    800021e0:	02813823          	sd	s0,48(sp)
    800021e4:	02913423          	sd	s1,40(sp)
    800021e8:	03213023          	sd	s2,32(sp)
    800021ec:	01313c23          	sd	s3,24(sp)
    800021f0:	04010413          	addi	s0,sp,64
    800021f4:	00050493          	mv	s1,a0
    800021f8:	00058913          	mv	s2,a1
    800021fc:	00060993          	mv	s3,a2
    LOCK();
    80002200:	00100613          	li	a2,1
    80002204:	00000593          	li	a1,0
    80002208:	00004517          	auipc	a0,0x4
    8000220c:	e9850513          	addi	a0,a0,-360 # 800060a0 <lockPrint>
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	034080e7          	jalr	52(ra) # 80001244 <copy_and_swap>
    80002218:	fe0514e3          	bnez	a0,80002200 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000221c:	00098463          	beqz	s3,80002224 <_Z8printIntiii+0x4c>
    80002220:	0804c463          	bltz	s1,800022a8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002224:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002228:	00000593          	li	a1,0
    }

    i = 0;
    8000222c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002230:	0009079b          	sext.w	a5,s2
    80002234:	0325773b          	remuw	a4,a0,s2
    80002238:	00048613          	mv	a2,s1
    8000223c:	0014849b          	addiw	s1,s1,1
    80002240:	02071693          	slli	a3,a4,0x20
    80002244:	0206d693          	srli	a3,a3,0x20
    80002248:	00004717          	auipc	a4,0x4
    8000224c:	da870713          	addi	a4,a4,-600 # 80005ff0 <digits>
    80002250:	00d70733          	add	a4,a4,a3
    80002254:	00074683          	lbu	a3,0(a4)
    80002258:	fd040713          	addi	a4,s0,-48
    8000225c:	00c70733          	add	a4,a4,a2
    80002260:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002264:	0005071b          	sext.w	a4,a0
    80002268:	0325553b          	divuw	a0,a0,s2
    8000226c:	fcf772e3          	bgeu	a4,a5,80002230 <_Z8printIntiii+0x58>
    if(neg)
    80002270:	00058c63          	beqz	a1,80002288 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002274:	fd040793          	addi	a5,s0,-48
    80002278:	009784b3          	add	s1,a5,s1
    8000227c:	02d00793          	li	a5,45
    80002280:	fef48823          	sb	a5,-16(s1)
    80002284:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002288:	fff4849b          	addiw	s1,s1,-1
    8000228c:	0204c463          	bltz	s1,800022b4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002290:	fd040793          	addi	a5,s0,-48
    80002294:	009787b3          	add	a5,a5,s1
    80002298:	ff07c503          	lbu	a0,-16(a5)
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	0b4080e7          	jalr	180(ra) # 80001350 <_Z4putcc>
    800022a4:	fe5ff06f          	j	80002288 <_Z8printIntiii+0xb0>
        x = -xx;
    800022a8:	4090053b          	negw	a0,s1
        neg = 1;
    800022ac:	00100593          	li	a1,1
        x = -xx;
    800022b0:	f7dff06f          	j	8000222c <_Z8printIntiii+0x54>

    UNLOCK();
    800022b4:	00000613          	li	a2,0
    800022b8:	00100593          	li	a1,1
    800022bc:	00004517          	auipc	a0,0x4
    800022c0:	de450513          	addi	a0,a0,-540 # 800060a0 <lockPrint>
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	f80080e7          	jalr	-128(ra) # 80001244 <copy_and_swap>
    800022cc:	fe0514e3          	bnez	a0,800022b4 <_Z8printIntiii+0xdc>
    800022d0:	03813083          	ld	ra,56(sp)
    800022d4:	03013403          	ld	s0,48(sp)
    800022d8:	02813483          	ld	s1,40(sp)
    800022dc:	02013903          	ld	s2,32(sp)
    800022e0:	01813983          	ld	s3,24(sp)
    800022e4:	04010113          	addi	sp,sp,64
    800022e8:	00008067          	ret

00000000800022ec <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800022ec:	fd010113          	addi	sp,sp,-48
    800022f0:	02113423          	sd	ra,40(sp)
    800022f4:	02813023          	sd	s0,32(sp)
    800022f8:	00913c23          	sd	s1,24(sp)
    800022fc:	01213823          	sd	s2,16(sp)
    80002300:	01313423          	sd	s3,8(sp)
    80002304:	03010413          	addi	s0,sp,48
    80002308:	00050493          	mv	s1,a0
    8000230c:	00058913          	mv	s2,a1
    80002310:	0015879b          	addiw	a5,a1,1
    80002314:	0007851b          	sext.w	a0,a5
    80002318:	00f4a023          	sw	a5,0(s1)
    8000231c:	0004a823          	sw	zero,16(s1)
    80002320:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002324:	00251513          	slli	a0,a0,0x2
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	cd8080e7          	jalr	-808(ra) # 80001000 <mem_alloc>
    80002330:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002334:	01000513          	li	a0,16
    80002338:	fffff097          	auipc	ra,0xfffff
    8000233c:	4b0080e7          	jalr	1200(ra) # 800017e8 <_Znwm>
    80002340:	00050993          	mv	s3,a0
    80002344:	00000593          	li	a1,0
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	23c080e7          	jalr	572(ra) # 80001584 <_ZN9SemaphoreC1Ej>
    80002350:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002354:	01000513          	li	a0,16
    80002358:	fffff097          	auipc	ra,0xfffff
    8000235c:	490080e7          	jalr	1168(ra) # 800017e8 <_Znwm>
    80002360:	00050993          	mv	s3,a0
    80002364:	00090593          	mv	a1,s2
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	21c080e7          	jalr	540(ra) # 80001584 <_ZN9SemaphoreC1Ej>
    80002370:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002374:	01000513          	li	a0,16
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	470080e7          	jalr	1136(ra) # 800017e8 <_Znwm>
    80002380:	00050913          	mv	s2,a0
    80002384:	00100593          	li	a1,1
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	1fc080e7          	jalr	508(ra) # 80001584 <_ZN9SemaphoreC1Ej>
    80002390:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002394:	01000513          	li	a0,16
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	450080e7          	jalr	1104(ra) # 800017e8 <_Znwm>
    800023a0:	00050913          	mv	s2,a0
    800023a4:	00100593          	li	a1,1
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	1dc080e7          	jalr	476(ra) # 80001584 <_ZN9SemaphoreC1Ej>
    800023b0:	0324b823          	sd	s2,48(s1)
}
    800023b4:	02813083          	ld	ra,40(sp)
    800023b8:	02013403          	ld	s0,32(sp)
    800023bc:	01813483          	ld	s1,24(sp)
    800023c0:	01013903          	ld	s2,16(sp)
    800023c4:	00813983          	ld	s3,8(sp)
    800023c8:	03010113          	addi	sp,sp,48
    800023cc:	00008067          	ret
    800023d0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800023d4:	00098513          	mv	a0,s3
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	460080e7          	jalr	1120(ra) # 80001838 <_ZdlPv>
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00005097          	auipc	ra,0x5
    800023e8:	d94080e7          	jalr	-620(ra) # 80007178 <_Unwind_Resume>
    800023ec:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800023f0:	00098513          	mv	a0,s3
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	444080e7          	jalr	1092(ra) # 80001838 <_ZdlPv>
    800023fc:	00048513          	mv	a0,s1
    80002400:	00005097          	auipc	ra,0x5
    80002404:	d78080e7          	jalr	-648(ra) # 80007178 <_Unwind_Resume>
    80002408:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000240c:	00090513          	mv	a0,s2
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	428080e7          	jalr	1064(ra) # 80001838 <_ZdlPv>
    80002418:	00048513          	mv	a0,s1
    8000241c:	00005097          	auipc	ra,0x5
    80002420:	d5c080e7          	jalr	-676(ra) # 80007178 <_Unwind_Resume>
    80002424:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002428:	00090513          	mv	a0,s2
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	40c080e7          	jalr	1036(ra) # 80001838 <_ZdlPv>
    80002434:	00048513          	mv	a0,s1
    80002438:	00005097          	auipc	ra,0x5
    8000243c:	d40080e7          	jalr	-704(ra) # 80007178 <_Unwind_Resume>

0000000080002440 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	00813823          	sd	s0,16(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	01213023          	sd	s2,0(sp)
    80002454:	02010413          	addi	s0,sp,32
    80002458:	00050493          	mv	s1,a0
    8000245c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002460:	01853503          	ld	a0,24(a0)
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	144080e7          	jalr	324(ra) # 800015a8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000246c:	0304b503          	ld	a0,48(s1)
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	138080e7          	jalr	312(ra) # 800015a8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002478:	0084b783          	ld	a5,8(s1)
    8000247c:	0144a703          	lw	a4,20(s1)
    80002480:	00271713          	slli	a4,a4,0x2
    80002484:	00e787b3          	add	a5,a5,a4
    80002488:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000248c:	0144a783          	lw	a5,20(s1)
    80002490:	0017879b          	addiw	a5,a5,1
    80002494:	0004a703          	lw	a4,0(s1)
    80002498:	02e7e7bb          	remw	a5,a5,a4
    8000249c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800024a0:	0304b503          	ld	a0,48(s1)
    800024a4:	fffff097          	auipc	ra,0xfffff
    800024a8:	120080e7          	jalr	288(ra) # 800015c4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800024ac:	0204b503          	ld	a0,32(s1)
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	114080e7          	jalr	276(ra) # 800015c4 <_ZN9Semaphore6signalEv>

}
    800024b8:	01813083          	ld	ra,24(sp)
    800024bc:	01013403          	ld	s0,16(sp)
    800024c0:	00813483          	ld	s1,8(sp)
    800024c4:	00013903          	ld	s2,0(sp)
    800024c8:	02010113          	addi	sp,sp,32
    800024cc:	00008067          	ret

00000000800024d0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800024d0:	fe010113          	addi	sp,sp,-32
    800024d4:	00113c23          	sd	ra,24(sp)
    800024d8:	00813823          	sd	s0,16(sp)
    800024dc:	00913423          	sd	s1,8(sp)
    800024e0:	01213023          	sd	s2,0(sp)
    800024e4:	02010413          	addi	s0,sp,32
    800024e8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800024ec:	02053503          	ld	a0,32(a0)
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	0b8080e7          	jalr	184(ra) # 800015a8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800024f8:	0284b503          	ld	a0,40(s1)
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	0ac080e7          	jalr	172(ra) # 800015a8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002504:	0084b703          	ld	a4,8(s1)
    80002508:	0104a783          	lw	a5,16(s1)
    8000250c:	00279693          	slli	a3,a5,0x2
    80002510:	00d70733          	add	a4,a4,a3
    80002514:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002518:	0017879b          	addiw	a5,a5,1
    8000251c:	0004a703          	lw	a4,0(s1)
    80002520:	02e7e7bb          	remw	a5,a5,a4
    80002524:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002528:	0284b503          	ld	a0,40(s1)
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	098080e7          	jalr	152(ra) # 800015c4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002534:	0184b503          	ld	a0,24(s1)
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	08c080e7          	jalr	140(ra) # 800015c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002540:	00090513          	mv	a0,s2
    80002544:	01813083          	ld	ra,24(sp)
    80002548:	01013403          	ld	s0,16(sp)
    8000254c:	00813483          	ld	s1,8(sp)
    80002550:	00013903          	ld	s2,0(sp)
    80002554:	02010113          	addi	sp,sp,32
    80002558:	00008067          	ret

000000008000255c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000255c:	fe010113          	addi	sp,sp,-32
    80002560:	00113c23          	sd	ra,24(sp)
    80002564:	00813823          	sd	s0,16(sp)
    80002568:	00913423          	sd	s1,8(sp)
    8000256c:	01213023          	sd	s2,0(sp)
    80002570:	02010413          	addi	s0,sp,32
    80002574:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002578:	02853503          	ld	a0,40(a0)
    8000257c:	fffff097          	auipc	ra,0xfffff
    80002580:	02c080e7          	jalr	44(ra) # 800015a8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002584:	0304b503          	ld	a0,48(s1)
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	020080e7          	jalr	32(ra) # 800015a8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002590:	0144a783          	lw	a5,20(s1)
    80002594:	0104a903          	lw	s2,16(s1)
    80002598:	0327ce63          	blt	a5,s2,800025d4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000259c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800025a0:	0304b503          	ld	a0,48(s1)
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	020080e7          	jalr	32(ra) # 800015c4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800025ac:	0284b503          	ld	a0,40(s1)
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	014080e7          	jalr	20(ra) # 800015c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800025b8:	00090513          	mv	a0,s2
    800025bc:	01813083          	ld	ra,24(sp)
    800025c0:	01013403          	ld	s0,16(sp)
    800025c4:	00813483          	ld	s1,8(sp)
    800025c8:	00013903          	ld	s2,0(sp)
    800025cc:	02010113          	addi	sp,sp,32
    800025d0:	00008067          	ret
        ret = cap - head + tail;
    800025d4:	0004a703          	lw	a4,0(s1)
    800025d8:	4127093b          	subw	s2,a4,s2
    800025dc:	00f9093b          	addw	s2,s2,a5
    800025e0:	fc1ff06f          	j	800025a0 <_ZN9BufferCPP6getCntEv+0x44>

00000000800025e4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800025e4:	fe010113          	addi	sp,sp,-32
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	00813823          	sd	s0,16(sp)
    800025f0:	00913423          	sd	s1,8(sp)
    800025f4:	02010413          	addi	s0,sp,32
    800025f8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800025fc:	00a00513          	li	a0,10
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	024080e7          	jalr	36(ra) # 80001624 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002608:	00003517          	auipc	a0,0x3
    8000260c:	a8050513          	addi	a0,a0,-1408 # 80005088 <_ZZ12printIntegermE6digits+0x10>
    80002610:	00000097          	auipc	ra,0x0
    80002614:	a30080e7          	jalr	-1488(ra) # 80002040 <_Z11printStringPKc>
    while (getCnt()) {
    80002618:	00048513          	mv	a0,s1
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	f40080e7          	jalr	-192(ra) # 8000255c <_ZN9BufferCPP6getCntEv>
    80002624:	02050c63          	beqz	a0,8000265c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002628:	0084b783          	ld	a5,8(s1)
    8000262c:	0104a703          	lw	a4,16(s1)
    80002630:	00271713          	slli	a4,a4,0x2
    80002634:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002638:	0007c503          	lbu	a0,0(a5)
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	fe8080e7          	jalr	-24(ra) # 80001624 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002644:	0104a783          	lw	a5,16(s1)
    80002648:	0017879b          	addiw	a5,a5,1
    8000264c:	0004a703          	lw	a4,0(s1)
    80002650:	02e7e7bb          	remw	a5,a5,a4
    80002654:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002658:	fc1ff06f          	j	80002618 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000265c:	02100513          	li	a0,33
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	fc4080e7          	jalr	-60(ra) # 80001624 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002668:	00a00513          	li	a0,10
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	fb8080e7          	jalr	-72(ra) # 80001624 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002674:	0084b503          	ld	a0,8(s1)
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	998080e7          	jalr	-1640(ra) # 80001010 <mem_free>
    delete itemAvailable;
    80002680:	0204b503          	ld	a0,32(s1)
    80002684:	00050863          	beqz	a0,80002694 <_ZN9BufferCPPD1Ev+0xb0>
    80002688:	00053783          	ld	a5,0(a0)
    8000268c:	0087b783          	ld	a5,8(a5)
    80002690:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002694:	0184b503          	ld	a0,24(s1)
    80002698:	00050863          	beqz	a0,800026a8 <_ZN9BufferCPPD1Ev+0xc4>
    8000269c:	00053783          	ld	a5,0(a0)
    800026a0:	0087b783          	ld	a5,8(a5)
    800026a4:	000780e7          	jalr	a5
    delete mutexTail;
    800026a8:	0304b503          	ld	a0,48(s1)
    800026ac:	00050863          	beqz	a0,800026bc <_ZN9BufferCPPD1Ev+0xd8>
    800026b0:	00053783          	ld	a5,0(a0)
    800026b4:	0087b783          	ld	a5,8(a5)
    800026b8:	000780e7          	jalr	a5
    delete mutexHead;
    800026bc:	0284b503          	ld	a0,40(s1)
    800026c0:	00050863          	beqz	a0,800026d0 <_ZN9BufferCPPD1Ev+0xec>
    800026c4:	00053783          	ld	a5,0(a0)
    800026c8:	0087b783          	ld	a5,8(a5)
    800026cc:	000780e7          	jalr	a5
}
    800026d0:	01813083          	ld	ra,24(sp)
    800026d4:	01013403          	ld	s0,16(sp)
    800026d8:	00813483          	ld	s1,8(sp)
    800026dc:	02010113          	addi	sp,sp,32
    800026e0:	00008067          	ret

00000000800026e4 <_Z8userMainv>:
//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

#include "../h/print.hpp"

void userMain() {
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    __print_string("I am here!");
    800026f4:	00003517          	auipc	a0,0x3
    800026f8:	9ac50513          	addi	a0,a0,-1620 # 800050a0 <_ZZ12printIntegermE6digits+0x28>
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	6c4080e7          	jalr	1732(ra) # 80001dc0 <_Z14__print_stringPKc>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002704:	00813083          	ld	ra,8(sp)
    80002708:	00013403          	ld	s0,0(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002714:	fe010113          	addi	sp,sp,-32
    80002718:	00113c23          	sd	ra,24(sp)
    8000271c:	00813823          	sd	s0,16(sp)
    80002720:	00913423          	sd	s1,8(sp)
    80002724:	01213023          	sd	s2,0(sp)
    80002728:	02010413          	addi	s0,sp,32
    8000272c:	00050493          	mv	s1,a0
    80002730:	00058913          	mv	s2,a1
    80002734:	0015879b          	addiw	a5,a1,1
    80002738:	0007851b          	sext.w	a0,a5
    8000273c:	00f4a023          	sw	a5,0(s1)
    80002740:	0004a823          	sw	zero,16(s1)
    80002744:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002748:	00251513          	slli	a0,a0,0x2
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	8b4080e7          	jalr	-1868(ra) # 80001000 <mem_alloc>
    80002754:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002758:	00000593          	li	a1,0
    8000275c:	02048513          	addi	a0,s1,32
    80002760:	fffff097          	auipc	ra,0xfffff
    80002764:	b3c080e7          	jalr	-1220(ra) # 8000129c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002768:	00090593          	mv	a1,s2
    8000276c:	01848513          	addi	a0,s1,24
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	b2c080e7          	jalr	-1236(ra) # 8000129c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002778:	00100593          	li	a1,1
    8000277c:	02848513          	addi	a0,s1,40
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	b1c080e7          	jalr	-1252(ra) # 8000129c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002788:	00100593          	li	a1,1
    8000278c:	03048513          	addi	a0,s1,48
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	b0c080e7          	jalr	-1268(ra) # 8000129c <_Z8sem_openPP4_semj>
}
    80002798:	01813083          	ld	ra,24(sp)
    8000279c:	01013403          	ld	s0,16(sp)
    800027a0:	00813483          	ld	s1,8(sp)
    800027a4:	00013903          	ld	s2,0(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret

00000000800027b0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800027b0:	fe010113          	addi	sp,sp,-32
    800027b4:	00113c23          	sd	ra,24(sp)
    800027b8:	00813823          	sd	s0,16(sp)
    800027bc:	00913423          	sd	s1,8(sp)
    800027c0:	01213023          	sd	s2,0(sp)
    800027c4:	02010413          	addi	s0,sp,32
    800027c8:	00050493          	mv	s1,a0
    800027cc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800027d0:	01853503          	ld	a0,24(a0)
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	b00080e7          	jalr	-1280(ra) # 800012d4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800027dc:	0304b503          	ld	a0,48(s1)
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	af4080e7          	jalr	-1292(ra) # 800012d4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800027e8:	0084b783          	ld	a5,8(s1)
    800027ec:	0144a703          	lw	a4,20(s1)
    800027f0:	00271713          	slli	a4,a4,0x2
    800027f4:	00e787b3          	add	a5,a5,a4
    800027f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800027fc:	0144a783          	lw	a5,20(s1)
    80002800:	0017879b          	addiw	a5,a5,1
    80002804:	0004a703          	lw	a4,0(s1)
    80002808:	02e7e7bb          	remw	a5,a5,a4
    8000280c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002810:	0304b503          	ld	a0,48(s1)
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	adc080e7          	jalr	-1316(ra) # 800012f0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000281c:	0204b503          	ld	a0,32(s1)
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	ad0080e7          	jalr	-1328(ra) # 800012f0 <_Z10sem_signalP4_sem>

}
    80002828:	01813083          	ld	ra,24(sp)
    8000282c:	01013403          	ld	s0,16(sp)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	00013903          	ld	s2,0(sp)
    80002838:	02010113          	addi	sp,sp,32
    8000283c:	00008067          	ret

0000000080002840 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	01213023          	sd	s2,0(sp)
    80002854:	02010413          	addi	s0,sp,32
    80002858:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000285c:	02053503          	ld	a0,32(a0)
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	a74080e7          	jalr	-1420(ra) # 800012d4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002868:	0284b503          	ld	a0,40(s1)
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	a68080e7          	jalr	-1432(ra) # 800012d4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002874:	0084b703          	ld	a4,8(s1)
    80002878:	0104a783          	lw	a5,16(s1)
    8000287c:	00279693          	slli	a3,a5,0x2
    80002880:	00d70733          	add	a4,a4,a3
    80002884:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002888:	0017879b          	addiw	a5,a5,1
    8000288c:	0004a703          	lw	a4,0(s1)
    80002890:	02e7e7bb          	remw	a5,a5,a4
    80002894:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002898:	0284b503          	ld	a0,40(s1)
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	a54080e7          	jalr	-1452(ra) # 800012f0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800028a4:	0184b503          	ld	a0,24(s1)
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	a48080e7          	jalr	-1464(ra) # 800012f0 <_Z10sem_signalP4_sem>

    return ret;
}
    800028b0:	00090513          	mv	a0,s2
    800028b4:	01813083          	ld	ra,24(sp)
    800028b8:	01013403          	ld	s0,16(sp)
    800028bc:	00813483          	ld	s1,8(sp)
    800028c0:	00013903          	ld	s2,0(sp)
    800028c4:	02010113          	addi	sp,sp,32
    800028c8:	00008067          	ret

00000000800028cc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800028cc:	fe010113          	addi	sp,sp,-32
    800028d0:	00113c23          	sd	ra,24(sp)
    800028d4:	00813823          	sd	s0,16(sp)
    800028d8:	00913423          	sd	s1,8(sp)
    800028dc:	01213023          	sd	s2,0(sp)
    800028e0:	02010413          	addi	s0,sp,32
    800028e4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800028e8:	02853503          	ld	a0,40(a0)
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	9e8080e7          	jalr	-1560(ra) # 800012d4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800028f4:	0304b503          	ld	a0,48(s1)
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	9dc080e7          	jalr	-1572(ra) # 800012d4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002900:	0144a783          	lw	a5,20(s1)
    80002904:	0104a903          	lw	s2,16(s1)
    80002908:	0327ce63          	blt	a5,s2,80002944 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000290c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002910:	0304b503          	ld	a0,48(s1)
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	9dc080e7          	jalr	-1572(ra) # 800012f0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000291c:	0284b503          	ld	a0,40(s1)
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	9d0080e7          	jalr	-1584(ra) # 800012f0 <_Z10sem_signalP4_sem>

    return ret;
}
    80002928:	00090513          	mv	a0,s2
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	00013903          	ld	s2,0(sp)
    8000293c:	02010113          	addi	sp,sp,32
    80002940:	00008067          	ret
        ret = cap - head + tail;
    80002944:	0004a703          	lw	a4,0(s1)
    80002948:	4127093b          	subw	s2,a4,s2
    8000294c:	00f9093b          	addw	s2,s2,a5
    80002950:	fc1ff06f          	j	80002910 <_ZN6Buffer6getCntEv+0x44>

0000000080002954 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00813823          	sd	s0,16(sp)
    80002960:	00913423          	sd	s1,8(sp)
    80002964:	02010413          	addi	s0,sp,32
    80002968:	00050493          	mv	s1,a0
    putc('\n');
    8000296c:	00a00513          	li	a0,10
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	9e0080e7          	jalr	-1568(ra) # 80001350 <_Z4putcc>
    printString("Buffer deleted!\n");
    80002978:	00002517          	auipc	a0,0x2
    8000297c:	71050513          	addi	a0,a0,1808 # 80005088 <_ZZ12printIntegermE6digits+0x10>
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	6c0080e7          	jalr	1728(ra) # 80002040 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002988:	00048513          	mv	a0,s1
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	f40080e7          	jalr	-192(ra) # 800028cc <_ZN6Buffer6getCntEv>
    80002994:	02a05c63          	blez	a0,800029cc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80002998:	0084b783          	ld	a5,8(s1)
    8000299c:	0104a703          	lw	a4,16(s1)
    800029a0:	00271713          	slli	a4,a4,0x2
    800029a4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800029a8:	0007c503          	lbu	a0,0(a5)
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	9a4080e7          	jalr	-1628(ra) # 80001350 <_Z4putcc>
        head = (head + 1) % cap;
    800029b4:	0104a783          	lw	a5,16(s1)
    800029b8:	0017879b          	addiw	a5,a5,1
    800029bc:	0004a703          	lw	a4,0(s1)
    800029c0:	02e7e7bb          	remw	a5,a5,a4
    800029c4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800029c8:	fc1ff06f          	j	80002988 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800029cc:	02100513          	li	a0,33
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	980080e7          	jalr	-1664(ra) # 80001350 <_Z4putcc>
    putc('\n');
    800029d8:	00a00513          	li	a0,10
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	974080e7          	jalr	-1676(ra) # 80001350 <_Z4putcc>
    mem_free(buffer);
    800029e4:	0084b503          	ld	a0,8(s1)
    800029e8:	ffffe097          	auipc	ra,0xffffe
    800029ec:	628080e7          	jalr	1576(ra) # 80001010 <mem_free>
    sem_close(itemAvailable);
    800029f0:	0204b503          	ld	a0,32(s1)
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	8c4080e7          	jalr	-1852(ra) # 800012b8 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800029fc:	0184b503          	ld	a0,24(s1)
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	8b8080e7          	jalr	-1864(ra) # 800012b8 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80002a08:	0304b503          	ld	a0,48(s1)
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	8ac080e7          	jalr	-1876(ra) # 800012b8 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80002a14:	0284b503          	ld	a0,40(s1)
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	8a0080e7          	jalr	-1888(ra) # 800012b8 <_Z9sem_closeP4_sem>
}
    80002a20:	01813083          	ld	ra,24(sp)
    80002a24:	01013403          	ld	s0,16(sp)
    80002a28:	00813483          	ld	s1,8(sp)
    80002a2c:	02010113          	addi	sp,sp,32
    80002a30:	00008067          	ret

0000000080002a34 <start>:
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00813423          	sd	s0,8(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	300027f3          	csrr	a5,mstatus
    80002a44:	ffffe737          	lui	a4,0xffffe
    80002a48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff74ef>
    80002a4c:	00e7f7b3          	and	a5,a5,a4
    80002a50:	00001737          	lui	a4,0x1
    80002a54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002a58:	00e7e7b3          	or	a5,a5,a4
    80002a5c:	30079073          	csrw	mstatus,a5
    80002a60:	00000797          	auipc	a5,0x0
    80002a64:	16078793          	addi	a5,a5,352 # 80002bc0 <system_main>
    80002a68:	34179073          	csrw	mepc,a5
    80002a6c:	00000793          	li	a5,0
    80002a70:	18079073          	csrw	satp,a5
    80002a74:	000107b7          	lui	a5,0x10
    80002a78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a7c:	30279073          	csrw	medeleg,a5
    80002a80:	30379073          	csrw	mideleg,a5
    80002a84:	104027f3          	csrr	a5,sie
    80002a88:	2227e793          	ori	a5,a5,546
    80002a8c:	10479073          	csrw	sie,a5
    80002a90:	fff00793          	li	a5,-1
    80002a94:	00a7d793          	srli	a5,a5,0xa
    80002a98:	3b079073          	csrw	pmpaddr0,a5
    80002a9c:	00f00793          	li	a5,15
    80002aa0:	3a079073          	csrw	pmpcfg0,a5
    80002aa4:	f14027f3          	csrr	a5,mhartid
    80002aa8:	0200c737          	lui	a4,0x200c
    80002aac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002ab0:	0007869b          	sext.w	a3,a5
    80002ab4:	00269713          	slli	a4,a3,0x2
    80002ab8:	000f4637          	lui	a2,0xf4
    80002abc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002ac0:	00d70733          	add	a4,a4,a3
    80002ac4:	0037979b          	slliw	a5,a5,0x3
    80002ac8:	020046b7          	lui	a3,0x2004
    80002acc:	00d787b3          	add	a5,a5,a3
    80002ad0:	00c585b3          	add	a1,a1,a2
    80002ad4:	00371693          	slli	a3,a4,0x3
    80002ad8:	00003717          	auipc	a4,0x3
    80002adc:	5d870713          	addi	a4,a4,1496 # 800060b0 <timer_scratch>
    80002ae0:	00b7b023          	sd	a1,0(a5)
    80002ae4:	00d70733          	add	a4,a4,a3
    80002ae8:	00f73c23          	sd	a5,24(a4)
    80002aec:	02c73023          	sd	a2,32(a4)
    80002af0:	34071073          	csrw	mscratch,a4
    80002af4:	00000797          	auipc	a5,0x0
    80002af8:	6ec78793          	addi	a5,a5,1772 # 800031e0 <timervec>
    80002afc:	30579073          	csrw	mtvec,a5
    80002b00:	300027f3          	csrr	a5,mstatus
    80002b04:	0087e793          	ori	a5,a5,8
    80002b08:	30079073          	csrw	mstatus,a5
    80002b0c:	304027f3          	csrr	a5,mie
    80002b10:	0807e793          	ori	a5,a5,128
    80002b14:	30479073          	csrw	mie,a5
    80002b18:	f14027f3          	csrr	a5,mhartid
    80002b1c:	0007879b          	sext.w	a5,a5
    80002b20:	00078213          	mv	tp,a5
    80002b24:	30200073          	mret
    80002b28:	00813403          	ld	s0,8(sp)
    80002b2c:	01010113          	addi	sp,sp,16
    80002b30:	00008067          	ret

0000000080002b34 <timerinit>:
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00813423          	sd	s0,8(sp)
    80002b3c:	01010413          	addi	s0,sp,16
    80002b40:	f14027f3          	csrr	a5,mhartid
    80002b44:	0200c737          	lui	a4,0x200c
    80002b48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002b4c:	0007869b          	sext.w	a3,a5
    80002b50:	00269713          	slli	a4,a3,0x2
    80002b54:	000f4637          	lui	a2,0xf4
    80002b58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002b5c:	00d70733          	add	a4,a4,a3
    80002b60:	0037979b          	slliw	a5,a5,0x3
    80002b64:	020046b7          	lui	a3,0x2004
    80002b68:	00d787b3          	add	a5,a5,a3
    80002b6c:	00c585b3          	add	a1,a1,a2
    80002b70:	00371693          	slli	a3,a4,0x3
    80002b74:	00003717          	auipc	a4,0x3
    80002b78:	53c70713          	addi	a4,a4,1340 # 800060b0 <timer_scratch>
    80002b7c:	00b7b023          	sd	a1,0(a5)
    80002b80:	00d70733          	add	a4,a4,a3
    80002b84:	00f73c23          	sd	a5,24(a4)
    80002b88:	02c73023          	sd	a2,32(a4)
    80002b8c:	34071073          	csrw	mscratch,a4
    80002b90:	00000797          	auipc	a5,0x0
    80002b94:	65078793          	addi	a5,a5,1616 # 800031e0 <timervec>
    80002b98:	30579073          	csrw	mtvec,a5
    80002b9c:	300027f3          	csrr	a5,mstatus
    80002ba0:	0087e793          	ori	a5,a5,8
    80002ba4:	30079073          	csrw	mstatus,a5
    80002ba8:	304027f3          	csrr	a5,mie
    80002bac:	0807e793          	ori	a5,a5,128
    80002bb0:	30479073          	csrw	mie,a5
    80002bb4:	00813403          	ld	s0,8(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <system_main>:
    80002bc0:	fe010113          	addi	sp,sp,-32
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	00113c23          	sd	ra,24(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	0c4080e7          	jalr	196(ra) # 80002c98 <cpuid>
    80002bdc:	00003497          	auipc	s1,0x3
    80002be0:	47448493          	addi	s1,s1,1140 # 80006050 <started>
    80002be4:	02050263          	beqz	a0,80002c08 <system_main+0x48>
    80002be8:	0004a783          	lw	a5,0(s1)
    80002bec:	0007879b          	sext.w	a5,a5
    80002bf0:	fe078ce3          	beqz	a5,80002be8 <system_main+0x28>
    80002bf4:	0ff0000f          	fence
    80002bf8:	00002517          	auipc	a0,0x2
    80002bfc:	4e850513          	addi	a0,a0,1256 # 800050e0 <_ZZ12printIntegermE6digits+0x68>
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	a7c080e7          	jalr	-1412(ra) # 8000367c <panic>
    80002c08:	00001097          	auipc	ra,0x1
    80002c0c:	9d0080e7          	jalr	-1584(ra) # 800035d8 <consoleinit>
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	15c080e7          	jalr	348(ra) # 80003d6c <printfinit>
    80002c18:	00002517          	auipc	a0,0x2
    80002c1c:	5a850513          	addi	a0,a0,1448 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	ab8080e7          	jalr	-1352(ra) # 800036d8 <__printf>
    80002c28:	00002517          	auipc	a0,0x2
    80002c2c:	48850513          	addi	a0,a0,1160 # 800050b0 <_ZZ12printIntegermE6digits+0x38>
    80002c30:	00001097          	auipc	ra,0x1
    80002c34:	aa8080e7          	jalr	-1368(ra) # 800036d8 <__printf>
    80002c38:	00002517          	auipc	a0,0x2
    80002c3c:	58850513          	addi	a0,a0,1416 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	a98080e7          	jalr	-1384(ra) # 800036d8 <__printf>
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	4b0080e7          	jalr	1200(ra) # 800040f8 <kinit>
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	148080e7          	jalr	328(ra) # 80002d98 <trapinit>
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	16c080e7          	jalr	364(ra) # 80002dc4 <trapinithart>
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	5c0080e7          	jalr	1472(ra) # 80003220 <plicinit>
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	5e0080e7          	jalr	1504(ra) # 80003248 <plicinithart>
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	078080e7          	jalr	120(ra) # 80002ce8 <userinit>
    80002c78:	0ff0000f          	fence
    80002c7c:	00100793          	li	a5,1
    80002c80:	00002517          	auipc	a0,0x2
    80002c84:	44850513          	addi	a0,a0,1096 # 800050c8 <_ZZ12printIntegermE6digits+0x50>
    80002c88:	00f4a023          	sw	a5,0(s1)
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	a4c080e7          	jalr	-1460(ra) # 800036d8 <__printf>
    80002c94:	0000006f          	j	80002c94 <system_main+0xd4>

0000000080002c98 <cpuid>:
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00813423          	sd	s0,8(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    80002ca4:	00020513          	mv	a0,tp
    80002ca8:	00813403          	ld	s0,8(sp)
    80002cac:	0005051b          	sext.w	a0,a0
    80002cb0:	01010113          	addi	sp,sp,16
    80002cb4:	00008067          	ret

0000000080002cb8 <mycpu>:
    80002cb8:	ff010113          	addi	sp,sp,-16
    80002cbc:	00813423          	sd	s0,8(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    80002cc4:	00020793          	mv	a5,tp
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	0007879b          	sext.w	a5,a5
    80002cd0:	00779793          	slli	a5,a5,0x7
    80002cd4:	00004517          	auipc	a0,0x4
    80002cd8:	40c50513          	addi	a0,a0,1036 # 800070e0 <cpus>
    80002cdc:	00f50533          	add	a0,a0,a5
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <userinit>:
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813423          	sd	s0,8(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    80002cf4:	00813403          	ld	s0,8(sp)
    80002cf8:	01010113          	addi	sp,sp,16
    80002cfc:	fffff317          	auipc	t1,0xfffff
    80002d00:	8e430067          	jr	-1820(t1) # 800015e0 <main>

0000000080002d04 <either_copyout>:
    80002d04:	ff010113          	addi	sp,sp,-16
    80002d08:	00813023          	sd	s0,0(sp)
    80002d0c:	00113423          	sd	ra,8(sp)
    80002d10:	01010413          	addi	s0,sp,16
    80002d14:	02051663          	bnez	a0,80002d40 <either_copyout+0x3c>
    80002d18:	00058513          	mv	a0,a1
    80002d1c:	00060593          	mv	a1,a2
    80002d20:	0006861b          	sext.w	a2,a3
    80002d24:	00002097          	auipc	ra,0x2
    80002d28:	c60080e7          	jalr	-928(ra) # 80004984 <__memmove>
    80002d2c:	00813083          	ld	ra,8(sp)
    80002d30:	00013403          	ld	s0,0(sp)
    80002d34:	00000513          	li	a0,0
    80002d38:	01010113          	addi	sp,sp,16
    80002d3c:	00008067          	ret
    80002d40:	00002517          	auipc	a0,0x2
    80002d44:	3c850513          	addi	a0,a0,968 # 80005108 <_ZZ12printIntegermE6digits+0x90>
    80002d48:	00001097          	auipc	ra,0x1
    80002d4c:	934080e7          	jalr	-1740(ra) # 8000367c <panic>

0000000080002d50 <either_copyin>:
    80002d50:	ff010113          	addi	sp,sp,-16
    80002d54:	00813023          	sd	s0,0(sp)
    80002d58:	00113423          	sd	ra,8(sp)
    80002d5c:	01010413          	addi	s0,sp,16
    80002d60:	02059463          	bnez	a1,80002d88 <either_copyin+0x38>
    80002d64:	00060593          	mv	a1,a2
    80002d68:	0006861b          	sext.w	a2,a3
    80002d6c:	00002097          	auipc	ra,0x2
    80002d70:	c18080e7          	jalr	-1000(ra) # 80004984 <__memmove>
    80002d74:	00813083          	ld	ra,8(sp)
    80002d78:	00013403          	ld	s0,0(sp)
    80002d7c:	00000513          	li	a0,0
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret
    80002d88:	00002517          	auipc	a0,0x2
    80002d8c:	3a850513          	addi	a0,a0,936 # 80005130 <_ZZ12printIntegermE6digits+0xb8>
    80002d90:	00001097          	auipc	ra,0x1
    80002d94:	8ec080e7          	jalr	-1812(ra) # 8000367c <panic>

0000000080002d98 <trapinit>:
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00813423          	sd	s0,8(sp)
    80002da0:	01010413          	addi	s0,sp,16
    80002da4:	00813403          	ld	s0,8(sp)
    80002da8:	00002597          	auipc	a1,0x2
    80002dac:	3b058593          	addi	a1,a1,944 # 80005158 <_ZZ12printIntegermE6digits+0xe0>
    80002db0:	00004517          	auipc	a0,0x4
    80002db4:	3b050513          	addi	a0,a0,944 # 80007160 <tickslock>
    80002db8:	01010113          	addi	sp,sp,16
    80002dbc:	00001317          	auipc	t1,0x1
    80002dc0:	5cc30067          	jr	1484(t1) # 80004388 <initlock>

0000000080002dc4 <trapinithart>:
    80002dc4:	ff010113          	addi	sp,sp,-16
    80002dc8:	00813423          	sd	s0,8(sp)
    80002dcc:	01010413          	addi	s0,sp,16
    80002dd0:	00000797          	auipc	a5,0x0
    80002dd4:	30078793          	addi	a5,a5,768 # 800030d0 <kernelvec>
    80002dd8:	10579073          	csrw	stvec,a5
    80002ddc:	00813403          	ld	s0,8(sp)
    80002de0:	01010113          	addi	sp,sp,16
    80002de4:	00008067          	ret

0000000080002de8 <usertrap>:
    80002de8:	ff010113          	addi	sp,sp,-16
    80002dec:	00813423          	sd	s0,8(sp)
    80002df0:	01010413          	addi	s0,sp,16
    80002df4:	00813403          	ld	s0,8(sp)
    80002df8:	01010113          	addi	sp,sp,16
    80002dfc:	00008067          	ret

0000000080002e00 <usertrapret>:
    80002e00:	ff010113          	addi	sp,sp,-16
    80002e04:	00813423          	sd	s0,8(sp)
    80002e08:	01010413          	addi	s0,sp,16
    80002e0c:	00813403          	ld	s0,8(sp)
    80002e10:	01010113          	addi	sp,sp,16
    80002e14:	00008067          	ret

0000000080002e18 <kerneltrap>:
    80002e18:	fe010113          	addi	sp,sp,-32
    80002e1c:	00813823          	sd	s0,16(sp)
    80002e20:	00113c23          	sd	ra,24(sp)
    80002e24:	00913423          	sd	s1,8(sp)
    80002e28:	02010413          	addi	s0,sp,32
    80002e2c:	142025f3          	csrr	a1,scause
    80002e30:	100027f3          	csrr	a5,sstatus
    80002e34:	0027f793          	andi	a5,a5,2
    80002e38:	10079c63          	bnez	a5,80002f50 <kerneltrap+0x138>
    80002e3c:	142027f3          	csrr	a5,scause
    80002e40:	0207ce63          	bltz	a5,80002e7c <kerneltrap+0x64>
    80002e44:	00002517          	auipc	a0,0x2
    80002e48:	35c50513          	addi	a0,a0,860 # 800051a0 <_ZZ12printIntegermE6digits+0x128>
    80002e4c:	00001097          	auipc	ra,0x1
    80002e50:	88c080e7          	jalr	-1908(ra) # 800036d8 <__printf>
    80002e54:	141025f3          	csrr	a1,sepc
    80002e58:	14302673          	csrr	a2,stval
    80002e5c:	00002517          	auipc	a0,0x2
    80002e60:	35450513          	addi	a0,a0,852 # 800051b0 <_ZZ12printIntegermE6digits+0x138>
    80002e64:	00001097          	auipc	ra,0x1
    80002e68:	874080e7          	jalr	-1932(ra) # 800036d8 <__printf>
    80002e6c:	00002517          	auipc	a0,0x2
    80002e70:	35c50513          	addi	a0,a0,860 # 800051c8 <_ZZ12printIntegermE6digits+0x150>
    80002e74:	00001097          	auipc	ra,0x1
    80002e78:	808080e7          	jalr	-2040(ra) # 8000367c <panic>
    80002e7c:	0ff7f713          	andi	a4,a5,255
    80002e80:	00900693          	li	a3,9
    80002e84:	04d70063          	beq	a4,a3,80002ec4 <kerneltrap+0xac>
    80002e88:	fff00713          	li	a4,-1
    80002e8c:	03f71713          	slli	a4,a4,0x3f
    80002e90:	00170713          	addi	a4,a4,1
    80002e94:	fae798e3          	bne	a5,a4,80002e44 <kerneltrap+0x2c>
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	e00080e7          	jalr	-512(ra) # 80002c98 <cpuid>
    80002ea0:	06050663          	beqz	a0,80002f0c <kerneltrap+0xf4>
    80002ea4:	144027f3          	csrr	a5,sip
    80002ea8:	ffd7f793          	andi	a5,a5,-3
    80002eac:	14479073          	csrw	sip,a5
    80002eb0:	01813083          	ld	ra,24(sp)
    80002eb4:	01013403          	ld	s0,16(sp)
    80002eb8:	00813483          	ld	s1,8(sp)
    80002ebc:	02010113          	addi	sp,sp,32
    80002ec0:	00008067          	ret
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	3d0080e7          	jalr	976(ra) # 80003294 <plic_claim>
    80002ecc:	00a00793          	li	a5,10
    80002ed0:	00050493          	mv	s1,a0
    80002ed4:	06f50863          	beq	a0,a5,80002f44 <kerneltrap+0x12c>
    80002ed8:	fc050ce3          	beqz	a0,80002eb0 <kerneltrap+0x98>
    80002edc:	00050593          	mv	a1,a0
    80002ee0:	00002517          	auipc	a0,0x2
    80002ee4:	2a050513          	addi	a0,a0,672 # 80005180 <_ZZ12printIntegermE6digits+0x108>
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	7f0080e7          	jalr	2032(ra) # 800036d8 <__printf>
    80002ef0:	01013403          	ld	s0,16(sp)
    80002ef4:	01813083          	ld	ra,24(sp)
    80002ef8:	00048513          	mv	a0,s1
    80002efc:	00813483          	ld	s1,8(sp)
    80002f00:	02010113          	addi	sp,sp,32
    80002f04:	00000317          	auipc	t1,0x0
    80002f08:	3c830067          	jr	968(t1) # 800032cc <plic_complete>
    80002f0c:	00004517          	auipc	a0,0x4
    80002f10:	25450513          	addi	a0,a0,596 # 80007160 <tickslock>
    80002f14:	00001097          	auipc	ra,0x1
    80002f18:	498080e7          	jalr	1176(ra) # 800043ac <acquire>
    80002f1c:	00003717          	auipc	a4,0x3
    80002f20:	13870713          	addi	a4,a4,312 # 80006054 <ticks>
    80002f24:	00072783          	lw	a5,0(a4)
    80002f28:	00004517          	auipc	a0,0x4
    80002f2c:	23850513          	addi	a0,a0,568 # 80007160 <tickslock>
    80002f30:	0017879b          	addiw	a5,a5,1
    80002f34:	00f72023          	sw	a5,0(a4)
    80002f38:	00001097          	auipc	ra,0x1
    80002f3c:	540080e7          	jalr	1344(ra) # 80004478 <release>
    80002f40:	f65ff06f          	j	80002ea4 <kerneltrap+0x8c>
    80002f44:	00001097          	auipc	ra,0x1
    80002f48:	09c080e7          	jalr	156(ra) # 80003fe0 <uartintr>
    80002f4c:	fa5ff06f          	j	80002ef0 <kerneltrap+0xd8>
    80002f50:	00002517          	auipc	a0,0x2
    80002f54:	21050513          	addi	a0,a0,528 # 80005160 <_ZZ12printIntegermE6digits+0xe8>
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	724080e7          	jalr	1828(ra) # 8000367c <panic>

0000000080002f60 <clockintr>:
    80002f60:	fe010113          	addi	sp,sp,-32
    80002f64:	00813823          	sd	s0,16(sp)
    80002f68:	00913423          	sd	s1,8(sp)
    80002f6c:	00113c23          	sd	ra,24(sp)
    80002f70:	02010413          	addi	s0,sp,32
    80002f74:	00004497          	auipc	s1,0x4
    80002f78:	1ec48493          	addi	s1,s1,492 # 80007160 <tickslock>
    80002f7c:	00048513          	mv	a0,s1
    80002f80:	00001097          	auipc	ra,0x1
    80002f84:	42c080e7          	jalr	1068(ra) # 800043ac <acquire>
    80002f88:	00003717          	auipc	a4,0x3
    80002f8c:	0cc70713          	addi	a4,a4,204 # 80006054 <ticks>
    80002f90:	00072783          	lw	a5,0(a4)
    80002f94:	01013403          	ld	s0,16(sp)
    80002f98:	01813083          	ld	ra,24(sp)
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	0017879b          	addiw	a5,a5,1
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	00f72023          	sw	a5,0(a4)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00001317          	auipc	t1,0x1
    80002fb4:	4c830067          	jr	1224(t1) # 80004478 <release>

0000000080002fb8 <devintr>:
    80002fb8:	142027f3          	csrr	a5,scause
    80002fbc:	00000513          	li	a0,0
    80002fc0:	0007c463          	bltz	a5,80002fc8 <devintr+0x10>
    80002fc4:	00008067          	ret
    80002fc8:	fe010113          	addi	sp,sp,-32
    80002fcc:	00813823          	sd	s0,16(sp)
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00913423          	sd	s1,8(sp)
    80002fd8:	02010413          	addi	s0,sp,32
    80002fdc:	0ff7f713          	andi	a4,a5,255
    80002fe0:	00900693          	li	a3,9
    80002fe4:	04d70c63          	beq	a4,a3,8000303c <devintr+0x84>
    80002fe8:	fff00713          	li	a4,-1
    80002fec:	03f71713          	slli	a4,a4,0x3f
    80002ff0:	00170713          	addi	a4,a4,1
    80002ff4:	00e78c63          	beq	a5,a4,8000300c <devintr+0x54>
    80002ff8:	01813083          	ld	ra,24(sp)
    80002ffc:	01013403          	ld	s0,16(sp)
    80003000:	00813483          	ld	s1,8(sp)
    80003004:	02010113          	addi	sp,sp,32
    80003008:	00008067          	ret
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	c8c080e7          	jalr	-884(ra) # 80002c98 <cpuid>
    80003014:	06050663          	beqz	a0,80003080 <devintr+0xc8>
    80003018:	144027f3          	csrr	a5,sip
    8000301c:	ffd7f793          	andi	a5,a5,-3
    80003020:	14479073          	csrw	sip,a5
    80003024:	01813083          	ld	ra,24(sp)
    80003028:	01013403          	ld	s0,16(sp)
    8000302c:	00813483          	ld	s1,8(sp)
    80003030:	00200513          	li	a0,2
    80003034:	02010113          	addi	sp,sp,32
    80003038:	00008067          	ret
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	258080e7          	jalr	600(ra) # 80003294 <plic_claim>
    80003044:	00a00793          	li	a5,10
    80003048:	00050493          	mv	s1,a0
    8000304c:	06f50663          	beq	a0,a5,800030b8 <devintr+0x100>
    80003050:	00100513          	li	a0,1
    80003054:	fa0482e3          	beqz	s1,80002ff8 <devintr+0x40>
    80003058:	00048593          	mv	a1,s1
    8000305c:	00002517          	auipc	a0,0x2
    80003060:	12450513          	addi	a0,a0,292 # 80005180 <_ZZ12printIntegermE6digits+0x108>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	674080e7          	jalr	1652(ra) # 800036d8 <__printf>
    8000306c:	00048513          	mv	a0,s1
    80003070:	00000097          	auipc	ra,0x0
    80003074:	25c080e7          	jalr	604(ra) # 800032cc <plic_complete>
    80003078:	00100513          	li	a0,1
    8000307c:	f7dff06f          	j	80002ff8 <devintr+0x40>
    80003080:	00004517          	auipc	a0,0x4
    80003084:	0e050513          	addi	a0,a0,224 # 80007160 <tickslock>
    80003088:	00001097          	auipc	ra,0x1
    8000308c:	324080e7          	jalr	804(ra) # 800043ac <acquire>
    80003090:	00003717          	auipc	a4,0x3
    80003094:	fc470713          	addi	a4,a4,-60 # 80006054 <ticks>
    80003098:	00072783          	lw	a5,0(a4)
    8000309c:	00004517          	auipc	a0,0x4
    800030a0:	0c450513          	addi	a0,a0,196 # 80007160 <tickslock>
    800030a4:	0017879b          	addiw	a5,a5,1
    800030a8:	00f72023          	sw	a5,0(a4)
    800030ac:	00001097          	auipc	ra,0x1
    800030b0:	3cc080e7          	jalr	972(ra) # 80004478 <release>
    800030b4:	f65ff06f          	j	80003018 <devintr+0x60>
    800030b8:	00001097          	auipc	ra,0x1
    800030bc:	f28080e7          	jalr	-216(ra) # 80003fe0 <uartintr>
    800030c0:	fadff06f          	j	8000306c <devintr+0xb4>
	...

00000000800030d0 <kernelvec>:
    800030d0:	f0010113          	addi	sp,sp,-256
    800030d4:	00113023          	sd	ra,0(sp)
    800030d8:	00213423          	sd	sp,8(sp)
    800030dc:	00313823          	sd	gp,16(sp)
    800030e0:	00413c23          	sd	tp,24(sp)
    800030e4:	02513023          	sd	t0,32(sp)
    800030e8:	02613423          	sd	t1,40(sp)
    800030ec:	02713823          	sd	t2,48(sp)
    800030f0:	02813c23          	sd	s0,56(sp)
    800030f4:	04913023          	sd	s1,64(sp)
    800030f8:	04a13423          	sd	a0,72(sp)
    800030fc:	04b13823          	sd	a1,80(sp)
    80003100:	04c13c23          	sd	a2,88(sp)
    80003104:	06d13023          	sd	a3,96(sp)
    80003108:	06e13423          	sd	a4,104(sp)
    8000310c:	06f13823          	sd	a5,112(sp)
    80003110:	07013c23          	sd	a6,120(sp)
    80003114:	09113023          	sd	a7,128(sp)
    80003118:	09213423          	sd	s2,136(sp)
    8000311c:	09313823          	sd	s3,144(sp)
    80003120:	09413c23          	sd	s4,152(sp)
    80003124:	0b513023          	sd	s5,160(sp)
    80003128:	0b613423          	sd	s6,168(sp)
    8000312c:	0b713823          	sd	s7,176(sp)
    80003130:	0b813c23          	sd	s8,184(sp)
    80003134:	0d913023          	sd	s9,192(sp)
    80003138:	0da13423          	sd	s10,200(sp)
    8000313c:	0db13823          	sd	s11,208(sp)
    80003140:	0dc13c23          	sd	t3,216(sp)
    80003144:	0fd13023          	sd	t4,224(sp)
    80003148:	0fe13423          	sd	t5,232(sp)
    8000314c:	0ff13823          	sd	t6,240(sp)
    80003150:	cc9ff0ef          	jal	ra,80002e18 <kerneltrap>
    80003154:	00013083          	ld	ra,0(sp)
    80003158:	00813103          	ld	sp,8(sp)
    8000315c:	01013183          	ld	gp,16(sp)
    80003160:	02013283          	ld	t0,32(sp)
    80003164:	02813303          	ld	t1,40(sp)
    80003168:	03013383          	ld	t2,48(sp)
    8000316c:	03813403          	ld	s0,56(sp)
    80003170:	04013483          	ld	s1,64(sp)
    80003174:	04813503          	ld	a0,72(sp)
    80003178:	05013583          	ld	a1,80(sp)
    8000317c:	05813603          	ld	a2,88(sp)
    80003180:	06013683          	ld	a3,96(sp)
    80003184:	06813703          	ld	a4,104(sp)
    80003188:	07013783          	ld	a5,112(sp)
    8000318c:	07813803          	ld	a6,120(sp)
    80003190:	08013883          	ld	a7,128(sp)
    80003194:	08813903          	ld	s2,136(sp)
    80003198:	09013983          	ld	s3,144(sp)
    8000319c:	09813a03          	ld	s4,152(sp)
    800031a0:	0a013a83          	ld	s5,160(sp)
    800031a4:	0a813b03          	ld	s6,168(sp)
    800031a8:	0b013b83          	ld	s7,176(sp)
    800031ac:	0b813c03          	ld	s8,184(sp)
    800031b0:	0c013c83          	ld	s9,192(sp)
    800031b4:	0c813d03          	ld	s10,200(sp)
    800031b8:	0d013d83          	ld	s11,208(sp)
    800031bc:	0d813e03          	ld	t3,216(sp)
    800031c0:	0e013e83          	ld	t4,224(sp)
    800031c4:	0e813f03          	ld	t5,232(sp)
    800031c8:	0f013f83          	ld	t6,240(sp)
    800031cc:	10010113          	addi	sp,sp,256
    800031d0:	10200073          	sret
    800031d4:	00000013          	nop
    800031d8:	00000013          	nop
    800031dc:	00000013          	nop

00000000800031e0 <timervec>:
    800031e0:	34051573          	csrrw	a0,mscratch,a0
    800031e4:	00b53023          	sd	a1,0(a0)
    800031e8:	00c53423          	sd	a2,8(a0)
    800031ec:	00d53823          	sd	a3,16(a0)
    800031f0:	01853583          	ld	a1,24(a0)
    800031f4:	02053603          	ld	a2,32(a0)
    800031f8:	0005b683          	ld	a3,0(a1)
    800031fc:	00c686b3          	add	a3,a3,a2
    80003200:	00d5b023          	sd	a3,0(a1)
    80003204:	00200593          	li	a1,2
    80003208:	14459073          	csrw	sip,a1
    8000320c:	01053683          	ld	a3,16(a0)
    80003210:	00853603          	ld	a2,8(a0)
    80003214:	00053583          	ld	a1,0(a0)
    80003218:	34051573          	csrrw	a0,mscratch,a0
    8000321c:	30200073          	mret

0000000080003220 <plicinit>:
    80003220:	ff010113          	addi	sp,sp,-16
    80003224:	00813423          	sd	s0,8(sp)
    80003228:	01010413          	addi	s0,sp,16
    8000322c:	00813403          	ld	s0,8(sp)
    80003230:	0c0007b7          	lui	a5,0xc000
    80003234:	00100713          	li	a4,1
    80003238:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000323c:	00e7a223          	sw	a4,4(a5)
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret

0000000080003248 <plicinithart>:
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00813023          	sd	s0,0(sp)
    80003250:	00113423          	sd	ra,8(sp)
    80003254:	01010413          	addi	s0,sp,16
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	a40080e7          	jalr	-1472(ra) # 80002c98 <cpuid>
    80003260:	0085171b          	slliw	a4,a0,0x8
    80003264:	0c0027b7          	lui	a5,0xc002
    80003268:	00e787b3          	add	a5,a5,a4
    8000326c:	40200713          	li	a4,1026
    80003270:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003274:	00813083          	ld	ra,8(sp)
    80003278:	00013403          	ld	s0,0(sp)
    8000327c:	00d5151b          	slliw	a0,a0,0xd
    80003280:	0c2017b7          	lui	a5,0xc201
    80003284:	00a78533          	add	a0,a5,a0
    80003288:	00052023          	sw	zero,0(a0)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <plic_claim>:
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00813023          	sd	s0,0(sp)
    8000329c:	00113423          	sd	ra,8(sp)
    800032a0:	01010413          	addi	s0,sp,16
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	9f4080e7          	jalr	-1548(ra) # 80002c98 <cpuid>
    800032ac:	00813083          	ld	ra,8(sp)
    800032b0:	00013403          	ld	s0,0(sp)
    800032b4:	00d5151b          	slliw	a0,a0,0xd
    800032b8:	0c2017b7          	lui	a5,0xc201
    800032bc:	00a78533          	add	a0,a5,a0
    800032c0:	00452503          	lw	a0,4(a0)
    800032c4:	01010113          	addi	sp,sp,16
    800032c8:	00008067          	ret

00000000800032cc <plic_complete>:
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00813823          	sd	s0,16(sp)
    800032d4:	00913423          	sd	s1,8(sp)
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	02010413          	addi	s0,sp,32
    800032e0:	00050493          	mv	s1,a0
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	9b4080e7          	jalr	-1612(ra) # 80002c98 <cpuid>
    800032ec:	01813083          	ld	ra,24(sp)
    800032f0:	01013403          	ld	s0,16(sp)
    800032f4:	00d5179b          	slliw	a5,a0,0xd
    800032f8:	0c201737          	lui	a4,0xc201
    800032fc:	00f707b3          	add	a5,a4,a5
    80003300:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret

0000000080003310 <consolewrite>:
    80003310:	fb010113          	addi	sp,sp,-80
    80003314:	04813023          	sd	s0,64(sp)
    80003318:	04113423          	sd	ra,72(sp)
    8000331c:	02913c23          	sd	s1,56(sp)
    80003320:	03213823          	sd	s2,48(sp)
    80003324:	03313423          	sd	s3,40(sp)
    80003328:	03413023          	sd	s4,32(sp)
    8000332c:	01513c23          	sd	s5,24(sp)
    80003330:	05010413          	addi	s0,sp,80
    80003334:	06c05c63          	blez	a2,800033ac <consolewrite+0x9c>
    80003338:	00060993          	mv	s3,a2
    8000333c:	00050a13          	mv	s4,a0
    80003340:	00058493          	mv	s1,a1
    80003344:	00000913          	li	s2,0
    80003348:	fff00a93          	li	s5,-1
    8000334c:	01c0006f          	j	80003368 <consolewrite+0x58>
    80003350:	fbf44503          	lbu	a0,-65(s0)
    80003354:	0019091b          	addiw	s2,s2,1
    80003358:	00148493          	addi	s1,s1,1
    8000335c:	00001097          	auipc	ra,0x1
    80003360:	a9c080e7          	jalr	-1380(ra) # 80003df8 <uartputc>
    80003364:	03298063          	beq	s3,s2,80003384 <consolewrite+0x74>
    80003368:	00048613          	mv	a2,s1
    8000336c:	00100693          	li	a3,1
    80003370:	000a0593          	mv	a1,s4
    80003374:	fbf40513          	addi	a0,s0,-65
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	9d8080e7          	jalr	-1576(ra) # 80002d50 <either_copyin>
    80003380:	fd5518e3          	bne	a0,s5,80003350 <consolewrite+0x40>
    80003384:	04813083          	ld	ra,72(sp)
    80003388:	04013403          	ld	s0,64(sp)
    8000338c:	03813483          	ld	s1,56(sp)
    80003390:	02813983          	ld	s3,40(sp)
    80003394:	02013a03          	ld	s4,32(sp)
    80003398:	01813a83          	ld	s5,24(sp)
    8000339c:	00090513          	mv	a0,s2
    800033a0:	03013903          	ld	s2,48(sp)
    800033a4:	05010113          	addi	sp,sp,80
    800033a8:	00008067          	ret
    800033ac:	00000913          	li	s2,0
    800033b0:	fd5ff06f          	j	80003384 <consolewrite+0x74>

00000000800033b4 <consoleread>:
    800033b4:	f9010113          	addi	sp,sp,-112
    800033b8:	06813023          	sd	s0,96(sp)
    800033bc:	04913c23          	sd	s1,88(sp)
    800033c0:	05213823          	sd	s2,80(sp)
    800033c4:	05313423          	sd	s3,72(sp)
    800033c8:	05413023          	sd	s4,64(sp)
    800033cc:	03513c23          	sd	s5,56(sp)
    800033d0:	03613823          	sd	s6,48(sp)
    800033d4:	03713423          	sd	s7,40(sp)
    800033d8:	03813023          	sd	s8,32(sp)
    800033dc:	06113423          	sd	ra,104(sp)
    800033e0:	01913c23          	sd	s9,24(sp)
    800033e4:	07010413          	addi	s0,sp,112
    800033e8:	00060b93          	mv	s7,a2
    800033ec:	00050913          	mv	s2,a0
    800033f0:	00058c13          	mv	s8,a1
    800033f4:	00060b1b          	sext.w	s6,a2
    800033f8:	00004497          	auipc	s1,0x4
    800033fc:	d9048493          	addi	s1,s1,-624 # 80007188 <cons>
    80003400:	00400993          	li	s3,4
    80003404:	fff00a13          	li	s4,-1
    80003408:	00a00a93          	li	s5,10
    8000340c:	05705e63          	blez	s7,80003468 <consoleread+0xb4>
    80003410:	09c4a703          	lw	a4,156(s1)
    80003414:	0984a783          	lw	a5,152(s1)
    80003418:	0007071b          	sext.w	a4,a4
    8000341c:	08e78463          	beq	a5,a4,800034a4 <consoleread+0xf0>
    80003420:	07f7f713          	andi	a4,a5,127
    80003424:	00e48733          	add	a4,s1,a4
    80003428:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000342c:	0017869b          	addiw	a3,a5,1
    80003430:	08d4ac23          	sw	a3,152(s1)
    80003434:	00070c9b          	sext.w	s9,a4
    80003438:	0b370663          	beq	a4,s3,800034e4 <consoleread+0x130>
    8000343c:	00100693          	li	a3,1
    80003440:	f9f40613          	addi	a2,s0,-97
    80003444:	000c0593          	mv	a1,s8
    80003448:	00090513          	mv	a0,s2
    8000344c:	f8e40fa3          	sb	a4,-97(s0)
    80003450:	00000097          	auipc	ra,0x0
    80003454:	8b4080e7          	jalr	-1868(ra) # 80002d04 <either_copyout>
    80003458:	01450863          	beq	a0,s4,80003468 <consoleread+0xb4>
    8000345c:	001c0c13          	addi	s8,s8,1
    80003460:	fffb8b9b          	addiw	s7,s7,-1
    80003464:	fb5c94e3          	bne	s9,s5,8000340c <consoleread+0x58>
    80003468:	000b851b          	sext.w	a0,s7
    8000346c:	06813083          	ld	ra,104(sp)
    80003470:	06013403          	ld	s0,96(sp)
    80003474:	05813483          	ld	s1,88(sp)
    80003478:	05013903          	ld	s2,80(sp)
    8000347c:	04813983          	ld	s3,72(sp)
    80003480:	04013a03          	ld	s4,64(sp)
    80003484:	03813a83          	ld	s5,56(sp)
    80003488:	02813b83          	ld	s7,40(sp)
    8000348c:	02013c03          	ld	s8,32(sp)
    80003490:	01813c83          	ld	s9,24(sp)
    80003494:	40ab053b          	subw	a0,s6,a0
    80003498:	03013b03          	ld	s6,48(sp)
    8000349c:	07010113          	addi	sp,sp,112
    800034a0:	00008067          	ret
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	1d8080e7          	jalr	472(ra) # 8000467c <push_on>
    800034ac:	0984a703          	lw	a4,152(s1)
    800034b0:	09c4a783          	lw	a5,156(s1)
    800034b4:	0007879b          	sext.w	a5,a5
    800034b8:	fef70ce3          	beq	a4,a5,800034b0 <consoleread+0xfc>
    800034bc:	00001097          	auipc	ra,0x1
    800034c0:	234080e7          	jalr	564(ra) # 800046f0 <pop_on>
    800034c4:	0984a783          	lw	a5,152(s1)
    800034c8:	07f7f713          	andi	a4,a5,127
    800034cc:	00e48733          	add	a4,s1,a4
    800034d0:	01874703          	lbu	a4,24(a4)
    800034d4:	0017869b          	addiw	a3,a5,1
    800034d8:	08d4ac23          	sw	a3,152(s1)
    800034dc:	00070c9b          	sext.w	s9,a4
    800034e0:	f5371ee3          	bne	a4,s3,8000343c <consoleread+0x88>
    800034e4:	000b851b          	sext.w	a0,s7
    800034e8:	f96bf2e3          	bgeu	s7,s6,8000346c <consoleread+0xb8>
    800034ec:	08f4ac23          	sw	a5,152(s1)
    800034f0:	f7dff06f          	j	8000346c <consoleread+0xb8>

00000000800034f4 <consputc>:
    800034f4:	10000793          	li	a5,256
    800034f8:	00f50663          	beq	a0,a5,80003504 <consputc+0x10>
    800034fc:	00001317          	auipc	t1,0x1
    80003500:	9f430067          	jr	-1548(t1) # 80003ef0 <uartputc_sync>
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00113423          	sd	ra,8(sp)
    8000350c:	00813023          	sd	s0,0(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	00800513          	li	a0,8
    80003518:	00001097          	auipc	ra,0x1
    8000351c:	9d8080e7          	jalr	-1576(ra) # 80003ef0 <uartputc_sync>
    80003520:	02000513          	li	a0,32
    80003524:	00001097          	auipc	ra,0x1
    80003528:	9cc080e7          	jalr	-1588(ra) # 80003ef0 <uartputc_sync>
    8000352c:	00013403          	ld	s0,0(sp)
    80003530:	00813083          	ld	ra,8(sp)
    80003534:	00800513          	li	a0,8
    80003538:	01010113          	addi	sp,sp,16
    8000353c:	00001317          	auipc	t1,0x1
    80003540:	9b430067          	jr	-1612(t1) # 80003ef0 <uartputc_sync>

0000000080003544 <consoleintr>:
    80003544:	fe010113          	addi	sp,sp,-32
    80003548:	00813823          	sd	s0,16(sp)
    8000354c:	00913423          	sd	s1,8(sp)
    80003550:	01213023          	sd	s2,0(sp)
    80003554:	00113c23          	sd	ra,24(sp)
    80003558:	02010413          	addi	s0,sp,32
    8000355c:	00004917          	auipc	s2,0x4
    80003560:	c2c90913          	addi	s2,s2,-980 # 80007188 <cons>
    80003564:	00050493          	mv	s1,a0
    80003568:	00090513          	mv	a0,s2
    8000356c:	00001097          	auipc	ra,0x1
    80003570:	e40080e7          	jalr	-448(ra) # 800043ac <acquire>
    80003574:	02048c63          	beqz	s1,800035ac <consoleintr+0x68>
    80003578:	0a092783          	lw	a5,160(s2)
    8000357c:	09892703          	lw	a4,152(s2)
    80003580:	07f00693          	li	a3,127
    80003584:	40e7873b          	subw	a4,a5,a4
    80003588:	02e6e263          	bltu	a3,a4,800035ac <consoleintr+0x68>
    8000358c:	00d00713          	li	a4,13
    80003590:	04e48063          	beq	s1,a4,800035d0 <consoleintr+0x8c>
    80003594:	07f7f713          	andi	a4,a5,127
    80003598:	00e90733          	add	a4,s2,a4
    8000359c:	0017879b          	addiw	a5,a5,1
    800035a0:	0af92023          	sw	a5,160(s2)
    800035a4:	00970c23          	sb	s1,24(a4)
    800035a8:	08f92e23          	sw	a5,156(s2)
    800035ac:	01013403          	ld	s0,16(sp)
    800035b0:	01813083          	ld	ra,24(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	00013903          	ld	s2,0(sp)
    800035bc:	00004517          	auipc	a0,0x4
    800035c0:	bcc50513          	addi	a0,a0,-1076 # 80007188 <cons>
    800035c4:	02010113          	addi	sp,sp,32
    800035c8:	00001317          	auipc	t1,0x1
    800035cc:	eb030067          	jr	-336(t1) # 80004478 <release>
    800035d0:	00a00493          	li	s1,10
    800035d4:	fc1ff06f          	j	80003594 <consoleintr+0x50>

00000000800035d8 <consoleinit>:
    800035d8:	fe010113          	addi	sp,sp,-32
    800035dc:	00113c23          	sd	ra,24(sp)
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00913423          	sd	s1,8(sp)
    800035e8:	02010413          	addi	s0,sp,32
    800035ec:	00004497          	auipc	s1,0x4
    800035f0:	b9c48493          	addi	s1,s1,-1124 # 80007188 <cons>
    800035f4:	00048513          	mv	a0,s1
    800035f8:	00002597          	auipc	a1,0x2
    800035fc:	be058593          	addi	a1,a1,-1056 # 800051d8 <_ZZ12printIntegermE6digits+0x160>
    80003600:	00001097          	auipc	ra,0x1
    80003604:	d88080e7          	jalr	-632(ra) # 80004388 <initlock>
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	7ac080e7          	jalr	1964(ra) # 80003db4 <uartinit>
    80003610:	01813083          	ld	ra,24(sp)
    80003614:	01013403          	ld	s0,16(sp)
    80003618:	00000797          	auipc	a5,0x0
    8000361c:	d9c78793          	addi	a5,a5,-612 # 800033b4 <consoleread>
    80003620:	0af4bc23          	sd	a5,184(s1)
    80003624:	00000797          	auipc	a5,0x0
    80003628:	cec78793          	addi	a5,a5,-788 # 80003310 <consolewrite>
    8000362c:	0cf4b023          	sd	a5,192(s1)
    80003630:	00813483          	ld	s1,8(sp)
    80003634:	02010113          	addi	sp,sp,32
    80003638:	00008067          	ret

000000008000363c <console_read>:
    8000363c:	ff010113          	addi	sp,sp,-16
    80003640:	00813423          	sd	s0,8(sp)
    80003644:	01010413          	addi	s0,sp,16
    80003648:	00813403          	ld	s0,8(sp)
    8000364c:	00004317          	auipc	t1,0x4
    80003650:	bf433303          	ld	t1,-1036(t1) # 80007240 <devsw+0x10>
    80003654:	01010113          	addi	sp,sp,16
    80003658:	00030067          	jr	t1

000000008000365c <console_write>:
    8000365c:	ff010113          	addi	sp,sp,-16
    80003660:	00813423          	sd	s0,8(sp)
    80003664:	01010413          	addi	s0,sp,16
    80003668:	00813403          	ld	s0,8(sp)
    8000366c:	00004317          	auipc	t1,0x4
    80003670:	bdc33303          	ld	t1,-1060(t1) # 80007248 <devsw+0x18>
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00030067          	jr	t1

000000008000367c <panic>:
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	00050493          	mv	s1,a0
    80003694:	00002517          	auipc	a0,0x2
    80003698:	b4c50513          	addi	a0,a0,-1204 # 800051e0 <_ZZ12printIntegermE6digits+0x168>
    8000369c:	00004797          	auipc	a5,0x4
    800036a0:	c407a623          	sw	zero,-948(a5) # 800072e8 <pr+0x18>
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	034080e7          	jalr	52(ra) # 800036d8 <__printf>
    800036ac:	00048513          	mv	a0,s1
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	028080e7          	jalr	40(ra) # 800036d8 <__printf>
    800036b8:	00002517          	auipc	a0,0x2
    800036bc:	b0850513          	addi	a0,a0,-1272 # 800051c0 <_ZZ12printIntegermE6digits+0x148>
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	018080e7          	jalr	24(ra) # 800036d8 <__printf>
    800036c8:	00100793          	li	a5,1
    800036cc:	00003717          	auipc	a4,0x3
    800036d0:	98f72623          	sw	a5,-1652(a4) # 80006058 <panicked>
    800036d4:	0000006f          	j	800036d4 <panic+0x58>

00000000800036d8 <__printf>:
    800036d8:	f3010113          	addi	sp,sp,-208
    800036dc:	08813023          	sd	s0,128(sp)
    800036e0:	07313423          	sd	s3,104(sp)
    800036e4:	09010413          	addi	s0,sp,144
    800036e8:	05813023          	sd	s8,64(sp)
    800036ec:	08113423          	sd	ra,136(sp)
    800036f0:	06913c23          	sd	s1,120(sp)
    800036f4:	07213823          	sd	s2,112(sp)
    800036f8:	07413023          	sd	s4,96(sp)
    800036fc:	05513c23          	sd	s5,88(sp)
    80003700:	05613823          	sd	s6,80(sp)
    80003704:	05713423          	sd	s7,72(sp)
    80003708:	03913c23          	sd	s9,56(sp)
    8000370c:	03a13823          	sd	s10,48(sp)
    80003710:	03b13423          	sd	s11,40(sp)
    80003714:	00004317          	auipc	t1,0x4
    80003718:	bbc30313          	addi	t1,t1,-1092 # 800072d0 <pr>
    8000371c:	01832c03          	lw	s8,24(t1)
    80003720:	00b43423          	sd	a1,8(s0)
    80003724:	00c43823          	sd	a2,16(s0)
    80003728:	00d43c23          	sd	a3,24(s0)
    8000372c:	02e43023          	sd	a4,32(s0)
    80003730:	02f43423          	sd	a5,40(s0)
    80003734:	03043823          	sd	a6,48(s0)
    80003738:	03143c23          	sd	a7,56(s0)
    8000373c:	00050993          	mv	s3,a0
    80003740:	4a0c1663          	bnez	s8,80003bec <__printf+0x514>
    80003744:	60098c63          	beqz	s3,80003d5c <__printf+0x684>
    80003748:	0009c503          	lbu	a0,0(s3)
    8000374c:	00840793          	addi	a5,s0,8
    80003750:	f6f43c23          	sd	a5,-136(s0)
    80003754:	00000493          	li	s1,0
    80003758:	22050063          	beqz	a0,80003978 <__printf+0x2a0>
    8000375c:	00002a37          	lui	s4,0x2
    80003760:	00018ab7          	lui	s5,0x18
    80003764:	000f4b37          	lui	s6,0xf4
    80003768:	00989bb7          	lui	s7,0x989
    8000376c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003770:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003774:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003778:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000377c:	00148c9b          	addiw	s9,s1,1
    80003780:	02500793          	li	a5,37
    80003784:	01998933          	add	s2,s3,s9
    80003788:	38f51263          	bne	a0,a5,80003b0c <__printf+0x434>
    8000378c:	00094783          	lbu	a5,0(s2)
    80003790:	00078c9b          	sext.w	s9,a5
    80003794:	1e078263          	beqz	a5,80003978 <__printf+0x2a0>
    80003798:	0024849b          	addiw	s1,s1,2
    8000379c:	07000713          	li	a4,112
    800037a0:	00998933          	add	s2,s3,s1
    800037a4:	38e78a63          	beq	a5,a4,80003b38 <__printf+0x460>
    800037a8:	20f76863          	bltu	a4,a5,800039b8 <__printf+0x2e0>
    800037ac:	42a78863          	beq	a5,a0,80003bdc <__printf+0x504>
    800037b0:	06400713          	li	a4,100
    800037b4:	40e79663          	bne	a5,a4,80003bc0 <__printf+0x4e8>
    800037b8:	f7843783          	ld	a5,-136(s0)
    800037bc:	0007a603          	lw	a2,0(a5)
    800037c0:	00878793          	addi	a5,a5,8
    800037c4:	f6f43c23          	sd	a5,-136(s0)
    800037c8:	42064a63          	bltz	a2,80003bfc <__printf+0x524>
    800037cc:	00a00713          	li	a4,10
    800037d0:	02e677bb          	remuw	a5,a2,a4
    800037d4:	00002d97          	auipc	s11,0x2
    800037d8:	a34d8d93          	addi	s11,s11,-1484 # 80005208 <digits>
    800037dc:	00900593          	li	a1,9
    800037e0:	0006051b          	sext.w	a0,a2
    800037e4:	00000c93          	li	s9,0
    800037e8:	02079793          	slli	a5,a5,0x20
    800037ec:	0207d793          	srli	a5,a5,0x20
    800037f0:	00fd87b3          	add	a5,s11,a5
    800037f4:	0007c783          	lbu	a5,0(a5)
    800037f8:	02e656bb          	divuw	a3,a2,a4
    800037fc:	f8f40023          	sb	a5,-128(s0)
    80003800:	14c5d863          	bge	a1,a2,80003950 <__printf+0x278>
    80003804:	06300593          	li	a1,99
    80003808:	00100c93          	li	s9,1
    8000380c:	02e6f7bb          	remuw	a5,a3,a4
    80003810:	02079793          	slli	a5,a5,0x20
    80003814:	0207d793          	srli	a5,a5,0x20
    80003818:	00fd87b3          	add	a5,s11,a5
    8000381c:	0007c783          	lbu	a5,0(a5)
    80003820:	02e6d73b          	divuw	a4,a3,a4
    80003824:	f8f400a3          	sb	a5,-127(s0)
    80003828:	12a5f463          	bgeu	a1,a0,80003950 <__printf+0x278>
    8000382c:	00a00693          	li	a3,10
    80003830:	00900593          	li	a1,9
    80003834:	02d777bb          	remuw	a5,a4,a3
    80003838:	02079793          	slli	a5,a5,0x20
    8000383c:	0207d793          	srli	a5,a5,0x20
    80003840:	00fd87b3          	add	a5,s11,a5
    80003844:	0007c503          	lbu	a0,0(a5)
    80003848:	02d757bb          	divuw	a5,a4,a3
    8000384c:	f8a40123          	sb	a0,-126(s0)
    80003850:	48e5f263          	bgeu	a1,a4,80003cd4 <__printf+0x5fc>
    80003854:	06300513          	li	a0,99
    80003858:	02d7f5bb          	remuw	a1,a5,a3
    8000385c:	02059593          	slli	a1,a1,0x20
    80003860:	0205d593          	srli	a1,a1,0x20
    80003864:	00bd85b3          	add	a1,s11,a1
    80003868:	0005c583          	lbu	a1,0(a1)
    8000386c:	02d7d7bb          	divuw	a5,a5,a3
    80003870:	f8b401a3          	sb	a1,-125(s0)
    80003874:	48e57263          	bgeu	a0,a4,80003cf8 <__printf+0x620>
    80003878:	3e700513          	li	a0,999
    8000387c:	02d7f5bb          	remuw	a1,a5,a3
    80003880:	02059593          	slli	a1,a1,0x20
    80003884:	0205d593          	srli	a1,a1,0x20
    80003888:	00bd85b3          	add	a1,s11,a1
    8000388c:	0005c583          	lbu	a1,0(a1)
    80003890:	02d7d7bb          	divuw	a5,a5,a3
    80003894:	f8b40223          	sb	a1,-124(s0)
    80003898:	46e57663          	bgeu	a0,a4,80003d04 <__printf+0x62c>
    8000389c:	02d7f5bb          	remuw	a1,a5,a3
    800038a0:	02059593          	slli	a1,a1,0x20
    800038a4:	0205d593          	srli	a1,a1,0x20
    800038a8:	00bd85b3          	add	a1,s11,a1
    800038ac:	0005c583          	lbu	a1,0(a1)
    800038b0:	02d7d7bb          	divuw	a5,a5,a3
    800038b4:	f8b402a3          	sb	a1,-123(s0)
    800038b8:	46ea7863          	bgeu	s4,a4,80003d28 <__printf+0x650>
    800038bc:	02d7f5bb          	remuw	a1,a5,a3
    800038c0:	02059593          	slli	a1,a1,0x20
    800038c4:	0205d593          	srli	a1,a1,0x20
    800038c8:	00bd85b3          	add	a1,s11,a1
    800038cc:	0005c583          	lbu	a1,0(a1)
    800038d0:	02d7d7bb          	divuw	a5,a5,a3
    800038d4:	f8b40323          	sb	a1,-122(s0)
    800038d8:	3eeaf863          	bgeu	s5,a4,80003cc8 <__printf+0x5f0>
    800038dc:	02d7f5bb          	remuw	a1,a5,a3
    800038e0:	02059593          	slli	a1,a1,0x20
    800038e4:	0205d593          	srli	a1,a1,0x20
    800038e8:	00bd85b3          	add	a1,s11,a1
    800038ec:	0005c583          	lbu	a1,0(a1)
    800038f0:	02d7d7bb          	divuw	a5,a5,a3
    800038f4:	f8b403a3          	sb	a1,-121(s0)
    800038f8:	42eb7e63          	bgeu	s6,a4,80003d34 <__printf+0x65c>
    800038fc:	02d7f5bb          	remuw	a1,a5,a3
    80003900:	02059593          	slli	a1,a1,0x20
    80003904:	0205d593          	srli	a1,a1,0x20
    80003908:	00bd85b3          	add	a1,s11,a1
    8000390c:	0005c583          	lbu	a1,0(a1)
    80003910:	02d7d7bb          	divuw	a5,a5,a3
    80003914:	f8b40423          	sb	a1,-120(s0)
    80003918:	42ebfc63          	bgeu	s7,a4,80003d50 <__printf+0x678>
    8000391c:	02079793          	slli	a5,a5,0x20
    80003920:	0207d793          	srli	a5,a5,0x20
    80003924:	00fd8db3          	add	s11,s11,a5
    80003928:	000dc703          	lbu	a4,0(s11)
    8000392c:	00a00793          	li	a5,10
    80003930:	00900c93          	li	s9,9
    80003934:	f8e404a3          	sb	a4,-119(s0)
    80003938:	00065c63          	bgez	a2,80003950 <__printf+0x278>
    8000393c:	f9040713          	addi	a4,s0,-112
    80003940:	00f70733          	add	a4,a4,a5
    80003944:	02d00693          	li	a3,45
    80003948:	fed70823          	sb	a3,-16(a4)
    8000394c:	00078c93          	mv	s9,a5
    80003950:	f8040793          	addi	a5,s0,-128
    80003954:	01978cb3          	add	s9,a5,s9
    80003958:	f7f40d13          	addi	s10,s0,-129
    8000395c:	000cc503          	lbu	a0,0(s9)
    80003960:	fffc8c93          	addi	s9,s9,-1
    80003964:	00000097          	auipc	ra,0x0
    80003968:	b90080e7          	jalr	-1136(ra) # 800034f4 <consputc>
    8000396c:	ffac98e3          	bne	s9,s10,8000395c <__printf+0x284>
    80003970:	00094503          	lbu	a0,0(s2)
    80003974:	e00514e3          	bnez	a0,8000377c <__printf+0xa4>
    80003978:	1a0c1663          	bnez	s8,80003b24 <__printf+0x44c>
    8000397c:	08813083          	ld	ra,136(sp)
    80003980:	08013403          	ld	s0,128(sp)
    80003984:	07813483          	ld	s1,120(sp)
    80003988:	07013903          	ld	s2,112(sp)
    8000398c:	06813983          	ld	s3,104(sp)
    80003990:	06013a03          	ld	s4,96(sp)
    80003994:	05813a83          	ld	s5,88(sp)
    80003998:	05013b03          	ld	s6,80(sp)
    8000399c:	04813b83          	ld	s7,72(sp)
    800039a0:	04013c03          	ld	s8,64(sp)
    800039a4:	03813c83          	ld	s9,56(sp)
    800039a8:	03013d03          	ld	s10,48(sp)
    800039ac:	02813d83          	ld	s11,40(sp)
    800039b0:	0d010113          	addi	sp,sp,208
    800039b4:	00008067          	ret
    800039b8:	07300713          	li	a4,115
    800039bc:	1ce78a63          	beq	a5,a4,80003b90 <__printf+0x4b8>
    800039c0:	07800713          	li	a4,120
    800039c4:	1ee79e63          	bne	a5,a4,80003bc0 <__printf+0x4e8>
    800039c8:	f7843783          	ld	a5,-136(s0)
    800039cc:	0007a703          	lw	a4,0(a5)
    800039d0:	00878793          	addi	a5,a5,8
    800039d4:	f6f43c23          	sd	a5,-136(s0)
    800039d8:	28074263          	bltz	a4,80003c5c <__printf+0x584>
    800039dc:	00002d97          	auipc	s11,0x2
    800039e0:	82cd8d93          	addi	s11,s11,-2004 # 80005208 <digits>
    800039e4:	00f77793          	andi	a5,a4,15
    800039e8:	00fd87b3          	add	a5,s11,a5
    800039ec:	0007c683          	lbu	a3,0(a5)
    800039f0:	00f00613          	li	a2,15
    800039f4:	0007079b          	sext.w	a5,a4
    800039f8:	f8d40023          	sb	a3,-128(s0)
    800039fc:	0047559b          	srliw	a1,a4,0x4
    80003a00:	0047569b          	srliw	a3,a4,0x4
    80003a04:	00000c93          	li	s9,0
    80003a08:	0ee65063          	bge	a2,a4,80003ae8 <__printf+0x410>
    80003a0c:	00f6f693          	andi	a3,a3,15
    80003a10:	00dd86b3          	add	a3,s11,a3
    80003a14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003a18:	0087d79b          	srliw	a5,a5,0x8
    80003a1c:	00100c93          	li	s9,1
    80003a20:	f8d400a3          	sb	a3,-127(s0)
    80003a24:	0cb67263          	bgeu	a2,a1,80003ae8 <__printf+0x410>
    80003a28:	00f7f693          	andi	a3,a5,15
    80003a2c:	00dd86b3          	add	a3,s11,a3
    80003a30:	0006c583          	lbu	a1,0(a3)
    80003a34:	00f00613          	li	a2,15
    80003a38:	0047d69b          	srliw	a3,a5,0x4
    80003a3c:	f8b40123          	sb	a1,-126(s0)
    80003a40:	0047d593          	srli	a1,a5,0x4
    80003a44:	28f67e63          	bgeu	a2,a5,80003ce0 <__printf+0x608>
    80003a48:	00f6f693          	andi	a3,a3,15
    80003a4c:	00dd86b3          	add	a3,s11,a3
    80003a50:	0006c503          	lbu	a0,0(a3)
    80003a54:	0087d813          	srli	a6,a5,0x8
    80003a58:	0087d69b          	srliw	a3,a5,0x8
    80003a5c:	f8a401a3          	sb	a0,-125(s0)
    80003a60:	28b67663          	bgeu	a2,a1,80003cec <__printf+0x614>
    80003a64:	00f6f693          	andi	a3,a3,15
    80003a68:	00dd86b3          	add	a3,s11,a3
    80003a6c:	0006c583          	lbu	a1,0(a3)
    80003a70:	00c7d513          	srli	a0,a5,0xc
    80003a74:	00c7d69b          	srliw	a3,a5,0xc
    80003a78:	f8b40223          	sb	a1,-124(s0)
    80003a7c:	29067a63          	bgeu	a2,a6,80003d10 <__printf+0x638>
    80003a80:	00f6f693          	andi	a3,a3,15
    80003a84:	00dd86b3          	add	a3,s11,a3
    80003a88:	0006c583          	lbu	a1,0(a3)
    80003a8c:	0107d813          	srli	a6,a5,0x10
    80003a90:	0107d69b          	srliw	a3,a5,0x10
    80003a94:	f8b402a3          	sb	a1,-123(s0)
    80003a98:	28a67263          	bgeu	a2,a0,80003d1c <__printf+0x644>
    80003a9c:	00f6f693          	andi	a3,a3,15
    80003aa0:	00dd86b3          	add	a3,s11,a3
    80003aa4:	0006c683          	lbu	a3,0(a3)
    80003aa8:	0147d79b          	srliw	a5,a5,0x14
    80003aac:	f8d40323          	sb	a3,-122(s0)
    80003ab0:	21067663          	bgeu	a2,a6,80003cbc <__printf+0x5e4>
    80003ab4:	02079793          	slli	a5,a5,0x20
    80003ab8:	0207d793          	srli	a5,a5,0x20
    80003abc:	00fd8db3          	add	s11,s11,a5
    80003ac0:	000dc683          	lbu	a3,0(s11)
    80003ac4:	00800793          	li	a5,8
    80003ac8:	00700c93          	li	s9,7
    80003acc:	f8d403a3          	sb	a3,-121(s0)
    80003ad0:	00075c63          	bgez	a4,80003ae8 <__printf+0x410>
    80003ad4:	f9040713          	addi	a4,s0,-112
    80003ad8:	00f70733          	add	a4,a4,a5
    80003adc:	02d00693          	li	a3,45
    80003ae0:	fed70823          	sb	a3,-16(a4)
    80003ae4:	00078c93          	mv	s9,a5
    80003ae8:	f8040793          	addi	a5,s0,-128
    80003aec:	01978cb3          	add	s9,a5,s9
    80003af0:	f7f40d13          	addi	s10,s0,-129
    80003af4:	000cc503          	lbu	a0,0(s9)
    80003af8:	fffc8c93          	addi	s9,s9,-1
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	9f8080e7          	jalr	-1544(ra) # 800034f4 <consputc>
    80003b04:	ff9d18e3          	bne	s10,s9,80003af4 <__printf+0x41c>
    80003b08:	0100006f          	j	80003b18 <__printf+0x440>
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	9e8080e7          	jalr	-1560(ra) # 800034f4 <consputc>
    80003b14:	000c8493          	mv	s1,s9
    80003b18:	00094503          	lbu	a0,0(s2)
    80003b1c:	c60510e3          	bnez	a0,8000377c <__printf+0xa4>
    80003b20:	e40c0ee3          	beqz	s8,8000397c <__printf+0x2a4>
    80003b24:	00003517          	auipc	a0,0x3
    80003b28:	7ac50513          	addi	a0,a0,1964 # 800072d0 <pr>
    80003b2c:	00001097          	auipc	ra,0x1
    80003b30:	94c080e7          	jalr	-1716(ra) # 80004478 <release>
    80003b34:	e49ff06f          	j	8000397c <__printf+0x2a4>
    80003b38:	f7843783          	ld	a5,-136(s0)
    80003b3c:	03000513          	li	a0,48
    80003b40:	01000d13          	li	s10,16
    80003b44:	00878713          	addi	a4,a5,8
    80003b48:	0007bc83          	ld	s9,0(a5)
    80003b4c:	f6e43c23          	sd	a4,-136(s0)
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	9a4080e7          	jalr	-1628(ra) # 800034f4 <consputc>
    80003b58:	07800513          	li	a0,120
    80003b5c:	00000097          	auipc	ra,0x0
    80003b60:	998080e7          	jalr	-1640(ra) # 800034f4 <consputc>
    80003b64:	00001d97          	auipc	s11,0x1
    80003b68:	6a4d8d93          	addi	s11,s11,1700 # 80005208 <digits>
    80003b6c:	03ccd793          	srli	a5,s9,0x3c
    80003b70:	00fd87b3          	add	a5,s11,a5
    80003b74:	0007c503          	lbu	a0,0(a5)
    80003b78:	fffd0d1b          	addiw	s10,s10,-1
    80003b7c:	004c9c93          	slli	s9,s9,0x4
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	974080e7          	jalr	-1676(ra) # 800034f4 <consputc>
    80003b88:	fe0d12e3          	bnez	s10,80003b6c <__printf+0x494>
    80003b8c:	f8dff06f          	j	80003b18 <__printf+0x440>
    80003b90:	f7843783          	ld	a5,-136(s0)
    80003b94:	0007bc83          	ld	s9,0(a5)
    80003b98:	00878793          	addi	a5,a5,8
    80003b9c:	f6f43c23          	sd	a5,-136(s0)
    80003ba0:	000c9a63          	bnez	s9,80003bb4 <__printf+0x4dc>
    80003ba4:	1080006f          	j	80003cac <__printf+0x5d4>
    80003ba8:	001c8c93          	addi	s9,s9,1
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	948080e7          	jalr	-1720(ra) # 800034f4 <consputc>
    80003bb4:	000cc503          	lbu	a0,0(s9)
    80003bb8:	fe0518e3          	bnez	a0,80003ba8 <__printf+0x4d0>
    80003bbc:	f5dff06f          	j	80003b18 <__printf+0x440>
    80003bc0:	02500513          	li	a0,37
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	930080e7          	jalr	-1744(ra) # 800034f4 <consputc>
    80003bcc:	000c8513          	mv	a0,s9
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	924080e7          	jalr	-1756(ra) # 800034f4 <consputc>
    80003bd8:	f41ff06f          	j	80003b18 <__printf+0x440>
    80003bdc:	02500513          	li	a0,37
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	914080e7          	jalr	-1772(ra) # 800034f4 <consputc>
    80003be8:	f31ff06f          	j	80003b18 <__printf+0x440>
    80003bec:	00030513          	mv	a0,t1
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	7bc080e7          	jalr	1980(ra) # 800043ac <acquire>
    80003bf8:	b4dff06f          	j	80003744 <__printf+0x6c>
    80003bfc:	40c0053b          	negw	a0,a2
    80003c00:	00a00713          	li	a4,10
    80003c04:	02e576bb          	remuw	a3,a0,a4
    80003c08:	00001d97          	auipc	s11,0x1
    80003c0c:	600d8d93          	addi	s11,s11,1536 # 80005208 <digits>
    80003c10:	ff700593          	li	a1,-9
    80003c14:	02069693          	slli	a3,a3,0x20
    80003c18:	0206d693          	srli	a3,a3,0x20
    80003c1c:	00dd86b3          	add	a3,s11,a3
    80003c20:	0006c683          	lbu	a3,0(a3)
    80003c24:	02e557bb          	divuw	a5,a0,a4
    80003c28:	f8d40023          	sb	a3,-128(s0)
    80003c2c:	10b65e63          	bge	a2,a1,80003d48 <__printf+0x670>
    80003c30:	06300593          	li	a1,99
    80003c34:	02e7f6bb          	remuw	a3,a5,a4
    80003c38:	02069693          	slli	a3,a3,0x20
    80003c3c:	0206d693          	srli	a3,a3,0x20
    80003c40:	00dd86b3          	add	a3,s11,a3
    80003c44:	0006c683          	lbu	a3,0(a3)
    80003c48:	02e7d73b          	divuw	a4,a5,a4
    80003c4c:	00200793          	li	a5,2
    80003c50:	f8d400a3          	sb	a3,-127(s0)
    80003c54:	bca5ece3          	bltu	a1,a0,8000382c <__printf+0x154>
    80003c58:	ce5ff06f          	j	8000393c <__printf+0x264>
    80003c5c:	40e007bb          	negw	a5,a4
    80003c60:	00001d97          	auipc	s11,0x1
    80003c64:	5a8d8d93          	addi	s11,s11,1448 # 80005208 <digits>
    80003c68:	00f7f693          	andi	a3,a5,15
    80003c6c:	00dd86b3          	add	a3,s11,a3
    80003c70:	0006c583          	lbu	a1,0(a3)
    80003c74:	ff100613          	li	a2,-15
    80003c78:	0047d69b          	srliw	a3,a5,0x4
    80003c7c:	f8b40023          	sb	a1,-128(s0)
    80003c80:	0047d59b          	srliw	a1,a5,0x4
    80003c84:	0ac75e63          	bge	a4,a2,80003d40 <__printf+0x668>
    80003c88:	00f6f693          	andi	a3,a3,15
    80003c8c:	00dd86b3          	add	a3,s11,a3
    80003c90:	0006c603          	lbu	a2,0(a3)
    80003c94:	00f00693          	li	a3,15
    80003c98:	0087d79b          	srliw	a5,a5,0x8
    80003c9c:	f8c400a3          	sb	a2,-127(s0)
    80003ca0:	d8b6e4e3          	bltu	a3,a1,80003a28 <__printf+0x350>
    80003ca4:	00200793          	li	a5,2
    80003ca8:	e2dff06f          	j	80003ad4 <__printf+0x3fc>
    80003cac:	00001c97          	auipc	s9,0x1
    80003cb0:	53cc8c93          	addi	s9,s9,1340 # 800051e8 <_ZZ12printIntegermE6digits+0x170>
    80003cb4:	02800513          	li	a0,40
    80003cb8:	ef1ff06f          	j	80003ba8 <__printf+0x4d0>
    80003cbc:	00700793          	li	a5,7
    80003cc0:	00600c93          	li	s9,6
    80003cc4:	e0dff06f          	j	80003ad0 <__printf+0x3f8>
    80003cc8:	00700793          	li	a5,7
    80003ccc:	00600c93          	li	s9,6
    80003cd0:	c69ff06f          	j	80003938 <__printf+0x260>
    80003cd4:	00300793          	li	a5,3
    80003cd8:	00200c93          	li	s9,2
    80003cdc:	c5dff06f          	j	80003938 <__printf+0x260>
    80003ce0:	00300793          	li	a5,3
    80003ce4:	00200c93          	li	s9,2
    80003ce8:	de9ff06f          	j	80003ad0 <__printf+0x3f8>
    80003cec:	00400793          	li	a5,4
    80003cf0:	00300c93          	li	s9,3
    80003cf4:	dddff06f          	j	80003ad0 <__printf+0x3f8>
    80003cf8:	00400793          	li	a5,4
    80003cfc:	00300c93          	li	s9,3
    80003d00:	c39ff06f          	j	80003938 <__printf+0x260>
    80003d04:	00500793          	li	a5,5
    80003d08:	00400c93          	li	s9,4
    80003d0c:	c2dff06f          	j	80003938 <__printf+0x260>
    80003d10:	00500793          	li	a5,5
    80003d14:	00400c93          	li	s9,4
    80003d18:	db9ff06f          	j	80003ad0 <__printf+0x3f8>
    80003d1c:	00600793          	li	a5,6
    80003d20:	00500c93          	li	s9,5
    80003d24:	dadff06f          	j	80003ad0 <__printf+0x3f8>
    80003d28:	00600793          	li	a5,6
    80003d2c:	00500c93          	li	s9,5
    80003d30:	c09ff06f          	j	80003938 <__printf+0x260>
    80003d34:	00800793          	li	a5,8
    80003d38:	00700c93          	li	s9,7
    80003d3c:	bfdff06f          	j	80003938 <__printf+0x260>
    80003d40:	00100793          	li	a5,1
    80003d44:	d91ff06f          	j	80003ad4 <__printf+0x3fc>
    80003d48:	00100793          	li	a5,1
    80003d4c:	bf1ff06f          	j	8000393c <__printf+0x264>
    80003d50:	00900793          	li	a5,9
    80003d54:	00800c93          	li	s9,8
    80003d58:	be1ff06f          	j	80003938 <__printf+0x260>
    80003d5c:	00001517          	auipc	a0,0x1
    80003d60:	49450513          	addi	a0,a0,1172 # 800051f0 <_ZZ12printIntegermE6digits+0x178>
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	918080e7          	jalr	-1768(ra) # 8000367c <panic>

0000000080003d6c <printfinit>:
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00913423          	sd	s1,8(sp)
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    80003d80:	00003497          	auipc	s1,0x3
    80003d84:	55048493          	addi	s1,s1,1360 # 800072d0 <pr>
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00001597          	auipc	a1,0x1
    80003d90:	47458593          	addi	a1,a1,1140 # 80005200 <_ZZ12printIntegermE6digits+0x188>
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	5f4080e7          	jalr	1524(ra) # 80004388 <initlock>
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	0004ac23          	sw	zero,24(s1)
    80003da8:	00813483          	ld	s1,8(sp)
    80003dac:	02010113          	addi	sp,sp,32
    80003db0:	00008067          	ret

0000000080003db4 <uartinit>:
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00813423          	sd	s0,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	100007b7          	lui	a5,0x10000
    80003dc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003dc8:	f8000713          	li	a4,-128
    80003dcc:	00e781a3          	sb	a4,3(a5)
    80003dd0:	00300713          	li	a4,3
    80003dd4:	00e78023          	sb	a4,0(a5)
    80003dd8:	000780a3          	sb	zero,1(a5)
    80003ddc:	00e781a3          	sb	a4,3(a5)
    80003de0:	00700693          	li	a3,7
    80003de4:	00d78123          	sb	a3,2(a5)
    80003de8:	00e780a3          	sb	a4,1(a5)
    80003dec:	00813403          	ld	s0,8(sp)
    80003df0:	01010113          	addi	sp,sp,16
    80003df4:	00008067          	ret

0000000080003df8 <uartputc>:
    80003df8:	00002797          	auipc	a5,0x2
    80003dfc:	2607a783          	lw	a5,608(a5) # 80006058 <panicked>
    80003e00:	00078463          	beqz	a5,80003e08 <uartputc+0x10>
    80003e04:	0000006f          	j	80003e04 <uartputc+0xc>
    80003e08:	fd010113          	addi	sp,sp,-48
    80003e0c:	02813023          	sd	s0,32(sp)
    80003e10:	00913c23          	sd	s1,24(sp)
    80003e14:	01213823          	sd	s2,16(sp)
    80003e18:	01313423          	sd	s3,8(sp)
    80003e1c:	02113423          	sd	ra,40(sp)
    80003e20:	03010413          	addi	s0,sp,48
    80003e24:	00002917          	auipc	s2,0x2
    80003e28:	23c90913          	addi	s2,s2,572 # 80006060 <uart_tx_r>
    80003e2c:	00093783          	ld	a5,0(s2)
    80003e30:	00002497          	auipc	s1,0x2
    80003e34:	23848493          	addi	s1,s1,568 # 80006068 <uart_tx_w>
    80003e38:	0004b703          	ld	a4,0(s1)
    80003e3c:	02078693          	addi	a3,a5,32
    80003e40:	00050993          	mv	s3,a0
    80003e44:	02e69c63          	bne	a3,a4,80003e7c <uartputc+0x84>
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	834080e7          	jalr	-1996(ra) # 8000467c <push_on>
    80003e50:	00093783          	ld	a5,0(s2)
    80003e54:	0004b703          	ld	a4,0(s1)
    80003e58:	02078793          	addi	a5,a5,32
    80003e5c:	00e79463          	bne	a5,a4,80003e64 <uartputc+0x6c>
    80003e60:	0000006f          	j	80003e60 <uartputc+0x68>
    80003e64:	00001097          	auipc	ra,0x1
    80003e68:	88c080e7          	jalr	-1908(ra) # 800046f0 <pop_on>
    80003e6c:	00093783          	ld	a5,0(s2)
    80003e70:	0004b703          	ld	a4,0(s1)
    80003e74:	02078693          	addi	a3,a5,32
    80003e78:	fce688e3          	beq	a3,a4,80003e48 <uartputc+0x50>
    80003e7c:	01f77693          	andi	a3,a4,31
    80003e80:	00003597          	auipc	a1,0x3
    80003e84:	47058593          	addi	a1,a1,1136 # 800072f0 <uart_tx_buf>
    80003e88:	00d586b3          	add	a3,a1,a3
    80003e8c:	00170713          	addi	a4,a4,1
    80003e90:	01368023          	sb	s3,0(a3)
    80003e94:	00e4b023          	sd	a4,0(s1)
    80003e98:	10000637          	lui	a2,0x10000
    80003e9c:	02f71063          	bne	a4,a5,80003ebc <uartputc+0xc4>
    80003ea0:	0340006f          	j	80003ed4 <uartputc+0xdc>
    80003ea4:	00074703          	lbu	a4,0(a4)
    80003ea8:	00f93023          	sd	a5,0(s2)
    80003eac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003eb0:	00093783          	ld	a5,0(s2)
    80003eb4:	0004b703          	ld	a4,0(s1)
    80003eb8:	00f70e63          	beq	a4,a5,80003ed4 <uartputc+0xdc>
    80003ebc:	00564683          	lbu	a3,5(a2)
    80003ec0:	01f7f713          	andi	a4,a5,31
    80003ec4:	00e58733          	add	a4,a1,a4
    80003ec8:	0206f693          	andi	a3,a3,32
    80003ecc:	00178793          	addi	a5,a5,1
    80003ed0:	fc069ae3          	bnez	a3,80003ea4 <uartputc+0xac>
    80003ed4:	02813083          	ld	ra,40(sp)
    80003ed8:	02013403          	ld	s0,32(sp)
    80003edc:	01813483          	ld	s1,24(sp)
    80003ee0:	01013903          	ld	s2,16(sp)
    80003ee4:	00813983          	ld	s3,8(sp)
    80003ee8:	03010113          	addi	sp,sp,48
    80003eec:	00008067          	ret

0000000080003ef0 <uartputc_sync>:
    80003ef0:	ff010113          	addi	sp,sp,-16
    80003ef4:	00813423          	sd	s0,8(sp)
    80003ef8:	01010413          	addi	s0,sp,16
    80003efc:	00002717          	auipc	a4,0x2
    80003f00:	15c72703          	lw	a4,348(a4) # 80006058 <panicked>
    80003f04:	02071663          	bnez	a4,80003f30 <uartputc_sync+0x40>
    80003f08:	00050793          	mv	a5,a0
    80003f0c:	100006b7          	lui	a3,0x10000
    80003f10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003f14:	02077713          	andi	a4,a4,32
    80003f18:	fe070ce3          	beqz	a4,80003f10 <uartputc_sync+0x20>
    80003f1c:	0ff7f793          	andi	a5,a5,255
    80003f20:	00f68023          	sb	a5,0(a3)
    80003f24:	00813403          	ld	s0,8(sp)
    80003f28:	01010113          	addi	sp,sp,16
    80003f2c:	00008067          	ret
    80003f30:	0000006f          	j	80003f30 <uartputc_sync+0x40>

0000000080003f34 <uartstart>:
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00813423          	sd	s0,8(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    80003f40:	00002617          	auipc	a2,0x2
    80003f44:	12060613          	addi	a2,a2,288 # 80006060 <uart_tx_r>
    80003f48:	00002517          	auipc	a0,0x2
    80003f4c:	12050513          	addi	a0,a0,288 # 80006068 <uart_tx_w>
    80003f50:	00063783          	ld	a5,0(a2)
    80003f54:	00053703          	ld	a4,0(a0)
    80003f58:	04f70263          	beq	a4,a5,80003f9c <uartstart+0x68>
    80003f5c:	100005b7          	lui	a1,0x10000
    80003f60:	00003817          	auipc	a6,0x3
    80003f64:	39080813          	addi	a6,a6,912 # 800072f0 <uart_tx_buf>
    80003f68:	01c0006f          	j	80003f84 <uartstart+0x50>
    80003f6c:	0006c703          	lbu	a4,0(a3)
    80003f70:	00f63023          	sd	a5,0(a2)
    80003f74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f78:	00063783          	ld	a5,0(a2)
    80003f7c:	00053703          	ld	a4,0(a0)
    80003f80:	00f70e63          	beq	a4,a5,80003f9c <uartstart+0x68>
    80003f84:	01f7f713          	andi	a4,a5,31
    80003f88:	00e806b3          	add	a3,a6,a4
    80003f8c:	0055c703          	lbu	a4,5(a1)
    80003f90:	00178793          	addi	a5,a5,1
    80003f94:	02077713          	andi	a4,a4,32
    80003f98:	fc071ae3          	bnez	a4,80003f6c <uartstart+0x38>
    80003f9c:	00813403          	ld	s0,8(sp)
    80003fa0:	01010113          	addi	sp,sp,16
    80003fa4:	00008067          	ret

0000000080003fa8 <uartgetc>:
    80003fa8:	ff010113          	addi	sp,sp,-16
    80003fac:	00813423          	sd	s0,8(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    80003fb4:	10000737          	lui	a4,0x10000
    80003fb8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003fbc:	0017f793          	andi	a5,a5,1
    80003fc0:	00078c63          	beqz	a5,80003fd8 <uartgetc+0x30>
    80003fc4:	00074503          	lbu	a0,0(a4)
    80003fc8:	0ff57513          	andi	a0,a0,255
    80003fcc:	00813403          	ld	s0,8(sp)
    80003fd0:	01010113          	addi	sp,sp,16
    80003fd4:	00008067          	ret
    80003fd8:	fff00513          	li	a0,-1
    80003fdc:	ff1ff06f          	j	80003fcc <uartgetc+0x24>

0000000080003fe0 <uartintr>:
    80003fe0:	100007b7          	lui	a5,0x10000
    80003fe4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003fe8:	0017f793          	andi	a5,a5,1
    80003fec:	0a078463          	beqz	a5,80004094 <uartintr+0xb4>
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00813823          	sd	s0,16(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	00113c23          	sd	ra,24(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	100004b7          	lui	s1,0x10000
    80004008:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000400c:	0ff57513          	andi	a0,a0,255
    80004010:	fffff097          	auipc	ra,0xfffff
    80004014:	534080e7          	jalr	1332(ra) # 80003544 <consoleintr>
    80004018:	0054c783          	lbu	a5,5(s1)
    8000401c:	0017f793          	andi	a5,a5,1
    80004020:	fe0794e3          	bnez	a5,80004008 <uartintr+0x28>
    80004024:	00002617          	auipc	a2,0x2
    80004028:	03c60613          	addi	a2,a2,60 # 80006060 <uart_tx_r>
    8000402c:	00002517          	auipc	a0,0x2
    80004030:	03c50513          	addi	a0,a0,60 # 80006068 <uart_tx_w>
    80004034:	00063783          	ld	a5,0(a2)
    80004038:	00053703          	ld	a4,0(a0)
    8000403c:	04f70263          	beq	a4,a5,80004080 <uartintr+0xa0>
    80004040:	100005b7          	lui	a1,0x10000
    80004044:	00003817          	auipc	a6,0x3
    80004048:	2ac80813          	addi	a6,a6,684 # 800072f0 <uart_tx_buf>
    8000404c:	01c0006f          	j	80004068 <uartintr+0x88>
    80004050:	0006c703          	lbu	a4,0(a3)
    80004054:	00f63023          	sd	a5,0(a2)
    80004058:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000405c:	00063783          	ld	a5,0(a2)
    80004060:	00053703          	ld	a4,0(a0)
    80004064:	00f70e63          	beq	a4,a5,80004080 <uartintr+0xa0>
    80004068:	01f7f713          	andi	a4,a5,31
    8000406c:	00e806b3          	add	a3,a6,a4
    80004070:	0055c703          	lbu	a4,5(a1)
    80004074:	00178793          	addi	a5,a5,1
    80004078:	02077713          	andi	a4,a4,32
    8000407c:	fc071ae3          	bnez	a4,80004050 <uartintr+0x70>
    80004080:	01813083          	ld	ra,24(sp)
    80004084:	01013403          	ld	s0,16(sp)
    80004088:	00813483          	ld	s1,8(sp)
    8000408c:	02010113          	addi	sp,sp,32
    80004090:	00008067          	ret
    80004094:	00002617          	auipc	a2,0x2
    80004098:	fcc60613          	addi	a2,a2,-52 # 80006060 <uart_tx_r>
    8000409c:	00002517          	auipc	a0,0x2
    800040a0:	fcc50513          	addi	a0,a0,-52 # 80006068 <uart_tx_w>
    800040a4:	00063783          	ld	a5,0(a2)
    800040a8:	00053703          	ld	a4,0(a0)
    800040ac:	04f70263          	beq	a4,a5,800040f0 <uartintr+0x110>
    800040b0:	100005b7          	lui	a1,0x10000
    800040b4:	00003817          	auipc	a6,0x3
    800040b8:	23c80813          	addi	a6,a6,572 # 800072f0 <uart_tx_buf>
    800040bc:	01c0006f          	j	800040d8 <uartintr+0xf8>
    800040c0:	0006c703          	lbu	a4,0(a3)
    800040c4:	00f63023          	sd	a5,0(a2)
    800040c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040cc:	00063783          	ld	a5,0(a2)
    800040d0:	00053703          	ld	a4,0(a0)
    800040d4:	02f70063          	beq	a4,a5,800040f4 <uartintr+0x114>
    800040d8:	01f7f713          	andi	a4,a5,31
    800040dc:	00e806b3          	add	a3,a6,a4
    800040e0:	0055c703          	lbu	a4,5(a1)
    800040e4:	00178793          	addi	a5,a5,1
    800040e8:	02077713          	andi	a4,a4,32
    800040ec:	fc071ae3          	bnez	a4,800040c0 <uartintr+0xe0>
    800040f0:	00008067          	ret
    800040f4:	00008067          	ret

00000000800040f8 <kinit>:
    800040f8:	fc010113          	addi	sp,sp,-64
    800040fc:	02913423          	sd	s1,40(sp)
    80004100:	fffff7b7          	lui	a5,0xfffff
    80004104:	00004497          	auipc	s1,0x4
    80004108:	20b48493          	addi	s1,s1,523 # 8000830f <end+0xfff>
    8000410c:	02813823          	sd	s0,48(sp)
    80004110:	01313c23          	sd	s3,24(sp)
    80004114:	00f4f4b3          	and	s1,s1,a5
    80004118:	02113c23          	sd	ra,56(sp)
    8000411c:	03213023          	sd	s2,32(sp)
    80004120:	01413823          	sd	s4,16(sp)
    80004124:	01513423          	sd	s5,8(sp)
    80004128:	04010413          	addi	s0,sp,64
    8000412c:	000017b7          	lui	a5,0x1
    80004130:	01100993          	li	s3,17
    80004134:	00f487b3          	add	a5,s1,a5
    80004138:	01b99993          	slli	s3,s3,0x1b
    8000413c:	06f9e063          	bltu	s3,a5,8000419c <kinit+0xa4>
    80004140:	00003a97          	auipc	s5,0x3
    80004144:	1d0a8a93          	addi	s5,s5,464 # 80007310 <end>
    80004148:	0754ec63          	bltu	s1,s5,800041c0 <kinit+0xc8>
    8000414c:	0734fa63          	bgeu	s1,s3,800041c0 <kinit+0xc8>
    80004150:	00088a37          	lui	s4,0x88
    80004154:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004158:	00002917          	auipc	s2,0x2
    8000415c:	f1890913          	addi	s2,s2,-232 # 80006070 <kmem>
    80004160:	00ca1a13          	slli	s4,s4,0xc
    80004164:	0140006f          	j	80004178 <kinit+0x80>
    80004168:	000017b7          	lui	a5,0x1
    8000416c:	00f484b3          	add	s1,s1,a5
    80004170:	0554e863          	bltu	s1,s5,800041c0 <kinit+0xc8>
    80004174:	0534f663          	bgeu	s1,s3,800041c0 <kinit+0xc8>
    80004178:	00001637          	lui	a2,0x1
    8000417c:	00100593          	li	a1,1
    80004180:	00048513          	mv	a0,s1
    80004184:	00000097          	auipc	ra,0x0
    80004188:	5e4080e7          	jalr	1508(ra) # 80004768 <__memset>
    8000418c:	00093783          	ld	a5,0(s2)
    80004190:	00f4b023          	sd	a5,0(s1)
    80004194:	00993023          	sd	s1,0(s2)
    80004198:	fd4498e3          	bne	s1,s4,80004168 <kinit+0x70>
    8000419c:	03813083          	ld	ra,56(sp)
    800041a0:	03013403          	ld	s0,48(sp)
    800041a4:	02813483          	ld	s1,40(sp)
    800041a8:	02013903          	ld	s2,32(sp)
    800041ac:	01813983          	ld	s3,24(sp)
    800041b0:	01013a03          	ld	s4,16(sp)
    800041b4:	00813a83          	ld	s5,8(sp)
    800041b8:	04010113          	addi	sp,sp,64
    800041bc:	00008067          	ret
    800041c0:	00001517          	auipc	a0,0x1
    800041c4:	06050513          	addi	a0,a0,96 # 80005220 <digits+0x18>
    800041c8:	fffff097          	auipc	ra,0xfffff
    800041cc:	4b4080e7          	jalr	1204(ra) # 8000367c <panic>

00000000800041d0 <freerange>:
    800041d0:	fc010113          	addi	sp,sp,-64
    800041d4:	000017b7          	lui	a5,0x1
    800041d8:	02913423          	sd	s1,40(sp)
    800041dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800041e0:	009504b3          	add	s1,a0,s1
    800041e4:	fffff537          	lui	a0,0xfffff
    800041e8:	02813823          	sd	s0,48(sp)
    800041ec:	02113c23          	sd	ra,56(sp)
    800041f0:	03213023          	sd	s2,32(sp)
    800041f4:	01313c23          	sd	s3,24(sp)
    800041f8:	01413823          	sd	s4,16(sp)
    800041fc:	01513423          	sd	s5,8(sp)
    80004200:	01613023          	sd	s6,0(sp)
    80004204:	04010413          	addi	s0,sp,64
    80004208:	00a4f4b3          	and	s1,s1,a0
    8000420c:	00f487b3          	add	a5,s1,a5
    80004210:	06f5e463          	bltu	a1,a5,80004278 <freerange+0xa8>
    80004214:	00003a97          	auipc	s5,0x3
    80004218:	0fca8a93          	addi	s5,s5,252 # 80007310 <end>
    8000421c:	0954e263          	bltu	s1,s5,800042a0 <freerange+0xd0>
    80004220:	01100993          	li	s3,17
    80004224:	01b99993          	slli	s3,s3,0x1b
    80004228:	0734fc63          	bgeu	s1,s3,800042a0 <freerange+0xd0>
    8000422c:	00058a13          	mv	s4,a1
    80004230:	00002917          	auipc	s2,0x2
    80004234:	e4090913          	addi	s2,s2,-448 # 80006070 <kmem>
    80004238:	00002b37          	lui	s6,0x2
    8000423c:	0140006f          	j	80004250 <freerange+0x80>
    80004240:	000017b7          	lui	a5,0x1
    80004244:	00f484b3          	add	s1,s1,a5
    80004248:	0554ec63          	bltu	s1,s5,800042a0 <freerange+0xd0>
    8000424c:	0534fa63          	bgeu	s1,s3,800042a0 <freerange+0xd0>
    80004250:	00001637          	lui	a2,0x1
    80004254:	00100593          	li	a1,1
    80004258:	00048513          	mv	a0,s1
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	50c080e7          	jalr	1292(ra) # 80004768 <__memset>
    80004264:	00093703          	ld	a4,0(s2)
    80004268:	016487b3          	add	a5,s1,s6
    8000426c:	00e4b023          	sd	a4,0(s1)
    80004270:	00993023          	sd	s1,0(s2)
    80004274:	fcfa76e3          	bgeu	s4,a5,80004240 <freerange+0x70>
    80004278:	03813083          	ld	ra,56(sp)
    8000427c:	03013403          	ld	s0,48(sp)
    80004280:	02813483          	ld	s1,40(sp)
    80004284:	02013903          	ld	s2,32(sp)
    80004288:	01813983          	ld	s3,24(sp)
    8000428c:	01013a03          	ld	s4,16(sp)
    80004290:	00813a83          	ld	s5,8(sp)
    80004294:	00013b03          	ld	s6,0(sp)
    80004298:	04010113          	addi	sp,sp,64
    8000429c:	00008067          	ret
    800042a0:	00001517          	auipc	a0,0x1
    800042a4:	f8050513          	addi	a0,a0,-128 # 80005220 <digits+0x18>
    800042a8:	fffff097          	auipc	ra,0xfffff
    800042ac:	3d4080e7          	jalr	980(ra) # 8000367c <panic>

00000000800042b0 <kfree>:
    800042b0:	fe010113          	addi	sp,sp,-32
    800042b4:	00813823          	sd	s0,16(sp)
    800042b8:	00113c23          	sd	ra,24(sp)
    800042bc:	00913423          	sd	s1,8(sp)
    800042c0:	02010413          	addi	s0,sp,32
    800042c4:	03451793          	slli	a5,a0,0x34
    800042c8:	04079c63          	bnez	a5,80004320 <kfree+0x70>
    800042cc:	00003797          	auipc	a5,0x3
    800042d0:	04478793          	addi	a5,a5,68 # 80007310 <end>
    800042d4:	00050493          	mv	s1,a0
    800042d8:	04f56463          	bltu	a0,a5,80004320 <kfree+0x70>
    800042dc:	01100793          	li	a5,17
    800042e0:	01b79793          	slli	a5,a5,0x1b
    800042e4:	02f57e63          	bgeu	a0,a5,80004320 <kfree+0x70>
    800042e8:	00001637          	lui	a2,0x1
    800042ec:	00100593          	li	a1,1
    800042f0:	00000097          	auipc	ra,0x0
    800042f4:	478080e7          	jalr	1144(ra) # 80004768 <__memset>
    800042f8:	00002797          	auipc	a5,0x2
    800042fc:	d7878793          	addi	a5,a5,-648 # 80006070 <kmem>
    80004300:	0007b703          	ld	a4,0(a5)
    80004304:	01813083          	ld	ra,24(sp)
    80004308:	01013403          	ld	s0,16(sp)
    8000430c:	00e4b023          	sd	a4,0(s1)
    80004310:	0097b023          	sd	s1,0(a5)
    80004314:	00813483          	ld	s1,8(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret
    80004320:	00001517          	auipc	a0,0x1
    80004324:	f0050513          	addi	a0,a0,-256 # 80005220 <digits+0x18>
    80004328:	fffff097          	auipc	ra,0xfffff
    8000432c:	354080e7          	jalr	852(ra) # 8000367c <panic>

0000000080004330 <kalloc>:
    80004330:	fe010113          	addi	sp,sp,-32
    80004334:	00813823          	sd	s0,16(sp)
    80004338:	00913423          	sd	s1,8(sp)
    8000433c:	00113c23          	sd	ra,24(sp)
    80004340:	02010413          	addi	s0,sp,32
    80004344:	00002797          	auipc	a5,0x2
    80004348:	d2c78793          	addi	a5,a5,-724 # 80006070 <kmem>
    8000434c:	0007b483          	ld	s1,0(a5)
    80004350:	02048063          	beqz	s1,80004370 <kalloc+0x40>
    80004354:	0004b703          	ld	a4,0(s1)
    80004358:	00001637          	lui	a2,0x1
    8000435c:	00500593          	li	a1,5
    80004360:	00048513          	mv	a0,s1
    80004364:	00e7b023          	sd	a4,0(a5)
    80004368:	00000097          	auipc	ra,0x0
    8000436c:	400080e7          	jalr	1024(ra) # 80004768 <__memset>
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	00048513          	mv	a0,s1
    8000437c:	00813483          	ld	s1,8(sp)
    80004380:	02010113          	addi	sp,sp,32
    80004384:	00008067          	ret

0000000080004388 <initlock>:
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00813423          	sd	s0,8(sp)
    80004390:	01010413          	addi	s0,sp,16
    80004394:	00813403          	ld	s0,8(sp)
    80004398:	00b53423          	sd	a1,8(a0)
    8000439c:	00052023          	sw	zero,0(a0)
    800043a0:	00053823          	sd	zero,16(a0)
    800043a4:	01010113          	addi	sp,sp,16
    800043a8:	00008067          	ret

00000000800043ac <acquire>:
    800043ac:	fe010113          	addi	sp,sp,-32
    800043b0:	00813823          	sd	s0,16(sp)
    800043b4:	00913423          	sd	s1,8(sp)
    800043b8:	00113c23          	sd	ra,24(sp)
    800043bc:	01213023          	sd	s2,0(sp)
    800043c0:	02010413          	addi	s0,sp,32
    800043c4:	00050493          	mv	s1,a0
    800043c8:	10002973          	csrr	s2,sstatus
    800043cc:	100027f3          	csrr	a5,sstatus
    800043d0:	ffd7f793          	andi	a5,a5,-3
    800043d4:	10079073          	csrw	sstatus,a5
    800043d8:	fffff097          	auipc	ra,0xfffff
    800043dc:	8e0080e7          	jalr	-1824(ra) # 80002cb8 <mycpu>
    800043e0:	07852783          	lw	a5,120(a0)
    800043e4:	06078e63          	beqz	a5,80004460 <acquire+0xb4>
    800043e8:	fffff097          	auipc	ra,0xfffff
    800043ec:	8d0080e7          	jalr	-1840(ra) # 80002cb8 <mycpu>
    800043f0:	07852783          	lw	a5,120(a0)
    800043f4:	0004a703          	lw	a4,0(s1)
    800043f8:	0017879b          	addiw	a5,a5,1
    800043fc:	06f52c23          	sw	a5,120(a0)
    80004400:	04071063          	bnez	a4,80004440 <acquire+0x94>
    80004404:	00100713          	li	a4,1
    80004408:	00070793          	mv	a5,a4
    8000440c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004410:	0007879b          	sext.w	a5,a5
    80004414:	fe079ae3          	bnez	a5,80004408 <acquire+0x5c>
    80004418:	0ff0000f          	fence
    8000441c:	fffff097          	auipc	ra,0xfffff
    80004420:	89c080e7          	jalr	-1892(ra) # 80002cb8 <mycpu>
    80004424:	01813083          	ld	ra,24(sp)
    80004428:	01013403          	ld	s0,16(sp)
    8000442c:	00a4b823          	sd	a0,16(s1)
    80004430:	00013903          	ld	s2,0(sp)
    80004434:	00813483          	ld	s1,8(sp)
    80004438:	02010113          	addi	sp,sp,32
    8000443c:	00008067          	ret
    80004440:	0104b903          	ld	s2,16(s1)
    80004444:	fffff097          	auipc	ra,0xfffff
    80004448:	874080e7          	jalr	-1932(ra) # 80002cb8 <mycpu>
    8000444c:	faa91ce3          	bne	s2,a0,80004404 <acquire+0x58>
    80004450:	00001517          	auipc	a0,0x1
    80004454:	dd850513          	addi	a0,a0,-552 # 80005228 <digits+0x20>
    80004458:	fffff097          	auipc	ra,0xfffff
    8000445c:	224080e7          	jalr	548(ra) # 8000367c <panic>
    80004460:	00195913          	srli	s2,s2,0x1
    80004464:	fffff097          	auipc	ra,0xfffff
    80004468:	854080e7          	jalr	-1964(ra) # 80002cb8 <mycpu>
    8000446c:	00197913          	andi	s2,s2,1
    80004470:	07252e23          	sw	s2,124(a0)
    80004474:	f75ff06f          	j	800043e8 <acquire+0x3c>

0000000080004478 <release>:
    80004478:	fe010113          	addi	sp,sp,-32
    8000447c:	00813823          	sd	s0,16(sp)
    80004480:	00113c23          	sd	ra,24(sp)
    80004484:	00913423          	sd	s1,8(sp)
    80004488:	01213023          	sd	s2,0(sp)
    8000448c:	02010413          	addi	s0,sp,32
    80004490:	00052783          	lw	a5,0(a0)
    80004494:	00079a63          	bnez	a5,800044a8 <release+0x30>
    80004498:	00001517          	auipc	a0,0x1
    8000449c:	d9850513          	addi	a0,a0,-616 # 80005230 <digits+0x28>
    800044a0:	fffff097          	auipc	ra,0xfffff
    800044a4:	1dc080e7          	jalr	476(ra) # 8000367c <panic>
    800044a8:	01053903          	ld	s2,16(a0)
    800044ac:	00050493          	mv	s1,a0
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	808080e7          	jalr	-2040(ra) # 80002cb8 <mycpu>
    800044b8:	fea910e3          	bne	s2,a0,80004498 <release+0x20>
    800044bc:	0004b823          	sd	zero,16(s1)
    800044c0:	0ff0000f          	fence
    800044c4:	0f50000f          	fence	iorw,ow
    800044c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	7ec080e7          	jalr	2028(ra) # 80002cb8 <mycpu>
    800044d4:	100027f3          	csrr	a5,sstatus
    800044d8:	0027f793          	andi	a5,a5,2
    800044dc:	04079a63          	bnez	a5,80004530 <release+0xb8>
    800044e0:	07852783          	lw	a5,120(a0)
    800044e4:	02f05e63          	blez	a5,80004520 <release+0xa8>
    800044e8:	fff7871b          	addiw	a4,a5,-1
    800044ec:	06e52c23          	sw	a4,120(a0)
    800044f0:	00071c63          	bnez	a4,80004508 <release+0x90>
    800044f4:	07c52783          	lw	a5,124(a0)
    800044f8:	00078863          	beqz	a5,80004508 <release+0x90>
    800044fc:	100027f3          	csrr	a5,sstatus
    80004500:	0027e793          	ori	a5,a5,2
    80004504:	10079073          	csrw	sstatus,a5
    80004508:	01813083          	ld	ra,24(sp)
    8000450c:	01013403          	ld	s0,16(sp)
    80004510:	00813483          	ld	s1,8(sp)
    80004514:	00013903          	ld	s2,0(sp)
    80004518:	02010113          	addi	sp,sp,32
    8000451c:	00008067          	ret
    80004520:	00001517          	auipc	a0,0x1
    80004524:	d3050513          	addi	a0,a0,-720 # 80005250 <digits+0x48>
    80004528:	fffff097          	auipc	ra,0xfffff
    8000452c:	154080e7          	jalr	340(ra) # 8000367c <panic>
    80004530:	00001517          	auipc	a0,0x1
    80004534:	d0850513          	addi	a0,a0,-760 # 80005238 <digits+0x30>
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	144080e7          	jalr	324(ra) # 8000367c <panic>

0000000080004540 <holding>:
    80004540:	00052783          	lw	a5,0(a0)
    80004544:	00079663          	bnez	a5,80004550 <holding+0x10>
    80004548:	00000513          	li	a0,0
    8000454c:	00008067          	ret
    80004550:	fe010113          	addi	sp,sp,-32
    80004554:	00813823          	sd	s0,16(sp)
    80004558:	00913423          	sd	s1,8(sp)
    8000455c:	00113c23          	sd	ra,24(sp)
    80004560:	02010413          	addi	s0,sp,32
    80004564:	01053483          	ld	s1,16(a0)
    80004568:	ffffe097          	auipc	ra,0xffffe
    8000456c:	750080e7          	jalr	1872(ra) # 80002cb8 <mycpu>
    80004570:	01813083          	ld	ra,24(sp)
    80004574:	01013403          	ld	s0,16(sp)
    80004578:	40a48533          	sub	a0,s1,a0
    8000457c:	00153513          	seqz	a0,a0
    80004580:	00813483          	ld	s1,8(sp)
    80004584:	02010113          	addi	sp,sp,32
    80004588:	00008067          	ret

000000008000458c <push_off>:
    8000458c:	fe010113          	addi	sp,sp,-32
    80004590:	00813823          	sd	s0,16(sp)
    80004594:	00113c23          	sd	ra,24(sp)
    80004598:	00913423          	sd	s1,8(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	100024f3          	csrr	s1,sstatus
    800045a4:	100027f3          	csrr	a5,sstatus
    800045a8:	ffd7f793          	andi	a5,a5,-3
    800045ac:	10079073          	csrw	sstatus,a5
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	708080e7          	jalr	1800(ra) # 80002cb8 <mycpu>
    800045b8:	07852783          	lw	a5,120(a0)
    800045bc:	02078663          	beqz	a5,800045e8 <push_off+0x5c>
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	6f8080e7          	jalr	1784(ra) # 80002cb8 <mycpu>
    800045c8:	07852783          	lw	a5,120(a0)
    800045cc:	01813083          	ld	ra,24(sp)
    800045d0:	01013403          	ld	s0,16(sp)
    800045d4:	0017879b          	addiw	a5,a5,1
    800045d8:	06f52c23          	sw	a5,120(a0)
    800045dc:	00813483          	ld	s1,8(sp)
    800045e0:	02010113          	addi	sp,sp,32
    800045e4:	00008067          	ret
    800045e8:	0014d493          	srli	s1,s1,0x1
    800045ec:	ffffe097          	auipc	ra,0xffffe
    800045f0:	6cc080e7          	jalr	1740(ra) # 80002cb8 <mycpu>
    800045f4:	0014f493          	andi	s1,s1,1
    800045f8:	06952e23          	sw	s1,124(a0)
    800045fc:	fc5ff06f          	j	800045c0 <push_off+0x34>

0000000080004600 <pop_off>:
    80004600:	ff010113          	addi	sp,sp,-16
    80004604:	00813023          	sd	s0,0(sp)
    80004608:	00113423          	sd	ra,8(sp)
    8000460c:	01010413          	addi	s0,sp,16
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	6a8080e7          	jalr	1704(ra) # 80002cb8 <mycpu>
    80004618:	100027f3          	csrr	a5,sstatus
    8000461c:	0027f793          	andi	a5,a5,2
    80004620:	04079663          	bnez	a5,8000466c <pop_off+0x6c>
    80004624:	07852783          	lw	a5,120(a0)
    80004628:	02f05a63          	blez	a5,8000465c <pop_off+0x5c>
    8000462c:	fff7871b          	addiw	a4,a5,-1
    80004630:	06e52c23          	sw	a4,120(a0)
    80004634:	00071c63          	bnez	a4,8000464c <pop_off+0x4c>
    80004638:	07c52783          	lw	a5,124(a0)
    8000463c:	00078863          	beqz	a5,8000464c <pop_off+0x4c>
    80004640:	100027f3          	csrr	a5,sstatus
    80004644:	0027e793          	ori	a5,a5,2
    80004648:	10079073          	csrw	sstatus,a5
    8000464c:	00813083          	ld	ra,8(sp)
    80004650:	00013403          	ld	s0,0(sp)
    80004654:	01010113          	addi	sp,sp,16
    80004658:	00008067          	ret
    8000465c:	00001517          	auipc	a0,0x1
    80004660:	bf450513          	addi	a0,a0,-1036 # 80005250 <digits+0x48>
    80004664:	fffff097          	auipc	ra,0xfffff
    80004668:	018080e7          	jalr	24(ra) # 8000367c <panic>
    8000466c:	00001517          	auipc	a0,0x1
    80004670:	bcc50513          	addi	a0,a0,-1076 # 80005238 <digits+0x30>
    80004674:	fffff097          	auipc	ra,0xfffff
    80004678:	008080e7          	jalr	8(ra) # 8000367c <panic>

000000008000467c <push_on>:
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00813823          	sd	s0,16(sp)
    80004684:	00113c23          	sd	ra,24(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	02010413          	addi	s0,sp,32
    80004690:	100024f3          	csrr	s1,sstatus
    80004694:	100027f3          	csrr	a5,sstatus
    80004698:	0027e793          	ori	a5,a5,2
    8000469c:	10079073          	csrw	sstatus,a5
    800046a0:	ffffe097          	auipc	ra,0xffffe
    800046a4:	618080e7          	jalr	1560(ra) # 80002cb8 <mycpu>
    800046a8:	07852783          	lw	a5,120(a0)
    800046ac:	02078663          	beqz	a5,800046d8 <push_on+0x5c>
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	608080e7          	jalr	1544(ra) # 80002cb8 <mycpu>
    800046b8:	07852783          	lw	a5,120(a0)
    800046bc:	01813083          	ld	ra,24(sp)
    800046c0:	01013403          	ld	s0,16(sp)
    800046c4:	0017879b          	addiw	a5,a5,1
    800046c8:	06f52c23          	sw	a5,120(a0)
    800046cc:	00813483          	ld	s1,8(sp)
    800046d0:	02010113          	addi	sp,sp,32
    800046d4:	00008067          	ret
    800046d8:	0014d493          	srli	s1,s1,0x1
    800046dc:	ffffe097          	auipc	ra,0xffffe
    800046e0:	5dc080e7          	jalr	1500(ra) # 80002cb8 <mycpu>
    800046e4:	0014f493          	andi	s1,s1,1
    800046e8:	06952e23          	sw	s1,124(a0)
    800046ec:	fc5ff06f          	j	800046b0 <push_on+0x34>

00000000800046f0 <pop_on>:
    800046f0:	ff010113          	addi	sp,sp,-16
    800046f4:	00813023          	sd	s0,0(sp)
    800046f8:	00113423          	sd	ra,8(sp)
    800046fc:	01010413          	addi	s0,sp,16
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	5b8080e7          	jalr	1464(ra) # 80002cb8 <mycpu>
    80004708:	100027f3          	csrr	a5,sstatus
    8000470c:	0027f793          	andi	a5,a5,2
    80004710:	04078463          	beqz	a5,80004758 <pop_on+0x68>
    80004714:	07852783          	lw	a5,120(a0)
    80004718:	02f05863          	blez	a5,80004748 <pop_on+0x58>
    8000471c:	fff7879b          	addiw	a5,a5,-1
    80004720:	06f52c23          	sw	a5,120(a0)
    80004724:	07853783          	ld	a5,120(a0)
    80004728:	00079863          	bnez	a5,80004738 <pop_on+0x48>
    8000472c:	100027f3          	csrr	a5,sstatus
    80004730:	ffd7f793          	andi	a5,a5,-3
    80004734:	10079073          	csrw	sstatus,a5
    80004738:	00813083          	ld	ra,8(sp)
    8000473c:	00013403          	ld	s0,0(sp)
    80004740:	01010113          	addi	sp,sp,16
    80004744:	00008067          	ret
    80004748:	00001517          	auipc	a0,0x1
    8000474c:	b3050513          	addi	a0,a0,-1232 # 80005278 <digits+0x70>
    80004750:	fffff097          	auipc	ra,0xfffff
    80004754:	f2c080e7          	jalr	-212(ra) # 8000367c <panic>
    80004758:	00001517          	auipc	a0,0x1
    8000475c:	b0050513          	addi	a0,a0,-1280 # 80005258 <digits+0x50>
    80004760:	fffff097          	auipc	ra,0xfffff
    80004764:	f1c080e7          	jalr	-228(ra) # 8000367c <panic>

0000000080004768 <__memset>:
    80004768:	ff010113          	addi	sp,sp,-16
    8000476c:	00813423          	sd	s0,8(sp)
    80004770:	01010413          	addi	s0,sp,16
    80004774:	1a060e63          	beqz	a2,80004930 <__memset+0x1c8>
    80004778:	40a007b3          	neg	a5,a0
    8000477c:	0077f793          	andi	a5,a5,7
    80004780:	00778693          	addi	a3,a5,7
    80004784:	00b00813          	li	a6,11
    80004788:	0ff5f593          	andi	a1,a1,255
    8000478c:	fff6071b          	addiw	a4,a2,-1
    80004790:	1b06e663          	bltu	a3,a6,8000493c <__memset+0x1d4>
    80004794:	1cd76463          	bltu	a4,a3,8000495c <__memset+0x1f4>
    80004798:	1a078e63          	beqz	a5,80004954 <__memset+0x1ec>
    8000479c:	00b50023          	sb	a1,0(a0)
    800047a0:	00100713          	li	a4,1
    800047a4:	1ae78463          	beq	a5,a4,8000494c <__memset+0x1e4>
    800047a8:	00b500a3          	sb	a1,1(a0)
    800047ac:	00200713          	li	a4,2
    800047b0:	1ae78a63          	beq	a5,a4,80004964 <__memset+0x1fc>
    800047b4:	00b50123          	sb	a1,2(a0)
    800047b8:	00300713          	li	a4,3
    800047bc:	18e78463          	beq	a5,a4,80004944 <__memset+0x1dc>
    800047c0:	00b501a3          	sb	a1,3(a0)
    800047c4:	00400713          	li	a4,4
    800047c8:	1ae78263          	beq	a5,a4,8000496c <__memset+0x204>
    800047cc:	00b50223          	sb	a1,4(a0)
    800047d0:	00500713          	li	a4,5
    800047d4:	1ae78063          	beq	a5,a4,80004974 <__memset+0x20c>
    800047d8:	00b502a3          	sb	a1,5(a0)
    800047dc:	00700713          	li	a4,7
    800047e0:	18e79e63          	bne	a5,a4,8000497c <__memset+0x214>
    800047e4:	00b50323          	sb	a1,6(a0)
    800047e8:	00700e93          	li	t4,7
    800047ec:	00859713          	slli	a4,a1,0x8
    800047f0:	00e5e733          	or	a4,a1,a4
    800047f4:	01059e13          	slli	t3,a1,0x10
    800047f8:	01c76e33          	or	t3,a4,t3
    800047fc:	01859313          	slli	t1,a1,0x18
    80004800:	006e6333          	or	t1,t3,t1
    80004804:	02059893          	slli	a7,a1,0x20
    80004808:	40f60e3b          	subw	t3,a2,a5
    8000480c:	011368b3          	or	a7,t1,a7
    80004810:	02859813          	slli	a6,a1,0x28
    80004814:	0108e833          	or	a6,a7,a6
    80004818:	03059693          	slli	a3,a1,0x30
    8000481c:	003e589b          	srliw	a7,t3,0x3
    80004820:	00d866b3          	or	a3,a6,a3
    80004824:	03859713          	slli	a4,a1,0x38
    80004828:	00389813          	slli	a6,a7,0x3
    8000482c:	00f507b3          	add	a5,a0,a5
    80004830:	00e6e733          	or	a4,a3,a4
    80004834:	000e089b          	sext.w	a7,t3
    80004838:	00f806b3          	add	a3,a6,a5
    8000483c:	00e7b023          	sd	a4,0(a5)
    80004840:	00878793          	addi	a5,a5,8
    80004844:	fed79ce3          	bne	a5,a3,8000483c <__memset+0xd4>
    80004848:	ff8e7793          	andi	a5,t3,-8
    8000484c:	0007871b          	sext.w	a4,a5
    80004850:	01d787bb          	addw	a5,a5,t4
    80004854:	0ce88e63          	beq	a7,a4,80004930 <__memset+0x1c8>
    80004858:	00f50733          	add	a4,a0,a5
    8000485c:	00b70023          	sb	a1,0(a4)
    80004860:	0017871b          	addiw	a4,a5,1
    80004864:	0cc77663          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    80004868:	00e50733          	add	a4,a0,a4
    8000486c:	00b70023          	sb	a1,0(a4)
    80004870:	0027871b          	addiw	a4,a5,2
    80004874:	0ac77e63          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    80004878:	00e50733          	add	a4,a0,a4
    8000487c:	00b70023          	sb	a1,0(a4)
    80004880:	0037871b          	addiw	a4,a5,3
    80004884:	0ac77663          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    80004888:	00e50733          	add	a4,a0,a4
    8000488c:	00b70023          	sb	a1,0(a4)
    80004890:	0047871b          	addiw	a4,a5,4
    80004894:	08c77e63          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    80004898:	00e50733          	add	a4,a0,a4
    8000489c:	00b70023          	sb	a1,0(a4)
    800048a0:	0057871b          	addiw	a4,a5,5
    800048a4:	08c77663          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    800048a8:	00e50733          	add	a4,a0,a4
    800048ac:	00b70023          	sb	a1,0(a4)
    800048b0:	0067871b          	addiw	a4,a5,6
    800048b4:	06c77e63          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    800048b8:	00e50733          	add	a4,a0,a4
    800048bc:	00b70023          	sb	a1,0(a4)
    800048c0:	0077871b          	addiw	a4,a5,7
    800048c4:	06c77663          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    800048c8:	00e50733          	add	a4,a0,a4
    800048cc:	00b70023          	sb	a1,0(a4)
    800048d0:	0087871b          	addiw	a4,a5,8
    800048d4:	04c77e63          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    800048d8:	00e50733          	add	a4,a0,a4
    800048dc:	00b70023          	sb	a1,0(a4)
    800048e0:	0097871b          	addiw	a4,a5,9
    800048e4:	04c77663          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    800048e8:	00e50733          	add	a4,a0,a4
    800048ec:	00b70023          	sb	a1,0(a4)
    800048f0:	00a7871b          	addiw	a4,a5,10
    800048f4:	02c77e63          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    800048f8:	00e50733          	add	a4,a0,a4
    800048fc:	00b70023          	sb	a1,0(a4)
    80004900:	00b7871b          	addiw	a4,a5,11
    80004904:	02c77663          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    80004908:	00e50733          	add	a4,a0,a4
    8000490c:	00b70023          	sb	a1,0(a4)
    80004910:	00c7871b          	addiw	a4,a5,12
    80004914:	00c77e63          	bgeu	a4,a2,80004930 <__memset+0x1c8>
    80004918:	00e50733          	add	a4,a0,a4
    8000491c:	00b70023          	sb	a1,0(a4)
    80004920:	00d7879b          	addiw	a5,a5,13
    80004924:	00c7f663          	bgeu	a5,a2,80004930 <__memset+0x1c8>
    80004928:	00f507b3          	add	a5,a0,a5
    8000492c:	00b78023          	sb	a1,0(a5)
    80004930:	00813403          	ld	s0,8(sp)
    80004934:	01010113          	addi	sp,sp,16
    80004938:	00008067          	ret
    8000493c:	00b00693          	li	a3,11
    80004940:	e55ff06f          	j	80004794 <__memset+0x2c>
    80004944:	00300e93          	li	t4,3
    80004948:	ea5ff06f          	j	800047ec <__memset+0x84>
    8000494c:	00100e93          	li	t4,1
    80004950:	e9dff06f          	j	800047ec <__memset+0x84>
    80004954:	00000e93          	li	t4,0
    80004958:	e95ff06f          	j	800047ec <__memset+0x84>
    8000495c:	00000793          	li	a5,0
    80004960:	ef9ff06f          	j	80004858 <__memset+0xf0>
    80004964:	00200e93          	li	t4,2
    80004968:	e85ff06f          	j	800047ec <__memset+0x84>
    8000496c:	00400e93          	li	t4,4
    80004970:	e7dff06f          	j	800047ec <__memset+0x84>
    80004974:	00500e93          	li	t4,5
    80004978:	e75ff06f          	j	800047ec <__memset+0x84>
    8000497c:	00600e93          	li	t4,6
    80004980:	e6dff06f          	j	800047ec <__memset+0x84>

0000000080004984 <__memmove>:
    80004984:	ff010113          	addi	sp,sp,-16
    80004988:	00813423          	sd	s0,8(sp)
    8000498c:	01010413          	addi	s0,sp,16
    80004990:	0e060863          	beqz	a2,80004a80 <__memmove+0xfc>
    80004994:	fff6069b          	addiw	a3,a2,-1
    80004998:	0006881b          	sext.w	a6,a3
    8000499c:	0ea5e863          	bltu	a1,a0,80004a8c <__memmove+0x108>
    800049a0:	00758713          	addi	a4,a1,7
    800049a4:	00a5e7b3          	or	a5,a1,a0
    800049a8:	40a70733          	sub	a4,a4,a0
    800049ac:	0077f793          	andi	a5,a5,7
    800049b0:	00f73713          	sltiu	a4,a4,15
    800049b4:	00174713          	xori	a4,a4,1
    800049b8:	0017b793          	seqz	a5,a5
    800049bc:	00e7f7b3          	and	a5,a5,a4
    800049c0:	10078863          	beqz	a5,80004ad0 <__memmove+0x14c>
    800049c4:	00900793          	li	a5,9
    800049c8:	1107f463          	bgeu	a5,a6,80004ad0 <__memmove+0x14c>
    800049cc:	0036581b          	srliw	a6,a2,0x3
    800049d0:	fff8081b          	addiw	a6,a6,-1
    800049d4:	02081813          	slli	a6,a6,0x20
    800049d8:	01d85893          	srli	a7,a6,0x1d
    800049dc:	00858813          	addi	a6,a1,8
    800049e0:	00058793          	mv	a5,a1
    800049e4:	00050713          	mv	a4,a0
    800049e8:	01088833          	add	a6,a7,a6
    800049ec:	0007b883          	ld	a7,0(a5)
    800049f0:	00878793          	addi	a5,a5,8
    800049f4:	00870713          	addi	a4,a4,8
    800049f8:	ff173c23          	sd	a7,-8(a4)
    800049fc:	ff0798e3          	bne	a5,a6,800049ec <__memmove+0x68>
    80004a00:	ff867713          	andi	a4,a2,-8
    80004a04:	02071793          	slli	a5,a4,0x20
    80004a08:	0207d793          	srli	a5,a5,0x20
    80004a0c:	00f585b3          	add	a1,a1,a5
    80004a10:	40e686bb          	subw	a3,a3,a4
    80004a14:	00f507b3          	add	a5,a0,a5
    80004a18:	06e60463          	beq	a2,a4,80004a80 <__memmove+0xfc>
    80004a1c:	0005c703          	lbu	a4,0(a1)
    80004a20:	00e78023          	sb	a4,0(a5)
    80004a24:	04068e63          	beqz	a3,80004a80 <__memmove+0xfc>
    80004a28:	0015c603          	lbu	a2,1(a1)
    80004a2c:	00100713          	li	a4,1
    80004a30:	00c780a3          	sb	a2,1(a5)
    80004a34:	04e68663          	beq	a3,a4,80004a80 <__memmove+0xfc>
    80004a38:	0025c603          	lbu	a2,2(a1)
    80004a3c:	00200713          	li	a4,2
    80004a40:	00c78123          	sb	a2,2(a5)
    80004a44:	02e68e63          	beq	a3,a4,80004a80 <__memmove+0xfc>
    80004a48:	0035c603          	lbu	a2,3(a1)
    80004a4c:	00300713          	li	a4,3
    80004a50:	00c781a3          	sb	a2,3(a5)
    80004a54:	02e68663          	beq	a3,a4,80004a80 <__memmove+0xfc>
    80004a58:	0045c603          	lbu	a2,4(a1)
    80004a5c:	00400713          	li	a4,4
    80004a60:	00c78223          	sb	a2,4(a5)
    80004a64:	00e68e63          	beq	a3,a4,80004a80 <__memmove+0xfc>
    80004a68:	0055c603          	lbu	a2,5(a1)
    80004a6c:	00500713          	li	a4,5
    80004a70:	00c782a3          	sb	a2,5(a5)
    80004a74:	00e68663          	beq	a3,a4,80004a80 <__memmove+0xfc>
    80004a78:	0065c703          	lbu	a4,6(a1)
    80004a7c:	00e78323          	sb	a4,6(a5)
    80004a80:	00813403          	ld	s0,8(sp)
    80004a84:	01010113          	addi	sp,sp,16
    80004a88:	00008067          	ret
    80004a8c:	02061713          	slli	a4,a2,0x20
    80004a90:	02075713          	srli	a4,a4,0x20
    80004a94:	00e587b3          	add	a5,a1,a4
    80004a98:	f0f574e3          	bgeu	a0,a5,800049a0 <__memmove+0x1c>
    80004a9c:	02069613          	slli	a2,a3,0x20
    80004aa0:	02065613          	srli	a2,a2,0x20
    80004aa4:	fff64613          	not	a2,a2
    80004aa8:	00e50733          	add	a4,a0,a4
    80004aac:	00c78633          	add	a2,a5,a2
    80004ab0:	fff7c683          	lbu	a3,-1(a5)
    80004ab4:	fff78793          	addi	a5,a5,-1
    80004ab8:	fff70713          	addi	a4,a4,-1
    80004abc:	00d70023          	sb	a3,0(a4)
    80004ac0:	fec798e3          	bne	a5,a2,80004ab0 <__memmove+0x12c>
    80004ac4:	00813403          	ld	s0,8(sp)
    80004ac8:	01010113          	addi	sp,sp,16
    80004acc:	00008067          	ret
    80004ad0:	02069713          	slli	a4,a3,0x20
    80004ad4:	02075713          	srli	a4,a4,0x20
    80004ad8:	00170713          	addi	a4,a4,1
    80004adc:	00e50733          	add	a4,a0,a4
    80004ae0:	00050793          	mv	a5,a0
    80004ae4:	0005c683          	lbu	a3,0(a1)
    80004ae8:	00178793          	addi	a5,a5,1
    80004aec:	00158593          	addi	a1,a1,1
    80004af0:	fed78fa3          	sb	a3,-1(a5)
    80004af4:	fee798e3          	bne	a5,a4,80004ae4 <__memmove+0x160>
    80004af8:	f89ff06f          	j	80004a80 <__memmove+0xfc>

0000000080004afc <__putc>:
    80004afc:	fe010113          	addi	sp,sp,-32
    80004b00:	00813823          	sd	s0,16(sp)
    80004b04:	00113c23          	sd	ra,24(sp)
    80004b08:	02010413          	addi	s0,sp,32
    80004b0c:	00050793          	mv	a5,a0
    80004b10:	fef40593          	addi	a1,s0,-17
    80004b14:	00100613          	li	a2,1
    80004b18:	00000513          	li	a0,0
    80004b1c:	fef407a3          	sb	a5,-17(s0)
    80004b20:	fffff097          	auipc	ra,0xfffff
    80004b24:	b3c080e7          	jalr	-1220(ra) # 8000365c <console_write>
    80004b28:	01813083          	ld	ra,24(sp)
    80004b2c:	01013403          	ld	s0,16(sp)
    80004b30:	02010113          	addi	sp,sp,32
    80004b34:	00008067          	ret

0000000080004b38 <__getc>:
    80004b38:	fe010113          	addi	sp,sp,-32
    80004b3c:	00813823          	sd	s0,16(sp)
    80004b40:	00113c23          	sd	ra,24(sp)
    80004b44:	02010413          	addi	s0,sp,32
    80004b48:	fe840593          	addi	a1,s0,-24
    80004b4c:	00100613          	li	a2,1
    80004b50:	00000513          	li	a0,0
    80004b54:	fffff097          	auipc	ra,0xfffff
    80004b58:	ae8080e7          	jalr	-1304(ra) # 8000363c <console_read>
    80004b5c:	fe844503          	lbu	a0,-24(s0)
    80004b60:	01813083          	ld	ra,24(sp)
    80004b64:	01013403          	ld	s0,16(sp)
    80004b68:	02010113          	addi	sp,sp,32
    80004b6c:	00008067          	ret

0000000080004b70 <console_handler>:
    80004b70:	fe010113          	addi	sp,sp,-32
    80004b74:	00813823          	sd	s0,16(sp)
    80004b78:	00113c23          	sd	ra,24(sp)
    80004b7c:	00913423          	sd	s1,8(sp)
    80004b80:	02010413          	addi	s0,sp,32
    80004b84:	14202773          	csrr	a4,scause
    80004b88:	100027f3          	csrr	a5,sstatus
    80004b8c:	0027f793          	andi	a5,a5,2
    80004b90:	06079e63          	bnez	a5,80004c0c <console_handler+0x9c>
    80004b94:	00074c63          	bltz	a4,80004bac <console_handler+0x3c>
    80004b98:	01813083          	ld	ra,24(sp)
    80004b9c:	01013403          	ld	s0,16(sp)
    80004ba0:	00813483          	ld	s1,8(sp)
    80004ba4:	02010113          	addi	sp,sp,32
    80004ba8:	00008067          	ret
    80004bac:	0ff77713          	andi	a4,a4,255
    80004bb0:	00900793          	li	a5,9
    80004bb4:	fef712e3          	bne	a4,a5,80004b98 <console_handler+0x28>
    80004bb8:	ffffe097          	auipc	ra,0xffffe
    80004bbc:	6dc080e7          	jalr	1756(ra) # 80003294 <plic_claim>
    80004bc0:	00a00793          	li	a5,10
    80004bc4:	00050493          	mv	s1,a0
    80004bc8:	02f50c63          	beq	a0,a5,80004c00 <console_handler+0x90>
    80004bcc:	fc0506e3          	beqz	a0,80004b98 <console_handler+0x28>
    80004bd0:	00050593          	mv	a1,a0
    80004bd4:	00000517          	auipc	a0,0x0
    80004bd8:	5ac50513          	addi	a0,a0,1452 # 80005180 <_ZZ12printIntegermE6digits+0x108>
    80004bdc:	fffff097          	auipc	ra,0xfffff
    80004be0:	afc080e7          	jalr	-1284(ra) # 800036d8 <__printf>
    80004be4:	01013403          	ld	s0,16(sp)
    80004be8:	01813083          	ld	ra,24(sp)
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	00813483          	ld	s1,8(sp)
    80004bf4:	02010113          	addi	sp,sp,32
    80004bf8:	ffffe317          	auipc	t1,0xffffe
    80004bfc:	6d430067          	jr	1748(t1) # 800032cc <plic_complete>
    80004c00:	fffff097          	auipc	ra,0xfffff
    80004c04:	3e0080e7          	jalr	992(ra) # 80003fe0 <uartintr>
    80004c08:	fddff06f          	j	80004be4 <console_handler+0x74>
    80004c0c:	00000517          	auipc	a0,0x0
    80004c10:	67450513          	addi	a0,a0,1652 # 80005280 <digits+0x78>
    80004c14:	fffff097          	auipc	ra,0xfffff
    80004c18:	a68080e7          	jalr	-1432(ra) # 8000367c <panic>
	...
