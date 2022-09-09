
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	2a013103          	ld	sp,672(sp) # 800072a0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	721020ef          	jal	ra,80002f3c <start>

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
    80001334:	00004097          	auipc	ra,0x4
    80001338:	d04080e7          	jalr	-764(ra) # 80005038 <__getc>
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
    8000135c:	00004097          	auipc	ra,0x4
    80001360:	ca0080e7          	jalr	-864(ra) # 80004ffc <__putc>
    80001364:	00813083          	ld	ra,8(sp)
    80001368:	00013403          	ld	s0,0(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_ZN6Kernel10initKernelEv>:

#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/riscv.hpp"

void Kernel::initKernel() {
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00113423          	sd	ra,8(sp)
    8000137c:	00813023          	sd	s0,0(sp)
    80001380:	01010413          	addi	s0,sp,16
    RiscV::writeStvec((uint64) &supervisorTrap);
    80001384:	00006797          	auipc	a5,0x6
    80001388:	f247b783          	ld	a5,-220(a5) # 800072a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    8000138c:	10579073          	csrw	stvec,a5
    MemoryAllocator::initMem();
    80001390:	00000097          	auipc	ra,0x0
    80001394:	3d4080e7          	jalr	980(ra) # 80001764 <_ZN15MemoryAllocator7initMemEv>
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
    800013f4:	510080e7          	jalr	1296(ra) # 80001900 <_ZN15MemoryAllocator8allocateEm>
            break;
    800013f8:	fddff06f          	j	800013d4 <_ZN6Kernel15syscall_handlerEv+0x2c>
            asm volatile ("mv %[arg0], a1": [arg0] "=r"(arg0));
    800013fc:	00058793          	mv	a5,a1
    80001400:	fef43023          	sd	a5,-32(s0)
            MemoryAllocator::free((void*)arg0);
    80001404:	fe043503          	ld	a0,-32(s0)
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	598080e7          	jalr	1432(ra) # 800019a0 <_ZN15MemoryAllocator4freeEPv>
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
    8000145c:	00005517          	auipc	a0,0x5
    80001460:	bf450513          	addi	a0,a0,-1036 # 80006050 <CONSOLE_STATUS+0x40>
    80001464:	00000097          	auipc	ra,0x0
    80001468:	6f0080e7          	jalr	1776(ra) # 80001b54 <_Z14__print_stringPKc>
    __print_string("scause: ");
    8000146c:	00005517          	auipc	a0,0x5
    80001470:	bd450513          	addi	a0,a0,-1068 # 80006040 <CONSOLE_STATUS+0x30>
    80001474:	00000097          	auipc	ra,0x0
    80001478:	6e0080e7          	jalr	1760(ra) # 80001b54 <_Z14__print_stringPKc>
    __print_uint64(scause);
    8000147c:	00048513          	mv	a0,s1
    80001480:	00000097          	auipc	ra,0x0
    80001484:	718080e7          	jalr	1816(ra) # 80001b98 <_Z14__print_uint64m>
    __putc('\n');
    80001488:	00a00513          	li	a0,10
    8000148c:	00004097          	auipc	ra,0x4
    80001490:	b70080e7          	jalr	-1168(ra) # 80004ffc <__putc>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    80001494:	20000793          	li	a5,512
    80001498:	1447b073          	csrc	sip,a5
    console_handler();
    8000149c:	00004097          	auipc	ra,0x4
    800014a0:	bd4080e7          	jalr	-1068(ra) # 80005070 <console_handler>
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
    80001500:	00005517          	auipc	a0,0x5
    80001504:	b2050513          	addi	a0,a0,-1248 # 80006020 <CONSOLE_STATUS+0x10>
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	64c080e7          	jalr	1612(ra) # 80001b54 <_Z14__print_stringPKc>
        __print_string("scause: ");
    80001510:	00005517          	auipc	a0,0x5
    80001514:	b3050513          	addi	a0,a0,-1232 # 80006040 <CONSOLE_STATUS+0x30>
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	63c080e7          	jalr	1596(ra) # 80001b54 <_Z14__print_stringPKc>
        __print_uint64(scause);
    80001520:	00048513          	mv	a0,s1
    80001524:	00000097          	auipc	ra,0x0
    80001528:	674080e7          	jalr	1652(ra) # 80001b98 <_Z14__print_uint64m>
        __putc('\n');
    8000152c:	00a00513          	li	a0,10
    80001530:	00004097          	auipc	ra,0x4
    80001534:	acc080e7          	jalr	-1332(ra) # 80004ffc <__putc>
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
    8000156c:	1ac080e7          	jalr	428(ra) # 80001714 <_ZdlPv>
    80001570:	00813083          	ld	ra,8(sp)
    80001574:	00013403          	ld	s0,0(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00813423          	sd	s0,8(sp)
    80001588:	01010413          	addi	s0,sp,16
    8000158c:	00006797          	auipc	a5,0x6
    80001590:	c0478793          	addi	a5,a5,-1020 # 80007190 <_ZTV9Semaphore+0x10>
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
    800015dc:	fe010113          	addi	sp,sp,-32
    800015e0:	00113c23          	sd	ra,24(sp)
    800015e4:	00813823          	sd	s0,16(sp)
    800015e8:	00913423          	sd	s1,8(sp)
    800015ec:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	d84080e7          	jalr	-636(ra) # 80001374 <_ZN6Kernel10initKernelEv>
    __print_string("Here");
    800015f8:	00005517          	auipc	a0,0x5
    800015fc:	a7050513          	addi	a0,a0,-1424 # 80006068 <CONSOLE_STATUS+0x58>
    80001600:	00000097          	auipc	ra,0x0
    80001604:	554080e7          	jalr	1364(ra) # 80001b54 <_Z14__print_stringPKc>
    int *a = new int[100000000];
    80001608:	17d78537          	lui	a0,0x17d78
    8000160c:	40050513          	addi	a0,a0,1024 # 17d78400 <_entry-0x68287c00>
    80001610:	00000097          	auipc	ra,0x0
    80001614:	0dc080e7          	jalr	220(ra) # 800016ec <_Znam>
    80001618:	00050493          	mv	s1,a0
    //a[0] = 48; a[1] = 49; a[2] = 50; a[3] = 51; a[4] = 52;
    /*for (int i = 0; i < 5; i++)
        __putc(a[i]);*/

    __print_string("Here");
    8000161c:	00005517          	auipc	a0,0x5
    80001620:	a4c50513          	addi	a0,a0,-1460 # 80006068 <CONSOLE_STATUS+0x58>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	530080e7          	jalr	1328(ra) # 80001b54 <_Z14__print_stringPKc>
    delete[] a;
    8000162c:	00048863          	beqz	s1,8000163c <main+0x60>
    80001630:	00048513          	mv	a0,s1
    80001634:	00000097          	auipc	ra,0x0
    80001638:	108080e7          	jalr	264(ra) # 8000173c <_ZdaPv>
    int *b = (int*) mem_alloc(sizeof (int));
    8000163c:	00400513          	li	a0,4
    80001640:	00000097          	auipc	ra,0x0
    80001644:	9c0080e7          	jalr	-1600(ra) # 80001000 <mem_alloc>
    80001648:	00050493          	mv	s1,a0
    *b = 48;
    8000164c:	03000793          	li	a5,48
    80001650:	00f52023          	sw	a5,0(a0)
    __print_string("Here");
    80001654:	00005517          	auipc	a0,0x5
    80001658:	a1450513          	addi	a0,a0,-1516 # 80006068 <CONSOLE_STATUS+0x58>
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	4f8080e7          	jalr	1272(ra) # 80001b54 <_Z14__print_stringPKc>
    __putc(*b);
    80001664:	0004c503          	lbu	a0,0(s1)
    80001668:	00004097          	auipc	ra,0x4
    8000166c:	994080e7          	jalr	-1644(ra) # 80004ffc <__putc>
    mem_free(b);
    80001670:	00048513          	mv	a0,s1
    80001674:	00000097          	auipc	ra,0x0
    80001678:	99c080e7          	jalr	-1636(ra) # 80001010 <mem_free>
    8000167c:	01813083          	ld	ra,24(sp)
    80001680:	01013403          	ld	s0,16(sp)
    80001684:	00813483          	ld	s1,8(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_ZN7Console4getcEv>:
//

#include "../h/syscall_cpp.hpp"


char Console::getc() {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    return 0;
}
    8000169c:	00000513          	li	a0,0
    800016a0:	00813403          	ld	s0,8(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN7Console4putcEc>:

void Console::putc(char) {
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00813423          	sd	s0,8(sp)
    800016b4:	01010413          	addi	s0,sp,16

    800016b8:	00813403          	ld	s0,8(sp)
    800016bc:	01010113          	addi	sp,sp,16
    800016c0:	00008067          	ret

00000000800016c4 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800016c4:	ff010113          	addi	sp,sp,-16
    800016c8:	00113423          	sd	ra,8(sp)
    800016cc:	00813023          	sd	s0,0(sp)
    800016d0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	92c080e7          	jalr	-1748(ra) # 80001000 <mem_alloc>
}
    800016dc:	00813083          	ld	ra,8(sp)
    800016e0:	00013403          	ld	s0,0(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret

00000000800016ec <_Znam>:

void* operator new[](size_t size) {
    800016ec:	ff010113          	addi	sp,sp,-16
    800016f0:	00113423          	sd	ra,8(sp)
    800016f4:	00813023          	sd	s0,0(sp)
    800016f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	904080e7          	jalr	-1788(ra) # 80001000 <mem_alloc>
}
    80001704:	00813083          	ld	ra,8(sp)
    80001708:	00013403          	ld	s0,0(sp)
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret

0000000080001714 <_ZdlPv>:

void operator delete(void* ptr) {
    80001714:	ff010113          	addi	sp,sp,-16
    80001718:	00113423          	sd	ra,8(sp)
    8000171c:	00813023          	sd	s0,0(sp)
    80001720:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001724:	00000097          	auipc	ra,0x0
    80001728:	8ec080e7          	jalr	-1812(ra) # 80001010 <mem_free>
}
    8000172c:	00813083          	ld	ra,8(sp)
    80001730:	00013403          	ld	s0,0(sp)
    80001734:	01010113          	addi	sp,sp,16
    80001738:	00008067          	ret

000000008000173c <_ZdaPv>:

void operator delete[](void* ptr) {
    8000173c:	ff010113          	addi	sp,sp,-16
    80001740:	00113423          	sd	ra,8(sp)
    80001744:	00813023          	sd	s0,0(sp)
    80001748:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	8c4080e7          	jalr	-1852(ra) # 80001010 <mem_free>
}
    80001754:	00813083          	ld	ra,8(sp)
    80001758:	00013403          	ld	s0,0(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);

}

void MemoryAllocator::initMem()  {
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00813423          	sd	s0,8(sp)
    8000176c:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    80001770:	00006797          	auipc	a5,0x6
    80001774:	b287b783          	ld	a5,-1240(a5) # 80007298 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001778:	0007b783          	ld	a5,0(a5)
    8000177c:	00006697          	auipc	a3,0x6
    80001780:	b8468693          	addi	a3,a3,-1148 # 80007300 <_ZN15MemoryAllocator8fMemHeadE>
    80001784:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    80001788:	00006717          	auipc	a4,0x6
    8000178c:	b2873703          	ld	a4,-1240(a4) # 800072b0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001790:	00073703          	ld	a4,0(a4)
    80001794:	40f70733          	sub	a4,a4,a5
    80001798:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    8000179c:	0006b783          	ld	a5,0(a3)
    800017a0:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    800017a4:	0007b823          	sd	zero,16(a5)
}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    800017b4:	ff010113          	addi	sp,sp,-16
    800017b8:	00813423          	sd	s0,8(sp)
    800017bc:	01010413          	addi	s0,sp,16
    800017c0:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    800017c4:	00006517          	auipc	a0,0x6
    800017c8:	b3c53503          	ld	a0,-1220(a0) # 80007300 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    800017cc:	02050063          	beqz	a0,800017ec <_ZN15MemoryAllocator8firstFitEm+0x38>
    800017d0:	01053703          	ld	a4,16(a0)
    800017d4:	00070c63          	beqz	a4,800017ec <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    800017d8:	00860793          	addi	a5,a2,8
    800017dc:	00053683          	ld	a3,0(a0)
    800017e0:	00f6fe63          	bgeu	a3,a5,800017fc <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    800017e4:	00070513          	mv	a0,a4
    800017e8:	fe5ff06f          	j	800017cc <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    800017ec:	00050863          	beqz	a0,800017fc <_ZN15MemoryAllocator8firstFitEm+0x48>
    800017f0:	00860613          	addi	a2,a2,8
    800017f4:	00053783          	ld	a5,0(a0)
    800017f8:	00c7e863          	bltu	a5,a2,80001808 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    800017fc:	00813403          	ld	s0,8(sp)
    80001800:	01010113          	addi	sp,sp,16
    80001804:	00008067          	ret
    return nullptr;
    80001808:	00000513          	li	a0,0
    8000180c:	ff1ff06f          	j	800017fc <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001810 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00813423          	sd	s0,8(sp)
    80001818:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    8000181c:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001820:	03f57793          	andi	a5,a0,63
    80001824:	00078863          	beqz	a5,80001834 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80001828:	04000713          	li	a4,64
    8000182c:	40f707b3          	sub	a5,a4,a5
    80001830:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001840:	fe010113          	addi	sp,sp,-32
    80001844:	00113c23          	sd	ra,24(sp)
    80001848:	00813823          	sd	s0,16(sp)
    8000184c:	00913423          	sd	s1,8(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050493          	mv	s1,a0
    if (node) {
    80001858:	04050c63          	beqz	a0,800018b0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    8000185c:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001860:	00000097          	auipc	ra,0x0
    80001864:	fb0080e7          	jalr	-80(ra) # 80001810 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80001868:	0004b783          	ld	a5,0(s1)
    8000186c:	40a787b3          	sub	a5,a5,a0
    80001870:	03f00713          	li	a4,63
    80001874:	04f77e63          	bgeu	a4,a5,800018d0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80001878:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    8000187c:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80001880:	0084b783          	ld	a5,8(s1)
    80001884:	04078063          	beqz	a5,800018c4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80001888:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    8000188c:	0104b783          	ld	a5,16(s1)
    80001890:	00078463          	beqz	a5,80001898 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001894:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80001898:	0104b783          	ld	a5,16(s1)
    8000189c:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    800018a0:	0084b783          	ld	a5,8(s1)
    800018a4:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    800018a8:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + sizeof(size_t));
    800018ac:	00848513          	addi	a0,s1,8
}
    800018b0:	01813083          	ld	ra,24(sp)
    800018b4:	01013403          	ld	s0,16(sp)
    800018b8:	00813483          	ld	s1,8(sp)
    800018bc:	02010113          	addi	sp,sp,32
    800018c0:	00008067          	ret
            else fMemHead = newNode;
    800018c4:	00006797          	auipc	a5,0x6
    800018c8:	a2e7be23          	sd	a4,-1476(a5) # 80007300 <_ZN15MemoryAllocator8fMemHeadE>
    800018cc:	fc1ff06f          	j	8000188c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    800018d0:	0084b783          	ld	a5,8(s1)
    800018d4:	02078063          	beqz	a5,800018f4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    800018d8:	0104b703          	ld	a4,16(s1)
    800018dc:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    800018e0:	0104b783          	ld	a5,16(s1)
    800018e4:	fc0782e3          	beqz	a5,800018a8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    800018e8:	0084b703          	ld	a4,8(s1)
    800018ec:	00e7b423          	sd	a4,8(a5)
    800018f0:	fb9ff06f          	j	800018a8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = newNode;
    800018f4:	00006797          	auipc	a5,0x6
    800018f8:	a007b623          	sd	zero,-1524(a5) # 80007300 <_ZN15MemoryAllocator8fMemHeadE>
    800018fc:	fe5ff06f          	j	800018e0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080001900 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80001900:	fe010113          	addi	sp,sp,-32
    80001904:	00113c23          	sd	ra,24(sp)
    80001908:	00813823          	sd	s0,16(sp)
    8000190c:	00913423          	sd	s1,8(sp)
    80001910:	02010413          	addi	s0,sp,32
    80001914:	00050493          	mv	s1,a0
    return allocBlocks(firstFit(size), size);
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	e9c080e7          	jalr	-356(ra) # 800017b4 <_ZN15MemoryAllocator8firstFitEm>
    80001920:	00048593          	mv	a1,s1
    80001924:	00000097          	auipc	ra,0x0
    80001928:	f1c080e7          	jalr	-228(ra) # 80001840 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    8000192c:	01813083          	ld	ra,24(sp)
    80001930:	01013403          	ld	s0,16(sp)
    80001934:	00813483          	ld	s1,8(sp)
    80001938:	02010113          	addi	sp,sp,32
    8000193c:	00008067          	ret

0000000080001940 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00813423          	sd	s0,8(sp)
    80001948:	01010413          	addi	s0,sp,16
    if(!node) return;
    8000194c:	02050663          	beqz	a0,80001978 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    if (!node->next && node + node->size != node->next) return;
    80001950:	01053783          	ld	a5,16(a0)
    80001954:	02078863          	beqz	a5,80001984 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x44>

    node->size += node->next->size;
    80001958:	0007b683          	ld	a3,0(a5)
    8000195c:	00053703          	ld	a4,0(a0)
    80001960:	00d70733          	add	a4,a4,a3
    80001964:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80001968:	0107b783          	ld	a5,16(a5)
    8000196c:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80001970:	00078463          	beqz	a5,80001978 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    80001974:	00a7b423          	sd	a0,8(a5)
}
    80001978:	00813403          	ld	s0,8(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret
    if (!node->next && node + node->size != node->next) return;
    80001984:	00053683          	ld	a3,0(a0)
    80001988:	00169713          	slli	a4,a3,0x1
    8000198c:	00d70733          	add	a4,a4,a3
    80001990:	00371713          	slli	a4,a4,0x3
    80001994:	00e50733          	add	a4,a0,a4
    80001998:	fee790e3          	bne	a5,a4,80001978 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    8000199c:	fbdff06f          	j	80001958 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x18>

00000000800019a0 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    800019a0:	fe010113          	addi	sp,sp,-32
    800019a4:	00113c23          	sd	ra,24(sp)
    800019a8:	00813823          	sd	s0,16(sp)
    800019ac:	00913423          	sd	s1,8(sp)
    800019b0:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    800019b4:	ff850513          	addi	a0,a0,-8
    if (fMemHead && addr>(void*)fMemHead)
    800019b8:	00006717          	auipc	a4,0x6
    800019bc:	94873703          	ld	a4,-1720(a4) # 80007300 <_ZN15MemoryAllocator8fMemHeadE>
    800019c0:	02070063          	beqz	a4,800019e0 <_ZN15MemoryAllocator4freeEPv+0x40>
    800019c4:	02a77263          	bgeu	a4,a0,800019e8 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    800019c8:	00070793          	mv	a5,a4
    800019cc:	00078493          	mv	s1,a5
    800019d0:	0107b783          	ld	a5,16(a5)
    800019d4:	00078c63          	beqz	a5,800019ec <_ZN15MemoryAllocator4freeEPv+0x4c>
    800019d8:	fea7eae3          	bltu	a5,a0,800019cc <_ZN15MemoryAllocator4freeEPv+0x2c>
    800019dc:	0100006f          	j	800019ec <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    800019e0:	00070493          	mv	s1,a4
    800019e4:	0080006f          	j	800019ec <_ZN15MemoryAllocator4freeEPv+0x4c>
    800019e8:	00000493          	li	s1,0
    newNode->prev = curr;
    800019ec:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    800019f0:	04048263          	beqz	s1,80001a34 <_ZN15MemoryAllocator4freeEPv+0x94>
    800019f4:	0104b783          	ld	a5,16(s1)
    800019f8:	00f53823          	sd	a5,16(a0)
    800019fc:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80001a00:	01053783          	ld	a5,16(a0)
    80001a04:	00078463          	beqz	a5,80001a0c <_ZN15MemoryAllocator4freeEPv+0x6c>
    80001a08:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	f34080e7          	jalr	-204(ra) # 80001940 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80001a14:	00048513          	mv	a0,s1
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	f28080e7          	jalr	-216(ra) # 80001940 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	02010113          	addi	sp,sp,32
    80001a30:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80001a34:	00e53823          	sd	a4,16(a0)
    80001a38:	00006797          	auipc	a5,0x6
    80001a3c:	8ca7b423          	sd	a0,-1848(a5) # 80007300 <_ZN15MemoryAllocator8fMemHeadE>
    80001a40:	fc1ff06f          	j	80001a00 <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080001a44 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00813423          	sd	s0,8(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001a50:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001a54:	10200073          	sret
    80001a58:	00813403          	ld	s0,8(sp)
    80001a5c:	01010113          	addi	sp,sp,16
    80001a60:	00008067          	ret

0000000080001a64 <_ZN14PeriodicThreadC1Em>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

PeriodicThread::PeriodicThread(time_t period) {
    80001a64:	fe010113          	addi	sp,sp,-32
    80001a68:	00113c23          	sd	ra,24(sp)
    80001a6c:	00813823          	sd	s0,16(sp)
    80001a70:	00913423          	sd	s1,8(sp)
    80001a74:	02010413          	addi	s0,sp,32
    80001a78:	00050493          	mv	s1,a0
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	334080e7          	jalr	820(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80001a84:	00005797          	auipc	a5,0x5
    80001a88:	72c78793          	addi	a5,a5,1836 # 800071b0 <_ZTV14PeriodicThread+0x10>
    80001a8c:	00f4b023          	sd	a5,0(s1)

    80001a90:	01813083          	ld	ra,24(sp)
    80001a94:	01013403          	ld	s0,16(sp)
    80001a98:	00813483          	ld	s1,8(sp)
    80001a9c:	02010113          	addi	sp,sp,32
    80001aa0:	00008067          	ret

0000000080001aa4 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00813423          	sd	s0,8(sp)
    80001aac:	01010413          	addi	s0,sp,16
    80001ab0:	00813403          	ld	s0,8(sp)
    80001ab4:	01010113          	addi	sp,sp,16
    80001ab8:	00008067          	ret

0000000080001abc <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001abc:	ff010113          	addi	sp,sp,-16
    80001ac0:	00813423          	sd	s0,8(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    80001ac8:	00813403          	ld	s0,8(sp)
    80001acc:	01010113          	addi	sp,sp,16
    80001ad0:	00008067          	ret

0000000080001ad4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001ad4:	ff010113          	addi	sp,sp,-16
    80001ad8:	00113423          	sd	ra,8(sp)
    80001adc:	00813023          	sd	s0,0(sp)
    80001ae0:	01010413          	addi	s0,sp,16
    80001ae4:	00005797          	auipc	a5,0x5
    80001ae8:	6cc78793          	addi	a5,a5,1740 # 800071b0 <_ZTV14PeriodicThread+0x10>
    80001aec:	00f53023          	sd	a5,0(a0)
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	20c080e7          	jalr	524(ra) # 80001cfc <_ZN6ThreadD1Ev>
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_ZN14PeriodicThreadD0Ev>:
    80001b08:	fe010113          	addi	sp,sp,-32
    80001b0c:	00113c23          	sd	ra,24(sp)
    80001b10:	00813823          	sd	s0,16(sp)
    80001b14:	00913423          	sd	s1,8(sp)
    80001b18:	02010413          	addi	s0,sp,32
    80001b1c:	00050493          	mv	s1,a0
    80001b20:	00005797          	auipc	a5,0x5
    80001b24:	69078793          	addi	a5,a5,1680 # 800071b0 <_ZTV14PeriodicThread+0x10>
    80001b28:	00f53023          	sd	a5,0(a0)
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	1d0080e7          	jalr	464(ra) # 80001cfc <_ZN6ThreadD1Ev>
    80001b34:	00048513          	mv	a0,s1
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	bdc080e7          	jalr	-1060(ra) # 80001714 <_ZdlPv>
    80001b40:	01813083          	ld	ra,24(sp)
    80001b44:	01013403          	ld	s0,16(sp)
    80001b48:	00813483          	ld	s1,8(sp)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00008067          	ret

0000000080001b54 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    80001b54:	fe010113          	addi	sp,sp,-32
    80001b58:	00113c23          	sd	ra,24(sp)
    80001b5c:	00813823          	sd	s0,16(sp)
    80001b60:	00913423          	sd	s1,8(sp)
    80001b64:	02010413          	addi	s0,sp,32
    80001b68:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80001b6c:	0004c503          	lbu	a0,0(s1)
    80001b70:	00050a63          	beqz	a0,80001b84 <_Z14__print_stringPKc+0x30>
    80001b74:	00003097          	auipc	ra,0x3
    80001b78:	488080e7          	jalr	1160(ra) # 80004ffc <__putc>
    80001b7c:	00148493          	addi	s1,s1,1
    80001b80:	fedff06f          	j	80001b6c <_Z14__print_stringPKc+0x18>
}
    80001b84:	01813083          	ld	ra,24(sp)
    80001b88:	01013403          	ld	s0,16(sp)
    80001b8c:	00813483          	ld	s1,8(sp)
    80001b90:	02010113          	addi	sp,sp,32
    80001b94:	00008067          	ret

0000000080001b98 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80001b98:	fc010113          	addi	sp,sp,-64
    80001b9c:	02113c23          	sd	ra,56(sp)
    80001ba0:	02813823          	sd	s0,48(sp)
    80001ba4:	02913423          	sd	s1,40(sp)
    80001ba8:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80001bac:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80001bb0:	00a00693          	li	a3,10
    80001bb4:	02d57633          	remu	a2,a0,a3
    80001bb8:	00004717          	auipc	a4,0x4
    80001bbc:	4b870713          	addi	a4,a4,1208 # 80006070 <_ZZ14__print_uint64mE6digits>
    80001bc0:	00c70733          	add	a4,a4,a2
    80001bc4:	00074703          	lbu	a4,0(a4)
    80001bc8:	fe040613          	addi	a2,s0,-32
    80001bcc:	009607b3          	add	a5,a2,s1
    80001bd0:	0014849b          	addiw	s1,s1,1
    80001bd4:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80001bd8:	00050713          	mv	a4,a0
    80001bdc:	02d55533          	divu	a0,a0,a3
    80001be0:	00900793          	li	a5,9
    80001be4:	fce7e6e3          	bltu	a5,a4,80001bb0 <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    80001be8:	fff4849b          	addiw	s1,s1,-1
    80001bec:	0004ce63          	bltz	s1,80001c08 <_Z14__print_uint64m+0x70>
    80001bf0:	fe040793          	addi	a5,s0,-32
    80001bf4:	009787b3          	add	a5,a5,s1
    80001bf8:	fe87c503          	lbu	a0,-24(a5)
    80001bfc:	00003097          	auipc	ra,0x3
    80001c00:	400080e7          	jalr	1024(ra) # 80004ffc <__putc>
    80001c04:	fe5ff06f          	j	80001be8 <_Z14__print_uint64m+0x50>
}
    80001c08:	03813083          	ld	ra,56(sp)
    80001c0c:	03013403          	ld	s0,48(sp)
    80001c10:	02813483          	ld	s1,40(sp)
    80001c14:	04010113          	addi	sp,sp,64
    80001c18:	00008067          	ret

0000000080001c1c <_Z11__print_intx>:

void __print_int(long long int integer) {
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    80001c30:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    80001c34:	02054263          	bltz	a0,80001c58 <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80001c38:	00048513          	mv	a0,s1
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	f5c080e7          	jalr	-164(ra) # 80001b98 <_Z14__print_uint64m>
}
    80001c44:	01813083          	ld	ra,24(sp)
    80001c48:	01013403          	ld	s0,16(sp)
    80001c4c:	00813483          	ld	s1,8(sp)
    80001c50:	02010113          	addi	sp,sp,32
    80001c54:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    80001c58:	02d00513          	li	a0,45
    80001c5c:	00003097          	auipc	ra,0x3
    80001c60:	3a0080e7          	jalr	928(ra) # 80004ffc <__putc>
    80001c64:	409004b3          	neg	s1,s1
    80001c68:	fd1ff06f          	j	80001c38 <_Z11__print_intx+0x1c>

0000000080001c6c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001c6c:	fd010113          	addi	sp,sp,-48
    80001c70:	02113423          	sd	ra,40(sp)
    80001c74:	02813023          	sd	s0,32(sp)
    80001c78:	00913c23          	sd	s1,24(sp)
    80001c7c:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001c80:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001c84:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001c88:	00a00613          	li	a2,10
    80001c8c:	02c5773b          	remuw	a4,a0,a2
    80001c90:	02071693          	slli	a3,a4,0x20
    80001c94:	0206d693          	srli	a3,a3,0x20
    80001c98:	00004717          	auipc	a4,0x4
    80001c9c:	3d870713          	addi	a4,a4,984 # 80006070 <_ZZ14__print_uint64mE6digits>
    80001ca0:	00d70733          	add	a4,a4,a3
    80001ca4:	01074703          	lbu	a4,16(a4)
    80001ca8:	fe040693          	addi	a3,s0,-32
    80001cac:	009687b3          	add	a5,a3,s1
    80001cb0:	0014849b          	addiw	s1,s1,1
    80001cb4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001cb8:	0005071b          	sext.w	a4,a0
    80001cbc:	02c5553b          	divuw	a0,a0,a2
    80001cc0:	00900793          	li	a5,9
    80001cc4:	fce7e2e3          	bltu	a5,a4,80001c88 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80001cc8:	fff4849b          	addiw	s1,s1,-1
    80001ccc:	0004ce63          	bltz	s1,80001ce8 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80001cd0:	fe040793          	addi	a5,s0,-32
    80001cd4:	009787b3          	add	a5,a5,s1
    80001cd8:	ff07c503          	lbu	a0,-16(a5)
    80001cdc:	00003097          	auipc	ra,0x3
    80001ce0:	320080e7          	jalr	800(ra) # 80004ffc <__putc>
    80001ce4:	fe5ff06f          	j	80001cc8 <_Z12printIntegerm+0x5c>
}
    80001ce8:	02813083          	ld	ra,40(sp)
    80001cec:	02013403          	ld	s0,32(sp)
    80001cf0:	01813483          	ld	s1,24(sp)
    80001cf4:	03010113          	addi	sp,sp,48
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16

}
    80001d08:	00813403          	ld	s0,8(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00113423          	sd	ra,8(sp)
    80001d1c:	00813023          	sd	s0,0(sp)
    80001d20:	01010413          	addi	s0,sp,16
}
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	9f0080e7          	jalr	-1552(ra) # 80001714 <_ZdlPv>
    80001d2c:	00813083          	ld	ra,8(sp)
    80001d30:	00013403          	ld	s0,0(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    80001d48:	00005797          	auipc	a5,0x5
    80001d4c:	49878793          	addi	a5,a5,1176 # 800071e0 <_ZTV6Thread+0x10>
    80001d50:	00f53023          	sd	a5,0(a0)
}
    80001d54:	00813403          	ld	s0,8(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_ZN6Thread5startEv>:

int Thread::start() {
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00813423          	sd	s0,8(sp)
    80001d68:	01010413          	addi	s0,sp,16
    return 0;
}
    80001d6c:	00000513          	li	a0,0
    80001d70:	00813403          	ld	s0,8(sp)
    80001d74:	01010113          	addi	sp,sp,16
    80001d78:	00008067          	ret

0000000080001d7c <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00813423          	sd	s0,8(sp)
    80001d84:	01010413          	addi	s0,sp,16

}
    80001d88:	00813403          	ld	s0,8(sp)
    80001d8c:	01010113          	addi	sp,sp,16
    80001d90:	00008067          	ret

0000000080001d94 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00813423          	sd	s0,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001da0:	00000513          	li	a0,0
    80001da4:	00813403          	ld	s0,8(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    80001dbc:	00005797          	auipc	a5,0x5
    80001dc0:	42478793          	addi	a5,a5,1060 # 800071e0 <_ZTV6Thread+0x10>
    80001dc4:	00f53023          	sd	a5,0(a0)

}
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001dd4:	fe010113          	addi	sp,sp,-32
    80001dd8:	00113c23          	sd	ra,24(sp)
    80001ddc:	00813823          	sd	s0,16(sp)
    80001de0:	00913423          	sd	s1,8(sp)
    80001de4:	02010413          	addi	s0,sp,32
    80001de8:	00050493          	mv	s1,a0
    LOCK();
    80001dec:	00100613          	li	a2,1
    80001df0:	00000593          	li	a1,0
    80001df4:	00005517          	auipc	a0,0x5
    80001df8:	51450513          	addi	a0,a0,1300 # 80007308 <lockPrint>
    80001dfc:	fffff097          	auipc	ra,0xfffff
    80001e00:	444080e7          	jalr	1092(ra) # 80001240 <copy_and_swap>
    80001e04:	fe0514e3          	bnez	a0,80001dec <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001e08:	0004c503          	lbu	a0,0(s1)
    80001e0c:	00050a63          	beqz	a0,80001e20 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	53c080e7          	jalr	1340(ra) # 8000134c <_Z4putcc>
        string++;
    80001e18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e1c:	fedff06f          	j	80001e08 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80001e20:	00000613          	li	a2,0
    80001e24:	00100593          	li	a1,1
    80001e28:	00005517          	auipc	a0,0x5
    80001e2c:	4e050513          	addi	a0,a0,1248 # 80007308 <lockPrint>
    80001e30:	fffff097          	auipc	ra,0xfffff
    80001e34:	410080e7          	jalr	1040(ra) # 80001240 <copy_and_swap>
    80001e38:	fe0514e3          	bnez	a0,80001e20 <_Z11printStringPKc+0x4c>
}
    80001e3c:	01813083          	ld	ra,24(sp)
    80001e40:	01013403          	ld	s0,16(sp)
    80001e44:	00813483          	ld	s1,8(sp)
    80001e48:	02010113          	addi	sp,sp,32
    80001e4c:	00008067          	ret

0000000080001e50 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001e50:	fd010113          	addi	sp,sp,-48
    80001e54:	02113423          	sd	ra,40(sp)
    80001e58:	02813023          	sd	s0,32(sp)
    80001e5c:	00913c23          	sd	s1,24(sp)
    80001e60:	01213823          	sd	s2,16(sp)
    80001e64:	01313423          	sd	s3,8(sp)
    80001e68:	01413023          	sd	s4,0(sp)
    80001e6c:	03010413          	addi	s0,sp,48
    80001e70:	00050993          	mv	s3,a0
    80001e74:	00058a13          	mv	s4,a1
    LOCK();
    80001e78:	00100613          	li	a2,1
    80001e7c:	00000593          	li	a1,0
    80001e80:	00005517          	auipc	a0,0x5
    80001e84:	48850513          	addi	a0,a0,1160 # 80007308 <lockPrint>
    80001e88:	fffff097          	auipc	ra,0xfffff
    80001e8c:	3b8080e7          	jalr	952(ra) # 80001240 <copy_and_swap>
    80001e90:	fe0514e3          	bnez	a0,80001e78 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001e94:	00000913          	li	s2,0
    80001e98:	00090493          	mv	s1,s2
    80001e9c:	0019091b          	addiw	s2,s2,1
    80001ea0:	03495a63          	bge	s2,s4,80001ed4 <_Z9getStringPci+0x84>
        cc = getc();
    80001ea4:	fffff097          	auipc	ra,0xfffff
    80001ea8:	480080e7          	jalr	1152(ra) # 80001324 <_Z4getcv>
        if(cc < 1)
    80001eac:	02050463          	beqz	a0,80001ed4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80001eb0:	009984b3          	add	s1,s3,s1
    80001eb4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001eb8:	00a00793          	li	a5,10
    80001ebc:	00f50a63          	beq	a0,a5,80001ed0 <_Z9getStringPci+0x80>
    80001ec0:	00d00793          	li	a5,13
    80001ec4:	fcf51ae3          	bne	a0,a5,80001e98 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80001ec8:	00090493          	mv	s1,s2
    80001ecc:	0080006f          	j	80001ed4 <_Z9getStringPci+0x84>
    80001ed0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001ed4:	009984b3          	add	s1,s3,s1
    80001ed8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001edc:	00000613          	li	a2,0
    80001ee0:	00100593          	li	a1,1
    80001ee4:	00005517          	auipc	a0,0x5
    80001ee8:	42450513          	addi	a0,a0,1060 # 80007308 <lockPrint>
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	354080e7          	jalr	852(ra) # 80001240 <copy_and_swap>
    80001ef4:	fe0514e3          	bnez	a0,80001edc <_Z9getStringPci+0x8c>
    return buf;
}
    80001ef8:	00098513          	mv	a0,s3
    80001efc:	02813083          	ld	ra,40(sp)
    80001f00:	02013403          	ld	s0,32(sp)
    80001f04:	01813483          	ld	s1,24(sp)
    80001f08:	01013903          	ld	s2,16(sp)
    80001f0c:	00813983          	ld	s3,8(sp)
    80001f10:	00013a03          	ld	s4,0(sp)
    80001f14:	03010113          	addi	sp,sp,48
    80001f18:	00008067          	ret

0000000080001f1c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    80001f28:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001f2c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001f30:	0006c603          	lbu	a2,0(a3)
    80001f34:	fd06071b          	addiw	a4,a2,-48
    80001f38:	0ff77713          	andi	a4,a4,255
    80001f3c:	00900793          	li	a5,9
    80001f40:	02e7e063          	bltu	a5,a4,80001f60 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001f44:	0025179b          	slliw	a5,a0,0x2
    80001f48:	00a787bb          	addw	a5,a5,a0
    80001f4c:	0017979b          	slliw	a5,a5,0x1
    80001f50:	00168693          	addi	a3,a3,1
    80001f54:	00c787bb          	addw	a5,a5,a2
    80001f58:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001f5c:	fd5ff06f          	j	80001f30 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001f60:	00813403          	ld	s0,8(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001f6c:	fc010113          	addi	sp,sp,-64
    80001f70:	02113c23          	sd	ra,56(sp)
    80001f74:	02813823          	sd	s0,48(sp)
    80001f78:	02913423          	sd	s1,40(sp)
    80001f7c:	03213023          	sd	s2,32(sp)
    80001f80:	01313c23          	sd	s3,24(sp)
    80001f84:	04010413          	addi	s0,sp,64
    80001f88:	00050493          	mv	s1,a0
    80001f8c:	00058913          	mv	s2,a1
    80001f90:	00060993          	mv	s3,a2
    LOCK();
    80001f94:	00100613          	li	a2,1
    80001f98:	00000593          	li	a1,0
    80001f9c:	00005517          	auipc	a0,0x5
    80001fa0:	36c50513          	addi	a0,a0,876 # 80007308 <lockPrint>
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	29c080e7          	jalr	668(ra) # 80001240 <copy_and_swap>
    80001fac:	fe0514e3          	bnez	a0,80001f94 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001fb0:	00098463          	beqz	s3,80001fb8 <_Z8printIntiii+0x4c>
    80001fb4:	0804c463          	bltz	s1,8000203c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001fb8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001fbc:	00000593          	li	a1,0
    }

    i = 0;
    80001fc0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001fc4:	0009079b          	sext.w	a5,s2
    80001fc8:	0325773b          	remuw	a4,a0,s2
    80001fcc:	00048613          	mv	a2,s1
    80001fd0:	0014849b          	addiw	s1,s1,1
    80001fd4:	02071693          	slli	a3,a4,0x20
    80001fd8:	0206d693          	srli	a3,a3,0x20
    80001fdc:	00005717          	auipc	a4,0x5
    80001fe0:	21c70713          	addi	a4,a4,540 # 800071f8 <digits>
    80001fe4:	00d70733          	add	a4,a4,a3
    80001fe8:	00074683          	lbu	a3,0(a4)
    80001fec:	fd040713          	addi	a4,s0,-48
    80001ff0:	00c70733          	add	a4,a4,a2
    80001ff4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001ff8:	0005071b          	sext.w	a4,a0
    80001ffc:	0325553b          	divuw	a0,a0,s2
    80002000:	fcf772e3          	bgeu	a4,a5,80001fc4 <_Z8printIntiii+0x58>
    if(neg)
    80002004:	00058c63          	beqz	a1,8000201c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002008:	fd040793          	addi	a5,s0,-48
    8000200c:	009784b3          	add	s1,a5,s1
    80002010:	02d00793          	li	a5,45
    80002014:	fef48823          	sb	a5,-16(s1)
    80002018:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000201c:	fff4849b          	addiw	s1,s1,-1
    80002020:	0204c463          	bltz	s1,80002048 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002024:	fd040793          	addi	a5,s0,-48
    80002028:	009787b3          	add	a5,a5,s1
    8000202c:	ff07c503          	lbu	a0,-16(a5)
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	31c080e7          	jalr	796(ra) # 8000134c <_Z4putcc>
    80002038:	fe5ff06f          	j	8000201c <_Z8printIntiii+0xb0>
        x = -xx;
    8000203c:	4090053b          	negw	a0,s1
        neg = 1;
    80002040:	00100593          	li	a1,1
        x = -xx;
    80002044:	f7dff06f          	j	80001fc0 <_Z8printIntiii+0x54>

    UNLOCK();
    80002048:	00000613          	li	a2,0
    8000204c:	00100593          	li	a1,1
    80002050:	00005517          	auipc	a0,0x5
    80002054:	2b850513          	addi	a0,a0,696 # 80007308 <lockPrint>
    80002058:	fffff097          	auipc	ra,0xfffff
    8000205c:	1e8080e7          	jalr	488(ra) # 80001240 <copy_and_swap>
    80002060:	fe0514e3          	bnez	a0,80002048 <_Z8printIntiii+0xdc>
    80002064:	03813083          	ld	ra,56(sp)
    80002068:	03013403          	ld	s0,48(sp)
    8000206c:	02813483          	ld	s1,40(sp)
    80002070:	02013903          	ld	s2,32(sp)
    80002074:	01813983          	ld	s3,24(sp)
    80002078:	04010113          	addi	sp,sp,64
    8000207c:	00008067          	ret

0000000080002080 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002080:	fd010113          	addi	sp,sp,-48
    80002084:	02113423          	sd	ra,40(sp)
    80002088:	02813023          	sd	s0,32(sp)
    8000208c:	00913c23          	sd	s1,24(sp)
    80002090:	01213823          	sd	s2,16(sp)
    80002094:	01313423          	sd	s3,8(sp)
    80002098:	03010413          	addi	s0,sp,48
    8000209c:	00050493          	mv	s1,a0
    800020a0:	00058913          	mv	s2,a1
    800020a4:	0015879b          	addiw	a5,a1,1
    800020a8:	0007851b          	sext.w	a0,a5
    800020ac:	00f4a023          	sw	a5,0(s1)
    800020b0:	0004a823          	sw	zero,16(s1)
    800020b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800020b8:	00251513          	slli	a0,a0,0x2
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	f44080e7          	jalr	-188(ra) # 80001000 <mem_alloc>
    800020c4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800020c8:	01000513          	li	a0,16
    800020cc:	fffff097          	auipc	ra,0xfffff
    800020d0:	5f8080e7          	jalr	1528(ra) # 800016c4 <_Znwm>
    800020d4:	00050993          	mv	s3,a0
    800020d8:	00000593          	li	a1,0
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	4a4080e7          	jalr	1188(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    800020e4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800020e8:	01000513          	li	a0,16
    800020ec:	fffff097          	auipc	ra,0xfffff
    800020f0:	5d8080e7          	jalr	1496(ra) # 800016c4 <_Znwm>
    800020f4:	00050993          	mv	s3,a0
    800020f8:	00090593          	mv	a1,s2
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	484080e7          	jalr	1156(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    80002104:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002108:	01000513          	li	a0,16
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	5b8080e7          	jalr	1464(ra) # 800016c4 <_Znwm>
    80002114:	00050913          	mv	s2,a0
    80002118:	00100593          	li	a1,1
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	464080e7          	jalr	1124(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    80002124:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002128:	01000513          	li	a0,16
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	598080e7          	jalr	1432(ra) # 800016c4 <_Znwm>
    80002134:	00050913          	mv	s2,a0
    80002138:	00100593          	li	a1,1
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	444080e7          	jalr	1092(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    80002144:	0324b823          	sd	s2,48(s1)
}
    80002148:	02813083          	ld	ra,40(sp)
    8000214c:	02013403          	ld	s0,32(sp)
    80002150:	01813483          	ld	s1,24(sp)
    80002154:	01013903          	ld	s2,16(sp)
    80002158:	00813983          	ld	s3,8(sp)
    8000215c:	03010113          	addi	sp,sp,48
    80002160:	00008067          	ret
    80002164:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002168:	00098513          	mv	a0,s3
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	5a8080e7          	jalr	1448(ra) # 80001714 <_ZdlPv>
    80002174:	00048513          	mv	a0,s1
    80002178:	00006097          	auipc	ra,0x6
    8000217c:	270080e7          	jalr	624(ra) # 800083e8 <_Unwind_Resume>
    80002180:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002184:	00098513          	mv	a0,s3
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	58c080e7          	jalr	1420(ra) # 80001714 <_ZdlPv>
    80002190:	00048513          	mv	a0,s1
    80002194:	00006097          	auipc	ra,0x6
    80002198:	254080e7          	jalr	596(ra) # 800083e8 <_Unwind_Resume>
    8000219c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800021a0:	00090513          	mv	a0,s2
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	570080e7          	jalr	1392(ra) # 80001714 <_ZdlPv>
    800021ac:	00048513          	mv	a0,s1
    800021b0:	00006097          	auipc	ra,0x6
    800021b4:	238080e7          	jalr	568(ra) # 800083e8 <_Unwind_Resume>
    800021b8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800021bc:	00090513          	mv	a0,s2
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	554080e7          	jalr	1364(ra) # 80001714 <_ZdlPv>
    800021c8:	00048513          	mv	a0,s1
    800021cc:	00006097          	auipc	ra,0x6
    800021d0:	21c080e7          	jalr	540(ra) # 800083e8 <_Unwind_Resume>

00000000800021d4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800021d4:	fe010113          	addi	sp,sp,-32
    800021d8:	00113c23          	sd	ra,24(sp)
    800021dc:	00813823          	sd	s0,16(sp)
    800021e0:	00913423          	sd	s1,8(sp)
    800021e4:	01213023          	sd	s2,0(sp)
    800021e8:	02010413          	addi	s0,sp,32
    800021ec:	00050493          	mv	s1,a0
    800021f0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800021f4:	01853503          	ld	a0,24(a0)
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	3ac080e7          	jalr	940(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002200:	0304b503          	ld	a0,48(s1)
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	3a0080e7          	jalr	928(ra) # 800015a4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000220c:	0084b783          	ld	a5,8(s1)
    80002210:	0144a703          	lw	a4,20(s1)
    80002214:	00271713          	slli	a4,a4,0x2
    80002218:	00e787b3          	add	a5,a5,a4
    8000221c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002220:	0144a783          	lw	a5,20(s1)
    80002224:	0017879b          	addiw	a5,a5,1
    80002228:	0004a703          	lw	a4,0(s1)
    8000222c:	02e7e7bb          	remw	a5,a5,a4
    80002230:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002234:	0304b503          	ld	a0,48(s1)
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	388080e7          	jalr	904(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002240:	0204b503          	ld	a0,32(s1)
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	37c080e7          	jalr	892(ra) # 800015c0 <_ZN9Semaphore6signalEv>

}
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	00013903          	ld	s2,0(sp)
    8000225c:	02010113          	addi	sp,sp,32
    80002260:	00008067          	ret

0000000080002264 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002264:	fe010113          	addi	sp,sp,-32
    80002268:	00113c23          	sd	ra,24(sp)
    8000226c:	00813823          	sd	s0,16(sp)
    80002270:	00913423          	sd	s1,8(sp)
    80002274:	01213023          	sd	s2,0(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002280:	02053503          	ld	a0,32(a0)
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	320080e7          	jalr	800(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000228c:	0284b503          	ld	a0,40(s1)
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	314080e7          	jalr	788(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002298:	0084b703          	ld	a4,8(s1)
    8000229c:	0104a783          	lw	a5,16(s1)
    800022a0:	00279693          	slli	a3,a5,0x2
    800022a4:	00d70733          	add	a4,a4,a3
    800022a8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800022ac:	0017879b          	addiw	a5,a5,1
    800022b0:	0004a703          	lw	a4,0(s1)
    800022b4:	02e7e7bb          	remw	a5,a5,a4
    800022b8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800022bc:	0284b503          	ld	a0,40(s1)
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	300080e7          	jalr	768(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800022c8:	0184b503          	ld	a0,24(s1)
    800022cc:	fffff097          	auipc	ra,0xfffff
    800022d0:	2f4080e7          	jalr	756(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800022d4:	00090513          	mv	a0,s2
    800022d8:	01813083          	ld	ra,24(sp)
    800022dc:	01013403          	ld	s0,16(sp)
    800022e0:	00813483          	ld	s1,8(sp)
    800022e4:	00013903          	ld	s2,0(sp)
    800022e8:	02010113          	addi	sp,sp,32
    800022ec:	00008067          	ret

00000000800022f0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800022f0:	fe010113          	addi	sp,sp,-32
    800022f4:	00113c23          	sd	ra,24(sp)
    800022f8:	00813823          	sd	s0,16(sp)
    800022fc:	00913423          	sd	s1,8(sp)
    80002300:	01213023          	sd	s2,0(sp)
    80002304:	02010413          	addi	s0,sp,32
    80002308:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000230c:	02853503          	ld	a0,40(a0)
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	294080e7          	jalr	660(ra) # 800015a4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002318:	0304b503          	ld	a0,48(s1)
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	288080e7          	jalr	648(ra) # 800015a4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002324:	0144a783          	lw	a5,20(s1)
    80002328:	0104a903          	lw	s2,16(s1)
    8000232c:	0327ce63          	blt	a5,s2,80002368 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002330:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002334:	0304b503          	ld	a0,48(s1)
    80002338:	fffff097          	auipc	ra,0xfffff
    8000233c:	288080e7          	jalr	648(ra) # 800015c0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002340:	0284b503          	ld	a0,40(s1)
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	27c080e7          	jalr	636(ra) # 800015c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000234c:	00090513          	mv	a0,s2
    80002350:	01813083          	ld	ra,24(sp)
    80002354:	01013403          	ld	s0,16(sp)
    80002358:	00813483          	ld	s1,8(sp)
    8000235c:	00013903          	ld	s2,0(sp)
    80002360:	02010113          	addi	sp,sp,32
    80002364:	00008067          	ret
        ret = cap - head + tail;
    80002368:	0004a703          	lw	a4,0(s1)
    8000236c:	4127093b          	subw	s2,a4,s2
    80002370:	00f9093b          	addw	s2,s2,a5
    80002374:	fc1ff06f          	j	80002334 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002378 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002378:	fe010113          	addi	sp,sp,-32
    8000237c:	00113c23          	sd	ra,24(sp)
    80002380:	00813823          	sd	s0,16(sp)
    80002384:	00913423          	sd	s1,8(sp)
    80002388:	02010413          	addi	s0,sp,32
    8000238c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002390:	00a00513          	li	a0,10
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	318080e7          	jalr	792(ra) # 800016ac <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000239c:	00004517          	auipc	a0,0x4
    800023a0:	cf450513          	addi	a0,a0,-780 # 80006090 <_ZZ12printIntegermE6digits+0x10>
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	a30080e7          	jalr	-1488(ra) # 80001dd4 <_Z11printStringPKc>
    while (getCnt()) {
    800023ac:	00048513          	mv	a0,s1
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	f40080e7          	jalr	-192(ra) # 800022f0 <_ZN9BufferCPP6getCntEv>
    800023b8:	02050c63          	beqz	a0,800023f0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800023bc:	0084b783          	ld	a5,8(s1)
    800023c0:	0104a703          	lw	a4,16(s1)
    800023c4:	00271713          	slli	a4,a4,0x2
    800023c8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800023cc:	0007c503          	lbu	a0,0(a5)
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	2dc080e7          	jalr	732(ra) # 800016ac <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800023d8:	0104a783          	lw	a5,16(s1)
    800023dc:	0017879b          	addiw	a5,a5,1
    800023e0:	0004a703          	lw	a4,0(s1)
    800023e4:	02e7e7bb          	remw	a5,a5,a4
    800023e8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800023ec:	fc1ff06f          	j	800023ac <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800023f0:	02100513          	li	a0,33
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	2b8080e7          	jalr	696(ra) # 800016ac <_ZN7Console4putcEc>
    Console::putc('\n');
    800023fc:	00a00513          	li	a0,10
    80002400:	fffff097          	auipc	ra,0xfffff
    80002404:	2ac080e7          	jalr	684(ra) # 800016ac <_ZN7Console4putcEc>
    mem_free(buffer);
    80002408:	0084b503          	ld	a0,8(s1)
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	c04080e7          	jalr	-1020(ra) # 80001010 <mem_free>
    delete itemAvailable;
    80002414:	0204b503          	ld	a0,32(s1)
    80002418:	00050863          	beqz	a0,80002428 <_ZN9BufferCPPD1Ev+0xb0>
    8000241c:	00053783          	ld	a5,0(a0)
    80002420:	0087b783          	ld	a5,8(a5)
    80002424:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002428:	0184b503          	ld	a0,24(s1)
    8000242c:	00050863          	beqz	a0,8000243c <_ZN9BufferCPPD1Ev+0xc4>
    80002430:	00053783          	ld	a5,0(a0)
    80002434:	0087b783          	ld	a5,8(a5)
    80002438:	000780e7          	jalr	a5
    delete mutexTail;
    8000243c:	0304b503          	ld	a0,48(s1)
    80002440:	00050863          	beqz	a0,80002450 <_ZN9BufferCPPD1Ev+0xd8>
    80002444:	00053783          	ld	a5,0(a0)
    80002448:	0087b783          	ld	a5,8(a5)
    8000244c:	000780e7          	jalr	a5
    delete mutexHead;
    80002450:	0284b503          	ld	a0,40(s1)
    80002454:	00050863          	beqz	a0,80002464 <_ZN9BufferCPPD1Ev+0xec>
    80002458:	00053783          	ld	a5,0(a0)
    8000245c:	0087b783          	ld	a5,8(a5)
    80002460:	000780e7          	jalr	a5
}
    80002464:	01813083          	ld	ra,24(sp)
    80002468:	01013403          	ld	s0,16(sp)
    8000246c:	00813483          	ld	s1,8(sp)
    80002470:	02010113          	addi	sp,sp,32
    80002474:	00008067          	ret

0000000080002478 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80002478:	f8010113          	addi	sp,sp,-128
    8000247c:	06113c23          	sd	ra,120(sp)
    80002480:	06813823          	sd	s0,112(sp)
    80002484:	06913423          	sd	s1,104(sp)
    80002488:	07213023          	sd	s2,96(sp)
    8000248c:	05313c23          	sd	s3,88(sp)
    80002490:	05413823          	sd	s4,80(sp)
    80002494:	05513423          	sd	s5,72(sp)
    80002498:	05613023          	sd	s6,64(sp)
    8000249c:	03713c23          	sd	s7,56(sp)
    800024a0:	03813823          	sd	s8,48(sp)
    800024a4:	03913423          	sd	s9,40(sp)
    800024a8:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    800024ac:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    800024b0:	00004517          	auipc	a0,0x4
    800024b4:	bf850513          	addi	a0,a0,-1032 # 800060a8 <_ZZ12printIntegermE6digits+0x28>
    800024b8:	00000097          	auipc	ra,0x0
    800024bc:	91c080e7          	jalr	-1764(ra) # 80001dd4 <_Z11printStringPKc>
        getString(input, 30);
    800024c0:	01e00593          	li	a1,30
    800024c4:	f8040493          	addi	s1,s0,-128
    800024c8:	00048513          	mv	a0,s1
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	984080e7          	jalr	-1660(ra) # 80001e50 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	a44080e7          	jalr	-1468(ra) # 80001f1c <_Z11stringToIntPKc>
    800024e0:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    800024e4:	00004517          	auipc	a0,0x4
    800024e8:	be450513          	addi	a0,a0,-1052 # 800060c8 <_ZZ12printIntegermE6digits+0x48>
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	8e8080e7          	jalr	-1816(ra) # 80001dd4 <_Z11printStringPKc>
        getString(input, 30);
    800024f4:	01e00593          	li	a1,30
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	954080e7          	jalr	-1708(ra) # 80001e50 <_Z9getStringPci>
        n = stringToInt(input);
    80002504:	00048513          	mv	a0,s1
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	a14080e7          	jalr	-1516(ra) # 80001f1c <_Z11stringToIntPKc>
    80002510:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80002514:	00004517          	auipc	a0,0x4
    80002518:	bd450513          	addi	a0,a0,-1068 # 800060e8 <_ZZ12printIntegermE6digits+0x68>
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	8b8080e7          	jalr	-1864(ra) # 80001dd4 <_Z11printStringPKc>
    80002524:	00000613          	li	a2,0
    80002528:	00a00593          	li	a1,10
    8000252c:	00098513          	mv	a0,s3
    80002530:	00000097          	auipc	ra,0x0
    80002534:	a3c080e7          	jalr	-1476(ra) # 80001f6c <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80002538:	00004517          	auipc	a0,0x4
    8000253c:	bc850513          	addi	a0,a0,-1080 # 80006100 <_ZZ12printIntegermE6digits+0x80>
    80002540:	00000097          	auipc	ra,0x0
    80002544:	894080e7          	jalr	-1900(ra) # 80001dd4 <_Z11printStringPKc>
    80002548:	00000613          	li	a2,0
    8000254c:	00a00593          	li	a1,10
    80002550:	00048513          	mv	a0,s1
    80002554:	00000097          	auipc	ra,0x0
    80002558:	a18080e7          	jalr	-1512(ra) # 80001f6c <_Z8printIntiii>
        printString(".\n");
    8000255c:	00004517          	auipc	a0,0x4
    80002560:	bbc50513          	addi	a0,a0,-1092 # 80006118 <_ZZ12printIntegermE6digits+0x98>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	870080e7          	jalr	-1936(ra) # 80001dd4 <_Z11printStringPKc>
        if(threadNum > n) {
    8000256c:	0334c463          	blt	s1,s3,80002594 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80002570:	03305c63          	blez	s3,800025a8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80002574:	03800513          	li	a0,56
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	14c080e7          	jalr	332(ra) # 800016c4 <_Znwm>
    80002580:	00050a93          	mv	s5,a0
    80002584:	00048593          	mv	a1,s1
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	af8080e7          	jalr	-1288(ra) # 80002080 <_ZN9BufferCPPC1Ei>
    80002590:	0300006f          	j	800025c0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002594:	00004517          	auipc	a0,0x4
    80002598:	b8c50513          	addi	a0,a0,-1140 # 80006120 <_ZZ12printIntegermE6digits+0xa0>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	838080e7          	jalr	-1992(ra) # 80001dd4 <_Z11printStringPKc>
            return;
    800025a4:	0140006f          	j	800025b8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800025a8:	00004517          	auipc	a0,0x4
    800025ac:	bb850513          	addi	a0,a0,-1096 # 80006160 <_ZZ12printIntegermE6digits+0xe0>
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	824080e7          	jalr	-2012(ra) # 80001dd4 <_Z11printStringPKc>
            return;
    800025b8:	000c0113          	mv	sp,s8
    800025bc:	21c0006f          	j	800027d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    800025c0:	01000513          	li	a0,16
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	100080e7          	jalr	256(ra) # 800016c4 <_Znwm>
    800025cc:	00050493          	mv	s1,a0
    800025d0:	00000593          	li	a1,0
    800025d4:	fffff097          	auipc	ra,0xfffff
    800025d8:	fac080e7          	jalr	-84(ra) # 80001580 <_ZN9SemaphoreC1Ej>
    800025dc:	00005717          	auipc	a4,0x5
    800025e0:	d3470713          	addi	a4,a4,-716 # 80007310 <_ZN19ConsumerProducerCPP9threadEndE>
    800025e4:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    800025e8:	00399793          	slli	a5,s3,0x3
    800025ec:	00f78793          	addi	a5,a5,15
    800025f0:	ff07f793          	andi	a5,a5,-16
    800025f4:	40f10133          	sub	sp,sp,a5
    800025f8:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    800025fc:	0019869b          	addiw	a3,s3,1
    80002600:	00169793          	slli	a5,a3,0x1
    80002604:	00d787b3          	add	a5,a5,a3
    80002608:	00379793          	slli	a5,a5,0x3
    8000260c:	00f78793          	addi	a5,a5,15
    80002610:	ff07f793          	andi	a5,a5,-16
    80002614:	40f10133          	sub	sp,sp,a5
    80002618:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    8000261c:	00199493          	slli	s1,s3,0x1
    80002620:	013484b3          	add	s1,s1,s3
    80002624:	00349493          	slli	s1,s1,0x3
    80002628:	009b04b3          	add	s1,s6,s1
    8000262c:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80002630:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80002634:	00873783          	ld	a5,8(a4)
    80002638:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000263c:	01800513          	li	a0,24
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	084080e7          	jalr	132(ra) # 800016c4 <_Znwm>
    80002648:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	764080e7          	jalr	1892(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80002654:	00005797          	auipc	a5,0x5
    80002658:	c2478793          	addi	a5,a5,-988 # 80007278 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    8000265c:	00fbb023          	sd	a5,0(s7)
    80002660:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80002664:	000b8513          	mv	a0,s7
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	6f8080e7          	jalr	1784(ra) # 80001d60 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80002670:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80002674:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80002678:	00005797          	auipc	a5,0x5
    8000267c:	ca07b783          	ld	a5,-864(a5) # 80007318 <_ZN19ConsumerProducerCPP10waitForAllE>
    80002680:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80002684:	01800513          	li	a0,24
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	03c080e7          	jalr	60(ra) # 800016c4 <_Znwm>
    80002690:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	71c080e7          	jalr	1820(ra) # 80001db0 <_ZN6ThreadC1Ev>
    8000269c:	00005797          	auipc	a5,0x5
    800026a0:	b8c78793          	addi	a5,a5,-1140 # 80007228 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800026a4:	00f4b023          	sd	a5,0(s1)
    800026a8:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800026ac:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    800026b0:	00048513          	mv	a0,s1
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	6ac080e7          	jalr	1708(ra) # 80001d60 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800026bc:	00100913          	li	s2,1
    800026c0:	0300006f          	j	800026f0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    800026c4:	00005797          	auipc	a5,0x5
    800026c8:	b8c78793          	addi	a5,a5,-1140 # 80007250 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800026cc:	00fcb023          	sd	a5,0(s9)
    800026d0:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    800026d4:	00391793          	slli	a5,s2,0x3
    800026d8:	00fa07b3          	add	a5,s4,a5
    800026dc:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    800026e0:	000c8513          	mv	a0,s9
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	67c080e7          	jalr	1660(ra) # 80001d60 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800026ec:	0019091b          	addiw	s2,s2,1
    800026f0:	05395263          	bge	s2,s3,80002734 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    800026f4:	00191493          	slli	s1,s2,0x1
    800026f8:	012484b3          	add	s1,s1,s2
    800026fc:	00349493          	slli	s1,s1,0x3
    80002700:	009b04b3          	add	s1,s6,s1
    80002704:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80002708:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    8000270c:	00005797          	auipc	a5,0x5
    80002710:	c0c7b783          	ld	a5,-1012(a5) # 80007318 <_ZN19ConsumerProducerCPP10waitForAllE>
    80002714:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80002718:	01800513          	li	a0,24
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	fa8080e7          	jalr	-88(ra) # 800016c4 <_Znwm>
    80002724:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	688080e7          	jalr	1672(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80002730:	f95ff06f          	j	800026c4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	648080e7          	jalr	1608(ra) # 80001d7c <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    8000273c:	00000493          	li	s1,0
    80002740:	0099ce63          	blt	s3,s1,8000275c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80002744:	00005517          	auipc	a0,0x5
    80002748:	bd453503          	ld	a0,-1068(a0) # 80007318 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	e58080e7          	jalr	-424(ra) # 800015a4 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80002754:	0014849b          	addiw	s1,s1,1
    80002758:	fe9ff06f          	j	80002740 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    8000275c:	00005517          	auipc	a0,0x5
    80002760:	bbc53503          	ld	a0,-1092(a0) # 80007318 <_ZN19ConsumerProducerCPP10waitForAllE>
    80002764:	00050863          	beqz	a0,80002774 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80002768:	00053783          	ld	a5,0(a0)
    8000276c:	0087b783          	ld	a5,8(a5)
    80002770:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80002774:	00000493          	li	s1,0
    80002778:	0080006f          	j	80002780 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    8000277c:	0014849b          	addiw	s1,s1,1
    80002780:	0334d263          	bge	s1,s3,800027a4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80002784:	00349793          	slli	a5,s1,0x3
    80002788:	00fa07b3          	add	a5,s4,a5
    8000278c:	0007b503          	ld	a0,0(a5)
    80002790:	fe0506e3          	beqz	a0,8000277c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80002794:	00053783          	ld	a5,0(a0)
    80002798:	0087b783          	ld	a5,8(a5)
    8000279c:	000780e7          	jalr	a5
    800027a0:	fddff06f          	j	8000277c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    800027a4:	000b8a63          	beqz	s7,800027b8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    800027a8:	000bb783          	ld	a5,0(s7)
    800027ac:	0087b783          	ld	a5,8(a5)
    800027b0:	000b8513          	mv	a0,s7
    800027b4:	000780e7          	jalr	a5
        delete buffer;
    800027b8:	000a8e63          	beqz	s5,800027d4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    800027bc:	000a8513          	mv	a0,s5
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	bb8080e7          	jalr	-1096(ra) # 80002378 <_ZN9BufferCPPD1Ev>
    800027c8:	000a8513          	mv	a0,s5
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	f48080e7          	jalr	-184(ra) # 80001714 <_ZdlPv>
    800027d4:	000c0113          	mv	sp,s8
    }
    800027d8:	f8040113          	addi	sp,s0,-128
    800027dc:	07813083          	ld	ra,120(sp)
    800027e0:	07013403          	ld	s0,112(sp)
    800027e4:	06813483          	ld	s1,104(sp)
    800027e8:	06013903          	ld	s2,96(sp)
    800027ec:	05813983          	ld	s3,88(sp)
    800027f0:	05013a03          	ld	s4,80(sp)
    800027f4:	04813a83          	ld	s5,72(sp)
    800027f8:	04013b03          	ld	s6,64(sp)
    800027fc:	03813b83          	ld	s7,56(sp)
    80002800:	03013c03          	ld	s8,48(sp)
    80002804:	02813c83          	ld	s9,40(sp)
    80002808:	08010113          	addi	sp,sp,128
    8000280c:	00008067          	ret
    80002810:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80002814:	000a8513          	mv	a0,s5
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	efc080e7          	jalr	-260(ra) # 80001714 <_ZdlPv>
    80002820:	00048513          	mv	a0,s1
    80002824:	00006097          	auipc	ra,0x6
    80002828:	bc4080e7          	jalr	-1084(ra) # 800083e8 <_Unwind_Resume>
    8000282c:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80002830:	00048513          	mv	a0,s1
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	ee0080e7          	jalr	-288(ra) # 80001714 <_ZdlPv>
    8000283c:	00090513          	mv	a0,s2
    80002840:	00006097          	auipc	ra,0x6
    80002844:	ba8080e7          	jalr	-1112(ra) # 800083e8 <_Unwind_Resume>
    80002848:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000284c:	000b8513          	mv	a0,s7
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	ec4080e7          	jalr	-316(ra) # 80001714 <_ZdlPv>
    80002858:	00048513          	mv	a0,s1
    8000285c:	00006097          	auipc	ra,0x6
    80002860:	b8c080e7          	jalr	-1140(ra) # 800083e8 <_Unwind_Resume>
    80002864:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80002868:	00048513          	mv	a0,s1
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	ea8080e7          	jalr	-344(ra) # 80001714 <_ZdlPv>
    80002874:	00090513          	mv	a0,s2
    80002878:	00006097          	auipc	ra,0x6
    8000287c:	b70080e7          	jalr	-1168(ra) # 800083e8 <_Unwind_Resume>
    80002880:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80002884:	000c8513          	mv	a0,s9
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	e8c080e7          	jalr	-372(ra) # 80001714 <_ZdlPv>
    80002890:	00048513          	mv	a0,s1
    80002894:	00006097          	auipc	ra,0x6
    80002898:	b54080e7          	jalr	-1196(ra) # 800083e8 <_Unwind_Resume>

000000008000289c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813423          	sd	s0,8(sp)
    800028a4:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    800028b4:	fd010113          	addi	sp,sp,-48
    800028b8:	02113423          	sd	ra,40(sp)
    800028bc:	02813023          	sd	s0,32(sp)
    800028c0:	00913c23          	sd	s1,24(sp)
    800028c4:	01213823          	sd	s2,16(sp)
    800028c8:	01313423          	sd	s3,8(sp)
    800028cc:	03010413          	addi	s0,sp,48
    800028d0:	00050913          	mv	s2,a0
            int i = 0;
    800028d4:	00000993          	li	s3,0
    800028d8:	0100006f          	j	800028e8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    800028dc:	00a00513          	li	a0,10
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	dcc080e7          	jalr	-564(ra) # 800016ac <_ZN7Console4putcEc>
            while (!threadEnd) {
    800028e8:	00005797          	auipc	a5,0x5
    800028ec:	a287a783          	lw	a5,-1496(a5) # 80007310 <_ZN19ConsumerProducerCPP9threadEndE>
    800028f0:	04079a63          	bnez	a5,80002944 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    800028f4:	01093783          	ld	a5,16(s2)
    800028f8:	0087b503          	ld	a0,8(a5)
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	968080e7          	jalr	-1688(ra) # 80002264 <_ZN9BufferCPP3getEv>
                i++;
    80002904:	0019849b          	addiw	s1,s3,1
    80002908:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    8000290c:	0ff57513          	andi	a0,a0,255
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	d9c080e7          	jalr	-612(ra) # 800016ac <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80002918:	05000793          	li	a5,80
    8000291c:	02f4e4bb          	remw	s1,s1,a5
    80002920:	fc0494e3          	bnez	s1,800028e8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80002924:	fb9ff06f          	j	800028dc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80002928:	01093783          	ld	a5,16(s2)
    8000292c:	0087b503          	ld	a0,8(a5)
    80002930:	00000097          	auipc	ra,0x0
    80002934:	934080e7          	jalr	-1740(ra) # 80002264 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80002938:	0ff57513          	andi	a0,a0,255
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	d70080e7          	jalr	-656(ra) # 800016ac <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80002944:	01093783          	ld	a5,16(s2)
    80002948:	0087b503          	ld	a0,8(a5)
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	9a4080e7          	jalr	-1628(ra) # 800022f0 <_ZN9BufferCPP6getCntEv>
    80002954:	fca04ae3          	bgtz	a0,80002928 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80002958:	01093783          	ld	a5,16(s2)
    8000295c:	0107b503          	ld	a0,16(a5)
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	c60080e7          	jalr	-928(ra) # 800015c0 <_ZN9Semaphore6signalEv>
        }
    80002968:	02813083          	ld	ra,40(sp)
    8000296c:	02013403          	ld	s0,32(sp)
    80002970:	01813483          	ld	s1,24(sp)
    80002974:	01013903          	ld	s2,16(sp)
    80002978:	00813983          	ld	s3,8(sp)
    8000297c:	03010113          	addi	sp,sp,48
    80002980:	00008067          	ret

0000000080002984 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    80002994:	00005797          	auipc	a5,0x5
    80002998:	8e478793          	addi	a5,a5,-1820 # 80007278 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    8000299c:	00f53023          	sd	a5,0(a0)
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	35c080e7          	jalr	860(ra) # 80001cfc <_ZN6ThreadD1Ev>
    800029a8:	00813083          	ld	ra,8(sp)
    800029ac:	00013403          	ld	s0,0(sp)
    800029b0:	01010113          	addi	sp,sp,16
    800029b4:	00008067          	ret

00000000800029b8 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    800029b8:	fe010113          	addi	sp,sp,-32
    800029bc:	00113c23          	sd	ra,24(sp)
    800029c0:	00813823          	sd	s0,16(sp)
    800029c4:	00913423          	sd	s1,8(sp)
    800029c8:	02010413          	addi	s0,sp,32
    800029cc:	00050493          	mv	s1,a0
    800029d0:	00005797          	auipc	a5,0x5
    800029d4:	8a878793          	addi	a5,a5,-1880 # 80007278 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800029d8:	00f53023          	sd	a5,0(a0)
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	320080e7          	jalr	800(ra) # 80001cfc <_ZN6ThreadD1Ev>
    800029e4:	00048513          	mv	a0,s1
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	d2c080e7          	jalr	-724(ra) # 80001714 <_ZdlPv>
    800029f0:	01813083          	ld	ra,24(sp)
    800029f4:	01013403          	ld	s0,16(sp)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret

0000000080002a04 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00113423          	sd	ra,8(sp)
    80002a0c:	00813023          	sd	s0,0(sp)
    80002a10:	01010413          	addi	s0,sp,16
    80002a14:	00005797          	auipc	a5,0x5
    80002a18:	81478793          	addi	a5,a5,-2028 # 80007228 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80002a1c:	00f53023          	sd	a5,0(a0)
    80002a20:	fffff097          	auipc	ra,0xfffff
    80002a24:	2dc080e7          	jalr	732(ra) # 80001cfc <_ZN6ThreadD1Ev>
    80002a28:	00813083          	ld	ra,8(sp)
    80002a2c:	00013403          	ld	s0,0(sp)
    80002a30:	01010113          	addi	sp,sp,16
    80002a34:	00008067          	ret

0000000080002a38 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80002a38:	fe010113          	addi	sp,sp,-32
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	00813823          	sd	s0,16(sp)
    80002a44:	00913423          	sd	s1,8(sp)
    80002a48:	02010413          	addi	s0,sp,32
    80002a4c:	00050493          	mv	s1,a0
    80002a50:	00004797          	auipc	a5,0x4
    80002a54:	7d878793          	addi	a5,a5,2008 # 80007228 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80002a58:	00f53023          	sd	a5,0(a0)
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	2a0080e7          	jalr	672(ra) # 80001cfc <_ZN6ThreadD1Ev>
    80002a64:	00048513          	mv	a0,s1
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	cac080e7          	jalr	-852(ra) # 80001714 <_ZdlPv>
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	01013403          	ld	s0,16(sp)
    80002a78:	00813483          	ld	s1,8(sp)
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret

0000000080002a84 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00113423          	sd	ra,8(sp)
    80002a8c:	00813023          	sd	s0,0(sp)
    80002a90:	01010413          	addi	s0,sp,16
    80002a94:	00004797          	auipc	a5,0x4
    80002a98:	7bc78793          	addi	a5,a5,1980 # 80007250 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80002a9c:	00f53023          	sd	a5,0(a0)
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	25c080e7          	jalr	604(ra) # 80001cfc <_ZN6ThreadD1Ev>
    80002aa8:	00813083          	ld	ra,8(sp)
    80002aac:	00013403          	ld	s0,0(sp)
    80002ab0:	01010113          	addi	sp,sp,16
    80002ab4:	00008067          	ret

0000000080002ab8 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80002ab8:	fe010113          	addi	sp,sp,-32
    80002abc:	00113c23          	sd	ra,24(sp)
    80002ac0:	00813823          	sd	s0,16(sp)
    80002ac4:	00913423          	sd	s1,8(sp)
    80002ac8:	02010413          	addi	s0,sp,32
    80002acc:	00050493          	mv	s1,a0
    80002ad0:	00004797          	auipc	a5,0x4
    80002ad4:	78078793          	addi	a5,a5,1920 # 80007250 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80002ad8:	00f53023          	sd	a5,0(a0)
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	220080e7          	jalr	544(ra) # 80001cfc <_ZN6ThreadD1Ev>
    80002ae4:	00048513          	mv	a0,s1
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	c2c080e7          	jalr	-980(ra) # 80001714 <_ZdlPv>
    80002af0:	01813083          	ld	ra,24(sp)
    80002af4:	01013403          	ld	s0,16(sp)
    80002af8:	00813483          	ld	s1,8(sp)
    80002afc:	02010113          	addi	sp,sp,32
    80002b00:	00008067          	ret

0000000080002b04 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80002b04:	fe010113          	addi	sp,sp,-32
    80002b08:	00113c23          	sd	ra,24(sp)
    80002b0c:	00813823          	sd	s0,16(sp)
    80002b10:	00913423          	sd	s1,8(sp)
    80002b14:	02010413          	addi	s0,sp,32
    80002b18:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	808080e7          	jalr	-2040(ra) # 80001324 <_Z4getcv>
    80002b24:	0005059b          	sext.w	a1,a0
    80002b28:	01b00793          	li	a5,27
    80002b2c:	00f58c63          	beq	a1,a5,80002b44 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80002b30:	0104b783          	ld	a5,16(s1)
    80002b34:	0087b503          	ld	a0,8(a5)
    80002b38:	fffff097          	auipc	ra,0xfffff
    80002b3c:	69c080e7          	jalr	1692(ra) # 800021d4 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80002b40:	fddff06f          	j	80002b1c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80002b44:	00100793          	li	a5,1
    80002b48:	00004717          	auipc	a4,0x4
    80002b4c:	7cf72423          	sw	a5,1992(a4) # 80007310 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80002b50:	0104b783          	ld	a5,16(s1)
    80002b54:	02100593          	li	a1,33
    80002b58:	0087b503          	ld	a0,8(a5)
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	678080e7          	jalr	1656(ra) # 800021d4 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80002b64:	0104b783          	ld	a5,16(s1)
    80002b68:	0107b503          	ld	a0,16(a5)
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	a54080e7          	jalr	-1452(ra) # 800015c0 <_ZN9Semaphore6signalEv>
        }
    80002b74:	01813083          	ld	ra,24(sp)
    80002b78:	01013403          	ld	s0,16(sp)
    80002b7c:	00813483          	ld	s1,8(sp)
    80002b80:	02010113          	addi	sp,sp,32
    80002b84:	00008067          	ret

0000000080002b88 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80002b88:	fe010113          	addi	sp,sp,-32
    80002b8c:	00113c23          	sd	ra,24(sp)
    80002b90:	00813823          	sd	s0,16(sp)
    80002b94:	00913423          	sd	s1,8(sp)
    80002b98:	01213023          	sd	s2,0(sp)
    80002b9c:	02010413          	addi	s0,sp,32
    80002ba0:	00050493          	mv	s1,a0
            int i = 0;
    80002ba4:	00000913          	li	s2,0
            while (!threadEnd) {
    80002ba8:	00004797          	auipc	a5,0x4
    80002bac:	7687a783          	lw	a5,1896(a5) # 80007310 <_ZN19ConsumerProducerCPP9threadEndE>
    80002bb0:	04079263          	bnez	a5,80002bf4 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80002bb4:	0104b783          	ld	a5,16(s1)
    80002bb8:	0007a583          	lw	a1,0(a5)
    80002bbc:	0305859b          	addiw	a1,a1,48
    80002bc0:	0087b503          	ld	a0,8(a5)
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	610080e7          	jalr	1552(ra) # 800021d4 <_ZN9BufferCPP3putEi>
                i++;
    80002bcc:	0019071b          	addiw	a4,s2,1
    80002bd0:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80002bd4:	0104b783          	ld	a5,16(s1)
    80002bd8:	0007a783          	lw	a5,0(a5)
    80002bdc:	00e787bb          	addw	a5,a5,a4
    80002be0:	00500513          	li	a0,5
    80002be4:	02a7e53b          	remw	a0,a5,a0
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	1ac080e7          	jalr	428(ra) # 80001d94 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80002bf0:	fb9ff06f          	j	80002ba8 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80002bf4:	0104b783          	ld	a5,16(s1)
    80002bf8:	0107b503          	ld	a0,16(a5)
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	9c4080e7          	jalr	-1596(ra) # 800015c0 <_ZN9Semaphore6signalEv>
        }
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	00013903          	ld	s2,0(sp)
    80002c14:	02010113          	addi	sp,sp,32
    80002c18:	00008067          	ret

0000000080002c1c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002c1c:	fe010113          	addi	sp,sp,-32
    80002c20:	00113c23          	sd	ra,24(sp)
    80002c24:	00813823          	sd	s0,16(sp)
    80002c28:	00913423          	sd	s1,8(sp)
    80002c2c:	01213023          	sd	s2,0(sp)
    80002c30:	02010413          	addi	s0,sp,32
    80002c34:	00050493          	mv	s1,a0
    80002c38:	00058913          	mv	s2,a1
    80002c3c:	0015879b          	addiw	a5,a1,1
    80002c40:	0007851b          	sext.w	a0,a5
    80002c44:	00f4a023          	sw	a5,0(s1)
    80002c48:	0004a823          	sw	zero,16(s1)
    80002c4c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002c50:	00251513          	slli	a0,a0,0x2
    80002c54:	ffffe097          	auipc	ra,0xffffe
    80002c58:	3ac080e7          	jalr	940(ra) # 80001000 <mem_alloc>
    80002c5c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002c60:	00000593          	li	a1,0
    80002c64:	02048513          	addi	a0,s1,32
    80002c68:	ffffe097          	auipc	ra,0xffffe
    80002c6c:	630080e7          	jalr	1584(ra) # 80001298 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002c70:	00090593          	mv	a1,s2
    80002c74:	01848513          	addi	a0,s1,24
    80002c78:	ffffe097          	auipc	ra,0xffffe
    80002c7c:	620080e7          	jalr	1568(ra) # 80001298 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002c80:	00100593          	li	a1,1
    80002c84:	02848513          	addi	a0,s1,40
    80002c88:	ffffe097          	auipc	ra,0xffffe
    80002c8c:	610080e7          	jalr	1552(ra) # 80001298 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002c90:	00100593          	li	a1,1
    80002c94:	03048513          	addi	a0,s1,48
    80002c98:	ffffe097          	auipc	ra,0xffffe
    80002c9c:	600080e7          	jalr	1536(ra) # 80001298 <_Z8sem_openPP4_semj>
}
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	01013403          	ld	s0,16(sp)
    80002ca8:	00813483          	ld	s1,8(sp)
    80002cac:	00013903          	ld	s2,0(sp)
    80002cb0:	02010113          	addi	sp,sp,32
    80002cb4:	00008067          	ret

0000000080002cb8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002cb8:	fe010113          	addi	sp,sp,-32
    80002cbc:	00113c23          	sd	ra,24(sp)
    80002cc0:	00813823          	sd	s0,16(sp)
    80002cc4:	00913423          	sd	s1,8(sp)
    80002cc8:	01213023          	sd	s2,0(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    80002cd0:	00050493          	mv	s1,a0
    80002cd4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002cd8:	01853503          	ld	a0,24(a0)
    80002cdc:	ffffe097          	auipc	ra,0xffffe
    80002ce0:	5f4080e7          	jalr	1524(ra) # 800012d0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80002ce4:	0304b503          	ld	a0,48(s1)
    80002ce8:	ffffe097          	auipc	ra,0xffffe
    80002cec:	5e8080e7          	jalr	1512(ra) # 800012d0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80002cf0:	0084b783          	ld	a5,8(s1)
    80002cf4:	0144a703          	lw	a4,20(s1)
    80002cf8:	00271713          	slli	a4,a4,0x2
    80002cfc:	00e787b3          	add	a5,a5,a4
    80002d00:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002d04:	0144a783          	lw	a5,20(s1)
    80002d08:	0017879b          	addiw	a5,a5,1
    80002d0c:	0004a703          	lw	a4,0(s1)
    80002d10:	02e7e7bb          	remw	a5,a5,a4
    80002d14:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002d18:	0304b503          	ld	a0,48(s1)
    80002d1c:	ffffe097          	auipc	ra,0xffffe
    80002d20:	5d0080e7          	jalr	1488(ra) # 800012ec <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002d24:	0204b503          	ld	a0,32(s1)
    80002d28:	ffffe097          	auipc	ra,0xffffe
    80002d2c:	5c4080e7          	jalr	1476(ra) # 800012ec <_Z10sem_signalP4_sem>

}
    80002d30:	01813083          	ld	ra,24(sp)
    80002d34:	01013403          	ld	s0,16(sp)
    80002d38:	00813483          	ld	s1,8(sp)
    80002d3c:	00013903          	ld	s2,0(sp)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00008067          	ret

0000000080002d48 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002d48:	fe010113          	addi	sp,sp,-32
    80002d4c:	00113c23          	sd	ra,24(sp)
    80002d50:	00813823          	sd	s0,16(sp)
    80002d54:	00913423          	sd	s1,8(sp)
    80002d58:	01213023          	sd	s2,0(sp)
    80002d5c:	02010413          	addi	s0,sp,32
    80002d60:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002d64:	02053503          	ld	a0,32(a0)
    80002d68:	ffffe097          	auipc	ra,0xffffe
    80002d6c:	568080e7          	jalr	1384(ra) # 800012d0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002d70:	0284b503          	ld	a0,40(s1)
    80002d74:	ffffe097          	auipc	ra,0xffffe
    80002d78:	55c080e7          	jalr	1372(ra) # 800012d0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002d7c:	0084b703          	ld	a4,8(s1)
    80002d80:	0104a783          	lw	a5,16(s1)
    80002d84:	00279693          	slli	a3,a5,0x2
    80002d88:	00d70733          	add	a4,a4,a3
    80002d8c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002d90:	0017879b          	addiw	a5,a5,1
    80002d94:	0004a703          	lw	a4,0(s1)
    80002d98:	02e7e7bb          	remw	a5,a5,a4
    80002d9c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002da0:	0284b503          	ld	a0,40(s1)
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	548080e7          	jalr	1352(ra) # 800012ec <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80002dac:	0184b503          	ld	a0,24(s1)
    80002db0:	ffffe097          	auipc	ra,0xffffe
    80002db4:	53c080e7          	jalr	1340(ra) # 800012ec <_Z10sem_signalP4_sem>

    return ret;
}
    80002db8:	00090513          	mv	a0,s2
    80002dbc:	01813083          	ld	ra,24(sp)
    80002dc0:	01013403          	ld	s0,16(sp)
    80002dc4:	00813483          	ld	s1,8(sp)
    80002dc8:	00013903          	ld	s2,0(sp)
    80002dcc:	02010113          	addi	sp,sp,32
    80002dd0:	00008067          	ret

0000000080002dd4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002dd4:	fe010113          	addi	sp,sp,-32
    80002dd8:	00113c23          	sd	ra,24(sp)
    80002ddc:	00813823          	sd	s0,16(sp)
    80002de0:	00913423          	sd	s1,8(sp)
    80002de4:	01213023          	sd	s2,0(sp)
    80002de8:	02010413          	addi	s0,sp,32
    80002dec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002df0:	02853503          	ld	a0,40(a0)
    80002df4:	ffffe097          	auipc	ra,0xffffe
    80002df8:	4dc080e7          	jalr	1244(ra) # 800012d0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80002dfc:	0304b503          	ld	a0,48(s1)
    80002e00:	ffffe097          	auipc	ra,0xffffe
    80002e04:	4d0080e7          	jalr	1232(ra) # 800012d0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002e08:	0144a783          	lw	a5,20(s1)
    80002e0c:	0104a903          	lw	s2,16(s1)
    80002e10:	0327ce63          	blt	a5,s2,80002e4c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002e14:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002e18:	0304b503          	ld	a0,48(s1)
    80002e1c:	ffffe097          	auipc	ra,0xffffe
    80002e20:	4d0080e7          	jalr	1232(ra) # 800012ec <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80002e24:	0284b503          	ld	a0,40(s1)
    80002e28:	ffffe097          	auipc	ra,0xffffe
    80002e2c:	4c4080e7          	jalr	1220(ra) # 800012ec <_Z10sem_signalP4_sem>

    return ret;
}
    80002e30:	00090513          	mv	a0,s2
    80002e34:	01813083          	ld	ra,24(sp)
    80002e38:	01013403          	ld	s0,16(sp)
    80002e3c:	00813483          	ld	s1,8(sp)
    80002e40:	00013903          	ld	s2,0(sp)
    80002e44:	02010113          	addi	sp,sp,32
    80002e48:	00008067          	ret
        ret = cap - head + tail;
    80002e4c:	0004a703          	lw	a4,0(s1)
    80002e50:	4127093b          	subw	s2,a4,s2
    80002e54:	00f9093b          	addw	s2,s2,a5
    80002e58:	fc1ff06f          	j	80002e18 <_ZN6Buffer6getCntEv+0x44>

0000000080002e5c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002e5c:	fe010113          	addi	sp,sp,-32
    80002e60:	00113c23          	sd	ra,24(sp)
    80002e64:	00813823          	sd	s0,16(sp)
    80002e68:	00913423          	sd	s1,8(sp)
    80002e6c:	02010413          	addi	s0,sp,32
    80002e70:	00050493          	mv	s1,a0
    putc('\n');
    80002e74:	00a00513          	li	a0,10
    80002e78:	ffffe097          	auipc	ra,0xffffe
    80002e7c:	4d4080e7          	jalr	1236(ra) # 8000134c <_Z4putcc>
    printString("Buffer deleted!\n");
    80002e80:	00003517          	auipc	a0,0x3
    80002e84:	21050513          	addi	a0,a0,528 # 80006090 <_ZZ12printIntegermE6digits+0x10>
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	f4c080e7          	jalr	-180(ra) # 80001dd4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002e90:	00048513          	mv	a0,s1
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	f40080e7          	jalr	-192(ra) # 80002dd4 <_ZN6Buffer6getCntEv>
    80002e9c:	02a05c63          	blez	a0,80002ed4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80002ea0:	0084b783          	ld	a5,8(s1)
    80002ea4:	0104a703          	lw	a4,16(s1)
    80002ea8:	00271713          	slli	a4,a4,0x2
    80002eac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80002eb0:	0007c503          	lbu	a0,0(a5)
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	498080e7          	jalr	1176(ra) # 8000134c <_Z4putcc>
        head = (head + 1) % cap;
    80002ebc:	0104a783          	lw	a5,16(s1)
    80002ec0:	0017879b          	addiw	a5,a5,1
    80002ec4:	0004a703          	lw	a4,0(s1)
    80002ec8:	02e7e7bb          	remw	a5,a5,a4
    80002ecc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80002ed0:	fc1ff06f          	j	80002e90 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80002ed4:	02100513          	li	a0,33
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	474080e7          	jalr	1140(ra) # 8000134c <_Z4putcc>
    putc('\n');
    80002ee0:	00a00513          	li	a0,10
    80002ee4:	ffffe097          	auipc	ra,0xffffe
    80002ee8:	468080e7          	jalr	1128(ra) # 8000134c <_Z4putcc>
    mem_free(buffer);
    80002eec:	0084b503          	ld	a0,8(s1)
    80002ef0:	ffffe097          	auipc	ra,0xffffe
    80002ef4:	120080e7          	jalr	288(ra) # 80001010 <mem_free>
    sem_close(itemAvailable);
    80002ef8:	0204b503          	ld	a0,32(s1)
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	3b8080e7          	jalr	952(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002f04:	0184b503          	ld	a0,24(s1)
    80002f08:	ffffe097          	auipc	ra,0xffffe
    80002f0c:	3ac080e7          	jalr	940(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80002f10:	0304b503          	ld	a0,48(s1)
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	3a0080e7          	jalr	928(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80002f1c:	0284b503          	ld	a0,40(s1)
    80002f20:	ffffe097          	auipc	ra,0xffffe
    80002f24:	394080e7          	jalr	916(ra) # 800012b4 <_Z9sem_closeP4_sem>
}
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	02010113          	addi	sp,sp,32
    80002f38:	00008067          	ret

0000000080002f3c <start>:
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00813423          	sd	s0,8(sp)
    80002f44:	01010413          	addi	s0,sp,16
    80002f48:	300027f3          	csrr	a5,mstatus
    80002f4c:	ffffe737          	lui	a4,0xffffe
    80002f50:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff627f>
    80002f54:	00e7f7b3          	and	a5,a5,a4
    80002f58:	00001737          	lui	a4,0x1
    80002f5c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002f60:	00e7e7b3          	or	a5,a5,a4
    80002f64:	30079073          	csrw	mstatus,a5
    80002f68:	00000797          	auipc	a5,0x0
    80002f6c:	16078793          	addi	a5,a5,352 # 800030c8 <system_main>
    80002f70:	34179073          	csrw	mepc,a5
    80002f74:	00000793          	li	a5,0
    80002f78:	18079073          	csrw	satp,a5
    80002f7c:	000107b7          	lui	a5,0x10
    80002f80:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002f84:	30279073          	csrw	medeleg,a5
    80002f88:	30379073          	csrw	mideleg,a5
    80002f8c:	104027f3          	csrr	a5,sie
    80002f90:	2227e793          	ori	a5,a5,546
    80002f94:	10479073          	csrw	sie,a5
    80002f98:	fff00793          	li	a5,-1
    80002f9c:	00a7d793          	srli	a5,a5,0xa
    80002fa0:	3b079073          	csrw	pmpaddr0,a5
    80002fa4:	00f00793          	li	a5,15
    80002fa8:	3a079073          	csrw	pmpcfg0,a5
    80002fac:	f14027f3          	csrr	a5,mhartid
    80002fb0:	0200c737          	lui	a4,0x200c
    80002fb4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002fb8:	0007869b          	sext.w	a3,a5
    80002fbc:	00269713          	slli	a4,a3,0x2
    80002fc0:	000f4637          	lui	a2,0xf4
    80002fc4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002fc8:	00d70733          	add	a4,a4,a3
    80002fcc:	0037979b          	slliw	a5,a5,0x3
    80002fd0:	020046b7          	lui	a3,0x2004
    80002fd4:	00d787b3          	add	a5,a5,a3
    80002fd8:	00c585b3          	add	a1,a1,a2
    80002fdc:	00371693          	slli	a3,a4,0x3
    80002fe0:	00004717          	auipc	a4,0x4
    80002fe4:	34070713          	addi	a4,a4,832 # 80007320 <timer_scratch>
    80002fe8:	00b7b023          	sd	a1,0(a5)
    80002fec:	00d70733          	add	a4,a4,a3
    80002ff0:	00f73c23          	sd	a5,24(a4)
    80002ff4:	02c73023          	sd	a2,32(a4)
    80002ff8:	34071073          	csrw	mscratch,a4
    80002ffc:	00000797          	auipc	a5,0x0
    80003000:	6e478793          	addi	a5,a5,1764 # 800036e0 <timervec>
    80003004:	30579073          	csrw	mtvec,a5
    80003008:	300027f3          	csrr	a5,mstatus
    8000300c:	0087e793          	ori	a5,a5,8
    80003010:	30079073          	csrw	mstatus,a5
    80003014:	304027f3          	csrr	a5,mie
    80003018:	0807e793          	ori	a5,a5,128
    8000301c:	30479073          	csrw	mie,a5
    80003020:	f14027f3          	csrr	a5,mhartid
    80003024:	0007879b          	sext.w	a5,a5
    80003028:	00078213          	mv	tp,a5
    8000302c:	30200073          	mret
    80003030:	00813403          	ld	s0,8(sp)
    80003034:	01010113          	addi	sp,sp,16
    80003038:	00008067          	ret

000000008000303c <timerinit>:
    8000303c:	ff010113          	addi	sp,sp,-16
    80003040:	00813423          	sd	s0,8(sp)
    80003044:	01010413          	addi	s0,sp,16
    80003048:	f14027f3          	csrr	a5,mhartid
    8000304c:	0200c737          	lui	a4,0x200c
    80003050:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003054:	0007869b          	sext.w	a3,a5
    80003058:	00269713          	slli	a4,a3,0x2
    8000305c:	000f4637          	lui	a2,0xf4
    80003060:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003064:	00d70733          	add	a4,a4,a3
    80003068:	0037979b          	slliw	a5,a5,0x3
    8000306c:	020046b7          	lui	a3,0x2004
    80003070:	00d787b3          	add	a5,a5,a3
    80003074:	00c585b3          	add	a1,a1,a2
    80003078:	00371693          	slli	a3,a4,0x3
    8000307c:	00004717          	auipc	a4,0x4
    80003080:	2a470713          	addi	a4,a4,676 # 80007320 <timer_scratch>
    80003084:	00b7b023          	sd	a1,0(a5)
    80003088:	00d70733          	add	a4,a4,a3
    8000308c:	00f73c23          	sd	a5,24(a4)
    80003090:	02c73023          	sd	a2,32(a4)
    80003094:	34071073          	csrw	mscratch,a4
    80003098:	00000797          	auipc	a5,0x0
    8000309c:	64878793          	addi	a5,a5,1608 # 800036e0 <timervec>
    800030a0:	30579073          	csrw	mtvec,a5
    800030a4:	300027f3          	csrr	a5,mstatus
    800030a8:	0087e793          	ori	a5,a5,8
    800030ac:	30079073          	csrw	mstatus,a5
    800030b0:	304027f3          	csrr	a5,mie
    800030b4:	0807e793          	ori	a5,a5,128
    800030b8:	30479073          	csrw	mie,a5
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret

00000000800030c8 <system_main>:
    800030c8:	fe010113          	addi	sp,sp,-32
    800030cc:	00813823          	sd	s0,16(sp)
    800030d0:	00913423          	sd	s1,8(sp)
    800030d4:	00113c23          	sd	ra,24(sp)
    800030d8:	02010413          	addi	s0,sp,32
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	0c4080e7          	jalr	196(ra) # 800031a0 <cpuid>
    800030e4:	00004497          	auipc	s1,0x4
    800030e8:	1ec48493          	addi	s1,s1,492 # 800072d0 <started>
    800030ec:	02050263          	beqz	a0,80003110 <system_main+0x48>
    800030f0:	0004a783          	lw	a5,0(s1)
    800030f4:	0007879b          	sext.w	a5,a5
    800030f8:	fe078ce3          	beqz	a5,800030f0 <system_main+0x28>
    800030fc:	0ff0000f          	fence
    80003100:	00003517          	auipc	a0,0x3
    80003104:	0c050513          	addi	a0,a0,192 # 800061c0 <_ZZ12printIntegermE6digits+0x140>
    80003108:	00001097          	auipc	ra,0x1
    8000310c:	a74080e7          	jalr	-1420(ra) # 80003b7c <panic>
    80003110:	00001097          	auipc	ra,0x1
    80003114:	9c8080e7          	jalr	-1592(ra) # 80003ad8 <consoleinit>
    80003118:	00001097          	auipc	ra,0x1
    8000311c:	154080e7          	jalr	340(ra) # 8000426c <printfinit>
    80003120:	00003517          	auipc	a0,0x3
    80003124:	fc050513          	addi	a0,a0,-64 # 800060e0 <_ZZ12printIntegermE6digits+0x60>
    80003128:	00001097          	auipc	ra,0x1
    8000312c:	ab0080e7          	jalr	-1360(ra) # 80003bd8 <__printf>
    80003130:	00003517          	auipc	a0,0x3
    80003134:	06050513          	addi	a0,a0,96 # 80006190 <_ZZ12printIntegermE6digits+0x110>
    80003138:	00001097          	auipc	ra,0x1
    8000313c:	aa0080e7          	jalr	-1376(ra) # 80003bd8 <__printf>
    80003140:	00003517          	auipc	a0,0x3
    80003144:	fa050513          	addi	a0,a0,-96 # 800060e0 <_ZZ12printIntegermE6digits+0x60>
    80003148:	00001097          	auipc	ra,0x1
    8000314c:	a90080e7          	jalr	-1392(ra) # 80003bd8 <__printf>
    80003150:	00001097          	auipc	ra,0x1
    80003154:	4a8080e7          	jalr	1192(ra) # 800045f8 <kinit>
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	148080e7          	jalr	328(ra) # 800032a0 <trapinit>
    80003160:	00000097          	auipc	ra,0x0
    80003164:	16c080e7          	jalr	364(ra) # 800032cc <trapinithart>
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	5b8080e7          	jalr	1464(ra) # 80003720 <plicinit>
    80003170:	00000097          	auipc	ra,0x0
    80003174:	5d8080e7          	jalr	1496(ra) # 80003748 <plicinithart>
    80003178:	00000097          	auipc	ra,0x0
    8000317c:	078080e7          	jalr	120(ra) # 800031f0 <userinit>
    80003180:	0ff0000f          	fence
    80003184:	00100793          	li	a5,1
    80003188:	00003517          	auipc	a0,0x3
    8000318c:	02050513          	addi	a0,a0,32 # 800061a8 <_ZZ12printIntegermE6digits+0x128>
    80003190:	00f4a023          	sw	a5,0(s1)
    80003194:	00001097          	auipc	ra,0x1
    80003198:	a44080e7          	jalr	-1468(ra) # 80003bd8 <__printf>
    8000319c:	0000006f          	j	8000319c <system_main+0xd4>

00000000800031a0 <cpuid>:
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00813423          	sd	s0,8(sp)
    800031a8:	01010413          	addi	s0,sp,16
    800031ac:	00020513          	mv	a0,tp
    800031b0:	00813403          	ld	s0,8(sp)
    800031b4:	0005051b          	sext.w	a0,a0
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret

00000000800031c0 <mycpu>:
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00813423          	sd	s0,8(sp)
    800031c8:	01010413          	addi	s0,sp,16
    800031cc:	00020793          	mv	a5,tp
    800031d0:	00813403          	ld	s0,8(sp)
    800031d4:	0007879b          	sext.w	a5,a5
    800031d8:	00779793          	slli	a5,a5,0x7
    800031dc:	00005517          	auipc	a0,0x5
    800031e0:	17450513          	addi	a0,a0,372 # 80008350 <cpus>
    800031e4:	00f50533          	add	a0,a0,a5
    800031e8:	01010113          	addi	sp,sp,16
    800031ec:	00008067          	ret

00000000800031f0 <userinit>:
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00813423          	sd	s0,8(sp)
    800031f8:	01010413          	addi	s0,sp,16
    800031fc:	00813403          	ld	s0,8(sp)
    80003200:	01010113          	addi	sp,sp,16
    80003204:	ffffe317          	auipc	t1,0xffffe
    80003208:	3d830067          	jr	984(t1) # 800015dc <main>

000000008000320c <either_copyout>:
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00813023          	sd	s0,0(sp)
    80003214:	00113423          	sd	ra,8(sp)
    80003218:	01010413          	addi	s0,sp,16
    8000321c:	02051663          	bnez	a0,80003248 <either_copyout+0x3c>
    80003220:	00058513          	mv	a0,a1
    80003224:	00060593          	mv	a1,a2
    80003228:	0006861b          	sext.w	a2,a3
    8000322c:	00002097          	auipc	ra,0x2
    80003230:	c58080e7          	jalr	-936(ra) # 80004e84 <__memmove>
    80003234:	00813083          	ld	ra,8(sp)
    80003238:	00013403          	ld	s0,0(sp)
    8000323c:	00000513          	li	a0,0
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret
    80003248:	00003517          	auipc	a0,0x3
    8000324c:	fa050513          	addi	a0,a0,-96 # 800061e8 <_ZZ12printIntegermE6digits+0x168>
    80003250:	00001097          	auipc	ra,0x1
    80003254:	92c080e7          	jalr	-1748(ra) # 80003b7c <panic>

0000000080003258 <either_copyin>:
    80003258:	ff010113          	addi	sp,sp,-16
    8000325c:	00813023          	sd	s0,0(sp)
    80003260:	00113423          	sd	ra,8(sp)
    80003264:	01010413          	addi	s0,sp,16
    80003268:	02059463          	bnez	a1,80003290 <either_copyin+0x38>
    8000326c:	00060593          	mv	a1,a2
    80003270:	0006861b          	sext.w	a2,a3
    80003274:	00002097          	auipc	ra,0x2
    80003278:	c10080e7          	jalr	-1008(ra) # 80004e84 <__memmove>
    8000327c:	00813083          	ld	ra,8(sp)
    80003280:	00013403          	ld	s0,0(sp)
    80003284:	00000513          	li	a0,0
    80003288:	01010113          	addi	sp,sp,16
    8000328c:	00008067          	ret
    80003290:	00003517          	auipc	a0,0x3
    80003294:	f8050513          	addi	a0,a0,-128 # 80006210 <_ZZ12printIntegermE6digits+0x190>
    80003298:	00001097          	auipc	ra,0x1
    8000329c:	8e4080e7          	jalr	-1820(ra) # 80003b7c <panic>

00000000800032a0 <trapinit>:
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00813423          	sd	s0,8(sp)
    800032a8:	01010413          	addi	s0,sp,16
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	00003597          	auipc	a1,0x3
    800032b4:	f8858593          	addi	a1,a1,-120 # 80006238 <_ZZ12printIntegermE6digits+0x1b8>
    800032b8:	00005517          	auipc	a0,0x5
    800032bc:	11850513          	addi	a0,a0,280 # 800083d0 <tickslock>
    800032c0:	01010113          	addi	sp,sp,16
    800032c4:	00001317          	auipc	t1,0x1
    800032c8:	5c430067          	jr	1476(t1) # 80004888 <initlock>

00000000800032cc <trapinithart>:
    800032cc:	ff010113          	addi	sp,sp,-16
    800032d0:	00813423          	sd	s0,8(sp)
    800032d4:	01010413          	addi	s0,sp,16
    800032d8:	00000797          	auipc	a5,0x0
    800032dc:	2f878793          	addi	a5,a5,760 # 800035d0 <kernelvec>
    800032e0:	10579073          	csrw	stvec,a5
    800032e4:	00813403          	ld	s0,8(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <usertrap>:
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00813423          	sd	s0,8(sp)
    800032f8:	01010413          	addi	s0,sp,16
    800032fc:	00813403          	ld	s0,8(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <usertrapret>:
    80003308:	ff010113          	addi	sp,sp,-16
    8000330c:	00813423          	sd	s0,8(sp)
    80003310:	01010413          	addi	s0,sp,16
    80003314:	00813403          	ld	s0,8(sp)
    80003318:	01010113          	addi	sp,sp,16
    8000331c:	00008067          	ret

0000000080003320 <kerneltrap>:
    80003320:	fe010113          	addi	sp,sp,-32
    80003324:	00813823          	sd	s0,16(sp)
    80003328:	00113c23          	sd	ra,24(sp)
    8000332c:	00913423          	sd	s1,8(sp)
    80003330:	02010413          	addi	s0,sp,32
    80003334:	142025f3          	csrr	a1,scause
    80003338:	100027f3          	csrr	a5,sstatus
    8000333c:	0027f793          	andi	a5,a5,2
    80003340:	10079c63          	bnez	a5,80003458 <kerneltrap+0x138>
    80003344:	142027f3          	csrr	a5,scause
    80003348:	0207ce63          	bltz	a5,80003384 <kerneltrap+0x64>
    8000334c:	00003517          	auipc	a0,0x3
    80003350:	f3450513          	addi	a0,a0,-204 # 80006280 <_ZZ12printIntegermE6digits+0x200>
    80003354:	00001097          	auipc	ra,0x1
    80003358:	884080e7          	jalr	-1916(ra) # 80003bd8 <__printf>
    8000335c:	141025f3          	csrr	a1,sepc
    80003360:	14302673          	csrr	a2,stval
    80003364:	00003517          	auipc	a0,0x3
    80003368:	f2c50513          	addi	a0,a0,-212 # 80006290 <_ZZ12printIntegermE6digits+0x210>
    8000336c:	00001097          	auipc	ra,0x1
    80003370:	86c080e7          	jalr	-1940(ra) # 80003bd8 <__printf>
    80003374:	00003517          	auipc	a0,0x3
    80003378:	f3450513          	addi	a0,a0,-204 # 800062a8 <_ZZ12printIntegermE6digits+0x228>
    8000337c:	00001097          	auipc	ra,0x1
    80003380:	800080e7          	jalr	-2048(ra) # 80003b7c <panic>
    80003384:	0ff7f713          	andi	a4,a5,255
    80003388:	00900693          	li	a3,9
    8000338c:	04d70063          	beq	a4,a3,800033cc <kerneltrap+0xac>
    80003390:	fff00713          	li	a4,-1
    80003394:	03f71713          	slli	a4,a4,0x3f
    80003398:	00170713          	addi	a4,a4,1
    8000339c:	fae798e3          	bne	a5,a4,8000334c <kerneltrap+0x2c>
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	e00080e7          	jalr	-512(ra) # 800031a0 <cpuid>
    800033a8:	06050663          	beqz	a0,80003414 <kerneltrap+0xf4>
    800033ac:	144027f3          	csrr	a5,sip
    800033b0:	ffd7f793          	andi	a5,a5,-3
    800033b4:	14479073          	csrw	sip,a5
    800033b8:	01813083          	ld	ra,24(sp)
    800033bc:	01013403          	ld	s0,16(sp)
    800033c0:	00813483          	ld	s1,8(sp)
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00008067          	ret
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	3c8080e7          	jalr	968(ra) # 80003794 <plic_claim>
    800033d4:	00a00793          	li	a5,10
    800033d8:	00050493          	mv	s1,a0
    800033dc:	06f50863          	beq	a0,a5,8000344c <kerneltrap+0x12c>
    800033e0:	fc050ce3          	beqz	a0,800033b8 <kerneltrap+0x98>
    800033e4:	00050593          	mv	a1,a0
    800033e8:	00003517          	auipc	a0,0x3
    800033ec:	e7850513          	addi	a0,a0,-392 # 80006260 <_ZZ12printIntegermE6digits+0x1e0>
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	7e8080e7          	jalr	2024(ra) # 80003bd8 <__printf>
    800033f8:	01013403          	ld	s0,16(sp)
    800033fc:	01813083          	ld	ra,24(sp)
    80003400:	00048513          	mv	a0,s1
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00000317          	auipc	t1,0x0
    80003410:	3c030067          	jr	960(t1) # 800037cc <plic_complete>
    80003414:	00005517          	auipc	a0,0x5
    80003418:	fbc50513          	addi	a0,a0,-68 # 800083d0 <tickslock>
    8000341c:	00001097          	auipc	ra,0x1
    80003420:	490080e7          	jalr	1168(ra) # 800048ac <acquire>
    80003424:	00004717          	auipc	a4,0x4
    80003428:	eb070713          	addi	a4,a4,-336 # 800072d4 <ticks>
    8000342c:	00072783          	lw	a5,0(a4)
    80003430:	00005517          	auipc	a0,0x5
    80003434:	fa050513          	addi	a0,a0,-96 # 800083d0 <tickslock>
    80003438:	0017879b          	addiw	a5,a5,1
    8000343c:	00f72023          	sw	a5,0(a4)
    80003440:	00001097          	auipc	ra,0x1
    80003444:	538080e7          	jalr	1336(ra) # 80004978 <release>
    80003448:	f65ff06f          	j	800033ac <kerneltrap+0x8c>
    8000344c:	00001097          	auipc	ra,0x1
    80003450:	094080e7          	jalr	148(ra) # 800044e0 <uartintr>
    80003454:	fa5ff06f          	j	800033f8 <kerneltrap+0xd8>
    80003458:	00003517          	auipc	a0,0x3
    8000345c:	de850513          	addi	a0,a0,-536 # 80006240 <_ZZ12printIntegermE6digits+0x1c0>
    80003460:	00000097          	auipc	ra,0x0
    80003464:	71c080e7          	jalr	1820(ra) # 80003b7c <panic>

0000000080003468 <clockintr>:
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00813823          	sd	s0,16(sp)
    80003470:	00913423          	sd	s1,8(sp)
    80003474:	00113c23          	sd	ra,24(sp)
    80003478:	02010413          	addi	s0,sp,32
    8000347c:	00005497          	auipc	s1,0x5
    80003480:	f5448493          	addi	s1,s1,-172 # 800083d0 <tickslock>
    80003484:	00048513          	mv	a0,s1
    80003488:	00001097          	auipc	ra,0x1
    8000348c:	424080e7          	jalr	1060(ra) # 800048ac <acquire>
    80003490:	00004717          	auipc	a4,0x4
    80003494:	e4470713          	addi	a4,a4,-444 # 800072d4 <ticks>
    80003498:	00072783          	lw	a5,0(a4)
    8000349c:	01013403          	ld	s0,16(sp)
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	00048513          	mv	a0,s1
    800034a8:	0017879b          	addiw	a5,a5,1
    800034ac:	00813483          	ld	s1,8(sp)
    800034b0:	00f72023          	sw	a5,0(a4)
    800034b4:	02010113          	addi	sp,sp,32
    800034b8:	00001317          	auipc	t1,0x1
    800034bc:	4c030067          	jr	1216(t1) # 80004978 <release>

00000000800034c0 <devintr>:
    800034c0:	142027f3          	csrr	a5,scause
    800034c4:	00000513          	li	a0,0
    800034c8:	0007c463          	bltz	a5,800034d0 <devintr+0x10>
    800034cc:	00008067          	ret
    800034d0:	fe010113          	addi	sp,sp,-32
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00113c23          	sd	ra,24(sp)
    800034dc:	00913423          	sd	s1,8(sp)
    800034e0:	02010413          	addi	s0,sp,32
    800034e4:	0ff7f713          	andi	a4,a5,255
    800034e8:	00900693          	li	a3,9
    800034ec:	04d70c63          	beq	a4,a3,80003544 <devintr+0x84>
    800034f0:	fff00713          	li	a4,-1
    800034f4:	03f71713          	slli	a4,a4,0x3f
    800034f8:	00170713          	addi	a4,a4,1
    800034fc:	00e78c63          	beq	a5,a4,80003514 <devintr+0x54>
    80003500:	01813083          	ld	ra,24(sp)
    80003504:	01013403          	ld	s0,16(sp)
    80003508:	00813483          	ld	s1,8(sp)
    8000350c:	02010113          	addi	sp,sp,32
    80003510:	00008067          	ret
    80003514:	00000097          	auipc	ra,0x0
    80003518:	c8c080e7          	jalr	-884(ra) # 800031a0 <cpuid>
    8000351c:	06050663          	beqz	a0,80003588 <devintr+0xc8>
    80003520:	144027f3          	csrr	a5,sip
    80003524:	ffd7f793          	andi	a5,a5,-3
    80003528:	14479073          	csrw	sip,a5
    8000352c:	01813083          	ld	ra,24(sp)
    80003530:	01013403          	ld	s0,16(sp)
    80003534:	00813483          	ld	s1,8(sp)
    80003538:	00200513          	li	a0,2
    8000353c:	02010113          	addi	sp,sp,32
    80003540:	00008067          	ret
    80003544:	00000097          	auipc	ra,0x0
    80003548:	250080e7          	jalr	592(ra) # 80003794 <plic_claim>
    8000354c:	00a00793          	li	a5,10
    80003550:	00050493          	mv	s1,a0
    80003554:	06f50663          	beq	a0,a5,800035c0 <devintr+0x100>
    80003558:	00100513          	li	a0,1
    8000355c:	fa0482e3          	beqz	s1,80003500 <devintr+0x40>
    80003560:	00048593          	mv	a1,s1
    80003564:	00003517          	auipc	a0,0x3
    80003568:	cfc50513          	addi	a0,a0,-772 # 80006260 <_ZZ12printIntegermE6digits+0x1e0>
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	66c080e7          	jalr	1644(ra) # 80003bd8 <__printf>
    80003574:	00048513          	mv	a0,s1
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	254080e7          	jalr	596(ra) # 800037cc <plic_complete>
    80003580:	00100513          	li	a0,1
    80003584:	f7dff06f          	j	80003500 <devintr+0x40>
    80003588:	00005517          	auipc	a0,0x5
    8000358c:	e4850513          	addi	a0,a0,-440 # 800083d0 <tickslock>
    80003590:	00001097          	auipc	ra,0x1
    80003594:	31c080e7          	jalr	796(ra) # 800048ac <acquire>
    80003598:	00004717          	auipc	a4,0x4
    8000359c:	d3c70713          	addi	a4,a4,-708 # 800072d4 <ticks>
    800035a0:	00072783          	lw	a5,0(a4)
    800035a4:	00005517          	auipc	a0,0x5
    800035a8:	e2c50513          	addi	a0,a0,-468 # 800083d0 <tickslock>
    800035ac:	0017879b          	addiw	a5,a5,1
    800035b0:	00f72023          	sw	a5,0(a4)
    800035b4:	00001097          	auipc	ra,0x1
    800035b8:	3c4080e7          	jalr	964(ra) # 80004978 <release>
    800035bc:	f65ff06f          	j	80003520 <devintr+0x60>
    800035c0:	00001097          	auipc	ra,0x1
    800035c4:	f20080e7          	jalr	-224(ra) # 800044e0 <uartintr>
    800035c8:	fadff06f          	j	80003574 <devintr+0xb4>
    800035cc:	0000                	unimp
	...

00000000800035d0 <kernelvec>:
    800035d0:	f0010113          	addi	sp,sp,-256
    800035d4:	00113023          	sd	ra,0(sp)
    800035d8:	00213423          	sd	sp,8(sp)
    800035dc:	00313823          	sd	gp,16(sp)
    800035e0:	00413c23          	sd	tp,24(sp)
    800035e4:	02513023          	sd	t0,32(sp)
    800035e8:	02613423          	sd	t1,40(sp)
    800035ec:	02713823          	sd	t2,48(sp)
    800035f0:	02813c23          	sd	s0,56(sp)
    800035f4:	04913023          	sd	s1,64(sp)
    800035f8:	04a13423          	sd	a0,72(sp)
    800035fc:	04b13823          	sd	a1,80(sp)
    80003600:	04c13c23          	sd	a2,88(sp)
    80003604:	06d13023          	sd	a3,96(sp)
    80003608:	06e13423          	sd	a4,104(sp)
    8000360c:	06f13823          	sd	a5,112(sp)
    80003610:	07013c23          	sd	a6,120(sp)
    80003614:	09113023          	sd	a7,128(sp)
    80003618:	09213423          	sd	s2,136(sp)
    8000361c:	09313823          	sd	s3,144(sp)
    80003620:	09413c23          	sd	s4,152(sp)
    80003624:	0b513023          	sd	s5,160(sp)
    80003628:	0b613423          	sd	s6,168(sp)
    8000362c:	0b713823          	sd	s7,176(sp)
    80003630:	0b813c23          	sd	s8,184(sp)
    80003634:	0d913023          	sd	s9,192(sp)
    80003638:	0da13423          	sd	s10,200(sp)
    8000363c:	0db13823          	sd	s11,208(sp)
    80003640:	0dc13c23          	sd	t3,216(sp)
    80003644:	0fd13023          	sd	t4,224(sp)
    80003648:	0fe13423          	sd	t5,232(sp)
    8000364c:	0ff13823          	sd	t6,240(sp)
    80003650:	cd1ff0ef          	jal	ra,80003320 <kerneltrap>
    80003654:	00013083          	ld	ra,0(sp)
    80003658:	00813103          	ld	sp,8(sp)
    8000365c:	01013183          	ld	gp,16(sp)
    80003660:	02013283          	ld	t0,32(sp)
    80003664:	02813303          	ld	t1,40(sp)
    80003668:	03013383          	ld	t2,48(sp)
    8000366c:	03813403          	ld	s0,56(sp)
    80003670:	04013483          	ld	s1,64(sp)
    80003674:	04813503          	ld	a0,72(sp)
    80003678:	05013583          	ld	a1,80(sp)
    8000367c:	05813603          	ld	a2,88(sp)
    80003680:	06013683          	ld	a3,96(sp)
    80003684:	06813703          	ld	a4,104(sp)
    80003688:	07013783          	ld	a5,112(sp)
    8000368c:	07813803          	ld	a6,120(sp)
    80003690:	08013883          	ld	a7,128(sp)
    80003694:	08813903          	ld	s2,136(sp)
    80003698:	09013983          	ld	s3,144(sp)
    8000369c:	09813a03          	ld	s4,152(sp)
    800036a0:	0a013a83          	ld	s5,160(sp)
    800036a4:	0a813b03          	ld	s6,168(sp)
    800036a8:	0b013b83          	ld	s7,176(sp)
    800036ac:	0b813c03          	ld	s8,184(sp)
    800036b0:	0c013c83          	ld	s9,192(sp)
    800036b4:	0c813d03          	ld	s10,200(sp)
    800036b8:	0d013d83          	ld	s11,208(sp)
    800036bc:	0d813e03          	ld	t3,216(sp)
    800036c0:	0e013e83          	ld	t4,224(sp)
    800036c4:	0e813f03          	ld	t5,232(sp)
    800036c8:	0f013f83          	ld	t6,240(sp)
    800036cc:	10010113          	addi	sp,sp,256
    800036d0:	10200073          	sret
    800036d4:	00000013          	nop
    800036d8:	00000013          	nop
    800036dc:	00000013          	nop

00000000800036e0 <timervec>:
    800036e0:	34051573          	csrrw	a0,mscratch,a0
    800036e4:	00b53023          	sd	a1,0(a0)
    800036e8:	00c53423          	sd	a2,8(a0)
    800036ec:	00d53823          	sd	a3,16(a0)
    800036f0:	01853583          	ld	a1,24(a0)
    800036f4:	02053603          	ld	a2,32(a0)
    800036f8:	0005b683          	ld	a3,0(a1)
    800036fc:	00c686b3          	add	a3,a3,a2
    80003700:	00d5b023          	sd	a3,0(a1)
    80003704:	00200593          	li	a1,2
    80003708:	14459073          	csrw	sip,a1
    8000370c:	01053683          	ld	a3,16(a0)
    80003710:	00853603          	ld	a2,8(a0)
    80003714:	00053583          	ld	a1,0(a0)
    80003718:	34051573          	csrrw	a0,mscratch,a0
    8000371c:	30200073          	mret

0000000080003720 <plicinit>:
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00813423          	sd	s0,8(sp)
    80003728:	01010413          	addi	s0,sp,16
    8000372c:	00813403          	ld	s0,8(sp)
    80003730:	0c0007b7          	lui	a5,0xc000
    80003734:	00100713          	li	a4,1
    80003738:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000373c:	00e7a223          	sw	a4,4(a5)
    80003740:	01010113          	addi	sp,sp,16
    80003744:	00008067          	ret

0000000080003748 <plicinithart>:
    80003748:	ff010113          	addi	sp,sp,-16
    8000374c:	00813023          	sd	s0,0(sp)
    80003750:	00113423          	sd	ra,8(sp)
    80003754:	01010413          	addi	s0,sp,16
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	a48080e7          	jalr	-1464(ra) # 800031a0 <cpuid>
    80003760:	0085171b          	slliw	a4,a0,0x8
    80003764:	0c0027b7          	lui	a5,0xc002
    80003768:	00e787b3          	add	a5,a5,a4
    8000376c:	40200713          	li	a4,1026
    80003770:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003774:	00813083          	ld	ra,8(sp)
    80003778:	00013403          	ld	s0,0(sp)
    8000377c:	00d5151b          	slliw	a0,a0,0xd
    80003780:	0c2017b7          	lui	a5,0xc201
    80003784:	00a78533          	add	a0,a5,a0
    80003788:	00052023          	sw	zero,0(a0)
    8000378c:	01010113          	addi	sp,sp,16
    80003790:	00008067          	ret

0000000080003794 <plic_claim>:
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00813023          	sd	s0,0(sp)
    8000379c:	00113423          	sd	ra,8(sp)
    800037a0:	01010413          	addi	s0,sp,16
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	9fc080e7          	jalr	-1540(ra) # 800031a0 <cpuid>
    800037ac:	00813083          	ld	ra,8(sp)
    800037b0:	00013403          	ld	s0,0(sp)
    800037b4:	00d5151b          	slliw	a0,a0,0xd
    800037b8:	0c2017b7          	lui	a5,0xc201
    800037bc:	00a78533          	add	a0,a5,a0
    800037c0:	00452503          	lw	a0,4(a0)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret

00000000800037cc <plic_complete>:
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00813823          	sd	s0,16(sp)
    800037d4:	00913423          	sd	s1,8(sp)
    800037d8:	00113c23          	sd	ra,24(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	00050493          	mv	s1,a0
    800037e4:	00000097          	auipc	ra,0x0
    800037e8:	9bc080e7          	jalr	-1604(ra) # 800031a0 <cpuid>
    800037ec:	01813083          	ld	ra,24(sp)
    800037f0:	01013403          	ld	s0,16(sp)
    800037f4:	00d5179b          	slliw	a5,a0,0xd
    800037f8:	0c201737          	lui	a4,0xc201
    800037fc:	00f707b3          	add	a5,a4,a5
    80003800:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003804:	00813483          	ld	s1,8(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret

0000000080003810 <consolewrite>:
    80003810:	fb010113          	addi	sp,sp,-80
    80003814:	04813023          	sd	s0,64(sp)
    80003818:	04113423          	sd	ra,72(sp)
    8000381c:	02913c23          	sd	s1,56(sp)
    80003820:	03213823          	sd	s2,48(sp)
    80003824:	03313423          	sd	s3,40(sp)
    80003828:	03413023          	sd	s4,32(sp)
    8000382c:	01513c23          	sd	s5,24(sp)
    80003830:	05010413          	addi	s0,sp,80
    80003834:	06c05c63          	blez	a2,800038ac <consolewrite+0x9c>
    80003838:	00060993          	mv	s3,a2
    8000383c:	00050a13          	mv	s4,a0
    80003840:	00058493          	mv	s1,a1
    80003844:	00000913          	li	s2,0
    80003848:	fff00a93          	li	s5,-1
    8000384c:	01c0006f          	j	80003868 <consolewrite+0x58>
    80003850:	fbf44503          	lbu	a0,-65(s0)
    80003854:	0019091b          	addiw	s2,s2,1
    80003858:	00148493          	addi	s1,s1,1
    8000385c:	00001097          	auipc	ra,0x1
    80003860:	a9c080e7          	jalr	-1380(ra) # 800042f8 <uartputc>
    80003864:	03298063          	beq	s3,s2,80003884 <consolewrite+0x74>
    80003868:	00048613          	mv	a2,s1
    8000386c:	00100693          	li	a3,1
    80003870:	000a0593          	mv	a1,s4
    80003874:	fbf40513          	addi	a0,s0,-65
    80003878:	00000097          	auipc	ra,0x0
    8000387c:	9e0080e7          	jalr	-1568(ra) # 80003258 <either_copyin>
    80003880:	fd5518e3          	bne	a0,s5,80003850 <consolewrite+0x40>
    80003884:	04813083          	ld	ra,72(sp)
    80003888:	04013403          	ld	s0,64(sp)
    8000388c:	03813483          	ld	s1,56(sp)
    80003890:	02813983          	ld	s3,40(sp)
    80003894:	02013a03          	ld	s4,32(sp)
    80003898:	01813a83          	ld	s5,24(sp)
    8000389c:	00090513          	mv	a0,s2
    800038a0:	03013903          	ld	s2,48(sp)
    800038a4:	05010113          	addi	sp,sp,80
    800038a8:	00008067          	ret
    800038ac:	00000913          	li	s2,0
    800038b0:	fd5ff06f          	j	80003884 <consolewrite+0x74>

00000000800038b4 <consoleread>:
    800038b4:	f9010113          	addi	sp,sp,-112
    800038b8:	06813023          	sd	s0,96(sp)
    800038bc:	04913c23          	sd	s1,88(sp)
    800038c0:	05213823          	sd	s2,80(sp)
    800038c4:	05313423          	sd	s3,72(sp)
    800038c8:	05413023          	sd	s4,64(sp)
    800038cc:	03513c23          	sd	s5,56(sp)
    800038d0:	03613823          	sd	s6,48(sp)
    800038d4:	03713423          	sd	s7,40(sp)
    800038d8:	03813023          	sd	s8,32(sp)
    800038dc:	06113423          	sd	ra,104(sp)
    800038e0:	01913c23          	sd	s9,24(sp)
    800038e4:	07010413          	addi	s0,sp,112
    800038e8:	00060b93          	mv	s7,a2
    800038ec:	00050913          	mv	s2,a0
    800038f0:	00058c13          	mv	s8,a1
    800038f4:	00060b1b          	sext.w	s6,a2
    800038f8:	00005497          	auipc	s1,0x5
    800038fc:	b0048493          	addi	s1,s1,-1280 # 800083f8 <cons>
    80003900:	00400993          	li	s3,4
    80003904:	fff00a13          	li	s4,-1
    80003908:	00a00a93          	li	s5,10
    8000390c:	05705e63          	blez	s7,80003968 <consoleread+0xb4>
    80003910:	09c4a703          	lw	a4,156(s1)
    80003914:	0984a783          	lw	a5,152(s1)
    80003918:	0007071b          	sext.w	a4,a4
    8000391c:	08e78463          	beq	a5,a4,800039a4 <consoleread+0xf0>
    80003920:	07f7f713          	andi	a4,a5,127
    80003924:	00e48733          	add	a4,s1,a4
    80003928:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000392c:	0017869b          	addiw	a3,a5,1
    80003930:	08d4ac23          	sw	a3,152(s1)
    80003934:	00070c9b          	sext.w	s9,a4
    80003938:	0b370663          	beq	a4,s3,800039e4 <consoleread+0x130>
    8000393c:	00100693          	li	a3,1
    80003940:	f9f40613          	addi	a2,s0,-97
    80003944:	000c0593          	mv	a1,s8
    80003948:	00090513          	mv	a0,s2
    8000394c:	f8e40fa3          	sb	a4,-97(s0)
    80003950:	00000097          	auipc	ra,0x0
    80003954:	8bc080e7          	jalr	-1860(ra) # 8000320c <either_copyout>
    80003958:	01450863          	beq	a0,s4,80003968 <consoleread+0xb4>
    8000395c:	001c0c13          	addi	s8,s8,1
    80003960:	fffb8b9b          	addiw	s7,s7,-1
    80003964:	fb5c94e3          	bne	s9,s5,8000390c <consoleread+0x58>
    80003968:	000b851b          	sext.w	a0,s7
    8000396c:	06813083          	ld	ra,104(sp)
    80003970:	06013403          	ld	s0,96(sp)
    80003974:	05813483          	ld	s1,88(sp)
    80003978:	05013903          	ld	s2,80(sp)
    8000397c:	04813983          	ld	s3,72(sp)
    80003980:	04013a03          	ld	s4,64(sp)
    80003984:	03813a83          	ld	s5,56(sp)
    80003988:	02813b83          	ld	s7,40(sp)
    8000398c:	02013c03          	ld	s8,32(sp)
    80003990:	01813c83          	ld	s9,24(sp)
    80003994:	40ab053b          	subw	a0,s6,a0
    80003998:	03013b03          	ld	s6,48(sp)
    8000399c:	07010113          	addi	sp,sp,112
    800039a0:	00008067          	ret
    800039a4:	00001097          	auipc	ra,0x1
    800039a8:	1d8080e7          	jalr	472(ra) # 80004b7c <push_on>
    800039ac:	0984a703          	lw	a4,152(s1)
    800039b0:	09c4a783          	lw	a5,156(s1)
    800039b4:	0007879b          	sext.w	a5,a5
    800039b8:	fef70ce3          	beq	a4,a5,800039b0 <consoleread+0xfc>
    800039bc:	00001097          	auipc	ra,0x1
    800039c0:	234080e7          	jalr	564(ra) # 80004bf0 <pop_on>
    800039c4:	0984a783          	lw	a5,152(s1)
    800039c8:	07f7f713          	andi	a4,a5,127
    800039cc:	00e48733          	add	a4,s1,a4
    800039d0:	01874703          	lbu	a4,24(a4)
    800039d4:	0017869b          	addiw	a3,a5,1
    800039d8:	08d4ac23          	sw	a3,152(s1)
    800039dc:	00070c9b          	sext.w	s9,a4
    800039e0:	f5371ee3          	bne	a4,s3,8000393c <consoleread+0x88>
    800039e4:	000b851b          	sext.w	a0,s7
    800039e8:	f96bf2e3          	bgeu	s7,s6,8000396c <consoleread+0xb8>
    800039ec:	08f4ac23          	sw	a5,152(s1)
    800039f0:	f7dff06f          	j	8000396c <consoleread+0xb8>

00000000800039f4 <consputc>:
    800039f4:	10000793          	li	a5,256
    800039f8:	00f50663          	beq	a0,a5,80003a04 <consputc+0x10>
    800039fc:	00001317          	auipc	t1,0x1
    80003a00:	9f430067          	jr	-1548(t1) # 800043f0 <uartputc_sync>
    80003a04:	ff010113          	addi	sp,sp,-16
    80003a08:	00113423          	sd	ra,8(sp)
    80003a0c:	00813023          	sd	s0,0(sp)
    80003a10:	01010413          	addi	s0,sp,16
    80003a14:	00800513          	li	a0,8
    80003a18:	00001097          	auipc	ra,0x1
    80003a1c:	9d8080e7          	jalr	-1576(ra) # 800043f0 <uartputc_sync>
    80003a20:	02000513          	li	a0,32
    80003a24:	00001097          	auipc	ra,0x1
    80003a28:	9cc080e7          	jalr	-1588(ra) # 800043f0 <uartputc_sync>
    80003a2c:	00013403          	ld	s0,0(sp)
    80003a30:	00813083          	ld	ra,8(sp)
    80003a34:	00800513          	li	a0,8
    80003a38:	01010113          	addi	sp,sp,16
    80003a3c:	00001317          	auipc	t1,0x1
    80003a40:	9b430067          	jr	-1612(t1) # 800043f0 <uartputc_sync>

0000000080003a44 <consoleintr>:
    80003a44:	fe010113          	addi	sp,sp,-32
    80003a48:	00813823          	sd	s0,16(sp)
    80003a4c:	00913423          	sd	s1,8(sp)
    80003a50:	01213023          	sd	s2,0(sp)
    80003a54:	00113c23          	sd	ra,24(sp)
    80003a58:	02010413          	addi	s0,sp,32
    80003a5c:	00005917          	auipc	s2,0x5
    80003a60:	99c90913          	addi	s2,s2,-1636 # 800083f8 <cons>
    80003a64:	00050493          	mv	s1,a0
    80003a68:	00090513          	mv	a0,s2
    80003a6c:	00001097          	auipc	ra,0x1
    80003a70:	e40080e7          	jalr	-448(ra) # 800048ac <acquire>
    80003a74:	02048c63          	beqz	s1,80003aac <consoleintr+0x68>
    80003a78:	0a092783          	lw	a5,160(s2)
    80003a7c:	09892703          	lw	a4,152(s2)
    80003a80:	07f00693          	li	a3,127
    80003a84:	40e7873b          	subw	a4,a5,a4
    80003a88:	02e6e263          	bltu	a3,a4,80003aac <consoleintr+0x68>
    80003a8c:	00d00713          	li	a4,13
    80003a90:	04e48063          	beq	s1,a4,80003ad0 <consoleintr+0x8c>
    80003a94:	07f7f713          	andi	a4,a5,127
    80003a98:	00e90733          	add	a4,s2,a4
    80003a9c:	0017879b          	addiw	a5,a5,1
    80003aa0:	0af92023          	sw	a5,160(s2)
    80003aa4:	00970c23          	sb	s1,24(a4)
    80003aa8:	08f92e23          	sw	a5,156(s2)
    80003aac:	01013403          	ld	s0,16(sp)
    80003ab0:	01813083          	ld	ra,24(sp)
    80003ab4:	00813483          	ld	s1,8(sp)
    80003ab8:	00013903          	ld	s2,0(sp)
    80003abc:	00005517          	auipc	a0,0x5
    80003ac0:	93c50513          	addi	a0,a0,-1732 # 800083f8 <cons>
    80003ac4:	02010113          	addi	sp,sp,32
    80003ac8:	00001317          	auipc	t1,0x1
    80003acc:	eb030067          	jr	-336(t1) # 80004978 <release>
    80003ad0:	00a00493          	li	s1,10
    80003ad4:	fc1ff06f          	j	80003a94 <consoleintr+0x50>

0000000080003ad8 <consoleinit>:
    80003ad8:	fe010113          	addi	sp,sp,-32
    80003adc:	00113c23          	sd	ra,24(sp)
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00913423          	sd	s1,8(sp)
    80003ae8:	02010413          	addi	s0,sp,32
    80003aec:	00005497          	auipc	s1,0x5
    80003af0:	90c48493          	addi	s1,s1,-1780 # 800083f8 <cons>
    80003af4:	00048513          	mv	a0,s1
    80003af8:	00002597          	auipc	a1,0x2
    80003afc:	7c058593          	addi	a1,a1,1984 # 800062b8 <_ZZ12printIntegermE6digits+0x238>
    80003b00:	00001097          	auipc	ra,0x1
    80003b04:	d88080e7          	jalr	-632(ra) # 80004888 <initlock>
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	7ac080e7          	jalr	1964(ra) # 800042b4 <uartinit>
    80003b10:	01813083          	ld	ra,24(sp)
    80003b14:	01013403          	ld	s0,16(sp)
    80003b18:	00000797          	auipc	a5,0x0
    80003b1c:	d9c78793          	addi	a5,a5,-612 # 800038b4 <consoleread>
    80003b20:	0af4bc23          	sd	a5,184(s1)
    80003b24:	00000797          	auipc	a5,0x0
    80003b28:	cec78793          	addi	a5,a5,-788 # 80003810 <consolewrite>
    80003b2c:	0cf4b023          	sd	a5,192(s1)
    80003b30:	00813483          	ld	s1,8(sp)
    80003b34:	02010113          	addi	sp,sp,32
    80003b38:	00008067          	ret

0000000080003b3c <console_read>:
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00813423          	sd	s0,8(sp)
    80003b44:	01010413          	addi	s0,sp,16
    80003b48:	00813403          	ld	s0,8(sp)
    80003b4c:	00005317          	auipc	t1,0x5
    80003b50:	96433303          	ld	t1,-1692(t1) # 800084b0 <devsw+0x10>
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00030067          	jr	t1

0000000080003b5c <console_write>:
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00813423          	sd	s0,8(sp)
    80003b64:	01010413          	addi	s0,sp,16
    80003b68:	00813403          	ld	s0,8(sp)
    80003b6c:	00005317          	auipc	t1,0x5
    80003b70:	94c33303          	ld	t1,-1716(t1) # 800084b8 <devsw+0x18>
    80003b74:	01010113          	addi	sp,sp,16
    80003b78:	00030067          	jr	t1

0000000080003b7c <panic>:
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00113c23          	sd	ra,24(sp)
    80003b84:	00813823          	sd	s0,16(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    80003b90:	00050493          	mv	s1,a0
    80003b94:	00002517          	auipc	a0,0x2
    80003b98:	72c50513          	addi	a0,a0,1836 # 800062c0 <_ZZ12printIntegermE6digits+0x240>
    80003b9c:	00005797          	auipc	a5,0x5
    80003ba0:	9a07ae23          	sw	zero,-1604(a5) # 80008558 <pr+0x18>
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	034080e7          	jalr	52(ra) # 80003bd8 <__printf>
    80003bac:	00048513          	mv	a0,s1
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	028080e7          	jalr	40(ra) # 80003bd8 <__printf>
    80003bb8:	00002517          	auipc	a0,0x2
    80003bbc:	52850513          	addi	a0,a0,1320 # 800060e0 <_ZZ12printIntegermE6digits+0x60>
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	018080e7          	jalr	24(ra) # 80003bd8 <__printf>
    80003bc8:	00100793          	li	a5,1
    80003bcc:	00003717          	auipc	a4,0x3
    80003bd0:	70f72623          	sw	a5,1804(a4) # 800072d8 <panicked>
    80003bd4:	0000006f          	j	80003bd4 <panic+0x58>

0000000080003bd8 <__printf>:
    80003bd8:	f3010113          	addi	sp,sp,-208
    80003bdc:	08813023          	sd	s0,128(sp)
    80003be0:	07313423          	sd	s3,104(sp)
    80003be4:	09010413          	addi	s0,sp,144
    80003be8:	05813023          	sd	s8,64(sp)
    80003bec:	08113423          	sd	ra,136(sp)
    80003bf0:	06913c23          	sd	s1,120(sp)
    80003bf4:	07213823          	sd	s2,112(sp)
    80003bf8:	07413023          	sd	s4,96(sp)
    80003bfc:	05513c23          	sd	s5,88(sp)
    80003c00:	05613823          	sd	s6,80(sp)
    80003c04:	05713423          	sd	s7,72(sp)
    80003c08:	03913c23          	sd	s9,56(sp)
    80003c0c:	03a13823          	sd	s10,48(sp)
    80003c10:	03b13423          	sd	s11,40(sp)
    80003c14:	00005317          	auipc	t1,0x5
    80003c18:	92c30313          	addi	t1,t1,-1748 # 80008540 <pr>
    80003c1c:	01832c03          	lw	s8,24(t1)
    80003c20:	00b43423          	sd	a1,8(s0)
    80003c24:	00c43823          	sd	a2,16(s0)
    80003c28:	00d43c23          	sd	a3,24(s0)
    80003c2c:	02e43023          	sd	a4,32(s0)
    80003c30:	02f43423          	sd	a5,40(s0)
    80003c34:	03043823          	sd	a6,48(s0)
    80003c38:	03143c23          	sd	a7,56(s0)
    80003c3c:	00050993          	mv	s3,a0
    80003c40:	4a0c1663          	bnez	s8,800040ec <__printf+0x514>
    80003c44:	60098c63          	beqz	s3,8000425c <__printf+0x684>
    80003c48:	0009c503          	lbu	a0,0(s3)
    80003c4c:	00840793          	addi	a5,s0,8
    80003c50:	f6f43c23          	sd	a5,-136(s0)
    80003c54:	00000493          	li	s1,0
    80003c58:	22050063          	beqz	a0,80003e78 <__printf+0x2a0>
    80003c5c:	00002a37          	lui	s4,0x2
    80003c60:	00018ab7          	lui	s5,0x18
    80003c64:	000f4b37          	lui	s6,0xf4
    80003c68:	00989bb7          	lui	s7,0x989
    80003c6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003c70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003c74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003c78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003c7c:	00148c9b          	addiw	s9,s1,1
    80003c80:	02500793          	li	a5,37
    80003c84:	01998933          	add	s2,s3,s9
    80003c88:	38f51263          	bne	a0,a5,8000400c <__printf+0x434>
    80003c8c:	00094783          	lbu	a5,0(s2)
    80003c90:	00078c9b          	sext.w	s9,a5
    80003c94:	1e078263          	beqz	a5,80003e78 <__printf+0x2a0>
    80003c98:	0024849b          	addiw	s1,s1,2
    80003c9c:	07000713          	li	a4,112
    80003ca0:	00998933          	add	s2,s3,s1
    80003ca4:	38e78a63          	beq	a5,a4,80004038 <__printf+0x460>
    80003ca8:	20f76863          	bltu	a4,a5,80003eb8 <__printf+0x2e0>
    80003cac:	42a78863          	beq	a5,a0,800040dc <__printf+0x504>
    80003cb0:	06400713          	li	a4,100
    80003cb4:	40e79663          	bne	a5,a4,800040c0 <__printf+0x4e8>
    80003cb8:	f7843783          	ld	a5,-136(s0)
    80003cbc:	0007a603          	lw	a2,0(a5)
    80003cc0:	00878793          	addi	a5,a5,8
    80003cc4:	f6f43c23          	sd	a5,-136(s0)
    80003cc8:	42064a63          	bltz	a2,800040fc <__printf+0x524>
    80003ccc:	00a00713          	li	a4,10
    80003cd0:	02e677bb          	remuw	a5,a2,a4
    80003cd4:	00002d97          	auipc	s11,0x2
    80003cd8:	614d8d93          	addi	s11,s11,1556 # 800062e8 <digits>
    80003cdc:	00900593          	li	a1,9
    80003ce0:	0006051b          	sext.w	a0,a2
    80003ce4:	00000c93          	li	s9,0
    80003ce8:	02079793          	slli	a5,a5,0x20
    80003cec:	0207d793          	srli	a5,a5,0x20
    80003cf0:	00fd87b3          	add	a5,s11,a5
    80003cf4:	0007c783          	lbu	a5,0(a5)
    80003cf8:	02e656bb          	divuw	a3,a2,a4
    80003cfc:	f8f40023          	sb	a5,-128(s0)
    80003d00:	14c5d863          	bge	a1,a2,80003e50 <__printf+0x278>
    80003d04:	06300593          	li	a1,99
    80003d08:	00100c93          	li	s9,1
    80003d0c:	02e6f7bb          	remuw	a5,a3,a4
    80003d10:	02079793          	slli	a5,a5,0x20
    80003d14:	0207d793          	srli	a5,a5,0x20
    80003d18:	00fd87b3          	add	a5,s11,a5
    80003d1c:	0007c783          	lbu	a5,0(a5)
    80003d20:	02e6d73b          	divuw	a4,a3,a4
    80003d24:	f8f400a3          	sb	a5,-127(s0)
    80003d28:	12a5f463          	bgeu	a1,a0,80003e50 <__printf+0x278>
    80003d2c:	00a00693          	li	a3,10
    80003d30:	00900593          	li	a1,9
    80003d34:	02d777bb          	remuw	a5,a4,a3
    80003d38:	02079793          	slli	a5,a5,0x20
    80003d3c:	0207d793          	srli	a5,a5,0x20
    80003d40:	00fd87b3          	add	a5,s11,a5
    80003d44:	0007c503          	lbu	a0,0(a5)
    80003d48:	02d757bb          	divuw	a5,a4,a3
    80003d4c:	f8a40123          	sb	a0,-126(s0)
    80003d50:	48e5f263          	bgeu	a1,a4,800041d4 <__printf+0x5fc>
    80003d54:	06300513          	li	a0,99
    80003d58:	02d7f5bb          	remuw	a1,a5,a3
    80003d5c:	02059593          	slli	a1,a1,0x20
    80003d60:	0205d593          	srli	a1,a1,0x20
    80003d64:	00bd85b3          	add	a1,s11,a1
    80003d68:	0005c583          	lbu	a1,0(a1)
    80003d6c:	02d7d7bb          	divuw	a5,a5,a3
    80003d70:	f8b401a3          	sb	a1,-125(s0)
    80003d74:	48e57263          	bgeu	a0,a4,800041f8 <__printf+0x620>
    80003d78:	3e700513          	li	a0,999
    80003d7c:	02d7f5bb          	remuw	a1,a5,a3
    80003d80:	02059593          	slli	a1,a1,0x20
    80003d84:	0205d593          	srli	a1,a1,0x20
    80003d88:	00bd85b3          	add	a1,s11,a1
    80003d8c:	0005c583          	lbu	a1,0(a1)
    80003d90:	02d7d7bb          	divuw	a5,a5,a3
    80003d94:	f8b40223          	sb	a1,-124(s0)
    80003d98:	46e57663          	bgeu	a0,a4,80004204 <__printf+0x62c>
    80003d9c:	02d7f5bb          	remuw	a1,a5,a3
    80003da0:	02059593          	slli	a1,a1,0x20
    80003da4:	0205d593          	srli	a1,a1,0x20
    80003da8:	00bd85b3          	add	a1,s11,a1
    80003dac:	0005c583          	lbu	a1,0(a1)
    80003db0:	02d7d7bb          	divuw	a5,a5,a3
    80003db4:	f8b402a3          	sb	a1,-123(s0)
    80003db8:	46ea7863          	bgeu	s4,a4,80004228 <__printf+0x650>
    80003dbc:	02d7f5bb          	remuw	a1,a5,a3
    80003dc0:	02059593          	slli	a1,a1,0x20
    80003dc4:	0205d593          	srli	a1,a1,0x20
    80003dc8:	00bd85b3          	add	a1,s11,a1
    80003dcc:	0005c583          	lbu	a1,0(a1)
    80003dd0:	02d7d7bb          	divuw	a5,a5,a3
    80003dd4:	f8b40323          	sb	a1,-122(s0)
    80003dd8:	3eeaf863          	bgeu	s5,a4,800041c8 <__printf+0x5f0>
    80003ddc:	02d7f5bb          	remuw	a1,a5,a3
    80003de0:	02059593          	slli	a1,a1,0x20
    80003de4:	0205d593          	srli	a1,a1,0x20
    80003de8:	00bd85b3          	add	a1,s11,a1
    80003dec:	0005c583          	lbu	a1,0(a1)
    80003df0:	02d7d7bb          	divuw	a5,a5,a3
    80003df4:	f8b403a3          	sb	a1,-121(s0)
    80003df8:	42eb7e63          	bgeu	s6,a4,80004234 <__printf+0x65c>
    80003dfc:	02d7f5bb          	remuw	a1,a5,a3
    80003e00:	02059593          	slli	a1,a1,0x20
    80003e04:	0205d593          	srli	a1,a1,0x20
    80003e08:	00bd85b3          	add	a1,s11,a1
    80003e0c:	0005c583          	lbu	a1,0(a1)
    80003e10:	02d7d7bb          	divuw	a5,a5,a3
    80003e14:	f8b40423          	sb	a1,-120(s0)
    80003e18:	42ebfc63          	bgeu	s7,a4,80004250 <__printf+0x678>
    80003e1c:	02079793          	slli	a5,a5,0x20
    80003e20:	0207d793          	srli	a5,a5,0x20
    80003e24:	00fd8db3          	add	s11,s11,a5
    80003e28:	000dc703          	lbu	a4,0(s11)
    80003e2c:	00a00793          	li	a5,10
    80003e30:	00900c93          	li	s9,9
    80003e34:	f8e404a3          	sb	a4,-119(s0)
    80003e38:	00065c63          	bgez	a2,80003e50 <__printf+0x278>
    80003e3c:	f9040713          	addi	a4,s0,-112
    80003e40:	00f70733          	add	a4,a4,a5
    80003e44:	02d00693          	li	a3,45
    80003e48:	fed70823          	sb	a3,-16(a4)
    80003e4c:	00078c93          	mv	s9,a5
    80003e50:	f8040793          	addi	a5,s0,-128
    80003e54:	01978cb3          	add	s9,a5,s9
    80003e58:	f7f40d13          	addi	s10,s0,-129
    80003e5c:	000cc503          	lbu	a0,0(s9)
    80003e60:	fffc8c93          	addi	s9,s9,-1
    80003e64:	00000097          	auipc	ra,0x0
    80003e68:	b90080e7          	jalr	-1136(ra) # 800039f4 <consputc>
    80003e6c:	ffac98e3          	bne	s9,s10,80003e5c <__printf+0x284>
    80003e70:	00094503          	lbu	a0,0(s2)
    80003e74:	e00514e3          	bnez	a0,80003c7c <__printf+0xa4>
    80003e78:	1a0c1663          	bnez	s8,80004024 <__printf+0x44c>
    80003e7c:	08813083          	ld	ra,136(sp)
    80003e80:	08013403          	ld	s0,128(sp)
    80003e84:	07813483          	ld	s1,120(sp)
    80003e88:	07013903          	ld	s2,112(sp)
    80003e8c:	06813983          	ld	s3,104(sp)
    80003e90:	06013a03          	ld	s4,96(sp)
    80003e94:	05813a83          	ld	s5,88(sp)
    80003e98:	05013b03          	ld	s6,80(sp)
    80003e9c:	04813b83          	ld	s7,72(sp)
    80003ea0:	04013c03          	ld	s8,64(sp)
    80003ea4:	03813c83          	ld	s9,56(sp)
    80003ea8:	03013d03          	ld	s10,48(sp)
    80003eac:	02813d83          	ld	s11,40(sp)
    80003eb0:	0d010113          	addi	sp,sp,208
    80003eb4:	00008067          	ret
    80003eb8:	07300713          	li	a4,115
    80003ebc:	1ce78a63          	beq	a5,a4,80004090 <__printf+0x4b8>
    80003ec0:	07800713          	li	a4,120
    80003ec4:	1ee79e63          	bne	a5,a4,800040c0 <__printf+0x4e8>
    80003ec8:	f7843783          	ld	a5,-136(s0)
    80003ecc:	0007a703          	lw	a4,0(a5)
    80003ed0:	00878793          	addi	a5,a5,8
    80003ed4:	f6f43c23          	sd	a5,-136(s0)
    80003ed8:	28074263          	bltz	a4,8000415c <__printf+0x584>
    80003edc:	00002d97          	auipc	s11,0x2
    80003ee0:	40cd8d93          	addi	s11,s11,1036 # 800062e8 <digits>
    80003ee4:	00f77793          	andi	a5,a4,15
    80003ee8:	00fd87b3          	add	a5,s11,a5
    80003eec:	0007c683          	lbu	a3,0(a5)
    80003ef0:	00f00613          	li	a2,15
    80003ef4:	0007079b          	sext.w	a5,a4
    80003ef8:	f8d40023          	sb	a3,-128(s0)
    80003efc:	0047559b          	srliw	a1,a4,0x4
    80003f00:	0047569b          	srliw	a3,a4,0x4
    80003f04:	00000c93          	li	s9,0
    80003f08:	0ee65063          	bge	a2,a4,80003fe8 <__printf+0x410>
    80003f0c:	00f6f693          	andi	a3,a3,15
    80003f10:	00dd86b3          	add	a3,s11,a3
    80003f14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003f18:	0087d79b          	srliw	a5,a5,0x8
    80003f1c:	00100c93          	li	s9,1
    80003f20:	f8d400a3          	sb	a3,-127(s0)
    80003f24:	0cb67263          	bgeu	a2,a1,80003fe8 <__printf+0x410>
    80003f28:	00f7f693          	andi	a3,a5,15
    80003f2c:	00dd86b3          	add	a3,s11,a3
    80003f30:	0006c583          	lbu	a1,0(a3)
    80003f34:	00f00613          	li	a2,15
    80003f38:	0047d69b          	srliw	a3,a5,0x4
    80003f3c:	f8b40123          	sb	a1,-126(s0)
    80003f40:	0047d593          	srli	a1,a5,0x4
    80003f44:	28f67e63          	bgeu	a2,a5,800041e0 <__printf+0x608>
    80003f48:	00f6f693          	andi	a3,a3,15
    80003f4c:	00dd86b3          	add	a3,s11,a3
    80003f50:	0006c503          	lbu	a0,0(a3)
    80003f54:	0087d813          	srli	a6,a5,0x8
    80003f58:	0087d69b          	srliw	a3,a5,0x8
    80003f5c:	f8a401a3          	sb	a0,-125(s0)
    80003f60:	28b67663          	bgeu	a2,a1,800041ec <__printf+0x614>
    80003f64:	00f6f693          	andi	a3,a3,15
    80003f68:	00dd86b3          	add	a3,s11,a3
    80003f6c:	0006c583          	lbu	a1,0(a3)
    80003f70:	00c7d513          	srli	a0,a5,0xc
    80003f74:	00c7d69b          	srliw	a3,a5,0xc
    80003f78:	f8b40223          	sb	a1,-124(s0)
    80003f7c:	29067a63          	bgeu	a2,a6,80004210 <__printf+0x638>
    80003f80:	00f6f693          	andi	a3,a3,15
    80003f84:	00dd86b3          	add	a3,s11,a3
    80003f88:	0006c583          	lbu	a1,0(a3)
    80003f8c:	0107d813          	srli	a6,a5,0x10
    80003f90:	0107d69b          	srliw	a3,a5,0x10
    80003f94:	f8b402a3          	sb	a1,-123(s0)
    80003f98:	28a67263          	bgeu	a2,a0,8000421c <__printf+0x644>
    80003f9c:	00f6f693          	andi	a3,a3,15
    80003fa0:	00dd86b3          	add	a3,s11,a3
    80003fa4:	0006c683          	lbu	a3,0(a3)
    80003fa8:	0147d79b          	srliw	a5,a5,0x14
    80003fac:	f8d40323          	sb	a3,-122(s0)
    80003fb0:	21067663          	bgeu	a2,a6,800041bc <__printf+0x5e4>
    80003fb4:	02079793          	slli	a5,a5,0x20
    80003fb8:	0207d793          	srli	a5,a5,0x20
    80003fbc:	00fd8db3          	add	s11,s11,a5
    80003fc0:	000dc683          	lbu	a3,0(s11)
    80003fc4:	00800793          	li	a5,8
    80003fc8:	00700c93          	li	s9,7
    80003fcc:	f8d403a3          	sb	a3,-121(s0)
    80003fd0:	00075c63          	bgez	a4,80003fe8 <__printf+0x410>
    80003fd4:	f9040713          	addi	a4,s0,-112
    80003fd8:	00f70733          	add	a4,a4,a5
    80003fdc:	02d00693          	li	a3,45
    80003fe0:	fed70823          	sb	a3,-16(a4)
    80003fe4:	00078c93          	mv	s9,a5
    80003fe8:	f8040793          	addi	a5,s0,-128
    80003fec:	01978cb3          	add	s9,a5,s9
    80003ff0:	f7f40d13          	addi	s10,s0,-129
    80003ff4:	000cc503          	lbu	a0,0(s9)
    80003ff8:	fffc8c93          	addi	s9,s9,-1
    80003ffc:	00000097          	auipc	ra,0x0
    80004000:	9f8080e7          	jalr	-1544(ra) # 800039f4 <consputc>
    80004004:	ff9d18e3          	bne	s10,s9,80003ff4 <__printf+0x41c>
    80004008:	0100006f          	j	80004018 <__printf+0x440>
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	9e8080e7          	jalr	-1560(ra) # 800039f4 <consputc>
    80004014:	000c8493          	mv	s1,s9
    80004018:	00094503          	lbu	a0,0(s2)
    8000401c:	c60510e3          	bnez	a0,80003c7c <__printf+0xa4>
    80004020:	e40c0ee3          	beqz	s8,80003e7c <__printf+0x2a4>
    80004024:	00004517          	auipc	a0,0x4
    80004028:	51c50513          	addi	a0,a0,1308 # 80008540 <pr>
    8000402c:	00001097          	auipc	ra,0x1
    80004030:	94c080e7          	jalr	-1716(ra) # 80004978 <release>
    80004034:	e49ff06f          	j	80003e7c <__printf+0x2a4>
    80004038:	f7843783          	ld	a5,-136(s0)
    8000403c:	03000513          	li	a0,48
    80004040:	01000d13          	li	s10,16
    80004044:	00878713          	addi	a4,a5,8
    80004048:	0007bc83          	ld	s9,0(a5)
    8000404c:	f6e43c23          	sd	a4,-136(s0)
    80004050:	00000097          	auipc	ra,0x0
    80004054:	9a4080e7          	jalr	-1628(ra) # 800039f4 <consputc>
    80004058:	07800513          	li	a0,120
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	998080e7          	jalr	-1640(ra) # 800039f4 <consputc>
    80004064:	00002d97          	auipc	s11,0x2
    80004068:	284d8d93          	addi	s11,s11,644 # 800062e8 <digits>
    8000406c:	03ccd793          	srli	a5,s9,0x3c
    80004070:	00fd87b3          	add	a5,s11,a5
    80004074:	0007c503          	lbu	a0,0(a5)
    80004078:	fffd0d1b          	addiw	s10,s10,-1
    8000407c:	004c9c93          	slli	s9,s9,0x4
    80004080:	00000097          	auipc	ra,0x0
    80004084:	974080e7          	jalr	-1676(ra) # 800039f4 <consputc>
    80004088:	fe0d12e3          	bnez	s10,8000406c <__printf+0x494>
    8000408c:	f8dff06f          	j	80004018 <__printf+0x440>
    80004090:	f7843783          	ld	a5,-136(s0)
    80004094:	0007bc83          	ld	s9,0(a5)
    80004098:	00878793          	addi	a5,a5,8
    8000409c:	f6f43c23          	sd	a5,-136(s0)
    800040a0:	000c9a63          	bnez	s9,800040b4 <__printf+0x4dc>
    800040a4:	1080006f          	j	800041ac <__printf+0x5d4>
    800040a8:	001c8c93          	addi	s9,s9,1
    800040ac:	00000097          	auipc	ra,0x0
    800040b0:	948080e7          	jalr	-1720(ra) # 800039f4 <consputc>
    800040b4:	000cc503          	lbu	a0,0(s9)
    800040b8:	fe0518e3          	bnez	a0,800040a8 <__printf+0x4d0>
    800040bc:	f5dff06f          	j	80004018 <__printf+0x440>
    800040c0:	02500513          	li	a0,37
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	930080e7          	jalr	-1744(ra) # 800039f4 <consputc>
    800040cc:	000c8513          	mv	a0,s9
    800040d0:	00000097          	auipc	ra,0x0
    800040d4:	924080e7          	jalr	-1756(ra) # 800039f4 <consputc>
    800040d8:	f41ff06f          	j	80004018 <__printf+0x440>
    800040dc:	02500513          	li	a0,37
    800040e0:	00000097          	auipc	ra,0x0
    800040e4:	914080e7          	jalr	-1772(ra) # 800039f4 <consputc>
    800040e8:	f31ff06f          	j	80004018 <__printf+0x440>
    800040ec:	00030513          	mv	a0,t1
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	7bc080e7          	jalr	1980(ra) # 800048ac <acquire>
    800040f8:	b4dff06f          	j	80003c44 <__printf+0x6c>
    800040fc:	40c0053b          	negw	a0,a2
    80004100:	00a00713          	li	a4,10
    80004104:	02e576bb          	remuw	a3,a0,a4
    80004108:	00002d97          	auipc	s11,0x2
    8000410c:	1e0d8d93          	addi	s11,s11,480 # 800062e8 <digits>
    80004110:	ff700593          	li	a1,-9
    80004114:	02069693          	slli	a3,a3,0x20
    80004118:	0206d693          	srli	a3,a3,0x20
    8000411c:	00dd86b3          	add	a3,s11,a3
    80004120:	0006c683          	lbu	a3,0(a3)
    80004124:	02e557bb          	divuw	a5,a0,a4
    80004128:	f8d40023          	sb	a3,-128(s0)
    8000412c:	10b65e63          	bge	a2,a1,80004248 <__printf+0x670>
    80004130:	06300593          	li	a1,99
    80004134:	02e7f6bb          	remuw	a3,a5,a4
    80004138:	02069693          	slli	a3,a3,0x20
    8000413c:	0206d693          	srli	a3,a3,0x20
    80004140:	00dd86b3          	add	a3,s11,a3
    80004144:	0006c683          	lbu	a3,0(a3)
    80004148:	02e7d73b          	divuw	a4,a5,a4
    8000414c:	00200793          	li	a5,2
    80004150:	f8d400a3          	sb	a3,-127(s0)
    80004154:	bca5ece3          	bltu	a1,a0,80003d2c <__printf+0x154>
    80004158:	ce5ff06f          	j	80003e3c <__printf+0x264>
    8000415c:	40e007bb          	negw	a5,a4
    80004160:	00002d97          	auipc	s11,0x2
    80004164:	188d8d93          	addi	s11,s11,392 # 800062e8 <digits>
    80004168:	00f7f693          	andi	a3,a5,15
    8000416c:	00dd86b3          	add	a3,s11,a3
    80004170:	0006c583          	lbu	a1,0(a3)
    80004174:	ff100613          	li	a2,-15
    80004178:	0047d69b          	srliw	a3,a5,0x4
    8000417c:	f8b40023          	sb	a1,-128(s0)
    80004180:	0047d59b          	srliw	a1,a5,0x4
    80004184:	0ac75e63          	bge	a4,a2,80004240 <__printf+0x668>
    80004188:	00f6f693          	andi	a3,a3,15
    8000418c:	00dd86b3          	add	a3,s11,a3
    80004190:	0006c603          	lbu	a2,0(a3)
    80004194:	00f00693          	li	a3,15
    80004198:	0087d79b          	srliw	a5,a5,0x8
    8000419c:	f8c400a3          	sb	a2,-127(s0)
    800041a0:	d8b6e4e3          	bltu	a3,a1,80003f28 <__printf+0x350>
    800041a4:	00200793          	li	a5,2
    800041a8:	e2dff06f          	j	80003fd4 <__printf+0x3fc>
    800041ac:	00002c97          	auipc	s9,0x2
    800041b0:	11cc8c93          	addi	s9,s9,284 # 800062c8 <_ZZ12printIntegermE6digits+0x248>
    800041b4:	02800513          	li	a0,40
    800041b8:	ef1ff06f          	j	800040a8 <__printf+0x4d0>
    800041bc:	00700793          	li	a5,7
    800041c0:	00600c93          	li	s9,6
    800041c4:	e0dff06f          	j	80003fd0 <__printf+0x3f8>
    800041c8:	00700793          	li	a5,7
    800041cc:	00600c93          	li	s9,6
    800041d0:	c69ff06f          	j	80003e38 <__printf+0x260>
    800041d4:	00300793          	li	a5,3
    800041d8:	00200c93          	li	s9,2
    800041dc:	c5dff06f          	j	80003e38 <__printf+0x260>
    800041e0:	00300793          	li	a5,3
    800041e4:	00200c93          	li	s9,2
    800041e8:	de9ff06f          	j	80003fd0 <__printf+0x3f8>
    800041ec:	00400793          	li	a5,4
    800041f0:	00300c93          	li	s9,3
    800041f4:	dddff06f          	j	80003fd0 <__printf+0x3f8>
    800041f8:	00400793          	li	a5,4
    800041fc:	00300c93          	li	s9,3
    80004200:	c39ff06f          	j	80003e38 <__printf+0x260>
    80004204:	00500793          	li	a5,5
    80004208:	00400c93          	li	s9,4
    8000420c:	c2dff06f          	j	80003e38 <__printf+0x260>
    80004210:	00500793          	li	a5,5
    80004214:	00400c93          	li	s9,4
    80004218:	db9ff06f          	j	80003fd0 <__printf+0x3f8>
    8000421c:	00600793          	li	a5,6
    80004220:	00500c93          	li	s9,5
    80004224:	dadff06f          	j	80003fd0 <__printf+0x3f8>
    80004228:	00600793          	li	a5,6
    8000422c:	00500c93          	li	s9,5
    80004230:	c09ff06f          	j	80003e38 <__printf+0x260>
    80004234:	00800793          	li	a5,8
    80004238:	00700c93          	li	s9,7
    8000423c:	bfdff06f          	j	80003e38 <__printf+0x260>
    80004240:	00100793          	li	a5,1
    80004244:	d91ff06f          	j	80003fd4 <__printf+0x3fc>
    80004248:	00100793          	li	a5,1
    8000424c:	bf1ff06f          	j	80003e3c <__printf+0x264>
    80004250:	00900793          	li	a5,9
    80004254:	00800c93          	li	s9,8
    80004258:	be1ff06f          	j	80003e38 <__printf+0x260>
    8000425c:	00002517          	auipc	a0,0x2
    80004260:	07450513          	addi	a0,a0,116 # 800062d0 <_ZZ12printIntegermE6digits+0x250>
    80004264:	00000097          	auipc	ra,0x0
    80004268:	918080e7          	jalr	-1768(ra) # 80003b7c <panic>

000000008000426c <printfinit>:
    8000426c:	fe010113          	addi	sp,sp,-32
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00913423          	sd	s1,8(sp)
    80004278:	00113c23          	sd	ra,24(sp)
    8000427c:	02010413          	addi	s0,sp,32
    80004280:	00004497          	auipc	s1,0x4
    80004284:	2c048493          	addi	s1,s1,704 # 80008540 <pr>
    80004288:	00048513          	mv	a0,s1
    8000428c:	00002597          	auipc	a1,0x2
    80004290:	05458593          	addi	a1,a1,84 # 800062e0 <_ZZ12printIntegermE6digits+0x260>
    80004294:	00000097          	auipc	ra,0x0
    80004298:	5f4080e7          	jalr	1524(ra) # 80004888 <initlock>
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	0004ac23          	sw	zero,24(s1)
    800042a8:	00813483          	ld	s1,8(sp)
    800042ac:	02010113          	addi	sp,sp,32
    800042b0:	00008067          	ret

00000000800042b4 <uartinit>:
    800042b4:	ff010113          	addi	sp,sp,-16
    800042b8:	00813423          	sd	s0,8(sp)
    800042bc:	01010413          	addi	s0,sp,16
    800042c0:	100007b7          	lui	a5,0x10000
    800042c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800042c8:	f8000713          	li	a4,-128
    800042cc:	00e781a3          	sb	a4,3(a5)
    800042d0:	00300713          	li	a4,3
    800042d4:	00e78023          	sb	a4,0(a5)
    800042d8:	000780a3          	sb	zero,1(a5)
    800042dc:	00e781a3          	sb	a4,3(a5)
    800042e0:	00700693          	li	a3,7
    800042e4:	00d78123          	sb	a3,2(a5)
    800042e8:	00e780a3          	sb	a4,1(a5)
    800042ec:	00813403          	ld	s0,8(sp)
    800042f0:	01010113          	addi	sp,sp,16
    800042f4:	00008067          	ret

00000000800042f8 <uartputc>:
    800042f8:	00003797          	auipc	a5,0x3
    800042fc:	fe07a783          	lw	a5,-32(a5) # 800072d8 <panicked>
    80004300:	00078463          	beqz	a5,80004308 <uartputc+0x10>
    80004304:	0000006f          	j	80004304 <uartputc+0xc>
    80004308:	fd010113          	addi	sp,sp,-48
    8000430c:	02813023          	sd	s0,32(sp)
    80004310:	00913c23          	sd	s1,24(sp)
    80004314:	01213823          	sd	s2,16(sp)
    80004318:	01313423          	sd	s3,8(sp)
    8000431c:	02113423          	sd	ra,40(sp)
    80004320:	03010413          	addi	s0,sp,48
    80004324:	00003917          	auipc	s2,0x3
    80004328:	fbc90913          	addi	s2,s2,-68 # 800072e0 <uart_tx_r>
    8000432c:	00093783          	ld	a5,0(s2)
    80004330:	00003497          	auipc	s1,0x3
    80004334:	fb848493          	addi	s1,s1,-72 # 800072e8 <uart_tx_w>
    80004338:	0004b703          	ld	a4,0(s1)
    8000433c:	02078693          	addi	a3,a5,32
    80004340:	00050993          	mv	s3,a0
    80004344:	02e69c63          	bne	a3,a4,8000437c <uartputc+0x84>
    80004348:	00001097          	auipc	ra,0x1
    8000434c:	834080e7          	jalr	-1996(ra) # 80004b7c <push_on>
    80004350:	00093783          	ld	a5,0(s2)
    80004354:	0004b703          	ld	a4,0(s1)
    80004358:	02078793          	addi	a5,a5,32
    8000435c:	00e79463          	bne	a5,a4,80004364 <uartputc+0x6c>
    80004360:	0000006f          	j	80004360 <uartputc+0x68>
    80004364:	00001097          	auipc	ra,0x1
    80004368:	88c080e7          	jalr	-1908(ra) # 80004bf0 <pop_on>
    8000436c:	00093783          	ld	a5,0(s2)
    80004370:	0004b703          	ld	a4,0(s1)
    80004374:	02078693          	addi	a3,a5,32
    80004378:	fce688e3          	beq	a3,a4,80004348 <uartputc+0x50>
    8000437c:	01f77693          	andi	a3,a4,31
    80004380:	00004597          	auipc	a1,0x4
    80004384:	1e058593          	addi	a1,a1,480 # 80008560 <uart_tx_buf>
    80004388:	00d586b3          	add	a3,a1,a3
    8000438c:	00170713          	addi	a4,a4,1
    80004390:	01368023          	sb	s3,0(a3)
    80004394:	00e4b023          	sd	a4,0(s1)
    80004398:	10000637          	lui	a2,0x10000
    8000439c:	02f71063          	bne	a4,a5,800043bc <uartputc+0xc4>
    800043a0:	0340006f          	j	800043d4 <uartputc+0xdc>
    800043a4:	00074703          	lbu	a4,0(a4)
    800043a8:	00f93023          	sd	a5,0(s2)
    800043ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800043b0:	00093783          	ld	a5,0(s2)
    800043b4:	0004b703          	ld	a4,0(s1)
    800043b8:	00f70e63          	beq	a4,a5,800043d4 <uartputc+0xdc>
    800043bc:	00564683          	lbu	a3,5(a2)
    800043c0:	01f7f713          	andi	a4,a5,31
    800043c4:	00e58733          	add	a4,a1,a4
    800043c8:	0206f693          	andi	a3,a3,32
    800043cc:	00178793          	addi	a5,a5,1
    800043d0:	fc069ae3          	bnez	a3,800043a4 <uartputc+0xac>
    800043d4:	02813083          	ld	ra,40(sp)
    800043d8:	02013403          	ld	s0,32(sp)
    800043dc:	01813483          	ld	s1,24(sp)
    800043e0:	01013903          	ld	s2,16(sp)
    800043e4:	00813983          	ld	s3,8(sp)
    800043e8:	03010113          	addi	sp,sp,48
    800043ec:	00008067          	ret

00000000800043f0 <uartputc_sync>:
    800043f0:	ff010113          	addi	sp,sp,-16
    800043f4:	00813423          	sd	s0,8(sp)
    800043f8:	01010413          	addi	s0,sp,16
    800043fc:	00003717          	auipc	a4,0x3
    80004400:	edc72703          	lw	a4,-292(a4) # 800072d8 <panicked>
    80004404:	02071663          	bnez	a4,80004430 <uartputc_sync+0x40>
    80004408:	00050793          	mv	a5,a0
    8000440c:	100006b7          	lui	a3,0x10000
    80004410:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004414:	02077713          	andi	a4,a4,32
    80004418:	fe070ce3          	beqz	a4,80004410 <uartputc_sync+0x20>
    8000441c:	0ff7f793          	andi	a5,a5,255
    80004420:	00f68023          	sb	a5,0(a3)
    80004424:	00813403          	ld	s0,8(sp)
    80004428:	01010113          	addi	sp,sp,16
    8000442c:	00008067          	ret
    80004430:	0000006f          	j	80004430 <uartputc_sync+0x40>

0000000080004434 <uartstart>:
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00813423          	sd	s0,8(sp)
    8000443c:	01010413          	addi	s0,sp,16
    80004440:	00003617          	auipc	a2,0x3
    80004444:	ea060613          	addi	a2,a2,-352 # 800072e0 <uart_tx_r>
    80004448:	00003517          	auipc	a0,0x3
    8000444c:	ea050513          	addi	a0,a0,-352 # 800072e8 <uart_tx_w>
    80004450:	00063783          	ld	a5,0(a2)
    80004454:	00053703          	ld	a4,0(a0)
    80004458:	04f70263          	beq	a4,a5,8000449c <uartstart+0x68>
    8000445c:	100005b7          	lui	a1,0x10000
    80004460:	00004817          	auipc	a6,0x4
    80004464:	10080813          	addi	a6,a6,256 # 80008560 <uart_tx_buf>
    80004468:	01c0006f          	j	80004484 <uartstart+0x50>
    8000446c:	0006c703          	lbu	a4,0(a3)
    80004470:	00f63023          	sd	a5,0(a2)
    80004474:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004478:	00063783          	ld	a5,0(a2)
    8000447c:	00053703          	ld	a4,0(a0)
    80004480:	00f70e63          	beq	a4,a5,8000449c <uartstart+0x68>
    80004484:	01f7f713          	andi	a4,a5,31
    80004488:	00e806b3          	add	a3,a6,a4
    8000448c:	0055c703          	lbu	a4,5(a1)
    80004490:	00178793          	addi	a5,a5,1
    80004494:	02077713          	andi	a4,a4,32
    80004498:	fc071ae3          	bnez	a4,8000446c <uartstart+0x38>
    8000449c:	00813403          	ld	s0,8(sp)
    800044a0:	01010113          	addi	sp,sp,16
    800044a4:	00008067          	ret

00000000800044a8 <uartgetc>:
    800044a8:	ff010113          	addi	sp,sp,-16
    800044ac:	00813423          	sd	s0,8(sp)
    800044b0:	01010413          	addi	s0,sp,16
    800044b4:	10000737          	lui	a4,0x10000
    800044b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800044bc:	0017f793          	andi	a5,a5,1
    800044c0:	00078c63          	beqz	a5,800044d8 <uartgetc+0x30>
    800044c4:	00074503          	lbu	a0,0(a4)
    800044c8:	0ff57513          	andi	a0,a0,255
    800044cc:	00813403          	ld	s0,8(sp)
    800044d0:	01010113          	addi	sp,sp,16
    800044d4:	00008067          	ret
    800044d8:	fff00513          	li	a0,-1
    800044dc:	ff1ff06f          	j	800044cc <uartgetc+0x24>

00000000800044e0 <uartintr>:
    800044e0:	100007b7          	lui	a5,0x10000
    800044e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800044e8:	0017f793          	andi	a5,a5,1
    800044ec:	0a078463          	beqz	a5,80004594 <uartintr+0xb4>
    800044f0:	fe010113          	addi	sp,sp,-32
    800044f4:	00813823          	sd	s0,16(sp)
    800044f8:	00913423          	sd	s1,8(sp)
    800044fc:	00113c23          	sd	ra,24(sp)
    80004500:	02010413          	addi	s0,sp,32
    80004504:	100004b7          	lui	s1,0x10000
    80004508:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000450c:	0ff57513          	andi	a0,a0,255
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	534080e7          	jalr	1332(ra) # 80003a44 <consoleintr>
    80004518:	0054c783          	lbu	a5,5(s1)
    8000451c:	0017f793          	andi	a5,a5,1
    80004520:	fe0794e3          	bnez	a5,80004508 <uartintr+0x28>
    80004524:	00003617          	auipc	a2,0x3
    80004528:	dbc60613          	addi	a2,a2,-580 # 800072e0 <uart_tx_r>
    8000452c:	00003517          	auipc	a0,0x3
    80004530:	dbc50513          	addi	a0,a0,-580 # 800072e8 <uart_tx_w>
    80004534:	00063783          	ld	a5,0(a2)
    80004538:	00053703          	ld	a4,0(a0)
    8000453c:	04f70263          	beq	a4,a5,80004580 <uartintr+0xa0>
    80004540:	100005b7          	lui	a1,0x10000
    80004544:	00004817          	auipc	a6,0x4
    80004548:	01c80813          	addi	a6,a6,28 # 80008560 <uart_tx_buf>
    8000454c:	01c0006f          	j	80004568 <uartintr+0x88>
    80004550:	0006c703          	lbu	a4,0(a3)
    80004554:	00f63023          	sd	a5,0(a2)
    80004558:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000455c:	00063783          	ld	a5,0(a2)
    80004560:	00053703          	ld	a4,0(a0)
    80004564:	00f70e63          	beq	a4,a5,80004580 <uartintr+0xa0>
    80004568:	01f7f713          	andi	a4,a5,31
    8000456c:	00e806b3          	add	a3,a6,a4
    80004570:	0055c703          	lbu	a4,5(a1)
    80004574:	00178793          	addi	a5,a5,1
    80004578:	02077713          	andi	a4,a4,32
    8000457c:	fc071ae3          	bnez	a4,80004550 <uartintr+0x70>
    80004580:	01813083          	ld	ra,24(sp)
    80004584:	01013403          	ld	s0,16(sp)
    80004588:	00813483          	ld	s1,8(sp)
    8000458c:	02010113          	addi	sp,sp,32
    80004590:	00008067          	ret
    80004594:	00003617          	auipc	a2,0x3
    80004598:	d4c60613          	addi	a2,a2,-692 # 800072e0 <uart_tx_r>
    8000459c:	00003517          	auipc	a0,0x3
    800045a0:	d4c50513          	addi	a0,a0,-692 # 800072e8 <uart_tx_w>
    800045a4:	00063783          	ld	a5,0(a2)
    800045a8:	00053703          	ld	a4,0(a0)
    800045ac:	04f70263          	beq	a4,a5,800045f0 <uartintr+0x110>
    800045b0:	100005b7          	lui	a1,0x10000
    800045b4:	00004817          	auipc	a6,0x4
    800045b8:	fac80813          	addi	a6,a6,-84 # 80008560 <uart_tx_buf>
    800045bc:	01c0006f          	j	800045d8 <uartintr+0xf8>
    800045c0:	0006c703          	lbu	a4,0(a3)
    800045c4:	00f63023          	sd	a5,0(a2)
    800045c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800045cc:	00063783          	ld	a5,0(a2)
    800045d0:	00053703          	ld	a4,0(a0)
    800045d4:	02f70063          	beq	a4,a5,800045f4 <uartintr+0x114>
    800045d8:	01f7f713          	andi	a4,a5,31
    800045dc:	00e806b3          	add	a3,a6,a4
    800045e0:	0055c703          	lbu	a4,5(a1)
    800045e4:	00178793          	addi	a5,a5,1
    800045e8:	02077713          	andi	a4,a4,32
    800045ec:	fc071ae3          	bnez	a4,800045c0 <uartintr+0xe0>
    800045f0:	00008067          	ret
    800045f4:	00008067          	ret

00000000800045f8 <kinit>:
    800045f8:	fc010113          	addi	sp,sp,-64
    800045fc:	02913423          	sd	s1,40(sp)
    80004600:	fffff7b7          	lui	a5,0xfffff
    80004604:	00005497          	auipc	s1,0x5
    80004608:	f7b48493          	addi	s1,s1,-133 # 8000957f <end+0xfff>
    8000460c:	02813823          	sd	s0,48(sp)
    80004610:	01313c23          	sd	s3,24(sp)
    80004614:	00f4f4b3          	and	s1,s1,a5
    80004618:	02113c23          	sd	ra,56(sp)
    8000461c:	03213023          	sd	s2,32(sp)
    80004620:	01413823          	sd	s4,16(sp)
    80004624:	01513423          	sd	s5,8(sp)
    80004628:	04010413          	addi	s0,sp,64
    8000462c:	000017b7          	lui	a5,0x1
    80004630:	01100993          	li	s3,17
    80004634:	00f487b3          	add	a5,s1,a5
    80004638:	01b99993          	slli	s3,s3,0x1b
    8000463c:	06f9e063          	bltu	s3,a5,8000469c <kinit+0xa4>
    80004640:	00004a97          	auipc	s5,0x4
    80004644:	f40a8a93          	addi	s5,s5,-192 # 80008580 <end>
    80004648:	0754ec63          	bltu	s1,s5,800046c0 <kinit+0xc8>
    8000464c:	0734fa63          	bgeu	s1,s3,800046c0 <kinit+0xc8>
    80004650:	00088a37          	lui	s4,0x88
    80004654:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004658:	00003917          	auipc	s2,0x3
    8000465c:	c9890913          	addi	s2,s2,-872 # 800072f0 <kmem>
    80004660:	00ca1a13          	slli	s4,s4,0xc
    80004664:	0140006f          	j	80004678 <kinit+0x80>
    80004668:	000017b7          	lui	a5,0x1
    8000466c:	00f484b3          	add	s1,s1,a5
    80004670:	0554e863          	bltu	s1,s5,800046c0 <kinit+0xc8>
    80004674:	0534f663          	bgeu	s1,s3,800046c0 <kinit+0xc8>
    80004678:	00001637          	lui	a2,0x1
    8000467c:	00100593          	li	a1,1
    80004680:	00048513          	mv	a0,s1
    80004684:	00000097          	auipc	ra,0x0
    80004688:	5e4080e7          	jalr	1508(ra) # 80004c68 <__memset>
    8000468c:	00093783          	ld	a5,0(s2)
    80004690:	00f4b023          	sd	a5,0(s1)
    80004694:	00993023          	sd	s1,0(s2)
    80004698:	fd4498e3          	bne	s1,s4,80004668 <kinit+0x70>
    8000469c:	03813083          	ld	ra,56(sp)
    800046a0:	03013403          	ld	s0,48(sp)
    800046a4:	02813483          	ld	s1,40(sp)
    800046a8:	02013903          	ld	s2,32(sp)
    800046ac:	01813983          	ld	s3,24(sp)
    800046b0:	01013a03          	ld	s4,16(sp)
    800046b4:	00813a83          	ld	s5,8(sp)
    800046b8:	04010113          	addi	sp,sp,64
    800046bc:	00008067          	ret
    800046c0:	00002517          	auipc	a0,0x2
    800046c4:	c4050513          	addi	a0,a0,-960 # 80006300 <digits+0x18>
    800046c8:	fffff097          	auipc	ra,0xfffff
    800046cc:	4b4080e7          	jalr	1204(ra) # 80003b7c <panic>

00000000800046d0 <freerange>:
    800046d0:	fc010113          	addi	sp,sp,-64
    800046d4:	000017b7          	lui	a5,0x1
    800046d8:	02913423          	sd	s1,40(sp)
    800046dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800046e0:	009504b3          	add	s1,a0,s1
    800046e4:	fffff537          	lui	a0,0xfffff
    800046e8:	02813823          	sd	s0,48(sp)
    800046ec:	02113c23          	sd	ra,56(sp)
    800046f0:	03213023          	sd	s2,32(sp)
    800046f4:	01313c23          	sd	s3,24(sp)
    800046f8:	01413823          	sd	s4,16(sp)
    800046fc:	01513423          	sd	s5,8(sp)
    80004700:	01613023          	sd	s6,0(sp)
    80004704:	04010413          	addi	s0,sp,64
    80004708:	00a4f4b3          	and	s1,s1,a0
    8000470c:	00f487b3          	add	a5,s1,a5
    80004710:	06f5e463          	bltu	a1,a5,80004778 <freerange+0xa8>
    80004714:	00004a97          	auipc	s5,0x4
    80004718:	e6ca8a93          	addi	s5,s5,-404 # 80008580 <end>
    8000471c:	0954e263          	bltu	s1,s5,800047a0 <freerange+0xd0>
    80004720:	01100993          	li	s3,17
    80004724:	01b99993          	slli	s3,s3,0x1b
    80004728:	0734fc63          	bgeu	s1,s3,800047a0 <freerange+0xd0>
    8000472c:	00058a13          	mv	s4,a1
    80004730:	00003917          	auipc	s2,0x3
    80004734:	bc090913          	addi	s2,s2,-1088 # 800072f0 <kmem>
    80004738:	00002b37          	lui	s6,0x2
    8000473c:	0140006f          	j	80004750 <freerange+0x80>
    80004740:	000017b7          	lui	a5,0x1
    80004744:	00f484b3          	add	s1,s1,a5
    80004748:	0554ec63          	bltu	s1,s5,800047a0 <freerange+0xd0>
    8000474c:	0534fa63          	bgeu	s1,s3,800047a0 <freerange+0xd0>
    80004750:	00001637          	lui	a2,0x1
    80004754:	00100593          	li	a1,1
    80004758:	00048513          	mv	a0,s1
    8000475c:	00000097          	auipc	ra,0x0
    80004760:	50c080e7          	jalr	1292(ra) # 80004c68 <__memset>
    80004764:	00093703          	ld	a4,0(s2)
    80004768:	016487b3          	add	a5,s1,s6
    8000476c:	00e4b023          	sd	a4,0(s1)
    80004770:	00993023          	sd	s1,0(s2)
    80004774:	fcfa76e3          	bgeu	s4,a5,80004740 <freerange+0x70>
    80004778:	03813083          	ld	ra,56(sp)
    8000477c:	03013403          	ld	s0,48(sp)
    80004780:	02813483          	ld	s1,40(sp)
    80004784:	02013903          	ld	s2,32(sp)
    80004788:	01813983          	ld	s3,24(sp)
    8000478c:	01013a03          	ld	s4,16(sp)
    80004790:	00813a83          	ld	s5,8(sp)
    80004794:	00013b03          	ld	s6,0(sp)
    80004798:	04010113          	addi	sp,sp,64
    8000479c:	00008067          	ret
    800047a0:	00002517          	auipc	a0,0x2
    800047a4:	b6050513          	addi	a0,a0,-1184 # 80006300 <digits+0x18>
    800047a8:	fffff097          	auipc	ra,0xfffff
    800047ac:	3d4080e7          	jalr	980(ra) # 80003b7c <panic>

00000000800047b0 <kfree>:
    800047b0:	fe010113          	addi	sp,sp,-32
    800047b4:	00813823          	sd	s0,16(sp)
    800047b8:	00113c23          	sd	ra,24(sp)
    800047bc:	00913423          	sd	s1,8(sp)
    800047c0:	02010413          	addi	s0,sp,32
    800047c4:	03451793          	slli	a5,a0,0x34
    800047c8:	04079c63          	bnez	a5,80004820 <kfree+0x70>
    800047cc:	00004797          	auipc	a5,0x4
    800047d0:	db478793          	addi	a5,a5,-588 # 80008580 <end>
    800047d4:	00050493          	mv	s1,a0
    800047d8:	04f56463          	bltu	a0,a5,80004820 <kfree+0x70>
    800047dc:	01100793          	li	a5,17
    800047e0:	01b79793          	slli	a5,a5,0x1b
    800047e4:	02f57e63          	bgeu	a0,a5,80004820 <kfree+0x70>
    800047e8:	00001637          	lui	a2,0x1
    800047ec:	00100593          	li	a1,1
    800047f0:	00000097          	auipc	ra,0x0
    800047f4:	478080e7          	jalr	1144(ra) # 80004c68 <__memset>
    800047f8:	00003797          	auipc	a5,0x3
    800047fc:	af878793          	addi	a5,a5,-1288 # 800072f0 <kmem>
    80004800:	0007b703          	ld	a4,0(a5)
    80004804:	01813083          	ld	ra,24(sp)
    80004808:	01013403          	ld	s0,16(sp)
    8000480c:	00e4b023          	sd	a4,0(s1)
    80004810:	0097b023          	sd	s1,0(a5)
    80004814:	00813483          	ld	s1,8(sp)
    80004818:	02010113          	addi	sp,sp,32
    8000481c:	00008067          	ret
    80004820:	00002517          	auipc	a0,0x2
    80004824:	ae050513          	addi	a0,a0,-1312 # 80006300 <digits+0x18>
    80004828:	fffff097          	auipc	ra,0xfffff
    8000482c:	354080e7          	jalr	852(ra) # 80003b7c <panic>

0000000080004830 <kalloc>:
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	00813823          	sd	s0,16(sp)
    80004838:	00913423          	sd	s1,8(sp)
    8000483c:	00113c23          	sd	ra,24(sp)
    80004840:	02010413          	addi	s0,sp,32
    80004844:	00003797          	auipc	a5,0x3
    80004848:	aac78793          	addi	a5,a5,-1364 # 800072f0 <kmem>
    8000484c:	0007b483          	ld	s1,0(a5)
    80004850:	02048063          	beqz	s1,80004870 <kalloc+0x40>
    80004854:	0004b703          	ld	a4,0(s1)
    80004858:	00001637          	lui	a2,0x1
    8000485c:	00500593          	li	a1,5
    80004860:	00048513          	mv	a0,s1
    80004864:	00e7b023          	sd	a4,0(a5)
    80004868:	00000097          	auipc	ra,0x0
    8000486c:	400080e7          	jalr	1024(ra) # 80004c68 <__memset>
    80004870:	01813083          	ld	ra,24(sp)
    80004874:	01013403          	ld	s0,16(sp)
    80004878:	00048513          	mv	a0,s1
    8000487c:	00813483          	ld	s1,8(sp)
    80004880:	02010113          	addi	sp,sp,32
    80004884:	00008067          	ret

0000000080004888 <initlock>:
    80004888:	ff010113          	addi	sp,sp,-16
    8000488c:	00813423          	sd	s0,8(sp)
    80004890:	01010413          	addi	s0,sp,16
    80004894:	00813403          	ld	s0,8(sp)
    80004898:	00b53423          	sd	a1,8(a0)
    8000489c:	00052023          	sw	zero,0(a0)
    800048a0:	00053823          	sd	zero,16(a0)
    800048a4:	01010113          	addi	sp,sp,16
    800048a8:	00008067          	ret

00000000800048ac <acquire>:
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00913423          	sd	s1,8(sp)
    800048b8:	00113c23          	sd	ra,24(sp)
    800048bc:	01213023          	sd	s2,0(sp)
    800048c0:	02010413          	addi	s0,sp,32
    800048c4:	00050493          	mv	s1,a0
    800048c8:	10002973          	csrr	s2,sstatus
    800048cc:	100027f3          	csrr	a5,sstatus
    800048d0:	ffd7f793          	andi	a5,a5,-3
    800048d4:	10079073          	csrw	sstatus,a5
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	8e8080e7          	jalr	-1816(ra) # 800031c0 <mycpu>
    800048e0:	07852783          	lw	a5,120(a0)
    800048e4:	06078e63          	beqz	a5,80004960 <acquire+0xb4>
    800048e8:	fffff097          	auipc	ra,0xfffff
    800048ec:	8d8080e7          	jalr	-1832(ra) # 800031c0 <mycpu>
    800048f0:	07852783          	lw	a5,120(a0)
    800048f4:	0004a703          	lw	a4,0(s1)
    800048f8:	0017879b          	addiw	a5,a5,1
    800048fc:	06f52c23          	sw	a5,120(a0)
    80004900:	04071063          	bnez	a4,80004940 <acquire+0x94>
    80004904:	00100713          	li	a4,1
    80004908:	00070793          	mv	a5,a4
    8000490c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004910:	0007879b          	sext.w	a5,a5
    80004914:	fe079ae3          	bnez	a5,80004908 <acquire+0x5c>
    80004918:	0ff0000f          	fence
    8000491c:	fffff097          	auipc	ra,0xfffff
    80004920:	8a4080e7          	jalr	-1884(ra) # 800031c0 <mycpu>
    80004924:	01813083          	ld	ra,24(sp)
    80004928:	01013403          	ld	s0,16(sp)
    8000492c:	00a4b823          	sd	a0,16(s1)
    80004930:	00013903          	ld	s2,0(sp)
    80004934:	00813483          	ld	s1,8(sp)
    80004938:	02010113          	addi	sp,sp,32
    8000493c:	00008067          	ret
    80004940:	0104b903          	ld	s2,16(s1)
    80004944:	fffff097          	auipc	ra,0xfffff
    80004948:	87c080e7          	jalr	-1924(ra) # 800031c0 <mycpu>
    8000494c:	faa91ce3          	bne	s2,a0,80004904 <acquire+0x58>
    80004950:	00002517          	auipc	a0,0x2
    80004954:	9b850513          	addi	a0,a0,-1608 # 80006308 <digits+0x20>
    80004958:	fffff097          	auipc	ra,0xfffff
    8000495c:	224080e7          	jalr	548(ra) # 80003b7c <panic>
    80004960:	00195913          	srli	s2,s2,0x1
    80004964:	fffff097          	auipc	ra,0xfffff
    80004968:	85c080e7          	jalr	-1956(ra) # 800031c0 <mycpu>
    8000496c:	00197913          	andi	s2,s2,1
    80004970:	07252e23          	sw	s2,124(a0)
    80004974:	f75ff06f          	j	800048e8 <acquire+0x3c>

0000000080004978 <release>:
    80004978:	fe010113          	addi	sp,sp,-32
    8000497c:	00813823          	sd	s0,16(sp)
    80004980:	00113c23          	sd	ra,24(sp)
    80004984:	00913423          	sd	s1,8(sp)
    80004988:	01213023          	sd	s2,0(sp)
    8000498c:	02010413          	addi	s0,sp,32
    80004990:	00052783          	lw	a5,0(a0)
    80004994:	00079a63          	bnez	a5,800049a8 <release+0x30>
    80004998:	00002517          	auipc	a0,0x2
    8000499c:	97850513          	addi	a0,a0,-1672 # 80006310 <digits+0x28>
    800049a0:	fffff097          	auipc	ra,0xfffff
    800049a4:	1dc080e7          	jalr	476(ra) # 80003b7c <panic>
    800049a8:	01053903          	ld	s2,16(a0)
    800049ac:	00050493          	mv	s1,a0
    800049b0:	fffff097          	auipc	ra,0xfffff
    800049b4:	810080e7          	jalr	-2032(ra) # 800031c0 <mycpu>
    800049b8:	fea910e3          	bne	s2,a0,80004998 <release+0x20>
    800049bc:	0004b823          	sd	zero,16(s1)
    800049c0:	0ff0000f          	fence
    800049c4:	0f50000f          	fence	iorw,ow
    800049c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800049cc:	ffffe097          	auipc	ra,0xffffe
    800049d0:	7f4080e7          	jalr	2036(ra) # 800031c0 <mycpu>
    800049d4:	100027f3          	csrr	a5,sstatus
    800049d8:	0027f793          	andi	a5,a5,2
    800049dc:	04079a63          	bnez	a5,80004a30 <release+0xb8>
    800049e0:	07852783          	lw	a5,120(a0)
    800049e4:	02f05e63          	blez	a5,80004a20 <release+0xa8>
    800049e8:	fff7871b          	addiw	a4,a5,-1
    800049ec:	06e52c23          	sw	a4,120(a0)
    800049f0:	00071c63          	bnez	a4,80004a08 <release+0x90>
    800049f4:	07c52783          	lw	a5,124(a0)
    800049f8:	00078863          	beqz	a5,80004a08 <release+0x90>
    800049fc:	100027f3          	csrr	a5,sstatus
    80004a00:	0027e793          	ori	a5,a5,2
    80004a04:	10079073          	csrw	sstatus,a5
    80004a08:	01813083          	ld	ra,24(sp)
    80004a0c:	01013403          	ld	s0,16(sp)
    80004a10:	00813483          	ld	s1,8(sp)
    80004a14:	00013903          	ld	s2,0(sp)
    80004a18:	02010113          	addi	sp,sp,32
    80004a1c:	00008067          	ret
    80004a20:	00002517          	auipc	a0,0x2
    80004a24:	91050513          	addi	a0,a0,-1776 # 80006330 <digits+0x48>
    80004a28:	fffff097          	auipc	ra,0xfffff
    80004a2c:	154080e7          	jalr	340(ra) # 80003b7c <panic>
    80004a30:	00002517          	auipc	a0,0x2
    80004a34:	8e850513          	addi	a0,a0,-1816 # 80006318 <digits+0x30>
    80004a38:	fffff097          	auipc	ra,0xfffff
    80004a3c:	144080e7          	jalr	324(ra) # 80003b7c <panic>

0000000080004a40 <holding>:
    80004a40:	00052783          	lw	a5,0(a0)
    80004a44:	00079663          	bnez	a5,80004a50 <holding+0x10>
    80004a48:	00000513          	li	a0,0
    80004a4c:	00008067          	ret
    80004a50:	fe010113          	addi	sp,sp,-32
    80004a54:	00813823          	sd	s0,16(sp)
    80004a58:	00913423          	sd	s1,8(sp)
    80004a5c:	00113c23          	sd	ra,24(sp)
    80004a60:	02010413          	addi	s0,sp,32
    80004a64:	01053483          	ld	s1,16(a0)
    80004a68:	ffffe097          	auipc	ra,0xffffe
    80004a6c:	758080e7          	jalr	1880(ra) # 800031c0 <mycpu>
    80004a70:	01813083          	ld	ra,24(sp)
    80004a74:	01013403          	ld	s0,16(sp)
    80004a78:	40a48533          	sub	a0,s1,a0
    80004a7c:	00153513          	seqz	a0,a0
    80004a80:	00813483          	ld	s1,8(sp)
    80004a84:	02010113          	addi	sp,sp,32
    80004a88:	00008067          	ret

0000000080004a8c <push_off>:
    80004a8c:	fe010113          	addi	sp,sp,-32
    80004a90:	00813823          	sd	s0,16(sp)
    80004a94:	00113c23          	sd	ra,24(sp)
    80004a98:	00913423          	sd	s1,8(sp)
    80004a9c:	02010413          	addi	s0,sp,32
    80004aa0:	100024f3          	csrr	s1,sstatus
    80004aa4:	100027f3          	csrr	a5,sstatus
    80004aa8:	ffd7f793          	andi	a5,a5,-3
    80004aac:	10079073          	csrw	sstatus,a5
    80004ab0:	ffffe097          	auipc	ra,0xffffe
    80004ab4:	710080e7          	jalr	1808(ra) # 800031c0 <mycpu>
    80004ab8:	07852783          	lw	a5,120(a0)
    80004abc:	02078663          	beqz	a5,80004ae8 <push_off+0x5c>
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	700080e7          	jalr	1792(ra) # 800031c0 <mycpu>
    80004ac8:	07852783          	lw	a5,120(a0)
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	0017879b          	addiw	a5,a5,1
    80004ad8:	06f52c23          	sw	a5,120(a0)
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	02010113          	addi	sp,sp,32
    80004ae4:	00008067          	ret
    80004ae8:	0014d493          	srli	s1,s1,0x1
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	6d4080e7          	jalr	1748(ra) # 800031c0 <mycpu>
    80004af4:	0014f493          	andi	s1,s1,1
    80004af8:	06952e23          	sw	s1,124(a0)
    80004afc:	fc5ff06f          	j	80004ac0 <push_off+0x34>

0000000080004b00 <pop_off>:
    80004b00:	ff010113          	addi	sp,sp,-16
    80004b04:	00813023          	sd	s0,0(sp)
    80004b08:	00113423          	sd	ra,8(sp)
    80004b0c:	01010413          	addi	s0,sp,16
    80004b10:	ffffe097          	auipc	ra,0xffffe
    80004b14:	6b0080e7          	jalr	1712(ra) # 800031c0 <mycpu>
    80004b18:	100027f3          	csrr	a5,sstatus
    80004b1c:	0027f793          	andi	a5,a5,2
    80004b20:	04079663          	bnez	a5,80004b6c <pop_off+0x6c>
    80004b24:	07852783          	lw	a5,120(a0)
    80004b28:	02f05a63          	blez	a5,80004b5c <pop_off+0x5c>
    80004b2c:	fff7871b          	addiw	a4,a5,-1
    80004b30:	06e52c23          	sw	a4,120(a0)
    80004b34:	00071c63          	bnez	a4,80004b4c <pop_off+0x4c>
    80004b38:	07c52783          	lw	a5,124(a0)
    80004b3c:	00078863          	beqz	a5,80004b4c <pop_off+0x4c>
    80004b40:	100027f3          	csrr	a5,sstatus
    80004b44:	0027e793          	ori	a5,a5,2
    80004b48:	10079073          	csrw	sstatus,a5
    80004b4c:	00813083          	ld	ra,8(sp)
    80004b50:	00013403          	ld	s0,0(sp)
    80004b54:	01010113          	addi	sp,sp,16
    80004b58:	00008067          	ret
    80004b5c:	00001517          	auipc	a0,0x1
    80004b60:	7d450513          	addi	a0,a0,2004 # 80006330 <digits+0x48>
    80004b64:	fffff097          	auipc	ra,0xfffff
    80004b68:	018080e7          	jalr	24(ra) # 80003b7c <panic>
    80004b6c:	00001517          	auipc	a0,0x1
    80004b70:	7ac50513          	addi	a0,a0,1964 # 80006318 <digits+0x30>
    80004b74:	fffff097          	auipc	ra,0xfffff
    80004b78:	008080e7          	jalr	8(ra) # 80003b7c <panic>

0000000080004b7c <push_on>:
    80004b7c:	fe010113          	addi	sp,sp,-32
    80004b80:	00813823          	sd	s0,16(sp)
    80004b84:	00113c23          	sd	ra,24(sp)
    80004b88:	00913423          	sd	s1,8(sp)
    80004b8c:	02010413          	addi	s0,sp,32
    80004b90:	100024f3          	csrr	s1,sstatus
    80004b94:	100027f3          	csrr	a5,sstatus
    80004b98:	0027e793          	ori	a5,a5,2
    80004b9c:	10079073          	csrw	sstatus,a5
    80004ba0:	ffffe097          	auipc	ra,0xffffe
    80004ba4:	620080e7          	jalr	1568(ra) # 800031c0 <mycpu>
    80004ba8:	07852783          	lw	a5,120(a0)
    80004bac:	02078663          	beqz	a5,80004bd8 <push_on+0x5c>
    80004bb0:	ffffe097          	auipc	ra,0xffffe
    80004bb4:	610080e7          	jalr	1552(ra) # 800031c0 <mycpu>
    80004bb8:	07852783          	lw	a5,120(a0)
    80004bbc:	01813083          	ld	ra,24(sp)
    80004bc0:	01013403          	ld	s0,16(sp)
    80004bc4:	0017879b          	addiw	a5,a5,1
    80004bc8:	06f52c23          	sw	a5,120(a0)
    80004bcc:	00813483          	ld	s1,8(sp)
    80004bd0:	02010113          	addi	sp,sp,32
    80004bd4:	00008067          	ret
    80004bd8:	0014d493          	srli	s1,s1,0x1
    80004bdc:	ffffe097          	auipc	ra,0xffffe
    80004be0:	5e4080e7          	jalr	1508(ra) # 800031c0 <mycpu>
    80004be4:	0014f493          	andi	s1,s1,1
    80004be8:	06952e23          	sw	s1,124(a0)
    80004bec:	fc5ff06f          	j	80004bb0 <push_on+0x34>

0000000080004bf0 <pop_on>:
    80004bf0:	ff010113          	addi	sp,sp,-16
    80004bf4:	00813023          	sd	s0,0(sp)
    80004bf8:	00113423          	sd	ra,8(sp)
    80004bfc:	01010413          	addi	s0,sp,16
    80004c00:	ffffe097          	auipc	ra,0xffffe
    80004c04:	5c0080e7          	jalr	1472(ra) # 800031c0 <mycpu>
    80004c08:	100027f3          	csrr	a5,sstatus
    80004c0c:	0027f793          	andi	a5,a5,2
    80004c10:	04078463          	beqz	a5,80004c58 <pop_on+0x68>
    80004c14:	07852783          	lw	a5,120(a0)
    80004c18:	02f05863          	blez	a5,80004c48 <pop_on+0x58>
    80004c1c:	fff7879b          	addiw	a5,a5,-1
    80004c20:	06f52c23          	sw	a5,120(a0)
    80004c24:	07853783          	ld	a5,120(a0)
    80004c28:	00079863          	bnez	a5,80004c38 <pop_on+0x48>
    80004c2c:	100027f3          	csrr	a5,sstatus
    80004c30:	ffd7f793          	andi	a5,a5,-3
    80004c34:	10079073          	csrw	sstatus,a5
    80004c38:	00813083          	ld	ra,8(sp)
    80004c3c:	00013403          	ld	s0,0(sp)
    80004c40:	01010113          	addi	sp,sp,16
    80004c44:	00008067          	ret
    80004c48:	00001517          	auipc	a0,0x1
    80004c4c:	71050513          	addi	a0,a0,1808 # 80006358 <digits+0x70>
    80004c50:	fffff097          	auipc	ra,0xfffff
    80004c54:	f2c080e7          	jalr	-212(ra) # 80003b7c <panic>
    80004c58:	00001517          	auipc	a0,0x1
    80004c5c:	6e050513          	addi	a0,a0,1760 # 80006338 <digits+0x50>
    80004c60:	fffff097          	auipc	ra,0xfffff
    80004c64:	f1c080e7          	jalr	-228(ra) # 80003b7c <panic>

0000000080004c68 <__memset>:
    80004c68:	ff010113          	addi	sp,sp,-16
    80004c6c:	00813423          	sd	s0,8(sp)
    80004c70:	01010413          	addi	s0,sp,16
    80004c74:	1a060e63          	beqz	a2,80004e30 <__memset+0x1c8>
    80004c78:	40a007b3          	neg	a5,a0
    80004c7c:	0077f793          	andi	a5,a5,7
    80004c80:	00778693          	addi	a3,a5,7
    80004c84:	00b00813          	li	a6,11
    80004c88:	0ff5f593          	andi	a1,a1,255
    80004c8c:	fff6071b          	addiw	a4,a2,-1
    80004c90:	1b06e663          	bltu	a3,a6,80004e3c <__memset+0x1d4>
    80004c94:	1cd76463          	bltu	a4,a3,80004e5c <__memset+0x1f4>
    80004c98:	1a078e63          	beqz	a5,80004e54 <__memset+0x1ec>
    80004c9c:	00b50023          	sb	a1,0(a0)
    80004ca0:	00100713          	li	a4,1
    80004ca4:	1ae78463          	beq	a5,a4,80004e4c <__memset+0x1e4>
    80004ca8:	00b500a3          	sb	a1,1(a0)
    80004cac:	00200713          	li	a4,2
    80004cb0:	1ae78a63          	beq	a5,a4,80004e64 <__memset+0x1fc>
    80004cb4:	00b50123          	sb	a1,2(a0)
    80004cb8:	00300713          	li	a4,3
    80004cbc:	18e78463          	beq	a5,a4,80004e44 <__memset+0x1dc>
    80004cc0:	00b501a3          	sb	a1,3(a0)
    80004cc4:	00400713          	li	a4,4
    80004cc8:	1ae78263          	beq	a5,a4,80004e6c <__memset+0x204>
    80004ccc:	00b50223          	sb	a1,4(a0)
    80004cd0:	00500713          	li	a4,5
    80004cd4:	1ae78063          	beq	a5,a4,80004e74 <__memset+0x20c>
    80004cd8:	00b502a3          	sb	a1,5(a0)
    80004cdc:	00700713          	li	a4,7
    80004ce0:	18e79e63          	bne	a5,a4,80004e7c <__memset+0x214>
    80004ce4:	00b50323          	sb	a1,6(a0)
    80004ce8:	00700e93          	li	t4,7
    80004cec:	00859713          	slli	a4,a1,0x8
    80004cf0:	00e5e733          	or	a4,a1,a4
    80004cf4:	01059e13          	slli	t3,a1,0x10
    80004cf8:	01c76e33          	or	t3,a4,t3
    80004cfc:	01859313          	slli	t1,a1,0x18
    80004d00:	006e6333          	or	t1,t3,t1
    80004d04:	02059893          	slli	a7,a1,0x20
    80004d08:	40f60e3b          	subw	t3,a2,a5
    80004d0c:	011368b3          	or	a7,t1,a7
    80004d10:	02859813          	slli	a6,a1,0x28
    80004d14:	0108e833          	or	a6,a7,a6
    80004d18:	03059693          	slli	a3,a1,0x30
    80004d1c:	003e589b          	srliw	a7,t3,0x3
    80004d20:	00d866b3          	or	a3,a6,a3
    80004d24:	03859713          	slli	a4,a1,0x38
    80004d28:	00389813          	slli	a6,a7,0x3
    80004d2c:	00f507b3          	add	a5,a0,a5
    80004d30:	00e6e733          	or	a4,a3,a4
    80004d34:	000e089b          	sext.w	a7,t3
    80004d38:	00f806b3          	add	a3,a6,a5
    80004d3c:	00e7b023          	sd	a4,0(a5)
    80004d40:	00878793          	addi	a5,a5,8
    80004d44:	fed79ce3          	bne	a5,a3,80004d3c <__memset+0xd4>
    80004d48:	ff8e7793          	andi	a5,t3,-8
    80004d4c:	0007871b          	sext.w	a4,a5
    80004d50:	01d787bb          	addw	a5,a5,t4
    80004d54:	0ce88e63          	beq	a7,a4,80004e30 <__memset+0x1c8>
    80004d58:	00f50733          	add	a4,a0,a5
    80004d5c:	00b70023          	sb	a1,0(a4)
    80004d60:	0017871b          	addiw	a4,a5,1
    80004d64:	0cc77663          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004d68:	00e50733          	add	a4,a0,a4
    80004d6c:	00b70023          	sb	a1,0(a4)
    80004d70:	0027871b          	addiw	a4,a5,2
    80004d74:	0ac77e63          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004d78:	00e50733          	add	a4,a0,a4
    80004d7c:	00b70023          	sb	a1,0(a4)
    80004d80:	0037871b          	addiw	a4,a5,3
    80004d84:	0ac77663          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004d88:	00e50733          	add	a4,a0,a4
    80004d8c:	00b70023          	sb	a1,0(a4)
    80004d90:	0047871b          	addiw	a4,a5,4
    80004d94:	08c77e63          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004d98:	00e50733          	add	a4,a0,a4
    80004d9c:	00b70023          	sb	a1,0(a4)
    80004da0:	0057871b          	addiw	a4,a5,5
    80004da4:	08c77663          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004da8:	00e50733          	add	a4,a0,a4
    80004dac:	00b70023          	sb	a1,0(a4)
    80004db0:	0067871b          	addiw	a4,a5,6
    80004db4:	06c77e63          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004db8:	00e50733          	add	a4,a0,a4
    80004dbc:	00b70023          	sb	a1,0(a4)
    80004dc0:	0077871b          	addiw	a4,a5,7
    80004dc4:	06c77663          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004dc8:	00e50733          	add	a4,a0,a4
    80004dcc:	00b70023          	sb	a1,0(a4)
    80004dd0:	0087871b          	addiw	a4,a5,8
    80004dd4:	04c77e63          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004dd8:	00e50733          	add	a4,a0,a4
    80004ddc:	00b70023          	sb	a1,0(a4)
    80004de0:	0097871b          	addiw	a4,a5,9
    80004de4:	04c77663          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004de8:	00e50733          	add	a4,a0,a4
    80004dec:	00b70023          	sb	a1,0(a4)
    80004df0:	00a7871b          	addiw	a4,a5,10
    80004df4:	02c77e63          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004df8:	00e50733          	add	a4,a0,a4
    80004dfc:	00b70023          	sb	a1,0(a4)
    80004e00:	00b7871b          	addiw	a4,a5,11
    80004e04:	02c77663          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004e08:	00e50733          	add	a4,a0,a4
    80004e0c:	00b70023          	sb	a1,0(a4)
    80004e10:	00c7871b          	addiw	a4,a5,12
    80004e14:	00c77e63          	bgeu	a4,a2,80004e30 <__memset+0x1c8>
    80004e18:	00e50733          	add	a4,a0,a4
    80004e1c:	00b70023          	sb	a1,0(a4)
    80004e20:	00d7879b          	addiw	a5,a5,13
    80004e24:	00c7f663          	bgeu	a5,a2,80004e30 <__memset+0x1c8>
    80004e28:	00f507b3          	add	a5,a0,a5
    80004e2c:	00b78023          	sb	a1,0(a5)
    80004e30:	00813403          	ld	s0,8(sp)
    80004e34:	01010113          	addi	sp,sp,16
    80004e38:	00008067          	ret
    80004e3c:	00b00693          	li	a3,11
    80004e40:	e55ff06f          	j	80004c94 <__memset+0x2c>
    80004e44:	00300e93          	li	t4,3
    80004e48:	ea5ff06f          	j	80004cec <__memset+0x84>
    80004e4c:	00100e93          	li	t4,1
    80004e50:	e9dff06f          	j	80004cec <__memset+0x84>
    80004e54:	00000e93          	li	t4,0
    80004e58:	e95ff06f          	j	80004cec <__memset+0x84>
    80004e5c:	00000793          	li	a5,0
    80004e60:	ef9ff06f          	j	80004d58 <__memset+0xf0>
    80004e64:	00200e93          	li	t4,2
    80004e68:	e85ff06f          	j	80004cec <__memset+0x84>
    80004e6c:	00400e93          	li	t4,4
    80004e70:	e7dff06f          	j	80004cec <__memset+0x84>
    80004e74:	00500e93          	li	t4,5
    80004e78:	e75ff06f          	j	80004cec <__memset+0x84>
    80004e7c:	00600e93          	li	t4,6
    80004e80:	e6dff06f          	j	80004cec <__memset+0x84>

0000000080004e84 <__memmove>:
    80004e84:	ff010113          	addi	sp,sp,-16
    80004e88:	00813423          	sd	s0,8(sp)
    80004e8c:	01010413          	addi	s0,sp,16
    80004e90:	0e060863          	beqz	a2,80004f80 <__memmove+0xfc>
    80004e94:	fff6069b          	addiw	a3,a2,-1
    80004e98:	0006881b          	sext.w	a6,a3
    80004e9c:	0ea5e863          	bltu	a1,a0,80004f8c <__memmove+0x108>
    80004ea0:	00758713          	addi	a4,a1,7
    80004ea4:	00a5e7b3          	or	a5,a1,a0
    80004ea8:	40a70733          	sub	a4,a4,a0
    80004eac:	0077f793          	andi	a5,a5,7
    80004eb0:	00f73713          	sltiu	a4,a4,15
    80004eb4:	00174713          	xori	a4,a4,1
    80004eb8:	0017b793          	seqz	a5,a5
    80004ebc:	00e7f7b3          	and	a5,a5,a4
    80004ec0:	10078863          	beqz	a5,80004fd0 <__memmove+0x14c>
    80004ec4:	00900793          	li	a5,9
    80004ec8:	1107f463          	bgeu	a5,a6,80004fd0 <__memmove+0x14c>
    80004ecc:	0036581b          	srliw	a6,a2,0x3
    80004ed0:	fff8081b          	addiw	a6,a6,-1
    80004ed4:	02081813          	slli	a6,a6,0x20
    80004ed8:	01d85893          	srli	a7,a6,0x1d
    80004edc:	00858813          	addi	a6,a1,8
    80004ee0:	00058793          	mv	a5,a1
    80004ee4:	00050713          	mv	a4,a0
    80004ee8:	01088833          	add	a6,a7,a6
    80004eec:	0007b883          	ld	a7,0(a5)
    80004ef0:	00878793          	addi	a5,a5,8
    80004ef4:	00870713          	addi	a4,a4,8
    80004ef8:	ff173c23          	sd	a7,-8(a4)
    80004efc:	ff0798e3          	bne	a5,a6,80004eec <__memmove+0x68>
    80004f00:	ff867713          	andi	a4,a2,-8
    80004f04:	02071793          	slli	a5,a4,0x20
    80004f08:	0207d793          	srli	a5,a5,0x20
    80004f0c:	00f585b3          	add	a1,a1,a5
    80004f10:	40e686bb          	subw	a3,a3,a4
    80004f14:	00f507b3          	add	a5,a0,a5
    80004f18:	06e60463          	beq	a2,a4,80004f80 <__memmove+0xfc>
    80004f1c:	0005c703          	lbu	a4,0(a1)
    80004f20:	00e78023          	sb	a4,0(a5)
    80004f24:	04068e63          	beqz	a3,80004f80 <__memmove+0xfc>
    80004f28:	0015c603          	lbu	a2,1(a1)
    80004f2c:	00100713          	li	a4,1
    80004f30:	00c780a3          	sb	a2,1(a5)
    80004f34:	04e68663          	beq	a3,a4,80004f80 <__memmove+0xfc>
    80004f38:	0025c603          	lbu	a2,2(a1)
    80004f3c:	00200713          	li	a4,2
    80004f40:	00c78123          	sb	a2,2(a5)
    80004f44:	02e68e63          	beq	a3,a4,80004f80 <__memmove+0xfc>
    80004f48:	0035c603          	lbu	a2,3(a1)
    80004f4c:	00300713          	li	a4,3
    80004f50:	00c781a3          	sb	a2,3(a5)
    80004f54:	02e68663          	beq	a3,a4,80004f80 <__memmove+0xfc>
    80004f58:	0045c603          	lbu	a2,4(a1)
    80004f5c:	00400713          	li	a4,4
    80004f60:	00c78223          	sb	a2,4(a5)
    80004f64:	00e68e63          	beq	a3,a4,80004f80 <__memmove+0xfc>
    80004f68:	0055c603          	lbu	a2,5(a1)
    80004f6c:	00500713          	li	a4,5
    80004f70:	00c782a3          	sb	a2,5(a5)
    80004f74:	00e68663          	beq	a3,a4,80004f80 <__memmove+0xfc>
    80004f78:	0065c703          	lbu	a4,6(a1)
    80004f7c:	00e78323          	sb	a4,6(a5)
    80004f80:	00813403          	ld	s0,8(sp)
    80004f84:	01010113          	addi	sp,sp,16
    80004f88:	00008067          	ret
    80004f8c:	02061713          	slli	a4,a2,0x20
    80004f90:	02075713          	srli	a4,a4,0x20
    80004f94:	00e587b3          	add	a5,a1,a4
    80004f98:	f0f574e3          	bgeu	a0,a5,80004ea0 <__memmove+0x1c>
    80004f9c:	02069613          	slli	a2,a3,0x20
    80004fa0:	02065613          	srli	a2,a2,0x20
    80004fa4:	fff64613          	not	a2,a2
    80004fa8:	00e50733          	add	a4,a0,a4
    80004fac:	00c78633          	add	a2,a5,a2
    80004fb0:	fff7c683          	lbu	a3,-1(a5)
    80004fb4:	fff78793          	addi	a5,a5,-1
    80004fb8:	fff70713          	addi	a4,a4,-1
    80004fbc:	00d70023          	sb	a3,0(a4)
    80004fc0:	fec798e3          	bne	a5,a2,80004fb0 <__memmove+0x12c>
    80004fc4:	00813403          	ld	s0,8(sp)
    80004fc8:	01010113          	addi	sp,sp,16
    80004fcc:	00008067          	ret
    80004fd0:	02069713          	slli	a4,a3,0x20
    80004fd4:	02075713          	srli	a4,a4,0x20
    80004fd8:	00170713          	addi	a4,a4,1
    80004fdc:	00e50733          	add	a4,a0,a4
    80004fe0:	00050793          	mv	a5,a0
    80004fe4:	0005c683          	lbu	a3,0(a1)
    80004fe8:	00178793          	addi	a5,a5,1
    80004fec:	00158593          	addi	a1,a1,1
    80004ff0:	fed78fa3          	sb	a3,-1(a5)
    80004ff4:	fee798e3          	bne	a5,a4,80004fe4 <__memmove+0x160>
    80004ff8:	f89ff06f          	j	80004f80 <__memmove+0xfc>

0000000080004ffc <__putc>:
    80004ffc:	fe010113          	addi	sp,sp,-32
    80005000:	00813823          	sd	s0,16(sp)
    80005004:	00113c23          	sd	ra,24(sp)
    80005008:	02010413          	addi	s0,sp,32
    8000500c:	00050793          	mv	a5,a0
    80005010:	fef40593          	addi	a1,s0,-17
    80005014:	00100613          	li	a2,1
    80005018:	00000513          	li	a0,0
    8000501c:	fef407a3          	sb	a5,-17(s0)
    80005020:	fffff097          	auipc	ra,0xfffff
    80005024:	b3c080e7          	jalr	-1220(ra) # 80003b5c <console_write>
    80005028:	01813083          	ld	ra,24(sp)
    8000502c:	01013403          	ld	s0,16(sp)
    80005030:	02010113          	addi	sp,sp,32
    80005034:	00008067          	ret

0000000080005038 <__getc>:
    80005038:	fe010113          	addi	sp,sp,-32
    8000503c:	00813823          	sd	s0,16(sp)
    80005040:	00113c23          	sd	ra,24(sp)
    80005044:	02010413          	addi	s0,sp,32
    80005048:	fe840593          	addi	a1,s0,-24
    8000504c:	00100613          	li	a2,1
    80005050:	00000513          	li	a0,0
    80005054:	fffff097          	auipc	ra,0xfffff
    80005058:	ae8080e7          	jalr	-1304(ra) # 80003b3c <console_read>
    8000505c:	fe844503          	lbu	a0,-24(s0)
    80005060:	01813083          	ld	ra,24(sp)
    80005064:	01013403          	ld	s0,16(sp)
    80005068:	02010113          	addi	sp,sp,32
    8000506c:	00008067          	ret

0000000080005070 <console_handler>:
    80005070:	fe010113          	addi	sp,sp,-32
    80005074:	00813823          	sd	s0,16(sp)
    80005078:	00113c23          	sd	ra,24(sp)
    8000507c:	00913423          	sd	s1,8(sp)
    80005080:	02010413          	addi	s0,sp,32
    80005084:	14202773          	csrr	a4,scause
    80005088:	100027f3          	csrr	a5,sstatus
    8000508c:	0027f793          	andi	a5,a5,2
    80005090:	06079e63          	bnez	a5,8000510c <console_handler+0x9c>
    80005094:	00074c63          	bltz	a4,800050ac <console_handler+0x3c>
    80005098:	01813083          	ld	ra,24(sp)
    8000509c:	01013403          	ld	s0,16(sp)
    800050a0:	00813483          	ld	s1,8(sp)
    800050a4:	02010113          	addi	sp,sp,32
    800050a8:	00008067          	ret
    800050ac:	0ff77713          	andi	a4,a4,255
    800050b0:	00900793          	li	a5,9
    800050b4:	fef712e3          	bne	a4,a5,80005098 <console_handler+0x28>
    800050b8:	ffffe097          	auipc	ra,0xffffe
    800050bc:	6dc080e7          	jalr	1756(ra) # 80003794 <plic_claim>
    800050c0:	00a00793          	li	a5,10
    800050c4:	00050493          	mv	s1,a0
    800050c8:	02f50c63          	beq	a0,a5,80005100 <console_handler+0x90>
    800050cc:	fc0506e3          	beqz	a0,80005098 <console_handler+0x28>
    800050d0:	00050593          	mv	a1,a0
    800050d4:	00001517          	auipc	a0,0x1
    800050d8:	18c50513          	addi	a0,a0,396 # 80006260 <_ZZ12printIntegermE6digits+0x1e0>
    800050dc:	fffff097          	auipc	ra,0xfffff
    800050e0:	afc080e7          	jalr	-1284(ra) # 80003bd8 <__printf>
    800050e4:	01013403          	ld	s0,16(sp)
    800050e8:	01813083          	ld	ra,24(sp)
    800050ec:	00048513          	mv	a0,s1
    800050f0:	00813483          	ld	s1,8(sp)
    800050f4:	02010113          	addi	sp,sp,32
    800050f8:	ffffe317          	auipc	t1,0xffffe
    800050fc:	6d430067          	jr	1748(t1) # 800037cc <plic_complete>
    80005100:	fffff097          	auipc	ra,0xfffff
    80005104:	3e0080e7          	jalr	992(ra) # 800044e0 <uartintr>
    80005108:	fddff06f          	j	800050e4 <console_handler+0x74>
    8000510c:	00001517          	auipc	a0,0x1
    80005110:	25450513          	addi	a0,a0,596 # 80006360 <digits+0x78>
    80005114:	fffff097          	auipc	ra,0xfffff
    80005118:	a68080e7          	jalr	-1432(ra) # 80003b7c <panic>
	...
