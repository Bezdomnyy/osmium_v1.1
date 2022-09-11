
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	23013103          	ld	sp,560(sp) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	06c030ef          	jal	ra,80003088 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <mem_alloc>:
.global mem_alloc
mem_alloc:
    addi a7, zero, 0x01
    80001000:	00100893          	li	a7,1
    ecall
    80001004:	00000073          	ecall
    ret
    80001008:	00008067          	ret

000000008000100c <mem_free>:

.global mem_free
mem_free:
    addi a7, zero, 0x02
    8000100c:	00200893          	li	a7,2
    ecall
    80001010:	00000073          	ecall
    ret
    80001014:	00008067          	ret

0000000080001018 <thread_create>:

.global thread_create
thread_create:
    addi a7, zero, 0x11
    80001018:	01100893          	li	a7,17
    ecall
    8000101c:	00000073          	ecall
    ret
    80001020:	00008067          	ret

0000000080001024 <thread_exit>:

.global thread_exit
thread_exit:
    addi a7, zero, 0x12
    80001024:	01200893          	li	a7,18
    ecall
    80001028:	00000073          	ecall
    ret
    8000102c:	00008067          	ret

0000000080001030 <thread_dispatch>:

.global thread_dispatch
thread_dispatch:
    addi a7, zero, 0x13
    80001030:	01300893          	li	a7,19
    ecall
    80001034:	00000073          	ecall
    80001038:	00008067          	ret

000000008000103c <_ZN5RiscV13pushRegistersEv>:
.global _ZN5RiscV13pushRegistersEv
.type _ZN5RiscV13pushRegistersEv, @function

_ZN5RiscV13pushRegistersEv:
    addi sp, sp, -256
    8000103c:	f0010113          	addi	sp,sp,-256
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8 (sp)
    .endr
    80001040:	00313c23          	sd	gp,24(sp)
    80001044:	02413023          	sd	tp,32(sp)
    80001048:	02513423          	sd	t0,40(sp)
    8000104c:	02613823          	sd	t1,48(sp)
    80001050:	02713c23          	sd	t2,56(sp)
    80001054:	04813023          	sd	s0,64(sp)
    80001058:	04913423          	sd	s1,72(sp)
    8000105c:	04a13823          	sd	a0,80(sp)
    80001060:	04b13c23          	sd	a1,88(sp)
    80001064:	06c13023          	sd	a2,96(sp)
    80001068:	06d13423          	sd	a3,104(sp)
    8000106c:	06e13823          	sd	a4,112(sp)
    80001070:	06f13c23          	sd	a5,120(sp)
    80001074:	09013023          	sd	a6,128(sp)
    80001078:	09113423          	sd	a7,136(sp)
    8000107c:	09213823          	sd	s2,144(sp)
    80001080:	09313c23          	sd	s3,152(sp)
    80001084:	0b413023          	sd	s4,160(sp)
    80001088:	0b513423          	sd	s5,168(sp)
    8000108c:	0b613823          	sd	s6,176(sp)
    80001090:	0b713c23          	sd	s7,184(sp)
    80001094:	0d813023          	sd	s8,192(sp)
    80001098:	0d913423          	sd	s9,200(sp)
    8000109c:	0da13823          	sd	s10,208(sp)
    800010a0:	0db13c23          	sd	s11,216(sp)
    800010a4:	0fc13023          	sd	t3,224(sp)
    800010a8:	0fd13423          	sd	t4,232(sp)
    800010ac:	0fe13823          	sd	t5,240(sp)
    800010b0:	0ff13c23          	sd	t6,248(sp)
    ret
    800010b4:	00008067          	ret

00000000800010b8 <_ZN5RiscV12popRegistersEv>:
.type _ZN5RiscV12popRegistersEv, @function

_ZN5RiscV12popRegistersEv:
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8 (sp)
    .endr
    800010b8:	01813183          	ld	gp,24(sp)
    800010bc:	02013203          	ld	tp,32(sp)
    800010c0:	02813283          	ld	t0,40(sp)
    800010c4:	03013303          	ld	t1,48(sp)
    800010c8:	03813383          	ld	t2,56(sp)
    800010cc:	04013403          	ld	s0,64(sp)
    800010d0:	04813483          	ld	s1,72(sp)
    800010d4:	05013503          	ld	a0,80(sp)
    800010d8:	05813583          	ld	a1,88(sp)
    800010dc:	06013603          	ld	a2,96(sp)
    800010e0:	06813683          	ld	a3,104(sp)
    800010e4:	07013703          	ld	a4,112(sp)
    800010e8:	07813783          	ld	a5,120(sp)
    800010ec:	08013803          	ld	a6,128(sp)
    800010f0:	08813883          	ld	a7,136(sp)
    800010f4:	09013903          	ld	s2,144(sp)
    800010f8:	09813983          	ld	s3,152(sp)
    800010fc:	0a013a03          	ld	s4,160(sp)
    80001100:	0a813a83          	ld	s5,168(sp)
    80001104:	0b013b03          	ld	s6,176(sp)
    80001108:	0b813b83          	ld	s7,184(sp)
    8000110c:	0c013c03          	ld	s8,192(sp)
    80001110:	0c813c83          	ld	s9,200(sp)
    80001114:	0d013d03          	ld	s10,208(sp)
    80001118:	0d813d83          	ld	s11,216(sp)
    8000111c:	0e013e03          	ld	t3,224(sp)
    80001120:	0e813e83          	ld	t4,232(sp)
    80001124:	0f013f03          	ld	t5,240(sp)
    80001128:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000112c:	10010113          	addi	sp,sp,256
    80001130:	00008067          	ret
	...

0000000080001140 <_ZN6Kernel14supervisorTrapEv>:

.align 4
.global _ZN6Kernel14supervisorTrapEv
.type _ZN6Kernel14supervisorTrapEv, @function
_ZN6Kernel14supervisorTrapEv:
    addi sp, sp, -256
    80001140:	f0010113          	addi	sp,sp,-256
    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8(sp)
    .endr
    80001144:	00013023          	sd	zero,0(sp)
    80001148:	00113423          	sd	ra,8(sp)
    8000114c:	00213823          	sd	sp,16(sp)
    80001150:	00313c23          	sd	gp,24(sp)
    80001154:	02413023          	sd	tp,32(sp)
    80001158:	02513423          	sd	t0,40(sp)
    8000115c:	02613823          	sd	t1,48(sp)
    80001160:	02713c23          	sd	t2,56(sp)
    80001164:	04813023          	sd	s0,64(sp)
    80001168:	04913423          	sd	s1,72(sp)
    8000116c:	04a13823          	sd	a0,80(sp)
    80001170:	04b13c23          	sd	a1,88(sp)
    80001174:	06c13023          	sd	a2,96(sp)
    80001178:	06d13423          	sd	a3,104(sp)
    8000117c:	06e13823          	sd	a4,112(sp)
    80001180:	06f13c23          	sd	a5,120(sp)
    80001184:	09013023          	sd	a6,128(sp)
    80001188:	09113423          	sd	a7,136(sp)
    8000118c:	09213823          	sd	s2,144(sp)
    80001190:	09313c23          	sd	s3,152(sp)
    80001194:	0b413023          	sd	s4,160(sp)
    80001198:	0b513423          	sd	s5,168(sp)
    8000119c:	0b613823          	sd	s6,176(sp)
    800011a0:	0b713c23          	sd	s7,184(sp)
    800011a4:	0d813023          	sd	s8,192(sp)
    800011a8:	0d913423          	sd	s9,200(sp)
    800011ac:	0da13823          	sd	s10,208(sp)
    800011b0:	0db13c23          	sd	s11,216(sp)
    800011b4:	0fc13023          	sd	t3,224(sp)
    800011b8:	0fd13423          	sd	t4,232(sp)
    800011bc:	0fe13823          	sd	t5,240(sp)
    800011c0:	0ff13c23          	sd	t6,248(sp)

    call _ZN6Kernel21supervisorTrapHandlerEv
    800011c4:	2ec000ef          	jal	ra,800014b0 <_ZN6Kernel21supervisorTrapHandlerEv>



    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8(sp)
    .endr
    800011c8:	00013003          	ld	zero,0(sp)
    800011cc:	00813083          	ld	ra,8(sp)
    800011d0:	01013103          	ld	sp,16(sp)
    800011d4:	01813183          	ld	gp,24(sp)
    800011d8:	02013203          	ld	tp,32(sp)
    800011dc:	02813283          	ld	t0,40(sp)
    800011e0:	03013303          	ld	t1,48(sp)
    800011e4:	03813383          	ld	t2,56(sp)
    800011e8:	04013403          	ld	s0,64(sp)
    800011ec:	04813483          	ld	s1,72(sp)
    800011f0:	05013503          	ld	a0,80(sp)
    800011f4:	05813583          	ld	a1,88(sp)
    800011f8:	06013603          	ld	a2,96(sp)
    800011fc:	06813683          	ld	a3,104(sp)
    80001200:	07013703          	ld	a4,112(sp)
    80001204:	07813783          	ld	a5,120(sp)
    80001208:	08013803          	ld	a6,128(sp)
    8000120c:	08813883          	ld	a7,136(sp)
    80001210:	09013903          	ld	s2,144(sp)
    80001214:	09813983          	ld	s3,152(sp)
    80001218:	0a013a03          	ld	s4,160(sp)
    8000121c:	0a813a83          	ld	s5,168(sp)
    80001220:	0b013b03          	ld	s6,176(sp)
    80001224:	0b813b83          	ld	s7,184(sp)
    80001228:	0c013c03          	ld	s8,192(sp)
    8000122c:	0c813c83          	ld	s9,200(sp)
    80001230:	0d013d03          	ld	s10,208(sp)
    80001234:	0d813d83          	ld	s11,216(sp)
    80001238:	0e013e03          	ld	t3,224(sp)
    8000123c:	0e813e83          	ld	t4,232(sp)
    80001240:	0f013f03          	ld	t5,240(sp)
    80001244:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001248:	10010113          	addi	sp,sp,256

    sret
    8000124c:	10200073          	sret

0000000080001250 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001250:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001254:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001258:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000125c:	0085b103          	ld	sp,8(a1)

    80001260:	00008067          	ret

0000000080001264 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001264:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001268:	00b29a63          	bne	t0,a1,8000127c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000126c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001270:	fe029ae3          	bnez	t0,80001264 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001274:	00000513          	li	a0,0
    jr ra                  # Return.
    80001278:	00008067          	ret

000000008000127c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000127c:	00100513          	li	a0,1
    80001280:	00008067          	ret

0000000080001284 <_Z8sem_openPP4_semj>:
}


void thread_dispatch();*/

int sem_open( sem_t *handle, unsigned init) {
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00813423          	sd	s0,8(sp)
    8000128c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001290:	00000513          	li	a0,0
    80001294:	00813403          	ld	s0,8(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret

00000000800012a0 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800012a0:	ff010113          	addi	sp,sp,-16
    800012a4:	00813423          	sd	s0,8(sp)
    800012a8:	01010413          	addi	s0,sp,16
    return 0;
}
    800012ac:	00000513          	li	a0,0
    800012b0:	00813403          	ld	s0,8(sp)
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    800012bc:	ff010113          	addi	sp,sp,-16
    800012c0:	00813423          	sd	s0,8(sp)
    800012c4:	01010413          	addi	s0,sp,16
    return 0;
}
    800012c8:	00000513          	li	a0,0
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00813423          	sd	s0,8(sp)
    800012e0:	01010413          	addi	s0,sp,16
    return 0;
}
    800012e4:	00000513          	li	a0,0
    800012e8:	00813403          	ld	s0,8(sp)
    800012ec:	01010113          	addi	sp,sp,16
    800012f0:	00008067          	ret

00000000800012f4 <_Z10time_sleepm>:

int time_sleep(time_t){
    800012f4:	ff010113          	addi	sp,sp,-16
    800012f8:	00813423          	sd	s0,8(sp)
    800012fc:	01010413          	addi	s0,sp,16
    return 0;
}
    80001300:	00000513          	li	a0,0
    80001304:	00813403          	ld	s0,8(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_Z4getcv>:

char getc(){
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00113423          	sd	ra,8(sp)
    80001318:	00813023          	sd	s0,0(sp)
    8000131c:	01010413          	addi	s0,sp,16
    return __getc();
    80001320:	00004097          	auipc	ra,0x4
    80001324:	e68080e7          	jalr	-408(ra) # 80005188 <__getc>
}
    80001328:	00813083          	ld	ra,8(sp)
    8000132c:	00013403          	ld	s0,0(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_Z4putcc>:

void putc(char c) {
    80001338:	ff010113          	addi	sp,sp,-16
    8000133c:	00113423          	sd	ra,8(sp)
    80001340:	00813023          	sd	s0,0(sp)
    80001344:	01010413          	addi	s0,sp,16
    __putc(c);
    80001348:	00004097          	auipc	ra,0x4
    8000134c:	e04080e7          	jalr	-508(ra) # 8000514c <__putc>
    80001350:	00813083          	ld	ra,8(sp)
    80001354:	00013403          	ld	s0,0(sp)
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <_ZN6Kernel10initKernelEv>:
#include "../h/memory_allocator.hpp"
#include "../h/riscv.hpp"

extern void userMain();

void Kernel::initKernel() {
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00113423          	sd	ra,8(sp)
    80001368:	00813023          	sd	s0,0(sp)
    8000136c:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMem();
    80001370:	00000097          	auipc	ra,0x0
    80001374:	60c080e7          	jalr	1548(ra) # 8000197c <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    80001378:	00006797          	auipc	a5,0x6
    8000137c:	ec07b783          	ld	a5,-320(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x20>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    80001380:	10579073          	csrw	stvec,a5
}

inline void RiscV::setSstatus(uint64 mask) {
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001384:	00200793          	li	a5,2
    80001388:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(RiscV::SIE);
}
    8000138c:	00813083          	ld	ra,8(sp)
    80001390:	00013403          	ld	s0,0(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_ZN6Kernel15syscall_handlerEv>:
    //console_handler();*/
    RiscV::writeSepc(sepc);
    return;
}

void Kernel::syscall_handler() {
    8000139c:	fb010113          	addi	sp,sp,-80
    800013a0:	04113423          	sd	ra,72(sp)
    800013a4:	04813023          	sd	s0,64(sp)
    800013a8:	02913c23          	sd	s1,56(sp)
    800013ac:	05010413          	addi	s0,sp,80
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));
    800013b0:	00088793          	mv	a5,a7
    800013b4:	fcf43c23          	sd	a5,-40(s0)

    //volatile uint64 arg0, arg1, arg2, temp;
    switch(syscall_id) {
    800013b8:	fd843783          	ld	a5,-40(s0)
    800013bc:	01300713          	li	a4,19
    800013c0:	0cf76c63          	bltu	a4,a5,80001498 <_ZN6Kernel15syscall_handlerEv+0xfc>
    800013c4:	00279793          	slli	a5,a5,0x2
    800013c8:	00005717          	auipc	a4,0x5
    800013cc:	cc070713          	addi	a4,a4,-832 # 80006088 <CONSOLE_STATUS+0x78>
    800013d0:	00e787b3          	add	a5,a5,a4
    800013d4:	0007a783          	lw	a5,0(a5)
    800013d8:	00e787b3          	add	a5,a5,a4
    800013dc:	00078067          	jr	a5


//0x01
inline void Kernel::mem_alloc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800013e0:	00050793          	mv	a5,a0
    800013e4:	faf43823          	sd	a5,-80(s0)
    MemoryAllocator::allocate((size_t)arg0);
    800013e8:	fb043503          	ld	a0,-80(s0)
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	730080e7          	jalr	1840(ra) # 80001b1c <_ZN15MemoryAllocator8allocateEm>
            asm volatile ("addi a0, zero, -1");
            __print_string("Error: Invalid syscall id!");
            break;
    }
    //RiscV::writeSepc(sepc);
}
    800013f4:	04813083          	ld	ra,72(sp)
    800013f8:	04013403          	ld	s0,64(sp)
    800013fc:	03813483          	ld	s1,56(sp)
    80001400:	05010113          	addi	sp,sp,80
    80001404:	00008067          	ret


//0x02
inline void Kernel::mem_free_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001408:	00050793          	mv	a5,a0
    8000140c:	faf43c23          	sd	a5,-72(s0)
    MemoryAllocator::free((void*)arg0);
    80001410:	fb843503          	ld	a0,-72(s0)
    80001414:	00000097          	auipc	ra,0x0
    80001418:	794080e7          	jalr	1940(ra) # 80001ba8 <_ZN15MemoryAllocator4freeEPv>
}
    8000141c:	fd9ff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x11
inline void Kernel::thread_create_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001420:	00050793          	mv	a5,a0
    80001424:	fcf43023          	sd	a5,-64(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001428:	00058793          	mv	a5,a1
    8000142c:	fcf43423          	sd	a5,-56(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    80001430:	00060793          	mv	a5,a2
    80001434:	fcf43823          	sd	a5,-48(s0)

    *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);
    80001438:	fc843503          	ld	a0,-56(s0)
    8000143c:	fd043583          	ld	a1,-48(s0)
    80001440:	fc043483          	ld	s1,-64(s0)
    80001444:	00000097          	auipc	ra,0x0
    80001448:	320080e7          	jalr	800(ra) # 80001764 <_ZN3TCB9createTCBEPFvPvES0_>
    8000144c:	00a4b023          	sd	a0,0(s1)

    asm volatile("mv a0, zero");
    80001450:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    80001454:	fc043783          	ld	a5,-64(s0)
    80001458:	0007b783          	ld	a5,0(a5)
    8000145c:	f8079ce3          	bnez	a5,800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>
    80001460:	fff50513          	addi	a0,a0,-1
}
    80001464:	f91ff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>



//0x12
inline void Kernel::thread_exit_handler() {
    asm volatile ("addi a0, zero, 0");
    80001468:	00000513          	li	a0,0
    TCB::running->setFinished(true);
    8000146c:	00006797          	auipc	a5,0x6
    80001470:	dd47b783          	ld	a5,-556(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001474:	0007b783          	ld	a5,0(a5)

    static TCB* createTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    80001478:	00100713          	li	a4,1
    8000147c:	00e78c23          	sb	a4,24(a5)
    TCB::yield();
    80001480:	00000097          	auipc	ra,0x0
    80001484:	424080e7          	jalr	1060(ra) # 800018a4 <_ZN3TCB5yieldEv>
}
    80001488:	f6dff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>



//0x13
inline void Kernel::thread_dispatch_handler() {
    TCB::yield();
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	418080e7          	jalr	1048(ra) # 800018a4 <_ZN3TCB5yieldEv>
}
    80001494:	f61ff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>
            asm volatile ("addi a0, zero, -1");
    80001498:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    8000149c:	00005517          	auipc	a0,0x5
    800014a0:	b8450513          	addi	a0,a0,-1148 # 80006020 <CONSOLE_STATUS+0x10>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	a00080e7          	jalr	-1536(ra) # 80001ea4 <_Z14__print_stringPKc>
}
    800014ac:	f49ff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>

00000000800014b0 <_ZN6Kernel21supervisorTrapHandlerEv>:
void Kernel::supervisorTrapHandler() {
    800014b0:	fb010113          	addi	sp,sp,-80
    800014b4:	04113423          	sd	ra,72(sp)
    800014b8:	04813023          	sd	s0,64(sp)
    800014bc:	02913c23          	sd	s1,56(sp)
    800014c0:	03213823          	sd	s2,48(sp)
    800014c4:	05010413          	addi	s0,sp,80
    asm volatile("csrr %[scause], scause": [scause] "=r" (scause));
    800014c8:	142027f3          	csrr	a5,scause
    800014cc:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800014d0:	fb843483          	ld	s1,-72(s0)
    if (scause == 0x08 || scause == 0x09) {
    800014d4:	ff848713          	addi	a4,s1,-8
    800014d8:	00100793          	li	a5,1
    800014dc:	08e7f863          	bgeu	a5,a4,8000156c <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
    if (scause == 0x07) {
    800014e0:	00700793          	li	a5,7
    800014e4:	0af48e63          	beq	s1,a5,800015a0 <_ZN6Kernel21supervisorTrapHandlerEv+0xf0>
    if (scause == 0x8000000000000001UL) {
    800014e8:	fff00793          	li	a5,-1
    800014ec:	03f79793          	slli	a5,a5,0x3f
    800014f0:	00178793          	addi	a5,a5,1
    800014f4:	0ef48e63          	beq	s1,a5,800015f0 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    if (scause == 0x8000000000000009UL) {
    800014f8:	fff00793          	li	a5,-1
    800014fc:	03f79793          	slli	a5,a5,0x3f
    80001500:	00978793          	addi	a5,a5,9
    80001504:	0ef48c63          	beq	s1,a5,800015fc <_ZN6Kernel21supervisorTrapHandlerEv+0x14c>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001508:	141027f3          	csrr	a5,sepc
    8000150c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001510:	fd843903          	ld	s2,-40(s0)
    uint64 sepc = RiscV::readSepc() + 4;
    80001514:	00490913          	addi	s2,s2,4
    __print_string("Neobradjen izuzetak.\n");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	b5850513          	addi	a0,a0,-1192 # 80006070 <CONSOLE_STATUS+0x60>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	984080e7          	jalr	-1660(ra) # 80001ea4 <_Z14__print_stringPKc>
    __print_string("scause: ");
    80001528:	00005517          	auipc	a0,0x5
    8000152c:	b3850513          	addi	a0,a0,-1224 # 80006060 <CONSOLE_STATUS+0x50>
    80001530:	00001097          	auipc	ra,0x1
    80001534:	974080e7          	jalr	-1676(ra) # 80001ea4 <_Z14__print_stringPKc>
    __print_uint64(scause);
    80001538:	00048513          	mv	a0,s1
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	9ac080e7          	jalr	-1620(ra) # 80001ee8 <_Z14__print_uint64m>
    __putc('\n');
    80001544:	00a00513          	li	a0,10
    80001548:	00004097          	auipc	ra,0x4
    8000154c:	c04080e7          	jalr	-1020(ra) # 8000514c <__putc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001550:	14191073          	csrw	sepc,s2
}
    80001554:	04813083          	ld	ra,72(sp)
    80001558:	04013403          	ld	s0,64(sp)
    8000155c:	03813483          	ld	s1,56(sp)
    80001560:	03013903          	ld	s2,48(sp)
    80001564:	05010113          	addi	sp,sp,80
    80001568:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000156c:	141027f3          	csrr	a5,sepc
    80001570:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001574:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    80001578:	00448493          	addi	s1,s1,4
    asm volatile("csrc sstatus, %[mask]":: [mask] "r" (mask));
}

inline uint64 RiscV::readSstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    8000157c:	100027f3          	csrr	a5,sstatus
    80001580:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001584:	fc043903          	ld	s2,-64(s0)
        syscall_handler();
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	e14080e7          	jalr	-492(ra) # 8000139c <_ZN6Kernel15syscall_handlerEv>
        asm volatile ("sd a0, 80(s0)");
    80001590:	04a43823          	sd	a0,80(s0)
}

inline void RiscV::writeSstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001594:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001598:	14149073          	csrw	sepc,s1
        return;
    8000159c:	fb9ff06f          	j	80001554 <_ZN6Kernel21supervisorTrapHandlerEv+0xa4>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800015a0:	141027f3          	csrr	a5,sepc
    800015a4:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    800015a8:	fd043903          	ld	s2,-48(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    800015ac:	00490913          	addi	s2,s2,4
        __print_string("Nedozvoljena adresa upisa.\n");
    800015b0:	00005517          	auipc	a0,0x5
    800015b4:	a9050513          	addi	a0,a0,-1392 # 80006040 <CONSOLE_STATUS+0x30>
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	8ec080e7          	jalr	-1812(ra) # 80001ea4 <_Z14__print_stringPKc>
        __print_string("scause: ");
    800015c0:	00005517          	auipc	a0,0x5
    800015c4:	aa050513          	addi	a0,a0,-1376 # 80006060 <CONSOLE_STATUS+0x50>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	8dc080e7          	jalr	-1828(ra) # 80001ea4 <_Z14__print_stringPKc>
        __print_uint64(scause);
    800015d0:	00048513          	mv	a0,s1
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	914080e7          	jalr	-1772(ra) # 80001ee8 <_Z14__print_uint64m>
        __putc('\n');
    800015dc:	00a00513          	li	a0,10
    800015e0:	00004097          	auipc	ra,0x4
    800015e4:	b6c080e7          	jalr	-1172(ra) # 8000514c <__putc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800015e8:	14191073          	csrw	sepc,s2
        return;
    800015ec:	f69ff06f          	j	80001554 <_ZN6Kernel21supervisorTrapHandlerEv+0xa4>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    800015f0:	00200793          	li	a5,2
    800015f4:	1447b073          	csrc	sip,a5
        return;
    800015f8:	f5dff06f          	j	80001554 <_ZN6Kernel21supervisorTrapHandlerEv+0xa4>
        console_handler();
    800015fc:	00004097          	auipc	ra,0x4
    80001600:	bc4080e7          	jalr	-1084(ra) # 800051c0 <console_handler>
        return;
    80001604:	f51ff06f          	j	80001554 <_ZN6Kernel21supervisorTrapHandlerEv+0xa4>

0000000080001608 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return 0;
}

Semaphore::~Semaphore() {
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00813423          	sd	s0,8(sp)
    80001610:	01010413          	addi	s0,sp,16

}
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00113423          	sd	ra,8(sp)
    80001628:	00813023          	sd	s0,0(sp)
    8000162c:	01010413          	addi	s0,sp,16
}
    80001630:	00000097          	auipc	ra,0x0
    80001634:	2fc080e7          	jalr	764(ra) # 8000192c <_ZdlPv>
    80001638:	00813083          	ld	ra,8(sp)
    8000163c:	00013403          	ld	s0,0(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16
    80001654:	00006797          	auipc	a5,0x6
    80001658:	b3c78793          	addi	a5,a5,-1220 # 80007190 <_ZTV9Semaphore+0x10>
    8000165c:	00f53023          	sd	a5,0(a0)
}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00813423          	sd	s0,8(sp)
    80001674:	01010413          	addi	s0,sp,16
}
    80001678:	00000513          	li	a0,0
    8000167c:	00813403          	ld	s0,8(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00813423          	sd	s0,8(sp)
    80001690:	01010413          	addi	s0,sp,16
}
    80001694:	00000513          	li	a0,0
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <main>:
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    800016a4:	fd010113          	addi	sp,sp,-48
    800016a8:	02113423          	sd	ra,40(sp)
    800016ac:	02813023          	sd	s0,32(sp)
    800016b0:	03010413          	addi	s0,sp,48
    Kernel::initKernel();
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	cac080e7          	jalr	-852(ra) # 80001360 <_ZN6Kernel10initKernelEv>




    TCB* threads[3];
    thread_create(&threads[0], nullptr, nullptr);
    800016bc:	00000613          	li	a2,0
    800016c0:	00000593          	li	a1,0
    800016c4:	fd840513          	addi	a0,s0,-40
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	950080e7          	jalr	-1712(ra) # 80001018 <thread_create>
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))userMain, nullptr);
    800016d0:	00000613          	li	a2,0
    800016d4:	00006597          	auipc	a1,0x6
    800016d8:	b4c5b583          	ld	a1,-1204(a1) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x8>
    800016dc:	fe040513          	addi	a0,s0,-32
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	938080e7          	jalr	-1736(ra) # 80001018 <thread_create>
    //thread_create(&threads[2], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];
    800016e8:	fd843703          	ld	a4,-40(s0)
    800016ec:	00006797          	auipc	a5,0x6
    800016f0:	b547b783          	ld	a5,-1196(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016f4:	00e7b023          	sd	a4,0(a5)

    //thread_dispatch();
    //__print_string("hey!\n");
    while(!threads[1]->isFinished()) { thread_dispatch(); }
    800016f8:	fe043783          	ld	a5,-32(s0)
    bool isFinished() const { return finished; }
    800016fc:	0187c783          	lbu	a5,24(a5)
    80001700:	00079863          	bnez	a5,80001710 <main+0x6c>
    80001704:	00000097          	auipc	ra,0x0
    80001708:	92c080e7          	jalr	-1748(ra) # 80001030 <thread_dispatch>
    8000170c:	fedff06f          	j	800016f8 <main+0x54>

    __print_string("Finished\n");
    80001710:	00005517          	auipc	a0,0x5
    80001714:	9c850513          	addi	a0,a0,-1592 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	78c080e7          	jalr	1932(ra) # 80001ea4 <_Z14__print_stringPKc>

    //thread_exit();


    80001720:	02813083          	ld	ra,40(sp)
    80001724:	02013403          	ld	s0,32(sp)
    80001728:	03010113          	addi	sp,sp,48
    8000172c:	00008067          	ret

0000000080001730 <_ZN7Console4getcEv>:
//

#include "../h/syscall_cpp.hpp"


char Console::getc() {
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00813423          	sd	s0,8(sp)
    80001738:	01010413          	addi	s0,sp,16
    return 0;
}
    8000173c:	00000513          	li	a0,0
    80001740:	00813403          	ld	s0,8(sp)
    80001744:	01010113          	addi	sp,sp,16
    80001748:	00008067          	ret

000000008000174c <_ZN7Console4putcEc>:

void Console::putc(char) {
    8000174c:	ff010113          	addi	sp,sp,-16
    80001750:	00813423          	sd	s0,8(sp)
    80001754:	01010413          	addi	s0,sp,16

    80001758:	00813403          	ld	s0,8(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_ZN3TCB9createTCBEPFvPvES0_>:
#include "../h/tcb.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001764:	fd010113          	addi	sp,sp,-48
    80001768:	02113423          	sd	ra,40(sp)
    8000176c:	02813023          	sd	s0,32(sp)
    80001770:	00913c23          	sd	s1,24(sp)
    80001774:	01213823          	sd	s2,16(sp)
    80001778:	01313423          	sd	s3,8(sp)
    8000177c:	03010413          	addi	s0,sp,48
    80001780:	00050913          	mv	s2,a0
    80001784:	00058993          	mv	s3,a1
    return new TCB(body, args);
    80001788:	03000513          	li	a0,48
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	150080e7          	jalr	336(ra) # 800018dc <_Znwm>
    80001794:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            finished(false),
            context({
                body != nullptr ? (uint64) body : 0,
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
            })
    80001798:	01253023          	sd	s2,0(a0)
    8000179c:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    800017a0:	00090a63          	beqz	s2,800017b4 <_ZN3TCB9createTCBEPFvPvES0_+0x50>
    800017a4:	00008537          	lui	a0,0x8
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	15c080e7          	jalr	348(ra) # 80001904 <_Znam>
    800017b0:	0080006f          	j	800017b8 <_ZN3TCB9createTCBEPFvPvES0_+0x54>
    800017b4:	00000513          	li	a0,0
            })
    800017b8:	00a4b823          	sd	a0,16(s1)
    800017bc:	00048c23          	sb	zero,24(s1)
                body != nullptr ? (uint64) body : 0,
    800017c0:	02090863          	beqz	s2,800017f0 <_ZN3TCB9createTCBEPFvPvES0_+0x8c>
    800017c4:	00090793          	mv	a5,s2
            })
    800017c8:	02f4b023          	sd	a5,32(s1)
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800017cc:	02050663          	beqz	a0,800017f8 <_ZN3TCB9createTCBEPFvPvES0_+0x94>
    800017d0:	000087b7          	lui	a5,0x8
    800017d4:	00f50533          	add	a0,a0,a5
            })
    800017d8:	02a4b423          	sd	a0,40(s1)
    {
        if (body != nullptr) Scheduler::put(this);
    800017dc:	04090063          	beqz	s2,8000181c <_ZN3TCB9createTCBEPFvPvES0_+0xb8>
    800017e0:	00048513          	mv	a0,s1
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	530080e7          	jalr	1328(ra) # 80001d14 <_ZN9Scheduler3putEP3TCB>
    800017ec:	0300006f          	j	8000181c <_ZN3TCB9createTCBEPFvPvES0_+0xb8>
                body != nullptr ? (uint64) body : 0,
    800017f0:	00000793          	li	a5,0
    800017f4:	fd5ff06f          	j	800017c8 <_ZN3TCB9createTCBEPFvPvES0_+0x64>
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800017f8:	00000513          	li	a0,0
    800017fc:	fddff06f          	j	800017d8 <_ZN3TCB9createTCBEPFvPvES0_+0x74>
    80001800:	00050913          	mv	s2,a0
    80001804:	00048513          	mv	a0,s1
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	124080e7          	jalr	292(ra) # 8000192c <_ZdlPv>
    80001810:	00090513          	mv	a0,s2
    80001814:	00007097          	auipc	ra,0x7
    80001818:	b84080e7          	jalr	-1148(ra) # 80008398 <_Unwind_Resume>
}
    8000181c:	00048513          	mv	a0,s1
    80001820:	02813083          	ld	ra,40(sp)
    80001824:	02013403          	ld	s0,32(sp)
    80001828:	01813483          	ld	s1,24(sp)
    8000182c:	01013903          	ld	s2,16(sp)
    80001830:	00813983          	ld	s3,8(sp)
    80001834:	03010113          	addi	sp,sp,48
    80001838:	00008067          	ret

000000008000183c <_ZN3TCB8dispatchEv>:

    RiscV::popRegisters();
}

void TCB::dispatch()
{
    8000183c:	fe010113          	addi	sp,sp,-32
    80001840:	00113c23          	sd	ra,24(sp)
    80001844:	00813823          	sd	s0,16(sp)
    80001848:	00913423          	sd	s1,8(sp)
    8000184c:	02010413          	addi	s0,sp,32

    //__print_string("TCB::dispatch()\n");

    TCB *old = running;
    80001850:	00006497          	auipc	s1,0x6
    80001854:	a504b483          	ld	s1,-1456(s1) # 800072a0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001858:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    8000185c:	02078c63          	beqz	a5,80001894 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001860:	00000097          	auipc	ra,0x0
    80001864:	44c080e7          	jalr	1100(ra) # 80001cac <_ZN9Scheduler3getEv>
    80001868:	00006797          	auipc	a5,0x6
    8000186c:	a2a7bc23          	sd	a0,-1480(a5) # 800072a0 <_ZN3TCB7runningE>
    __print_uint64((uint64)old); __putc('\n');

    __print_string("running: ");
    __print_uint64((uint64)running); __putc('\n');*/

    TCB::contextSwitch(&old->context, &running->context);
    80001870:	02050593          	addi	a1,a0,32 # 8020 <_entry-0x7fff7fe0>
    80001874:	02048513          	addi	a0,s1,32
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	9d8080e7          	jalr	-1576(ra) # 80001250 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80001880:	01813083          	ld	ra,24(sp)
    80001884:	01013403          	ld	s0,16(sp)
    80001888:	00813483          	ld	s1,8(sp)
    8000188c:	02010113          	addi	sp,sp,32
    80001890:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001894:	00048513          	mv	a0,s1
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	47c080e7          	jalr	1148(ra) # 80001d14 <_ZN9Scheduler3putEP3TCB>
    800018a0:	fc1ff06f          	j	80001860 <_ZN3TCB8dispatchEv+0x24>

00000000800018a4 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00113423          	sd	ra,8(sp)
    800018ac:	00813023          	sd	s0,0(sp)
    800018b0:	01010413          	addi	s0,sp,16
    RiscV::pushRegisters();
    800018b4:	fffff097          	auipc	ra,0xfffff
    800018b8:	788080e7          	jalr	1928(ra) # 8000103c <_ZN5RiscV13pushRegistersEv>
    dispatch();
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	f80080e7          	jalr	-128(ra) # 8000183c <_ZN3TCB8dispatchEv>
    RiscV::popRegisters();
    800018c4:	fffff097          	auipc	ra,0xfffff
    800018c8:	7f4080e7          	jalr	2036(ra) # 800010b8 <_ZN5RiscV12popRegistersEv>
}
    800018cc:	00813083          	ld	ra,8(sp)
    800018d0:	00013403          	ld	s0,0(sp)
    800018d4:	01010113          	addi	sp,sp,16
    800018d8:	00008067          	ret

00000000800018dc <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00113423          	sd	ra,8(sp)
    800018e4:	00813023          	sd	s0,0(sp)
    800018e8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800018ec:	fffff097          	auipc	ra,0xfffff
    800018f0:	714080e7          	jalr	1812(ra) # 80001000 <mem_alloc>
}
    800018f4:	00813083          	ld	ra,8(sp)
    800018f8:	00013403          	ld	s0,0(sp)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret

0000000080001904 <_Znam>:

void* operator new[](size_t size) {
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00113423          	sd	ra,8(sp)
    8000190c:	00813023          	sd	s0,0(sp)
    80001910:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001914:	fffff097          	auipc	ra,0xfffff
    80001918:	6ec080e7          	jalr	1772(ra) # 80001000 <mem_alloc>
}
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret

000000008000192c <_ZdlPv>:

void operator delete(void* ptr) {
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000193c:	fffff097          	auipc	ra,0xfffff
    80001940:	6d0080e7          	jalr	1744(ra) # 8000100c <mem_free>
}
    80001944:	00813083          	ld	ra,8(sp)
    80001948:	00013403          	ld	s0,0(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001964:	fffff097          	auipc	ra,0xfffff
    80001968:	6a8080e7          	jalr	1704(ra) # 8000100c <mem_free>
}
    8000196c:	00813083          	ld	ra,8(sp)
    80001970:	00013403          	ld	s0,0(sp)
    80001974:	01010113          	addi	sp,sp,16
    80001978:	00008067          	ret

000000008000197c <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    80001988:	00006797          	auipc	a5,0x6
    8000198c:	8a07b783          	ld	a5,-1888(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001990:	0007b783          	ld	a5,0(a5)
    80001994:	00006697          	auipc	a3,0x6
    80001998:	91468693          	addi	a3,a3,-1772 # 800072a8 <_ZN15MemoryAllocator8fMemHeadE>
    8000199c:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    800019a0:	00006717          	auipc	a4,0x6
    800019a4:	8a873703          	ld	a4,-1880(a4) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019a8:	00073703          	ld	a4,0(a4)
    800019ac:	40f70733          	sub	a4,a4,a5
    800019b0:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    800019b4:	0006b783          	ld	a5,0(a3)
    800019b8:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    800019bc:	0007b823          	sd	zero,16(a5)
}
    800019c0:	00813403          	ld	s0,8(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret

00000000800019cc <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    800019cc:	ff010113          	addi	sp,sp,-16
    800019d0:	00813423          	sd	s0,8(sp)
    800019d4:	01010413          	addi	s0,sp,16
    800019d8:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    800019dc:	00006517          	auipc	a0,0x6
    800019e0:	8cc53503          	ld	a0,-1844(a0) # 800072a8 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    800019e4:	02050063          	beqz	a0,80001a04 <_ZN15MemoryAllocator8firstFitEm+0x38>
    800019e8:	01053703          	ld	a4,16(a0)
    800019ec:	00070c63          	beqz	a4,80001a04 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    800019f0:	00860793          	addi	a5,a2,8
    800019f4:	00053683          	ld	a3,0(a0)
    800019f8:	00f6fe63          	bgeu	a3,a5,80001a14 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    800019fc:	00070513          	mv	a0,a4
    80001a00:	fe5ff06f          	j	800019e4 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001a04:	00050863          	beqz	a0,80001a14 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001a08:	00860613          	addi	a2,a2,8
    80001a0c:	00053783          	ld	a5,0(a0)
    80001a10:	00c7e863          	bltu	a5,a2,80001a20 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001a14:	00813403          	ld	s0,8(sp)
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret
    return nullptr;
    80001a20:	00000513          	li	a0,0
    80001a24:	ff1ff06f          	j	80001a14 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001a28 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00813423          	sd	s0,8(sp)
    80001a30:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001a34:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001a38:	03f57793          	andi	a5,a0,63
    80001a3c:	00078863          	beqz	a5,80001a4c <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80001a40:	04000713          	li	a4,64
    80001a44:	40f707b3          	sub	a5,a4,a5
    80001a48:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001a4c:	00813403          	ld	s0,8(sp)
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001a58:	fe010113          	addi	sp,sp,-32
    80001a5c:	00113c23          	sd	ra,24(sp)
    80001a60:	00813823          	sd	s0,16(sp)
    80001a64:	00913423          	sd	s1,8(sp)
    80001a68:	02010413          	addi	s0,sp,32
    80001a6c:	00050493          	mv	s1,a0
    if (node) {
    80001a70:	04050c63          	beqz	a0,80001ac8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80001a74:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	fb0080e7          	jalr	-80(ra) # 80001a28 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80001a80:	0004b783          	ld	a5,0(s1)
    80001a84:	40a787b3          	sub	a5,a5,a0
    80001a88:	03f00713          	li	a4,63
    80001a8c:	04f77e63          	bgeu	a4,a5,80001ae8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80001a90:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80001a94:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80001a98:	0084b783          	ld	a5,8(s1)
    80001a9c:	04078063          	beqz	a5,80001adc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80001aa0:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80001aa4:	0104b783          	ld	a5,16(s1)
    80001aa8:	00078463          	beqz	a5,80001ab0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001aac:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80001ab0:	0104b783          	ld	a5,16(s1)
    80001ab4:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80001ab8:	0084b783          	ld	a5,8(s1)
    80001abc:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80001ac0:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80001ac4:	00848513          	addi	a0,s1,8
}
    80001ac8:	01813083          	ld	ra,24(sp)
    80001acc:	01013403          	ld	s0,16(sp)
    80001ad0:	00813483          	ld	s1,8(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret
            else fMemHead = newNode;
    80001adc:	00005797          	auipc	a5,0x5
    80001ae0:	7ce7b623          	sd	a4,1996(a5) # 800072a8 <_ZN15MemoryAllocator8fMemHeadE>
    80001ae4:	fc1ff06f          	j	80001aa4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80001ae8:	0084b783          	ld	a5,8(s1)
    80001aec:	02078063          	beqz	a5,80001b0c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80001af0:	0104b703          	ld	a4,16(s1)
    80001af4:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001af8:	0104b783          	ld	a5,16(s1)
    80001afc:	fc0782e3          	beqz	a5,80001ac0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80001b00:	0084b703          	ld	a4,8(s1)
    80001b04:	00e7b423          	sd	a4,8(a5)
    80001b08:	fb9ff06f          	j	80001ac0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    80001b0c:	0104b783          	ld	a5,16(s1)
    80001b10:	00005717          	auipc	a4,0x5
    80001b14:	78f73c23          	sd	a5,1944(a4) # 800072a8 <_ZN15MemoryAllocator8fMemHeadE>
    80001b18:	fe1ff06f          	j	80001af8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080001b1c <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80001b1c:	fe010113          	addi	sp,sp,-32
    80001b20:	00113c23          	sd	ra,24(sp)
    80001b24:	00813823          	sd	s0,16(sp)
    80001b28:	00913423          	sd	s1,8(sp)
    80001b2c:	02010413          	addi	s0,sp,32
    80001b30:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	e98080e7          	jalr	-360(ra) # 800019cc <_ZN15MemoryAllocator8firstFitEm>
    80001b3c:	00048593          	mv	a1,s1
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	f18080e7          	jalr	-232(ra) # 80001a58 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret

0000000080001b5c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80001b5c:	ff010113          	addi	sp,sp,-16
    80001b60:	00813423          	sd	s0,8(sp)
    80001b64:	01010413          	addi	s0,sp,16
    if(!node) return;
    80001b68:	02050a63          	beqz	a0,80001b9c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    80001b6c:	01053783          	ld	a5,16(a0)
    80001b70:	02078663          	beqz	a5,80001b9c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80001b74:	00053703          	ld	a4,0(a0)
    80001b78:	00e506b3          	add	a3,a0,a4
    80001b7c:	02f69063          	bne	a3,a5,80001b9c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    80001b80:	0007b683          	ld	a3,0(a5)
    80001b84:	00d70733          	add	a4,a4,a3
    80001b88:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80001b8c:	0107b783          	ld	a5,16(a5)
    80001b90:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80001b94:	00078463          	beqz	a5,80001b9c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80001b98:	00a7b423          	sd	a0,8(a5)
}
    80001b9c:	00813403          	ld	s0,8(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret

0000000080001ba8 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80001ba8:	fe010113          	addi	sp,sp,-32
    80001bac:	00113c23          	sd	ra,24(sp)
    80001bb0:	00813823          	sd	s0,16(sp)
    80001bb4:	00913423          	sd	s1,8(sp)
    80001bb8:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80001bbc:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    80001bc0:	00005717          	auipc	a4,0x5
    80001bc4:	6e873703          	ld	a4,1768(a4) # 800072a8 <_ZN15MemoryAllocator8fMemHeadE>
    80001bc8:	02070063          	beqz	a4,80001be8 <_ZN15MemoryAllocator4freeEPv+0x40>
    80001bcc:	02a77263          	bgeu	a4,a0,80001bf0 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80001bd0:	00070793          	mv	a5,a4
    80001bd4:	00078493          	mv	s1,a5
    80001bd8:	0107b783          	ld	a5,16(a5)
    80001bdc:	00078c63          	beqz	a5,80001bf4 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001be0:	fea7eae3          	bltu	a5,a0,80001bd4 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80001be4:	0100006f          	j	80001bf4 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80001be8:	00070493          	mv	s1,a4
    80001bec:	0080006f          	j	80001bf4 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001bf0:	00000493          	li	s1,0
    newNode->prev = curr;
    80001bf4:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80001bf8:	04048263          	beqz	s1,80001c3c <_ZN15MemoryAllocator4freeEPv+0x94>
    80001bfc:	0104b783          	ld	a5,16(s1)
    80001c00:	00f53823          	sd	a5,16(a0)
    80001c04:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80001c08:	01053783          	ld	a5,16(a0)
    80001c0c:	00078463          	beqz	a5,80001c14 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80001c10:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	f48080e7          	jalr	-184(ra) # 80001b5c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80001c1c:	00048513          	mv	a0,s1
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	f3c080e7          	jalr	-196(ra) # 80001b5c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80001c28:	01813083          	ld	ra,24(sp)
    80001c2c:	01013403          	ld	s0,16(sp)
    80001c30:	00813483          	ld	s1,8(sp)
    80001c34:	02010113          	addi	sp,sp,32
    80001c38:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80001c3c:	00e53823          	sd	a4,16(a0)
    80001c40:	00005797          	auipc	a5,0x5
    80001c44:	66a7b423          	sd	a0,1640(a5) # 800072a8 <_ZN15MemoryAllocator8fMemHeadE>
    80001c48:	fc1ff06f          	j	80001c08 <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080001c4c <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00813423          	sd	s0,8(sp)
    80001c54:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c58:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001c5c:	10200073          	sret
    80001c60:	00813403          	ld	s0,8(sp)
    80001c64:	01010113          	addi	sp,sp,16
    80001c68:	00008067          	ret

0000000080001c6c <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB* tcb) {
    //return readyQueue.putLast(tcb);
    readyQueue.putLast(tcb);
    //readyQueue.printStatus();
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
    80001c78:	00100793          	li	a5,1
    80001c7c:	00f50863          	beq	a0,a5,80001c8c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001c80:	00813403          	ld	s0,8(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret
    80001c8c:	000107b7          	lui	a5,0x10
    80001c90:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c94:	fef596e3          	bne	a1,a5,80001c80 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80001c98:	00005797          	auipc	a5,0x5
    80001c9c:	61878793          	addi	a5,a5,1560 # 800072b0 <_ZN9Scheduler10readyQueueE>
    80001ca0:	0007b023          	sd	zero,0(a5)
    80001ca4:	0007b423          	sd	zero,8(a5)
    80001ca8:	fd9ff06f          	j	80001c80 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001cac <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001cac:	fe010113          	addi	sp,sp,-32
    80001cb0:	00113c23          	sd	ra,24(sp)
    80001cb4:	00813823          	sd	s0,16(sp)
    80001cb8:	00913423          	sd	s1,8(sp)
    80001cbc:	02010413          	addi	s0,sp,32
            tail = newNode;
        }
    }

    T* takeFirst() {
        if (!head) return 0;
    80001cc0:	00005517          	auipc	a0,0x5
    80001cc4:	5f053503          	ld	a0,1520(a0) # 800072b0 <_ZN9Scheduler10readyQueueE>
    80001cc8:	04050263          	beqz	a0,80001d0c <_ZN9Scheduler3getEv+0x60>

        T* ret = head->data;
    80001ccc:	00053483          	ld	s1,0(a0)
        Node* old = head;
        head = head->next;
    80001cd0:	00853783          	ld	a5,8(a0)
    80001cd4:	00005717          	auipc	a4,0x5
    80001cd8:	5cf73e23          	sd	a5,1500(a4) # 800072b0 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80001cdc:	02078263          	beqz	a5,80001d00 <_ZN9Scheduler3getEv+0x54>
        delete old;
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	c4c080e7          	jalr	-948(ra) # 8000192c <_ZdlPv>
}
    80001ce8:	00048513          	mv	a0,s1
    80001cec:	01813083          	ld	ra,24(sp)
    80001cf0:	01013403          	ld	s0,16(sp)
    80001cf4:	00813483          	ld	s1,8(sp)
    80001cf8:	02010113          	addi	sp,sp,32
    80001cfc:	00008067          	ret
        if (!head) tail = 0;
    80001d00:	00005797          	auipc	a5,0x5
    80001d04:	5a07bc23          	sd	zero,1464(a5) # 800072b8 <_ZN9Scheduler10readyQueueE+0x8>
    80001d08:	fd9ff06f          	j	80001ce0 <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80001d0c:	00050493          	mv	s1,a0
    return ret;
    80001d10:	fd9ff06f          	j	80001ce8 <_ZN9Scheduler3getEv+0x3c>

0000000080001d14 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80001d14:	fe010113          	addi	sp,sp,-32
    80001d18:	00113c23          	sd	ra,24(sp)
    80001d1c:	00813823          	sd	s0,16(sp)
    80001d20:	00913423          	sd	s1,8(sp)
    80001d24:	02010413          	addi	s0,sp,32
    80001d28:	00050493          	mv	s1,a0
        Node *newNode = new Node(data, 0);
    80001d2c:	01000513          	li	a0,16
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	bac080e7          	jalr	-1108(ra) # 800018dc <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80001d38:	00953023          	sd	s1,0(a0)
    80001d3c:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80001d40:	00005797          	auipc	a5,0x5
    80001d44:	5787b783          	ld	a5,1400(a5) # 800072b8 <_ZN9Scheduler10readyQueueE+0x8>
    80001d48:	02078263          	beqz	a5,80001d6c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80001d4c:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80001d50:	00005797          	auipc	a5,0x5
    80001d54:	56a7b423          	sd	a0,1384(a5) # 800072b8 <_ZN9Scheduler10readyQueueE+0x8>
    80001d58:	01813083          	ld	ra,24(sp)
    80001d5c:	01013403          	ld	s0,16(sp)
    80001d60:	00813483          	ld	s1,8(sp)
    80001d64:	02010113          	addi	sp,sp,32
    80001d68:	00008067          	ret
        if (!tail) head = tail = newNode;
    80001d6c:	00005797          	auipc	a5,0x5
    80001d70:	54478793          	addi	a5,a5,1348 # 800072b0 <_ZN9Scheduler10readyQueueE>
    80001d74:	00a7b423          	sd	a0,8(a5)
    80001d78:	00a7b023          	sd	a0,0(a5)
    80001d7c:	fddff06f          	j	80001d58 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001d80 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00113423          	sd	ra,8(sp)
    80001d88:	00813023          	sd	s0,0(sp)
    80001d8c:	01010413          	addi	s0,sp,16
    80001d90:	000105b7          	lui	a1,0x10
    80001d94:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001d98:	00100513          	li	a0,1
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	ed0080e7          	jalr	-304(ra) # 80001c6c <_Z41__static_initialization_and_destruction_0ii>
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN14PeriodicThreadC1Em>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

PeriodicThread::PeriodicThread(time_t period) {
    80001db4:	fe010113          	addi	sp,sp,-32
    80001db8:	00113c23          	sd	ra,24(sp)
    80001dbc:	00813823          	sd	s0,16(sp)
    80001dc0:	00913423          	sd	s1,8(sp)
    80001dc4:	02010413          	addi	s0,sp,32
    80001dc8:	00050493          	mv	s1,a0
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	2a4080e7          	jalr	676(ra) # 80002070 <_ZN6ThreadC1Ev>
    80001dd4:	00005797          	auipc	a5,0x5
    80001dd8:	3e478793          	addi	a5,a5,996 # 800071b8 <_ZTV14PeriodicThread+0x10>
    80001ddc:	00f4b023          	sd	a5,0(s1)

    80001de0:	01813083          	ld	ra,24(sp)
    80001de4:	01013403          	ld	s0,16(sp)
    80001de8:	00813483          	ld	s1,8(sp)
    80001dec:	02010113          	addi	sp,sp,32
    80001df0:	00008067          	ret

0000000080001df4 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00813423          	sd	s0,8(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    80001e00:	00813403          	ld	s0,8(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00813423          	sd	s0,8(sp)
    80001e14:	01010413          	addi	s0,sp,16
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret

0000000080001e24 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00113423          	sd	ra,8(sp)
    80001e2c:	00813023          	sd	s0,0(sp)
    80001e30:	01010413          	addi	s0,sp,16
    80001e34:	00005797          	auipc	a5,0x5
    80001e38:	38478793          	addi	a5,a5,900 # 800071b8 <_ZTV14PeriodicThread+0x10>
    80001e3c:	00f53023          	sd	a5,0(a0)
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	17c080e7          	jalr	380(ra) # 80001fbc <_ZN6ThreadD1Ev>
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret

0000000080001e58 <_ZN14PeriodicThreadD0Ev>:
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00113c23          	sd	ra,24(sp)
    80001e60:	00813823          	sd	s0,16(sp)
    80001e64:	00913423          	sd	s1,8(sp)
    80001e68:	02010413          	addi	s0,sp,32
    80001e6c:	00050493          	mv	s1,a0
    80001e70:	00005797          	auipc	a5,0x5
    80001e74:	34878793          	addi	a5,a5,840 # 800071b8 <_ZTV14PeriodicThread+0x10>
    80001e78:	00f53023          	sd	a5,0(a0)
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	140080e7          	jalr	320(ra) # 80001fbc <_ZN6ThreadD1Ev>
    80001e84:	00048513          	mv	a0,s1
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	aa4080e7          	jalr	-1372(ra) # 8000192c <_ZdlPv>
    80001e90:	01813083          	ld	ra,24(sp)
    80001e94:	01013403          	ld	s0,16(sp)
    80001e98:	00813483          	ld	s1,8(sp)
    80001e9c:	02010113          	addi	sp,sp,32
    80001ea0:	00008067          	ret

0000000080001ea4 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    80001ea4:	fe010113          	addi	sp,sp,-32
    80001ea8:	00113c23          	sd	ra,24(sp)
    80001eac:	00813823          	sd	s0,16(sp)
    80001eb0:	00913423          	sd	s1,8(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    80001eb8:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80001ebc:	0004c503          	lbu	a0,0(s1)
    80001ec0:	00050a63          	beqz	a0,80001ed4 <_Z14__print_stringPKc+0x30>
    80001ec4:	00003097          	auipc	ra,0x3
    80001ec8:	288080e7          	jalr	648(ra) # 8000514c <__putc>
    80001ecc:	00148493          	addi	s1,s1,1
    80001ed0:	fedff06f          	j	80001ebc <_Z14__print_stringPKc+0x18>
}
    80001ed4:	01813083          	ld	ra,24(sp)
    80001ed8:	01013403          	ld	s0,16(sp)
    80001edc:	00813483          	ld	s1,8(sp)
    80001ee0:	02010113          	addi	sp,sp,32
    80001ee4:	00008067          	ret

0000000080001ee8 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80001ee8:	fc010113          	addi	sp,sp,-64
    80001eec:	02113c23          	sd	ra,56(sp)
    80001ef0:	02813823          	sd	s0,48(sp)
    80001ef4:	02913423          	sd	s1,40(sp)
    80001ef8:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80001efc:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80001f00:	00a00693          	li	a3,10
    80001f04:	02d57633          	remu	a2,a0,a3
    80001f08:	00004717          	auipc	a4,0x4
    80001f0c:	1e070713          	addi	a4,a4,480 # 800060e8 <_ZZ14__print_uint64mE6digits>
    80001f10:	00c70733          	add	a4,a4,a2
    80001f14:	00074703          	lbu	a4,0(a4)
    80001f18:	fe040613          	addi	a2,s0,-32
    80001f1c:	009607b3          	add	a5,a2,s1
    80001f20:	0014849b          	addiw	s1,s1,1
    80001f24:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80001f28:	00050713          	mv	a4,a0
    80001f2c:	02d55533          	divu	a0,a0,a3
    80001f30:	00900793          	li	a5,9
    80001f34:	fce7e6e3          	bltu	a5,a4,80001f00 <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    80001f38:	fff4849b          	addiw	s1,s1,-1
    80001f3c:	0004ce63          	bltz	s1,80001f58 <_Z14__print_uint64m+0x70>
    80001f40:	fe040793          	addi	a5,s0,-32
    80001f44:	009787b3          	add	a5,a5,s1
    80001f48:	fe87c503          	lbu	a0,-24(a5)
    80001f4c:	00003097          	auipc	ra,0x3
    80001f50:	200080e7          	jalr	512(ra) # 8000514c <__putc>
    80001f54:	fe5ff06f          	j	80001f38 <_Z14__print_uint64m+0x50>
}
    80001f58:	03813083          	ld	ra,56(sp)
    80001f5c:	03013403          	ld	s0,48(sp)
    80001f60:	02813483          	ld	s1,40(sp)
    80001f64:	04010113          	addi	sp,sp,64
    80001f68:	00008067          	ret

0000000080001f6c <_Z11__print_intx>:

void __print_int(long long int integer) {
    80001f6c:	fe010113          	addi	sp,sp,-32
    80001f70:	00113c23          	sd	ra,24(sp)
    80001f74:	00813823          	sd	s0,16(sp)
    80001f78:	00913423          	sd	s1,8(sp)
    80001f7c:	02010413          	addi	s0,sp,32
    80001f80:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    80001f84:	02054263          	bltz	a0,80001fa8 <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	f5c080e7          	jalr	-164(ra) # 80001ee8 <_Z14__print_uint64m>
}
    80001f94:	01813083          	ld	ra,24(sp)
    80001f98:	01013403          	ld	s0,16(sp)
    80001f9c:	00813483          	ld	s1,8(sp)
    80001fa0:	02010113          	addi	sp,sp,32
    80001fa4:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    80001fa8:	02d00513          	li	a0,45
    80001fac:	00003097          	auipc	ra,0x3
    80001fb0:	1a0080e7          	jalr	416(ra) # 8000514c <__putc>
    80001fb4:	409004b3          	neg	s1,s1
    80001fb8:	fd1ff06f          	j	80001f88 <_Z11__print_intx+0x1c>

0000000080001fbc <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00813423          	sd	s0,8(sp)
    80001fc4:	01010413          	addi	s0,sp,16

}
    80001fc8:	00813403          	ld	s0,8(sp)
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00008067          	ret

0000000080001fd4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00113423          	sd	ra,8(sp)
    80001fdc:	00813023          	sd	s0,0(sp)
    80001fe0:	01010413          	addi	s0,sp,16
}
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	948080e7          	jalr	-1720(ra) # 8000192c <_ZdlPv>
    80001fec:	00813083          	ld	ra,8(sp)
    80001ff0:	00013403          	ld	s0,0(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00813423          	sd	s0,8(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	00005797          	auipc	a5,0x5
    8000200c:	1e078793          	addi	a5,a5,480 # 800071e8 <_ZTV6Thread+0x10>
    80002010:	00f53023          	sd	a5,0(a0)
}
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN6Thread5startEv>:

int Thread::start() {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00813423          	sd	s0,8(sp)
    80002028:	01010413          	addi	s0,sp,16
    return 0;
}
    8000202c:	00000513          	li	a0,0
    80002030:	00813403          	ld	s0,8(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16

}
    80002048:	00813403          	ld	s0,8(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00813423          	sd	s0,8(sp)
    8000205c:	01010413          	addi	s0,sp,16
    return 0;
}
    80002060:	00000513          	li	a0,0
    80002064:	00813403          	ld	s0,8(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00813423          	sd	s0,8(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	00005797          	auipc	a5,0x5
    80002080:	16c78793          	addi	a5,a5,364 # 800071e8 <_ZTV6Thread+0x10>
    80002084:	00f53023          	sd	a5,0(a0)

}
    80002088:	00813403          	ld	s0,8(sp)
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret

0000000080002094 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002094:	fe010113          	addi	sp,sp,-32
    80002098:	00113c23          	sd	ra,24(sp)
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00913423          	sd	s1,8(sp)
    800020a4:	02010413          	addi	s0,sp,32
    800020a8:	00050493          	mv	s1,a0
    LOCK();
    800020ac:	00100613          	li	a2,1
    800020b0:	00000593          	li	a1,0
    800020b4:	00005517          	auipc	a0,0x5
    800020b8:	20c50513          	addi	a0,a0,524 # 800072c0 <lockPrint>
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	1a8080e7          	jalr	424(ra) # 80001264 <copy_and_swap>
    800020c4:	fe0514e3          	bnez	a0,800020ac <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800020c8:	0004c503          	lbu	a0,0(s1)
    800020cc:	00050a63          	beqz	a0,800020e0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800020d0:	fffff097          	auipc	ra,0xfffff
    800020d4:	268080e7          	jalr	616(ra) # 80001338 <_Z4putcc>
        string++;
    800020d8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800020dc:	fedff06f          	j	800020c8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800020e0:	00000613          	li	a2,0
    800020e4:	00100593          	li	a1,1
    800020e8:	00005517          	auipc	a0,0x5
    800020ec:	1d850513          	addi	a0,a0,472 # 800072c0 <lockPrint>
    800020f0:	fffff097          	auipc	ra,0xfffff
    800020f4:	174080e7          	jalr	372(ra) # 80001264 <copy_and_swap>
    800020f8:	fe0514e3          	bnez	a0,800020e0 <_Z11printStringPKc+0x4c>
}
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00008067          	ret

0000000080002110 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002110:	fd010113          	addi	sp,sp,-48
    80002114:	02113423          	sd	ra,40(sp)
    80002118:	02813023          	sd	s0,32(sp)
    8000211c:	00913c23          	sd	s1,24(sp)
    80002120:	01213823          	sd	s2,16(sp)
    80002124:	01313423          	sd	s3,8(sp)
    80002128:	01413023          	sd	s4,0(sp)
    8000212c:	03010413          	addi	s0,sp,48
    80002130:	00050993          	mv	s3,a0
    80002134:	00058a13          	mv	s4,a1
    LOCK();
    80002138:	00100613          	li	a2,1
    8000213c:	00000593          	li	a1,0
    80002140:	00005517          	auipc	a0,0x5
    80002144:	18050513          	addi	a0,a0,384 # 800072c0 <lockPrint>
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	11c080e7          	jalr	284(ra) # 80001264 <copy_and_swap>
    80002150:	fe0514e3          	bnez	a0,80002138 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002154:	00000913          	li	s2,0
    80002158:	00090493          	mv	s1,s2
    8000215c:	0019091b          	addiw	s2,s2,1
    80002160:	03495a63          	bge	s2,s4,80002194 <_Z9getStringPci+0x84>
        cc = getc();
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	1ac080e7          	jalr	428(ra) # 80001310 <_Z4getcv>
        if(cc < 1)
    8000216c:	02050463          	beqz	a0,80002194 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002170:	009984b3          	add	s1,s3,s1
    80002174:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002178:	00a00793          	li	a5,10
    8000217c:	00f50a63          	beq	a0,a5,80002190 <_Z9getStringPci+0x80>
    80002180:	00d00793          	li	a5,13
    80002184:	fcf51ae3          	bne	a0,a5,80002158 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002188:	00090493          	mv	s1,s2
    8000218c:	0080006f          	j	80002194 <_Z9getStringPci+0x84>
    80002190:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002194:	009984b3          	add	s1,s3,s1
    80002198:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000219c:	00000613          	li	a2,0
    800021a0:	00100593          	li	a1,1
    800021a4:	00005517          	auipc	a0,0x5
    800021a8:	11c50513          	addi	a0,a0,284 # 800072c0 <lockPrint>
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	0b8080e7          	jalr	184(ra) # 80001264 <copy_and_swap>
    800021b4:	fe0514e3          	bnez	a0,8000219c <_Z9getStringPci+0x8c>
    return buf;
}
    800021b8:	00098513          	mv	a0,s3
    800021bc:	02813083          	ld	ra,40(sp)
    800021c0:	02013403          	ld	s0,32(sp)
    800021c4:	01813483          	ld	s1,24(sp)
    800021c8:	01013903          	ld	s2,16(sp)
    800021cc:	00813983          	ld	s3,8(sp)
    800021d0:	00013a03          	ld	s4,0(sp)
    800021d4:	03010113          	addi	sp,sp,48
    800021d8:	00008067          	ret

00000000800021dc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00813423          	sd	s0,8(sp)
    800021e4:	01010413          	addi	s0,sp,16
    800021e8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800021ec:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800021f0:	0006c603          	lbu	a2,0(a3)
    800021f4:	fd06071b          	addiw	a4,a2,-48
    800021f8:	0ff77713          	andi	a4,a4,255
    800021fc:	00900793          	li	a5,9
    80002200:	02e7e063          	bltu	a5,a4,80002220 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002204:	0025179b          	slliw	a5,a0,0x2
    80002208:	00a787bb          	addw	a5,a5,a0
    8000220c:	0017979b          	slliw	a5,a5,0x1
    80002210:	00168693          	addi	a3,a3,1
    80002214:	00c787bb          	addw	a5,a5,a2
    80002218:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000221c:	fd5ff06f          	j	800021f0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002220:	00813403          	ld	s0,8(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret

000000008000222c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000222c:	fc010113          	addi	sp,sp,-64
    80002230:	02113c23          	sd	ra,56(sp)
    80002234:	02813823          	sd	s0,48(sp)
    80002238:	02913423          	sd	s1,40(sp)
    8000223c:	03213023          	sd	s2,32(sp)
    80002240:	01313c23          	sd	s3,24(sp)
    80002244:	04010413          	addi	s0,sp,64
    80002248:	00050493          	mv	s1,a0
    8000224c:	00058913          	mv	s2,a1
    80002250:	00060993          	mv	s3,a2
    LOCK();
    80002254:	00100613          	li	a2,1
    80002258:	00000593          	li	a1,0
    8000225c:	00005517          	auipc	a0,0x5
    80002260:	06450513          	addi	a0,a0,100 # 800072c0 <lockPrint>
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	000080e7          	jalr	ra # 80001264 <copy_and_swap>
    8000226c:	fe0514e3          	bnez	a0,80002254 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002270:	00098463          	beqz	s3,80002278 <_Z8printIntiii+0x4c>
    80002274:	0804c463          	bltz	s1,800022fc <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002278:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000227c:	00000593          	li	a1,0
    }

    i = 0;
    80002280:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002284:	0009079b          	sext.w	a5,s2
    80002288:	0325773b          	remuw	a4,a0,s2
    8000228c:	00048613          	mv	a2,s1
    80002290:	0014849b          	addiw	s1,s1,1
    80002294:	02071693          	slli	a3,a4,0x20
    80002298:	0206d693          	srli	a3,a3,0x20
    8000229c:	00005717          	auipc	a4,0x5
    800022a0:	f6470713          	addi	a4,a4,-156 # 80007200 <digits>
    800022a4:	00d70733          	add	a4,a4,a3
    800022a8:	00074683          	lbu	a3,0(a4)
    800022ac:	fd040713          	addi	a4,s0,-48
    800022b0:	00c70733          	add	a4,a4,a2
    800022b4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800022b8:	0005071b          	sext.w	a4,a0
    800022bc:	0325553b          	divuw	a0,a0,s2
    800022c0:	fcf772e3          	bgeu	a4,a5,80002284 <_Z8printIntiii+0x58>
    if(neg)
    800022c4:	00058c63          	beqz	a1,800022dc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800022c8:	fd040793          	addi	a5,s0,-48
    800022cc:	009784b3          	add	s1,a5,s1
    800022d0:	02d00793          	li	a5,45
    800022d4:	fef48823          	sb	a5,-16(s1)
    800022d8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800022dc:	fff4849b          	addiw	s1,s1,-1
    800022e0:	0204c463          	bltz	s1,80002308 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800022e4:	fd040793          	addi	a5,s0,-48
    800022e8:	009787b3          	add	a5,a5,s1
    800022ec:	ff07c503          	lbu	a0,-16(a5)
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	048080e7          	jalr	72(ra) # 80001338 <_Z4putcc>
    800022f8:	fe5ff06f          	j	800022dc <_Z8printIntiii+0xb0>
        x = -xx;
    800022fc:	4090053b          	negw	a0,s1
        neg = 1;
    80002300:	00100593          	li	a1,1
        x = -xx;
    80002304:	f7dff06f          	j	80002280 <_Z8printIntiii+0x54>

    UNLOCK();
    80002308:	00000613          	li	a2,0
    8000230c:	00100593          	li	a1,1
    80002310:	00005517          	auipc	a0,0x5
    80002314:	fb050513          	addi	a0,a0,-80 # 800072c0 <lockPrint>
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	f4c080e7          	jalr	-180(ra) # 80001264 <copy_and_swap>
    80002320:	fe0514e3          	bnez	a0,80002308 <_Z8printIntiii+0xdc>
    80002324:	03813083          	ld	ra,56(sp)
    80002328:	03013403          	ld	s0,48(sp)
    8000232c:	02813483          	ld	s1,40(sp)
    80002330:	02013903          	ld	s2,32(sp)
    80002334:	01813983          	ld	s3,24(sp)
    80002338:	04010113          	addi	sp,sp,64
    8000233c:	00008067          	ret

0000000080002340 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002340:	fd010113          	addi	sp,sp,-48
    80002344:	02113423          	sd	ra,40(sp)
    80002348:	02813023          	sd	s0,32(sp)
    8000234c:	00913c23          	sd	s1,24(sp)
    80002350:	01213823          	sd	s2,16(sp)
    80002354:	01313423          	sd	s3,8(sp)
    80002358:	03010413          	addi	s0,sp,48
    8000235c:	00050493          	mv	s1,a0
    80002360:	00058913          	mv	s2,a1
    80002364:	0015879b          	addiw	a5,a1,1
    80002368:	0007851b          	sext.w	a0,a5
    8000236c:	00f4a023          	sw	a5,0(s1)
    80002370:	0004a823          	sw	zero,16(s1)
    80002374:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002378:	00251513          	slli	a0,a0,0x2
    8000237c:	fffff097          	auipc	ra,0xfffff
    80002380:	c84080e7          	jalr	-892(ra) # 80001000 <mem_alloc>
    80002384:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002388:	01000513          	li	a0,16
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	550080e7          	jalr	1360(ra) # 800018dc <_Znwm>
    80002394:	00050993          	mv	s3,a0
    80002398:	00000593          	li	a1,0
    8000239c:	fffff097          	auipc	ra,0xfffff
    800023a0:	2ac080e7          	jalr	684(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    800023a4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800023a8:	01000513          	li	a0,16
    800023ac:	fffff097          	auipc	ra,0xfffff
    800023b0:	530080e7          	jalr	1328(ra) # 800018dc <_Znwm>
    800023b4:	00050993          	mv	s3,a0
    800023b8:	00090593          	mv	a1,s2
    800023bc:	fffff097          	auipc	ra,0xfffff
    800023c0:	28c080e7          	jalr	652(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    800023c4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800023c8:	01000513          	li	a0,16
    800023cc:	fffff097          	auipc	ra,0xfffff
    800023d0:	510080e7          	jalr	1296(ra) # 800018dc <_Znwm>
    800023d4:	00050913          	mv	s2,a0
    800023d8:	00100593          	li	a1,1
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	26c080e7          	jalr	620(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    800023e4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800023e8:	01000513          	li	a0,16
    800023ec:	fffff097          	auipc	ra,0xfffff
    800023f0:	4f0080e7          	jalr	1264(ra) # 800018dc <_Znwm>
    800023f4:	00050913          	mv	s2,a0
    800023f8:	00100593          	li	a1,1
    800023fc:	fffff097          	auipc	ra,0xfffff
    80002400:	24c080e7          	jalr	588(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    80002404:	0324b823          	sd	s2,48(s1)
}
    80002408:	02813083          	ld	ra,40(sp)
    8000240c:	02013403          	ld	s0,32(sp)
    80002410:	01813483          	ld	s1,24(sp)
    80002414:	01013903          	ld	s2,16(sp)
    80002418:	00813983          	ld	s3,8(sp)
    8000241c:	03010113          	addi	sp,sp,48
    80002420:	00008067          	ret
    80002424:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002428:	00098513          	mv	a0,s3
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	500080e7          	jalr	1280(ra) # 8000192c <_ZdlPv>
    80002434:	00048513          	mv	a0,s1
    80002438:	00006097          	auipc	ra,0x6
    8000243c:	f60080e7          	jalr	-160(ra) # 80008398 <_Unwind_Resume>
    80002440:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002444:	00098513          	mv	a0,s3
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	4e4080e7          	jalr	1252(ra) # 8000192c <_ZdlPv>
    80002450:	00048513          	mv	a0,s1
    80002454:	00006097          	auipc	ra,0x6
    80002458:	f44080e7          	jalr	-188(ra) # 80008398 <_Unwind_Resume>
    8000245c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002460:	00090513          	mv	a0,s2
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	4c8080e7          	jalr	1224(ra) # 8000192c <_ZdlPv>
    8000246c:	00048513          	mv	a0,s1
    80002470:	00006097          	auipc	ra,0x6
    80002474:	f28080e7          	jalr	-216(ra) # 80008398 <_Unwind_Resume>
    80002478:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000247c:	00090513          	mv	a0,s2
    80002480:	fffff097          	auipc	ra,0xfffff
    80002484:	4ac080e7          	jalr	1196(ra) # 8000192c <_ZdlPv>
    80002488:	00048513          	mv	a0,s1
    8000248c:	00006097          	auipc	ra,0x6
    80002490:	f0c080e7          	jalr	-244(ra) # 80008398 <_Unwind_Resume>

0000000080002494 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002494:	fe010113          	addi	sp,sp,-32
    80002498:	00113c23          	sd	ra,24(sp)
    8000249c:	00813823          	sd	s0,16(sp)
    800024a0:	00913423          	sd	s1,8(sp)
    800024a4:	01213023          	sd	s2,0(sp)
    800024a8:	02010413          	addi	s0,sp,32
    800024ac:	00050493          	mv	s1,a0
    800024b0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800024b4:	01853503          	ld	a0,24(a0)
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	1b4080e7          	jalr	436(ra) # 8000166c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800024c0:	0304b503          	ld	a0,48(s1)
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	1a8080e7          	jalr	424(ra) # 8000166c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800024cc:	0084b783          	ld	a5,8(s1)
    800024d0:	0144a703          	lw	a4,20(s1)
    800024d4:	00271713          	slli	a4,a4,0x2
    800024d8:	00e787b3          	add	a5,a5,a4
    800024dc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800024e0:	0144a783          	lw	a5,20(s1)
    800024e4:	0017879b          	addiw	a5,a5,1
    800024e8:	0004a703          	lw	a4,0(s1)
    800024ec:	02e7e7bb          	remw	a5,a5,a4
    800024f0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800024f4:	0304b503          	ld	a0,48(s1)
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	190080e7          	jalr	400(ra) # 80001688 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002500:	0204b503          	ld	a0,32(s1)
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	184080e7          	jalr	388(ra) # 80001688 <_ZN9Semaphore6signalEv>

}
    8000250c:	01813083          	ld	ra,24(sp)
    80002510:	01013403          	ld	s0,16(sp)
    80002514:	00813483          	ld	s1,8(sp)
    80002518:	00013903          	ld	s2,0(sp)
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00008067          	ret

0000000080002524 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002524:	fe010113          	addi	sp,sp,-32
    80002528:	00113c23          	sd	ra,24(sp)
    8000252c:	00813823          	sd	s0,16(sp)
    80002530:	00913423          	sd	s1,8(sp)
    80002534:	01213023          	sd	s2,0(sp)
    80002538:	02010413          	addi	s0,sp,32
    8000253c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002540:	02053503          	ld	a0,32(a0)
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	128080e7          	jalr	296(ra) # 8000166c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000254c:	0284b503          	ld	a0,40(s1)
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	11c080e7          	jalr	284(ra) # 8000166c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002558:	0084b703          	ld	a4,8(s1)
    8000255c:	0104a783          	lw	a5,16(s1)
    80002560:	00279693          	slli	a3,a5,0x2
    80002564:	00d70733          	add	a4,a4,a3
    80002568:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000256c:	0017879b          	addiw	a5,a5,1
    80002570:	0004a703          	lw	a4,0(s1)
    80002574:	02e7e7bb          	remw	a5,a5,a4
    80002578:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000257c:	0284b503          	ld	a0,40(s1)
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	108080e7          	jalr	264(ra) # 80001688 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002588:	0184b503          	ld	a0,24(s1)
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	0fc080e7          	jalr	252(ra) # 80001688 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002594:	00090513          	mv	a0,s2
    80002598:	01813083          	ld	ra,24(sp)
    8000259c:	01013403          	ld	s0,16(sp)
    800025a0:	00813483          	ld	s1,8(sp)
    800025a4:	00013903          	ld	s2,0(sp)
    800025a8:	02010113          	addi	sp,sp,32
    800025ac:	00008067          	ret

00000000800025b0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800025b0:	fe010113          	addi	sp,sp,-32
    800025b4:	00113c23          	sd	ra,24(sp)
    800025b8:	00813823          	sd	s0,16(sp)
    800025bc:	00913423          	sd	s1,8(sp)
    800025c0:	01213023          	sd	s2,0(sp)
    800025c4:	02010413          	addi	s0,sp,32
    800025c8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800025cc:	02853503          	ld	a0,40(a0)
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	09c080e7          	jalr	156(ra) # 8000166c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800025d8:	0304b503          	ld	a0,48(s1)
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	090080e7          	jalr	144(ra) # 8000166c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800025e4:	0144a783          	lw	a5,20(s1)
    800025e8:	0104a903          	lw	s2,16(s1)
    800025ec:	0327ce63          	blt	a5,s2,80002628 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800025f0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800025f4:	0304b503          	ld	a0,48(s1)
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	090080e7          	jalr	144(ra) # 80001688 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002600:	0284b503          	ld	a0,40(s1)
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	084080e7          	jalr	132(ra) # 80001688 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000260c:	00090513          	mv	a0,s2
    80002610:	01813083          	ld	ra,24(sp)
    80002614:	01013403          	ld	s0,16(sp)
    80002618:	00813483          	ld	s1,8(sp)
    8000261c:	00013903          	ld	s2,0(sp)
    80002620:	02010113          	addi	sp,sp,32
    80002624:	00008067          	ret
        ret = cap - head + tail;
    80002628:	0004a703          	lw	a4,0(s1)
    8000262c:	4127093b          	subw	s2,a4,s2
    80002630:	00f9093b          	addw	s2,s2,a5
    80002634:	fc1ff06f          	j	800025f4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002638 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002638:	fe010113          	addi	sp,sp,-32
    8000263c:	00113c23          	sd	ra,24(sp)
    80002640:	00813823          	sd	s0,16(sp)
    80002644:	00913423          	sd	s1,8(sp)
    80002648:	02010413          	addi	s0,sp,32
    8000264c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002650:	00a00513          	li	a0,10
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	0f8080e7          	jalr	248(ra) # 8000174c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000265c:	00004517          	auipc	a0,0x4
    80002660:	a9c50513          	addi	a0,a0,-1380 # 800060f8 <_ZZ14__print_uint64mE6digits+0x10>
    80002664:	00000097          	auipc	ra,0x0
    80002668:	a30080e7          	jalr	-1488(ra) # 80002094 <_Z11printStringPKc>
    while (getCnt()) {
    8000266c:	00048513          	mv	a0,s1
    80002670:	00000097          	auipc	ra,0x0
    80002674:	f40080e7          	jalr	-192(ra) # 800025b0 <_ZN9BufferCPP6getCntEv>
    80002678:	02050c63          	beqz	a0,800026b0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000267c:	0084b783          	ld	a5,8(s1)
    80002680:	0104a703          	lw	a4,16(s1)
    80002684:	00271713          	slli	a4,a4,0x2
    80002688:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000268c:	0007c503          	lbu	a0,0(a5)
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	0bc080e7          	jalr	188(ra) # 8000174c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002698:	0104a783          	lw	a5,16(s1)
    8000269c:	0017879b          	addiw	a5,a5,1
    800026a0:	0004a703          	lw	a4,0(s1)
    800026a4:	02e7e7bb          	remw	a5,a5,a4
    800026a8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800026ac:	fc1ff06f          	j	8000266c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800026b0:	02100513          	li	a0,33
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	098080e7          	jalr	152(ra) # 8000174c <_ZN7Console4putcEc>
    Console::putc('\n');
    800026bc:	00a00513          	li	a0,10
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	08c080e7          	jalr	140(ra) # 8000174c <_ZN7Console4putcEc>
    mem_free(buffer);
    800026c8:	0084b503          	ld	a0,8(s1)
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	940080e7          	jalr	-1728(ra) # 8000100c <mem_free>
    delete itemAvailable;
    800026d4:	0204b503          	ld	a0,32(s1)
    800026d8:	00050863          	beqz	a0,800026e8 <_ZN9BufferCPPD1Ev+0xb0>
    800026dc:	00053783          	ld	a5,0(a0)
    800026e0:	0087b783          	ld	a5,8(a5)
    800026e4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800026e8:	0184b503          	ld	a0,24(s1)
    800026ec:	00050863          	beqz	a0,800026fc <_ZN9BufferCPPD1Ev+0xc4>
    800026f0:	00053783          	ld	a5,0(a0)
    800026f4:	0087b783          	ld	a5,8(a5)
    800026f8:	000780e7          	jalr	a5
    delete mutexTail;
    800026fc:	0304b503          	ld	a0,48(s1)
    80002700:	00050863          	beqz	a0,80002710 <_ZN9BufferCPPD1Ev+0xd8>
    80002704:	00053783          	ld	a5,0(a0)
    80002708:	0087b783          	ld	a5,8(a5)
    8000270c:	000780e7          	jalr	a5
    delete mutexHead;
    80002710:	0284b503          	ld	a0,40(s1)
    80002714:	00050863          	beqz	a0,80002724 <_ZN9BufferCPPD1Ev+0xec>
    80002718:	00053783          	ld	a5,0(a0)
    8000271c:	0087b783          	ld	a5,8(a5)
    80002720:	000780e7          	jalr	a5
}
    80002724:	01813083          	ld	ra,24(sp)
    80002728:	01013403          	ld	s0,16(sp)
    8000272c:	00813483          	ld	s1,8(sp)
    80002730:	02010113          	addi	sp,sp,32
    80002734:	00008067          	ret

0000000080002738 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80002738:	fe010113          	addi	sp,sp,-32
    8000273c:	00113c23          	sd	ra,24(sp)
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	01213023          	sd	s2,0(sp)
    8000274c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002750:	00000913          	li	s2,0
    80002754:	0380006f          	j	8000278c <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	8d8080e7          	jalr	-1832(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80002760:	00148493          	addi	s1,s1,1
    80002764:	000027b7          	lui	a5,0x2
    80002768:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000276c:	0097ee63          	bltu	a5,s1,80002788 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002770:	00000713          	li	a4,0
    80002774:	000077b7          	lui	a5,0x7
    80002778:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000277c:	fce7eee3          	bltu	a5,a4,80002758 <_Z11workerBodyAPv+0x20>
    80002780:	00170713          	addi	a4,a4,1
    80002784:	ff1ff06f          	j	80002774 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002788:	00190913          	addi	s2,s2,1
    8000278c:	00900793          	li	a5,9
    80002790:	0527e063          	bltu	a5,s2,800027d0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002794:	00004517          	auipc	a0,0x4
    80002798:	97c50513          	addi	a0,a0,-1668 # 80006110 <_ZZ14__print_uint64mE6digits+0x28>
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	8f8080e7          	jalr	-1800(ra) # 80002094 <_Z11printStringPKc>
    800027a4:	00000613          	li	a2,0
    800027a8:	00a00593          	li	a1,10
    800027ac:	0009051b          	sext.w	a0,s2
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	a7c080e7          	jalr	-1412(ra) # 8000222c <_Z8printIntiii>
    800027b8:	00004517          	auipc	a0,0x4
    800027bc:	a7050513          	addi	a0,a0,-1424 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	8d4080e7          	jalr	-1836(ra) # 80002094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800027c8:	00000493          	li	s1,0
    800027cc:	f99ff06f          	j	80002764 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800027d0:	00004517          	auipc	a0,0x4
    800027d4:	94850513          	addi	a0,a0,-1720 # 80006118 <_ZZ14__print_uint64mE6digits+0x30>
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	8bc080e7          	jalr	-1860(ra) # 80002094 <_Z11printStringPKc>
    finishedA = true;
    800027e0:	00100793          	li	a5,1
    800027e4:	00005717          	auipc	a4,0x5
    800027e8:	aef70223          	sb	a5,-1308(a4) # 800072c8 <finishedA>
    thread_exit();
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	838080e7          	jalr	-1992(ra) # 80001024 <thread_exit>
}
    800027f4:	01813083          	ld	ra,24(sp)
    800027f8:	01013403          	ld	s0,16(sp)
    800027fc:	00813483          	ld	s1,8(sp)
    80002800:	00013903          	ld	s2,0(sp)
    80002804:	02010113          	addi	sp,sp,32
    80002808:	00008067          	ret

000000008000280c <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    8000280c:	fe010113          	addi	sp,sp,-32
    80002810:	00113c23          	sd	ra,24(sp)
    80002814:	00813823          	sd	s0,16(sp)
    80002818:	00913423          	sd	s1,8(sp)
    8000281c:	01213023          	sd	s2,0(sp)
    80002820:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002824:	00000913          	li	s2,0
    80002828:	0380006f          	j	80002860 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	804080e7          	jalr	-2044(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80002834:	00148493          	addi	s1,s1,1
    80002838:	000027b7          	lui	a5,0x2
    8000283c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002840:	0097ee63          	bltu	a5,s1,8000285c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002844:	00000713          	li	a4,0
    80002848:	000077b7          	lui	a5,0x7
    8000284c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002850:	fce7eee3          	bltu	a5,a4,8000282c <_Z11workerBodyBPv+0x20>
    80002854:	00170713          	addi	a4,a4,1
    80002858:	ff1ff06f          	j	80002848 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000285c:	00190913          	addi	s2,s2,1
    80002860:	00f00793          	li	a5,15
    80002864:	0527e063          	bltu	a5,s2,800028a4 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002868:	00004517          	auipc	a0,0x4
    8000286c:	8c050513          	addi	a0,a0,-1856 # 80006128 <_ZZ14__print_uint64mE6digits+0x40>
    80002870:	00000097          	auipc	ra,0x0
    80002874:	824080e7          	jalr	-2012(ra) # 80002094 <_Z11printStringPKc>
    80002878:	00000613          	li	a2,0
    8000287c:	00a00593          	li	a1,10
    80002880:	0009051b          	sext.w	a0,s2
    80002884:	00000097          	auipc	ra,0x0
    80002888:	9a8080e7          	jalr	-1624(ra) # 8000222c <_Z8printIntiii>
    8000288c:	00004517          	auipc	a0,0x4
    80002890:	99c50513          	addi	a0,a0,-1636 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80002894:	00000097          	auipc	ra,0x0
    80002898:	800080e7          	jalr	-2048(ra) # 80002094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000289c:	00000493          	li	s1,0
    800028a0:	f99ff06f          	j	80002838 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    800028a4:	00004517          	auipc	a0,0x4
    800028a8:	88c50513          	addi	a0,a0,-1908 # 80006130 <_ZZ14__print_uint64mE6digits+0x48>
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	7e8080e7          	jalr	2024(ra) # 80002094 <_Z11printStringPKc>
    finishedB = true;
    800028b4:	00100793          	li	a5,1
    800028b8:	00005717          	auipc	a4,0x5
    800028bc:	a0f708a3          	sb	a5,-1519(a4) # 800072c9 <finishedB>
    //thread_dispatch();
    thread_exit();
    800028c0:	ffffe097          	auipc	ra,0xffffe
    800028c4:	764080e7          	jalr	1892(ra) # 80001024 <thread_exit>
}
    800028c8:	01813083          	ld	ra,24(sp)
    800028cc:	01013403          	ld	s0,16(sp)
    800028d0:	00813483          	ld	s1,8(sp)
    800028d4:	00013903          	ld	s2,0(sp)
    800028d8:	02010113          	addi	sp,sp,32
    800028dc:	00008067          	ret

00000000800028e0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800028e0:	fe010113          	addi	sp,sp,-32
    800028e4:	00113c23          	sd	ra,24(sp)
    800028e8:	00813823          	sd	s0,16(sp)
    800028ec:	00913423          	sd	s1,8(sp)
    800028f0:	01213023          	sd	s2,0(sp)
    800028f4:	02010413          	addi	s0,sp,32
    800028f8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800028fc:	00100793          	li	a5,1
    80002900:	02a7f863          	bgeu	a5,a0,80002930 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002904:	00a00793          	li	a5,10
    80002908:	02f577b3          	remu	a5,a0,a5
    8000290c:	02078e63          	beqz	a5,80002948 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002910:	fff48513          	addi	a0,s1,-1
    80002914:	00000097          	auipc	ra,0x0
    80002918:	fcc080e7          	jalr	-52(ra) # 800028e0 <_Z9fibonaccim>
    8000291c:	00050913          	mv	s2,a0
    80002920:	ffe48513          	addi	a0,s1,-2
    80002924:	00000097          	auipc	ra,0x0
    80002928:	fbc080e7          	jalr	-68(ra) # 800028e0 <_Z9fibonaccim>
    8000292c:	00a90533          	add	a0,s2,a0
}
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	01013403          	ld	s0,16(sp)
    80002938:	00813483          	ld	s1,8(sp)
    8000293c:	00013903          	ld	s2,0(sp)
    80002940:	02010113          	addi	sp,sp,32
    80002944:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002948:	ffffe097          	auipc	ra,0xffffe
    8000294c:	6e8080e7          	jalr	1768(ra) # 80001030 <thread_dispatch>
    80002950:	fc1ff06f          	j	80002910 <_Z9fibonaccim+0x30>

0000000080002954 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00813823          	sd	s0,16(sp)
    80002960:	00913423          	sd	s1,8(sp)
    80002964:	01213023          	sd	s2,0(sp)
    80002968:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000296c:	00000493          	li	s1,0
    80002970:	0400006f          	j	800029b0 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002974:	00003517          	auipc	a0,0x3
    80002978:	7cc50513          	addi	a0,a0,1996 # 80006140 <_ZZ14__print_uint64mE6digits+0x58>
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	718080e7          	jalr	1816(ra) # 80002094 <_Z11printStringPKc>
    80002984:	00000613          	li	a2,0
    80002988:	00a00593          	li	a1,10
    8000298c:	00048513          	mv	a0,s1
    80002990:	00000097          	auipc	ra,0x0
    80002994:	89c080e7          	jalr	-1892(ra) # 8000222c <_Z8printIntiii>
    80002998:	00004517          	auipc	a0,0x4
    8000299c:	89050513          	addi	a0,a0,-1904 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	6f4080e7          	jalr	1780(ra) # 80002094 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800029a8:	0014849b          	addiw	s1,s1,1
    800029ac:	0ff4f493          	andi	s1,s1,255
    800029b0:	00200793          	li	a5,2
    800029b4:	fc97f0e3          	bgeu	a5,s1,80002974 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800029b8:	00003517          	auipc	a0,0x3
    800029bc:	79050513          	addi	a0,a0,1936 # 80006148 <_ZZ14__print_uint64mE6digits+0x60>
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	6d4080e7          	jalr	1748(ra) # 80002094 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800029c8:	00700313          	li	t1,7
    thread_dispatch();
    800029cc:	ffffe097          	auipc	ra,0xffffe
    800029d0:	664080e7          	jalr	1636(ra) # 80001030 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800029d4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800029d8:	00003517          	auipc	a0,0x3
    800029dc:	78050513          	addi	a0,a0,1920 # 80006158 <_ZZ14__print_uint64mE6digits+0x70>
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	6b4080e7          	jalr	1716(ra) # 80002094 <_Z11printStringPKc>
    800029e8:	00000613          	li	a2,0
    800029ec:	00a00593          	li	a1,10
    800029f0:	0009051b          	sext.w	a0,s2
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	838080e7          	jalr	-1992(ra) # 8000222c <_Z8printIntiii>
    800029fc:	00004517          	auipc	a0,0x4
    80002a00:	82c50513          	addi	a0,a0,-2004 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	690080e7          	jalr	1680(ra) # 80002094 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002a0c:	00c00513          	li	a0,12
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	ed0080e7          	jalr	-304(ra) # 800028e0 <_Z9fibonaccim>
    80002a18:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002a1c:	00003517          	auipc	a0,0x3
    80002a20:	74450513          	addi	a0,a0,1860 # 80006160 <_ZZ14__print_uint64mE6digits+0x78>
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	670080e7          	jalr	1648(ra) # 80002094 <_Z11printStringPKc>
    80002a2c:	00000613          	li	a2,0
    80002a30:	00a00593          	li	a1,10
    80002a34:	0009051b          	sext.w	a0,s2
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	7f4080e7          	jalr	2036(ra) # 8000222c <_Z8printIntiii>
    80002a40:	00003517          	auipc	a0,0x3
    80002a44:	7e850513          	addi	a0,a0,2024 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	64c080e7          	jalr	1612(ra) # 80002094 <_Z11printStringPKc>
    80002a50:	0400006f          	j	80002a90 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002a54:	00003517          	auipc	a0,0x3
    80002a58:	6ec50513          	addi	a0,a0,1772 # 80006140 <_ZZ14__print_uint64mE6digits+0x58>
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	638080e7          	jalr	1592(ra) # 80002094 <_Z11printStringPKc>
    80002a64:	00000613          	li	a2,0
    80002a68:	00a00593          	li	a1,10
    80002a6c:	00048513          	mv	a0,s1
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	7bc080e7          	jalr	1980(ra) # 8000222c <_Z8printIntiii>
    80002a78:	00003517          	auipc	a0,0x3
    80002a7c:	7b050513          	addi	a0,a0,1968 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	614080e7          	jalr	1556(ra) # 80002094 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002a88:	0014849b          	addiw	s1,s1,1
    80002a8c:	0ff4f493          	andi	s1,s1,255
    80002a90:	00500793          	li	a5,5
    80002a94:	fc97f0e3          	bgeu	a5,s1,80002a54 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80002a98:	00003517          	auipc	a0,0x3
    80002a9c:	68050513          	addi	a0,a0,1664 # 80006118 <_ZZ14__print_uint64mE6digits+0x30>
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	5f4080e7          	jalr	1524(ra) # 80002094 <_Z11printStringPKc>
    finishedC = true;
    80002aa8:	00100793          	li	a5,1
    80002aac:	00005717          	auipc	a4,0x5
    80002ab0:	80f70f23          	sb	a5,-2018(a4) # 800072ca <finishedC>
    //thread_dispatch();
    thread_exit();
    80002ab4:	ffffe097          	auipc	ra,0xffffe
    80002ab8:	570080e7          	jalr	1392(ra) # 80001024 <thread_exit>
}
    80002abc:	01813083          	ld	ra,24(sp)
    80002ac0:	01013403          	ld	s0,16(sp)
    80002ac4:	00813483          	ld	s1,8(sp)
    80002ac8:	00013903          	ld	s2,0(sp)
    80002acc:	02010113          	addi	sp,sp,32
    80002ad0:	00008067          	ret

0000000080002ad4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80002ad4:	fe010113          	addi	sp,sp,-32
    80002ad8:	00113c23          	sd	ra,24(sp)
    80002adc:	00813823          	sd	s0,16(sp)
    80002ae0:	00913423          	sd	s1,8(sp)
    80002ae4:	01213023          	sd	s2,0(sp)
    80002ae8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002aec:	00a00493          	li	s1,10
    80002af0:	0400006f          	j	80002b30 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002af4:	00003517          	auipc	a0,0x3
    80002af8:	67c50513          	addi	a0,a0,1660 # 80006170 <_ZZ14__print_uint64mE6digits+0x88>
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	598080e7          	jalr	1432(ra) # 80002094 <_Z11printStringPKc>
    80002b04:	00000613          	li	a2,0
    80002b08:	00a00593          	li	a1,10
    80002b0c:	00048513          	mv	a0,s1
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	71c080e7          	jalr	1820(ra) # 8000222c <_Z8printIntiii>
    80002b18:	00003517          	auipc	a0,0x3
    80002b1c:	71050513          	addi	a0,a0,1808 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	574080e7          	jalr	1396(ra) # 80002094 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002b28:	0014849b          	addiw	s1,s1,1
    80002b2c:	0ff4f493          	andi	s1,s1,255
    80002b30:	00c00793          	li	a5,12
    80002b34:	fc97f0e3          	bgeu	a5,s1,80002af4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002b38:	00003517          	auipc	a0,0x3
    80002b3c:	64050513          	addi	a0,a0,1600 # 80006178 <_ZZ14__print_uint64mE6digits+0x90>
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	554080e7          	jalr	1364(ra) # 80002094 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002b48:	00500313          	li	t1,5
    thread_dispatch();
    80002b4c:	ffffe097          	auipc	ra,0xffffe
    80002b50:	4e4080e7          	jalr	1252(ra) # 80001030 <thread_dispatch>

    uint64 result = fibonacci(16);
    80002b54:	01000513          	li	a0,16
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	d88080e7          	jalr	-632(ra) # 800028e0 <_Z9fibonaccim>
    80002b60:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002b64:	00003517          	auipc	a0,0x3
    80002b68:	62450513          	addi	a0,a0,1572 # 80006188 <_ZZ14__print_uint64mE6digits+0xa0>
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	528080e7          	jalr	1320(ra) # 80002094 <_Z11printStringPKc>
    80002b74:	00000613          	li	a2,0
    80002b78:	00a00593          	li	a1,10
    80002b7c:	0009051b          	sext.w	a0,s2
    80002b80:	fffff097          	auipc	ra,0xfffff
    80002b84:	6ac080e7          	jalr	1708(ra) # 8000222c <_Z8printIntiii>
    80002b88:	00003517          	auipc	a0,0x3
    80002b8c:	6a050513          	addi	a0,a0,1696 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	504080e7          	jalr	1284(ra) # 80002094 <_Z11printStringPKc>
    80002b98:	0400006f          	j	80002bd8 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002b9c:	00003517          	auipc	a0,0x3
    80002ba0:	5d450513          	addi	a0,a0,1492 # 80006170 <_ZZ14__print_uint64mE6digits+0x88>
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	4f0080e7          	jalr	1264(ra) # 80002094 <_Z11printStringPKc>
    80002bac:	00000613          	li	a2,0
    80002bb0:	00a00593          	li	a1,10
    80002bb4:	00048513          	mv	a0,s1
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	674080e7          	jalr	1652(ra) # 8000222c <_Z8printIntiii>
    80002bc0:	00003517          	auipc	a0,0x3
    80002bc4:	66850513          	addi	a0,a0,1640 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	4cc080e7          	jalr	1228(ra) # 80002094 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002bd0:	0014849b          	addiw	s1,s1,1
    80002bd4:	0ff4f493          	andi	s1,s1,255
    80002bd8:	00f00793          	li	a5,15
    80002bdc:	fc97f0e3          	bgeu	a5,s1,80002b9c <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002be0:	00003517          	auipc	a0,0x3
    80002be4:	5b850513          	addi	a0,a0,1464 # 80006198 <_ZZ14__print_uint64mE6digits+0xb0>
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	4ac080e7          	jalr	1196(ra) # 80002094 <_Z11printStringPKc>
    finishedD = true;
    80002bf0:	00100793          	li	a5,1
    80002bf4:	00004717          	auipc	a4,0x4
    80002bf8:	6cf70ba3          	sb	a5,1751(a4) # 800072cb <finishedD>
    //thread_dispatch();
    thread_exit();
    80002bfc:	ffffe097          	auipc	ra,0xffffe
    80002c00:	428080e7          	jalr	1064(ra) # 80001024 <thread_exit>
}
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	00013903          	ld	s2,0(sp)
    80002c14:	02010113          	addi	sp,sp,32
    80002c18:	00008067          	ret

0000000080002c1c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002c1c:	fd010113          	addi	sp,sp,-48
    80002c20:	02113423          	sd	ra,40(sp)
    80002c24:	02813023          	sd	s0,32(sp)
    80002c28:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002c2c:	00000613          	li	a2,0
    80002c30:	00000597          	auipc	a1,0x0
    80002c34:	b0858593          	addi	a1,a1,-1272 # 80002738 <_Z11workerBodyAPv>
    80002c38:	fd040513          	addi	a0,s0,-48
    80002c3c:	ffffe097          	auipc	ra,0xffffe
    80002c40:	3dc080e7          	jalr	988(ra) # 80001018 <thread_create>
    printString("ThreadA created\n");
    80002c44:	00003517          	auipc	a0,0x3
    80002c48:	56450513          	addi	a0,a0,1380 # 800061a8 <_ZZ14__print_uint64mE6digits+0xc0>
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	448080e7          	jalr	1096(ra) # 80002094 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002c54:	00000613          	li	a2,0
    80002c58:	00000597          	auipc	a1,0x0
    80002c5c:	bb458593          	addi	a1,a1,-1100 # 8000280c <_Z11workerBodyBPv>
    80002c60:	fd840513          	addi	a0,s0,-40
    80002c64:	ffffe097          	auipc	ra,0xffffe
    80002c68:	3b4080e7          	jalr	948(ra) # 80001018 <thread_create>
    printString("ThreadB created\n");
    80002c6c:	00003517          	auipc	a0,0x3
    80002c70:	55450513          	addi	a0,a0,1364 # 800061c0 <_ZZ14__print_uint64mE6digits+0xd8>
    80002c74:	fffff097          	auipc	ra,0xfffff
    80002c78:	420080e7          	jalr	1056(ra) # 80002094 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002c7c:	00000613          	li	a2,0
    80002c80:	00000597          	auipc	a1,0x0
    80002c84:	cd458593          	addi	a1,a1,-812 # 80002954 <_Z11workerBodyCPv>
    80002c88:	fe040513          	addi	a0,s0,-32
    80002c8c:	ffffe097          	auipc	ra,0xffffe
    80002c90:	38c080e7          	jalr	908(ra) # 80001018 <thread_create>
    printString("ThreadC created\n");
    80002c94:	00003517          	auipc	a0,0x3
    80002c98:	54450513          	addi	a0,a0,1348 # 800061d8 <_ZZ14__print_uint64mE6digits+0xf0>
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	3f8080e7          	jalr	1016(ra) # 80002094 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002ca4:	00000613          	li	a2,0
    80002ca8:	00000597          	auipc	a1,0x0
    80002cac:	e2c58593          	addi	a1,a1,-468 # 80002ad4 <_Z11workerBodyDPv>
    80002cb0:	fe840513          	addi	a0,s0,-24
    80002cb4:	ffffe097          	auipc	ra,0xffffe
    80002cb8:	364080e7          	jalr	868(ra) # 80001018 <thread_create>
    printString("ThreadD created\n");
    80002cbc:	00003517          	auipc	a0,0x3
    80002cc0:	53450513          	addi	a0,a0,1332 # 800061f0 <_ZZ14__print_uint64mE6digits+0x108>
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	3d0080e7          	jalr	976(ra) # 80002094 <_Z11printStringPKc>
    80002ccc:	00c0006f          	j	80002cd8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	360080e7          	jalr	864(ra) # 80001030 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002cd8:	00004797          	auipc	a5,0x4
    80002cdc:	5f07c783          	lbu	a5,1520(a5) # 800072c8 <finishedA>
    80002ce0:	fe0788e3          	beqz	a5,80002cd0 <_Z18Threads_C_API_testv+0xb4>
    80002ce4:	00004797          	auipc	a5,0x4
    80002ce8:	5e57c783          	lbu	a5,1509(a5) # 800072c9 <finishedB>
    80002cec:	fe0782e3          	beqz	a5,80002cd0 <_Z18Threads_C_API_testv+0xb4>
    80002cf0:	00004797          	auipc	a5,0x4
    80002cf4:	5da7c783          	lbu	a5,1498(a5) # 800072ca <finishedC>
    80002cf8:	fc078ce3          	beqz	a5,80002cd0 <_Z18Threads_C_API_testv+0xb4>
    80002cfc:	00004797          	auipc	a5,0x4
    80002d00:	5cf7c783          	lbu	a5,1487(a5) # 800072cb <finishedD>
    80002d04:	fc0786e3          	beqz	a5,80002cd0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002d08:	02813083          	ld	ra,40(sp)
    80002d0c:	02013403          	ld	s0,32(sp)
    80002d10:	03010113          	addi	sp,sp,48
    80002d14:	00008067          	ret

0000000080002d18 <_Z8userMainv>:

#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"

void userMain() {
    80002d18:	ff010113          	addi	sp,sp,-16
    80002d1c:	00113423          	sd	ra,8(sp)
    80002d20:	00813023          	sd	s0,0(sp)
    80002d24:	01010413          	addi	s0,sp,16
    __print_string("I am here!\n");
    80002d28:	00003517          	auipc	a0,0x3
    80002d2c:	4e050513          	addi	a0,a0,1248 # 80006208 <_ZZ14__print_uint64mE6digits+0x120>
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	174080e7          	jalr	372(ra) # 80001ea4 <_Z14__print_stringPKc>
    //printString("I am here!");
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	ee4080e7          	jalr	-284(ra) # 80002c1c <_Z18Threads_C_API_testv>
    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //__print_string("I am here too!\n");
    //thread_dispatch();
    __print_string("I am here again!\n");
    80002d40:	00003517          	auipc	a0,0x3
    80002d44:	4d850513          	addi	a0,a0,1240 # 80006218 <_ZZ14__print_uint64mE6digits+0x130>
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	15c080e7          	jalr	348(ra) # 80001ea4 <_Z14__print_stringPKc>
    thread_exit();
    80002d50:	ffffe097          	auipc	ra,0xffffe
    80002d54:	2d4080e7          	jalr	724(ra) # 80001024 <thread_exit>
    /*TCB::running->setFinished(true);
    thread_dispatch();*/
    80002d58:	00813083          	ld	ra,8(sp)
    80002d5c:	00013403          	ld	s0,0(sp)
    80002d60:	01010113          	addi	sp,sp,16
    80002d64:	00008067          	ret

0000000080002d68 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002d68:	fe010113          	addi	sp,sp,-32
    80002d6c:	00113c23          	sd	ra,24(sp)
    80002d70:	00813823          	sd	s0,16(sp)
    80002d74:	00913423          	sd	s1,8(sp)
    80002d78:	01213023          	sd	s2,0(sp)
    80002d7c:	02010413          	addi	s0,sp,32
    80002d80:	00050493          	mv	s1,a0
    80002d84:	00058913          	mv	s2,a1
    80002d88:	0015879b          	addiw	a5,a1,1
    80002d8c:	0007851b          	sext.w	a0,a5
    80002d90:	00f4a023          	sw	a5,0(s1)
    80002d94:	0004a823          	sw	zero,16(s1)
    80002d98:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002d9c:	00251513          	slli	a0,a0,0x2
    80002da0:	ffffe097          	auipc	ra,0xffffe
    80002da4:	260080e7          	jalr	608(ra) # 80001000 <mem_alloc>
    80002da8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002dac:	00000593          	li	a1,0
    80002db0:	02048513          	addi	a0,s1,32
    80002db4:	ffffe097          	auipc	ra,0xffffe
    80002db8:	4d0080e7          	jalr	1232(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002dbc:	00090593          	mv	a1,s2
    80002dc0:	01848513          	addi	a0,s1,24
    80002dc4:	ffffe097          	auipc	ra,0xffffe
    80002dc8:	4c0080e7          	jalr	1216(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002dcc:	00100593          	li	a1,1
    80002dd0:	02848513          	addi	a0,s1,40
    80002dd4:	ffffe097          	auipc	ra,0xffffe
    80002dd8:	4b0080e7          	jalr	1200(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002ddc:	00100593          	li	a1,1
    80002de0:	03048513          	addi	a0,s1,48
    80002de4:	ffffe097          	auipc	ra,0xffffe
    80002de8:	4a0080e7          	jalr	1184(ra) # 80001284 <_Z8sem_openPP4_semj>
}
    80002dec:	01813083          	ld	ra,24(sp)
    80002df0:	01013403          	ld	s0,16(sp)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	00013903          	ld	s2,0(sp)
    80002dfc:	02010113          	addi	sp,sp,32
    80002e00:	00008067          	ret

0000000080002e04 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002e04:	fe010113          	addi	sp,sp,-32
    80002e08:	00113c23          	sd	ra,24(sp)
    80002e0c:	00813823          	sd	s0,16(sp)
    80002e10:	00913423          	sd	s1,8(sp)
    80002e14:	01213023          	sd	s2,0(sp)
    80002e18:	02010413          	addi	s0,sp,32
    80002e1c:	00050493          	mv	s1,a0
    80002e20:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002e24:	01853503          	ld	a0,24(a0)
    80002e28:	ffffe097          	auipc	ra,0xffffe
    80002e2c:	494080e7          	jalr	1172(ra) # 800012bc <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80002e30:	0304b503          	ld	a0,48(s1)
    80002e34:	ffffe097          	auipc	ra,0xffffe
    80002e38:	488080e7          	jalr	1160(ra) # 800012bc <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80002e3c:	0084b783          	ld	a5,8(s1)
    80002e40:	0144a703          	lw	a4,20(s1)
    80002e44:	00271713          	slli	a4,a4,0x2
    80002e48:	00e787b3          	add	a5,a5,a4
    80002e4c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002e50:	0144a783          	lw	a5,20(s1)
    80002e54:	0017879b          	addiw	a5,a5,1
    80002e58:	0004a703          	lw	a4,0(s1)
    80002e5c:	02e7e7bb          	remw	a5,a5,a4
    80002e60:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002e64:	0304b503          	ld	a0,48(s1)
    80002e68:	ffffe097          	auipc	ra,0xffffe
    80002e6c:	470080e7          	jalr	1136(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002e70:	0204b503          	ld	a0,32(s1)
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	464080e7          	jalr	1124(ra) # 800012d8 <_Z10sem_signalP4_sem>

}
    80002e7c:	01813083          	ld	ra,24(sp)
    80002e80:	01013403          	ld	s0,16(sp)
    80002e84:	00813483          	ld	s1,8(sp)
    80002e88:	00013903          	ld	s2,0(sp)
    80002e8c:	02010113          	addi	sp,sp,32
    80002e90:	00008067          	ret

0000000080002e94 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002e94:	fe010113          	addi	sp,sp,-32
    80002e98:	00113c23          	sd	ra,24(sp)
    80002e9c:	00813823          	sd	s0,16(sp)
    80002ea0:	00913423          	sd	s1,8(sp)
    80002ea4:	01213023          	sd	s2,0(sp)
    80002ea8:	02010413          	addi	s0,sp,32
    80002eac:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002eb0:	02053503          	ld	a0,32(a0)
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	408080e7          	jalr	1032(ra) # 800012bc <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002ebc:	0284b503          	ld	a0,40(s1)
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	3fc080e7          	jalr	1020(ra) # 800012bc <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002ec8:	0084b703          	ld	a4,8(s1)
    80002ecc:	0104a783          	lw	a5,16(s1)
    80002ed0:	00279693          	slli	a3,a5,0x2
    80002ed4:	00d70733          	add	a4,a4,a3
    80002ed8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002edc:	0017879b          	addiw	a5,a5,1
    80002ee0:	0004a703          	lw	a4,0(s1)
    80002ee4:	02e7e7bb          	remw	a5,a5,a4
    80002ee8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002eec:	0284b503          	ld	a0,40(s1)
    80002ef0:	ffffe097          	auipc	ra,0xffffe
    80002ef4:	3e8080e7          	jalr	1000(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80002ef8:	0184b503          	ld	a0,24(s1)
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	3dc080e7          	jalr	988(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    80002f04:	00090513          	mv	a0,s2
    80002f08:	01813083          	ld	ra,24(sp)
    80002f0c:	01013403          	ld	s0,16(sp)
    80002f10:	00813483          	ld	s1,8(sp)
    80002f14:	00013903          	ld	s2,0(sp)
    80002f18:	02010113          	addi	sp,sp,32
    80002f1c:	00008067          	ret

0000000080002f20 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00113c23          	sd	ra,24(sp)
    80002f28:	00813823          	sd	s0,16(sp)
    80002f2c:	00913423          	sd	s1,8(sp)
    80002f30:	01213023          	sd	s2,0(sp)
    80002f34:	02010413          	addi	s0,sp,32
    80002f38:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002f3c:	02853503          	ld	a0,40(a0)
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	37c080e7          	jalr	892(ra) # 800012bc <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80002f48:	0304b503          	ld	a0,48(s1)
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	370080e7          	jalr	880(ra) # 800012bc <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002f54:	0144a783          	lw	a5,20(s1)
    80002f58:	0104a903          	lw	s2,16(s1)
    80002f5c:	0327ce63          	blt	a5,s2,80002f98 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002f60:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002f64:	0304b503          	ld	a0,48(s1)
    80002f68:	ffffe097          	auipc	ra,0xffffe
    80002f6c:	370080e7          	jalr	880(ra) # 800012d8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80002f70:	0284b503          	ld	a0,40(s1)
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	364080e7          	jalr	868(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    80002f7c:	00090513          	mv	a0,s2
    80002f80:	01813083          	ld	ra,24(sp)
    80002f84:	01013403          	ld	s0,16(sp)
    80002f88:	00813483          	ld	s1,8(sp)
    80002f8c:	00013903          	ld	s2,0(sp)
    80002f90:	02010113          	addi	sp,sp,32
    80002f94:	00008067          	ret
        ret = cap - head + tail;
    80002f98:	0004a703          	lw	a4,0(s1)
    80002f9c:	4127093b          	subw	s2,a4,s2
    80002fa0:	00f9093b          	addw	s2,s2,a5
    80002fa4:	fc1ff06f          	j	80002f64 <_ZN6Buffer6getCntEv+0x44>

0000000080002fa8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002fa8:	fe010113          	addi	sp,sp,-32
    80002fac:	00113c23          	sd	ra,24(sp)
    80002fb0:	00813823          	sd	s0,16(sp)
    80002fb4:	00913423          	sd	s1,8(sp)
    80002fb8:	02010413          	addi	s0,sp,32
    80002fbc:	00050493          	mv	s1,a0
    putc('\n');
    80002fc0:	00a00513          	li	a0,10
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	374080e7          	jalr	884(ra) # 80001338 <_Z4putcc>
    printString("Buffer deleted!\n");
    80002fcc:	00003517          	auipc	a0,0x3
    80002fd0:	12c50513          	addi	a0,a0,300 # 800060f8 <_ZZ14__print_uint64mE6digits+0x10>
    80002fd4:	fffff097          	auipc	ra,0xfffff
    80002fd8:	0c0080e7          	jalr	192(ra) # 80002094 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	f40080e7          	jalr	-192(ra) # 80002f20 <_ZN6Buffer6getCntEv>
    80002fe8:	02a05c63          	blez	a0,80003020 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80002fec:	0084b783          	ld	a5,8(s1)
    80002ff0:	0104a703          	lw	a4,16(s1)
    80002ff4:	00271713          	slli	a4,a4,0x2
    80002ff8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80002ffc:	0007c503          	lbu	a0,0(a5)
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	338080e7          	jalr	824(ra) # 80001338 <_Z4putcc>
        head = (head + 1) % cap;
    80003008:	0104a783          	lw	a5,16(s1)
    8000300c:	0017879b          	addiw	a5,a5,1
    80003010:	0004a703          	lw	a4,0(s1)
    80003014:	02e7e7bb          	remw	a5,a5,a4
    80003018:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000301c:	fc1ff06f          	j	80002fdc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003020:	02100513          	li	a0,33
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	314080e7          	jalr	788(ra) # 80001338 <_Z4putcc>
    putc('\n');
    8000302c:	00a00513          	li	a0,10
    80003030:	ffffe097          	auipc	ra,0xffffe
    80003034:	308080e7          	jalr	776(ra) # 80001338 <_Z4putcc>
    mem_free(buffer);
    80003038:	0084b503          	ld	a0,8(s1)
    8000303c:	ffffe097          	auipc	ra,0xffffe
    80003040:	fd0080e7          	jalr	-48(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    80003044:	0204b503          	ld	a0,32(s1)
    80003048:	ffffe097          	auipc	ra,0xffffe
    8000304c:	258080e7          	jalr	600(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80003050:	0184b503          	ld	a0,24(s1)
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	24c080e7          	jalr	588(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000305c:	0304b503          	ld	a0,48(s1)
    80003060:	ffffe097          	auipc	ra,0xffffe
    80003064:	240080e7          	jalr	576(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80003068:	0284b503          	ld	a0,40(s1)
    8000306c:	ffffe097          	auipc	ra,0xffffe
    80003070:	234080e7          	jalr	564(ra) # 800012a0 <_Z9sem_closeP4_sem>
}
    80003074:	01813083          	ld	ra,24(sp)
    80003078:	01013403          	ld	s0,16(sp)
    8000307c:	00813483          	ld	s1,8(sp)
    80003080:	02010113          	addi	sp,sp,32
    80003084:	00008067          	ret

0000000080003088 <start>:
    80003088:	ff010113          	addi	sp,sp,-16
    8000308c:	00813423          	sd	s0,8(sp)
    80003090:	01010413          	addi	s0,sp,16
    80003094:	300027f3          	csrr	a5,mstatus
    80003098:	ffffe737          	lui	a4,0xffffe
    8000309c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff62cf>
    800030a0:	00e7f7b3          	and	a5,a5,a4
    800030a4:	00001737          	lui	a4,0x1
    800030a8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800030ac:	00e7e7b3          	or	a5,a5,a4
    800030b0:	30079073          	csrw	mstatus,a5
    800030b4:	00000797          	auipc	a5,0x0
    800030b8:	16078793          	addi	a5,a5,352 # 80003214 <system_main>
    800030bc:	34179073          	csrw	mepc,a5
    800030c0:	00000793          	li	a5,0
    800030c4:	18079073          	csrw	satp,a5
    800030c8:	000107b7          	lui	a5,0x10
    800030cc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800030d0:	30279073          	csrw	medeleg,a5
    800030d4:	30379073          	csrw	mideleg,a5
    800030d8:	104027f3          	csrr	a5,sie
    800030dc:	2227e793          	ori	a5,a5,546
    800030e0:	10479073          	csrw	sie,a5
    800030e4:	fff00793          	li	a5,-1
    800030e8:	00a7d793          	srli	a5,a5,0xa
    800030ec:	3b079073          	csrw	pmpaddr0,a5
    800030f0:	00f00793          	li	a5,15
    800030f4:	3a079073          	csrw	pmpcfg0,a5
    800030f8:	f14027f3          	csrr	a5,mhartid
    800030fc:	0200c737          	lui	a4,0x200c
    80003100:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003104:	0007869b          	sext.w	a3,a5
    80003108:	00269713          	slli	a4,a3,0x2
    8000310c:	000f4637          	lui	a2,0xf4
    80003110:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003114:	00d70733          	add	a4,a4,a3
    80003118:	0037979b          	slliw	a5,a5,0x3
    8000311c:	020046b7          	lui	a3,0x2004
    80003120:	00d787b3          	add	a5,a5,a3
    80003124:	00c585b3          	add	a1,a1,a2
    80003128:	00371693          	slli	a3,a4,0x3
    8000312c:	00004717          	auipc	a4,0x4
    80003130:	1a470713          	addi	a4,a4,420 # 800072d0 <timer_scratch>
    80003134:	00b7b023          	sd	a1,0(a5)
    80003138:	00d70733          	add	a4,a4,a3
    8000313c:	00f73c23          	sd	a5,24(a4)
    80003140:	02c73023          	sd	a2,32(a4)
    80003144:	34071073          	csrw	mscratch,a4
    80003148:	00000797          	auipc	a5,0x0
    8000314c:	6e878793          	addi	a5,a5,1768 # 80003830 <timervec>
    80003150:	30579073          	csrw	mtvec,a5
    80003154:	300027f3          	csrr	a5,mstatus
    80003158:	0087e793          	ori	a5,a5,8
    8000315c:	30079073          	csrw	mstatus,a5
    80003160:	304027f3          	csrr	a5,mie
    80003164:	0807e793          	ori	a5,a5,128
    80003168:	30479073          	csrw	mie,a5
    8000316c:	f14027f3          	csrr	a5,mhartid
    80003170:	0007879b          	sext.w	a5,a5
    80003174:	00078213          	mv	tp,a5
    80003178:	30200073          	mret
    8000317c:	00813403          	ld	s0,8(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <timerinit>:
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00813423          	sd	s0,8(sp)
    80003190:	01010413          	addi	s0,sp,16
    80003194:	f14027f3          	csrr	a5,mhartid
    80003198:	0200c737          	lui	a4,0x200c
    8000319c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800031a0:	0007869b          	sext.w	a3,a5
    800031a4:	00269713          	slli	a4,a3,0x2
    800031a8:	000f4637          	lui	a2,0xf4
    800031ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800031b0:	00d70733          	add	a4,a4,a3
    800031b4:	0037979b          	slliw	a5,a5,0x3
    800031b8:	020046b7          	lui	a3,0x2004
    800031bc:	00d787b3          	add	a5,a5,a3
    800031c0:	00c585b3          	add	a1,a1,a2
    800031c4:	00371693          	slli	a3,a4,0x3
    800031c8:	00004717          	auipc	a4,0x4
    800031cc:	10870713          	addi	a4,a4,264 # 800072d0 <timer_scratch>
    800031d0:	00b7b023          	sd	a1,0(a5)
    800031d4:	00d70733          	add	a4,a4,a3
    800031d8:	00f73c23          	sd	a5,24(a4)
    800031dc:	02c73023          	sd	a2,32(a4)
    800031e0:	34071073          	csrw	mscratch,a4
    800031e4:	00000797          	auipc	a5,0x0
    800031e8:	64c78793          	addi	a5,a5,1612 # 80003830 <timervec>
    800031ec:	30579073          	csrw	mtvec,a5
    800031f0:	300027f3          	csrr	a5,mstatus
    800031f4:	0087e793          	ori	a5,a5,8
    800031f8:	30079073          	csrw	mstatus,a5
    800031fc:	304027f3          	csrr	a5,mie
    80003200:	0807e793          	ori	a5,a5,128
    80003204:	30479073          	csrw	mie,a5
    80003208:	00813403          	ld	s0,8(sp)
    8000320c:	01010113          	addi	sp,sp,16
    80003210:	00008067          	ret

0000000080003214 <system_main>:
    80003214:	fe010113          	addi	sp,sp,-32
    80003218:	00813823          	sd	s0,16(sp)
    8000321c:	00913423          	sd	s1,8(sp)
    80003220:	00113c23          	sd	ra,24(sp)
    80003224:	02010413          	addi	s0,sp,32
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	0c4080e7          	jalr	196(ra) # 800032ec <cpuid>
    80003230:	00004497          	auipc	s1,0x4
    80003234:	04048493          	addi	s1,s1,64 # 80007270 <started>
    80003238:	02050263          	beqz	a0,8000325c <system_main+0x48>
    8000323c:	0004a783          	lw	a5,0(s1)
    80003240:	0007879b          	sext.w	a5,a5
    80003244:	fe078ce3          	beqz	a5,8000323c <system_main+0x28>
    80003248:	0ff0000f          	fence
    8000324c:	00003517          	auipc	a0,0x3
    80003250:	01450513          	addi	a0,a0,20 # 80006260 <_ZZ14__print_uint64mE6digits+0x178>
    80003254:	00001097          	auipc	ra,0x1
    80003258:	a78080e7          	jalr	-1416(ra) # 80003ccc <panic>
    8000325c:	00001097          	auipc	ra,0x1
    80003260:	9cc080e7          	jalr	-1588(ra) # 80003c28 <consoleinit>
    80003264:	00001097          	auipc	ra,0x1
    80003268:	158080e7          	jalr	344(ra) # 800043bc <printfinit>
    8000326c:	00003517          	auipc	a0,0x3
    80003270:	fbc50513          	addi	a0,a0,-68 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80003274:	00001097          	auipc	ra,0x1
    80003278:	ab4080e7          	jalr	-1356(ra) # 80003d28 <__printf>
    8000327c:	00003517          	auipc	a0,0x3
    80003280:	fb450513          	addi	a0,a0,-76 # 80006230 <_ZZ14__print_uint64mE6digits+0x148>
    80003284:	00001097          	auipc	ra,0x1
    80003288:	aa4080e7          	jalr	-1372(ra) # 80003d28 <__printf>
    8000328c:	00003517          	auipc	a0,0x3
    80003290:	f9c50513          	addi	a0,a0,-100 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80003294:	00001097          	auipc	ra,0x1
    80003298:	a94080e7          	jalr	-1388(ra) # 80003d28 <__printf>
    8000329c:	00001097          	auipc	ra,0x1
    800032a0:	4ac080e7          	jalr	1196(ra) # 80004748 <kinit>
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	148080e7          	jalr	328(ra) # 800033ec <trapinit>
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	16c080e7          	jalr	364(ra) # 80003418 <trapinithart>
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	5bc080e7          	jalr	1468(ra) # 80003870 <plicinit>
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	5dc080e7          	jalr	1500(ra) # 80003898 <plicinithart>
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	078080e7          	jalr	120(ra) # 8000333c <userinit>
    800032cc:	0ff0000f          	fence
    800032d0:	00100793          	li	a5,1
    800032d4:	00003517          	auipc	a0,0x3
    800032d8:	f7450513          	addi	a0,a0,-140 # 80006248 <_ZZ14__print_uint64mE6digits+0x160>
    800032dc:	00f4a023          	sw	a5,0(s1)
    800032e0:	00001097          	auipc	ra,0x1
    800032e4:	a48080e7          	jalr	-1464(ra) # 80003d28 <__printf>
    800032e8:	0000006f          	j	800032e8 <system_main+0xd4>

00000000800032ec <cpuid>:
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00813423          	sd	s0,8(sp)
    800032f4:	01010413          	addi	s0,sp,16
    800032f8:	00020513          	mv	a0,tp
    800032fc:	00813403          	ld	s0,8(sp)
    80003300:	0005051b          	sext.w	a0,a0
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret

000000008000330c <mycpu>:
    8000330c:	ff010113          	addi	sp,sp,-16
    80003310:	00813423          	sd	s0,8(sp)
    80003314:	01010413          	addi	s0,sp,16
    80003318:	00020793          	mv	a5,tp
    8000331c:	00813403          	ld	s0,8(sp)
    80003320:	0007879b          	sext.w	a5,a5
    80003324:	00779793          	slli	a5,a5,0x7
    80003328:	00005517          	auipc	a0,0x5
    8000332c:	fd850513          	addi	a0,a0,-40 # 80008300 <cpus>
    80003330:	00f50533          	add	a0,a0,a5
    80003334:	01010113          	addi	sp,sp,16
    80003338:	00008067          	ret

000000008000333c <userinit>:
    8000333c:	ff010113          	addi	sp,sp,-16
    80003340:	00813423          	sd	s0,8(sp)
    80003344:	01010413          	addi	s0,sp,16
    80003348:	00813403          	ld	s0,8(sp)
    8000334c:	01010113          	addi	sp,sp,16
    80003350:	ffffe317          	auipc	t1,0xffffe
    80003354:	35430067          	jr	852(t1) # 800016a4 <main>

0000000080003358 <either_copyout>:
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00813023          	sd	s0,0(sp)
    80003360:	00113423          	sd	ra,8(sp)
    80003364:	01010413          	addi	s0,sp,16
    80003368:	02051663          	bnez	a0,80003394 <either_copyout+0x3c>
    8000336c:	00058513          	mv	a0,a1
    80003370:	00060593          	mv	a1,a2
    80003374:	0006861b          	sext.w	a2,a3
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	c5c080e7          	jalr	-932(ra) # 80004fd4 <__memmove>
    80003380:	00813083          	ld	ra,8(sp)
    80003384:	00013403          	ld	s0,0(sp)
    80003388:	00000513          	li	a0,0
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret
    80003394:	00003517          	auipc	a0,0x3
    80003398:	ef450513          	addi	a0,a0,-268 # 80006288 <_ZZ14__print_uint64mE6digits+0x1a0>
    8000339c:	00001097          	auipc	ra,0x1
    800033a0:	930080e7          	jalr	-1744(ra) # 80003ccc <panic>

00000000800033a4 <either_copyin>:
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813023          	sd	s0,0(sp)
    800033ac:	00113423          	sd	ra,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	02059463          	bnez	a1,800033dc <either_copyin+0x38>
    800033b8:	00060593          	mv	a1,a2
    800033bc:	0006861b          	sext.w	a2,a3
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	c14080e7          	jalr	-1004(ra) # 80004fd4 <__memmove>
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	00000513          	li	a0,0
    800033d4:	01010113          	addi	sp,sp,16
    800033d8:	00008067          	ret
    800033dc:	00003517          	auipc	a0,0x3
    800033e0:	ed450513          	addi	a0,a0,-300 # 800062b0 <_ZZ14__print_uint64mE6digits+0x1c8>
    800033e4:	00001097          	auipc	ra,0x1
    800033e8:	8e8080e7          	jalr	-1816(ra) # 80003ccc <panic>

00000000800033ec <trapinit>:
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00813423          	sd	s0,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	00003597          	auipc	a1,0x3
    80003400:	edc58593          	addi	a1,a1,-292 # 800062d8 <_ZZ14__print_uint64mE6digits+0x1f0>
    80003404:	00005517          	auipc	a0,0x5
    80003408:	f7c50513          	addi	a0,a0,-132 # 80008380 <tickslock>
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00001317          	auipc	t1,0x1
    80003414:	5c830067          	jr	1480(t1) # 800049d8 <initlock>

0000000080003418 <trapinithart>:
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813423          	sd	s0,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    80003424:	00000797          	auipc	a5,0x0
    80003428:	2fc78793          	addi	a5,a5,764 # 80003720 <kernelvec>
    8000342c:	10579073          	csrw	stvec,a5
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <usertrap>:
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00813423          	sd	s0,8(sp)
    80003444:	01010413          	addi	s0,sp,16
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret

0000000080003454 <usertrapret>:
    80003454:	ff010113          	addi	sp,sp,-16
    80003458:	00813423          	sd	s0,8(sp)
    8000345c:	01010413          	addi	s0,sp,16
    80003460:	00813403          	ld	s0,8(sp)
    80003464:	01010113          	addi	sp,sp,16
    80003468:	00008067          	ret

000000008000346c <kerneltrap>:
    8000346c:	fe010113          	addi	sp,sp,-32
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00113c23          	sd	ra,24(sp)
    80003478:	00913423          	sd	s1,8(sp)
    8000347c:	02010413          	addi	s0,sp,32
    80003480:	142025f3          	csrr	a1,scause
    80003484:	100027f3          	csrr	a5,sstatus
    80003488:	0027f793          	andi	a5,a5,2
    8000348c:	10079c63          	bnez	a5,800035a4 <kerneltrap+0x138>
    80003490:	142027f3          	csrr	a5,scause
    80003494:	0207ce63          	bltz	a5,800034d0 <kerneltrap+0x64>
    80003498:	00003517          	auipc	a0,0x3
    8000349c:	e8850513          	addi	a0,a0,-376 # 80006320 <_ZZ14__print_uint64mE6digits+0x238>
    800034a0:	00001097          	auipc	ra,0x1
    800034a4:	888080e7          	jalr	-1912(ra) # 80003d28 <__printf>
    800034a8:	141025f3          	csrr	a1,sepc
    800034ac:	14302673          	csrr	a2,stval
    800034b0:	00003517          	auipc	a0,0x3
    800034b4:	e8050513          	addi	a0,a0,-384 # 80006330 <_ZZ14__print_uint64mE6digits+0x248>
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	870080e7          	jalr	-1936(ra) # 80003d28 <__printf>
    800034c0:	00003517          	auipc	a0,0x3
    800034c4:	e8850513          	addi	a0,a0,-376 # 80006348 <_ZZ14__print_uint64mE6digits+0x260>
    800034c8:	00001097          	auipc	ra,0x1
    800034cc:	804080e7          	jalr	-2044(ra) # 80003ccc <panic>
    800034d0:	0ff7f713          	andi	a4,a5,255
    800034d4:	00900693          	li	a3,9
    800034d8:	04d70063          	beq	a4,a3,80003518 <kerneltrap+0xac>
    800034dc:	fff00713          	li	a4,-1
    800034e0:	03f71713          	slli	a4,a4,0x3f
    800034e4:	00170713          	addi	a4,a4,1
    800034e8:	fae798e3          	bne	a5,a4,80003498 <kerneltrap+0x2c>
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	e00080e7          	jalr	-512(ra) # 800032ec <cpuid>
    800034f4:	06050663          	beqz	a0,80003560 <kerneltrap+0xf4>
    800034f8:	144027f3          	csrr	a5,sip
    800034fc:	ffd7f793          	andi	a5,a5,-3
    80003500:	14479073          	csrw	sip,a5
    80003504:	01813083          	ld	ra,24(sp)
    80003508:	01013403          	ld	s0,16(sp)
    8000350c:	00813483          	ld	s1,8(sp)
    80003510:	02010113          	addi	sp,sp,32
    80003514:	00008067          	ret
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	3cc080e7          	jalr	972(ra) # 800038e4 <plic_claim>
    80003520:	00a00793          	li	a5,10
    80003524:	00050493          	mv	s1,a0
    80003528:	06f50863          	beq	a0,a5,80003598 <kerneltrap+0x12c>
    8000352c:	fc050ce3          	beqz	a0,80003504 <kerneltrap+0x98>
    80003530:	00050593          	mv	a1,a0
    80003534:	00003517          	auipc	a0,0x3
    80003538:	dcc50513          	addi	a0,a0,-564 # 80006300 <_ZZ14__print_uint64mE6digits+0x218>
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	7ec080e7          	jalr	2028(ra) # 80003d28 <__printf>
    80003544:	01013403          	ld	s0,16(sp)
    80003548:	01813083          	ld	ra,24(sp)
    8000354c:	00048513          	mv	a0,s1
    80003550:	00813483          	ld	s1,8(sp)
    80003554:	02010113          	addi	sp,sp,32
    80003558:	00000317          	auipc	t1,0x0
    8000355c:	3c430067          	jr	964(t1) # 8000391c <plic_complete>
    80003560:	00005517          	auipc	a0,0x5
    80003564:	e2050513          	addi	a0,a0,-480 # 80008380 <tickslock>
    80003568:	00001097          	auipc	ra,0x1
    8000356c:	494080e7          	jalr	1172(ra) # 800049fc <acquire>
    80003570:	00004717          	auipc	a4,0x4
    80003574:	d0470713          	addi	a4,a4,-764 # 80007274 <ticks>
    80003578:	00072783          	lw	a5,0(a4)
    8000357c:	00005517          	auipc	a0,0x5
    80003580:	e0450513          	addi	a0,a0,-508 # 80008380 <tickslock>
    80003584:	0017879b          	addiw	a5,a5,1
    80003588:	00f72023          	sw	a5,0(a4)
    8000358c:	00001097          	auipc	ra,0x1
    80003590:	53c080e7          	jalr	1340(ra) # 80004ac8 <release>
    80003594:	f65ff06f          	j	800034f8 <kerneltrap+0x8c>
    80003598:	00001097          	auipc	ra,0x1
    8000359c:	098080e7          	jalr	152(ra) # 80004630 <uartintr>
    800035a0:	fa5ff06f          	j	80003544 <kerneltrap+0xd8>
    800035a4:	00003517          	auipc	a0,0x3
    800035a8:	d3c50513          	addi	a0,a0,-708 # 800062e0 <_ZZ14__print_uint64mE6digits+0x1f8>
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	720080e7          	jalr	1824(ra) # 80003ccc <panic>

00000000800035b4 <clockintr>:
    800035b4:	fe010113          	addi	sp,sp,-32
    800035b8:	00813823          	sd	s0,16(sp)
    800035bc:	00913423          	sd	s1,8(sp)
    800035c0:	00113c23          	sd	ra,24(sp)
    800035c4:	02010413          	addi	s0,sp,32
    800035c8:	00005497          	auipc	s1,0x5
    800035cc:	db848493          	addi	s1,s1,-584 # 80008380 <tickslock>
    800035d0:	00048513          	mv	a0,s1
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	428080e7          	jalr	1064(ra) # 800049fc <acquire>
    800035dc:	00004717          	auipc	a4,0x4
    800035e0:	c9870713          	addi	a4,a4,-872 # 80007274 <ticks>
    800035e4:	00072783          	lw	a5,0(a4)
    800035e8:	01013403          	ld	s0,16(sp)
    800035ec:	01813083          	ld	ra,24(sp)
    800035f0:	00048513          	mv	a0,s1
    800035f4:	0017879b          	addiw	a5,a5,1
    800035f8:	00813483          	ld	s1,8(sp)
    800035fc:	00f72023          	sw	a5,0(a4)
    80003600:	02010113          	addi	sp,sp,32
    80003604:	00001317          	auipc	t1,0x1
    80003608:	4c430067          	jr	1220(t1) # 80004ac8 <release>

000000008000360c <devintr>:
    8000360c:	142027f3          	csrr	a5,scause
    80003610:	00000513          	li	a0,0
    80003614:	0007c463          	bltz	a5,8000361c <devintr+0x10>
    80003618:	00008067          	ret
    8000361c:	fe010113          	addi	sp,sp,-32
    80003620:	00813823          	sd	s0,16(sp)
    80003624:	00113c23          	sd	ra,24(sp)
    80003628:	00913423          	sd	s1,8(sp)
    8000362c:	02010413          	addi	s0,sp,32
    80003630:	0ff7f713          	andi	a4,a5,255
    80003634:	00900693          	li	a3,9
    80003638:	04d70c63          	beq	a4,a3,80003690 <devintr+0x84>
    8000363c:	fff00713          	li	a4,-1
    80003640:	03f71713          	slli	a4,a4,0x3f
    80003644:	00170713          	addi	a4,a4,1
    80003648:	00e78c63          	beq	a5,a4,80003660 <devintr+0x54>
    8000364c:	01813083          	ld	ra,24(sp)
    80003650:	01013403          	ld	s0,16(sp)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	02010113          	addi	sp,sp,32
    8000365c:	00008067          	ret
    80003660:	00000097          	auipc	ra,0x0
    80003664:	c8c080e7          	jalr	-884(ra) # 800032ec <cpuid>
    80003668:	06050663          	beqz	a0,800036d4 <devintr+0xc8>
    8000366c:	144027f3          	csrr	a5,sip
    80003670:	ffd7f793          	andi	a5,a5,-3
    80003674:	14479073          	csrw	sip,a5
    80003678:	01813083          	ld	ra,24(sp)
    8000367c:	01013403          	ld	s0,16(sp)
    80003680:	00813483          	ld	s1,8(sp)
    80003684:	00200513          	li	a0,2
    80003688:	02010113          	addi	sp,sp,32
    8000368c:	00008067          	ret
    80003690:	00000097          	auipc	ra,0x0
    80003694:	254080e7          	jalr	596(ra) # 800038e4 <plic_claim>
    80003698:	00a00793          	li	a5,10
    8000369c:	00050493          	mv	s1,a0
    800036a0:	06f50663          	beq	a0,a5,8000370c <devintr+0x100>
    800036a4:	00100513          	li	a0,1
    800036a8:	fa0482e3          	beqz	s1,8000364c <devintr+0x40>
    800036ac:	00048593          	mv	a1,s1
    800036b0:	00003517          	auipc	a0,0x3
    800036b4:	c5050513          	addi	a0,a0,-944 # 80006300 <_ZZ14__print_uint64mE6digits+0x218>
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	670080e7          	jalr	1648(ra) # 80003d28 <__printf>
    800036c0:	00048513          	mv	a0,s1
    800036c4:	00000097          	auipc	ra,0x0
    800036c8:	258080e7          	jalr	600(ra) # 8000391c <plic_complete>
    800036cc:	00100513          	li	a0,1
    800036d0:	f7dff06f          	j	8000364c <devintr+0x40>
    800036d4:	00005517          	auipc	a0,0x5
    800036d8:	cac50513          	addi	a0,a0,-852 # 80008380 <tickslock>
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	320080e7          	jalr	800(ra) # 800049fc <acquire>
    800036e4:	00004717          	auipc	a4,0x4
    800036e8:	b9070713          	addi	a4,a4,-1136 # 80007274 <ticks>
    800036ec:	00072783          	lw	a5,0(a4)
    800036f0:	00005517          	auipc	a0,0x5
    800036f4:	c9050513          	addi	a0,a0,-880 # 80008380 <tickslock>
    800036f8:	0017879b          	addiw	a5,a5,1
    800036fc:	00f72023          	sw	a5,0(a4)
    80003700:	00001097          	auipc	ra,0x1
    80003704:	3c8080e7          	jalr	968(ra) # 80004ac8 <release>
    80003708:	f65ff06f          	j	8000366c <devintr+0x60>
    8000370c:	00001097          	auipc	ra,0x1
    80003710:	f24080e7          	jalr	-220(ra) # 80004630 <uartintr>
    80003714:	fadff06f          	j	800036c0 <devintr+0xb4>
	...

0000000080003720 <kernelvec>:
    80003720:	f0010113          	addi	sp,sp,-256
    80003724:	00113023          	sd	ra,0(sp)
    80003728:	00213423          	sd	sp,8(sp)
    8000372c:	00313823          	sd	gp,16(sp)
    80003730:	00413c23          	sd	tp,24(sp)
    80003734:	02513023          	sd	t0,32(sp)
    80003738:	02613423          	sd	t1,40(sp)
    8000373c:	02713823          	sd	t2,48(sp)
    80003740:	02813c23          	sd	s0,56(sp)
    80003744:	04913023          	sd	s1,64(sp)
    80003748:	04a13423          	sd	a0,72(sp)
    8000374c:	04b13823          	sd	a1,80(sp)
    80003750:	04c13c23          	sd	a2,88(sp)
    80003754:	06d13023          	sd	a3,96(sp)
    80003758:	06e13423          	sd	a4,104(sp)
    8000375c:	06f13823          	sd	a5,112(sp)
    80003760:	07013c23          	sd	a6,120(sp)
    80003764:	09113023          	sd	a7,128(sp)
    80003768:	09213423          	sd	s2,136(sp)
    8000376c:	09313823          	sd	s3,144(sp)
    80003770:	09413c23          	sd	s4,152(sp)
    80003774:	0b513023          	sd	s5,160(sp)
    80003778:	0b613423          	sd	s6,168(sp)
    8000377c:	0b713823          	sd	s7,176(sp)
    80003780:	0b813c23          	sd	s8,184(sp)
    80003784:	0d913023          	sd	s9,192(sp)
    80003788:	0da13423          	sd	s10,200(sp)
    8000378c:	0db13823          	sd	s11,208(sp)
    80003790:	0dc13c23          	sd	t3,216(sp)
    80003794:	0fd13023          	sd	t4,224(sp)
    80003798:	0fe13423          	sd	t5,232(sp)
    8000379c:	0ff13823          	sd	t6,240(sp)
    800037a0:	ccdff0ef          	jal	ra,8000346c <kerneltrap>
    800037a4:	00013083          	ld	ra,0(sp)
    800037a8:	00813103          	ld	sp,8(sp)
    800037ac:	01013183          	ld	gp,16(sp)
    800037b0:	02013283          	ld	t0,32(sp)
    800037b4:	02813303          	ld	t1,40(sp)
    800037b8:	03013383          	ld	t2,48(sp)
    800037bc:	03813403          	ld	s0,56(sp)
    800037c0:	04013483          	ld	s1,64(sp)
    800037c4:	04813503          	ld	a0,72(sp)
    800037c8:	05013583          	ld	a1,80(sp)
    800037cc:	05813603          	ld	a2,88(sp)
    800037d0:	06013683          	ld	a3,96(sp)
    800037d4:	06813703          	ld	a4,104(sp)
    800037d8:	07013783          	ld	a5,112(sp)
    800037dc:	07813803          	ld	a6,120(sp)
    800037e0:	08013883          	ld	a7,128(sp)
    800037e4:	08813903          	ld	s2,136(sp)
    800037e8:	09013983          	ld	s3,144(sp)
    800037ec:	09813a03          	ld	s4,152(sp)
    800037f0:	0a013a83          	ld	s5,160(sp)
    800037f4:	0a813b03          	ld	s6,168(sp)
    800037f8:	0b013b83          	ld	s7,176(sp)
    800037fc:	0b813c03          	ld	s8,184(sp)
    80003800:	0c013c83          	ld	s9,192(sp)
    80003804:	0c813d03          	ld	s10,200(sp)
    80003808:	0d013d83          	ld	s11,208(sp)
    8000380c:	0d813e03          	ld	t3,216(sp)
    80003810:	0e013e83          	ld	t4,224(sp)
    80003814:	0e813f03          	ld	t5,232(sp)
    80003818:	0f013f83          	ld	t6,240(sp)
    8000381c:	10010113          	addi	sp,sp,256
    80003820:	10200073          	sret
    80003824:	00000013          	nop
    80003828:	00000013          	nop
    8000382c:	00000013          	nop

0000000080003830 <timervec>:
    80003830:	34051573          	csrrw	a0,mscratch,a0
    80003834:	00b53023          	sd	a1,0(a0)
    80003838:	00c53423          	sd	a2,8(a0)
    8000383c:	00d53823          	sd	a3,16(a0)
    80003840:	01853583          	ld	a1,24(a0)
    80003844:	02053603          	ld	a2,32(a0)
    80003848:	0005b683          	ld	a3,0(a1)
    8000384c:	00c686b3          	add	a3,a3,a2
    80003850:	00d5b023          	sd	a3,0(a1)
    80003854:	00200593          	li	a1,2
    80003858:	14459073          	csrw	sip,a1
    8000385c:	01053683          	ld	a3,16(a0)
    80003860:	00853603          	ld	a2,8(a0)
    80003864:	00053583          	ld	a1,0(a0)
    80003868:	34051573          	csrrw	a0,mscratch,a0
    8000386c:	30200073          	mret

0000000080003870 <plicinit>:
    80003870:	ff010113          	addi	sp,sp,-16
    80003874:	00813423          	sd	s0,8(sp)
    80003878:	01010413          	addi	s0,sp,16
    8000387c:	00813403          	ld	s0,8(sp)
    80003880:	0c0007b7          	lui	a5,0xc000
    80003884:	00100713          	li	a4,1
    80003888:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000388c:	00e7a223          	sw	a4,4(a5)
    80003890:	01010113          	addi	sp,sp,16
    80003894:	00008067          	ret

0000000080003898 <plicinithart>:
    80003898:	ff010113          	addi	sp,sp,-16
    8000389c:	00813023          	sd	s0,0(sp)
    800038a0:	00113423          	sd	ra,8(sp)
    800038a4:	01010413          	addi	s0,sp,16
    800038a8:	00000097          	auipc	ra,0x0
    800038ac:	a44080e7          	jalr	-1468(ra) # 800032ec <cpuid>
    800038b0:	0085171b          	slliw	a4,a0,0x8
    800038b4:	0c0027b7          	lui	a5,0xc002
    800038b8:	00e787b3          	add	a5,a5,a4
    800038bc:	40200713          	li	a4,1026
    800038c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800038c4:	00813083          	ld	ra,8(sp)
    800038c8:	00013403          	ld	s0,0(sp)
    800038cc:	00d5151b          	slliw	a0,a0,0xd
    800038d0:	0c2017b7          	lui	a5,0xc201
    800038d4:	00a78533          	add	a0,a5,a0
    800038d8:	00052023          	sw	zero,0(a0)
    800038dc:	01010113          	addi	sp,sp,16
    800038e0:	00008067          	ret

00000000800038e4 <plic_claim>:
    800038e4:	ff010113          	addi	sp,sp,-16
    800038e8:	00813023          	sd	s0,0(sp)
    800038ec:	00113423          	sd	ra,8(sp)
    800038f0:	01010413          	addi	s0,sp,16
    800038f4:	00000097          	auipc	ra,0x0
    800038f8:	9f8080e7          	jalr	-1544(ra) # 800032ec <cpuid>
    800038fc:	00813083          	ld	ra,8(sp)
    80003900:	00013403          	ld	s0,0(sp)
    80003904:	00d5151b          	slliw	a0,a0,0xd
    80003908:	0c2017b7          	lui	a5,0xc201
    8000390c:	00a78533          	add	a0,a5,a0
    80003910:	00452503          	lw	a0,4(a0)
    80003914:	01010113          	addi	sp,sp,16
    80003918:	00008067          	ret

000000008000391c <plic_complete>:
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00813823          	sd	s0,16(sp)
    80003924:	00913423          	sd	s1,8(sp)
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	02010413          	addi	s0,sp,32
    80003930:	00050493          	mv	s1,a0
    80003934:	00000097          	auipc	ra,0x0
    80003938:	9b8080e7          	jalr	-1608(ra) # 800032ec <cpuid>
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	00d5179b          	slliw	a5,a0,0xd
    80003948:	0c201737          	lui	a4,0xc201
    8000394c:	00f707b3          	add	a5,a4,a5
    80003950:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003954:	00813483          	ld	s1,8(sp)
    80003958:	02010113          	addi	sp,sp,32
    8000395c:	00008067          	ret

0000000080003960 <consolewrite>:
    80003960:	fb010113          	addi	sp,sp,-80
    80003964:	04813023          	sd	s0,64(sp)
    80003968:	04113423          	sd	ra,72(sp)
    8000396c:	02913c23          	sd	s1,56(sp)
    80003970:	03213823          	sd	s2,48(sp)
    80003974:	03313423          	sd	s3,40(sp)
    80003978:	03413023          	sd	s4,32(sp)
    8000397c:	01513c23          	sd	s5,24(sp)
    80003980:	05010413          	addi	s0,sp,80
    80003984:	06c05c63          	blez	a2,800039fc <consolewrite+0x9c>
    80003988:	00060993          	mv	s3,a2
    8000398c:	00050a13          	mv	s4,a0
    80003990:	00058493          	mv	s1,a1
    80003994:	00000913          	li	s2,0
    80003998:	fff00a93          	li	s5,-1
    8000399c:	01c0006f          	j	800039b8 <consolewrite+0x58>
    800039a0:	fbf44503          	lbu	a0,-65(s0)
    800039a4:	0019091b          	addiw	s2,s2,1
    800039a8:	00148493          	addi	s1,s1,1
    800039ac:	00001097          	auipc	ra,0x1
    800039b0:	a9c080e7          	jalr	-1380(ra) # 80004448 <uartputc>
    800039b4:	03298063          	beq	s3,s2,800039d4 <consolewrite+0x74>
    800039b8:	00048613          	mv	a2,s1
    800039bc:	00100693          	li	a3,1
    800039c0:	000a0593          	mv	a1,s4
    800039c4:	fbf40513          	addi	a0,s0,-65
    800039c8:	00000097          	auipc	ra,0x0
    800039cc:	9dc080e7          	jalr	-1572(ra) # 800033a4 <either_copyin>
    800039d0:	fd5518e3          	bne	a0,s5,800039a0 <consolewrite+0x40>
    800039d4:	04813083          	ld	ra,72(sp)
    800039d8:	04013403          	ld	s0,64(sp)
    800039dc:	03813483          	ld	s1,56(sp)
    800039e0:	02813983          	ld	s3,40(sp)
    800039e4:	02013a03          	ld	s4,32(sp)
    800039e8:	01813a83          	ld	s5,24(sp)
    800039ec:	00090513          	mv	a0,s2
    800039f0:	03013903          	ld	s2,48(sp)
    800039f4:	05010113          	addi	sp,sp,80
    800039f8:	00008067          	ret
    800039fc:	00000913          	li	s2,0
    80003a00:	fd5ff06f          	j	800039d4 <consolewrite+0x74>

0000000080003a04 <consoleread>:
    80003a04:	f9010113          	addi	sp,sp,-112
    80003a08:	06813023          	sd	s0,96(sp)
    80003a0c:	04913c23          	sd	s1,88(sp)
    80003a10:	05213823          	sd	s2,80(sp)
    80003a14:	05313423          	sd	s3,72(sp)
    80003a18:	05413023          	sd	s4,64(sp)
    80003a1c:	03513c23          	sd	s5,56(sp)
    80003a20:	03613823          	sd	s6,48(sp)
    80003a24:	03713423          	sd	s7,40(sp)
    80003a28:	03813023          	sd	s8,32(sp)
    80003a2c:	06113423          	sd	ra,104(sp)
    80003a30:	01913c23          	sd	s9,24(sp)
    80003a34:	07010413          	addi	s0,sp,112
    80003a38:	00060b93          	mv	s7,a2
    80003a3c:	00050913          	mv	s2,a0
    80003a40:	00058c13          	mv	s8,a1
    80003a44:	00060b1b          	sext.w	s6,a2
    80003a48:	00005497          	auipc	s1,0x5
    80003a4c:	96048493          	addi	s1,s1,-1696 # 800083a8 <cons>
    80003a50:	00400993          	li	s3,4
    80003a54:	fff00a13          	li	s4,-1
    80003a58:	00a00a93          	li	s5,10
    80003a5c:	05705e63          	blez	s7,80003ab8 <consoleread+0xb4>
    80003a60:	09c4a703          	lw	a4,156(s1)
    80003a64:	0984a783          	lw	a5,152(s1)
    80003a68:	0007071b          	sext.w	a4,a4
    80003a6c:	08e78463          	beq	a5,a4,80003af4 <consoleread+0xf0>
    80003a70:	07f7f713          	andi	a4,a5,127
    80003a74:	00e48733          	add	a4,s1,a4
    80003a78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003a7c:	0017869b          	addiw	a3,a5,1
    80003a80:	08d4ac23          	sw	a3,152(s1)
    80003a84:	00070c9b          	sext.w	s9,a4
    80003a88:	0b370663          	beq	a4,s3,80003b34 <consoleread+0x130>
    80003a8c:	00100693          	li	a3,1
    80003a90:	f9f40613          	addi	a2,s0,-97
    80003a94:	000c0593          	mv	a1,s8
    80003a98:	00090513          	mv	a0,s2
    80003a9c:	f8e40fa3          	sb	a4,-97(s0)
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	8b8080e7          	jalr	-1864(ra) # 80003358 <either_copyout>
    80003aa8:	01450863          	beq	a0,s4,80003ab8 <consoleread+0xb4>
    80003aac:	001c0c13          	addi	s8,s8,1
    80003ab0:	fffb8b9b          	addiw	s7,s7,-1
    80003ab4:	fb5c94e3          	bne	s9,s5,80003a5c <consoleread+0x58>
    80003ab8:	000b851b          	sext.w	a0,s7
    80003abc:	06813083          	ld	ra,104(sp)
    80003ac0:	06013403          	ld	s0,96(sp)
    80003ac4:	05813483          	ld	s1,88(sp)
    80003ac8:	05013903          	ld	s2,80(sp)
    80003acc:	04813983          	ld	s3,72(sp)
    80003ad0:	04013a03          	ld	s4,64(sp)
    80003ad4:	03813a83          	ld	s5,56(sp)
    80003ad8:	02813b83          	ld	s7,40(sp)
    80003adc:	02013c03          	ld	s8,32(sp)
    80003ae0:	01813c83          	ld	s9,24(sp)
    80003ae4:	40ab053b          	subw	a0,s6,a0
    80003ae8:	03013b03          	ld	s6,48(sp)
    80003aec:	07010113          	addi	sp,sp,112
    80003af0:	00008067          	ret
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	1d8080e7          	jalr	472(ra) # 80004ccc <push_on>
    80003afc:	0984a703          	lw	a4,152(s1)
    80003b00:	09c4a783          	lw	a5,156(s1)
    80003b04:	0007879b          	sext.w	a5,a5
    80003b08:	fef70ce3          	beq	a4,a5,80003b00 <consoleread+0xfc>
    80003b0c:	00001097          	auipc	ra,0x1
    80003b10:	234080e7          	jalr	564(ra) # 80004d40 <pop_on>
    80003b14:	0984a783          	lw	a5,152(s1)
    80003b18:	07f7f713          	andi	a4,a5,127
    80003b1c:	00e48733          	add	a4,s1,a4
    80003b20:	01874703          	lbu	a4,24(a4)
    80003b24:	0017869b          	addiw	a3,a5,1
    80003b28:	08d4ac23          	sw	a3,152(s1)
    80003b2c:	00070c9b          	sext.w	s9,a4
    80003b30:	f5371ee3          	bne	a4,s3,80003a8c <consoleread+0x88>
    80003b34:	000b851b          	sext.w	a0,s7
    80003b38:	f96bf2e3          	bgeu	s7,s6,80003abc <consoleread+0xb8>
    80003b3c:	08f4ac23          	sw	a5,152(s1)
    80003b40:	f7dff06f          	j	80003abc <consoleread+0xb8>

0000000080003b44 <consputc>:
    80003b44:	10000793          	li	a5,256
    80003b48:	00f50663          	beq	a0,a5,80003b54 <consputc+0x10>
    80003b4c:	00001317          	auipc	t1,0x1
    80003b50:	9f430067          	jr	-1548(t1) # 80004540 <uartputc_sync>
    80003b54:	ff010113          	addi	sp,sp,-16
    80003b58:	00113423          	sd	ra,8(sp)
    80003b5c:	00813023          	sd	s0,0(sp)
    80003b60:	01010413          	addi	s0,sp,16
    80003b64:	00800513          	li	a0,8
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	9d8080e7          	jalr	-1576(ra) # 80004540 <uartputc_sync>
    80003b70:	02000513          	li	a0,32
    80003b74:	00001097          	auipc	ra,0x1
    80003b78:	9cc080e7          	jalr	-1588(ra) # 80004540 <uartputc_sync>
    80003b7c:	00013403          	ld	s0,0(sp)
    80003b80:	00813083          	ld	ra,8(sp)
    80003b84:	00800513          	li	a0,8
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00001317          	auipc	t1,0x1
    80003b90:	9b430067          	jr	-1612(t1) # 80004540 <uartputc_sync>

0000000080003b94 <consoleintr>:
    80003b94:	fe010113          	addi	sp,sp,-32
    80003b98:	00813823          	sd	s0,16(sp)
    80003b9c:	00913423          	sd	s1,8(sp)
    80003ba0:	01213023          	sd	s2,0(sp)
    80003ba4:	00113c23          	sd	ra,24(sp)
    80003ba8:	02010413          	addi	s0,sp,32
    80003bac:	00004917          	auipc	s2,0x4
    80003bb0:	7fc90913          	addi	s2,s2,2044 # 800083a8 <cons>
    80003bb4:	00050493          	mv	s1,a0
    80003bb8:	00090513          	mv	a0,s2
    80003bbc:	00001097          	auipc	ra,0x1
    80003bc0:	e40080e7          	jalr	-448(ra) # 800049fc <acquire>
    80003bc4:	02048c63          	beqz	s1,80003bfc <consoleintr+0x68>
    80003bc8:	0a092783          	lw	a5,160(s2)
    80003bcc:	09892703          	lw	a4,152(s2)
    80003bd0:	07f00693          	li	a3,127
    80003bd4:	40e7873b          	subw	a4,a5,a4
    80003bd8:	02e6e263          	bltu	a3,a4,80003bfc <consoleintr+0x68>
    80003bdc:	00d00713          	li	a4,13
    80003be0:	04e48063          	beq	s1,a4,80003c20 <consoleintr+0x8c>
    80003be4:	07f7f713          	andi	a4,a5,127
    80003be8:	00e90733          	add	a4,s2,a4
    80003bec:	0017879b          	addiw	a5,a5,1
    80003bf0:	0af92023          	sw	a5,160(s2)
    80003bf4:	00970c23          	sb	s1,24(a4)
    80003bf8:	08f92e23          	sw	a5,156(s2)
    80003bfc:	01013403          	ld	s0,16(sp)
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	00813483          	ld	s1,8(sp)
    80003c08:	00013903          	ld	s2,0(sp)
    80003c0c:	00004517          	auipc	a0,0x4
    80003c10:	79c50513          	addi	a0,a0,1948 # 800083a8 <cons>
    80003c14:	02010113          	addi	sp,sp,32
    80003c18:	00001317          	auipc	t1,0x1
    80003c1c:	eb030067          	jr	-336(t1) # 80004ac8 <release>
    80003c20:	00a00493          	li	s1,10
    80003c24:	fc1ff06f          	j	80003be4 <consoleintr+0x50>

0000000080003c28 <consoleinit>:
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00113c23          	sd	ra,24(sp)
    80003c30:	00813823          	sd	s0,16(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	02010413          	addi	s0,sp,32
    80003c3c:	00004497          	auipc	s1,0x4
    80003c40:	76c48493          	addi	s1,s1,1900 # 800083a8 <cons>
    80003c44:	00048513          	mv	a0,s1
    80003c48:	00002597          	auipc	a1,0x2
    80003c4c:	71058593          	addi	a1,a1,1808 # 80006358 <_ZZ14__print_uint64mE6digits+0x270>
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	d88080e7          	jalr	-632(ra) # 800049d8 <initlock>
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	7ac080e7          	jalr	1964(ra) # 80004404 <uartinit>
    80003c60:	01813083          	ld	ra,24(sp)
    80003c64:	01013403          	ld	s0,16(sp)
    80003c68:	00000797          	auipc	a5,0x0
    80003c6c:	d9c78793          	addi	a5,a5,-612 # 80003a04 <consoleread>
    80003c70:	0af4bc23          	sd	a5,184(s1)
    80003c74:	00000797          	auipc	a5,0x0
    80003c78:	cec78793          	addi	a5,a5,-788 # 80003960 <consolewrite>
    80003c7c:	0cf4b023          	sd	a5,192(s1)
    80003c80:	00813483          	ld	s1,8(sp)
    80003c84:	02010113          	addi	sp,sp,32
    80003c88:	00008067          	ret

0000000080003c8c <console_read>:
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00813423          	sd	s0,8(sp)
    80003c94:	01010413          	addi	s0,sp,16
    80003c98:	00813403          	ld	s0,8(sp)
    80003c9c:	00004317          	auipc	t1,0x4
    80003ca0:	7c433303          	ld	t1,1988(t1) # 80008460 <devsw+0x10>
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00030067          	jr	t1

0000000080003cac <console_write>:
    80003cac:	ff010113          	addi	sp,sp,-16
    80003cb0:	00813423          	sd	s0,8(sp)
    80003cb4:	01010413          	addi	s0,sp,16
    80003cb8:	00813403          	ld	s0,8(sp)
    80003cbc:	00004317          	auipc	t1,0x4
    80003cc0:	7ac33303          	ld	t1,1964(t1) # 80008468 <devsw+0x18>
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00030067          	jr	t1

0000000080003ccc <panic>:
    80003ccc:	fe010113          	addi	sp,sp,-32
    80003cd0:	00113c23          	sd	ra,24(sp)
    80003cd4:	00813823          	sd	s0,16(sp)
    80003cd8:	00913423          	sd	s1,8(sp)
    80003cdc:	02010413          	addi	s0,sp,32
    80003ce0:	00050493          	mv	s1,a0
    80003ce4:	00002517          	auipc	a0,0x2
    80003ce8:	67c50513          	addi	a0,a0,1660 # 80006360 <_ZZ14__print_uint64mE6digits+0x278>
    80003cec:	00005797          	auipc	a5,0x5
    80003cf0:	8007ae23          	sw	zero,-2020(a5) # 80008508 <pr+0x18>
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	034080e7          	jalr	52(ra) # 80003d28 <__printf>
    80003cfc:	00048513          	mv	a0,s1
    80003d00:	00000097          	auipc	ra,0x0
    80003d04:	028080e7          	jalr	40(ra) # 80003d28 <__printf>
    80003d08:	00002517          	auipc	a0,0x2
    80003d0c:	52050513          	addi	a0,a0,1312 # 80006228 <_ZZ14__print_uint64mE6digits+0x140>
    80003d10:	00000097          	auipc	ra,0x0
    80003d14:	018080e7          	jalr	24(ra) # 80003d28 <__printf>
    80003d18:	00100793          	li	a5,1
    80003d1c:	00003717          	auipc	a4,0x3
    80003d20:	54f72e23          	sw	a5,1372(a4) # 80007278 <panicked>
    80003d24:	0000006f          	j	80003d24 <panic+0x58>

0000000080003d28 <__printf>:
    80003d28:	f3010113          	addi	sp,sp,-208
    80003d2c:	08813023          	sd	s0,128(sp)
    80003d30:	07313423          	sd	s3,104(sp)
    80003d34:	09010413          	addi	s0,sp,144
    80003d38:	05813023          	sd	s8,64(sp)
    80003d3c:	08113423          	sd	ra,136(sp)
    80003d40:	06913c23          	sd	s1,120(sp)
    80003d44:	07213823          	sd	s2,112(sp)
    80003d48:	07413023          	sd	s4,96(sp)
    80003d4c:	05513c23          	sd	s5,88(sp)
    80003d50:	05613823          	sd	s6,80(sp)
    80003d54:	05713423          	sd	s7,72(sp)
    80003d58:	03913c23          	sd	s9,56(sp)
    80003d5c:	03a13823          	sd	s10,48(sp)
    80003d60:	03b13423          	sd	s11,40(sp)
    80003d64:	00004317          	auipc	t1,0x4
    80003d68:	78c30313          	addi	t1,t1,1932 # 800084f0 <pr>
    80003d6c:	01832c03          	lw	s8,24(t1)
    80003d70:	00b43423          	sd	a1,8(s0)
    80003d74:	00c43823          	sd	a2,16(s0)
    80003d78:	00d43c23          	sd	a3,24(s0)
    80003d7c:	02e43023          	sd	a4,32(s0)
    80003d80:	02f43423          	sd	a5,40(s0)
    80003d84:	03043823          	sd	a6,48(s0)
    80003d88:	03143c23          	sd	a7,56(s0)
    80003d8c:	00050993          	mv	s3,a0
    80003d90:	4a0c1663          	bnez	s8,8000423c <__printf+0x514>
    80003d94:	60098c63          	beqz	s3,800043ac <__printf+0x684>
    80003d98:	0009c503          	lbu	a0,0(s3)
    80003d9c:	00840793          	addi	a5,s0,8
    80003da0:	f6f43c23          	sd	a5,-136(s0)
    80003da4:	00000493          	li	s1,0
    80003da8:	22050063          	beqz	a0,80003fc8 <__printf+0x2a0>
    80003dac:	00002a37          	lui	s4,0x2
    80003db0:	00018ab7          	lui	s5,0x18
    80003db4:	000f4b37          	lui	s6,0xf4
    80003db8:	00989bb7          	lui	s7,0x989
    80003dbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003dc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003dc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003dc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003dcc:	00148c9b          	addiw	s9,s1,1
    80003dd0:	02500793          	li	a5,37
    80003dd4:	01998933          	add	s2,s3,s9
    80003dd8:	38f51263          	bne	a0,a5,8000415c <__printf+0x434>
    80003ddc:	00094783          	lbu	a5,0(s2)
    80003de0:	00078c9b          	sext.w	s9,a5
    80003de4:	1e078263          	beqz	a5,80003fc8 <__printf+0x2a0>
    80003de8:	0024849b          	addiw	s1,s1,2
    80003dec:	07000713          	li	a4,112
    80003df0:	00998933          	add	s2,s3,s1
    80003df4:	38e78a63          	beq	a5,a4,80004188 <__printf+0x460>
    80003df8:	20f76863          	bltu	a4,a5,80004008 <__printf+0x2e0>
    80003dfc:	42a78863          	beq	a5,a0,8000422c <__printf+0x504>
    80003e00:	06400713          	li	a4,100
    80003e04:	40e79663          	bne	a5,a4,80004210 <__printf+0x4e8>
    80003e08:	f7843783          	ld	a5,-136(s0)
    80003e0c:	0007a603          	lw	a2,0(a5)
    80003e10:	00878793          	addi	a5,a5,8
    80003e14:	f6f43c23          	sd	a5,-136(s0)
    80003e18:	42064a63          	bltz	a2,8000424c <__printf+0x524>
    80003e1c:	00a00713          	li	a4,10
    80003e20:	02e677bb          	remuw	a5,a2,a4
    80003e24:	00002d97          	auipc	s11,0x2
    80003e28:	564d8d93          	addi	s11,s11,1380 # 80006388 <digits>
    80003e2c:	00900593          	li	a1,9
    80003e30:	0006051b          	sext.w	a0,a2
    80003e34:	00000c93          	li	s9,0
    80003e38:	02079793          	slli	a5,a5,0x20
    80003e3c:	0207d793          	srli	a5,a5,0x20
    80003e40:	00fd87b3          	add	a5,s11,a5
    80003e44:	0007c783          	lbu	a5,0(a5)
    80003e48:	02e656bb          	divuw	a3,a2,a4
    80003e4c:	f8f40023          	sb	a5,-128(s0)
    80003e50:	14c5d863          	bge	a1,a2,80003fa0 <__printf+0x278>
    80003e54:	06300593          	li	a1,99
    80003e58:	00100c93          	li	s9,1
    80003e5c:	02e6f7bb          	remuw	a5,a3,a4
    80003e60:	02079793          	slli	a5,a5,0x20
    80003e64:	0207d793          	srli	a5,a5,0x20
    80003e68:	00fd87b3          	add	a5,s11,a5
    80003e6c:	0007c783          	lbu	a5,0(a5)
    80003e70:	02e6d73b          	divuw	a4,a3,a4
    80003e74:	f8f400a3          	sb	a5,-127(s0)
    80003e78:	12a5f463          	bgeu	a1,a0,80003fa0 <__printf+0x278>
    80003e7c:	00a00693          	li	a3,10
    80003e80:	00900593          	li	a1,9
    80003e84:	02d777bb          	remuw	a5,a4,a3
    80003e88:	02079793          	slli	a5,a5,0x20
    80003e8c:	0207d793          	srli	a5,a5,0x20
    80003e90:	00fd87b3          	add	a5,s11,a5
    80003e94:	0007c503          	lbu	a0,0(a5)
    80003e98:	02d757bb          	divuw	a5,a4,a3
    80003e9c:	f8a40123          	sb	a0,-126(s0)
    80003ea0:	48e5f263          	bgeu	a1,a4,80004324 <__printf+0x5fc>
    80003ea4:	06300513          	li	a0,99
    80003ea8:	02d7f5bb          	remuw	a1,a5,a3
    80003eac:	02059593          	slli	a1,a1,0x20
    80003eb0:	0205d593          	srli	a1,a1,0x20
    80003eb4:	00bd85b3          	add	a1,s11,a1
    80003eb8:	0005c583          	lbu	a1,0(a1)
    80003ebc:	02d7d7bb          	divuw	a5,a5,a3
    80003ec0:	f8b401a3          	sb	a1,-125(s0)
    80003ec4:	48e57263          	bgeu	a0,a4,80004348 <__printf+0x620>
    80003ec8:	3e700513          	li	a0,999
    80003ecc:	02d7f5bb          	remuw	a1,a5,a3
    80003ed0:	02059593          	slli	a1,a1,0x20
    80003ed4:	0205d593          	srli	a1,a1,0x20
    80003ed8:	00bd85b3          	add	a1,s11,a1
    80003edc:	0005c583          	lbu	a1,0(a1)
    80003ee0:	02d7d7bb          	divuw	a5,a5,a3
    80003ee4:	f8b40223          	sb	a1,-124(s0)
    80003ee8:	46e57663          	bgeu	a0,a4,80004354 <__printf+0x62c>
    80003eec:	02d7f5bb          	remuw	a1,a5,a3
    80003ef0:	02059593          	slli	a1,a1,0x20
    80003ef4:	0205d593          	srli	a1,a1,0x20
    80003ef8:	00bd85b3          	add	a1,s11,a1
    80003efc:	0005c583          	lbu	a1,0(a1)
    80003f00:	02d7d7bb          	divuw	a5,a5,a3
    80003f04:	f8b402a3          	sb	a1,-123(s0)
    80003f08:	46ea7863          	bgeu	s4,a4,80004378 <__printf+0x650>
    80003f0c:	02d7f5bb          	remuw	a1,a5,a3
    80003f10:	02059593          	slli	a1,a1,0x20
    80003f14:	0205d593          	srli	a1,a1,0x20
    80003f18:	00bd85b3          	add	a1,s11,a1
    80003f1c:	0005c583          	lbu	a1,0(a1)
    80003f20:	02d7d7bb          	divuw	a5,a5,a3
    80003f24:	f8b40323          	sb	a1,-122(s0)
    80003f28:	3eeaf863          	bgeu	s5,a4,80004318 <__printf+0x5f0>
    80003f2c:	02d7f5bb          	remuw	a1,a5,a3
    80003f30:	02059593          	slli	a1,a1,0x20
    80003f34:	0205d593          	srli	a1,a1,0x20
    80003f38:	00bd85b3          	add	a1,s11,a1
    80003f3c:	0005c583          	lbu	a1,0(a1)
    80003f40:	02d7d7bb          	divuw	a5,a5,a3
    80003f44:	f8b403a3          	sb	a1,-121(s0)
    80003f48:	42eb7e63          	bgeu	s6,a4,80004384 <__printf+0x65c>
    80003f4c:	02d7f5bb          	remuw	a1,a5,a3
    80003f50:	02059593          	slli	a1,a1,0x20
    80003f54:	0205d593          	srli	a1,a1,0x20
    80003f58:	00bd85b3          	add	a1,s11,a1
    80003f5c:	0005c583          	lbu	a1,0(a1)
    80003f60:	02d7d7bb          	divuw	a5,a5,a3
    80003f64:	f8b40423          	sb	a1,-120(s0)
    80003f68:	42ebfc63          	bgeu	s7,a4,800043a0 <__printf+0x678>
    80003f6c:	02079793          	slli	a5,a5,0x20
    80003f70:	0207d793          	srli	a5,a5,0x20
    80003f74:	00fd8db3          	add	s11,s11,a5
    80003f78:	000dc703          	lbu	a4,0(s11)
    80003f7c:	00a00793          	li	a5,10
    80003f80:	00900c93          	li	s9,9
    80003f84:	f8e404a3          	sb	a4,-119(s0)
    80003f88:	00065c63          	bgez	a2,80003fa0 <__printf+0x278>
    80003f8c:	f9040713          	addi	a4,s0,-112
    80003f90:	00f70733          	add	a4,a4,a5
    80003f94:	02d00693          	li	a3,45
    80003f98:	fed70823          	sb	a3,-16(a4)
    80003f9c:	00078c93          	mv	s9,a5
    80003fa0:	f8040793          	addi	a5,s0,-128
    80003fa4:	01978cb3          	add	s9,a5,s9
    80003fa8:	f7f40d13          	addi	s10,s0,-129
    80003fac:	000cc503          	lbu	a0,0(s9)
    80003fb0:	fffc8c93          	addi	s9,s9,-1
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	b90080e7          	jalr	-1136(ra) # 80003b44 <consputc>
    80003fbc:	ffac98e3          	bne	s9,s10,80003fac <__printf+0x284>
    80003fc0:	00094503          	lbu	a0,0(s2)
    80003fc4:	e00514e3          	bnez	a0,80003dcc <__printf+0xa4>
    80003fc8:	1a0c1663          	bnez	s8,80004174 <__printf+0x44c>
    80003fcc:	08813083          	ld	ra,136(sp)
    80003fd0:	08013403          	ld	s0,128(sp)
    80003fd4:	07813483          	ld	s1,120(sp)
    80003fd8:	07013903          	ld	s2,112(sp)
    80003fdc:	06813983          	ld	s3,104(sp)
    80003fe0:	06013a03          	ld	s4,96(sp)
    80003fe4:	05813a83          	ld	s5,88(sp)
    80003fe8:	05013b03          	ld	s6,80(sp)
    80003fec:	04813b83          	ld	s7,72(sp)
    80003ff0:	04013c03          	ld	s8,64(sp)
    80003ff4:	03813c83          	ld	s9,56(sp)
    80003ff8:	03013d03          	ld	s10,48(sp)
    80003ffc:	02813d83          	ld	s11,40(sp)
    80004000:	0d010113          	addi	sp,sp,208
    80004004:	00008067          	ret
    80004008:	07300713          	li	a4,115
    8000400c:	1ce78a63          	beq	a5,a4,800041e0 <__printf+0x4b8>
    80004010:	07800713          	li	a4,120
    80004014:	1ee79e63          	bne	a5,a4,80004210 <__printf+0x4e8>
    80004018:	f7843783          	ld	a5,-136(s0)
    8000401c:	0007a703          	lw	a4,0(a5)
    80004020:	00878793          	addi	a5,a5,8
    80004024:	f6f43c23          	sd	a5,-136(s0)
    80004028:	28074263          	bltz	a4,800042ac <__printf+0x584>
    8000402c:	00002d97          	auipc	s11,0x2
    80004030:	35cd8d93          	addi	s11,s11,860 # 80006388 <digits>
    80004034:	00f77793          	andi	a5,a4,15
    80004038:	00fd87b3          	add	a5,s11,a5
    8000403c:	0007c683          	lbu	a3,0(a5)
    80004040:	00f00613          	li	a2,15
    80004044:	0007079b          	sext.w	a5,a4
    80004048:	f8d40023          	sb	a3,-128(s0)
    8000404c:	0047559b          	srliw	a1,a4,0x4
    80004050:	0047569b          	srliw	a3,a4,0x4
    80004054:	00000c93          	li	s9,0
    80004058:	0ee65063          	bge	a2,a4,80004138 <__printf+0x410>
    8000405c:	00f6f693          	andi	a3,a3,15
    80004060:	00dd86b3          	add	a3,s11,a3
    80004064:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004068:	0087d79b          	srliw	a5,a5,0x8
    8000406c:	00100c93          	li	s9,1
    80004070:	f8d400a3          	sb	a3,-127(s0)
    80004074:	0cb67263          	bgeu	a2,a1,80004138 <__printf+0x410>
    80004078:	00f7f693          	andi	a3,a5,15
    8000407c:	00dd86b3          	add	a3,s11,a3
    80004080:	0006c583          	lbu	a1,0(a3)
    80004084:	00f00613          	li	a2,15
    80004088:	0047d69b          	srliw	a3,a5,0x4
    8000408c:	f8b40123          	sb	a1,-126(s0)
    80004090:	0047d593          	srli	a1,a5,0x4
    80004094:	28f67e63          	bgeu	a2,a5,80004330 <__printf+0x608>
    80004098:	00f6f693          	andi	a3,a3,15
    8000409c:	00dd86b3          	add	a3,s11,a3
    800040a0:	0006c503          	lbu	a0,0(a3)
    800040a4:	0087d813          	srli	a6,a5,0x8
    800040a8:	0087d69b          	srliw	a3,a5,0x8
    800040ac:	f8a401a3          	sb	a0,-125(s0)
    800040b0:	28b67663          	bgeu	a2,a1,8000433c <__printf+0x614>
    800040b4:	00f6f693          	andi	a3,a3,15
    800040b8:	00dd86b3          	add	a3,s11,a3
    800040bc:	0006c583          	lbu	a1,0(a3)
    800040c0:	00c7d513          	srli	a0,a5,0xc
    800040c4:	00c7d69b          	srliw	a3,a5,0xc
    800040c8:	f8b40223          	sb	a1,-124(s0)
    800040cc:	29067a63          	bgeu	a2,a6,80004360 <__printf+0x638>
    800040d0:	00f6f693          	andi	a3,a3,15
    800040d4:	00dd86b3          	add	a3,s11,a3
    800040d8:	0006c583          	lbu	a1,0(a3)
    800040dc:	0107d813          	srli	a6,a5,0x10
    800040e0:	0107d69b          	srliw	a3,a5,0x10
    800040e4:	f8b402a3          	sb	a1,-123(s0)
    800040e8:	28a67263          	bgeu	a2,a0,8000436c <__printf+0x644>
    800040ec:	00f6f693          	andi	a3,a3,15
    800040f0:	00dd86b3          	add	a3,s11,a3
    800040f4:	0006c683          	lbu	a3,0(a3)
    800040f8:	0147d79b          	srliw	a5,a5,0x14
    800040fc:	f8d40323          	sb	a3,-122(s0)
    80004100:	21067663          	bgeu	a2,a6,8000430c <__printf+0x5e4>
    80004104:	02079793          	slli	a5,a5,0x20
    80004108:	0207d793          	srli	a5,a5,0x20
    8000410c:	00fd8db3          	add	s11,s11,a5
    80004110:	000dc683          	lbu	a3,0(s11)
    80004114:	00800793          	li	a5,8
    80004118:	00700c93          	li	s9,7
    8000411c:	f8d403a3          	sb	a3,-121(s0)
    80004120:	00075c63          	bgez	a4,80004138 <__printf+0x410>
    80004124:	f9040713          	addi	a4,s0,-112
    80004128:	00f70733          	add	a4,a4,a5
    8000412c:	02d00693          	li	a3,45
    80004130:	fed70823          	sb	a3,-16(a4)
    80004134:	00078c93          	mv	s9,a5
    80004138:	f8040793          	addi	a5,s0,-128
    8000413c:	01978cb3          	add	s9,a5,s9
    80004140:	f7f40d13          	addi	s10,s0,-129
    80004144:	000cc503          	lbu	a0,0(s9)
    80004148:	fffc8c93          	addi	s9,s9,-1
    8000414c:	00000097          	auipc	ra,0x0
    80004150:	9f8080e7          	jalr	-1544(ra) # 80003b44 <consputc>
    80004154:	ff9d18e3          	bne	s10,s9,80004144 <__printf+0x41c>
    80004158:	0100006f          	j	80004168 <__printf+0x440>
    8000415c:	00000097          	auipc	ra,0x0
    80004160:	9e8080e7          	jalr	-1560(ra) # 80003b44 <consputc>
    80004164:	000c8493          	mv	s1,s9
    80004168:	00094503          	lbu	a0,0(s2)
    8000416c:	c60510e3          	bnez	a0,80003dcc <__printf+0xa4>
    80004170:	e40c0ee3          	beqz	s8,80003fcc <__printf+0x2a4>
    80004174:	00004517          	auipc	a0,0x4
    80004178:	37c50513          	addi	a0,a0,892 # 800084f0 <pr>
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	94c080e7          	jalr	-1716(ra) # 80004ac8 <release>
    80004184:	e49ff06f          	j	80003fcc <__printf+0x2a4>
    80004188:	f7843783          	ld	a5,-136(s0)
    8000418c:	03000513          	li	a0,48
    80004190:	01000d13          	li	s10,16
    80004194:	00878713          	addi	a4,a5,8
    80004198:	0007bc83          	ld	s9,0(a5)
    8000419c:	f6e43c23          	sd	a4,-136(s0)
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	9a4080e7          	jalr	-1628(ra) # 80003b44 <consputc>
    800041a8:	07800513          	li	a0,120
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	998080e7          	jalr	-1640(ra) # 80003b44 <consputc>
    800041b4:	00002d97          	auipc	s11,0x2
    800041b8:	1d4d8d93          	addi	s11,s11,468 # 80006388 <digits>
    800041bc:	03ccd793          	srli	a5,s9,0x3c
    800041c0:	00fd87b3          	add	a5,s11,a5
    800041c4:	0007c503          	lbu	a0,0(a5)
    800041c8:	fffd0d1b          	addiw	s10,s10,-1
    800041cc:	004c9c93          	slli	s9,s9,0x4
    800041d0:	00000097          	auipc	ra,0x0
    800041d4:	974080e7          	jalr	-1676(ra) # 80003b44 <consputc>
    800041d8:	fe0d12e3          	bnez	s10,800041bc <__printf+0x494>
    800041dc:	f8dff06f          	j	80004168 <__printf+0x440>
    800041e0:	f7843783          	ld	a5,-136(s0)
    800041e4:	0007bc83          	ld	s9,0(a5)
    800041e8:	00878793          	addi	a5,a5,8
    800041ec:	f6f43c23          	sd	a5,-136(s0)
    800041f0:	000c9a63          	bnez	s9,80004204 <__printf+0x4dc>
    800041f4:	1080006f          	j	800042fc <__printf+0x5d4>
    800041f8:	001c8c93          	addi	s9,s9,1
    800041fc:	00000097          	auipc	ra,0x0
    80004200:	948080e7          	jalr	-1720(ra) # 80003b44 <consputc>
    80004204:	000cc503          	lbu	a0,0(s9)
    80004208:	fe0518e3          	bnez	a0,800041f8 <__printf+0x4d0>
    8000420c:	f5dff06f          	j	80004168 <__printf+0x440>
    80004210:	02500513          	li	a0,37
    80004214:	00000097          	auipc	ra,0x0
    80004218:	930080e7          	jalr	-1744(ra) # 80003b44 <consputc>
    8000421c:	000c8513          	mv	a0,s9
    80004220:	00000097          	auipc	ra,0x0
    80004224:	924080e7          	jalr	-1756(ra) # 80003b44 <consputc>
    80004228:	f41ff06f          	j	80004168 <__printf+0x440>
    8000422c:	02500513          	li	a0,37
    80004230:	00000097          	auipc	ra,0x0
    80004234:	914080e7          	jalr	-1772(ra) # 80003b44 <consputc>
    80004238:	f31ff06f          	j	80004168 <__printf+0x440>
    8000423c:	00030513          	mv	a0,t1
    80004240:	00000097          	auipc	ra,0x0
    80004244:	7bc080e7          	jalr	1980(ra) # 800049fc <acquire>
    80004248:	b4dff06f          	j	80003d94 <__printf+0x6c>
    8000424c:	40c0053b          	negw	a0,a2
    80004250:	00a00713          	li	a4,10
    80004254:	02e576bb          	remuw	a3,a0,a4
    80004258:	00002d97          	auipc	s11,0x2
    8000425c:	130d8d93          	addi	s11,s11,304 # 80006388 <digits>
    80004260:	ff700593          	li	a1,-9
    80004264:	02069693          	slli	a3,a3,0x20
    80004268:	0206d693          	srli	a3,a3,0x20
    8000426c:	00dd86b3          	add	a3,s11,a3
    80004270:	0006c683          	lbu	a3,0(a3)
    80004274:	02e557bb          	divuw	a5,a0,a4
    80004278:	f8d40023          	sb	a3,-128(s0)
    8000427c:	10b65e63          	bge	a2,a1,80004398 <__printf+0x670>
    80004280:	06300593          	li	a1,99
    80004284:	02e7f6bb          	remuw	a3,a5,a4
    80004288:	02069693          	slli	a3,a3,0x20
    8000428c:	0206d693          	srli	a3,a3,0x20
    80004290:	00dd86b3          	add	a3,s11,a3
    80004294:	0006c683          	lbu	a3,0(a3)
    80004298:	02e7d73b          	divuw	a4,a5,a4
    8000429c:	00200793          	li	a5,2
    800042a0:	f8d400a3          	sb	a3,-127(s0)
    800042a4:	bca5ece3          	bltu	a1,a0,80003e7c <__printf+0x154>
    800042a8:	ce5ff06f          	j	80003f8c <__printf+0x264>
    800042ac:	40e007bb          	negw	a5,a4
    800042b0:	00002d97          	auipc	s11,0x2
    800042b4:	0d8d8d93          	addi	s11,s11,216 # 80006388 <digits>
    800042b8:	00f7f693          	andi	a3,a5,15
    800042bc:	00dd86b3          	add	a3,s11,a3
    800042c0:	0006c583          	lbu	a1,0(a3)
    800042c4:	ff100613          	li	a2,-15
    800042c8:	0047d69b          	srliw	a3,a5,0x4
    800042cc:	f8b40023          	sb	a1,-128(s0)
    800042d0:	0047d59b          	srliw	a1,a5,0x4
    800042d4:	0ac75e63          	bge	a4,a2,80004390 <__printf+0x668>
    800042d8:	00f6f693          	andi	a3,a3,15
    800042dc:	00dd86b3          	add	a3,s11,a3
    800042e0:	0006c603          	lbu	a2,0(a3)
    800042e4:	00f00693          	li	a3,15
    800042e8:	0087d79b          	srliw	a5,a5,0x8
    800042ec:	f8c400a3          	sb	a2,-127(s0)
    800042f0:	d8b6e4e3          	bltu	a3,a1,80004078 <__printf+0x350>
    800042f4:	00200793          	li	a5,2
    800042f8:	e2dff06f          	j	80004124 <__printf+0x3fc>
    800042fc:	00002c97          	auipc	s9,0x2
    80004300:	06cc8c93          	addi	s9,s9,108 # 80006368 <_ZZ14__print_uint64mE6digits+0x280>
    80004304:	02800513          	li	a0,40
    80004308:	ef1ff06f          	j	800041f8 <__printf+0x4d0>
    8000430c:	00700793          	li	a5,7
    80004310:	00600c93          	li	s9,6
    80004314:	e0dff06f          	j	80004120 <__printf+0x3f8>
    80004318:	00700793          	li	a5,7
    8000431c:	00600c93          	li	s9,6
    80004320:	c69ff06f          	j	80003f88 <__printf+0x260>
    80004324:	00300793          	li	a5,3
    80004328:	00200c93          	li	s9,2
    8000432c:	c5dff06f          	j	80003f88 <__printf+0x260>
    80004330:	00300793          	li	a5,3
    80004334:	00200c93          	li	s9,2
    80004338:	de9ff06f          	j	80004120 <__printf+0x3f8>
    8000433c:	00400793          	li	a5,4
    80004340:	00300c93          	li	s9,3
    80004344:	dddff06f          	j	80004120 <__printf+0x3f8>
    80004348:	00400793          	li	a5,4
    8000434c:	00300c93          	li	s9,3
    80004350:	c39ff06f          	j	80003f88 <__printf+0x260>
    80004354:	00500793          	li	a5,5
    80004358:	00400c93          	li	s9,4
    8000435c:	c2dff06f          	j	80003f88 <__printf+0x260>
    80004360:	00500793          	li	a5,5
    80004364:	00400c93          	li	s9,4
    80004368:	db9ff06f          	j	80004120 <__printf+0x3f8>
    8000436c:	00600793          	li	a5,6
    80004370:	00500c93          	li	s9,5
    80004374:	dadff06f          	j	80004120 <__printf+0x3f8>
    80004378:	00600793          	li	a5,6
    8000437c:	00500c93          	li	s9,5
    80004380:	c09ff06f          	j	80003f88 <__printf+0x260>
    80004384:	00800793          	li	a5,8
    80004388:	00700c93          	li	s9,7
    8000438c:	bfdff06f          	j	80003f88 <__printf+0x260>
    80004390:	00100793          	li	a5,1
    80004394:	d91ff06f          	j	80004124 <__printf+0x3fc>
    80004398:	00100793          	li	a5,1
    8000439c:	bf1ff06f          	j	80003f8c <__printf+0x264>
    800043a0:	00900793          	li	a5,9
    800043a4:	00800c93          	li	s9,8
    800043a8:	be1ff06f          	j	80003f88 <__printf+0x260>
    800043ac:	00002517          	auipc	a0,0x2
    800043b0:	fc450513          	addi	a0,a0,-60 # 80006370 <_ZZ14__print_uint64mE6digits+0x288>
    800043b4:	00000097          	auipc	ra,0x0
    800043b8:	918080e7          	jalr	-1768(ra) # 80003ccc <panic>

00000000800043bc <printfinit>:
    800043bc:	fe010113          	addi	sp,sp,-32
    800043c0:	00813823          	sd	s0,16(sp)
    800043c4:	00913423          	sd	s1,8(sp)
    800043c8:	00113c23          	sd	ra,24(sp)
    800043cc:	02010413          	addi	s0,sp,32
    800043d0:	00004497          	auipc	s1,0x4
    800043d4:	12048493          	addi	s1,s1,288 # 800084f0 <pr>
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00002597          	auipc	a1,0x2
    800043e0:	fa458593          	addi	a1,a1,-92 # 80006380 <_ZZ14__print_uint64mE6digits+0x298>
    800043e4:	00000097          	auipc	ra,0x0
    800043e8:	5f4080e7          	jalr	1524(ra) # 800049d8 <initlock>
    800043ec:	01813083          	ld	ra,24(sp)
    800043f0:	01013403          	ld	s0,16(sp)
    800043f4:	0004ac23          	sw	zero,24(s1)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	02010113          	addi	sp,sp,32
    80004400:	00008067          	ret

0000000080004404 <uartinit>:
    80004404:	ff010113          	addi	sp,sp,-16
    80004408:	00813423          	sd	s0,8(sp)
    8000440c:	01010413          	addi	s0,sp,16
    80004410:	100007b7          	lui	a5,0x10000
    80004414:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004418:	f8000713          	li	a4,-128
    8000441c:	00e781a3          	sb	a4,3(a5)
    80004420:	00300713          	li	a4,3
    80004424:	00e78023          	sb	a4,0(a5)
    80004428:	000780a3          	sb	zero,1(a5)
    8000442c:	00e781a3          	sb	a4,3(a5)
    80004430:	00700693          	li	a3,7
    80004434:	00d78123          	sb	a3,2(a5)
    80004438:	00e780a3          	sb	a4,1(a5)
    8000443c:	00813403          	ld	s0,8(sp)
    80004440:	01010113          	addi	sp,sp,16
    80004444:	00008067          	ret

0000000080004448 <uartputc>:
    80004448:	00003797          	auipc	a5,0x3
    8000444c:	e307a783          	lw	a5,-464(a5) # 80007278 <panicked>
    80004450:	00078463          	beqz	a5,80004458 <uartputc+0x10>
    80004454:	0000006f          	j	80004454 <uartputc+0xc>
    80004458:	fd010113          	addi	sp,sp,-48
    8000445c:	02813023          	sd	s0,32(sp)
    80004460:	00913c23          	sd	s1,24(sp)
    80004464:	01213823          	sd	s2,16(sp)
    80004468:	01313423          	sd	s3,8(sp)
    8000446c:	02113423          	sd	ra,40(sp)
    80004470:	03010413          	addi	s0,sp,48
    80004474:	00003917          	auipc	s2,0x3
    80004478:	e0c90913          	addi	s2,s2,-500 # 80007280 <uart_tx_r>
    8000447c:	00093783          	ld	a5,0(s2)
    80004480:	00003497          	auipc	s1,0x3
    80004484:	e0848493          	addi	s1,s1,-504 # 80007288 <uart_tx_w>
    80004488:	0004b703          	ld	a4,0(s1)
    8000448c:	02078693          	addi	a3,a5,32
    80004490:	00050993          	mv	s3,a0
    80004494:	02e69c63          	bne	a3,a4,800044cc <uartputc+0x84>
    80004498:	00001097          	auipc	ra,0x1
    8000449c:	834080e7          	jalr	-1996(ra) # 80004ccc <push_on>
    800044a0:	00093783          	ld	a5,0(s2)
    800044a4:	0004b703          	ld	a4,0(s1)
    800044a8:	02078793          	addi	a5,a5,32
    800044ac:	00e79463          	bne	a5,a4,800044b4 <uartputc+0x6c>
    800044b0:	0000006f          	j	800044b0 <uartputc+0x68>
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	88c080e7          	jalr	-1908(ra) # 80004d40 <pop_on>
    800044bc:	00093783          	ld	a5,0(s2)
    800044c0:	0004b703          	ld	a4,0(s1)
    800044c4:	02078693          	addi	a3,a5,32
    800044c8:	fce688e3          	beq	a3,a4,80004498 <uartputc+0x50>
    800044cc:	01f77693          	andi	a3,a4,31
    800044d0:	00004597          	auipc	a1,0x4
    800044d4:	04058593          	addi	a1,a1,64 # 80008510 <uart_tx_buf>
    800044d8:	00d586b3          	add	a3,a1,a3
    800044dc:	00170713          	addi	a4,a4,1
    800044e0:	01368023          	sb	s3,0(a3)
    800044e4:	00e4b023          	sd	a4,0(s1)
    800044e8:	10000637          	lui	a2,0x10000
    800044ec:	02f71063          	bne	a4,a5,8000450c <uartputc+0xc4>
    800044f0:	0340006f          	j	80004524 <uartputc+0xdc>
    800044f4:	00074703          	lbu	a4,0(a4)
    800044f8:	00f93023          	sd	a5,0(s2)
    800044fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004500:	00093783          	ld	a5,0(s2)
    80004504:	0004b703          	ld	a4,0(s1)
    80004508:	00f70e63          	beq	a4,a5,80004524 <uartputc+0xdc>
    8000450c:	00564683          	lbu	a3,5(a2)
    80004510:	01f7f713          	andi	a4,a5,31
    80004514:	00e58733          	add	a4,a1,a4
    80004518:	0206f693          	andi	a3,a3,32
    8000451c:	00178793          	addi	a5,a5,1
    80004520:	fc069ae3          	bnez	a3,800044f4 <uartputc+0xac>
    80004524:	02813083          	ld	ra,40(sp)
    80004528:	02013403          	ld	s0,32(sp)
    8000452c:	01813483          	ld	s1,24(sp)
    80004530:	01013903          	ld	s2,16(sp)
    80004534:	00813983          	ld	s3,8(sp)
    80004538:	03010113          	addi	sp,sp,48
    8000453c:	00008067          	ret

0000000080004540 <uartputc_sync>:
    80004540:	ff010113          	addi	sp,sp,-16
    80004544:	00813423          	sd	s0,8(sp)
    80004548:	01010413          	addi	s0,sp,16
    8000454c:	00003717          	auipc	a4,0x3
    80004550:	d2c72703          	lw	a4,-724(a4) # 80007278 <panicked>
    80004554:	02071663          	bnez	a4,80004580 <uartputc_sync+0x40>
    80004558:	00050793          	mv	a5,a0
    8000455c:	100006b7          	lui	a3,0x10000
    80004560:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004564:	02077713          	andi	a4,a4,32
    80004568:	fe070ce3          	beqz	a4,80004560 <uartputc_sync+0x20>
    8000456c:	0ff7f793          	andi	a5,a5,255
    80004570:	00f68023          	sb	a5,0(a3)
    80004574:	00813403          	ld	s0,8(sp)
    80004578:	01010113          	addi	sp,sp,16
    8000457c:	00008067          	ret
    80004580:	0000006f          	j	80004580 <uartputc_sync+0x40>

0000000080004584 <uartstart>:
    80004584:	ff010113          	addi	sp,sp,-16
    80004588:	00813423          	sd	s0,8(sp)
    8000458c:	01010413          	addi	s0,sp,16
    80004590:	00003617          	auipc	a2,0x3
    80004594:	cf060613          	addi	a2,a2,-784 # 80007280 <uart_tx_r>
    80004598:	00003517          	auipc	a0,0x3
    8000459c:	cf050513          	addi	a0,a0,-784 # 80007288 <uart_tx_w>
    800045a0:	00063783          	ld	a5,0(a2)
    800045a4:	00053703          	ld	a4,0(a0)
    800045a8:	04f70263          	beq	a4,a5,800045ec <uartstart+0x68>
    800045ac:	100005b7          	lui	a1,0x10000
    800045b0:	00004817          	auipc	a6,0x4
    800045b4:	f6080813          	addi	a6,a6,-160 # 80008510 <uart_tx_buf>
    800045b8:	01c0006f          	j	800045d4 <uartstart+0x50>
    800045bc:	0006c703          	lbu	a4,0(a3)
    800045c0:	00f63023          	sd	a5,0(a2)
    800045c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800045c8:	00063783          	ld	a5,0(a2)
    800045cc:	00053703          	ld	a4,0(a0)
    800045d0:	00f70e63          	beq	a4,a5,800045ec <uartstart+0x68>
    800045d4:	01f7f713          	andi	a4,a5,31
    800045d8:	00e806b3          	add	a3,a6,a4
    800045dc:	0055c703          	lbu	a4,5(a1)
    800045e0:	00178793          	addi	a5,a5,1
    800045e4:	02077713          	andi	a4,a4,32
    800045e8:	fc071ae3          	bnez	a4,800045bc <uartstart+0x38>
    800045ec:	00813403          	ld	s0,8(sp)
    800045f0:	01010113          	addi	sp,sp,16
    800045f4:	00008067          	ret

00000000800045f8 <uartgetc>:
    800045f8:	ff010113          	addi	sp,sp,-16
    800045fc:	00813423          	sd	s0,8(sp)
    80004600:	01010413          	addi	s0,sp,16
    80004604:	10000737          	lui	a4,0x10000
    80004608:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000460c:	0017f793          	andi	a5,a5,1
    80004610:	00078c63          	beqz	a5,80004628 <uartgetc+0x30>
    80004614:	00074503          	lbu	a0,0(a4)
    80004618:	0ff57513          	andi	a0,a0,255
    8000461c:	00813403          	ld	s0,8(sp)
    80004620:	01010113          	addi	sp,sp,16
    80004624:	00008067          	ret
    80004628:	fff00513          	li	a0,-1
    8000462c:	ff1ff06f          	j	8000461c <uartgetc+0x24>

0000000080004630 <uartintr>:
    80004630:	100007b7          	lui	a5,0x10000
    80004634:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004638:	0017f793          	andi	a5,a5,1
    8000463c:	0a078463          	beqz	a5,800046e4 <uartintr+0xb4>
    80004640:	fe010113          	addi	sp,sp,-32
    80004644:	00813823          	sd	s0,16(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	00113c23          	sd	ra,24(sp)
    80004650:	02010413          	addi	s0,sp,32
    80004654:	100004b7          	lui	s1,0x10000
    80004658:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000465c:	0ff57513          	andi	a0,a0,255
    80004660:	fffff097          	auipc	ra,0xfffff
    80004664:	534080e7          	jalr	1332(ra) # 80003b94 <consoleintr>
    80004668:	0054c783          	lbu	a5,5(s1)
    8000466c:	0017f793          	andi	a5,a5,1
    80004670:	fe0794e3          	bnez	a5,80004658 <uartintr+0x28>
    80004674:	00003617          	auipc	a2,0x3
    80004678:	c0c60613          	addi	a2,a2,-1012 # 80007280 <uart_tx_r>
    8000467c:	00003517          	auipc	a0,0x3
    80004680:	c0c50513          	addi	a0,a0,-1012 # 80007288 <uart_tx_w>
    80004684:	00063783          	ld	a5,0(a2)
    80004688:	00053703          	ld	a4,0(a0)
    8000468c:	04f70263          	beq	a4,a5,800046d0 <uartintr+0xa0>
    80004690:	100005b7          	lui	a1,0x10000
    80004694:	00004817          	auipc	a6,0x4
    80004698:	e7c80813          	addi	a6,a6,-388 # 80008510 <uart_tx_buf>
    8000469c:	01c0006f          	j	800046b8 <uartintr+0x88>
    800046a0:	0006c703          	lbu	a4,0(a3)
    800046a4:	00f63023          	sd	a5,0(a2)
    800046a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800046ac:	00063783          	ld	a5,0(a2)
    800046b0:	00053703          	ld	a4,0(a0)
    800046b4:	00f70e63          	beq	a4,a5,800046d0 <uartintr+0xa0>
    800046b8:	01f7f713          	andi	a4,a5,31
    800046bc:	00e806b3          	add	a3,a6,a4
    800046c0:	0055c703          	lbu	a4,5(a1)
    800046c4:	00178793          	addi	a5,a5,1
    800046c8:	02077713          	andi	a4,a4,32
    800046cc:	fc071ae3          	bnez	a4,800046a0 <uartintr+0x70>
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00813483          	ld	s1,8(sp)
    800046dc:	02010113          	addi	sp,sp,32
    800046e0:	00008067          	ret
    800046e4:	00003617          	auipc	a2,0x3
    800046e8:	b9c60613          	addi	a2,a2,-1124 # 80007280 <uart_tx_r>
    800046ec:	00003517          	auipc	a0,0x3
    800046f0:	b9c50513          	addi	a0,a0,-1124 # 80007288 <uart_tx_w>
    800046f4:	00063783          	ld	a5,0(a2)
    800046f8:	00053703          	ld	a4,0(a0)
    800046fc:	04f70263          	beq	a4,a5,80004740 <uartintr+0x110>
    80004700:	100005b7          	lui	a1,0x10000
    80004704:	00004817          	auipc	a6,0x4
    80004708:	e0c80813          	addi	a6,a6,-500 # 80008510 <uart_tx_buf>
    8000470c:	01c0006f          	j	80004728 <uartintr+0xf8>
    80004710:	0006c703          	lbu	a4,0(a3)
    80004714:	00f63023          	sd	a5,0(a2)
    80004718:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000471c:	00063783          	ld	a5,0(a2)
    80004720:	00053703          	ld	a4,0(a0)
    80004724:	02f70063          	beq	a4,a5,80004744 <uartintr+0x114>
    80004728:	01f7f713          	andi	a4,a5,31
    8000472c:	00e806b3          	add	a3,a6,a4
    80004730:	0055c703          	lbu	a4,5(a1)
    80004734:	00178793          	addi	a5,a5,1
    80004738:	02077713          	andi	a4,a4,32
    8000473c:	fc071ae3          	bnez	a4,80004710 <uartintr+0xe0>
    80004740:	00008067          	ret
    80004744:	00008067          	ret

0000000080004748 <kinit>:
    80004748:	fc010113          	addi	sp,sp,-64
    8000474c:	02913423          	sd	s1,40(sp)
    80004750:	fffff7b7          	lui	a5,0xfffff
    80004754:	00005497          	auipc	s1,0x5
    80004758:	ddb48493          	addi	s1,s1,-549 # 8000952f <end+0xfff>
    8000475c:	02813823          	sd	s0,48(sp)
    80004760:	01313c23          	sd	s3,24(sp)
    80004764:	00f4f4b3          	and	s1,s1,a5
    80004768:	02113c23          	sd	ra,56(sp)
    8000476c:	03213023          	sd	s2,32(sp)
    80004770:	01413823          	sd	s4,16(sp)
    80004774:	01513423          	sd	s5,8(sp)
    80004778:	04010413          	addi	s0,sp,64
    8000477c:	000017b7          	lui	a5,0x1
    80004780:	01100993          	li	s3,17
    80004784:	00f487b3          	add	a5,s1,a5
    80004788:	01b99993          	slli	s3,s3,0x1b
    8000478c:	06f9e063          	bltu	s3,a5,800047ec <kinit+0xa4>
    80004790:	00004a97          	auipc	s5,0x4
    80004794:	da0a8a93          	addi	s5,s5,-608 # 80008530 <end>
    80004798:	0754ec63          	bltu	s1,s5,80004810 <kinit+0xc8>
    8000479c:	0734fa63          	bgeu	s1,s3,80004810 <kinit+0xc8>
    800047a0:	00088a37          	lui	s4,0x88
    800047a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800047a8:	00003917          	auipc	s2,0x3
    800047ac:	ae890913          	addi	s2,s2,-1304 # 80007290 <kmem>
    800047b0:	00ca1a13          	slli	s4,s4,0xc
    800047b4:	0140006f          	j	800047c8 <kinit+0x80>
    800047b8:	000017b7          	lui	a5,0x1
    800047bc:	00f484b3          	add	s1,s1,a5
    800047c0:	0554e863          	bltu	s1,s5,80004810 <kinit+0xc8>
    800047c4:	0534f663          	bgeu	s1,s3,80004810 <kinit+0xc8>
    800047c8:	00001637          	lui	a2,0x1
    800047cc:	00100593          	li	a1,1
    800047d0:	00048513          	mv	a0,s1
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	5e4080e7          	jalr	1508(ra) # 80004db8 <__memset>
    800047dc:	00093783          	ld	a5,0(s2)
    800047e0:	00f4b023          	sd	a5,0(s1)
    800047e4:	00993023          	sd	s1,0(s2)
    800047e8:	fd4498e3          	bne	s1,s4,800047b8 <kinit+0x70>
    800047ec:	03813083          	ld	ra,56(sp)
    800047f0:	03013403          	ld	s0,48(sp)
    800047f4:	02813483          	ld	s1,40(sp)
    800047f8:	02013903          	ld	s2,32(sp)
    800047fc:	01813983          	ld	s3,24(sp)
    80004800:	01013a03          	ld	s4,16(sp)
    80004804:	00813a83          	ld	s5,8(sp)
    80004808:	04010113          	addi	sp,sp,64
    8000480c:	00008067          	ret
    80004810:	00002517          	auipc	a0,0x2
    80004814:	b9050513          	addi	a0,a0,-1136 # 800063a0 <digits+0x18>
    80004818:	fffff097          	auipc	ra,0xfffff
    8000481c:	4b4080e7          	jalr	1204(ra) # 80003ccc <panic>

0000000080004820 <freerange>:
    80004820:	fc010113          	addi	sp,sp,-64
    80004824:	000017b7          	lui	a5,0x1
    80004828:	02913423          	sd	s1,40(sp)
    8000482c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004830:	009504b3          	add	s1,a0,s1
    80004834:	fffff537          	lui	a0,0xfffff
    80004838:	02813823          	sd	s0,48(sp)
    8000483c:	02113c23          	sd	ra,56(sp)
    80004840:	03213023          	sd	s2,32(sp)
    80004844:	01313c23          	sd	s3,24(sp)
    80004848:	01413823          	sd	s4,16(sp)
    8000484c:	01513423          	sd	s5,8(sp)
    80004850:	01613023          	sd	s6,0(sp)
    80004854:	04010413          	addi	s0,sp,64
    80004858:	00a4f4b3          	and	s1,s1,a0
    8000485c:	00f487b3          	add	a5,s1,a5
    80004860:	06f5e463          	bltu	a1,a5,800048c8 <freerange+0xa8>
    80004864:	00004a97          	auipc	s5,0x4
    80004868:	ccca8a93          	addi	s5,s5,-820 # 80008530 <end>
    8000486c:	0954e263          	bltu	s1,s5,800048f0 <freerange+0xd0>
    80004870:	01100993          	li	s3,17
    80004874:	01b99993          	slli	s3,s3,0x1b
    80004878:	0734fc63          	bgeu	s1,s3,800048f0 <freerange+0xd0>
    8000487c:	00058a13          	mv	s4,a1
    80004880:	00003917          	auipc	s2,0x3
    80004884:	a1090913          	addi	s2,s2,-1520 # 80007290 <kmem>
    80004888:	00002b37          	lui	s6,0x2
    8000488c:	0140006f          	j	800048a0 <freerange+0x80>
    80004890:	000017b7          	lui	a5,0x1
    80004894:	00f484b3          	add	s1,s1,a5
    80004898:	0554ec63          	bltu	s1,s5,800048f0 <freerange+0xd0>
    8000489c:	0534fa63          	bgeu	s1,s3,800048f0 <freerange+0xd0>
    800048a0:	00001637          	lui	a2,0x1
    800048a4:	00100593          	li	a1,1
    800048a8:	00048513          	mv	a0,s1
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	50c080e7          	jalr	1292(ra) # 80004db8 <__memset>
    800048b4:	00093703          	ld	a4,0(s2)
    800048b8:	016487b3          	add	a5,s1,s6
    800048bc:	00e4b023          	sd	a4,0(s1)
    800048c0:	00993023          	sd	s1,0(s2)
    800048c4:	fcfa76e3          	bgeu	s4,a5,80004890 <freerange+0x70>
    800048c8:	03813083          	ld	ra,56(sp)
    800048cc:	03013403          	ld	s0,48(sp)
    800048d0:	02813483          	ld	s1,40(sp)
    800048d4:	02013903          	ld	s2,32(sp)
    800048d8:	01813983          	ld	s3,24(sp)
    800048dc:	01013a03          	ld	s4,16(sp)
    800048e0:	00813a83          	ld	s5,8(sp)
    800048e4:	00013b03          	ld	s6,0(sp)
    800048e8:	04010113          	addi	sp,sp,64
    800048ec:	00008067          	ret
    800048f0:	00002517          	auipc	a0,0x2
    800048f4:	ab050513          	addi	a0,a0,-1360 # 800063a0 <digits+0x18>
    800048f8:	fffff097          	auipc	ra,0xfffff
    800048fc:	3d4080e7          	jalr	980(ra) # 80003ccc <panic>

0000000080004900 <kfree>:
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	03451793          	slli	a5,a0,0x34
    80004918:	04079c63          	bnez	a5,80004970 <kfree+0x70>
    8000491c:	00004797          	auipc	a5,0x4
    80004920:	c1478793          	addi	a5,a5,-1004 # 80008530 <end>
    80004924:	00050493          	mv	s1,a0
    80004928:	04f56463          	bltu	a0,a5,80004970 <kfree+0x70>
    8000492c:	01100793          	li	a5,17
    80004930:	01b79793          	slli	a5,a5,0x1b
    80004934:	02f57e63          	bgeu	a0,a5,80004970 <kfree+0x70>
    80004938:	00001637          	lui	a2,0x1
    8000493c:	00100593          	li	a1,1
    80004940:	00000097          	auipc	ra,0x0
    80004944:	478080e7          	jalr	1144(ra) # 80004db8 <__memset>
    80004948:	00003797          	auipc	a5,0x3
    8000494c:	94878793          	addi	a5,a5,-1720 # 80007290 <kmem>
    80004950:	0007b703          	ld	a4,0(a5)
    80004954:	01813083          	ld	ra,24(sp)
    80004958:	01013403          	ld	s0,16(sp)
    8000495c:	00e4b023          	sd	a4,0(s1)
    80004960:	0097b023          	sd	s1,0(a5)
    80004964:	00813483          	ld	s1,8(sp)
    80004968:	02010113          	addi	sp,sp,32
    8000496c:	00008067          	ret
    80004970:	00002517          	auipc	a0,0x2
    80004974:	a3050513          	addi	a0,a0,-1488 # 800063a0 <digits+0x18>
    80004978:	fffff097          	auipc	ra,0xfffff
    8000497c:	354080e7          	jalr	852(ra) # 80003ccc <panic>

0000000080004980 <kalloc>:
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	00813823          	sd	s0,16(sp)
    80004988:	00913423          	sd	s1,8(sp)
    8000498c:	00113c23          	sd	ra,24(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	00003797          	auipc	a5,0x3
    80004998:	8fc78793          	addi	a5,a5,-1796 # 80007290 <kmem>
    8000499c:	0007b483          	ld	s1,0(a5)
    800049a0:	02048063          	beqz	s1,800049c0 <kalloc+0x40>
    800049a4:	0004b703          	ld	a4,0(s1)
    800049a8:	00001637          	lui	a2,0x1
    800049ac:	00500593          	li	a1,5
    800049b0:	00048513          	mv	a0,s1
    800049b4:	00e7b023          	sd	a4,0(a5)
    800049b8:	00000097          	auipc	ra,0x0
    800049bc:	400080e7          	jalr	1024(ra) # 80004db8 <__memset>
    800049c0:	01813083          	ld	ra,24(sp)
    800049c4:	01013403          	ld	s0,16(sp)
    800049c8:	00048513          	mv	a0,s1
    800049cc:	00813483          	ld	s1,8(sp)
    800049d0:	02010113          	addi	sp,sp,32
    800049d4:	00008067          	ret

00000000800049d8 <initlock>:
    800049d8:	ff010113          	addi	sp,sp,-16
    800049dc:	00813423          	sd	s0,8(sp)
    800049e0:	01010413          	addi	s0,sp,16
    800049e4:	00813403          	ld	s0,8(sp)
    800049e8:	00b53423          	sd	a1,8(a0)
    800049ec:	00052023          	sw	zero,0(a0)
    800049f0:	00053823          	sd	zero,16(a0)
    800049f4:	01010113          	addi	sp,sp,16
    800049f8:	00008067          	ret

00000000800049fc <acquire>:
    800049fc:	fe010113          	addi	sp,sp,-32
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00913423          	sd	s1,8(sp)
    80004a08:	00113c23          	sd	ra,24(sp)
    80004a0c:	01213023          	sd	s2,0(sp)
    80004a10:	02010413          	addi	s0,sp,32
    80004a14:	00050493          	mv	s1,a0
    80004a18:	10002973          	csrr	s2,sstatus
    80004a1c:	100027f3          	csrr	a5,sstatus
    80004a20:	ffd7f793          	andi	a5,a5,-3
    80004a24:	10079073          	csrw	sstatus,a5
    80004a28:	fffff097          	auipc	ra,0xfffff
    80004a2c:	8e4080e7          	jalr	-1820(ra) # 8000330c <mycpu>
    80004a30:	07852783          	lw	a5,120(a0)
    80004a34:	06078e63          	beqz	a5,80004ab0 <acquire+0xb4>
    80004a38:	fffff097          	auipc	ra,0xfffff
    80004a3c:	8d4080e7          	jalr	-1836(ra) # 8000330c <mycpu>
    80004a40:	07852783          	lw	a5,120(a0)
    80004a44:	0004a703          	lw	a4,0(s1)
    80004a48:	0017879b          	addiw	a5,a5,1
    80004a4c:	06f52c23          	sw	a5,120(a0)
    80004a50:	04071063          	bnez	a4,80004a90 <acquire+0x94>
    80004a54:	00100713          	li	a4,1
    80004a58:	00070793          	mv	a5,a4
    80004a5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004a60:	0007879b          	sext.w	a5,a5
    80004a64:	fe079ae3          	bnez	a5,80004a58 <acquire+0x5c>
    80004a68:	0ff0000f          	fence
    80004a6c:	fffff097          	auipc	ra,0xfffff
    80004a70:	8a0080e7          	jalr	-1888(ra) # 8000330c <mycpu>
    80004a74:	01813083          	ld	ra,24(sp)
    80004a78:	01013403          	ld	s0,16(sp)
    80004a7c:	00a4b823          	sd	a0,16(s1)
    80004a80:	00013903          	ld	s2,0(sp)
    80004a84:	00813483          	ld	s1,8(sp)
    80004a88:	02010113          	addi	sp,sp,32
    80004a8c:	00008067          	ret
    80004a90:	0104b903          	ld	s2,16(s1)
    80004a94:	fffff097          	auipc	ra,0xfffff
    80004a98:	878080e7          	jalr	-1928(ra) # 8000330c <mycpu>
    80004a9c:	faa91ce3          	bne	s2,a0,80004a54 <acquire+0x58>
    80004aa0:	00002517          	auipc	a0,0x2
    80004aa4:	90850513          	addi	a0,a0,-1784 # 800063a8 <digits+0x20>
    80004aa8:	fffff097          	auipc	ra,0xfffff
    80004aac:	224080e7          	jalr	548(ra) # 80003ccc <panic>
    80004ab0:	00195913          	srli	s2,s2,0x1
    80004ab4:	fffff097          	auipc	ra,0xfffff
    80004ab8:	858080e7          	jalr	-1960(ra) # 8000330c <mycpu>
    80004abc:	00197913          	andi	s2,s2,1
    80004ac0:	07252e23          	sw	s2,124(a0)
    80004ac4:	f75ff06f          	j	80004a38 <acquire+0x3c>

0000000080004ac8 <release>:
    80004ac8:	fe010113          	addi	sp,sp,-32
    80004acc:	00813823          	sd	s0,16(sp)
    80004ad0:	00113c23          	sd	ra,24(sp)
    80004ad4:	00913423          	sd	s1,8(sp)
    80004ad8:	01213023          	sd	s2,0(sp)
    80004adc:	02010413          	addi	s0,sp,32
    80004ae0:	00052783          	lw	a5,0(a0)
    80004ae4:	00079a63          	bnez	a5,80004af8 <release+0x30>
    80004ae8:	00002517          	auipc	a0,0x2
    80004aec:	8c850513          	addi	a0,a0,-1848 # 800063b0 <digits+0x28>
    80004af0:	fffff097          	auipc	ra,0xfffff
    80004af4:	1dc080e7          	jalr	476(ra) # 80003ccc <panic>
    80004af8:	01053903          	ld	s2,16(a0)
    80004afc:	00050493          	mv	s1,a0
    80004b00:	fffff097          	auipc	ra,0xfffff
    80004b04:	80c080e7          	jalr	-2036(ra) # 8000330c <mycpu>
    80004b08:	fea910e3          	bne	s2,a0,80004ae8 <release+0x20>
    80004b0c:	0004b823          	sd	zero,16(s1)
    80004b10:	0ff0000f          	fence
    80004b14:	0f50000f          	fence	iorw,ow
    80004b18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004b1c:	ffffe097          	auipc	ra,0xffffe
    80004b20:	7f0080e7          	jalr	2032(ra) # 8000330c <mycpu>
    80004b24:	100027f3          	csrr	a5,sstatus
    80004b28:	0027f793          	andi	a5,a5,2
    80004b2c:	04079a63          	bnez	a5,80004b80 <release+0xb8>
    80004b30:	07852783          	lw	a5,120(a0)
    80004b34:	02f05e63          	blez	a5,80004b70 <release+0xa8>
    80004b38:	fff7871b          	addiw	a4,a5,-1
    80004b3c:	06e52c23          	sw	a4,120(a0)
    80004b40:	00071c63          	bnez	a4,80004b58 <release+0x90>
    80004b44:	07c52783          	lw	a5,124(a0)
    80004b48:	00078863          	beqz	a5,80004b58 <release+0x90>
    80004b4c:	100027f3          	csrr	a5,sstatus
    80004b50:	0027e793          	ori	a5,a5,2
    80004b54:	10079073          	csrw	sstatus,a5
    80004b58:	01813083          	ld	ra,24(sp)
    80004b5c:	01013403          	ld	s0,16(sp)
    80004b60:	00813483          	ld	s1,8(sp)
    80004b64:	00013903          	ld	s2,0(sp)
    80004b68:	02010113          	addi	sp,sp,32
    80004b6c:	00008067          	ret
    80004b70:	00002517          	auipc	a0,0x2
    80004b74:	86050513          	addi	a0,a0,-1952 # 800063d0 <digits+0x48>
    80004b78:	fffff097          	auipc	ra,0xfffff
    80004b7c:	154080e7          	jalr	340(ra) # 80003ccc <panic>
    80004b80:	00002517          	auipc	a0,0x2
    80004b84:	83850513          	addi	a0,a0,-1992 # 800063b8 <digits+0x30>
    80004b88:	fffff097          	auipc	ra,0xfffff
    80004b8c:	144080e7          	jalr	324(ra) # 80003ccc <panic>

0000000080004b90 <holding>:
    80004b90:	00052783          	lw	a5,0(a0)
    80004b94:	00079663          	bnez	a5,80004ba0 <holding+0x10>
    80004b98:	00000513          	li	a0,0
    80004b9c:	00008067          	ret
    80004ba0:	fe010113          	addi	sp,sp,-32
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	01053483          	ld	s1,16(a0)
    80004bb8:	ffffe097          	auipc	ra,0xffffe
    80004bbc:	754080e7          	jalr	1876(ra) # 8000330c <mycpu>
    80004bc0:	01813083          	ld	ra,24(sp)
    80004bc4:	01013403          	ld	s0,16(sp)
    80004bc8:	40a48533          	sub	a0,s1,a0
    80004bcc:	00153513          	seqz	a0,a0
    80004bd0:	00813483          	ld	s1,8(sp)
    80004bd4:	02010113          	addi	sp,sp,32
    80004bd8:	00008067          	ret

0000000080004bdc <push_off>:
    80004bdc:	fe010113          	addi	sp,sp,-32
    80004be0:	00813823          	sd	s0,16(sp)
    80004be4:	00113c23          	sd	ra,24(sp)
    80004be8:	00913423          	sd	s1,8(sp)
    80004bec:	02010413          	addi	s0,sp,32
    80004bf0:	100024f3          	csrr	s1,sstatus
    80004bf4:	100027f3          	csrr	a5,sstatus
    80004bf8:	ffd7f793          	andi	a5,a5,-3
    80004bfc:	10079073          	csrw	sstatus,a5
    80004c00:	ffffe097          	auipc	ra,0xffffe
    80004c04:	70c080e7          	jalr	1804(ra) # 8000330c <mycpu>
    80004c08:	07852783          	lw	a5,120(a0)
    80004c0c:	02078663          	beqz	a5,80004c38 <push_off+0x5c>
    80004c10:	ffffe097          	auipc	ra,0xffffe
    80004c14:	6fc080e7          	jalr	1788(ra) # 8000330c <mycpu>
    80004c18:	07852783          	lw	a5,120(a0)
    80004c1c:	01813083          	ld	ra,24(sp)
    80004c20:	01013403          	ld	s0,16(sp)
    80004c24:	0017879b          	addiw	a5,a5,1
    80004c28:	06f52c23          	sw	a5,120(a0)
    80004c2c:	00813483          	ld	s1,8(sp)
    80004c30:	02010113          	addi	sp,sp,32
    80004c34:	00008067          	ret
    80004c38:	0014d493          	srli	s1,s1,0x1
    80004c3c:	ffffe097          	auipc	ra,0xffffe
    80004c40:	6d0080e7          	jalr	1744(ra) # 8000330c <mycpu>
    80004c44:	0014f493          	andi	s1,s1,1
    80004c48:	06952e23          	sw	s1,124(a0)
    80004c4c:	fc5ff06f          	j	80004c10 <push_off+0x34>

0000000080004c50 <pop_off>:
    80004c50:	ff010113          	addi	sp,sp,-16
    80004c54:	00813023          	sd	s0,0(sp)
    80004c58:	00113423          	sd	ra,8(sp)
    80004c5c:	01010413          	addi	s0,sp,16
    80004c60:	ffffe097          	auipc	ra,0xffffe
    80004c64:	6ac080e7          	jalr	1708(ra) # 8000330c <mycpu>
    80004c68:	100027f3          	csrr	a5,sstatus
    80004c6c:	0027f793          	andi	a5,a5,2
    80004c70:	04079663          	bnez	a5,80004cbc <pop_off+0x6c>
    80004c74:	07852783          	lw	a5,120(a0)
    80004c78:	02f05a63          	blez	a5,80004cac <pop_off+0x5c>
    80004c7c:	fff7871b          	addiw	a4,a5,-1
    80004c80:	06e52c23          	sw	a4,120(a0)
    80004c84:	00071c63          	bnez	a4,80004c9c <pop_off+0x4c>
    80004c88:	07c52783          	lw	a5,124(a0)
    80004c8c:	00078863          	beqz	a5,80004c9c <pop_off+0x4c>
    80004c90:	100027f3          	csrr	a5,sstatus
    80004c94:	0027e793          	ori	a5,a5,2
    80004c98:	10079073          	csrw	sstatus,a5
    80004c9c:	00813083          	ld	ra,8(sp)
    80004ca0:	00013403          	ld	s0,0(sp)
    80004ca4:	01010113          	addi	sp,sp,16
    80004ca8:	00008067          	ret
    80004cac:	00001517          	auipc	a0,0x1
    80004cb0:	72450513          	addi	a0,a0,1828 # 800063d0 <digits+0x48>
    80004cb4:	fffff097          	auipc	ra,0xfffff
    80004cb8:	018080e7          	jalr	24(ra) # 80003ccc <panic>
    80004cbc:	00001517          	auipc	a0,0x1
    80004cc0:	6fc50513          	addi	a0,a0,1788 # 800063b8 <digits+0x30>
    80004cc4:	fffff097          	auipc	ra,0xfffff
    80004cc8:	008080e7          	jalr	8(ra) # 80003ccc <panic>

0000000080004ccc <push_on>:
    80004ccc:	fe010113          	addi	sp,sp,-32
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00913423          	sd	s1,8(sp)
    80004cdc:	02010413          	addi	s0,sp,32
    80004ce0:	100024f3          	csrr	s1,sstatus
    80004ce4:	100027f3          	csrr	a5,sstatus
    80004ce8:	0027e793          	ori	a5,a5,2
    80004cec:	10079073          	csrw	sstatus,a5
    80004cf0:	ffffe097          	auipc	ra,0xffffe
    80004cf4:	61c080e7          	jalr	1564(ra) # 8000330c <mycpu>
    80004cf8:	07852783          	lw	a5,120(a0)
    80004cfc:	02078663          	beqz	a5,80004d28 <push_on+0x5c>
    80004d00:	ffffe097          	auipc	ra,0xffffe
    80004d04:	60c080e7          	jalr	1548(ra) # 8000330c <mycpu>
    80004d08:	07852783          	lw	a5,120(a0)
    80004d0c:	01813083          	ld	ra,24(sp)
    80004d10:	01013403          	ld	s0,16(sp)
    80004d14:	0017879b          	addiw	a5,a5,1
    80004d18:	06f52c23          	sw	a5,120(a0)
    80004d1c:	00813483          	ld	s1,8(sp)
    80004d20:	02010113          	addi	sp,sp,32
    80004d24:	00008067          	ret
    80004d28:	0014d493          	srli	s1,s1,0x1
    80004d2c:	ffffe097          	auipc	ra,0xffffe
    80004d30:	5e0080e7          	jalr	1504(ra) # 8000330c <mycpu>
    80004d34:	0014f493          	andi	s1,s1,1
    80004d38:	06952e23          	sw	s1,124(a0)
    80004d3c:	fc5ff06f          	j	80004d00 <push_on+0x34>

0000000080004d40 <pop_on>:
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00813023          	sd	s0,0(sp)
    80004d48:	00113423          	sd	ra,8(sp)
    80004d4c:	01010413          	addi	s0,sp,16
    80004d50:	ffffe097          	auipc	ra,0xffffe
    80004d54:	5bc080e7          	jalr	1468(ra) # 8000330c <mycpu>
    80004d58:	100027f3          	csrr	a5,sstatus
    80004d5c:	0027f793          	andi	a5,a5,2
    80004d60:	04078463          	beqz	a5,80004da8 <pop_on+0x68>
    80004d64:	07852783          	lw	a5,120(a0)
    80004d68:	02f05863          	blez	a5,80004d98 <pop_on+0x58>
    80004d6c:	fff7879b          	addiw	a5,a5,-1
    80004d70:	06f52c23          	sw	a5,120(a0)
    80004d74:	07853783          	ld	a5,120(a0)
    80004d78:	00079863          	bnez	a5,80004d88 <pop_on+0x48>
    80004d7c:	100027f3          	csrr	a5,sstatus
    80004d80:	ffd7f793          	andi	a5,a5,-3
    80004d84:	10079073          	csrw	sstatus,a5
    80004d88:	00813083          	ld	ra,8(sp)
    80004d8c:	00013403          	ld	s0,0(sp)
    80004d90:	01010113          	addi	sp,sp,16
    80004d94:	00008067          	ret
    80004d98:	00001517          	auipc	a0,0x1
    80004d9c:	66050513          	addi	a0,a0,1632 # 800063f8 <digits+0x70>
    80004da0:	fffff097          	auipc	ra,0xfffff
    80004da4:	f2c080e7          	jalr	-212(ra) # 80003ccc <panic>
    80004da8:	00001517          	auipc	a0,0x1
    80004dac:	63050513          	addi	a0,a0,1584 # 800063d8 <digits+0x50>
    80004db0:	fffff097          	auipc	ra,0xfffff
    80004db4:	f1c080e7          	jalr	-228(ra) # 80003ccc <panic>

0000000080004db8 <__memset>:
    80004db8:	ff010113          	addi	sp,sp,-16
    80004dbc:	00813423          	sd	s0,8(sp)
    80004dc0:	01010413          	addi	s0,sp,16
    80004dc4:	1a060e63          	beqz	a2,80004f80 <__memset+0x1c8>
    80004dc8:	40a007b3          	neg	a5,a0
    80004dcc:	0077f793          	andi	a5,a5,7
    80004dd0:	00778693          	addi	a3,a5,7
    80004dd4:	00b00813          	li	a6,11
    80004dd8:	0ff5f593          	andi	a1,a1,255
    80004ddc:	fff6071b          	addiw	a4,a2,-1
    80004de0:	1b06e663          	bltu	a3,a6,80004f8c <__memset+0x1d4>
    80004de4:	1cd76463          	bltu	a4,a3,80004fac <__memset+0x1f4>
    80004de8:	1a078e63          	beqz	a5,80004fa4 <__memset+0x1ec>
    80004dec:	00b50023          	sb	a1,0(a0)
    80004df0:	00100713          	li	a4,1
    80004df4:	1ae78463          	beq	a5,a4,80004f9c <__memset+0x1e4>
    80004df8:	00b500a3          	sb	a1,1(a0)
    80004dfc:	00200713          	li	a4,2
    80004e00:	1ae78a63          	beq	a5,a4,80004fb4 <__memset+0x1fc>
    80004e04:	00b50123          	sb	a1,2(a0)
    80004e08:	00300713          	li	a4,3
    80004e0c:	18e78463          	beq	a5,a4,80004f94 <__memset+0x1dc>
    80004e10:	00b501a3          	sb	a1,3(a0)
    80004e14:	00400713          	li	a4,4
    80004e18:	1ae78263          	beq	a5,a4,80004fbc <__memset+0x204>
    80004e1c:	00b50223          	sb	a1,4(a0)
    80004e20:	00500713          	li	a4,5
    80004e24:	1ae78063          	beq	a5,a4,80004fc4 <__memset+0x20c>
    80004e28:	00b502a3          	sb	a1,5(a0)
    80004e2c:	00700713          	li	a4,7
    80004e30:	18e79e63          	bne	a5,a4,80004fcc <__memset+0x214>
    80004e34:	00b50323          	sb	a1,6(a0)
    80004e38:	00700e93          	li	t4,7
    80004e3c:	00859713          	slli	a4,a1,0x8
    80004e40:	00e5e733          	or	a4,a1,a4
    80004e44:	01059e13          	slli	t3,a1,0x10
    80004e48:	01c76e33          	or	t3,a4,t3
    80004e4c:	01859313          	slli	t1,a1,0x18
    80004e50:	006e6333          	or	t1,t3,t1
    80004e54:	02059893          	slli	a7,a1,0x20
    80004e58:	40f60e3b          	subw	t3,a2,a5
    80004e5c:	011368b3          	or	a7,t1,a7
    80004e60:	02859813          	slli	a6,a1,0x28
    80004e64:	0108e833          	or	a6,a7,a6
    80004e68:	03059693          	slli	a3,a1,0x30
    80004e6c:	003e589b          	srliw	a7,t3,0x3
    80004e70:	00d866b3          	or	a3,a6,a3
    80004e74:	03859713          	slli	a4,a1,0x38
    80004e78:	00389813          	slli	a6,a7,0x3
    80004e7c:	00f507b3          	add	a5,a0,a5
    80004e80:	00e6e733          	or	a4,a3,a4
    80004e84:	000e089b          	sext.w	a7,t3
    80004e88:	00f806b3          	add	a3,a6,a5
    80004e8c:	00e7b023          	sd	a4,0(a5)
    80004e90:	00878793          	addi	a5,a5,8
    80004e94:	fed79ce3          	bne	a5,a3,80004e8c <__memset+0xd4>
    80004e98:	ff8e7793          	andi	a5,t3,-8
    80004e9c:	0007871b          	sext.w	a4,a5
    80004ea0:	01d787bb          	addw	a5,a5,t4
    80004ea4:	0ce88e63          	beq	a7,a4,80004f80 <__memset+0x1c8>
    80004ea8:	00f50733          	add	a4,a0,a5
    80004eac:	00b70023          	sb	a1,0(a4)
    80004eb0:	0017871b          	addiw	a4,a5,1
    80004eb4:	0cc77663          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004eb8:	00e50733          	add	a4,a0,a4
    80004ebc:	00b70023          	sb	a1,0(a4)
    80004ec0:	0027871b          	addiw	a4,a5,2
    80004ec4:	0ac77e63          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004ec8:	00e50733          	add	a4,a0,a4
    80004ecc:	00b70023          	sb	a1,0(a4)
    80004ed0:	0037871b          	addiw	a4,a5,3
    80004ed4:	0ac77663          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004ed8:	00e50733          	add	a4,a0,a4
    80004edc:	00b70023          	sb	a1,0(a4)
    80004ee0:	0047871b          	addiw	a4,a5,4
    80004ee4:	08c77e63          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004ee8:	00e50733          	add	a4,a0,a4
    80004eec:	00b70023          	sb	a1,0(a4)
    80004ef0:	0057871b          	addiw	a4,a5,5
    80004ef4:	08c77663          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004ef8:	00e50733          	add	a4,a0,a4
    80004efc:	00b70023          	sb	a1,0(a4)
    80004f00:	0067871b          	addiw	a4,a5,6
    80004f04:	06c77e63          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004f08:	00e50733          	add	a4,a0,a4
    80004f0c:	00b70023          	sb	a1,0(a4)
    80004f10:	0077871b          	addiw	a4,a5,7
    80004f14:	06c77663          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004f18:	00e50733          	add	a4,a0,a4
    80004f1c:	00b70023          	sb	a1,0(a4)
    80004f20:	0087871b          	addiw	a4,a5,8
    80004f24:	04c77e63          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004f28:	00e50733          	add	a4,a0,a4
    80004f2c:	00b70023          	sb	a1,0(a4)
    80004f30:	0097871b          	addiw	a4,a5,9
    80004f34:	04c77663          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004f38:	00e50733          	add	a4,a0,a4
    80004f3c:	00b70023          	sb	a1,0(a4)
    80004f40:	00a7871b          	addiw	a4,a5,10
    80004f44:	02c77e63          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004f48:	00e50733          	add	a4,a0,a4
    80004f4c:	00b70023          	sb	a1,0(a4)
    80004f50:	00b7871b          	addiw	a4,a5,11
    80004f54:	02c77663          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004f58:	00e50733          	add	a4,a0,a4
    80004f5c:	00b70023          	sb	a1,0(a4)
    80004f60:	00c7871b          	addiw	a4,a5,12
    80004f64:	00c77e63          	bgeu	a4,a2,80004f80 <__memset+0x1c8>
    80004f68:	00e50733          	add	a4,a0,a4
    80004f6c:	00b70023          	sb	a1,0(a4)
    80004f70:	00d7879b          	addiw	a5,a5,13
    80004f74:	00c7f663          	bgeu	a5,a2,80004f80 <__memset+0x1c8>
    80004f78:	00f507b3          	add	a5,a0,a5
    80004f7c:	00b78023          	sb	a1,0(a5)
    80004f80:	00813403          	ld	s0,8(sp)
    80004f84:	01010113          	addi	sp,sp,16
    80004f88:	00008067          	ret
    80004f8c:	00b00693          	li	a3,11
    80004f90:	e55ff06f          	j	80004de4 <__memset+0x2c>
    80004f94:	00300e93          	li	t4,3
    80004f98:	ea5ff06f          	j	80004e3c <__memset+0x84>
    80004f9c:	00100e93          	li	t4,1
    80004fa0:	e9dff06f          	j	80004e3c <__memset+0x84>
    80004fa4:	00000e93          	li	t4,0
    80004fa8:	e95ff06f          	j	80004e3c <__memset+0x84>
    80004fac:	00000793          	li	a5,0
    80004fb0:	ef9ff06f          	j	80004ea8 <__memset+0xf0>
    80004fb4:	00200e93          	li	t4,2
    80004fb8:	e85ff06f          	j	80004e3c <__memset+0x84>
    80004fbc:	00400e93          	li	t4,4
    80004fc0:	e7dff06f          	j	80004e3c <__memset+0x84>
    80004fc4:	00500e93          	li	t4,5
    80004fc8:	e75ff06f          	j	80004e3c <__memset+0x84>
    80004fcc:	00600e93          	li	t4,6
    80004fd0:	e6dff06f          	j	80004e3c <__memset+0x84>

0000000080004fd4 <__memmove>:
    80004fd4:	ff010113          	addi	sp,sp,-16
    80004fd8:	00813423          	sd	s0,8(sp)
    80004fdc:	01010413          	addi	s0,sp,16
    80004fe0:	0e060863          	beqz	a2,800050d0 <__memmove+0xfc>
    80004fe4:	fff6069b          	addiw	a3,a2,-1
    80004fe8:	0006881b          	sext.w	a6,a3
    80004fec:	0ea5e863          	bltu	a1,a0,800050dc <__memmove+0x108>
    80004ff0:	00758713          	addi	a4,a1,7
    80004ff4:	00a5e7b3          	or	a5,a1,a0
    80004ff8:	40a70733          	sub	a4,a4,a0
    80004ffc:	0077f793          	andi	a5,a5,7
    80005000:	00f73713          	sltiu	a4,a4,15
    80005004:	00174713          	xori	a4,a4,1
    80005008:	0017b793          	seqz	a5,a5
    8000500c:	00e7f7b3          	and	a5,a5,a4
    80005010:	10078863          	beqz	a5,80005120 <__memmove+0x14c>
    80005014:	00900793          	li	a5,9
    80005018:	1107f463          	bgeu	a5,a6,80005120 <__memmove+0x14c>
    8000501c:	0036581b          	srliw	a6,a2,0x3
    80005020:	fff8081b          	addiw	a6,a6,-1
    80005024:	02081813          	slli	a6,a6,0x20
    80005028:	01d85893          	srli	a7,a6,0x1d
    8000502c:	00858813          	addi	a6,a1,8
    80005030:	00058793          	mv	a5,a1
    80005034:	00050713          	mv	a4,a0
    80005038:	01088833          	add	a6,a7,a6
    8000503c:	0007b883          	ld	a7,0(a5)
    80005040:	00878793          	addi	a5,a5,8
    80005044:	00870713          	addi	a4,a4,8
    80005048:	ff173c23          	sd	a7,-8(a4)
    8000504c:	ff0798e3          	bne	a5,a6,8000503c <__memmove+0x68>
    80005050:	ff867713          	andi	a4,a2,-8
    80005054:	02071793          	slli	a5,a4,0x20
    80005058:	0207d793          	srli	a5,a5,0x20
    8000505c:	00f585b3          	add	a1,a1,a5
    80005060:	40e686bb          	subw	a3,a3,a4
    80005064:	00f507b3          	add	a5,a0,a5
    80005068:	06e60463          	beq	a2,a4,800050d0 <__memmove+0xfc>
    8000506c:	0005c703          	lbu	a4,0(a1)
    80005070:	00e78023          	sb	a4,0(a5)
    80005074:	04068e63          	beqz	a3,800050d0 <__memmove+0xfc>
    80005078:	0015c603          	lbu	a2,1(a1)
    8000507c:	00100713          	li	a4,1
    80005080:	00c780a3          	sb	a2,1(a5)
    80005084:	04e68663          	beq	a3,a4,800050d0 <__memmove+0xfc>
    80005088:	0025c603          	lbu	a2,2(a1)
    8000508c:	00200713          	li	a4,2
    80005090:	00c78123          	sb	a2,2(a5)
    80005094:	02e68e63          	beq	a3,a4,800050d0 <__memmove+0xfc>
    80005098:	0035c603          	lbu	a2,3(a1)
    8000509c:	00300713          	li	a4,3
    800050a0:	00c781a3          	sb	a2,3(a5)
    800050a4:	02e68663          	beq	a3,a4,800050d0 <__memmove+0xfc>
    800050a8:	0045c603          	lbu	a2,4(a1)
    800050ac:	00400713          	li	a4,4
    800050b0:	00c78223          	sb	a2,4(a5)
    800050b4:	00e68e63          	beq	a3,a4,800050d0 <__memmove+0xfc>
    800050b8:	0055c603          	lbu	a2,5(a1)
    800050bc:	00500713          	li	a4,5
    800050c0:	00c782a3          	sb	a2,5(a5)
    800050c4:	00e68663          	beq	a3,a4,800050d0 <__memmove+0xfc>
    800050c8:	0065c703          	lbu	a4,6(a1)
    800050cc:	00e78323          	sb	a4,6(a5)
    800050d0:	00813403          	ld	s0,8(sp)
    800050d4:	01010113          	addi	sp,sp,16
    800050d8:	00008067          	ret
    800050dc:	02061713          	slli	a4,a2,0x20
    800050e0:	02075713          	srli	a4,a4,0x20
    800050e4:	00e587b3          	add	a5,a1,a4
    800050e8:	f0f574e3          	bgeu	a0,a5,80004ff0 <__memmove+0x1c>
    800050ec:	02069613          	slli	a2,a3,0x20
    800050f0:	02065613          	srli	a2,a2,0x20
    800050f4:	fff64613          	not	a2,a2
    800050f8:	00e50733          	add	a4,a0,a4
    800050fc:	00c78633          	add	a2,a5,a2
    80005100:	fff7c683          	lbu	a3,-1(a5)
    80005104:	fff78793          	addi	a5,a5,-1
    80005108:	fff70713          	addi	a4,a4,-1
    8000510c:	00d70023          	sb	a3,0(a4)
    80005110:	fec798e3          	bne	a5,a2,80005100 <__memmove+0x12c>
    80005114:	00813403          	ld	s0,8(sp)
    80005118:	01010113          	addi	sp,sp,16
    8000511c:	00008067          	ret
    80005120:	02069713          	slli	a4,a3,0x20
    80005124:	02075713          	srli	a4,a4,0x20
    80005128:	00170713          	addi	a4,a4,1
    8000512c:	00e50733          	add	a4,a0,a4
    80005130:	00050793          	mv	a5,a0
    80005134:	0005c683          	lbu	a3,0(a1)
    80005138:	00178793          	addi	a5,a5,1
    8000513c:	00158593          	addi	a1,a1,1
    80005140:	fed78fa3          	sb	a3,-1(a5)
    80005144:	fee798e3          	bne	a5,a4,80005134 <__memmove+0x160>
    80005148:	f89ff06f          	j	800050d0 <__memmove+0xfc>

000000008000514c <__putc>:
    8000514c:	fe010113          	addi	sp,sp,-32
    80005150:	00813823          	sd	s0,16(sp)
    80005154:	00113c23          	sd	ra,24(sp)
    80005158:	02010413          	addi	s0,sp,32
    8000515c:	00050793          	mv	a5,a0
    80005160:	fef40593          	addi	a1,s0,-17
    80005164:	00100613          	li	a2,1
    80005168:	00000513          	li	a0,0
    8000516c:	fef407a3          	sb	a5,-17(s0)
    80005170:	fffff097          	auipc	ra,0xfffff
    80005174:	b3c080e7          	jalr	-1220(ra) # 80003cac <console_write>
    80005178:	01813083          	ld	ra,24(sp)
    8000517c:	01013403          	ld	s0,16(sp)
    80005180:	02010113          	addi	sp,sp,32
    80005184:	00008067          	ret

0000000080005188 <__getc>:
    80005188:	fe010113          	addi	sp,sp,-32
    8000518c:	00813823          	sd	s0,16(sp)
    80005190:	00113c23          	sd	ra,24(sp)
    80005194:	02010413          	addi	s0,sp,32
    80005198:	fe840593          	addi	a1,s0,-24
    8000519c:	00100613          	li	a2,1
    800051a0:	00000513          	li	a0,0
    800051a4:	fffff097          	auipc	ra,0xfffff
    800051a8:	ae8080e7          	jalr	-1304(ra) # 80003c8c <console_read>
    800051ac:	fe844503          	lbu	a0,-24(s0)
    800051b0:	01813083          	ld	ra,24(sp)
    800051b4:	01013403          	ld	s0,16(sp)
    800051b8:	02010113          	addi	sp,sp,32
    800051bc:	00008067          	ret

00000000800051c0 <console_handler>:
    800051c0:	fe010113          	addi	sp,sp,-32
    800051c4:	00813823          	sd	s0,16(sp)
    800051c8:	00113c23          	sd	ra,24(sp)
    800051cc:	00913423          	sd	s1,8(sp)
    800051d0:	02010413          	addi	s0,sp,32
    800051d4:	14202773          	csrr	a4,scause
    800051d8:	100027f3          	csrr	a5,sstatus
    800051dc:	0027f793          	andi	a5,a5,2
    800051e0:	06079e63          	bnez	a5,8000525c <console_handler+0x9c>
    800051e4:	00074c63          	bltz	a4,800051fc <console_handler+0x3c>
    800051e8:	01813083          	ld	ra,24(sp)
    800051ec:	01013403          	ld	s0,16(sp)
    800051f0:	00813483          	ld	s1,8(sp)
    800051f4:	02010113          	addi	sp,sp,32
    800051f8:	00008067          	ret
    800051fc:	0ff77713          	andi	a4,a4,255
    80005200:	00900793          	li	a5,9
    80005204:	fef712e3          	bne	a4,a5,800051e8 <console_handler+0x28>
    80005208:	ffffe097          	auipc	ra,0xffffe
    8000520c:	6dc080e7          	jalr	1756(ra) # 800038e4 <plic_claim>
    80005210:	00a00793          	li	a5,10
    80005214:	00050493          	mv	s1,a0
    80005218:	02f50c63          	beq	a0,a5,80005250 <console_handler+0x90>
    8000521c:	fc0506e3          	beqz	a0,800051e8 <console_handler+0x28>
    80005220:	00050593          	mv	a1,a0
    80005224:	00001517          	auipc	a0,0x1
    80005228:	0dc50513          	addi	a0,a0,220 # 80006300 <_ZZ14__print_uint64mE6digits+0x218>
    8000522c:	fffff097          	auipc	ra,0xfffff
    80005230:	afc080e7          	jalr	-1284(ra) # 80003d28 <__printf>
    80005234:	01013403          	ld	s0,16(sp)
    80005238:	01813083          	ld	ra,24(sp)
    8000523c:	00048513          	mv	a0,s1
    80005240:	00813483          	ld	s1,8(sp)
    80005244:	02010113          	addi	sp,sp,32
    80005248:	ffffe317          	auipc	t1,0xffffe
    8000524c:	6d430067          	jr	1748(t1) # 8000391c <plic_complete>
    80005250:	fffff097          	auipc	ra,0xfffff
    80005254:	3e0080e7          	jalr	992(ra) # 80004630 <uartintr>
    80005258:	fddff06f          	j	80005234 <console_handler+0x74>
    8000525c:	00001517          	auipc	a0,0x1
    80005260:	1a450513          	addi	a0,a0,420 # 80006400 <digits+0x78>
    80005264:	fffff097          	auipc	ra,0xfffff
    80005268:	a68080e7          	jalr	-1432(ra) # 80003ccc <panic>
	...
