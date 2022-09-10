
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	2a013103          	ld	sp,672(sp) # 800072a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	180030ef          	jal	ra,8000319c <start>

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
    80001324:	f78080e7          	jalr	-136(ra) # 80005298 <__getc>
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
    8000134c:	f14080e7          	jalr	-236(ra) # 8000525c <__putc>
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
    80001374:	624080e7          	jalr	1572(ra) # 80001994 <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    80001378:	00006797          	auipc	a5,0x6
    8000137c:	f307b783          	ld	a5,-208(a5) # 800072a8 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800013f0:	744080e7          	jalr	1860(ra) # 80001b30 <_ZN15MemoryAllocator8allocateEm>
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
    80001418:	7bc080e7          	jalr	1980(ra) # 80001bd0 <_ZN15MemoryAllocator4freeEPv>
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
    80001448:	338080e7          	jalr	824(ra) # 8000177c <_ZN3TCB9createTCBEPFvPvES0_>
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
    80001470:	e447b783          	ld	a5,-444(a5) # 800072b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001474:	0007b783          	ld	a5,0(a5)

    static TCB* createTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    80001478:	00100713          	li	a4,1
    8000147c:	00e78c23          	sb	a4,24(a5)
    TCB::yield();
    80001480:	00000097          	auipc	ra,0x0
    80001484:	43c080e7          	jalr	1084(ra) # 800018bc <_ZN3TCB5yieldEv>
}
    80001488:	f6dff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>



//0x13
inline void Kernel::thread_dispatch_handler() {
    TCB::yield();
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	430080e7          	jalr	1072(ra) # 800018bc <_ZN3TCB5yieldEv>
}
    80001494:	f61ff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>
            asm volatile ("addi a0, zero, -1");
    80001498:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    8000149c:	00005517          	auipc	a0,0x5
    800014a0:	b8450513          	addi	a0,a0,-1148 # 80006020 <CONSOLE_STATUS+0x10>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	a60080e7          	jalr	-1440(ra) # 80001f04 <_Z14__print_stringPKc>
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
    80001524:	9e4080e7          	jalr	-1564(ra) # 80001f04 <_Z14__print_stringPKc>
    __print_string("scause: ");
    80001528:	00005517          	auipc	a0,0x5
    8000152c:	b3850513          	addi	a0,a0,-1224 # 80006060 <CONSOLE_STATUS+0x50>
    80001530:	00001097          	auipc	ra,0x1
    80001534:	9d4080e7          	jalr	-1580(ra) # 80001f04 <_Z14__print_stringPKc>
    __print_uint64(scause);
    80001538:	00048513          	mv	a0,s1
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	a0c080e7          	jalr	-1524(ra) # 80001f48 <_Z14__print_uint64m>
    __putc('\n');
    80001544:	00a00513          	li	a0,10
    80001548:	00004097          	auipc	ra,0x4
    8000154c:	d14080e7          	jalr	-748(ra) # 8000525c <__putc>
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
    800015bc:	94c080e7          	jalr	-1716(ra) # 80001f04 <_Z14__print_stringPKc>
        __print_string("scause: ");
    800015c0:	00005517          	auipc	a0,0x5
    800015c4:	aa050513          	addi	a0,a0,-1376 # 80006060 <CONSOLE_STATUS+0x50>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	93c080e7          	jalr	-1732(ra) # 80001f04 <_Z14__print_stringPKc>
        __print_uint64(scause);
    800015d0:	00048513          	mv	a0,s1
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	974080e7          	jalr	-1676(ra) # 80001f48 <_Z14__print_uint64m>
        __putc('\n');
    800015dc:	00a00513          	li	a0,10
    800015e0:	00004097          	auipc	ra,0x4
    800015e4:	c7c080e7          	jalr	-900(ra) # 8000525c <__putc>
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
    80001600:	cd4080e7          	jalr	-812(ra) # 800052d0 <console_handler>
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
    80001634:	314080e7          	jalr	788(ra) # 80001944 <_ZdlPv>
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
    80001658:	bac78793          	addi	a5,a5,-1108 # 80007200 <_ZTV9Semaphore+0x10>
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
    800016a4:	fe010113          	addi	sp,sp,-32
    800016a8:	00113c23          	sd	ra,24(sp)
    800016ac:	00813823          	sd	s0,16(sp)
    800016b0:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	cac080e7          	jalr	-852(ra) # 80001360 <_ZN6Kernel10initKernelEv>
    TCB* threads[2];
    thread_create(&threads[0], nullptr, nullptr);
    800016bc:	00000613          	li	a2,0
    800016c0:	00000593          	li	a1,0
    800016c4:	fe040513          	addi	a0,s0,-32
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	950080e7          	jalr	-1712(ra) # 80001018 <thread_create>
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))userMain, nullptr);
    800016d0:	00000613          	li	a2,0
    800016d4:	00006597          	auipc	a1,0x6
    800016d8:	bbc5b583          	ld	a1,-1092(a1) # 80007290 <_GLOBAL_OFFSET_TABLE_+0x8>
    800016dc:	fe840513          	addi	a0,s0,-24
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	938080e7          	jalr	-1736(ra) # 80001018 <thread_create>
    TCB::running = threads[0];
    800016e8:	fe043703          	ld	a4,-32(s0)
    800016ec:	00006797          	auipc	a5,0x6
    800016f0:	bc47b783          	ld	a5,-1084(a5) # 800072b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016f4:	00e7b023          	sd	a4,0(a5)

    thread_dispatch();
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	938080e7          	jalr	-1736(ra) # 80001030 <thread_dispatch>
    __print_string("hey!\n");
    80001700:	00005517          	auipc	a0,0x5
    80001704:	9d850513          	addi	a0,a0,-1576 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	7fc080e7          	jalr	2044(ra) # 80001f04 <_Z14__print_stringPKc>
    while(!threads[1]->isFinished()) { TCB::yield(); }
    80001710:	fe843783          	ld	a5,-24(s0)
    bool isFinished() const { return finished; }
    80001714:	0187c783          	lbu	a5,24(a5)
    80001718:	00079863          	bnez	a5,80001728 <main+0x84>
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	1a0080e7          	jalr	416(ra) # 800018bc <_ZN3TCB5yieldEv>
    80001724:	fedff06f          	j	80001710 <main+0x6c>

    __print_string("Finished\n");
    80001728:	00005517          	auipc	a0,0x5
    8000172c:	9b850513          	addi	a0,a0,-1608 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001730:	00000097          	auipc	ra,0x0
    80001734:	7d4080e7          	jalr	2004(ra) # 80001f04 <_Z14__print_stringPKc>

    //thread_exit();
    80001738:	01813083          	ld	ra,24(sp)
    8000173c:	01013403          	ld	s0,16(sp)
    80001740:	02010113          	addi	sp,sp,32
    80001744:	00008067          	ret

0000000080001748 <_ZN7Console4getcEv>:
//

#include "../h/syscall_cpp.hpp"


char Console::getc() {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    return 0;
}
    80001754:	00000513          	li	a0,0
    80001758:	00813403          	ld	s0,8(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_ZN7Console4putcEc>:

void Console::putc(char) {
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00813423          	sd	s0,8(sp)
    8000176c:	01010413          	addi	s0,sp,16

    80001770:	00813403          	ld	s0,8(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret

000000008000177c <_ZN3TCB9createTCBEPFvPvES0_>:
#include "../h/tcb.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

TCB *TCB::createTCB(TCB::Body body, void *args) {
    8000177c:	fd010113          	addi	sp,sp,-48
    80001780:	02113423          	sd	ra,40(sp)
    80001784:	02813023          	sd	s0,32(sp)
    80001788:	00913c23          	sd	s1,24(sp)
    8000178c:	01213823          	sd	s2,16(sp)
    80001790:	01313423          	sd	s3,8(sp)
    80001794:	03010413          	addi	s0,sp,48
    80001798:	00050913          	mv	s2,a0
    8000179c:	00058993          	mv	s3,a1
    return new TCB(body, args);
    800017a0:	03000513          	li	a0,48
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	150080e7          	jalr	336(ra) # 800018f4 <_Znwm>
    800017ac:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            finished(false),
            context({
                body != nullptr ? (uint64) body : 0,
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
            })
    800017b0:	01253023          	sd	s2,0(a0)
    800017b4:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    800017b8:	00090a63          	beqz	s2,800017cc <_ZN3TCB9createTCBEPFvPvES0_+0x50>
    800017bc:	00008537          	lui	a0,0x8
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	15c080e7          	jalr	348(ra) # 8000191c <_Znam>
    800017c8:	0080006f          	j	800017d0 <_ZN3TCB9createTCBEPFvPvES0_+0x54>
    800017cc:	00000513          	li	a0,0
            })
    800017d0:	00a4b823          	sd	a0,16(s1)
    800017d4:	00048c23          	sb	zero,24(s1)
                body != nullptr ? (uint64) body : 0,
    800017d8:	02090863          	beqz	s2,80001808 <_ZN3TCB9createTCBEPFvPvES0_+0x8c>
    800017dc:	00090793          	mv	a5,s2
            })
    800017e0:	02f4b023          	sd	a5,32(s1)
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800017e4:	02050663          	beqz	a0,80001810 <_ZN3TCB9createTCBEPFvPvES0_+0x94>
    800017e8:	000087b7          	lui	a5,0x8
    800017ec:	00f50533          	add	a0,a0,a5
            })
    800017f0:	02a4b423          	sd	a0,40(s1)
    {
        if (body != nullptr) Scheduler::put(this);
    800017f4:	04090063          	beqz	s2,80001834 <_ZN3TCB9createTCBEPFvPvES0_+0xb8>
    800017f8:	00048513          	mv	a0,s1
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	55c080e7          	jalr	1372(ra) # 80001d58 <_ZN9Scheduler3putEP3TCB>
    80001804:	0300006f          	j	80001834 <_ZN3TCB9createTCBEPFvPvES0_+0xb8>
                body != nullptr ? (uint64) body : 0,
    80001808:	00000793          	li	a5,0
    8000180c:	fd5ff06f          	j	800017e0 <_ZN3TCB9createTCBEPFvPvES0_+0x64>
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001810:	00000513          	li	a0,0
    80001814:	fddff06f          	j	800017f0 <_ZN3TCB9createTCBEPFvPvES0_+0x74>
    80001818:	00050913          	mv	s2,a0
    8000181c:	00048513          	mv	a0,s1
    80001820:	00000097          	auipc	ra,0x0
    80001824:	124080e7          	jalr	292(ra) # 80001944 <_ZdlPv>
    80001828:	00090513          	mv	a0,s2
    8000182c:	00007097          	auipc	ra,0x7
    80001830:	bdc080e7          	jalr	-1060(ra) # 80008408 <_Unwind_Resume>
}
    80001834:	00048513          	mv	a0,s1
    80001838:	02813083          	ld	ra,40(sp)
    8000183c:	02013403          	ld	s0,32(sp)
    80001840:	01813483          	ld	s1,24(sp)
    80001844:	01013903          	ld	s2,16(sp)
    80001848:	00813983          	ld	s3,8(sp)
    8000184c:	03010113          	addi	sp,sp,48
    80001850:	00008067          	ret

0000000080001854 <_ZN3TCB8dispatchEv>:

    RiscV::popRegisters();
}

void TCB::dispatch()
{
    80001854:	fe010113          	addi	sp,sp,-32
    80001858:	00113c23          	sd	ra,24(sp)
    8000185c:	00813823          	sd	s0,16(sp)
    80001860:	00913423          	sd	s1,8(sp)
    80001864:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001868:	00006497          	auipc	s1,0x6
    8000186c:	aa84b483          	ld	s1,-1368(s1) # 80007310 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001870:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001874:	02078c63          	beqz	a5,800018ac <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	45c080e7          	jalr	1116(ra) # 80001cd4 <_ZN9Scheduler3getEv>
    80001880:	00006797          	auipc	a5,0x6
    80001884:	a8a7b823          	sd	a0,-1392(a5) # 80007310 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80001888:	02050593          	addi	a1,a0,32 # 8020 <_entry-0x7fff7fe0>
    8000188c:	02048513          	addi	a0,s1,32
    80001890:	00000097          	auipc	ra,0x0
    80001894:	9c0080e7          	jalr	-1600(ra) # 80001250 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80001898:	01813083          	ld	ra,24(sp)
    8000189c:	01013403          	ld	s0,16(sp)
    800018a0:	00813483          	ld	s1,8(sp)
    800018a4:	02010113          	addi	sp,sp,32
    800018a8:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800018ac:	00048513          	mv	a0,s1
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	4a8080e7          	jalr	1192(ra) # 80001d58 <_ZN9Scheduler3putEP3TCB>
    800018b8:	fc1ff06f          	j	80001878 <_ZN3TCB8dispatchEv+0x24>

00000000800018bc <_ZN3TCB5yieldEv>:
void TCB::yield() {
    800018bc:	ff010113          	addi	sp,sp,-16
    800018c0:	00113423          	sd	ra,8(sp)
    800018c4:	00813023          	sd	s0,0(sp)
    800018c8:	01010413          	addi	s0,sp,16
    RiscV::pushRegisters();
    800018cc:	fffff097          	auipc	ra,0xfffff
    800018d0:	770080e7          	jalr	1904(ra) # 8000103c <_ZN5RiscV13pushRegistersEv>
    dispatch();
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	f80080e7          	jalr	-128(ra) # 80001854 <_ZN3TCB8dispatchEv>
    RiscV::popRegisters();
    800018dc:	fffff097          	auipc	ra,0xfffff
    800018e0:	7dc080e7          	jalr	2012(ra) # 800010b8 <_ZN5RiscV12popRegistersEv>
}
    800018e4:	00813083          	ld	ra,8(sp)
    800018e8:	00013403          	ld	s0,0(sp)
    800018ec:	01010113          	addi	sp,sp,16
    800018f0:	00008067          	ret

00000000800018f4 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00113423          	sd	ra,8(sp)
    800018fc:	00813023          	sd	s0,0(sp)
    80001900:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001904:	fffff097          	auipc	ra,0xfffff
    80001908:	6fc080e7          	jalr	1788(ra) # 80001000 <mem_alloc>
}
    8000190c:	00813083          	ld	ra,8(sp)
    80001910:	00013403          	ld	s0,0(sp)
    80001914:	01010113          	addi	sp,sp,16
    80001918:	00008067          	ret

000000008000191c <_Znam>:

void* operator new[](size_t size) {
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00113423          	sd	ra,8(sp)
    80001924:	00813023          	sd	s0,0(sp)
    80001928:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000192c:	fffff097          	auipc	ra,0xfffff
    80001930:	6d4080e7          	jalr	1748(ra) # 80001000 <mem_alloc>
}
    80001934:	00813083          	ld	ra,8(sp)
    80001938:	00013403          	ld	s0,0(sp)
    8000193c:	01010113          	addi	sp,sp,16
    80001940:	00008067          	ret

0000000080001944 <_ZdlPv>:

void operator delete(void* ptr) {
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00113423          	sd	ra,8(sp)
    8000194c:	00813023          	sd	s0,0(sp)
    80001950:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001954:	fffff097          	auipc	ra,0xfffff
    80001958:	6b8080e7          	jalr	1720(ra) # 8000100c <mem_free>
}
    8000195c:	00813083          	ld	ra,8(sp)
    80001960:	00013403          	ld	s0,0(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_ZdaPv>:

void operator delete[](void* ptr) {
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00113423          	sd	ra,8(sp)
    80001974:	00813023          	sd	s0,0(sp)
    80001978:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000197c:	fffff097          	auipc	ra,0xfffff
    80001980:	690080e7          	jalr	1680(ra) # 8000100c <mem_free>
}
    80001984:	00813083          	ld	ra,8(sp)
    80001988:	00013403          	ld	s0,0(sp)
    8000198c:	01010113          	addi	sp,sp,16
    80001990:	00008067          	ret

0000000080001994 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);

}

void MemoryAllocator::initMem()  {
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00813423          	sd	s0,8(sp)
    8000199c:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    800019a0:	00006797          	auipc	a5,0x6
    800019a4:	8f87b783          	ld	a5,-1800(a5) # 80007298 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019a8:	0007b783          	ld	a5,0(a5)
    800019ac:	00006697          	auipc	a3,0x6
    800019b0:	96c68693          	addi	a3,a3,-1684 # 80007318 <_ZN15MemoryAllocator8fMemHeadE>
    800019b4:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    800019b8:	00006717          	auipc	a4,0x6
    800019bc:	90073703          	ld	a4,-1792(a4) # 800072b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019c0:	00073703          	ld	a4,0(a4)
    800019c4:	40f70733          	sub	a4,a4,a5
    800019c8:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    800019cc:	0006b783          	ld	a5,0(a3)
    800019d0:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    800019d4:	0007b823          	sd	zero,16(a5)
}
    800019d8:	00813403          	ld	s0,8(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00813423          	sd	s0,8(sp)
    800019ec:	01010413          	addi	s0,sp,16
    800019f0:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    800019f4:	00006517          	auipc	a0,0x6
    800019f8:	92453503          	ld	a0,-1756(a0) # 80007318 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    800019fc:	02050063          	beqz	a0,80001a1c <_ZN15MemoryAllocator8firstFitEm+0x38>
    80001a00:	01053703          	ld	a4,16(a0)
    80001a04:	00070c63          	beqz	a4,80001a1c <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80001a08:	00860793          	addi	a5,a2,8
    80001a0c:	00053683          	ld	a3,0(a0)
    80001a10:	00f6fe63          	bgeu	a3,a5,80001a2c <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80001a14:	00070513          	mv	a0,a4
    80001a18:	fe5ff06f          	j	800019fc <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001a1c:	00050863          	beqz	a0,80001a2c <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001a20:	00860613          	addi	a2,a2,8
    80001a24:	00053783          	ld	a5,0(a0)
    80001a28:	00c7e863          	bltu	a5,a2,80001a38 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret
    return nullptr;
    80001a38:	00000513          	li	a0,0
    80001a3c:	ff1ff06f          	j	80001a2c <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001a40 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001a40:	ff010113          	addi	sp,sp,-16
    80001a44:	00813423          	sd	s0,8(sp)
    80001a48:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001a4c:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001a50:	03f57793          	andi	a5,a0,63
    80001a54:	00078863          	beqz	a5,80001a64 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80001a58:	04000713          	li	a4,64
    80001a5c:	40f707b3          	sub	a5,a4,a5
    80001a60:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001a64:	00813403          	ld	s0,8(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001a70:	fe010113          	addi	sp,sp,-32
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	00813823          	sd	s0,16(sp)
    80001a7c:	00913423          	sd	s1,8(sp)
    80001a80:	02010413          	addi	s0,sp,32
    80001a84:	00050493          	mv	s1,a0
    if (node) {
    80001a88:	04050c63          	beqz	a0,80001ae0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80001a8c:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	fb0080e7          	jalr	-80(ra) # 80001a40 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80001a98:	0004b783          	ld	a5,0(s1)
    80001a9c:	40a787b3          	sub	a5,a5,a0
    80001aa0:	03f00713          	li	a4,63
    80001aa4:	04f77e63          	bgeu	a4,a5,80001b00 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80001aa8:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80001aac:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80001ab0:	0084b783          	ld	a5,8(s1)
    80001ab4:	04078063          	beqz	a5,80001af4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80001ab8:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80001abc:	0104b783          	ld	a5,16(s1)
    80001ac0:	00078463          	beqz	a5,80001ac8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001ac4:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80001ac8:	0104b783          	ld	a5,16(s1)
    80001acc:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80001ad0:	0084b783          	ld	a5,8(s1)
    80001ad4:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80001ad8:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80001adc:	00848513          	addi	a0,s1,8
}
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	02010113          	addi	sp,sp,32
    80001af0:	00008067          	ret
            else fMemHead = newNode;
    80001af4:	00006797          	auipc	a5,0x6
    80001af8:	82e7b223          	sd	a4,-2012(a5) # 80007318 <_ZN15MemoryAllocator8fMemHeadE>
    80001afc:	fc1ff06f          	j	80001abc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80001b00:	0084b783          	ld	a5,8(s1)
    80001b04:	02078063          	beqz	a5,80001b24 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80001b08:	0104b703          	ld	a4,16(s1)
    80001b0c:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001b10:	0104b783          	ld	a5,16(s1)
    80001b14:	fc0782e3          	beqz	a5,80001ad8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80001b18:	0084b703          	ld	a4,8(s1)
    80001b1c:	00e7b423          	sd	a4,8(a5)
    80001b20:	fb9ff06f          	j	80001ad8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = newNode;
    80001b24:	00005797          	auipc	a5,0x5
    80001b28:	7e07ba23          	sd	zero,2036(a5) # 80007318 <_ZN15MemoryAllocator8fMemHeadE>
    80001b2c:	fe5ff06f          	j	80001b10 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080001b30 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80001b30:	fe010113          	addi	sp,sp,-32
    80001b34:	00113c23          	sd	ra,24(sp)
    80001b38:	00813823          	sd	s0,16(sp)
    80001b3c:	00913423          	sd	s1,8(sp)
    80001b40:	02010413          	addi	s0,sp,32
    80001b44:	00050493          	mv	s1,a0
    return allocBlocks(firstFit(size), size);
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	e9c080e7          	jalr	-356(ra) # 800019e4 <_ZN15MemoryAllocator8firstFitEm>
    80001b50:	00048593          	mv	a1,s1
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	f1c080e7          	jalr	-228(ra) # 80001a70 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80001b5c:	01813083          	ld	ra,24(sp)
    80001b60:	01013403          	ld	s0,16(sp)
    80001b64:	00813483          	ld	s1,8(sp)
    80001b68:	02010113          	addi	sp,sp,32
    80001b6c:	00008067          	ret

0000000080001b70 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00813423          	sd	s0,8(sp)
    80001b78:	01010413          	addi	s0,sp,16
    if(!node) return;
    80001b7c:	02050663          	beqz	a0,80001ba8 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    if (!node->next && node + node->size != node->next) return;
    80001b80:	01053783          	ld	a5,16(a0)
    80001b84:	02078863          	beqz	a5,80001bb4 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x44>

    node->size += node->next->size;
    80001b88:	0007b683          	ld	a3,0(a5)
    80001b8c:	00053703          	ld	a4,0(a0)
    80001b90:	00d70733          	add	a4,a4,a3
    80001b94:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80001b98:	0107b783          	ld	a5,16(a5)
    80001b9c:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80001ba0:	00078463          	beqz	a5,80001ba8 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    80001ba4:	00a7b423          	sd	a0,8(a5)
}
    80001ba8:	00813403          	ld	s0,8(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret
    if (!node->next && node + node->size != node->next) return;
    80001bb4:	00053683          	ld	a3,0(a0)
    80001bb8:	00169713          	slli	a4,a3,0x1
    80001bbc:	00d70733          	add	a4,a4,a3
    80001bc0:	00371713          	slli	a4,a4,0x3
    80001bc4:	00e50733          	add	a4,a0,a4
    80001bc8:	fee790e3          	bne	a5,a4,80001ba8 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x38>
    80001bcc:	fbdff06f          	j	80001b88 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x18>

0000000080001bd0 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80001bd0:	fe010113          	addi	sp,sp,-32
    80001bd4:	00113c23          	sd	ra,24(sp)
    80001bd8:	00813823          	sd	s0,16(sp)
    80001bdc:	00913423          	sd	s1,8(sp)
    80001be0:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80001be4:	ff850513          	addi	a0,a0,-8
    if (fMemHead && addr>(void*)fMemHead)
    80001be8:	00005717          	auipc	a4,0x5
    80001bec:	73073703          	ld	a4,1840(a4) # 80007318 <_ZN15MemoryAllocator8fMemHeadE>
    80001bf0:	02070063          	beqz	a4,80001c10 <_ZN15MemoryAllocator4freeEPv+0x40>
    80001bf4:	02a77263          	bgeu	a4,a0,80001c18 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80001bf8:	00070793          	mv	a5,a4
    80001bfc:	00078493          	mv	s1,a5
    80001c00:	0107b783          	ld	a5,16(a5)
    80001c04:	00078c63          	beqz	a5,80001c1c <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001c08:	fea7eae3          	bltu	a5,a0,80001bfc <_ZN15MemoryAllocator4freeEPv+0x2c>
    80001c0c:	0100006f          	j	80001c1c <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80001c10:	00070493          	mv	s1,a4
    80001c14:	0080006f          	j	80001c1c <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001c18:	00000493          	li	s1,0
    newNode->prev = curr;
    80001c1c:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80001c20:	04048263          	beqz	s1,80001c64 <_ZN15MemoryAllocator4freeEPv+0x94>
    80001c24:	0104b783          	ld	a5,16(s1)
    80001c28:	00f53823          	sd	a5,16(a0)
    80001c2c:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80001c30:	01053783          	ld	a5,16(a0)
    80001c34:	00078463          	beqz	a5,80001c3c <_ZN15MemoryAllocator4freeEPv+0x6c>
    80001c38:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	f34080e7          	jalr	-204(ra) # 80001b70 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80001c44:	00048513          	mv	a0,s1
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	f28080e7          	jalr	-216(ra) # 80001b70 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80001c50:	01813083          	ld	ra,24(sp)
    80001c54:	01013403          	ld	s0,16(sp)
    80001c58:	00813483          	ld	s1,8(sp)
    80001c5c:	02010113          	addi	sp,sp,32
    80001c60:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80001c64:	00e53823          	sd	a4,16(a0)
    80001c68:	00005797          	auipc	a5,0x5
    80001c6c:	6aa7b823          	sd	a0,1712(a5) # 80007318 <_ZN15MemoryAllocator8fMemHeadE>
    80001c70:	fc1ff06f          	j	80001c30 <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080001c74 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00813423          	sd	s0,8(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c80:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001c84:	10200073          	sret
    80001c88:	00813403          	ld	s0,8(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB* tcb) {
    readyQueue.addLast(tcb);
    //readyQueue.printStatus();
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00813423          	sd	s0,8(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    80001ca0:	00100793          	li	a5,1
    80001ca4:	00f50863          	beq	a0,a5,80001cb4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ca8:	00813403          	ld	s0,8(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret
    80001cb4:	000107b7          	lui	a5,0x10
    80001cb8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001cbc:	fef596e3          	bne	a1,a5,80001ca8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001cc0:	00005797          	auipc	a5,0x5
    80001cc4:	66078793          	addi	a5,a5,1632 # 80007320 <_ZN9Scheduler10readyQueueE>
    80001cc8:	0007b023          	sd	zero,0(a5)
    80001ccc:	0007b423          	sd	zero,8(a5)
    80001cd0:	fd9ff06f          	j	80001ca8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001cd4 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001cd4:	fe010113          	addi	sp,sp,-32
    80001cd8:	00113c23          	sd	ra,24(sp)
    80001cdc:	00813823          	sd	s0,16(sp)
    80001ce0:	00913423          	sd	s1,8(sp)
    80001ce4:	01213023          	sd	s2,0(sp)
    80001ce8:	02010413          	addi	s0,sp,32
    T *removeFirst()
    {
        /*__putc('o');
        __putc('f');
        __putc('\n');*/
        if (!head) {
    80001cec:	00005497          	auipc	s1,0x5
    80001cf0:	6344b483          	ld	s1,1588(s1) # 80007320 <_ZN9Scheduler10readyQueueE>
    80001cf4:	04048063          	beqz	s1,80001d34 <_ZN9Scheduler3getEv+0x60>
            __print_string("help1\n");
            return 0;
        }

        Elem *elem = head;
        head = head->next;
    80001cf8:	0084b783          	ld	a5,8(s1)
    80001cfc:	00005717          	auipc	a4,0x5
    80001d00:	62f73223          	sd	a5,1572(a4) # 80007320 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    80001d04:	04078463          	beqz	a5,80001d4c <_ZN9Scheduler3getEv+0x78>

        T *ret = elem->data;
    80001d08:	0004b903          	ld	s2,0(s1)
        delete elem;
    80001d0c:	00048513          	mv	a0,s1
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	c34080e7          	jalr	-972(ra) # 80001944 <_ZdlPv>
}
    80001d18:	00090513          	mv	a0,s2
    80001d1c:	01813083          	ld	ra,24(sp)
    80001d20:	01013403          	ld	s0,16(sp)
    80001d24:	00813483          	ld	s1,8(sp)
    80001d28:	00013903          	ld	s2,0(sp)
    80001d2c:	02010113          	addi	sp,sp,32
    80001d30:	00008067          	ret
            __print_string("help1\n");
    80001d34:	00004517          	auipc	a0,0x4
    80001d38:	3bc50513          	addi	a0,a0,956 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	1c8080e7          	jalr	456(ra) # 80001f04 <_Z14__print_stringPKc>
            return 0;
    80001d44:	00048913          	mv	s2,s1
    80001d48:	fd1ff06f          	j	80001d18 <_ZN9Scheduler3getEv+0x44>
        if (!head) { tail = 0; }
    80001d4c:	00005797          	auipc	a5,0x5
    80001d50:	5c07be23          	sd	zero,1500(a5) # 80007328 <_ZN9Scheduler10readyQueueE+0x8>
    80001d54:	fb5ff06f          	j	80001d08 <_ZN9Scheduler3getEv+0x34>

0000000080001d58 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80001d58:	fe010113          	addi	sp,sp,-32
    80001d5c:	00113c23          	sd	ra,24(sp)
    80001d60:	00813823          	sd	s0,16(sp)
    80001d64:	00913423          	sd	s1,8(sp)
    80001d68:	01213023          	sd	s2,0(sp)
    80001d6c:	02010413          	addi	s0,sp,32
    80001d70:	00050913          	mv	s2,a0
        Elem *elem = new Elem(data, 0);
    80001d74:	01000513          	li	a0,16
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	b7c080e7          	jalr	-1156(ra) # 800018f4 <_Znwm>
    80001d80:	00050493          	mv	s1,a0
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001d84:	01253023          	sd	s2,0(a0)
    80001d88:	00053423          	sd	zero,8(a0)
        if (tail)
    80001d8c:	00005797          	auipc	a5,0x5
    80001d90:	59c7b783          	ld	a5,1436(a5) # 80007328 <_ZN9Scheduler10readyQueueE+0x8>
    80001d94:	02078463          	beqz	a5,80001dbc <_ZN9Scheduler3putEP3TCB+0x64>
            tail->next = elem;
    80001d98:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001d9c:	00005797          	auipc	a5,0x5
    80001da0:	58a7b623          	sd	a0,1420(a5) # 80007328 <_ZN9Scheduler10readyQueueE+0x8>
    80001da4:	01813083          	ld	ra,24(sp)
    80001da8:	01013403          	ld	s0,16(sp)
    80001dac:	00813483          	ld	s1,8(sp)
    80001db0:	00013903          	ld	s2,0(sp)
    80001db4:	02010113          	addi	sp,sp,32
    80001db8:	00008067          	ret
            __print_string("help2\n");
    80001dbc:	00004517          	auipc	a0,0x4
    80001dc0:	33c50513          	addi	a0,a0,828 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	140080e7          	jalr	320(ra) # 80001f04 <_Z14__print_stringPKc>
            head = tail = elem;
    80001dcc:	00005797          	auipc	a5,0x5
    80001dd0:	55478793          	addi	a5,a5,1364 # 80007320 <_ZN9Scheduler10readyQueueE>
    80001dd4:	0097b423          	sd	s1,8(a5)
    80001dd8:	0097b023          	sd	s1,0(a5)
    80001ddc:	fc9ff06f          	j	80001da4 <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080001de0 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	00813023          	sd	s0,0(sp)
    80001dec:	01010413          	addi	s0,sp,16
    80001df0:	000105b7          	lui	a1,0x10
    80001df4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001df8:	00100513          	li	a0,1
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	e98080e7          	jalr	-360(ra) # 80001c94 <_Z41__static_initialization_and_destruction_0ii>
    80001e04:	00813083          	ld	ra,8(sp)
    80001e08:	00013403          	ld	s0,0(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN14PeriodicThreadC1Em>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

PeriodicThread::PeriodicThread(time_t period) {
    80001e14:	fe010113          	addi	sp,sp,-32
    80001e18:	00113c23          	sd	ra,24(sp)
    80001e1c:	00813823          	sd	s0,16(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	02010413          	addi	s0,sp,32
    80001e28:	00050493          	mv	s1,a0
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	334080e7          	jalr	820(ra) # 80002160 <_ZN6ThreadC1Ev>
    80001e34:	00005797          	auipc	a5,0x5
    80001e38:	3f478793          	addi	a5,a5,1012 # 80007228 <_ZTV14PeriodicThread+0x10>
    80001e3c:	00f4b023          	sd	a5,0(s1)

    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret

0000000080001e54 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00813423          	sd	s0,8(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    80001e60:	00813403          	ld	s0,8(sp)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00813423          	sd	s0,8(sp)
    80001e74:	01010413          	addi	s0,sp,16
    80001e78:	00813403          	ld	s0,8(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
    80001e94:	00005797          	auipc	a5,0x5
    80001e98:	39478793          	addi	a5,a5,916 # 80007228 <_ZTV14PeriodicThread+0x10>
    80001e9c:	00f53023          	sd	a5,0(a0)
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	20c080e7          	jalr	524(ra) # 800020ac <_ZN6ThreadD1Ev>
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN14PeriodicThreadD0Ev>:
    80001eb8:	fe010113          	addi	sp,sp,-32
    80001ebc:	00113c23          	sd	ra,24(sp)
    80001ec0:	00813823          	sd	s0,16(sp)
    80001ec4:	00913423          	sd	s1,8(sp)
    80001ec8:	02010413          	addi	s0,sp,32
    80001ecc:	00050493          	mv	s1,a0
    80001ed0:	00005797          	auipc	a5,0x5
    80001ed4:	35878793          	addi	a5,a5,856 # 80007228 <_ZTV14PeriodicThread+0x10>
    80001ed8:	00f53023          	sd	a5,0(a0)
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	1d0080e7          	jalr	464(ra) # 800020ac <_ZN6ThreadD1Ev>
    80001ee4:	00048513          	mv	a0,s1
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	a5c080e7          	jalr	-1444(ra) # 80001944 <_ZdlPv>
    80001ef0:	01813083          	ld	ra,24(sp)
    80001ef4:	01013403          	ld	s0,16(sp)
    80001ef8:	00813483          	ld	s1,8(sp)
    80001efc:	02010113          	addi	sp,sp,32
    80001f00:	00008067          	ret

0000000080001f04 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    80001f04:	fe010113          	addi	sp,sp,-32
    80001f08:	00113c23          	sd	ra,24(sp)
    80001f0c:	00813823          	sd	s0,16(sp)
    80001f10:	00913423          	sd	s1,8(sp)
    80001f14:	02010413          	addi	s0,sp,32
    80001f18:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80001f1c:	0004c503          	lbu	a0,0(s1)
    80001f20:	00050a63          	beqz	a0,80001f34 <_Z14__print_stringPKc+0x30>
    80001f24:	00003097          	auipc	ra,0x3
    80001f28:	338080e7          	jalr	824(ra) # 8000525c <__putc>
    80001f2c:	00148493          	addi	s1,s1,1
    80001f30:	fedff06f          	j	80001f1c <_Z14__print_stringPKc+0x18>
}
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	02010113          	addi	sp,sp,32
    80001f44:	00008067          	ret

0000000080001f48 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80001f48:	fc010113          	addi	sp,sp,-64
    80001f4c:	02113c23          	sd	ra,56(sp)
    80001f50:	02813823          	sd	s0,48(sp)
    80001f54:	02913423          	sd	s1,40(sp)
    80001f58:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80001f5c:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80001f60:	00a00693          	li	a3,10
    80001f64:	02d57633          	remu	a2,a0,a3
    80001f68:	00004717          	auipc	a4,0x4
    80001f6c:	19870713          	addi	a4,a4,408 # 80006100 <_ZZ14__print_uint64mE6digits>
    80001f70:	00c70733          	add	a4,a4,a2
    80001f74:	00074703          	lbu	a4,0(a4)
    80001f78:	fe040613          	addi	a2,s0,-32
    80001f7c:	009607b3          	add	a5,a2,s1
    80001f80:	0014849b          	addiw	s1,s1,1
    80001f84:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80001f88:	00050713          	mv	a4,a0
    80001f8c:	02d55533          	divu	a0,a0,a3
    80001f90:	00900793          	li	a5,9
    80001f94:	fce7e6e3          	bltu	a5,a4,80001f60 <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    80001f98:	fff4849b          	addiw	s1,s1,-1
    80001f9c:	0004ce63          	bltz	s1,80001fb8 <_Z14__print_uint64m+0x70>
    80001fa0:	fe040793          	addi	a5,s0,-32
    80001fa4:	009787b3          	add	a5,a5,s1
    80001fa8:	fe87c503          	lbu	a0,-24(a5)
    80001fac:	00003097          	auipc	ra,0x3
    80001fb0:	2b0080e7          	jalr	688(ra) # 8000525c <__putc>
    80001fb4:	fe5ff06f          	j	80001f98 <_Z14__print_uint64m+0x50>
}
    80001fb8:	03813083          	ld	ra,56(sp)
    80001fbc:	03013403          	ld	s0,48(sp)
    80001fc0:	02813483          	ld	s1,40(sp)
    80001fc4:	04010113          	addi	sp,sp,64
    80001fc8:	00008067          	ret

0000000080001fcc <_Z11__print_intx>:

void __print_int(long long int integer) {
    80001fcc:	fe010113          	addi	sp,sp,-32
    80001fd0:	00113c23          	sd	ra,24(sp)
    80001fd4:	00813823          	sd	s0,16(sp)
    80001fd8:	00913423          	sd	s1,8(sp)
    80001fdc:	02010413          	addi	s0,sp,32
    80001fe0:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    80001fe4:	02054263          	bltz	a0,80002008 <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80001fe8:	00048513          	mv	a0,s1
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	f5c080e7          	jalr	-164(ra) # 80001f48 <_Z14__print_uint64m>
}
    80001ff4:	01813083          	ld	ra,24(sp)
    80001ff8:	01013403          	ld	s0,16(sp)
    80001ffc:	00813483          	ld	s1,8(sp)
    80002000:	02010113          	addi	sp,sp,32
    80002004:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    80002008:	02d00513          	li	a0,45
    8000200c:	00003097          	auipc	ra,0x3
    80002010:	250080e7          	jalr	592(ra) # 8000525c <__putc>
    80002014:	409004b3          	neg	s1,s1
    80002018:	fd1ff06f          	j	80001fe8 <_Z11__print_intx+0x1c>

000000008000201c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    8000201c:	fd010113          	addi	sp,sp,-48
    80002020:	02113423          	sd	ra,40(sp)
    80002024:	02813023          	sd	s0,32(sp)
    80002028:	00913c23          	sd	s1,24(sp)
    8000202c:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002030:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002034:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002038:	00a00613          	li	a2,10
    8000203c:	02c5773b          	remuw	a4,a0,a2
    80002040:	02071693          	slli	a3,a4,0x20
    80002044:	0206d693          	srli	a3,a3,0x20
    80002048:	00004717          	auipc	a4,0x4
    8000204c:	0b870713          	addi	a4,a4,184 # 80006100 <_ZZ14__print_uint64mE6digits>
    80002050:	00d70733          	add	a4,a4,a3
    80002054:	01074703          	lbu	a4,16(a4)
    80002058:	fe040693          	addi	a3,s0,-32
    8000205c:	009687b3          	add	a5,a3,s1
    80002060:	0014849b          	addiw	s1,s1,1
    80002064:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002068:	0005071b          	sext.w	a4,a0
    8000206c:	02c5553b          	divuw	a0,a0,a2
    80002070:	00900793          	li	a5,9
    80002074:	fce7e2e3          	bltu	a5,a4,80002038 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002078:	fff4849b          	addiw	s1,s1,-1
    8000207c:	0004ce63          	bltz	s1,80002098 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002080:	fe040793          	addi	a5,s0,-32
    80002084:	009787b3          	add	a5,a5,s1
    80002088:	ff07c503          	lbu	a0,-16(a5)
    8000208c:	00003097          	auipc	ra,0x3
    80002090:	1d0080e7          	jalr	464(ra) # 8000525c <__putc>
    80002094:	fe5ff06f          	j	80002078 <_Z12printIntegerm+0x5c>
}
    80002098:	02813083          	ld	ra,40(sp)
    8000209c:	02013403          	ld	s0,32(sp)
    800020a0:	01813483          	ld	s1,24(sp)
    800020a4:	03010113          	addi	sp,sp,48
    800020a8:	00008067          	ret

00000000800020ac <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00813423          	sd	s0,8(sp)
    800020b4:	01010413          	addi	s0,sp,16

}
    800020b8:	00813403          	ld	s0,8(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00113423          	sd	ra,8(sp)
    800020cc:	00813023          	sd	s0,0(sp)
    800020d0:	01010413          	addi	s0,sp,16
}
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	870080e7          	jalr	-1936(ra) # 80001944 <_ZdlPv>
    800020dc:	00813083          	ld	ra,8(sp)
    800020e0:	00013403          	ld	s0,0(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00813423          	sd	s0,8(sp)
    800020f4:	01010413          	addi	s0,sp,16
    800020f8:	00005797          	auipc	a5,0x5
    800020fc:	16078793          	addi	a5,a5,352 # 80007258 <_ZTV6Thread+0x10>
    80002100:	00f53023          	sd	a5,0(a0)
}
    80002104:	00813403          	ld	s0,8(sp)
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret

0000000080002110 <_ZN6Thread5startEv>:

int Thread::start() {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16
    return 0;
}
    8000211c:	00000513          	li	a0,0
    80002120:	00813403          	ld	s0,8(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16

}
    80002138:	00813403          	ld	s0,8(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    return 0;
}
    80002150:	00000513          	li	a0,0
    80002154:	00813403          	ld	s0,8(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret

0000000080002160 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00813423          	sd	s0,8(sp)
    80002168:	01010413          	addi	s0,sp,16
    8000216c:	00005797          	auipc	a5,0x5
    80002170:	0ec78793          	addi	a5,a5,236 # 80007258 <_ZTV6Thread+0x10>
    80002174:	00f53023          	sd	a5,0(a0)

}
    80002178:	00813403          	ld	s0,8(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002184:	fe010113          	addi	sp,sp,-32
    80002188:	00113c23          	sd	ra,24(sp)
    8000218c:	00813823          	sd	s0,16(sp)
    80002190:	00913423          	sd	s1,8(sp)
    80002194:	02010413          	addi	s0,sp,32
    80002198:	00050493          	mv	s1,a0
    LOCK();
    8000219c:	00100613          	li	a2,1
    800021a0:	00000593          	li	a1,0
    800021a4:	00005517          	auipc	a0,0x5
    800021a8:	18c50513          	addi	a0,a0,396 # 80007330 <lockPrint>
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	0b8080e7          	jalr	184(ra) # 80001264 <copy_and_swap>
    800021b4:	fe0514e3          	bnez	a0,8000219c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800021b8:	0004c503          	lbu	a0,0(s1)
    800021bc:	00050a63          	beqz	a0,800021d0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	178080e7          	jalr	376(ra) # 80001338 <_Z4putcc>
        string++;
    800021c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021cc:	fedff06f          	j	800021b8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800021d0:	00000613          	li	a2,0
    800021d4:	00100593          	li	a1,1
    800021d8:	00005517          	auipc	a0,0x5
    800021dc:	15850513          	addi	a0,a0,344 # 80007330 <lockPrint>
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	084080e7          	jalr	132(ra) # 80001264 <copy_and_swap>
    800021e8:	fe0514e3          	bnez	a0,800021d0 <_Z11printStringPKc+0x4c>
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret

0000000080002200 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002200:	fd010113          	addi	sp,sp,-48
    80002204:	02113423          	sd	ra,40(sp)
    80002208:	02813023          	sd	s0,32(sp)
    8000220c:	00913c23          	sd	s1,24(sp)
    80002210:	01213823          	sd	s2,16(sp)
    80002214:	01313423          	sd	s3,8(sp)
    80002218:	01413023          	sd	s4,0(sp)
    8000221c:	03010413          	addi	s0,sp,48
    80002220:	00050993          	mv	s3,a0
    80002224:	00058a13          	mv	s4,a1
    LOCK();
    80002228:	00100613          	li	a2,1
    8000222c:	00000593          	li	a1,0
    80002230:	00005517          	auipc	a0,0x5
    80002234:	10050513          	addi	a0,a0,256 # 80007330 <lockPrint>
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	02c080e7          	jalr	44(ra) # 80001264 <copy_and_swap>
    80002240:	fe0514e3          	bnez	a0,80002228 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002244:	00000913          	li	s2,0
    80002248:	00090493          	mv	s1,s2
    8000224c:	0019091b          	addiw	s2,s2,1
    80002250:	03495a63          	bge	s2,s4,80002284 <_Z9getStringPci+0x84>
        cc = getc();
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	0bc080e7          	jalr	188(ra) # 80001310 <_Z4getcv>
        if(cc < 1)
    8000225c:	02050463          	beqz	a0,80002284 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002260:	009984b3          	add	s1,s3,s1
    80002264:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002268:	00a00793          	li	a5,10
    8000226c:	00f50a63          	beq	a0,a5,80002280 <_Z9getStringPci+0x80>
    80002270:	00d00793          	li	a5,13
    80002274:	fcf51ae3          	bne	a0,a5,80002248 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002278:	00090493          	mv	s1,s2
    8000227c:	0080006f          	j	80002284 <_Z9getStringPci+0x84>
    80002280:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002284:	009984b3          	add	s1,s3,s1
    80002288:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000228c:	00000613          	li	a2,0
    80002290:	00100593          	li	a1,1
    80002294:	00005517          	auipc	a0,0x5
    80002298:	09c50513          	addi	a0,a0,156 # 80007330 <lockPrint>
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	fc8080e7          	jalr	-56(ra) # 80001264 <copy_and_swap>
    800022a4:	fe0514e3          	bnez	a0,8000228c <_Z9getStringPci+0x8c>
    return buf;
}
    800022a8:	00098513          	mv	a0,s3
    800022ac:	02813083          	ld	ra,40(sp)
    800022b0:	02013403          	ld	s0,32(sp)
    800022b4:	01813483          	ld	s1,24(sp)
    800022b8:	01013903          	ld	s2,16(sp)
    800022bc:	00813983          	ld	s3,8(sp)
    800022c0:	00013a03          	ld	s4,0(sp)
    800022c4:	03010113          	addi	sp,sp,48
    800022c8:	00008067          	ret

00000000800022cc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    800022d8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800022dc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800022e0:	0006c603          	lbu	a2,0(a3)
    800022e4:	fd06071b          	addiw	a4,a2,-48
    800022e8:	0ff77713          	andi	a4,a4,255
    800022ec:	00900793          	li	a5,9
    800022f0:	02e7e063          	bltu	a5,a4,80002310 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800022f4:	0025179b          	slliw	a5,a0,0x2
    800022f8:	00a787bb          	addw	a5,a5,a0
    800022fc:	0017979b          	slliw	a5,a5,0x1
    80002300:	00168693          	addi	a3,a3,1
    80002304:	00c787bb          	addw	a5,a5,a2
    80002308:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000230c:	fd5ff06f          	j	800022e0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000231c:	fc010113          	addi	sp,sp,-64
    80002320:	02113c23          	sd	ra,56(sp)
    80002324:	02813823          	sd	s0,48(sp)
    80002328:	02913423          	sd	s1,40(sp)
    8000232c:	03213023          	sd	s2,32(sp)
    80002330:	01313c23          	sd	s3,24(sp)
    80002334:	04010413          	addi	s0,sp,64
    80002338:	00050493          	mv	s1,a0
    8000233c:	00058913          	mv	s2,a1
    80002340:	00060993          	mv	s3,a2
    LOCK();
    80002344:	00100613          	li	a2,1
    80002348:	00000593          	li	a1,0
    8000234c:	00005517          	auipc	a0,0x5
    80002350:	fe450513          	addi	a0,a0,-28 # 80007330 <lockPrint>
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	f10080e7          	jalr	-240(ra) # 80001264 <copy_and_swap>
    8000235c:	fe0514e3          	bnez	a0,80002344 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002360:	00098463          	beqz	s3,80002368 <_Z8printIntiii+0x4c>
    80002364:	0804c463          	bltz	s1,800023ec <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002368:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000236c:	00000593          	li	a1,0
    }

    i = 0;
    80002370:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002374:	0009079b          	sext.w	a5,s2
    80002378:	0325773b          	remuw	a4,a0,s2
    8000237c:	00048613          	mv	a2,s1
    80002380:	0014849b          	addiw	s1,s1,1
    80002384:	02071693          	slli	a3,a4,0x20
    80002388:	0206d693          	srli	a3,a3,0x20
    8000238c:	00005717          	auipc	a4,0x5
    80002390:	ee470713          	addi	a4,a4,-284 # 80007270 <digits>
    80002394:	00d70733          	add	a4,a4,a3
    80002398:	00074683          	lbu	a3,0(a4)
    8000239c:	fd040713          	addi	a4,s0,-48
    800023a0:	00c70733          	add	a4,a4,a2
    800023a4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800023a8:	0005071b          	sext.w	a4,a0
    800023ac:	0325553b          	divuw	a0,a0,s2
    800023b0:	fcf772e3          	bgeu	a4,a5,80002374 <_Z8printIntiii+0x58>
    if(neg)
    800023b4:	00058c63          	beqz	a1,800023cc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800023b8:	fd040793          	addi	a5,s0,-48
    800023bc:	009784b3          	add	s1,a5,s1
    800023c0:	02d00793          	li	a5,45
    800023c4:	fef48823          	sb	a5,-16(s1)
    800023c8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800023cc:	fff4849b          	addiw	s1,s1,-1
    800023d0:	0204c463          	bltz	s1,800023f8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800023d4:	fd040793          	addi	a5,s0,-48
    800023d8:	009787b3          	add	a5,a5,s1
    800023dc:	ff07c503          	lbu	a0,-16(a5)
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	f58080e7          	jalr	-168(ra) # 80001338 <_Z4putcc>
    800023e8:	fe5ff06f          	j	800023cc <_Z8printIntiii+0xb0>
        x = -xx;
    800023ec:	4090053b          	negw	a0,s1
        neg = 1;
    800023f0:	00100593          	li	a1,1
        x = -xx;
    800023f4:	f7dff06f          	j	80002370 <_Z8printIntiii+0x54>

    UNLOCK();
    800023f8:	00000613          	li	a2,0
    800023fc:	00100593          	li	a1,1
    80002400:	00005517          	auipc	a0,0x5
    80002404:	f3050513          	addi	a0,a0,-208 # 80007330 <lockPrint>
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	e5c080e7          	jalr	-420(ra) # 80001264 <copy_and_swap>
    80002410:	fe0514e3          	bnez	a0,800023f8 <_Z8printIntiii+0xdc>
    80002414:	03813083          	ld	ra,56(sp)
    80002418:	03013403          	ld	s0,48(sp)
    8000241c:	02813483          	ld	s1,40(sp)
    80002420:	02013903          	ld	s2,32(sp)
    80002424:	01813983          	ld	s3,24(sp)
    80002428:	04010113          	addi	sp,sp,64
    8000242c:	00008067          	ret

0000000080002430 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002430:	fd010113          	addi	sp,sp,-48
    80002434:	02113423          	sd	ra,40(sp)
    80002438:	02813023          	sd	s0,32(sp)
    8000243c:	00913c23          	sd	s1,24(sp)
    80002440:	01213823          	sd	s2,16(sp)
    80002444:	01313423          	sd	s3,8(sp)
    80002448:	03010413          	addi	s0,sp,48
    8000244c:	00050493          	mv	s1,a0
    80002450:	00058913          	mv	s2,a1
    80002454:	0015879b          	addiw	a5,a1,1
    80002458:	0007851b          	sext.w	a0,a5
    8000245c:	00f4a023          	sw	a5,0(s1)
    80002460:	0004a823          	sw	zero,16(s1)
    80002464:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002468:	00251513          	slli	a0,a0,0x2
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	b94080e7          	jalr	-1132(ra) # 80001000 <mem_alloc>
    80002474:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002478:	01000513          	li	a0,16
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	478080e7          	jalr	1144(ra) # 800018f4 <_Znwm>
    80002484:	00050993          	mv	s3,a0
    80002488:	00000593          	li	a1,0
    8000248c:	fffff097          	auipc	ra,0xfffff
    80002490:	1bc080e7          	jalr	444(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    80002494:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002498:	01000513          	li	a0,16
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	458080e7          	jalr	1112(ra) # 800018f4 <_Znwm>
    800024a4:	00050993          	mv	s3,a0
    800024a8:	00090593          	mv	a1,s2
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	19c080e7          	jalr	412(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    800024b4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800024b8:	01000513          	li	a0,16
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	438080e7          	jalr	1080(ra) # 800018f4 <_Znwm>
    800024c4:	00050913          	mv	s2,a0
    800024c8:	00100593          	li	a1,1
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	17c080e7          	jalr	380(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    800024d4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800024d8:	01000513          	li	a0,16
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	418080e7          	jalr	1048(ra) # 800018f4 <_Znwm>
    800024e4:	00050913          	mv	s2,a0
    800024e8:	00100593          	li	a1,1
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	15c080e7          	jalr	348(ra) # 80001648 <_ZN9SemaphoreC1Ej>
    800024f4:	0324b823          	sd	s2,48(s1)
}
    800024f8:	02813083          	ld	ra,40(sp)
    800024fc:	02013403          	ld	s0,32(sp)
    80002500:	01813483          	ld	s1,24(sp)
    80002504:	01013903          	ld	s2,16(sp)
    80002508:	00813983          	ld	s3,8(sp)
    8000250c:	03010113          	addi	sp,sp,48
    80002510:	00008067          	ret
    80002514:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002518:	00098513          	mv	a0,s3
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	428080e7          	jalr	1064(ra) # 80001944 <_ZdlPv>
    80002524:	00048513          	mv	a0,s1
    80002528:	00006097          	auipc	ra,0x6
    8000252c:	ee0080e7          	jalr	-288(ra) # 80008408 <_Unwind_Resume>
    80002530:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002534:	00098513          	mv	a0,s3
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	40c080e7          	jalr	1036(ra) # 80001944 <_ZdlPv>
    80002540:	00048513          	mv	a0,s1
    80002544:	00006097          	auipc	ra,0x6
    80002548:	ec4080e7          	jalr	-316(ra) # 80008408 <_Unwind_Resume>
    8000254c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002550:	00090513          	mv	a0,s2
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	3f0080e7          	jalr	1008(ra) # 80001944 <_ZdlPv>
    8000255c:	00048513          	mv	a0,s1
    80002560:	00006097          	auipc	ra,0x6
    80002564:	ea8080e7          	jalr	-344(ra) # 80008408 <_Unwind_Resume>
    80002568:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000256c:	00090513          	mv	a0,s2
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	3d4080e7          	jalr	980(ra) # 80001944 <_ZdlPv>
    80002578:	00048513          	mv	a0,s1
    8000257c:	00006097          	auipc	ra,0x6
    80002580:	e8c080e7          	jalr	-372(ra) # 80008408 <_Unwind_Resume>

0000000080002584 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002584:	fe010113          	addi	sp,sp,-32
    80002588:	00113c23          	sd	ra,24(sp)
    8000258c:	00813823          	sd	s0,16(sp)
    80002590:	00913423          	sd	s1,8(sp)
    80002594:	01213023          	sd	s2,0(sp)
    80002598:	02010413          	addi	s0,sp,32
    8000259c:	00050493          	mv	s1,a0
    800025a0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800025a4:	01853503          	ld	a0,24(a0)
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	0c4080e7          	jalr	196(ra) # 8000166c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800025b0:	0304b503          	ld	a0,48(s1)
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	0b8080e7          	jalr	184(ra) # 8000166c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800025bc:	0084b783          	ld	a5,8(s1)
    800025c0:	0144a703          	lw	a4,20(s1)
    800025c4:	00271713          	slli	a4,a4,0x2
    800025c8:	00e787b3          	add	a5,a5,a4
    800025cc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800025d0:	0144a783          	lw	a5,20(s1)
    800025d4:	0017879b          	addiw	a5,a5,1
    800025d8:	0004a703          	lw	a4,0(s1)
    800025dc:	02e7e7bb          	remw	a5,a5,a4
    800025e0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800025e4:	0304b503          	ld	a0,48(s1)
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	0a0080e7          	jalr	160(ra) # 80001688 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800025f0:	0204b503          	ld	a0,32(s1)
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	094080e7          	jalr	148(ra) # 80001688 <_ZN9Semaphore6signalEv>

}
    800025fc:	01813083          	ld	ra,24(sp)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	00813483          	ld	s1,8(sp)
    80002608:	00013903          	ld	s2,0(sp)
    8000260c:	02010113          	addi	sp,sp,32
    80002610:	00008067          	ret

0000000080002614 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	00813823          	sd	s0,16(sp)
    80002620:	00913423          	sd	s1,8(sp)
    80002624:	01213023          	sd	s2,0(sp)
    80002628:	02010413          	addi	s0,sp,32
    8000262c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002630:	02053503          	ld	a0,32(a0)
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	038080e7          	jalr	56(ra) # 8000166c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000263c:	0284b503          	ld	a0,40(s1)
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	02c080e7          	jalr	44(ra) # 8000166c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002648:	0084b703          	ld	a4,8(s1)
    8000264c:	0104a783          	lw	a5,16(s1)
    80002650:	00279693          	slli	a3,a5,0x2
    80002654:	00d70733          	add	a4,a4,a3
    80002658:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000265c:	0017879b          	addiw	a5,a5,1
    80002660:	0004a703          	lw	a4,0(s1)
    80002664:	02e7e7bb          	remw	a5,a5,a4
    80002668:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000266c:	0284b503          	ld	a0,40(s1)
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	018080e7          	jalr	24(ra) # 80001688 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002678:	0184b503          	ld	a0,24(s1)
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	00c080e7          	jalr	12(ra) # 80001688 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002684:	00090513          	mv	a0,s2
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	00013903          	ld	s2,0(sp)
    80002698:	02010113          	addi	sp,sp,32
    8000269c:	00008067          	ret

00000000800026a0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800026a0:	fe010113          	addi	sp,sp,-32
    800026a4:	00113c23          	sd	ra,24(sp)
    800026a8:	00813823          	sd	s0,16(sp)
    800026ac:	00913423          	sd	s1,8(sp)
    800026b0:	01213023          	sd	s2,0(sp)
    800026b4:	02010413          	addi	s0,sp,32
    800026b8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800026bc:	02853503          	ld	a0,40(a0)
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	fac080e7          	jalr	-84(ra) # 8000166c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800026c8:	0304b503          	ld	a0,48(s1)
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	fa0080e7          	jalr	-96(ra) # 8000166c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800026d4:	0144a783          	lw	a5,20(s1)
    800026d8:	0104a903          	lw	s2,16(s1)
    800026dc:	0327ce63          	blt	a5,s2,80002718 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800026e0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800026e4:	0304b503          	ld	a0,48(s1)
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	fa0080e7          	jalr	-96(ra) # 80001688 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800026f0:	0284b503          	ld	a0,40(s1)
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	f94080e7          	jalr	-108(ra) # 80001688 <_ZN9Semaphore6signalEv>

    return ret;
}
    800026fc:	00090513          	mv	a0,s2
    80002700:	01813083          	ld	ra,24(sp)
    80002704:	01013403          	ld	s0,16(sp)
    80002708:	00813483          	ld	s1,8(sp)
    8000270c:	00013903          	ld	s2,0(sp)
    80002710:	02010113          	addi	sp,sp,32
    80002714:	00008067          	ret
        ret = cap - head + tail;
    80002718:	0004a703          	lw	a4,0(s1)
    8000271c:	4127093b          	subw	s2,a4,s2
    80002720:	00f9093b          	addw	s2,s2,a5
    80002724:	fc1ff06f          	j	800026e4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002728 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002728:	fe010113          	addi	sp,sp,-32
    8000272c:	00113c23          	sd	ra,24(sp)
    80002730:	00813823          	sd	s0,16(sp)
    80002734:	00913423          	sd	s1,8(sp)
    80002738:	02010413          	addi	s0,sp,32
    8000273c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002740:	00a00513          	li	a0,10
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	020080e7          	jalr	32(ra) # 80001764 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000274c:	00004517          	auipc	a0,0x4
    80002750:	9d450513          	addi	a0,a0,-1580 # 80006120 <_ZZ12printIntegermE6digits+0x10>
    80002754:	00000097          	auipc	ra,0x0
    80002758:	a30080e7          	jalr	-1488(ra) # 80002184 <_Z11printStringPKc>
    while (getCnt()) {
    8000275c:	00048513          	mv	a0,s1
    80002760:	00000097          	auipc	ra,0x0
    80002764:	f40080e7          	jalr	-192(ra) # 800026a0 <_ZN9BufferCPP6getCntEv>
    80002768:	02050c63          	beqz	a0,800027a0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000276c:	0084b783          	ld	a5,8(s1)
    80002770:	0104a703          	lw	a4,16(s1)
    80002774:	00271713          	slli	a4,a4,0x2
    80002778:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000277c:	0007c503          	lbu	a0,0(a5)
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	fe4080e7          	jalr	-28(ra) # 80001764 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002788:	0104a783          	lw	a5,16(s1)
    8000278c:	0017879b          	addiw	a5,a5,1
    80002790:	0004a703          	lw	a4,0(s1)
    80002794:	02e7e7bb          	remw	a5,a5,a4
    80002798:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000279c:	fc1ff06f          	j	8000275c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800027a0:	02100513          	li	a0,33
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	fc0080e7          	jalr	-64(ra) # 80001764 <_ZN7Console4putcEc>
    Console::putc('\n');
    800027ac:	00a00513          	li	a0,10
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	fb4080e7          	jalr	-76(ra) # 80001764 <_ZN7Console4putcEc>
    mem_free(buffer);
    800027b8:	0084b503          	ld	a0,8(s1)
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	850080e7          	jalr	-1968(ra) # 8000100c <mem_free>
    delete itemAvailable;
    800027c4:	0204b503          	ld	a0,32(s1)
    800027c8:	00050863          	beqz	a0,800027d8 <_ZN9BufferCPPD1Ev+0xb0>
    800027cc:	00053783          	ld	a5,0(a0)
    800027d0:	0087b783          	ld	a5,8(a5)
    800027d4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800027d8:	0184b503          	ld	a0,24(s1)
    800027dc:	00050863          	beqz	a0,800027ec <_ZN9BufferCPPD1Ev+0xc4>
    800027e0:	00053783          	ld	a5,0(a0)
    800027e4:	0087b783          	ld	a5,8(a5)
    800027e8:	000780e7          	jalr	a5
    delete mutexTail;
    800027ec:	0304b503          	ld	a0,48(s1)
    800027f0:	00050863          	beqz	a0,80002800 <_ZN9BufferCPPD1Ev+0xd8>
    800027f4:	00053783          	ld	a5,0(a0)
    800027f8:	0087b783          	ld	a5,8(a5)
    800027fc:	000780e7          	jalr	a5
    delete mutexHead;
    80002800:	0284b503          	ld	a0,40(s1)
    80002804:	00050863          	beqz	a0,80002814 <_ZN9BufferCPPD1Ev+0xec>
    80002808:	00053783          	ld	a5,0(a0)
    8000280c:	0087b783          	ld	a5,8(a5)
    80002810:	000780e7          	jalr	a5
}
    80002814:	01813083          	ld	ra,24(sp)
    80002818:	01013403          	ld	s0,16(sp)
    8000281c:	00813483          	ld	s1,8(sp)
    80002820:	02010113          	addi	sp,sp,32
    80002824:	00008067          	ret

0000000080002828 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80002828:	fe010113          	addi	sp,sp,-32
    8000282c:	00113c23          	sd	ra,24(sp)
    80002830:	00813823          	sd	s0,16(sp)
    80002834:	00913423          	sd	s1,8(sp)
    80002838:	01213023          	sd	s2,0(sp)
    8000283c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002840:	00000913          	li	s2,0
    80002844:	0380006f          	j	8000287c <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002848:	ffffe097          	auipc	ra,0xffffe
    8000284c:	7e8080e7          	jalr	2024(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80002850:	00148493          	addi	s1,s1,1
    80002854:	000027b7          	lui	a5,0x2
    80002858:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000285c:	0097ee63          	bltu	a5,s1,80002878 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002860:	00000713          	li	a4,0
    80002864:	000077b7          	lui	a5,0x7
    80002868:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000286c:	fce7eee3          	bltu	a5,a4,80002848 <_Z11workerBodyAPv+0x20>
    80002870:	00170713          	addi	a4,a4,1
    80002874:	ff1ff06f          	j	80002864 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002878:	00190913          	addi	s2,s2,1
    8000287c:	00900793          	li	a5,9
    80002880:	0527e063          	bltu	a5,s2,800028c0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002884:	00004517          	auipc	a0,0x4
    80002888:	8b450513          	addi	a0,a0,-1868 # 80006138 <_ZZ12printIntegermE6digits+0x28>
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	8f8080e7          	jalr	-1800(ra) # 80002184 <_Z11printStringPKc>
    80002894:	00000613          	li	a2,0
    80002898:	00a00593          	li	a1,10
    8000289c:	0009051b          	sext.w	a0,s2
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	a7c080e7          	jalr	-1412(ra) # 8000231c <_Z8printIntiii>
    800028a8:	00004517          	auipc	a0,0x4
    800028ac:	9b850513          	addi	a0,a0,-1608 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	8d4080e7          	jalr	-1836(ra) # 80002184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800028b8:	00000493          	li	s1,0
    800028bc:	f99ff06f          	j	80002854 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800028c0:	00004517          	auipc	a0,0x4
    800028c4:	88050513          	addi	a0,a0,-1920 # 80006140 <_ZZ12printIntegermE6digits+0x30>
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	8bc080e7          	jalr	-1860(ra) # 80002184 <_Z11printStringPKc>
    finishedA = true;
    800028d0:	00100793          	li	a5,1
    800028d4:	00005717          	auipc	a4,0x5
    800028d8:	a6f70223          	sb	a5,-1436(a4) # 80007338 <finishedA>
}
    800028dc:	01813083          	ld	ra,24(sp)
    800028e0:	01013403          	ld	s0,16(sp)
    800028e4:	00813483          	ld	s1,8(sp)
    800028e8:	00013903          	ld	s2,0(sp)
    800028ec:	02010113          	addi	sp,sp,32
    800028f0:	00008067          	ret

00000000800028f4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800028f4:	fe010113          	addi	sp,sp,-32
    800028f8:	00113c23          	sd	ra,24(sp)
    800028fc:	00813823          	sd	s0,16(sp)
    80002900:	00913423          	sd	s1,8(sp)
    80002904:	01213023          	sd	s2,0(sp)
    80002908:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000290c:	00000913          	li	s2,0
    80002910:	0380006f          	j	80002948 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002914:	ffffe097          	auipc	ra,0xffffe
    80002918:	71c080e7          	jalr	1820(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000291c:	00148493          	addi	s1,s1,1
    80002920:	000027b7          	lui	a5,0x2
    80002924:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002928:	0097ee63          	bltu	a5,s1,80002944 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000292c:	00000713          	li	a4,0
    80002930:	000077b7          	lui	a5,0x7
    80002934:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002938:	fce7eee3          	bltu	a5,a4,80002914 <_Z11workerBodyBPv+0x20>
    8000293c:	00170713          	addi	a4,a4,1
    80002940:	ff1ff06f          	j	80002930 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002944:	00190913          	addi	s2,s2,1
    80002948:	00f00793          	li	a5,15
    8000294c:	0527e063          	bltu	a5,s2,8000298c <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002950:	00004517          	auipc	a0,0x4
    80002954:	80050513          	addi	a0,a0,-2048 # 80006150 <_ZZ12printIntegermE6digits+0x40>
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	82c080e7          	jalr	-2004(ra) # 80002184 <_Z11printStringPKc>
    80002960:	00000613          	li	a2,0
    80002964:	00a00593          	li	a1,10
    80002968:	0009051b          	sext.w	a0,s2
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	9b0080e7          	jalr	-1616(ra) # 8000231c <_Z8printIntiii>
    80002974:	00004517          	auipc	a0,0x4
    80002978:	8ec50513          	addi	a0,a0,-1812 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	808080e7          	jalr	-2040(ra) # 80002184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002984:	00000493          	li	s1,0
    80002988:	f99ff06f          	j	80002920 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000298c:	00003517          	auipc	a0,0x3
    80002990:	7cc50513          	addi	a0,a0,1996 # 80006158 <_ZZ12printIntegermE6digits+0x48>
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	7f0080e7          	jalr	2032(ra) # 80002184 <_Z11printStringPKc>
    finishedB = true;
    8000299c:	00100793          	li	a5,1
    800029a0:	00005717          	auipc	a4,0x5
    800029a4:	98f70ca3          	sb	a5,-1639(a4) # 80007339 <finishedB>
    thread_dispatch();
    800029a8:	ffffe097          	auipc	ra,0xffffe
    800029ac:	688080e7          	jalr	1672(ra) # 80001030 <thread_dispatch>
}
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	01013403          	ld	s0,16(sp)
    800029b8:	00813483          	ld	s1,8(sp)
    800029bc:	00013903          	ld	s2,0(sp)
    800029c0:	02010113          	addi	sp,sp,32
    800029c4:	00008067          	ret

00000000800029c8 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800029c8:	fe010113          	addi	sp,sp,-32
    800029cc:	00113c23          	sd	ra,24(sp)
    800029d0:	00813823          	sd	s0,16(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	01213023          	sd	s2,0(sp)
    800029dc:	02010413          	addi	s0,sp,32
    800029e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800029e4:	00100793          	li	a5,1
    800029e8:	02a7f863          	bgeu	a5,a0,80002a18 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800029ec:	00a00793          	li	a5,10
    800029f0:	02f577b3          	remu	a5,a0,a5
    800029f4:	02078e63          	beqz	a5,80002a30 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800029f8:	fff48513          	addi	a0,s1,-1
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	fcc080e7          	jalr	-52(ra) # 800029c8 <_Z9fibonaccim>
    80002a04:	00050913          	mv	s2,a0
    80002a08:	ffe48513          	addi	a0,s1,-2
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	fbc080e7          	jalr	-68(ra) # 800029c8 <_Z9fibonaccim>
    80002a14:	00a90533          	add	a0,s2,a0
}
    80002a18:	01813083          	ld	ra,24(sp)
    80002a1c:	01013403          	ld	s0,16(sp)
    80002a20:	00813483          	ld	s1,8(sp)
    80002a24:	00013903          	ld	s2,0(sp)
    80002a28:	02010113          	addi	sp,sp,32
    80002a2c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a30:	ffffe097          	auipc	ra,0xffffe
    80002a34:	600080e7          	jalr	1536(ra) # 80001030 <thread_dispatch>
    80002a38:	fc1ff06f          	j	800029f8 <_Z9fibonaccim+0x30>

0000000080002a3c <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80002a3c:	fe010113          	addi	sp,sp,-32
    80002a40:	00113c23          	sd	ra,24(sp)
    80002a44:	00813823          	sd	s0,16(sp)
    80002a48:	00913423          	sd	s1,8(sp)
    80002a4c:	01213023          	sd	s2,0(sp)
    80002a50:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002a54:	00000493          	li	s1,0
    80002a58:	0400006f          	j	80002a98 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002a5c:	00003517          	auipc	a0,0x3
    80002a60:	70c50513          	addi	a0,a0,1804 # 80006168 <_ZZ12printIntegermE6digits+0x58>
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	720080e7          	jalr	1824(ra) # 80002184 <_Z11printStringPKc>
    80002a6c:	00000613          	li	a2,0
    80002a70:	00a00593          	li	a1,10
    80002a74:	00048513          	mv	a0,s1
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	8a4080e7          	jalr	-1884(ra) # 8000231c <_Z8printIntiii>
    80002a80:	00003517          	auipc	a0,0x3
    80002a84:	7e050513          	addi	a0,a0,2016 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	6fc080e7          	jalr	1788(ra) # 80002184 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002a90:	0014849b          	addiw	s1,s1,1
    80002a94:	0ff4f493          	andi	s1,s1,255
    80002a98:	00200793          	li	a5,2
    80002a9c:	fc97f0e3          	bgeu	a5,s1,80002a5c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80002aa0:	00003517          	auipc	a0,0x3
    80002aa4:	6d050513          	addi	a0,a0,1744 # 80006170 <_ZZ12printIntegermE6digits+0x60>
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	6dc080e7          	jalr	1756(ra) # 80002184 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002ab0:	00700313          	li	t1,7
    thread_dispatch();
    80002ab4:	ffffe097          	auipc	ra,0xffffe
    80002ab8:	57c080e7          	jalr	1404(ra) # 80001030 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002abc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002ac0:	00003517          	auipc	a0,0x3
    80002ac4:	6c050513          	addi	a0,a0,1728 # 80006180 <_ZZ12printIntegermE6digits+0x70>
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	6bc080e7          	jalr	1724(ra) # 80002184 <_Z11printStringPKc>
    80002ad0:	00000613          	li	a2,0
    80002ad4:	00a00593          	li	a1,10
    80002ad8:	0009051b          	sext.w	a0,s2
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	840080e7          	jalr	-1984(ra) # 8000231c <_Z8printIntiii>
    80002ae4:	00003517          	auipc	a0,0x3
    80002ae8:	77c50513          	addi	a0,a0,1916 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	698080e7          	jalr	1688(ra) # 80002184 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002af4:	00c00513          	li	a0,12
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	ed0080e7          	jalr	-304(ra) # 800029c8 <_Z9fibonaccim>
    80002b00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b04:	00003517          	auipc	a0,0x3
    80002b08:	68450513          	addi	a0,a0,1668 # 80006188 <_ZZ12printIntegermE6digits+0x78>
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	678080e7          	jalr	1656(ra) # 80002184 <_Z11printStringPKc>
    80002b14:	00000613          	li	a2,0
    80002b18:	00a00593          	li	a1,10
    80002b1c:	0009051b          	sext.w	a0,s2
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	7fc080e7          	jalr	2044(ra) # 8000231c <_Z8printIntiii>
    80002b28:	00003517          	auipc	a0,0x3
    80002b2c:	73850513          	addi	a0,a0,1848 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	654080e7          	jalr	1620(ra) # 80002184 <_Z11printStringPKc>
    80002b38:	0400006f          	j	80002b78 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002b3c:	00003517          	auipc	a0,0x3
    80002b40:	62c50513          	addi	a0,a0,1580 # 80006168 <_ZZ12printIntegermE6digits+0x58>
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	640080e7          	jalr	1600(ra) # 80002184 <_Z11printStringPKc>
    80002b4c:	00000613          	li	a2,0
    80002b50:	00a00593          	li	a1,10
    80002b54:	00048513          	mv	a0,s1
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	7c4080e7          	jalr	1988(ra) # 8000231c <_Z8printIntiii>
    80002b60:	00003517          	auipc	a0,0x3
    80002b64:	70050513          	addi	a0,a0,1792 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	61c080e7          	jalr	1564(ra) # 80002184 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002b70:	0014849b          	addiw	s1,s1,1
    80002b74:	0ff4f493          	andi	s1,s1,255
    80002b78:	00500793          	li	a5,5
    80002b7c:	fc97f0e3          	bgeu	a5,s1,80002b3c <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80002b80:	00003517          	auipc	a0,0x3
    80002b84:	5c050513          	addi	a0,a0,1472 # 80006140 <_ZZ12printIntegermE6digits+0x30>
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	5fc080e7          	jalr	1532(ra) # 80002184 <_Z11printStringPKc>
    finishedC = true;
    80002b90:	00100793          	li	a5,1
    80002b94:	00004717          	auipc	a4,0x4
    80002b98:	7af70323          	sb	a5,1958(a4) # 8000733a <finishedC>
    thread_dispatch();
    80002b9c:	ffffe097          	auipc	ra,0xffffe
    80002ba0:	494080e7          	jalr	1172(ra) # 80001030 <thread_dispatch>
}
    80002ba4:	01813083          	ld	ra,24(sp)
    80002ba8:	01013403          	ld	s0,16(sp)
    80002bac:	00813483          	ld	s1,8(sp)
    80002bb0:	00013903          	ld	s2,0(sp)
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00008067          	ret

0000000080002bbc <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80002bbc:	fe010113          	addi	sp,sp,-32
    80002bc0:	00113c23          	sd	ra,24(sp)
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	01213023          	sd	s2,0(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002bd4:	00a00493          	li	s1,10
    80002bd8:	0400006f          	j	80002c18 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002bdc:	00003517          	auipc	a0,0x3
    80002be0:	5bc50513          	addi	a0,a0,1468 # 80006198 <_ZZ12printIntegermE6digits+0x88>
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	5a0080e7          	jalr	1440(ra) # 80002184 <_Z11printStringPKc>
    80002bec:	00000613          	li	a2,0
    80002bf0:	00a00593          	li	a1,10
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	fffff097          	auipc	ra,0xfffff
    80002bfc:	724080e7          	jalr	1828(ra) # 8000231c <_Z8printIntiii>
    80002c00:	00003517          	auipc	a0,0x3
    80002c04:	66050513          	addi	a0,a0,1632 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	57c080e7          	jalr	1404(ra) # 80002184 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002c10:	0014849b          	addiw	s1,s1,1
    80002c14:	0ff4f493          	andi	s1,s1,255
    80002c18:	00c00793          	li	a5,12
    80002c1c:	fc97f0e3          	bgeu	a5,s1,80002bdc <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002c20:	00003517          	auipc	a0,0x3
    80002c24:	58050513          	addi	a0,a0,1408 # 800061a0 <_ZZ12printIntegermE6digits+0x90>
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	55c080e7          	jalr	1372(ra) # 80002184 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002c30:	00500313          	li	t1,5
    thread_dispatch();
    80002c34:	ffffe097          	auipc	ra,0xffffe
    80002c38:	3fc080e7          	jalr	1020(ra) # 80001030 <thread_dispatch>

    uint64 result = fibonacci(16);
    80002c3c:	01000513          	li	a0,16
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	d88080e7          	jalr	-632(ra) # 800029c8 <_Z9fibonaccim>
    80002c48:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002c4c:	00003517          	auipc	a0,0x3
    80002c50:	56450513          	addi	a0,a0,1380 # 800061b0 <_ZZ12printIntegermE6digits+0xa0>
    80002c54:	fffff097          	auipc	ra,0xfffff
    80002c58:	530080e7          	jalr	1328(ra) # 80002184 <_Z11printStringPKc>
    80002c5c:	00000613          	li	a2,0
    80002c60:	00a00593          	li	a1,10
    80002c64:	0009051b          	sext.w	a0,s2
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	6b4080e7          	jalr	1716(ra) # 8000231c <_Z8printIntiii>
    80002c70:	00003517          	auipc	a0,0x3
    80002c74:	5f050513          	addi	a0,a0,1520 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	50c080e7          	jalr	1292(ra) # 80002184 <_Z11printStringPKc>
    80002c80:	0400006f          	j	80002cc0 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c84:	00003517          	auipc	a0,0x3
    80002c88:	51450513          	addi	a0,a0,1300 # 80006198 <_ZZ12printIntegermE6digits+0x88>
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	4f8080e7          	jalr	1272(ra) # 80002184 <_Z11printStringPKc>
    80002c94:	00000613          	li	a2,0
    80002c98:	00a00593          	li	a1,10
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	67c080e7          	jalr	1660(ra) # 8000231c <_Z8printIntiii>
    80002ca8:	00003517          	auipc	a0,0x3
    80002cac:	5b850513          	addi	a0,a0,1464 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	4d4080e7          	jalr	1236(ra) # 80002184 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002cb8:	0014849b          	addiw	s1,s1,1
    80002cbc:	0ff4f493          	andi	s1,s1,255
    80002cc0:	00f00793          	li	a5,15
    80002cc4:	fc97f0e3          	bgeu	a5,s1,80002c84 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002cc8:	00003517          	auipc	a0,0x3
    80002ccc:	4f850513          	addi	a0,a0,1272 # 800061c0 <_ZZ12printIntegermE6digits+0xb0>
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	4b4080e7          	jalr	1204(ra) # 80002184 <_Z11printStringPKc>
    finishedD = true;
    80002cd8:	00100793          	li	a5,1
    80002cdc:	00004717          	auipc	a4,0x4
    80002ce0:	64f70fa3          	sb	a5,1631(a4) # 8000733b <finishedD>
    thread_dispatch();
    80002ce4:	ffffe097          	auipc	ra,0xffffe
    80002ce8:	34c080e7          	jalr	844(ra) # 80001030 <thread_dispatch>
}
    80002cec:	01813083          	ld	ra,24(sp)
    80002cf0:	01013403          	ld	s0,16(sp)
    80002cf4:	00813483          	ld	s1,8(sp)
    80002cf8:	00013903          	ld	s2,0(sp)
    80002cfc:	02010113          	addi	sp,sp,32
    80002d00:	00008067          	ret

0000000080002d04 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002d04:	fd010113          	addi	sp,sp,-48
    80002d08:	02113423          	sd	ra,40(sp)
    80002d0c:	02813023          	sd	s0,32(sp)
    80002d10:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002d14:	00000613          	li	a2,0
    80002d18:	00000597          	auipc	a1,0x0
    80002d1c:	b1058593          	addi	a1,a1,-1264 # 80002828 <_Z11workerBodyAPv>
    80002d20:	fd040513          	addi	a0,s0,-48
    80002d24:	ffffe097          	auipc	ra,0xffffe
    80002d28:	2f4080e7          	jalr	756(ra) # 80001018 <thread_create>
    printString("ThreadA created\n");
    80002d2c:	00003517          	auipc	a0,0x3
    80002d30:	4a450513          	addi	a0,a0,1188 # 800061d0 <_ZZ12printIntegermE6digits+0xc0>
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	450080e7          	jalr	1104(ra) # 80002184 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002d3c:	00000613          	li	a2,0
    80002d40:	00000597          	auipc	a1,0x0
    80002d44:	bb458593          	addi	a1,a1,-1100 # 800028f4 <_Z11workerBodyBPv>
    80002d48:	fd840513          	addi	a0,s0,-40
    80002d4c:	ffffe097          	auipc	ra,0xffffe
    80002d50:	2cc080e7          	jalr	716(ra) # 80001018 <thread_create>
    printString("ThreadB created\n");
    80002d54:	00003517          	auipc	a0,0x3
    80002d58:	49450513          	addi	a0,a0,1172 # 800061e8 <_ZZ12printIntegermE6digits+0xd8>
    80002d5c:	fffff097          	auipc	ra,0xfffff
    80002d60:	428080e7          	jalr	1064(ra) # 80002184 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002d64:	00000613          	li	a2,0
    80002d68:	00000597          	auipc	a1,0x0
    80002d6c:	cd458593          	addi	a1,a1,-812 # 80002a3c <_Z11workerBodyCPv>
    80002d70:	fe040513          	addi	a0,s0,-32
    80002d74:	ffffe097          	auipc	ra,0xffffe
    80002d78:	2a4080e7          	jalr	676(ra) # 80001018 <thread_create>
    printString("ThreadC created\n");
    80002d7c:	00003517          	auipc	a0,0x3
    80002d80:	48450513          	addi	a0,a0,1156 # 80006200 <_ZZ12printIntegermE6digits+0xf0>
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	400080e7          	jalr	1024(ra) # 80002184 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002d8c:	00000613          	li	a2,0
    80002d90:	00000597          	auipc	a1,0x0
    80002d94:	e2c58593          	addi	a1,a1,-468 # 80002bbc <_Z11workerBodyDPv>
    80002d98:	fe840513          	addi	a0,s0,-24
    80002d9c:	ffffe097          	auipc	ra,0xffffe
    80002da0:	27c080e7          	jalr	636(ra) # 80001018 <thread_create>
    printString("ThreadD created\n");
    80002da4:	00003517          	auipc	a0,0x3
    80002da8:	47450513          	addi	a0,a0,1140 # 80006218 <_ZZ12printIntegermE6digits+0x108>
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	3d8080e7          	jalr	984(ra) # 80002184 <_Z11printStringPKc>
    80002db4:	00c0006f          	j	80002dc0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002db8:	ffffe097          	auipc	ra,0xffffe
    80002dbc:	278080e7          	jalr	632(ra) # 80001030 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002dc0:	00004797          	auipc	a5,0x4
    80002dc4:	5787c783          	lbu	a5,1400(a5) # 80007338 <finishedA>
    80002dc8:	fe0788e3          	beqz	a5,80002db8 <_Z18Threads_C_API_testv+0xb4>
    80002dcc:	00004797          	auipc	a5,0x4
    80002dd0:	56d7c783          	lbu	a5,1389(a5) # 80007339 <finishedB>
    80002dd4:	fe0782e3          	beqz	a5,80002db8 <_Z18Threads_C_API_testv+0xb4>
    80002dd8:	00004797          	auipc	a5,0x4
    80002ddc:	5627c783          	lbu	a5,1378(a5) # 8000733a <finishedC>
    80002de0:	fc078ce3          	beqz	a5,80002db8 <_Z18Threads_C_API_testv+0xb4>
    80002de4:	00004797          	auipc	a5,0x4
    80002de8:	5577c783          	lbu	a5,1367(a5) # 8000733b <finishedD>
    80002dec:	fc0786e3          	beqz	a5,80002db8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002df0:	02813083          	ld	ra,40(sp)
    80002df4:	02013403          	ld	s0,32(sp)
    80002df8:	03010113          	addi	sp,sp,48
    80002dfc:	00008067          	ret

0000000080002e00 <_Z8userMainv>:

#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"

void userMain() {
    80002e00:	ff010113          	addi	sp,sp,-16
    80002e04:	00113423          	sd	ra,8(sp)
    80002e08:	00813023          	sd	s0,0(sp)
    80002e0c:	01010413          	addi	s0,sp,16
    __print_string("I am here!\n");
    80002e10:	00003517          	auipc	a0,0x3
    80002e14:	42050513          	addi	a0,a0,1056 # 80006230 <_ZZ12printIntegermE6digits+0x120>
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	0ec080e7          	jalr	236(ra) # 80001f04 <_Z14__print_stringPKc>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    __print_string("I am here too!\n");
    80002e20:	00003517          	auipc	a0,0x3
    80002e24:	42050513          	addi	a0,a0,1056 # 80006240 <_ZZ12printIntegermE6digits+0x130>
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	0dc080e7          	jalr	220(ra) # 80001f04 <_Z14__print_stringPKc>
    thread_dispatch();
    80002e30:	ffffe097          	auipc	ra,0xffffe
    80002e34:	200080e7          	jalr	512(ra) # 80001030 <thread_dispatch>
    __print_string("I am here again!\n");
    80002e38:	00003517          	auipc	a0,0x3
    80002e3c:	41850513          	addi	a0,a0,1048 # 80006250 <_ZZ12printIntegermE6digits+0x140>
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	0c4080e7          	jalr	196(ra) # 80001f04 <_Z14__print_stringPKc>
    thread_exit();
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	1dc080e7          	jalr	476(ra) # 80001024 <thread_exit>
    TCB::running->setFinished(true);
    80002e50:	00004797          	auipc	a5,0x4
    80002e54:	4607b783          	ld	a5,1120(a5) # 800072b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e58:	0007b783          	ld	a5,0(a5)

    static TCB* createTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    80002e5c:	00100713          	li	a4,1
    80002e60:	00e78c23          	sb	a4,24(a5)
    thread_dispatch();
    80002e64:	ffffe097          	auipc	ra,0xffffe
    80002e68:	1cc080e7          	jalr	460(ra) # 80001030 <thread_dispatch>
    80002e6c:	00813083          	ld	ra,8(sp)
    80002e70:	00013403          	ld	s0,0(sp)
    80002e74:	01010113          	addi	sp,sp,16
    80002e78:	00008067          	ret

0000000080002e7c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00113c23          	sd	ra,24(sp)
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00913423          	sd	s1,8(sp)
    80002e8c:	01213023          	sd	s2,0(sp)
    80002e90:	02010413          	addi	s0,sp,32
    80002e94:	00050493          	mv	s1,a0
    80002e98:	00058913          	mv	s2,a1
    80002e9c:	0015879b          	addiw	a5,a1,1
    80002ea0:	0007851b          	sext.w	a0,a5
    80002ea4:	00f4a023          	sw	a5,0(s1)
    80002ea8:	0004a823          	sw	zero,16(s1)
    80002eac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002eb0:	00251513          	slli	a0,a0,0x2
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	14c080e7          	jalr	332(ra) # 80001000 <mem_alloc>
    80002ebc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002ec0:	00000593          	li	a1,0
    80002ec4:	02048513          	addi	a0,s1,32
    80002ec8:	ffffe097          	auipc	ra,0xffffe
    80002ecc:	3bc080e7          	jalr	956(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002ed0:	00090593          	mv	a1,s2
    80002ed4:	01848513          	addi	a0,s1,24
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	3ac080e7          	jalr	940(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002ee0:	00100593          	li	a1,1
    80002ee4:	02848513          	addi	a0,s1,40
    80002ee8:	ffffe097          	auipc	ra,0xffffe
    80002eec:	39c080e7          	jalr	924(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002ef0:	00100593          	li	a1,1
    80002ef4:	03048513          	addi	a0,s1,48
    80002ef8:	ffffe097          	auipc	ra,0xffffe
    80002efc:	38c080e7          	jalr	908(ra) # 80001284 <_Z8sem_openPP4_semj>
}
    80002f00:	01813083          	ld	ra,24(sp)
    80002f04:	01013403          	ld	s0,16(sp)
    80002f08:	00813483          	ld	s1,8(sp)
    80002f0c:	00013903          	ld	s2,0(sp)
    80002f10:	02010113          	addi	sp,sp,32
    80002f14:	00008067          	ret

0000000080002f18 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002f18:	fe010113          	addi	sp,sp,-32
    80002f1c:	00113c23          	sd	ra,24(sp)
    80002f20:	00813823          	sd	s0,16(sp)
    80002f24:	00913423          	sd	s1,8(sp)
    80002f28:	01213023          	sd	s2,0(sp)
    80002f2c:	02010413          	addi	s0,sp,32
    80002f30:	00050493          	mv	s1,a0
    80002f34:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002f38:	01853503          	ld	a0,24(a0)
    80002f3c:	ffffe097          	auipc	ra,0xffffe
    80002f40:	380080e7          	jalr	896(ra) # 800012bc <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80002f44:	0304b503          	ld	a0,48(s1)
    80002f48:	ffffe097          	auipc	ra,0xffffe
    80002f4c:	374080e7          	jalr	884(ra) # 800012bc <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80002f50:	0084b783          	ld	a5,8(s1)
    80002f54:	0144a703          	lw	a4,20(s1)
    80002f58:	00271713          	slli	a4,a4,0x2
    80002f5c:	00e787b3          	add	a5,a5,a4
    80002f60:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002f64:	0144a783          	lw	a5,20(s1)
    80002f68:	0017879b          	addiw	a5,a5,1
    80002f6c:	0004a703          	lw	a4,0(s1)
    80002f70:	02e7e7bb          	remw	a5,a5,a4
    80002f74:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002f78:	0304b503          	ld	a0,48(s1)
    80002f7c:	ffffe097          	auipc	ra,0xffffe
    80002f80:	35c080e7          	jalr	860(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002f84:	0204b503          	ld	a0,32(s1)
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	350080e7          	jalr	848(ra) # 800012d8 <_Z10sem_signalP4_sem>

}
    80002f90:	01813083          	ld	ra,24(sp)
    80002f94:	01013403          	ld	s0,16(sp)
    80002f98:	00813483          	ld	s1,8(sp)
    80002f9c:	00013903          	ld	s2,0(sp)
    80002fa0:	02010113          	addi	sp,sp,32
    80002fa4:	00008067          	ret

0000000080002fa8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002fa8:	fe010113          	addi	sp,sp,-32
    80002fac:	00113c23          	sd	ra,24(sp)
    80002fb0:	00813823          	sd	s0,16(sp)
    80002fb4:	00913423          	sd	s1,8(sp)
    80002fb8:	01213023          	sd	s2,0(sp)
    80002fbc:	02010413          	addi	s0,sp,32
    80002fc0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002fc4:	02053503          	ld	a0,32(a0)
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	2f4080e7          	jalr	756(ra) # 800012bc <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002fd0:	0284b503          	ld	a0,40(s1)
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	2e8080e7          	jalr	744(ra) # 800012bc <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002fdc:	0084b703          	ld	a4,8(s1)
    80002fe0:	0104a783          	lw	a5,16(s1)
    80002fe4:	00279693          	slli	a3,a5,0x2
    80002fe8:	00d70733          	add	a4,a4,a3
    80002fec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002ff0:	0017879b          	addiw	a5,a5,1
    80002ff4:	0004a703          	lw	a4,0(s1)
    80002ff8:	02e7e7bb          	remw	a5,a5,a4
    80002ffc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003000:	0284b503          	ld	a0,40(s1)
    80003004:	ffffe097          	auipc	ra,0xffffe
    80003008:	2d4080e7          	jalr	724(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000300c:	0184b503          	ld	a0,24(s1)
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	2c8080e7          	jalr	712(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    80003018:	00090513          	mv	a0,s2
    8000301c:	01813083          	ld	ra,24(sp)
    80003020:	01013403          	ld	s0,16(sp)
    80003024:	00813483          	ld	s1,8(sp)
    80003028:	00013903          	ld	s2,0(sp)
    8000302c:	02010113          	addi	sp,sp,32
    80003030:	00008067          	ret

0000000080003034 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003034:	fe010113          	addi	sp,sp,-32
    80003038:	00113c23          	sd	ra,24(sp)
    8000303c:	00813823          	sd	s0,16(sp)
    80003040:	00913423          	sd	s1,8(sp)
    80003044:	01213023          	sd	s2,0(sp)
    80003048:	02010413          	addi	s0,sp,32
    8000304c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003050:	02853503          	ld	a0,40(a0)
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	268080e7          	jalr	616(ra) # 800012bc <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000305c:	0304b503          	ld	a0,48(s1)
    80003060:	ffffe097          	auipc	ra,0xffffe
    80003064:	25c080e7          	jalr	604(ra) # 800012bc <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80003068:	0144a783          	lw	a5,20(s1)
    8000306c:	0104a903          	lw	s2,16(s1)
    80003070:	0327ce63          	blt	a5,s2,800030ac <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003074:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003078:	0304b503          	ld	a0,48(s1)
    8000307c:	ffffe097          	auipc	ra,0xffffe
    80003080:	25c080e7          	jalr	604(ra) # 800012d8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80003084:	0284b503          	ld	a0,40(s1)
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	250080e7          	jalr	592(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    80003090:	00090513          	mv	a0,s2
    80003094:	01813083          	ld	ra,24(sp)
    80003098:	01013403          	ld	s0,16(sp)
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	00013903          	ld	s2,0(sp)
    800030a4:	02010113          	addi	sp,sp,32
    800030a8:	00008067          	ret
        ret = cap - head + tail;
    800030ac:	0004a703          	lw	a4,0(s1)
    800030b0:	4127093b          	subw	s2,a4,s2
    800030b4:	00f9093b          	addw	s2,s2,a5
    800030b8:	fc1ff06f          	j	80003078 <_ZN6Buffer6getCntEv+0x44>

00000000800030bc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00113c23          	sd	ra,24(sp)
    800030c4:	00813823          	sd	s0,16(sp)
    800030c8:	00913423          	sd	s1,8(sp)
    800030cc:	02010413          	addi	s0,sp,32
    800030d0:	00050493          	mv	s1,a0
    putc('\n');
    800030d4:	00a00513          	li	a0,10
    800030d8:	ffffe097          	auipc	ra,0xffffe
    800030dc:	260080e7          	jalr	608(ra) # 80001338 <_Z4putcc>
    printString("Buffer deleted!\n");
    800030e0:	00003517          	auipc	a0,0x3
    800030e4:	04050513          	addi	a0,a0,64 # 80006120 <_ZZ12printIntegermE6digits+0x10>
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	09c080e7          	jalr	156(ra) # 80002184 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800030f0:	00048513          	mv	a0,s1
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	f40080e7          	jalr	-192(ra) # 80003034 <_ZN6Buffer6getCntEv>
    800030fc:	02a05c63          	blez	a0,80003134 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003100:	0084b783          	ld	a5,8(s1)
    80003104:	0104a703          	lw	a4,16(s1)
    80003108:	00271713          	slli	a4,a4,0x2
    8000310c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003110:	0007c503          	lbu	a0,0(a5)
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	224080e7          	jalr	548(ra) # 80001338 <_Z4putcc>
        head = (head + 1) % cap;
    8000311c:	0104a783          	lw	a5,16(s1)
    80003120:	0017879b          	addiw	a5,a5,1
    80003124:	0004a703          	lw	a4,0(s1)
    80003128:	02e7e7bb          	remw	a5,a5,a4
    8000312c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003130:	fc1ff06f          	j	800030f0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003134:	02100513          	li	a0,33
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	200080e7          	jalr	512(ra) # 80001338 <_Z4putcc>
    putc('\n');
    80003140:	00a00513          	li	a0,10
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	1f4080e7          	jalr	500(ra) # 80001338 <_Z4putcc>
    mem_free(buffer);
    8000314c:	0084b503          	ld	a0,8(s1)
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	ebc080e7          	jalr	-324(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    80003158:	0204b503          	ld	a0,32(s1)
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	144080e7          	jalr	324(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80003164:	0184b503          	ld	a0,24(s1)
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	138080e7          	jalr	312(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80003170:	0304b503          	ld	a0,48(s1)
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	12c080e7          	jalr	300(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000317c:	0284b503          	ld	a0,40(s1)
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	120080e7          	jalr	288(ra) # 800012a0 <_Z9sem_closeP4_sem>
}
    80003188:	01813083          	ld	ra,24(sp)
    8000318c:	01013403          	ld	s0,16(sp)
    80003190:	00813483          	ld	s1,8(sp)
    80003194:	02010113          	addi	sp,sp,32
    80003198:	00008067          	ret

000000008000319c <start>:
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00813423          	sd	s0,8(sp)
    800031a4:	01010413          	addi	s0,sp,16
    800031a8:	300027f3          	csrr	a5,mstatus
    800031ac:	ffffe737          	lui	a4,0xffffe
    800031b0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff625f>
    800031b4:	00e7f7b3          	and	a5,a5,a4
    800031b8:	00001737          	lui	a4,0x1
    800031bc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800031c0:	00e7e7b3          	or	a5,a5,a4
    800031c4:	30079073          	csrw	mstatus,a5
    800031c8:	00000797          	auipc	a5,0x0
    800031cc:	16078793          	addi	a5,a5,352 # 80003328 <system_main>
    800031d0:	34179073          	csrw	mepc,a5
    800031d4:	00000793          	li	a5,0
    800031d8:	18079073          	csrw	satp,a5
    800031dc:	000107b7          	lui	a5,0x10
    800031e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800031e4:	30279073          	csrw	medeleg,a5
    800031e8:	30379073          	csrw	mideleg,a5
    800031ec:	104027f3          	csrr	a5,sie
    800031f0:	2227e793          	ori	a5,a5,546
    800031f4:	10479073          	csrw	sie,a5
    800031f8:	fff00793          	li	a5,-1
    800031fc:	00a7d793          	srli	a5,a5,0xa
    80003200:	3b079073          	csrw	pmpaddr0,a5
    80003204:	00f00793          	li	a5,15
    80003208:	3a079073          	csrw	pmpcfg0,a5
    8000320c:	f14027f3          	csrr	a5,mhartid
    80003210:	0200c737          	lui	a4,0x200c
    80003214:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003218:	0007869b          	sext.w	a3,a5
    8000321c:	00269713          	slli	a4,a3,0x2
    80003220:	000f4637          	lui	a2,0xf4
    80003224:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003228:	00d70733          	add	a4,a4,a3
    8000322c:	0037979b          	slliw	a5,a5,0x3
    80003230:	020046b7          	lui	a3,0x2004
    80003234:	00d787b3          	add	a5,a5,a3
    80003238:	00c585b3          	add	a1,a1,a2
    8000323c:	00371693          	slli	a3,a4,0x3
    80003240:	00004717          	auipc	a4,0x4
    80003244:	10070713          	addi	a4,a4,256 # 80007340 <timer_scratch>
    80003248:	00b7b023          	sd	a1,0(a5)
    8000324c:	00d70733          	add	a4,a4,a3
    80003250:	00f73c23          	sd	a5,24(a4)
    80003254:	02c73023          	sd	a2,32(a4)
    80003258:	34071073          	csrw	mscratch,a4
    8000325c:	00000797          	auipc	a5,0x0
    80003260:	6e478793          	addi	a5,a5,1764 # 80003940 <timervec>
    80003264:	30579073          	csrw	mtvec,a5
    80003268:	300027f3          	csrr	a5,mstatus
    8000326c:	0087e793          	ori	a5,a5,8
    80003270:	30079073          	csrw	mstatus,a5
    80003274:	304027f3          	csrr	a5,mie
    80003278:	0807e793          	ori	a5,a5,128
    8000327c:	30479073          	csrw	mie,a5
    80003280:	f14027f3          	csrr	a5,mhartid
    80003284:	0007879b          	sext.w	a5,a5
    80003288:	00078213          	mv	tp,a5
    8000328c:	30200073          	mret
    80003290:	00813403          	ld	s0,8(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <timerinit>:
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00813423          	sd	s0,8(sp)
    800032a4:	01010413          	addi	s0,sp,16
    800032a8:	f14027f3          	csrr	a5,mhartid
    800032ac:	0200c737          	lui	a4,0x200c
    800032b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800032b4:	0007869b          	sext.w	a3,a5
    800032b8:	00269713          	slli	a4,a3,0x2
    800032bc:	000f4637          	lui	a2,0xf4
    800032c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800032c4:	00d70733          	add	a4,a4,a3
    800032c8:	0037979b          	slliw	a5,a5,0x3
    800032cc:	020046b7          	lui	a3,0x2004
    800032d0:	00d787b3          	add	a5,a5,a3
    800032d4:	00c585b3          	add	a1,a1,a2
    800032d8:	00371693          	slli	a3,a4,0x3
    800032dc:	00004717          	auipc	a4,0x4
    800032e0:	06470713          	addi	a4,a4,100 # 80007340 <timer_scratch>
    800032e4:	00b7b023          	sd	a1,0(a5)
    800032e8:	00d70733          	add	a4,a4,a3
    800032ec:	00f73c23          	sd	a5,24(a4)
    800032f0:	02c73023          	sd	a2,32(a4)
    800032f4:	34071073          	csrw	mscratch,a4
    800032f8:	00000797          	auipc	a5,0x0
    800032fc:	64878793          	addi	a5,a5,1608 # 80003940 <timervec>
    80003300:	30579073          	csrw	mtvec,a5
    80003304:	300027f3          	csrr	a5,mstatus
    80003308:	0087e793          	ori	a5,a5,8
    8000330c:	30079073          	csrw	mstatus,a5
    80003310:	304027f3          	csrr	a5,mie
    80003314:	0807e793          	ori	a5,a5,128
    80003318:	30479073          	csrw	mie,a5
    8000331c:	00813403          	ld	s0,8(sp)
    80003320:	01010113          	addi	sp,sp,16
    80003324:	00008067          	ret

0000000080003328 <system_main>:
    80003328:	fe010113          	addi	sp,sp,-32
    8000332c:	00813823          	sd	s0,16(sp)
    80003330:	00913423          	sd	s1,8(sp)
    80003334:	00113c23          	sd	ra,24(sp)
    80003338:	02010413          	addi	s0,sp,32
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	0c4080e7          	jalr	196(ra) # 80003400 <cpuid>
    80003344:	00004497          	auipc	s1,0x4
    80003348:	f9c48493          	addi	s1,s1,-100 # 800072e0 <started>
    8000334c:	02050263          	beqz	a0,80003370 <system_main+0x48>
    80003350:	0004a783          	lw	a5,0(s1)
    80003354:	0007879b          	sext.w	a5,a5
    80003358:	fe078ce3          	beqz	a5,80003350 <system_main+0x28>
    8000335c:	0ff0000f          	fence
    80003360:	00003517          	auipc	a0,0x3
    80003364:	f3850513          	addi	a0,a0,-200 # 80006298 <_ZZ12printIntegermE6digits+0x188>
    80003368:	00001097          	auipc	ra,0x1
    8000336c:	a74080e7          	jalr	-1420(ra) # 80003ddc <panic>
    80003370:	00001097          	auipc	ra,0x1
    80003374:	9c8080e7          	jalr	-1592(ra) # 80003d38 <consoleinit>
    80003378:	00001097          	auipc	ra,0x1
    8000337c:	154080e7          	jalr	340(ra) # 800044cc <printfinit>
    80003380:	00003517          	auipc	a0,0x3
    80003384:	ee050513          	addi	a0,a0,-288 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80003388:	00001097          	auipc	ra,0x1
    8000338c:	ab0080e7          	jalr	-1360(ra) # 80003e38 <__printf>
    80003390:	00003517          	auipc	a0,0x3
    80003394:	ed850513          	addi	a0,a0,-296 # 80006268 <_ZZ12printIntegermE6digits+0x158>
    80003398:	00001097          	auipc	ra,0x1
    8000339c:	aa0080e7          	jalr	-1376(ra) # 80003e38 <__printf>
    800033a0:	00003517          	auipc	a0,0x3
    800033a4:	ec050513          	addi	a0,a0,-320 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    800033a8:	00001097          	auipc	ra,0x1
    800033ac:	a90080e7          	jalr	-1392(ra) # 80003e38 <__printf>
    800033b0:	00001097          	auipc	ra,0x1
    800033b4:	4a8080e7          	jalr	1192(ra) # 80004858 <kinit>
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	148080e7          	jalr	328(ra) # 80003500 <trapinit>
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	16c080e7          	jalr	364(ra) # 8000352c <trapinithart>
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	5b8080e7          	jalr	1464(ra) # 80003980 <plicinit>
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	5d8080e7          	jalr	1496(ra) # 800039a8 <plicinithart>
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	078080e7          	jalr	120(ra) # 80003450 <userinit>
    800033e0:	0ff0000f          	fence
    800033e4:	00100793          	li	a5,1
    800033e8:	00003517          	auipc	a0,0x3
    800033ec:	e9850513          	addi	a0,a0,-360 # 80006280 <_ZZ12printIntegermE6digits+0x170>
    800033f0:	00f4a023          	sw	a5,0(s1)
    800033f4:	00001097          	auipc	ra,0x1
    800033f8:	a44080e7          	jalr	-1468(ra) # 80003e38 <__printf>
    800033fc:	0000006f          	j	800033fc <system_main+0xd4>

0000000080003400 <cpuid>:
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813423          	sd	s0,8(sp)
    80003408:	01010413          	addi	s0,sp,16
    8000340c:	00020513          	mv	a0,tp
    80003410:	00813403          	ld	s0,8(sp)
    80003414:	0005051b          	sext.w	a0,a0
    80003418:	01010113          	addi	sp,sp,16
    8000341c:	00008067          	ret

0000000080003420 <mycpu>:
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00813423          	sd	s0,8(sp)
    80003428:	01010413          	addi	s0,sp,16
    8000342c:	00020793          	mv	a5,tp
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	0007879b          	sext.w	a5,a5
    80003438:	00779793          	slli	a5,a5,0x7
    8000343c:	00005517          	auipc	a0,0x5
    80003440:	f3450513          	addi	a0,a0,-204 # 80008370 <cpus>
    80003444:	00f50533          	add	a0,a0,a5
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret

0000000080003450 <userinit>:
    80003450:	ff010113          	addi	sp,sp,-16
    80003454:	00813423          	sd	s0,8(sp)
    80003458:	01010413          	addi	s0,sp,16
    8000345c:	00813403          	ld	s0,8(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	ffffe317          	auipc	t1,0xffffe
    80003468:	24030067          	jr	576(t1) # 800016a4 <main>

000000008000346c <either_copyout>:
    8000346c:	ff010113          	addi	sp,sp,-16
    80003470:	00813023          	sd	s0,0(sp)
    80003474:	00113423          	sd	ra,8(sp)
    80003478:	01010413          	addi	s0,sp,16
    8000347c:	02051663          	bnez	a0,800034a8 <either_copyout+0x3c>
    80003480:	00058513          	mv	a0,a1
    80003484:	00060593          	mv	a1,a2
    80003488:	0006861b          	sext.w	a2,a3
    8000348c:	00002097          	auipc	ra,0x2
    80003490:	c58080e7          	jalr	-936(ra) # 800050e4 <__memmove>
    80003494:	00813083          	ld	ra,8(sp)
    80003498:	00013403          	ld	s0,0(sp)
    8000349c:	00000513          	li	a0,0
    800034a0:	01010113          	addi	sp,sp,16
    800034a4:	00008067          	ret
    800034a8:	00003517          	auipc	a0,0x3
    800034ac:	e1850513          	addi	a0,a0,-488 # 800062c0 <_ZZ12printIntegermE6digits+0x1b0>
    800034b0:	00001097          	auipc	ra,0x1
    800034b4:	92c080e7          	jalr	-1748(ra) # 80003ddc <panic>

00000000800034b8 <either_copyin>:
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00813023          	sd	s0,0(sp)
    800034c0:	00113423          	sd	ra,8(sp)
    800034c4:	01010413          	addi	s0,sp,16
    800034c8:	02059463          	bnez	a1,800034f0 <either_copyin+0x38>
    800034cc:	00060593          	mv	a1,a2
    800034d0:	0006861b          	sext.w	a2,a3
    800034d4:	00002097          	auipc	ra,0x2
    800034d8:	c10080e7          	jalr	-1008(ra) # 800050e4 <__memmove>
    800034dc:	00813083          	ld	ra,8(sp)
    800034e0:	00013403          	ld	s0,0(sp)
    800034e4:	00000513          	li	a0,0
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret
    800034f0:	00003517          	auipc	a0,0x3
    800034f4:	df850513          	addi	a0,a0,-520 # 800062e8 <_ZZ12printIntegermE6digits+0x1d8>
    800034f8:	00001097          	auipc	ra,0x1
    800034fc:	8e4080e7          	jalr	-1820(ra) # 80003ddc <panic>

0000000080003500 <trapinit>:
    80003500:	ff010113          	addi	sp,sp,-16
    80003504:	00813423          	sd	s0,8(sp)
    80003508:	01010413          	addi	s0,sp,16
    8000350c:	00813403          	ld	s0,8(sp)
    80003510:	00003597          	auipc	a1,0x3
    80003514:	e0058593          	addi	a1,a1,-512 # 80006310 <_ZZ12printIntegermE6digits+0x200>
    80003518:	00005517          	auipc	a0,0x5
    8000351c:	ed850513          	addi	a0,a0,-296 # 800083f0 <tickslock>
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00001317          	auipc	t1,0x1
    80003528:	5c430067          	jr	1476(t1) # 80004ae8 <initlock>

000000008000352c <trapinithart>:
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00813423          	sd	s0,8(sp)
    80003534:	01010413          	addi	s0,sp,16
    80003538:	00000797          	auipc	a5,0x0
    8000353c:	2f878793          	addi	a5,a5,760 # 80003830 <kernelvec>
    80003540:	10579073          	csrw	stvec,a5
    80003544:	00813403          	ld	s0,8(sp)
    80003548:	01010113          	addi	sp,sp,16
    8000354c:	00008067          	ret

0000000080003550 <usertrap>:
    80003550:	ff010113          	addi	sp,sp,-16
    80003554:	00813423          	sd	s0,8(sp)
    80003558:	01010413          	addi	s0,sp,16
    8000355c:	00813403          	ld	s0,8(sp)
    80003560:	01010113          	addi	sp,sp,16
    80003564:	00008067          	ret

0000000080003568 <usertrapret>:
    80003568:	ff010113          	addi	sp,sp,-16
    8000356c:	00813423          	sd	s0,8(sp)
    80003570:	01010413          	addi	s0,sp,16
    80003574:	00813403          	ld	s0,8(sp)
    80003578:	01010113          	addi	sp,sp,16
    8000357c:	00008067          	ret

0000000080003580 <kerneltrap>:
    80003580:	fe010113          	addi	sp,sp,-32
    80003584:	00813823          	sd	s0,16(sp)
    80003588:	00113c23          	sd	ra,24(sp)
    8000358c:	00913423          	sd	s1,8(sp)
    80003590:	02010413          	addi	s0,sp,32
    80003594:	142025f3          	csrr	a1,scause
    80003598:	100027f3          	csrr	a5,sstatus
    8000359c:	0027f793          	andi	a5,a5,2
    800035a0:	10079c63          	bnez	a5,800036b8 <kerneltrap+0x138>
    800035a4:	142027f3          	csrr	a5,scause
    800035a8:	0207ce63          	bltz	a5,800035e4 <kerneltrap+0x64>
    800035ac:	00003517          	auipc	a0,0x3
    800035b0:	dac50513          	addi	a0,a0,-596 # 80006358 <_ZZ12printIntegermE6digits+0x248>
    800035b4:	00001097          	auipc	ra,0x1
    800035b8:	884080e7          	jalr	-1916(ra) # 80003e38 <__printf>
    800035bc:	141025f3          	csrr	a1,sepc
    800035c0:	14302673          	csrr	a2,stval
    800035c4:	00003517          	auipc	a0,0x3
    800035c8:	da450513          	addi	a0,a0,-604 # 80006368 <_ZZ12printIntegermE6digits+0x258>
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	86c080e7          	jalr	-1940(ra) # 80003e38 <__printf>
    800035d4:	00003517          	auipc	a0,0x3
    800035d8:	dac50513          	addi	a0,a0,-596 # 80006380 <_ZZ12printIntegermE6digits+0x270>
    800035dc:	00001097          	auipc	ra,0x1
    800035e0:	800080e7          	jalr	-2048(ra) # 80003ddc <panic>
    800035e4:	0ff7f713          	andi	a4,a5,255
    800035e8:	00900693          	li	a3,9
    800035ec:	04d70063          	beq	a4,a3,8000362c <kerneltrap+0xac>
    800035f0:	fff00713          	li	a4,-1
    800035f4:	03f71713          	slli	a4,a4,0x3f
    800035f8:	00170713          	addi	a4,a4,1
    800035fc:	fae798e3          	bne	a5,a4,800035ac <kerneltrap+0x2c>
    80003600:	00000097          	auipc	ra,0x0
    80003604:	e00080e7          	jalr	-512(ra) # 80003400 <cpuid>
    80003608:	06050663          	beqz	a0,80003674 <kerneltrap+0xf4>
    8000360c:	144027f3          	csrr	a5,sip
    80003610:	ffd7f793          	andi	a5,a5,-3
    80003614:	14479073          	csrw	sip,a5
    80003618:	01813083          	ld	ra,24(sp)
    8000361c:	01013403          	ld	s0,16(sp)
    80003620:	00813483          	ld	s1,8(sp)
    80003624:	02010113          	addi	sp,sp,32
    80003628:	00008067          	ret
    8000362c:	00000097          	auipc	ra,0x0
    80003630:	3c8080e7          	jalr	968(ra) # 800039f4 <plic_claim>
    80003634:	00a00793          	li	a5,10
    80003638:	00050493          	mv	s1,a0
    8000363c:	06f50863          	beq	a0,a5,800036ac <kerneltrap+0x12c>
    80003640:	fc050ce3          	beqz	a0,80003618 <kerneltrap+0x98>
    80003644:	00050593          	mv	a1,a0
    80003648:	00003517          	auipc	a0,0x3
    8000364c:	cf050513          	addi	a0,a0,-784 # 80006338 <_ZZ12printIntegermE6digits+0x228>
    80003650:	00000097          	auipc	ra,0x0
    80003654:	7e8080e7          	jalr	2024(ra) # 80003e38 <__printf>
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	01813083          	ld	ra,24(sp)
    80003660:	00048513          	mv	a0,s1
    80003664:	00813483          	ld	s1,8(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00000317          	auipc	t1,0x0
    80003670:	3c030067          	jr	960(t1) # 80003a2c <plic_complete>
    80003674:	00005517          	auipc	a0,0x5
    80003678:	d7c50513          	addi	a0,a0,-644 # 800083f0 <tickslock>
    8000367c:	00001097          	auipc	ra,0x1
    80003680:	490080e7          	jalr	1168(ra) # 80004b0c <acquire>
    80003684:	00004717          	auipc	a4,0x4
    80003688:	c6070713          	addi	a4,a4,-928 # 800072e4 <ticks>
    8000368c:	00072783          	lw	a5,0(a4)
    80003690:	00005517          	auipc	a0,0x5
    80003694:	d6050513          	addi	a0,a0,-672 # 800083f0 <tickslock>
    80003698:	0017879b          	addiw	a5,a5,1
    8000369c:	00f72023          	sw	a5,0(a4)
    800036a0:	00001097          	auipc	ra,0x1
    800036a4:	538080e7          	jalr	1336(ra) # 80004bd8 <release>
    800036a8:	f65ff06f          	j	8000360c <kerneltrap+0x8c>
    800036ac:	00001097          	auipc	ra,0x1
    800036b0:	094080e7          	jalr	148(ra) # 80004740 <uartintr>
    800036b4:	fa5ff06f          	j	80003658 <kerneltrap+0xd8>
    800036b8:	00003517          	auipc	a0,0x3
    800036bc:	c6050513          	addi	a0,a0,-928 # 80006318 <_ZZ12printIntegermE6digits+0x208>
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	71c080e7          	jalr	1820(ra) # 80003ddc <panic>

00000000800036c8 <clockintr>:
    800036c8:	fe010113          	addi	sp,sp,-32
    800036cc:	00813823          	sd	s0,16(sp)
    800036d0:	00913423          	sd	s1,8(sp)
    800036d4:	00113c23          	sd	ra,24(sp)
    800036d8:	02010413          	addi	s0,sp,32
    800036dc:	00005497          	auipc	s1,0x5
    800036e0:	d1448493          	addi	s1,s1,-748 # 800083f0 <tickslock>
    800036e4:	00048513          	mv	a0,s1
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	424080e7          	jalr	1060(ra) # 80004b0c <acquire>
    800036f0:	00004717          	auipc	a4,0x4
    800036f4:	bf470713          	addi	a4,a4,-1036 # 800072e4 <ticks>
    800036f8:	00072783          	lw	a5,0(a4)
    800036fc:	01013403          	ld	s0,16(sp)
    80003700:	01813083          	ld	ra,24(sp)
    80003704:	00048513          	mv	a0,s1
    80003708:	0017879b          	addiw	a5,a5,1
    8000370c:	00813483          	ld	s1,8(sp)
    80003710:	00f72023          	sw	a5,0(a4)
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00001317          	auipc	t1,0x1
    8000371c:	4c030067          	jr	1216(t1) # 80004bd8 <release>

0000000080003720 <devintr>:
    80003720:	142027f3          	csrr	a5,scause
    80003724:	00000513          	li	a0,0
    80003728:	0007c463          	bltz	a5,80003730 <devintr+0x10>
    8000372c:	00008067          	ret
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00813823          	sd	s0,16(sp)
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	02010413          	addi	s0,sp,32
    80003744:	0ff7f713          	andi	a4,a5,255
    80003748:	00900693          	li	a3,9
    8000374c:	04d70c63          	beq	a4,a3,800037a4 <devintr+0x84>
    80003750:	fff00713          	li	a4,-1
    80003754:	03f71713          	slli	a4,a4,0x3f
    80003758:	00170713          	addi	a4,a4,1
    8000375c:	00e78c63          	beq	a5,a4,80003774 <devintr+0x54>
    80003760:	01813083          	ld	ra,24(sp)
    80003764:	01013403          	ld	s0,16(sp)
    80003768:	00813483          	ld	s1,8(sp)
    8000376c:	02010113          	addi	sp,sp,32
    80003770:	00008067          	ret
    80003774:	00000097          	auipc	ra,0x0
    80003778:	c8c080e7          	jalr	-884(ra) # 80003400 <cpuid>
    8000377c:	06050663          	beqz	a0,800037e8 <devintr+0xc8>
    80003780:	144027f3          	csrr	a5,sip
    80003784:	ffd7f793          	andi	a5,a5,-3
    80003788:	14479073          	csrw	sip,a5
    8000378c:	01813083          	ld	ra,24(sp)
    80003790:	01013403          	ld	s0,16(sp)
    80003794:	00813483          	ld	s1,8(sp)
    80003798:	00200513          	li	a0,2
    8000379c:	02010113          	addi	sp,sp,32
    800037a0:	00008067          	ret
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	250080e7          	jalr	592(ra) # 800039f4 <plic_claim>
    800037ac:	00a00793          	li	a5,10
    800037b0:	00050493          	mv	s1,a0
    800037b4:	06f50663          	beq	a0,a5,80003820 <devintr+0x100>
    800037b8:	00100513          	li	a0,1
    800037bc:	fa0482e3          	beqz	s1,80003760 <devintr+0x40>
    800037c0:	00048593          	mv	a1,s1
    800037c4:	00003517          	auipc	a0,0x3
    800037c8:	b7450513          	addi	a0,a0,-1164 # 80006338 <_ZZ12printIntegermE6digits+0x228>
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	66c080e7          	jalr	1644(ra) # 80003e38 <__printf>
    800037d4:	00048513          	mv	a0,s1
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	254080e7          	jalr	596(ra) # 80003a2c <plic_complete>
    800037e0:	00100513          	li	a0,1
    800037e4:	f7dff06f          	j	80003760 <devintr+0x40>
    800037e8:	00005517          	auipc	a0,0x5
    800037ec:	c0850513          	addi	a0,a0,-1016 # 800083f0 <tickslock>
    800037f0:	00001097          	auipc	ra,0x1
    800037f4:	31c080e7          	jalr	796(ra) # 80004b0c <acquire>
    800037f8:	00004717          	auipc	a4,0x4
    800037fc:	aec70713          	addi	a4,a4,-1300 # 800072e4 <ticks>
    80003800:	00072783          	lw	a5,0(a4)
    80003804:	00005517          	auipc	a0,0x5
    80003808:	bec50513          	addi	a0,a0,-1044 # 800083f0 <tickslock>
    8000380c:	0017879b          	addiw	a5,a5,1
    80003810:	00f72023          	sw	a5,0(a4)
    80003814:	00001097          	auipc	ra,0x1
    80003818:	3c4080e7          	jalr	964(ra) # 80004bd8 <release>
    8000381c:	f65ff06f          	j	80003780 <devintr+0x60>
    80003820:	00001097          	auipc	ra,0x1
    80003824:	f20080e7          	jalr	-224(ra) # 80004740 <uartintr>
    80003828:	fadff06f          	j	800037d4 <devintr+0xb4>
    8000382c:	0000                	unimp
	...

0000000080003830 <kernelvec>:
    80003830:	f0010113          	addi	sp,sp,-256
    80003834:	00113023          	sd	ra,0(sp)
    80003838:	00213423          	sd	sp,8(sp)
    8000383c:	00313823          	sd	gp,16(sp)
    80003840:	00413c23          	sd	tp,24(sp)
    80003844:	02513023          	sd	t0,32(sp)
    80003848:	02613423          	sd	t1,40(sp)
    8000384c:	02713823          	sd	t2,48(sp)
    80003850:	02813c23          	sd	s0,56(sp)
    80003854:	04913023          	sd	s1,64(sp)
    80003858:	04a13423          	sd	a0,72(sp)
    8000385c:	04b13823          	sd	a1,80(sp)
    80003860:	04c13c23          	sd	a2,88(sp)
    80003864:	06d13023          	sd	a3,96(sp)
    80003868:	06e13423          	sd	a4,104(sp)
    8000386c:	06f13823          	sd	a5,112(sp)
    80003870:	07013c23          	sd	a6,120(sp)
    80003874:	09113023          	sd	a7,128(sp)
    80003878:	09213423          	sd	s2,136(sp)
    8000387c:	09313823          	sd	s3,144(sp)
    80003880:	09413c23          	sd	s4,152(sp)
    80003884:	0b513023          	sd	s5,160(sp)
    80003888:	0b613423          	sd	s6,168(sp)
    8000388c:	0b713823          	sd	s7,176(sp)
    80003890:	0b813c23          	sd	s8,184(sp)
    80003894:	0d913023          	sd	s9,192(sp)
    80003898:	0da13423          	sd	s10,200(sp)
    8000389c:	0db13823          	sd	s11,208(sp)
    800038a0:	0dc13c23          	sd	t3,216(sp)
    800038a4:	0fd13023          	sd	t4,224(sp)
    800038a8:	0fe13423          	sd	t5,232(sp)
    800038ac:	0ff13823          	sd	t6,240(sp)
    800038b0:	cd1ff0ef          	jal	ra,80003580 <kerneltrap>
    800038b4:	00013083          	ld	ra,0(sp)
    800038b8:	00813103          	ld	sp,8(sp)
    800038bc:	01013183          	ld	gp,16(sp)
    800038c0:	02013283          	ld	t0,32(sp)
    800038c4:	02813303          	ld	t1,40(sp)
    800038c8:	03013383          	ld	t2,48(sp)
    800038cc:	03813403          	ld	s0,56(sp)
    800038d0:	04013483          	ld	s1,64(sp)
    800038d4:	04813503          	ld	a0,72(sp)
    800038d8:	05013583          	ld	a1,80(sp)
    800038dc:	05813603          	ld	a2,88(sp)
    800038e0:	06013683          	ld	a3,96(sp)
    800038e4:	06813703          	ld	a4,104(sp)
    800038e8:	07013783          	ld	a5,112(sp)
    800038ec:	07813803          	ld	a6,120(sp)
    800038f0:	08013883          	ld	a7,128(sp)
    800038f4:	08813903          	ld	s2,136(sp)
    800038f8:	09013983          	ld	s3,144(sp)
    800038fc:	09813a03          	ld	s4,152(sp)
    80003900:	0a013a83          	ld	s5,160(sp)
    80003904:	0a813b03          	ld	s6,168(sp)
    80003908:	0b013b83          	ld	s7,176(sp)
    8000390c:	0b813c03          	ld	s8,184(sp)
    80003910:	0c013c83          	ld	s9,192(sp)
    80003914:	0c813d03          	ld	s10,200(sp)
    80003918:	0d013d83          	ld	s11,208(sp)
    8000391c:	0d813e03          	ld	t3,216(sp)
    80003920:	0e013e83          	ld	t4,224(sp)
    80003924:	0e813f03          	ld	t5,232(sp)
    80003928:	0f013f83          	ld	t6,240(sp)
    8000392c:	10010113          	addi	sp,sp,256
    80003930:	10200073          	sret
    80003934:	00000013          	nop
    80003938:	00000013          	nop
    8000393c:	00000013          	nop

0000000080003940 <timervec>:
    80003940:	34051573          	csrrw	a0,mscratch,a0
    80003944:	00b53023          	sd	a1,0(a0)
    80003948:	00c53423          	sd	a2,8(a0)
    8000394c:	00d53823          	sd	a3,16(a0)
    80003950:	01853583          	ld	a1,24(a0)
    80003954:	02053603          	ld	a2,32(a0)
    80003958:	0005b683          	ld	a3,0(a1)
    8000395c:	00c686b3          	add	a3,a3,a2
    80003960:	00d5b023          	sd	a3,0(a1)
    80003964:	00200593          	li	a1,2
    80003968:	14459073          	csrw	sip,a1
    8000396c:	01053683          	ld	a3,16(a0)
    80003970:	00853603          	ld	a2,8(a0)
    80003974:	00053583          	ld	a1,0(a0)
    80003978:	34051573          	csrrw	a0,mscratch,a0
    8000397c:	30200073          	mret

0000000080003980 <plicinit>:
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00813423          	sd	s0,8(sp)
    80003988:	01010413          	addi	s0,sp,16
    8000398c:	00813403          	ld	s0,8(sp)
    80003990:	0c0007b7          	lui	a5,0xc000
    80003994:	00100713          	li	a4,1
    80003998:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000399c:	00e7a223          	sw	a4,4(a5)
    800039a0:	01010113          	addi	sp,sp,16
    800039a4:	00008067          	ret

00000000800039a8 <plicinithart>:
    800039a8:	ff010113          	addi	sp,sp,-16
    800039ac:	00813023          	sd	s0,0(sp)
    800039b0:	00113423          	sd	ra,8(sp)
    800039b4:	01010413          	addi	s0,sp,16
    800039b8:	00000097          	auipc	ra,0x0
    800039bc:	a48080e7          	jalr	-1464(ra) # 80003400 <cpuid>
    800039c0:	0085171b          	slliw	a4,a0,0x8
    800039c4:	0c0027b7          	lui	a5,0xc002
    800039c8:	00e787b3          	add	a5,a5,a4
    800039cc:	40200713          	li	a4,1026
    800039d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800039d4:	00813083          	ld	ra,8(sp)
    800039d8:	00013403          	ld	s0,0(sp)
    800039dc:	00d5151b          	slliw	a0,a0,0xd
    800039e0:	0c2017b7          	lui	a5,0xc201
    800039e4:	00a78533          	add	a0,a5,a0
    800039e8:	00052023          	sw	zero,0(a0)
    800039ec:	01010113          	addi	sp,sp,16
    800039f0:	00008067          	ret

00000000800039f4 <plic_claim>:
    800039f4:	ff010113          	addi	sp,sp,-16
    800039f8:	00813023          	sd	s0,0(sp)
    800039fc:	00113423          	sd	ra,8(sp)
    80003a00:	01010413          	addi	s0,sp,16
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	9fc080e7          	jalr	-1540(ra) # 80003400 <cpuid>
    80003a0c:	00813083          	ld	ra,8(sp)
    80003a10:	00013403          	ld	s0,0(sp)
    80003a14:	00d5151b          	slliw	a0,a0,0xd
    80003a18:	0c2017b7          	lui	a5,0xc201
    80003a1c:	00a78533          	add	a0,a5,a0
    80003a20:	00452503          	lw	a0,4(a0)
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00008067          	ret

0000000080003a2c <plic_complete>:
    80003a2c:	fe010113          	addi	sp,sp,-32
    80003a30:	00813823          	sd	s0,16(sp)
    80003a34:	00913423          	sd	s1,8(sp)
    80003a38:	00113c23          	sd	ra,24(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	00050493          	mv	s1,a0
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	9bc080e7          	jalr	-1604(ra) # 80003400 <cpuid>
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	01013403          	ld	s0,16(sp)
    80003a54:	00d5179b          	slliw	a5,a0,0xd
    80003a58:	0c201737          	lui	a4,0xc201
    80003a5c:	00f707b3          	add	a5,a4,a5
    80003a60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003a64:	00813483          	ld	s1,8(sp)
    80003a68:	02010113          	addi	sp,sp,32
    80003a6c:	00008067          	ret

0000000080003a70 <consolewrite>:
    80003a70:	fb010113          	addi	sp,sp,-80
    80003a74:	04813023          	sd	s0,64(sp)
    80003a78:	04113423          	sd	ra,72(sp)
    80003a7c:	02913c23          	sd	s1,56(sp)
    80003a80:	03213823          	sd	s2,48(sp)
    80003a84:	03313423          	sd	s3,40(sp)
    80003a88:	03413023          	sd	s4,32(sp)
    80003a8c:	01513c23          	sd	s5,24(sp)
    80003a90:	05010413          	addi	s0,sp,80
    80003a94:	06c05c63          	blez	a2,80003b0c <consolewrite+0x9c>
    80003a98:	00060993          	mv	s3,a2
    80003a9c:	00050a13          	mv	s4,a0
    80003aa0:	00058493          	mv	s1,a1
    80003aa4:	00000913          	li	s2,0
    80003aa8:	fff00a93          	li	s5,-1
    80003aac:	01c0006f          	j	80003ac8 <consolewrite+0x58>
    80003ab0:	fbf44503          	lbu	a0,-65(s0)
    80003ab4:	0019091b          	addiw	s2,s2,1
    80003ab8:	00148493          	addi	s1,s1,1
    80003abc:	00001097          	auipc	ra,0x1
    80003ac0:	a9c080e7          	jalr	-1380(ra) # 80004558 <uartputc>
    80003ac4:	03298063          	beq	s3,s2,80003ae4 <consolewrite+0x74>
    80003ac8:	00048613          	mv	a2,s1
    80003acc:	00100693          	li	a3,1
    80003ad0:	000a0593          	mv	a1,s4
    80003ad4:	fbf40513          	addi	a0,s0,-65
    80003ad8:	00000097          	auipc	ra,0x0
    80003adc:	9e0080e7          	jalr	-1568(ra) # 800034b8 <either_copyin>
    80003ae0:	fd5518e3          	bne	a0,s5,80003ab0 <consolewrite+0x40>
    80003ae4:	04813083          	ld	ra,72(sp)
    80003ae8:	04013403          	ld	s0,64(sp)
    80003aec:	03813483          	ld	s1,56(sp)
    80003af0:	02813983          	ld	s3,40(sp)
    80003af4:	02013a03          	ld	s4,32(sp)
    80003af8:	01813a83          	ld	s5,24(sp)
    80003afc:	00090513          	mv	a0,s2
    80003b00:	03013903          	ld	s2,48(sp)
    80003b04:	05010113          	addi	sp,sp,80
    80003b08:	00008067          	ret
    80003b0c:	00000913          	li	s2,0
    80003b10:	fd5ff06f          	j	80003ae4 <consolewrite+0x74>

0000000080003b14 <consoleread>:
    80003b14:	f9010113          	addi	sp,sp,-112
    80003b18:	06813023          	sd	s0,96(sp)
    80003b1c:	04913c23          	sd	s1,88(sp)
    80003b20:	05213823          	sd	s2,80(sp)
    80003b24:	05313423          	sd	s3,72(sp)
    80003b28:	05413023          	sd	s4,64(sp)
    80003b2c:	03513c23          	sd	s5,56(sp)
    80003b30:	03613823          	sd	s6,48(sp)
    80003b34:	03713423          	sd	s7,40(sp)
    80003b38:	03813023          	sd	s8,32(sp)
    80003b3c:	06113423          	sd	ra,104(sp)
    80003b40:	01913c23          	sd	s9,24(sp)
    80003b44:	07010413          	addi	s0,sp,112
    80003b48:	00060b93          	mv	s7,a2
    80003b4c:	00050913          	mv	s2,a0
    80003b50:	00058c13          	mv	s8,a1
    80003b54:	00060b1b          	sext.w	s6,a2
    80003b58:	00005497          	auipc	s1,0x5
    80003b5c:	8c048493          	addi	s1,s1,-1856 # 80008418 <cons>
    80003b60:	00400993          	li	s3,4
    80003b64:	fff00a13          	li	s4,-1
    80003b68:	00a00a93          	li	s5,10
    80003b6c:	05705e63          	blez	s7,80003bc8 <consoleread+0xb4>
    80003b70:	09c4a703          	lw	a4,156(s1)
    80003b74:	0984a783          	lw	a5,152(s1)
    80003b78:	0007071b          	sext.w	a4,a4
    80003b7c:	08e78463          	beq	a5,a4,80003c04 <consoleread+0xf0>
    80003b80:	07f7f713          	andi	a4,a5,127
    80003b84:	00e48733          	add	a4,s1,a4
    80003b88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003b8c:	0017869b          	addiw	a3,a5,1
    80003b90:	08d4ac23          	sw	a3,152(s1)
    80003b94:	00070c9b          	sext.w	s9,a4
    80003b98:	0b370663          	beq	a4,s3,80003c44 <consoleread+0x130>
    80003b9c:	00100693          	li	a3,1
    80003ba0:	f9f40613          	addi	a2,s0,-97
    80003ba4:	000c0593          	mv	a1,s8
    80003ba8:	00090513          	mv	a0,s2
    80003bac:	f8e40fa3          	sb	a4,-97(s0)
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	8bc080e7          	jalr	-1860(ra) # 8000346c <either_copyout>
    80003bb8:	01450863          	beq	a0,s4,80003bc8 <consoleread+0xb4>
    80003bbc:	001c0c13          	addi	s8,s8,1
    80003bc0:	fffb8b9b          	addiw	s7,s7,-1
    80003bc4:	fb5c94e3          	bne	s9,s5,80003b6c <consoleread+0x58>
    80003bc8:	000b851b          	sext.w	a0,s7
    80003bcc:	06813083          	ld	ra,104(sp)
    80003bd0:	06013403          	ld	s0,96(sp)
    80003bd4:	05813483          	ld	s1,88(sp)
    80003bd8:	05013903          	ld	s2,80(sp)
    80003bdc:	04813983          	ld	s3,72(sp)
    80003be0:	04013a03          	ld	s4,64(sp)
    80003be4:	03813a83          	ld	s5,56(sp)
    80003be8:	02813b83          	ld	s7,40(sp)
    80003bec:	02013c03          	ld	s8,32(sp)
    80003bf0:	01813c83          	ld	s9,24(sp)
    80003bf4:	40ab053b          	subw	a0,s6,a0
    80003bf8:	03013b03          	ld	s6,48(sp)
    80003bfc:	07010113          	addi	sp,sp,112
    80003c00:	00008067          	ret
    80003c04:	00001097          	auipc	ra,0x1
    80003c08:	1d8080e7          	jalr	472(ra) # 80004ddc <push_on>
    80003c0c:	0984a703          	lw	a4,152(s1)
    80003c10:	09c4a783          	lw	a5,156(s1)
    80003c14:	0007879b          	sext.w	a5,a5
    80003c18:	fef70ce3          	beq	a4,a5,80003c10 <consoleread+0xfc>
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	234080e7          	jalr	564(ra) # 80004e50 <pop_on>
    80003c24:	0984a783          	lw	a5,152(s1)
    80003c28:	07f7f713          	andi	a4,a5,127
    80003c2c:	00e48733          	add	a4,s1,a4
    80003c30:	01874703          	lbu	a4,24(a4)
    80003c34:	0017869b          	addiw	a3,a5,1
    80003c38:	08d4ac23          	sw	a3,152(s1)
    80003c3c:	00070c9b          	sext.w	s9,a4
    80003c40:	f5371ee3          	bne	a4,s3,80003b9c <consoleread+0x88>
    80003c44:	000b851b          	sext.w	a0,s7
    80003c48:	f96bf2e3          	bgeu	s7,s6,80003bcc <consoleread+0xb8>
    80003c4c:	08f4ac23          	sw	a5,152(s1)
    80003c50:	f7dff06f          	j	80003bcc <consoleread+0xb8>

0000000080003c54 <consputc>:
    80003c54:	10000793          	li	a5,256
    80003c58:	00f50663          	beq	a0,a5,80003c64 <consputc+0x10>
    80003c5c:	00001317          	auipc	t1,0x1
    80003c60:	9f430067          	jr	-1548(t1) # 80004650 <uartputc_sync>
    80003c64:	ff010113          	addi	sp,sp,-16
    80003c68:	00113423          	sd	ra,8(sp)
    80003c6c:	00813023          	sd	s0,0(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	00800513          	li	a0,8
    80003c78:	00001097          	auipc	ra,0x1
    80003c7c:	9d8080e7          	jalr	-1576(ra) # 80004650 <uartputc_sync>
    80003c80:	02000513          	li	a0,32
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	9cc080e7          	jalr	-1588(ra) # 80004650 <uartputc_sync>
    80003c8c:	00013403          	ld	s0,0(sp)
    80003c90:	00813083          	ld	ra,8(sp)
    80003c94:	00800513          	li	a0,8
    80003c98:	01010113          	addi	sp,sp,16
    80003c9c:	00001317          	auipc	t1,0x1
    80003ca0:	9b430067          	jr	-1612(t1) # 80004650 <uartputc_sync>

0000000080003ca4 <consoleintr>:
    80003ca4:	fe010113          	addi	sp,sp,-32
    80003ca8:	00813823          	sd	s0,16(sp)
    80003cac:	00913423          	sd	s1,8(sp)
    80003cb0:	01213023          	sd	s2,0(sp)
    80003cb4:	00113c23          	sd	ra,24(sp)
    80003cb8:	02010413          	addi	s0,sp,32
    80003cbc:	00004917          	auipc	s2,0x4
    80003cc0:	75c90913          	addi	s2,s2,1884 # 80008418 <cons>
    80003cc4:	00050493          	mv	s1,a0
    80003cc8:	00090513          	mv	a0,s2
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	e40080e7          	jalr	-448(ra) # 80004b0c <acquire>
    80003cd4:	02048c63          	beqz	s1,80003d0c <consoleintr+0x68>
    80003cd8:	0a092783          	lw	a5,160(s2)
    80003cdc:	09892703          	lw	a4,152(s2)
    80003ce0:	07f00693          	li	a3,127
    80003ce4:	40e7873b          	subw	a4,a5,a4
    80003ce8:	02e6e263          	bltu	a3,a4,80003d0c <consoleintr+0x68>
    80003cec:	00d00713          	li	a4,13
    80003cf0:	04e48063          	beq	s1,a4,80003d30 <consoleintr+0x8c>
    80003cf4:	07f7f713          	andi	a4,a5,127
    80003cf8:	00e90733          	add	a4,s2,a4
    80003cfc:	0017879b          	addiw	a5,a5,1
    80003d00:	0af92023          	sw	a5,160(s2)
    80003d04:	00970c23          	sb	s1,24(a4)
    80003d08:	08f92e23          	sw	a5,156(s2)
    80003d0c:	01013403          	ld	s0,16(sp)
    80003d10:	01813083          	ld	ra,24(sp)
    80003d14:	00813483          	ld	s1,8(sp)
    80003d18:	00013903          	ld	s2,0(sp)
    80003d1c:	00004517          	auipc	a0,0x4
    80003d20:	6fc50513          	addi	a0,a0,1788 # 80008418 <cons>
    80003d24:	02010113          	addi	sp,sp,32
    80003d28:	00001317          	auipc	t1,0x1
    80003d2c:	eb030067          	jr	-336(t1) # 80004bd8 <release>
    80003d30:	00a00493          	li	s1,10
    80003d34:	fc1ff06f          	j	80003cf4 <consoleintr+0x50>

0000000080003d38 <consoleinit>:
    80003d38:	fe010113          	addi	sp,sp,-32
    80003d3c:	00113c23          	sd	ra,24(sp)
    80003d40:	00813823          	sd	s0,16(sp)
    80003d44:	00913423          	sd	s1,8(sp)
    80003d48:	02010413          	addi	s0,sp,32
    80003d4c:	00004497          	auipc	s1,0x4
    80003d50:	6cc48493          	addi	s1,s1,1740 # 80008418 <cons>
    80003d54:	00048513          	mv	a0,s1
    80003d58:	00002597          	auipc	a1,0x2
    80003d5c:	63858593          	addi	a1,a1,1592 # 80006390 <_ZZ12printIntegermE6digits+0x280>
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	d88080e7          	jalr	-632(ra) # 80004ae8 <initlock>
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	7ac080e7          	jalr	1964(ra) # 80004514 <uartinit>
    80003d70:	01813083          	ld	ra,24(sp)
    80003d74:	01013403          	ld	s0,16(sp)
    80003d78:	00000797          	auipc	a5,0x0
    80003d7c:	d9c78793          	addi	a5,a5,-612 # 80003b14 <consoleread>
    80003d80:	0af4bc23          	sd	a5,184(s1)
    80003d84:	00000797          	auipc	a5,0x0
    80003d88:	cec78793          	addi	a5,a5,-788 # 80003a70 <consolewrite>
    80003d8c:	0cf4b023          	sd	a5,192(s1)
    80003d90:	00813483          	ld	s1,8(sp)
    80003d94:	02010113          	addi	sp,sp,32
    80003d98:	00008067          	ret

0000000080003d9c <console_read>:
    80003d9c:	ff010113          	addi	sp,sp,-16
    80003da0:	00813423          	sd	s0,8(sp)
    80003da4:	01010413          	addi	s0,sp,16
    80003da8:	00813403          	ld	s0,8(sp)
    80003dac:	00004317          	auipc	t1,0x4
    80003db0:	72433303          	ld	t1,1828(t1) # 800084d0 <devsw+0x10>
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00030067          	jr	t1

0000000080003dbc <console_write>:
    80003dbc:	ff010113          	addi	sp,sp,-16
    80003dc0:	00813423          	sd	s0,8(sp)
    80003dc4:	01010413          	addi	s0,sp,16
    80003dc8:	00813403          	ld	s0,8(sp)
    80003dcc:	00004317          	auipc	t1,0x4
    80003dd0:	70c33303          	ld	t1,1804(t1) # 800084d8 <devsw+0x18>
    80003dd4:	01010113          	addi	sp,sp,16
    80003dd8:	00030067          	jr	t1

0000000080003ddc <panic>:
    80003ddc:	fe010113          	addi	sp,sp,-32
    80003de0:	00113c23          	sd	ra,24(sp)
    80003de4:	00813823          	sd	s0,16(sp)
    80003de8:	00913423          	sd	s1,8(sp)
    80003dec:	02010413          	addi	s0,sp,32
    80003df0:	00050493          	mv	s1,a0
    80003df4:	00002517          	auipc	a0,0x2
    80003df8:	5a450513          	addi	a0,a0,1444 # 80006398 <_ZZ12printIntegermE6digits+0x288>
    80003dfc:	00004797          	auipc	a5,0x4
    80003e00:	7607ae23          	sw	zero,1916(a5) # 80008578 <pr+0x18>
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	034080e7          	jalr	52(ra) # 80003e38 <__printf>
    80003e0c:	00048513          	mv	a0,s1
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	028080e7          	jalr	40(ra) # 80003e38 <__printf>
    80003e18:	00002517          	auipc	a0,0x2
    80003e1c:	44850513          	addi	a0,a0,1096 # 80006260 <_ZZ12printIntegermE6digits+0x150>
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	018080e7          	jalr	24(ra) # 80003e38 <__printf>
    80003e28:	00100793          	li	a5,1
    80003e2c:	00003717          	auipc	a4,0x3
    80003e30:	4af72e23          	sw	a5,1212(a4) # 800072e8 <panicked>
    80003e34:	0000006f          	j	80003e34 <panic+0x58>

0000000080003e38 <__printf>:
    80003e38:	f3010113          	addi	sp,sp,-208
    80003e3c:	08813023          	sd	s0,128(sp)
    80003e40:	07313423          	sd	s3,104(sp)
    80003e44:	09010413          	addi	s0,sp,144
    80003e48:	05813023          	sd	s8,64(sp)
    80003e4c:	08113423          	sd	ra,136(sp)
    80003e50:	06913c23          	sd	s1,120(sp)
    80003e54:	07213823          	sd	s2,112(sp)
    80003e58:	07413023          	sd	s4,96(sp)
    80003e5c:	05513c23          	sd	s5,88(sp)
    80003e60:	05613823          	sd	s6,80(sp)
    80003e64:	05713423          	sd	s7,72(sp)
    80003e68:	03913c23          	sd	s9,56(sp)
    80003e6c:	03a13823          	sd	s10,48(sp)
    80003e70:	03b13423          	sd	s11,40(sp)
    80003e74:	00004317          	auipc	t1,0x4
    80003e78:	6ec30313          	addi	t1,t1,1772 # 80008560 <pr>
    80003e7c:	01832c03          	lw	s8,24(t1)
    80003e80:	00b43423          	sd	a1,8(s0)
    80003e84:	00c43823          	sd	a2,16(s0)
    80003e88:	00d43c23          	sd	a3,24(s0)
    80003e8c:	02e43023          	sd	a4,32(s0)
    80003e90:	02f43423          	sd	a5,40(s0)
    80003e94:	03043823          	sd	a6,48(s0)
    80003e98:	03143c23          	sd	a7,56(s0)
    80003e9c:	00050993          	mv	s3,a0
    80003ea0:	4a0c1663          	bnez	s8,8000434c <__printf+0x514>
    80003ea4:	60098c63          	beqz	s3,800044bc <__printf+0x684>
    80003ea8:	0009c503          	lbu	a0,0(s3)
    80003eac:	00840793          	addi	a5,s0,8
    80003eb0:	f6f43c23          	sd	a5,-136(s0)
    80003eb4:	00000493          	li	s1,0
    80003eb8:	22050063          	beqz	a0,800040d8 <__printf+0x2a0>
    80003ebc:	00002a37          	lui	s4,0x2
    80003ec0:	00018ab7          	lui	s5,0x18
    80003ec4:	000f4b37          	lui	s6,0xf4
    80003ec8:	00989bb7          	lui	s7,0x989
    80003ecc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003ed0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003ed4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003ed8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003edc:	00148c9b          	addiw	s9,s1,1
    80003ee0:	02500793          	li	a5,37
    80003ee4:	01998933          	add	s2,s3,s9
    80003ee8:	38f51263          	bne	a0,a5,8000426c <__printf+0x434>
    80003eec:	00094783          	lbu	a5,0(s2)
    80003ef0:	00078c9b          	sext.w	s9,a5
    80003ef4:	1e078263          	beqz	a5,800040d8 <__printf+0x2a0>
    80003ef8:	0024849b          	addiw	s1,s1,2
    80003efc:	07000713          	li	a4,112
    80003f00:	00998933          	add	s2,s3,s1
    80003f04:	38e78a63          	beq	a5,a4,80004298 <__printf+0x460>
    80003f08:	20f76863          	bltu	a4,a5,80004118 <__printf+0x2e0>
    80003f0c:	42a78863          	beq	a5,a0,8000433c <__printf+0x504>
    80003f10:	06400713          	li	a4,100
    80003f14:	40e79663          	bne	a5,a4,80004320 <__printf+0x4e8>
    80003f18:	f7843783          	ld	a5,-136(s0)
    80003f1c:	0007a603          	lw	a2,0(a5)
    80003f20:	00878793          	addi	a5,a5,8
    80003f24:	f6f43c23          	sd	a5,-136(s0)
    80003f28:	42064a63          	bltz	a2,8000435c <__printf+0x524>
    80003f2c:	00a00713          	li	a4,10
    80003f30:	02e677bb          	remuw	a5,a2,a4
    80003f34:	00002d97          	auipc	s11,0x2
    80003f38:	48cd8d93          	addi	s11,s11,1164 # 800063c0 <digits>
    80003f3c:	00900593          	li	a1,9
    80003f40:	0006051b          	sext.w	a0,a2
    80003f44:	00000c93          	li	s9,0
    80003f48:	02079793          	slli	a5,a5,0x20
    80003f4c:	0207d793          	srli	a5,a5,0x20
    80003f50:	00fd87b3          	add	a5,s11,a5
    80003f54:	0007c783          	lbu	a5,0(a5)
    80003f58:	02e656bb          	divuw	a3,a2,a4
    80003f5c:	f8f40023          	sb	a5,-128(s0)
    80003f60:	14c5d863          	bge	a1,a2,800040b0 <__printf+0x278>
    80003f64:	06300593          	li	a1,99
    80003f68:	00100c93          	li	s9,1
    80003f6c:	02e6f7bb          	remuw	a5,a3,a4
    80003f70:	02079793          	slli	a5,a5,0x20
    80003f74:	0207d793          	srli	a5,a5,0x20
    80003f78:	00fd87b3          	add	a5,s11,a5
    80003f7c:	0007c783          	lbu	a5,0(a5)
    80003f80:	02e6d73b          	divuw	a4,a3,a4
    80003f84:	f8f400a3          	sb	a5,-127(s0)
    80003f88:	12a5f463          	bgeu	a1,a0,800040b0 <__printf+0x278>
    80003f8c:	00a00693          	li	a3,10
    80003f90:	00900593          	li	a1,9
    80003f94:	02d777bb          	remuw	a5,a4,a3
    80003f98:	02079793          	slli	a5,a5,0x20
    80003f9c:	0207d793          	srli	a5,a5,0x20
    80003fa0:	00fd87b3          	add	a5,s11,a5
    80003fa4:	0007c503          	lbu	a0,0(a5)
    80003fa8:	02d757bb          	divuw	a5,a4,a3
    80003fac:	f8a40123          	sb	a0,-126(s0)
    80003fb0:	48e5f263          	bgeu	a1,a4,80004434 <__printf+0x5fc>
    80003fb4:	06300513          	li	a0,99
    80003fb8:	02d7f5bb          	remuw	a1,a5,a3
    80003fbc:	02059593          	slli	a1,a1,0x20
    80003fc0:	0205d593          	srli	a1,a1,0x20
    80003fc4:	00bd85b3          	add	a1,s11,a1
    80003fc8:	0005c583          	lbu	a1,0(a1)
    80003fcc:	02d7d7bb          	divuw	a5,a5,a3
    80003fd0:	f8b401a3          	sb	a1,-125(s0)
    80003fd4:	48e57263          	bgeu	a0,a4,80004458 <__printf+0x620>
    80003fd8:	3e700513          	li	a0,999
    80003fdc:	02d7f5bb          	remuw	a1,a5,a3
    80003fe0:	02059593          	slli	a1,a1,0x20
    80003fe4:	0205d593          	srli	a1,a1,0x20
    80003fe8:	00bd85b3          	add	a1,s11,a1
    80003fec:	0005c583          	lbu	a1,0(a1)
    80003ff0:	02d7d7bb          	divuw	a5,a5,a3
    80003ff4:	f8b40223          	sb	a1,-124(s0)
    80003ff8:	46e57663          	bgeu	a0,a4,80004464 <__printf+0x62c>
    80003ffc:	02d7f5bb          	remuw	a1,a5,a3
    80004000:	02059593          	slli	a1,a1,0x20
    80004004:	0205d593          	srli	a1,a1,0x20
    80004008:	00bd85b3          	add	a1,s11,a1
    8000400c:	0005c583          	lbu	a1,0(a1)
    80004010:	02d7d7bb          	divuw	a5,a5,a3
    80004014:	f8b402a3          	sb	a1,-123(s0)
    80004018:	46ea7863          	bgeu	s4,a4,80004488 <__printf+0x650>
    8000401c:	02d7f5bb          	remuw	a1,a5,a3
    80004020:	02059593          	slli	a1,a1,0x20
    80004024:	0205d593          	srli	a1,a1,0x20
    80004028:	00bd85b3          	add	a1,s11,a1
    8000402c:	0005c583          	lbu	a1,0(a1)
    80004030:	02d7d7bb          	divuw	a5,a5,a3
    80004034:	f8b40323          	sb	a1,-122(s0)
    80004038:	3eeaf863          	bgeu	s5,a4,80004428 <__printf+0x5f0>
    8000403c:	02d7f5bb          	remuw	a1,a5,a3
    80004040:	02059593          	slli	a1,a1,0x20
    80004044:	0205d593          	srli	a1,a1,0x20
    80004048:	00bd85b3          	add	a1,s11,a1
    8000404c:	0005c583          	lbu	a1,0(a1)
    80004050:	02d7d7bb          	divuw	a5,a5,a3
    80004054:	f8b403a3          	sb	a1,-121(s0)
    80004058:	42eb7e63          	bgeu	s6,a4,80004494 <__printf+0x65c>
    8000405c:	02d7f5bb          	remuw	a1,a5,a3
    80004060:	02059593          	slli	a1,a1,0x20
    80004064:	0205d593          	srli	a1,a1,0x20
    80004068:	00bd85b3          	add	a1,s11,a1
    8000406c:	0005c583          	lbu	a1,0(a1)
    80004070:	02d7d7bb          	divuw	a5,a5,a3
    80004074:	f8b40423          	sb	a1,-120(s0)
    80004078:	42ebfc63          	bgeu	s7,a4,800044b0 <__printf+0x678>
    8000407c:	02079793          	slli	a5,a5,0x20
    80004080:	0207d793          	srli	a5,a5,0x20
    80004084:	00fd8db3          	add	s11,s11,a5
    80004088:	000dc703          	lbu	a4,0(s11)
    8000408c:	00a00793          	li	a5,10
    80004090:	00900c93          	li	s9,9
    80004094:	f8e404a3          	sb	a4,-119(s0)
    80004098:	00065c63          	bgez	a2,800040b0 <__printf+0x278>
    8000409c:	f9040713          	addi	a4,s0,-112
    800040a0:	00f70733          	add	a4,a4,a5
    800040a4:	02d00693          	li	a3,45
    800040a8:	fed70823          	sb	a3,-16(a4)
    800040ac:	00078c93          	mv	s9,a5
    800040b0:	f8040793          	addi	a5,s0,-128
    800040b4:	01978cb3          	add	s9,a5,s9
    800040b8:	f7f40d13          	addi	s10,s0,-129
    800040bc:	000cc503          	lbu	a0,0(s9)
    800040c0:	fffc8c93          	addi	s9,s9,-1
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	b90080e7          	jalr	-1136(ra) # 80003c54 <consputc>
    800040cc:	ffac98e3          	bne	s9,s10,800040bc <__printf+0x284>
    800040d0:	00094503          	lbu	a0,0(s2)
    800040d4:	e00514e3          	bnez	a0,80003edc <__printf+0xa4>
    800040d8:	1a0c1663          	bnez	s8,80004284 <__printf+0x44c>
    800040dc:	08813083          	ld	ra,136(sp)
    800040e0:	08013403          	ld	s0,128(sp)
    800040e4:	07813483          	ld	s1,120(sp)
    800040e8:	07013903          	ld	s2,112(sp)
    800040ec:	06813983          	ld	s3,104(sp)
    800040f0:	06013a03          	ld	s4,96(sp)
    800040f4:	05813a83          	ld	s5,88(sp)
    800040f8:	05013b03          	ld	s6,80(sp)
    800040fc:	04813b83          	ld	s7,72(sp)
    80004100:	04013c03          	ld	s8,64(sp)
    80004104:	03813c83          	ld	s9,56(sp)
    80004108:	03013d03          	ld	s10,48(sp)
    8000410c:	02813d83          	ld	s11,40(sp)
    80004110:	0d010113          	addi	sp,sp,208
    80004114:	00008067          	ret
    80004118:	07300713          	li	a4,115
    8000411c:	1ce78a63          	beq	a5,a4,800042f0 <__printf+0x4b8>
    80004120:	07800713          	li	a4,120
    80004124:	1ee79e63          	bne	a5,a4,80004320 <__printf+0x4e8>
    80004128:	f7843783          	ld	a5,-136(s0)
    8000412c:	0007a703          	lw	a4,0(a5)
    80004130:	00878793          	addi	a5,a5,8
    80004134:	f6f43c23          	sd	a5,-136(s0)
    80004138:	28074263          	bltz	a4,800043bc <__printf+0x584>
    8000413c:	00002d97          	auipc	s11,0x2
    80004140:	284d8d93          	addi	s11,s11,644 # 800063c0 <digits>
    80004144:	00f77793          	andi	a5,a4,15
    80004148:	00fd87b3          	add	a5,s11,a5
    8000414c:	0007c683          	lbu	a3,0(a5)
    80004150:	00f00613          	li	a2,15
    80004154:	0007079b          	sext.w	a5,a4
    80004158:	f8d40023          	sb	a3,-128(s0)
    8000415c:	0047559b          	srliw	a1,a4,0x4
    80004160:	0047569b          	srliw	a3,a4,0x4
    80004164:	00000c93          	li	s9,0
    80004168:	0ee65063          	bge	a2,a4,80004248 <__printf+0x410>
    8000416c:	00f6f693          	andi	a3,a3,15
    80004170:	00dd86b3          	add	a3,s11,a3
    80004174:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004178:	0087d79b          	srliw	a5,a5,0x8
    8000417c:	00100c93          	li	s9,1
    80004180:	f8d400a3          	sb	a3,-127(s0)
    80004184:	0cb67263          	bgeu	a2,a1,80004248 <__printf+0x410>
    80004188:	00f7f693          	andi	a3,a5,15
    8000418c:	00dd86b3          	add	a3,s11,a3
    80004190:	0006c583          	lbu	a1,0(a3)
    80004194:	00f00613          	li	a2,15
    80004198:	0047d69b          	srliw	a3,a5,0x4
    8000419c:	f8b40123          	sb	a1,-126(s0)
    800041a0:	0047d593          	srli	a1,a5,0x4
    800041a4:	28f67e63          	bgeu	a2,a5,80004440 <__printf+0x608>
    800041a8:	00f6f693          	andi	a3,a3,15
    800041ac:	00dd86b3          	add	a3,s11,a3
    800041b0:	0006c503          	lbu	a0,0(a3)
    800041b4:	0087d813          	srli	a6,a5,0x8
    800041b8:	0087d69b          	srliw	a3,a5,0x8
    800041bc:	f8a401a3          	sb	a0,-125(s0)
    800041c0:	28b67663          	bgeu	a2,a1,8000444c <__printf+0x614>
    800041c4:	00f6f693          	andi	a3,a3,15
    800041c8:	00dd86b3          	add	a3,s11,a3
    800041cc:	0006c583          	lbu	a1,0(a3)
    800041d0:	00c7d513          	srli	a0,a5,0xc
    800041d4:	00c7d69b          	srliw	a3,a5,0xc
    800041d8:	f8b40223          	sb	a1,-124(s0)
    800041dc:	29067a63          	bgeu	a2,a6,80004470 <__printf+0x638>
    800041e0:	00f6f693          	andi	a3,a3,15
    800041e4:	00dd86b3          	add	a3,s11,a3
    800041e8:	0006c583          	lbu	a1,0(a3)
    800041ec:	0107d813          	srli	a6,a5,0x10
    800041f0:	0107d69b          	srliw	a3,a5,0x10
    800041f4:	f8b402a3          	sb	a1,-123(s0)
    800041f8:	28a67263          	bgeu	a2,a0,8000447c <__printf+0x644>
    800041fc:	00f6f693          	andi	a3,a3,15
    80004200:	00dd86b3          	add	a3,s11,a3
    80004204:	0006c683          	lbu	a3,0(a3)
    80004208:	0147d79b          	srliw	a5,a5,0x14
    8000420c:	f8d40323          	sb	a3,-122(s0)
    80004210:	21067663          	bgeu	a2,a6,8000441c <__printf+0x5e4>
    80004214:	02079793          	slli	a5,a5,0x20
    80004218:	0207d793          	srli	a5,a5,0x20
    8000421c:	00fd8db3          	add	s11,s11,a5
    80004220:	000dc683          	lbu	a3,0(s11)
    80004224:	00800793          	li	a5,8
    80004228:	00700c93          	li	s9,7
    8000422c:	f8d403a3          	sb	a3,-121(s0)
    80004230:	00075c63          	bgez	a4,80004248 <__printf+0x410>
    80004234:	f9040713          	addi	a4,s0,-112
    80004238:	00f70733          	add	a4,a4,a5
    8000423c:	02d00693          	li	a3,45
    80004240:	fed70823          	sb	a3,-16(a4)
    80004244:	00078c93          	mv	s9,a5
    80004248:	f8040793          	addi	a5,s0,-128
    8000424c:	01978cb3          	add	s9,a5,s9
    80004250:	f7f40d13          	addi	s10,s0,-129
    80004254:	000cc503          	lbu	a0,0(s9)
    80004258:	fffc8c93          	addi	s9,s9,-1
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	9f8080e7          	jalr	-1544(ra) # 80003c54 <consputc>
    80004264:	ff9d18e3          	bne	s10,s9,80004254 <__printf+0x41c>
    80004268:	0100006f          	j	80004278 <__printf+0x440>
    8000426c:	00000097          	auipc	ra,0x0
    80004270:	9e8080e7          	jalr	-1560(ra) # 80003c54 <consputc>
    80004274:	000c8493          	mv	s1,s9
    80004278:	00094503          	lbu	a0,0(s2)
    8000427c:	c60510e3          	bnez	a0,80003edc <__printf+0xa4>
    80004280:	e40c0ee3          	beqz	s8,800040dc <__printf+0x2a4>
    80004284:	00004517          	auipc	a0,0x4
    80004288:	2dc50513          	addi	a0,a0,732 # 80008560 <pr>
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	94c080e7          	jalr	-1716(ra) # 80004bd8 <release>
    80004294:	e49ff06f          	j	800040dc <__printf+0x2a4>
    80004298:	f7843783          	ld	a5,-136(s0)
    8000429c:	03000513          	li	a0,48
    800042a0:	01000d13          	li	s10,16
    800042a4:	00878713          	addi	a4,a5,8
    800042a8:	0007bc83          	ld	s9,0(a5)
    800042ac:	f6e43c23          	sd	a4,-136(s0)
    800042b0:	00000097          	auipc	ra,0x0
    800042b4:	9a4080e7          	jalr	-1628(ra) # 80003c54 <consputc>
    800042b8:	07800513          	li	a0,120
    800042bc:	00000097          	auipc	ra,0x0
    800042c0:	998080e7          	jalr	-1640(ra) # 80003c54 <consputc>
    800042c4:	00002d97          	auipc	s11,0x2
    800042c8:	0fcd8d93          	addi	s11,s11,252 # 800063c0 <digits>
    800042cc:	03ccd793          	srli	a5,s9,0x3c
    800042d0:	00fd87b3          	add	a5,s11,a5
    800042d4:	0007c503          	lbu	a0,0(a5)
    800042d8:	fffd0d1b          	addiw	s10,s10,-1
    800042dc:	004c9c93          	slli	s9,s9,0x4
    800042e0:	00000097          	auipc	ra,0x0
    800042e4:	974080e7          	jalr	-1676(ra) # 80003c54 <consputc>
    800042e8:	fe0d12e3          	bnez	s10,800042cc <__printf+0x494>
    800042ec:	f8dff06f          	j	80004278 <__printf+0x440>
    800042f0:	f7843783          	ld	a5,-136(s0)
    800042f4:	0007bc83          	ld	s9,0(a5)
    800042f8:	00878793          	addi	a5,a5,8
    800042fc:	f6f43c23          	sd	a5,-136(s0)
    80004300:	000c9a63          	bnez	s9,80004314 <__printf+0x4dc>
    80004304:	1080006f          	j	8000440c <__printf+0x5d4>
    80004308:	001c8c93          	addi	s9,s9,1
    8000430c:	00000097          	auipc	ra,0x0
    80004310:	948080e7          	jalr	-1720(ra) # 80003c54 <consputc>
    80004314:	000cc503          	lbu	a0,0(s9)
    80004318:	fe0518e3          	bnez	a0,80004308 <__printf+0x4d0>
    8000431c:	f5dff06f          	j	80004278 <__printf+0x440>
    80004320:	02500513          	li	a0,37
    80004324:	00000097          	auipc	ra,0x0
    80004328:	930080e7          	jalr	-1744(ra) # 80003c54 <consputc>
    8000432c:	000c8513          	mv	a0,s9
    80004330:	00000097          	auipc	ra,0x0
    80004334:	924080e7          	jalr	-1756(ra) # 80003c54 <consputc>
    80004338:	f41ff06f          	j	80004278 <__printf+0x440>
    8000433c:	02500513          	li	a0,37
    80004340:	00000097          	auipc	ra,0x0
    80004344:	914080e7          	jalr	-1772(ra) # 80003c54 <consputc>
    80004348:	f31ff06f          	j	80004278 <__printf+0x440>
    8000434c:	00030513          	mv	a0,t1
    80004350:	00000097          	auipc	ra,0x0
    80004354:	7bc080e7          	jalr	1980(ra) # 80004b0c <acquire>
    80004358:	b4dff06f          	j	80003ea4 <__printf+0x6c>
    8000435c:	40c0053b          	negw	a0,a2
    80004360:	00a00713          	li	a4,10
    80004364:	02e576bb          	remuw	a3,a0,a4
    80004368:	00002d97          	auipc	s11,0x2
    8000436c:	058d8d93          	addi	s11,s11,88 # 800063c0 <digits>
    80004370:	ff700593          	li	a1,-9
    80004374:	02069693          	slli	a3,a3,0x20
    80004378:	0206d693          	srli	a3,a3,0x20
    8000437c:	00dd86b3          	add	a3,s11,a3
    80004380:	0006c683          	lbu	a3,0(a3)
    80004384:	02e557bb          	divuw	a5,a0,a4
    80004388:	f8d40023          	sb	a3,-128(s0)
    8000438c:	10b65e63          	bge	a2,a1,800044a8 <__printf+0x670>
    80004390:	06300593          	li	a1,99
    80004394:	02e7f6bb          	remuw	a3,a5,a4
    80004398:	02069693          	slli	a3,a3,0x20
    8000439c:	0206d693          	srli	a3,a3,0x20
    800043a0:	00dd86b3          	add	a3,s11,a3
    800043a4:	0006c683          	lbu	a3,0(a3)
    800043a8:	02e7d73b          	divuw	a4,a5,a4
    800043ac:	00200793          	li	a5,2
    800043b0:	f8d400a3          	sb	a3,-127(s0)
    800043b4:	bca5ece3          	bltu	a1,a0,80003f8c <__printf+0x154>
    800043b8:	ce5ff06f          	j	8000409c <__printf+0x264>
    800043bc:	40e007bb          	negw	a5,a4
    800043c0:	00002d97          	auipc	s11,0x2
    800043c4:	000d8d93          	mv	s11,s11
    800043c8:	00f7f693          	andi	a3,a5,15
    800043cc:	00dd86b3          	add	a3,s11,a3
    800043d0:	0006c583          	lbu	a1,0(a3)
    800043d4:	ff100613          	li	a2,-15
    800043d8:	0047d69b          	srliw	a3,a5,0x4
    800043dc:	f8b40023          	sb	a1,-128(s0)
    800043e0:	0047d59b          	srliw	a1,a5,0x4
    800043e4:	0ac75e63          	bge	a4,a2,800044a0 <__printf+0x668>
    800043e8:	00f6f693          	andi	a3,a3,15
    800043ec:	00dd86b3          	add	a3,s11,a3
    800043f0:	0006c603          	lbu	a2,0(a3)
    800043f4:	00f00693          	li	a3,15
    800043f8:	0087d79b          	srliw	a5,a5,0x8
    800043fc:	f8c400a3          	sb	a2,-127(s0)
    80004400:	d8b6e4e3          	bltu	a3,a1,80004188 <__printf+0x350>
    80004404:	00200793          	li	a5,2
    80004408:	e2dff06f          	j	80004234 <__printf+0x3fc>
    8000440c:	00002c97          	auipc	s9,0x2
    80004410:	f94c8c93          	addi	s9,s9,-108 # 800063a0 <_ZZ12printIntegermE6digits+0x290>
    80004414:	02800513          	li	a0,40
    80004418:	ef1ff06f          	j	80004308 <__printf+0x4d0>
    8000441c:	00700793          	li	a5,7
    80004420:	00600c93          	li	s9,6
    80004424:	e0dff06f          	j	80004230 <__printf+0x3f8>
    80004428:	00700793          	li	a5,7
    8000442c:	00600c93          	li	s9,6
    80004430:	c69ff06f          	j	80004098 <__printf+0x260>
    80004434:	00300793          	li	a5,3
    80004438:	00200c93          	li	s9,2
    8000443c:	c5dff06f          	j	80004098 <__printf+0x260>
    80004440:	00300793          	li	a5,3
    80004444:	00200c93          	li	s9,2
    80004448:	de9ff06f          	j	80004230 <__printf+0x3f8>
    8000444c:	00400793          	li	a5,4
    80004450:	00300c93          	li	s9,3
    80004454:	dddff06f          	j	80004230 <__printf+0x3f8>
    80004458:	00400793          	li	a5,4
    8000445c:	00300c93          	li	s9,3
    80004460:	c39ff06f          	j	80004098 <__printf+0x260>
    80004464:	00500793          	li	a5,5
    80004468:	00400c93          	li	s9,4
    8000446c:	c2dff06f          	j	80004098 <__printf+0x260>
    80004470:	00500793          	li	a5,5
    80004474:	00400c93          	li	s9,4
    80004478:	db9ff06f          	j	80004230 <__printf+0x3f8>
    8000447c:	00600793          	li	a5,6
    80004480:	00500c93          	li	s9,5
    80004484:	dadff06f          	j	80004230 <__printf+0x3f8>
    80004488:	00600793          	li	a5,6
    8000448c:	00500c93          	li	s9,5
    80004490:	c09ff06f          	j	80004098 <__printf+0x260>
    80004494:	00800793          	li	a5,8
    80004498:	00700c93          	li	s9,7
    8000449c:	bfdff06f          	j	80004098 <__printf+0x260>
    800044a0:	00100793          	li	a5,1
    800044a4:	d91ff06f          	j	80004234 <__printf+0x3fc>
    800044a8:	00100793          	li	a5,1
    800044ac:	bf1ff06f          	j	8000409c <__printf+0x264>
    800044b0:	00900793          	li	a5,9
    800044b4:	00800c93          	li	s9,8
    800044b8:	be1ff06f          	j	80004098 <__printf+0x260>
    800044bc:	00002517          	auipc	a0,0x2
    800044c0:	eec50513          	addi	a0,a0,-276 # 800063a8 <_ZZ12printIntegermE6digits+0x298>
    800044c4:	00000097          	auipc	ra,0x0
    800044c8:	918080e7          	jalr	-1768(ra) # 80003ddc <panic>

00000000800044cc <printfinit>:
    800044cc:	fe010113          	addi	sp,sp,-32
    800044d0:	00813823          	sd	s0,16(sp)
    800044d4:	00913423          	sd	s1,8(sp)
    800044d8:	00113c23          	sd	ra,24(sp)
    800044dc:	02010413          	addi	s0,sp,32
    800044e0:	00004497          	auipc	s1,0x4
    800044e4:	08048493          	addi	s1,s1,128 # 80008560 <pr>
    800044e8:	00048513          	mv	a0,s1
    800044ec:	00002597          	auipc	a1,0x2
    800044f0:	ecc58593          	addi	a1,a1,-308 # 800063b8 <_ZZ12printIntegermE6digits+0x2a8>
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	5f4080e7          	jalr	1524(ra) # 80004ae8 <initlock>
    800044fc:	01813083          	ld	ra,24(sp)
    80004500:	01013403          	ld	s0,16(sp)
    80004504:	0004ac23          	sw	zero,24(s1)
    80004508:	00813483          	ld	s1,8(sp)
    8000450c:	02010113          	addi	sp,sp,32
    80004510:	00008067          	ret

0000000080004514 <uartinit>:
    80004514:	ff010113          	addi	sp,sp,-16
    80004518:	00813423          	sd	s0,8(sp)
    8000451c:	01010413          	addi	s0,sp,16
    80004520:	100007b7          	lui	a5,0x10000
    80004524:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004528:	f8000713          	li	a4,-128
    8000452c:	00e781a3          	sb	a4,3(a5)
    80004530:	00300713          	li	a4,3
    80004534:	00e78023          	sb	a4,0(a5)
    80004538:	000780a3          	sb	zero,1(a5)
    8000453c:	00e781a3          	sb	a4,3(a5)
    80004540:	00700693          	li	a3,7
    80004544:	00d78123          	sb	a3,2(a5)
    80004548:	00e780a3          	sb	a4,1(a5)
    8000454c:	00813403          	ld	s0,8(sp)
    80004550:	01010113          	addi	sp,sp,16
    80004554:	00008067          	ret

0000000080004558 <uartputc>:
    80004558:	00003797          	auipc	a5,0x3
    8000455c:	d907a783          	lw	a5,-624(a5) # 800072e8 <panicked>
    80004560:	00078463          	beqz	a5,80004568 <uartputc+0x10>
    80004564:	0000006f          	j	80004564 <uartputc+0xc>
    80004568:	fd010113          	addi	sp,sp,-48
    8000456c:	02813023          	sd	s0,32(sp)
    80004570:	00913c23          	sd	s1,24(sp)
    80004574:	01213823          	sd	s2,16(sp)
    80004578:	01313423          	sd	s3,8(sp)
    8000457c:	02113423          	sd	ra,40(sp)
    80004580:	03010413          	addi	s0,sp,48
    80004584:	00003917          	auipc	s2,0x3
    80004588:	d6c90913          	addi	s2,s2,-660 # 800072f0 <uart_tx_r>
    8000458c:	00093783          	ld	a5,0(s2)
    80004590:	00003497          	auipc	s1,0x3
    80004594:	d6848493          	addi	s1,s1,-664 # 800072f8 <uart_tx_w>
    80004598:	0004b703          	ld	a4,0(s1)
    8000459c:	02078693          	addi	a3,a5,32
    800045a0:	00050993          	mv	s3,a0
    800045a4:	02e69c63          	bne	a3,a4,800045dc <uartputc+0x84>
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	834080e7          	jalr	-1996(ra) # 80004ddc <push_on>
    800045b0:	00093783          	ld	a5,0(s2)
    800045b4:	0004b703          	ld	a4,0(s1)
    800045b8:	02078793          	addi	a5,a5,32
    800045bc:	00e79463          	bne	a5,a4,800045c4 <uartputc+0x6c>
    800045c0:	0000006f          	j	800045c0 <uartputc+0x68>
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	88c080e7          	jalr	-1908(ra) # 80004e50 <pop_on>
    800045cc:	00093783          	ld	a5,0(s2)
    800045d0:	0004b703          	ld	a4,0(s1)
    800045d4:	02078693          	addi	a3,a5,32
    800045d8:	fce688e3          	beq	a3,a4,800045a8 <uartputc+0x50>
    800045dc:	01f77693          	andi	a3,a4,31
    800045e0:	00004597          	auipc	a1,0x4
    800045e4:	fa058593          	addi	a1,a1,-96 # 80008580 <uart_tx_buf>
    800045e8:	00d586b3          	add	a3,a1,a3
    800045ec:	00170713          	addi	a4,a4,1
    800045f0:	01368023          	sb	s3,0(a3)
    800045f4:	00e4b023          	sd	a4,0(s1)
    800045f8:	10000637          	lui	a2,0x10000
    800045fc:	02f71063          	bne	a4,a5,8000461c <uartputc+0xc4>
    80004600:	0340006f          	j	80004634 <uartputc+0xdc>
    80004604:	00074703          	lbu	a4,0(a4)
    80004608:	00f93023          	sd	a5,0(s2)
    8000460c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004610:	00093783          	ld	a5,0(s2)
    80004614:	0004b703          	ld	a4,0(s1)
    80004618:	00f70e63          	beq	a4,a5,80004634 <uartputc+0xdc>
    8000461c:	00564683          	lbu	a3,5(a2)
    80004620:	01f7f713          	andi	a4,a5,31
    80004624:	00e58733          	add	a4,a1,a4
    80004628:	0206f693          	andi	a3,a3,32
    8000462c:	00178793          	addi	a5,a5,1
    80004630:	fc069ae3          	bnez	a3,80004604 <uartputc+0xac>
    80004634:	02813083          	ld	ra,40(sp)
    80004638:	02013403          	ld	s0,32(sp)
    8000463c:	01813483          	ld	s1,24(sp)
    80004640:	01013903          	ld	s2,16(sp)
    80004644:	00813983          	ld	s3,8(sp)
    80004648:	03010113          	addi	sp,sp,48
    8000464c:	00008067          	ret

0000000080004650 <uartputc_sync>:
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00813423          	sd	s0,8(sp)
    80004658:	01010413          	addi	s0,sp,16
    8000465c:	00003717          	auipc	a4,0x3
    80004660:	c8c72703          	lw	a4,-884(a4) # 800072e8 <panicked>
    80004664:	02071663          	bnez	a4,80004690 <uartputc_sync+0x40>
    80004668:	00050793          	mv	a5,a0
    8000466c:	100006b7          	lui	a3,0x10000
    80004670:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004674:	02077713          	andi	a4,a4,32
    80004678:	fe070ce3          	beqz	a4,80004670 <uartputc_sync+0x20>
    8000467c:	0ff7f793          	andi	a5,a5,255
    80004680:	00f68023          	sb	a5,0(a3)
    80004684:	00813403          	ld	s0,8(sp)
    80004688:	01010113          	addi	sp,sp,16
    8000468c:	00008067          	ret
    80004690:	0000006f          	j	80004690 <uartputc_sync+0x40>

0000000080004694 <uartstart>:
    80004694:	ff010113          	addi	sp,sp,-16
    80004698:	00813423          	sd	s0,8(sp)
    8000469c:	01010413          	addi	s0,sp,16
    800046a0:	00003617          	auipc	a2,0x3
    800046a4:	c5060613          	addi	a2,a2,-944 # 800072f0 <uart_tx_r>
    800046a8:	00003517          	auipc	a0,0x3
    800046ac:	c5050513          	addi	a0,a0,-944 # 800072f8 <uart_tx_w>
    800046b0:	00063783          	ld	a5,0(a2)
    800046b4:	00053703          	ld	a4,0(a0)
    800046b8:	04f70263          	beq	a4,a5,800046fc <uartstart+0x68>
    800046bc:	100005b7          	lui	a1,0x10000
    800046c0:	00004817          	auipc	a6,0x4
    800046c4:	ec080813          	addi	a6,a6,-320 # 80008580 <uart_tx_buf>
    800046c8:	01c0006f          	j	800046e4 <uartstart+0x50>
    800046cc:	0006c703          	lbu	a4,0(a3)
    800046d0:	00f63023          	sd	a5,0(a2)
    800046d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800046d8:	00063783          	ld	a5,0(a2)
    800046dc:	00053703          	ld	a4,0(a0)
    800046e0:	00f70e63          	beq	a4,a5,800046fc <uartstart+0x68>
    800046e4:	01f7f713          	andi	a4,a5,31
    800046e8:	00e806b3          	add	a3,a6,a4
    800046ec:	0055c703          	lbu	a4,5(a1)
    800046f0:	00178793          	addi	a5,a5,1
    800046f4:	02077713          	andi	a4,a4,32
    800046f8:	fc071ae3          	bnez	a4,800046cc <uartstart+0x38>
    800046fc:	00813403          	ld	s0,8(sp)
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <uartgetc>:
    80004708:	ff010113          	addi	sp,sp,-16
    8000470c:	00813423          	sd	s0,8(sp)
    80004710:	01010413          	addi	s0,sp,16
    80004714:	10000737          	lui	a4,0x10000
    80004718:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000471c:	0017f793          	andi	a5,a5,1
    80004720:	00078c63          	beqz	a5,80004738 <uartgetc+0x30>
    80004724:	00074503          	lbu	a0,0(a4)
    80004728:	0ff57513          	andi	a0,a0,255
    8000472c:	00813403          	ld	s0,8(sp)
    80004730:	01010113          	addi	sp,sp,16
    80004734:	00008067          	ret
    80004738:	fff00513          	li	a0,-1
    8000473c:	ff1ff06f          	j	8000472c <uartgetc+0x24>

0000000080004740 <uartintr>:
    80004740:	100007b7          	lui	a5,0x10000
    80004744:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004748:	0017f793          	andi	a5,a5,1
    8000474c:	0a078463          	beqz	a5,800047f4 <uartintr+0xb4>
    80004750:	fe010113          	addi	sp,sp,-32
    80004754:	00813823          	sd	s0,16(sp)
    80004758:	00913423          	sd	s1,8(sp)
    8000475c:	00113c23          	sd	ra,24(sp)
    80004760:	02010413          	addi	s0,sp,32
    80004764:	100004b7          	lui	s1,0x10000
    80004768:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000476c:	0ff57513          	andi	a0,a0,255
    80004770:	fffff097          	auipc	ra,0xfffff
    80004774:	534080e7          	jalr	1332(ra) # 80003ca4 <consoleintr>
    80004778:	0054c783          	lbu	a5,5(s1)
    8000477c:	0017f793          	andi	a5,a5,1
    80004780:	fe0794e3          	bnez	a5,80004768 <uartintr+0x28>
    80004784:	00003617          	auipc	a2,0x3
    80004788:	b6c60613          	addi	a2,a2,-1172 # 800072f0 <uart_tx_r>
    8000478c:	00003517          	auipc	a0,0x3
    80004790:	b6c50513          	addi	a0,a0,-1172 # 800072f8 <uart_tx_w>
    80004794:	00063783          	ld	a5,0(a2)
    80004798:	00053703          	ld	a4,0(a0)
    8000479c:	04f70263          	beq	a4,a5,800047e0 <uartintr+0xa0>
    800047a0:	100005b7          	lui	a1,0x10000
    800047a4:	00004817          	auipc	a6,0x4
    800047a8:	ddc80813          	addi	a6,a6,-548 # 80008580 <uart_tx_buf>
    800047ac:	01c0006f          	j	800047c8 <uartintr+0x88>
    800047b0:	0006c703          	lbu	a4,0(a3)
    800047b4:	00f63023          	sd	a5,0(a2)
    800047b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800047bc:	00063783          	ld	a5,0(a2)
    800047c0:	00053703          	ld	a4,0(a0)
    800047c4:	00f70e63          	beq	a4,a5,800047e0 <uartintr+0xa0>
    800047c8:	01f7f713          	andi	a4,a5,31
    800047cc:	00e806b3          	add	a3,a6,a4
    800047d0:	0055c703          	lbu	a4,5(a1)
    800047d4:	00178793          	addi	a5,a5,1
    800047d8:	02077713          	andi	a4,a4,32
    800047dc:	fc071ae3          	bnez	a4,800047b0 <uartintr+0x70>
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret
    800047f4:	00003617          	auipc	a2,0x3
    800047f8:	afc60613          	addi	a2,a2,-1284 # 800072f0 <uart_tx_r>
    800047fc:	00003517          	auipc	a0,0x3
    80004800:	afc50513          	addi	a0,a0,-1284 # 800072f8 <uart_tx_w>
    80004804:	00063783          	ld	a5,0(a2)
    80004808:	00053703          	ld	a4,0(a0)
    8000480c:	04f70263          	beq	a4,a5,80004850 <uartintr+0x110>
    80004810:	100005b7          	lui	a1,0x10000
    80004814:	00004817          	auipc	a6,0x4
    80004818:	d6c80813          	addi	a6,a6,-660 # 80008580 <uart_tx_buf>
    8000481c:	01c0006f          	j	80004838 <uartintr+0xf8>
    80004820:	0006c703          	lbu	a4,0(a3)
    80004824:	00f63023          	sd	a5,0(a2)
    80004828:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000482c:	00063783          	ld	a5,0(a2)
    80004830:	00053703          	ld	a4,0(a0)
    80004834:	02f70063          	beq	a4,a5,80004854 <uartintr+0x114>
    80004838:	01f7f713          	andi	a4,a5,31
    8000483c:	00e806b3          	add	a3,a6,a4
    80004840:	0055c703          	lbu	a4,5(a1)
    80004844:	00178793          	addi	a5,a5,1
    80004848:	02077713          	andi	a4,a4,32
    8000484c:	fc071ae3          	bnez	a4,80004820 <uartintr+0xe0>
    80004850:	00008067          	ret
    80004854:	00008067          	ret

0000000080004858 <kinit>:
    80004858:	fc010113          	addi	sp,sp,-64
    8000485c:	02913423          	sd	s1,40(sp)
    80004860:	fffff7b7          	lui	a5,0xfffff
    80004864:	00005497          	auipc	s1,0x5
    80004868:	d3b48493          	addi	s1,s1,-709 # 8000959f <end+0xfff>
    8000486c:	02813823          	sd	s0,48(sp)
    80004870:	01313c23          	sd	s3,24(sp)
    80004874:	00f4f4b3          	and	s1,s1,a5
    80004878:	02113c23          	sd	ra,56(sp)
    8000487c:	03213023          	sd	s2,32(sp)
    80004880:	01413823          	sd	s4,16(sp)
    80004884:	01513423          	sd	s5,8(sp)
    80004888:	04010413          	addi	s0,sp,64
    8000488c:	000017b7          	lui	a5,0x1
    80004890:	01100993          	li	s3,17
    80004894:	00f487b3          	add	a5,s1,a5
    80004898:	01b99993          	slli	s3,s3,0x1b
    8000489c:	06f9e063          	bltu	s3,a5,800048fc <kinit+0xa4>
    800048a0:	00004a97          	auipc	s5,0x4
    800048a4:	d00a8a93          	addi	s5,s5,-768 # 800085a0 <end>
    800048a8:	0754ec63          	bltu	s1,s5,80004920 <kinit+0xc8>
    800048ac:	0734fa63          	bgeu	s1,s3,80004920 <kinit+0xc8>
    800048b0:	00088a37          	lui	s4,0x88
    800048b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800048b8:	00003917          	auipc	s2,0x3
    800048bc:	a4890913          	addi	s2,s2,-1464 # 80007300 <kmem>
    800048c0:	00ca1a13          	slli	s4,s4,0xc
    800048c4:	0140006f          	j	800048d8 <kinit+0x80>
    800048c8:	000017b7          	lui	a5,0x1
    800048cc:	00f484b3          	add	s1,s1,a5
    800048d0:	0554e863          	bltu	s1,s5,80004920 <kinit+0xc8>
    800048d4:	0534f663          	bgeu	s1,s3,80004920 <kinit+0xc8>
    800048d8:	00001637          	lui	a2,0x1
    800048dc:	00100593          	li	a1,1
    800048e0:	00048513          	mv	a0,s1
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	5e4080e7          	jalr	1508(ra) # 80004ec8 <__memset>
    800048ec:	00093783          	ld	a5,0(s2)
    800048f0:	00f4b023          	sd	a5,0(s1)
    800048f4:	00993023          	sd	s1,0(s2)
    800048f8:	fd4498e3          	bne	s1,s4,800048c8 <kinit+0x70>
    800048fc:	03813083          	ld	ra,56(sp)
    80004900:	03013403          	ld	s0,48(sp)
    80004904:	02813483          	ld	s1,40(sp)
    80004908:	02013903          	ld	s2,32(sp)
    8000490c:	01813983          	ld	s3,24(sp)
    80004910:	01013a03          	ld	s4,16(sp)
    80004914:	00813a83          	ld	s5,8(sp)
    80004918:	04010113          	addi	sp,sp,64
    8000491c:	00008067          	ret
    80004920:	00002517          	auipc	a0,0x2
    80004924:	ab850513          	addi	a0,a0,-1352 # 800063d8 <digits+0x18>
    80004928:	fffff097          	auipc	ra,0xfffff
    8000492c:	4b4080e7          	jalr	1204(ra) # 80003ddc <panic>

0000000080004930 <freerange>:
    80004930:	fc010113          	addi	sp,sp,-64
    80004934:	000017b7          	lui	a5,0x1
    80004938:	02913423          	sd	s1,40(sp)
    8000493c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004940:	009504b3          	add	s1,a0,s1
    80004944:	fffff537          	lui	a0,0xfffff
    80004948:	02813823          	sd	s0,48(sp)
    8000494c:	02113c23          	sd	ra,56(sp)
    80004950:	03213023          	sd	s2,32(sp)
    80004954:	01313c23          	sd	s3,24(sp)
    80004958:	01413823          	sd	s4,16(sp)
    8000495c:	01513423          	sd	s5,8(sp)
    80004960:	01613023          	sd	s6,0(sp)
    80004964:	04010413          	addi	s0,sp,64
    80004968:	00a4f4b3          	and	s1,s1,a0
    8000496c:	00f487b3          	add	a5,s1,a5
    80004970:	06f5e463          	bltu	a1,a5,800049d8 <freerange+0xa8>
    80004974:	00004a97          	auipc	s5,0x4
    80004978:	c2ca8a93          	addi	s5,s5,-980 # 800085a0 <end>
    8000497c:	0954e263          	bltu	s1,s5,80004a00 <freerange+0xd0>
    80004980:	01100993          	li	s3,17
    80004984:	01b99993          	slli	s3,s3,0x1b
    80004988:	0734fc63          	bgeu	s1,s3,80004a00 <freerange+0xd0>
    8000498c:	00058a13          	mv	s4,a1
    80004990:	00003917          	auipc	s2,0x3
    80004994:	97090913          	addi	s2,s2,-1680 # 80007300 <kmem>
    80004998:	00002b37          	lui	s6,0x2
    8000499c:	0140006f          	j	800049b0 <freerange+0x80>
    800049a0:	000017b7          	lui	a5,0x1
    800049a4:	00f484b3          	add	s1,s1,a5
    800049a8:	0554ec63          	bltu	s1,s5,80004a00 <freerange+0xd0>
    800049ac:	0534fa63          	bgeu	s1,s3,80004a00 <freerange+0xd0>
    800049b0:	00001637          	lui	a2,0x1
    800049b4:	00100593          	li	a1,1
    800049b8:	00048513          	mv	a0,s1
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	50c080e7          	jalr	1292(ra) # 80004ec8 <__memset>
    800049c4:	00093703          	ld	a4,0(s2)
    800049c8:	016487b3          	add	a5,s1,s6
    800049cc:	00e4b023          	sd	a4,0(s1)
    800049d0:	00993023          	sd	s1,0(s2)
    800049d4:	fcfa76e3          	bgeu	s4,a5,800049a0 <freerange+0x70>
    800049d8:	03813083          	ld	ra,56(sp)
    800049dc:	03013403          	ld	s0,48(sp)
    800049e0:	02813483          	ld	s1,40(sp)
    800049e4:	02013903          	ld	s2,32(sp)
    800049e8:	01813983          	ld	s3,24(sp)
    800049ec:	01013a03          	ld	s4,16(sp)
    800049f0:	00813a83          	ld	s5,8(sp)
    800049f4:	00013b03          	ld	s6,0(sp)
    800049f8:	04010113          	addi	sp,sp,64
    800049fc:	00008067          	ret
    80004a00:	00002517          	auipc	a0,0x2
    80004a04:	9d850513          	addi	a0,a0,-1576 # 800063d8 <digits+0x18>
    80004a08:	fffff097          	auipc	ra,0xfffff
    80004a0c:	3d4080e7          	jalr	980(ra) # 80003ddc <panic>

0000000080004a10 <kfree>:
    80004a10:	fe010113          	addi	sp,sp,-32
    80004a14:	00813823          	sd	s0,16(sp)
    80004a18:	00113c23          	sd	ra,24(sp)
    80004a1c:	00913423          	sd	s1,8(sp)
    80004a20:	02010413          	addi	s0,sp,32
    80004a24:	03451793          	slli	a5,a0,0x34
    80004a28:	04079c63          	bnez	a5,80004a80 <kfree+0x70>
    80004a2c:	00004797          	auipc	a5,0x4
    80004a30:	b7478793          	addi	a5,a5,-1164 # 800085a0 <end>
    80004a34:	00050493          	mv	s1,a0
    80004a38:	04f56463          	bltu	a0,a5,80004a80 <kfree+0x70>
    80004a3c:	01100793          	li	a5,17
    80004a40:	01b79793          	slli	a5,a5,0x1b
    80004a44:	02f57e63          	bgeu	a0,a5,80004a80 <kfree+0x70>
    80004a48:	00001637          	lui	a2,0x1
    80004a4c:	00100593          	li	a1,1
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	478080e7          	jalr	1144(ra) # 80004ec8 <__memset>
    80004a58:	00003797          	auipc	a5,0x3
    80004a5c:	8a878793          	addi	a5,a5,-1880 # 80007300 <kmem>
    80004a60:	0007b703          	ld	a4,0(a5)
    80004a64:	01813083          	ld	ra,24(sp)
    80004a68:	01013403          	ld	s0,16(sp)
    80004a6c:	00e4b023          	sd	a4,0(s1)
    80004a70:	0097b023          	sd	s1,0(a5)
    80004a74:	00813483          	ld	s1,8(sp)
    80004a78:	02010113          	addi	sp,sp,32
    80004a7c:	00008067          	ret
    80004a80:	00002517          	auipc	a0,0x2
    80004a84:	95850513          	addi	a0,a0,-1704 # 800063d8 <digits+0x18>
    80004a88:	fffff097          	auipc	ra,0xfffff
    80004a8c:	354080e7          	jalr	852(ra) # 80003ddc <panic>

0000000080004a90 <kalloc>:
    80004a90:	fe010113          	addi	sp,sp,-32
    80004a94:	00813823          	sd	s0,16(sp)
    80004a98:	00913423          	sd	s1,8(sp)
    80004a9c:	00113c23          	sd	ra,24(sp)
    80004aa0:	02010413          	addi	s0,sp,32
    80004aa4:	00003797          	auipc	a5,0x3
    80004aa8:	85c78793          	addi	a5,a5,-1956 # 80007300 <kmem>
    80004aac:	0007b483          	ld	s1,0(a5)
    80004ab0:	02048063          	beqz	s1,80004ad0 <kalloc+0x40>
    80004ab4:	0004b703          	ld	a4,0(s1)
    80004ab8:	00001637          	lui	a2,0x1
    80004abc:	00500593          	li	a1,5
    80004ac0:	00048513          	mv	a0,s1
    80004ac4:	00e7b023          	sd	a4,0(a5)
    80004ac8:	00000097          	auipc	ra,0x0
    80004acc:	400080e7          	jalr	1024(ra) # 80004ec8 <__memset>
    80004ad0:	01813083          	ld	ra,24(sp)
    80004ad4:	01013403          	ld	s0,16(sp)
    80004ad8:	00048513          	mv	a0,s1
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	02010113          	addi	sp,sp,32
    80004ae4:	00008067          	ret

0000000080004ae8 <initlock>:
    80004ae8:	ff010113          	addi	sp,sp,-16
    80004aec:	00813423          	sd	s0,8(sp)
    80004af0:	01010413          	addi	s0,sp,16
    80004af4:	00813403          	ld	s0,8(sp)
    80004af8:	00b53423          	sd	a1,8(a0)
    80004afc:	00052023          	sw	zero,0(a0)
    80004b00:	00053823          	sd	zero,16(a0)
    80004b04:	01010113          	addi	sp,sp,16
    80004b08:	00008067          	ret

0000000080004b0c <acquire>:
    80004b0c:	fe010113          	addi	sp,sp,-32
    80004b10:	00813823          	sd	s0,16(sp)
    80004b14:	00913423          	sd	s1,8(sp)
    80004b18:	00113c23          	sd	ra,24(sp)
    80004b1c:	01213023          	sd	s2,0(sp)
    80004b20:	02010413          	addi	s0,sp,32
    80004b24:	00050493          	mv	s1,a0
    80004b28:	10002973          	csrr	s2,sstatus
    80004b2c:	100027f3          	csrr	a5,sstatus
    80004b30:	ffd7f793          	andi	a5,a5,-3
    80004b34:	10079073          	csrw	sstatus,a5
    80004b38:	fffff097          	auipc	ra,0xfffff
    80004b3c:	8e8080e7          	jalr	-1816(ra) # 80003420 <mycpu>
    80004b40:	07852783          	lw	a5,120(a0)
    80004b44:	06078e63          	beqz	a5,80004bc0 <acquire+0xb4>
    80004b48:	fffff097          	auipc	ra,0xfffff
    80004b4c:	8d8080e7          	jalr	-1832(ra) # 80003420 <mycpu>
    80004b50:	07852783          	lw	a5,120(a0)
    80004b54:	0004a703          	lw	a4,0(s1)
    80004b58:	0017879b          	addiw	a5,a5,1
    80004b5c:	06f52c23          	sw	a5,120(a0)
    80004b60:	04071063          	bnez	a4,80004ba0 <acquire+0x94>
    80004b64:	00100713          	li	a4,1
    80004b68:	00070793          	mv	a5,a4
    80004b6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004b70:	0007879b          	sext.w	a5,a5
    80004b74:	fe079ae3          	bnez	a5,80004b68 <acquire+0x5c>
    80004b78:	0ff0000f          	fence
    80004b7c:	fffff097          	auipc	ra,0xfffff
    80004b80:	8a4080e7          	jalr	-1884(ra) # 80003420 <mycpu>
    80004b84:	01813083          	ld	ra,24(sp)
    80004b88:	01013403          	ld	s0,16(sp)
    80004b8c:	00a4b823          	sd	a0,16(s1)
    80004b90:	00013903          	ld	s2,0(sp)
    80004b94:	00813483          	ld	s1,8(sp)
    80004b98:	02010113          	addi	sp,sp,32
    80004b9c:	00008067          	ret
    80004ba0:	0104b903          	ld	s2,16(s1)
    80004ba4:	fffff097          	auipc	ra,0xfffff
    80004ba8:	87c080e7          	jalr	-1924(ra) # 80003420 <mycpu>
    80004bac:	faa91ce3          	bne	s2,a0,80004b64 <acquire+0x58>
    80004bb0:	00002517          	auipc	a0,0x2
    80004bb4:	83050513          	addi	a0,a0,-2000 # 800063e0 <digits+0x20>
    80004bb8:	fffff097          	auipc	ra,0xfffff
    80004bbc:	224080e7          	jalr	548(ra) # 80003ddc <panic>
    80004bc0:	00195913          	srli	s2,s2,0x1
    80004bc4:	fffff097          	auipc	ra,0xfffff
    80004bc8:	85c080e7          	jalr	-1956(ra) # 80003420 <mycpu>
    80004bcc:	00197913          	andi	s2,s2,1
    80004bd0:	07252e23          	sw	s2,124(a0)
    80004bd4:	f75ff06f          	j	80004b48 <acquire+0x3c>

0000000080004bd8 <release>:
    80004bd8:	fe010113          	addi	sp,sp,-32
    80004bdc:	00813823          	sd	s0,16(sp)
    80004be0:	00113c23          	sd	ra,24(sp)
    80004be4:	00913423          	sd	s1,8(sp)
    80004be8:	01213023          	sd	s2,0(sp)
    80004bec:	02010413          	addi	s0,sp,32
    80004bf0:	00052783          	lw	a5,0(a0)
    80004bf4:	00079a63          	bnez	a5,80004c08 <release+0x30>
    80004bf8:	00001517          	auipc	a0,0x1
    80004bfc:	7f050513          	addi	a0,a0,2032 # 800063e8 <digits+0x28>
    80004c00:	fffff097          	auipc	ra,0xfffff
    80004c04:	1dc080e7          	jalr	476(ra) # 80003ddc <panic>
    80004c08:	01053903          	ld	s2,16(a0)
    80004c0c:	00050493          	mv	s1,a0
    80004c10:	fffff097          	auipc	ra,0xfffff
    80004c14:	810080e7          	jalr	-2032(ra) # 80003420 <mycpu>
    80004c18:	fea910e3          	bne	s2,a0,80004bf8 <release+0x20>
    80004c1c:	0004b823          	sd	zero,16(s1)
    80004c20:	0ff0000f          	fence
    80004c24:	0f50000f          	fence	iorw,ow
    80004c28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004c2c:	ffffe097          	auipc	ra,0xffffe
    80004c30:	7f4080e7          	jalr	2036(ra) # 80003420 <mycpu>
    80004c34:	100027f3          	csrr	a5,sstatus
    80004c38:	0027f793          	andi	a5,a5,2
    80004c3c:	04079a63          	bnez	a5,80004c90 <release+0xb8>
    80004c40:	07852783          	lw	a5,120(a0)
    80004c44:	02f05e63          	blez	a5,80004c80 <release+0xa8>
    80004c48:	fff7871b          	addiw	a4,a5,-1
    80004c4c:	06e52c23          	sw	a4,120(a0)
    80004c50:	00071c63          	bnez	a4,80004c68 <release+0x90>
    80004c54:	07c52783          	lw	a5,124(a0)
    80004c58:	00078863          	beqz	a5,80004c68 <release+0x90>
    80004c5c:	100027f3          	csrr	a5,sstatus
    80004c60:	0027e793          	ori	a5,a5,2
    80004c64:	10079073          	csrw	sstatus,a5
    80004c68:	01813083          	ld	ra,24(sp)
    80004c6c:	01013403          	ld	s0,16(sp)
    80004c70:	00813483          	ld	s1,8(sp)
    80004c74:	00013903          	ld	s2,0(sp)
    80004c78:	02010113          	addi	sp,sp,32
    80004c7c:	00008067          	ret
    80004c80:	00001517          	auipc	a0,0x1
    80004c84:	78850513          	addi	a0,a0,1928 # 80006408 <digits+0x48>
    80004c88:	fffff097          	auipc	ra,0xfffff
    80004c8c:	154080e7          	jalr	340(ra) # 80003ddc <panic>
    80004c90:	00001517          	auipc	a0,0x1
    80004c94:	76050513          	addi	a0,a0,1888 # 800063f0 <digits+0x30>
    80004c98:	fffff097          	auipc	ra,0xfffff
    80004c9c:	144080e7          	jalr	324(ra) # 80003ddc <panic>

0000000080004ca0 <holding>:
    80004ca0:	00052783          	lw	a5,0(a0)
    80004ca4:	00079663          	bnez	a5,80004cb0 <holding+0x10>
    80004ca8:	00000513          	li	a0,0
    80004cac:	00008067          	ret
    80004cb0:	fe010113          	addi	sp,sp,-32
    80004cb4:	00813823          	sd	s0,16(sp)
    80004cb8:	00913423          	sd	s1,8(sp)
    80004cbc:	00113c23          	sd	ra,24(sp)
    80004cc0:	02010413          	addi	s0,sp,32
    80004cc4:	01053483          	ld	s1,16(a0)
    80004cc8:	ffffe097          	auipc	ra,0xffffe
    80004ccc:	758080e7          	jalr	1880(ra) # 80003420 <mycpu>
    80004cd0:	01813083          	ld	ra,24(sp)
    80004cd4:	01013403          	ld	s0,16(sp)
    80004cd8:	40a48533          	sub	a0,s1,a0
    80004cdc:	00153513          	seqz	a0,a0
    80004ce0:	00813483          	ld	s1,8(sp)
    80004ce4:	02010113          	addi	sp,sp,32
    80004ce8:	00008067          	ret

0000000080004cec <push_off>:
    80004cec:	fe010113          	addi	sp,sp,-32
    80004cf0:	00813823          	sd	s0,16(sp)
    80004cf4:	00113c23          	sd	ra,24(sp)
    80004cf8:	00913423          	sd	s1,8(sp)
    80004cfc:	02010413          	addi	s0,sp,32
    80004d00:	100024f3          	csrr	s1,sstatus
    80004d04:	100027f3          	csrr	a5,sstatus
    80004d08:	ffd7f793          	andi	a5,a5,-3
    80004d0c:	10079073          	csrw	sstatus,a5
    80004d10:	ffffe097          	auipc	ra,0xffffe
    80004d14:	710080e7          	jalr	1808(ra) # 80003420 <mycpu>
    80004d18:	07852783          	lw	a5,120(a0)
    80004d1c:	02078663          	beqz	a5,80004d48 <push_off+0x5c>
    80004d20:	ffffe097          	auipc	ra,0xffffe
    80004d24:	700080e7          	jalr	1792(ra) # 80003420 <mycpu>
    80004d28:	07852783          	lw	a5,120(a0)
    80004d2c:	01813083          	ld	ra,24(sp)
    80004d30:	01013403          	ld	s0,16(sp)
    80004d34:	0017879b          	addiw	a5,a5,1
    80004d38:	06f52c23          	sw	a5,120(a0)
    80004d3c:	00813483          	ld	s1,8(sp)
    80004d40:	02010113          	addi	sp,sp,32
    80004d44:	00008067          	ret
    80004d48:	0014d493          	srli	s1,s1,0x1
    80004d4c:	ffffe097          	auipc	ra,0xffffe
    80004d50:	6d4080e7          	jalr	1748(ra) # 80003420 <mycpu>
    80004d54:	0014f493          	andi	s1,s1,1
    80004d58:	06952e23          	sw	s1,124(a0)
    80004d5c:	fc5ff06f          	j	80004d20 <push_off+0x34>

0000000080004d60 <pop_off>:
    80004d60:	ff010113          	addi	sp,sp,-16
    80004d64:	00813023          	sd	s0,0(sp)
    80004d68:	00113423          	sd	ra,8(sp)
    80004d6c:	01010413          	addi	s0,sp,16
    80004d70:	ffffe097          	auipc	ra,0xffffe
    80004d74:	6b0080e7          	jalr	1712(ra) # 80003420 <mycpu>
    80004d78:	100027f3          	csrr	a5,sstatus
    80004d7c:	0027f793          	andi	a5,a5,2
    80004d80:	04079663          	bnez	a5,80004dcc <pop_off+0x6c>
    80004d84:	07852783          	lw	a5,120(a0)
    80004d88:	02f05a63          	blez	a5,80004dbc <pop_off+0x5c>
    80004d8c:	fff7871b          	addiw	a4,a5,-1
    80004d90:	06e52c23          	sw	a4,120(a0)
    80004d94:	00071c63          	bnez	a4,80004dac <pop_off+0x4c>
    80004d98:	07c52783          	lw	a5,124(a0)
    80004d9c:	00078863          	beqz	a5,80004dac <pop_off+0x4c>
    80004da0:	100027f3          	csrr	a5,sstatus
    80004da4:	0027e793          	ori	a5,a5,2
    80004da8:	10079073          	csrw	sstatus,a5
    80004dac:	00813083          	ld	ra,8(sp)
    80004db0:	00013403          	ld	s0,0(sp)
    80004db4:	01010113          	addi	sp,sp,16
    80004db8:	00008067          	ret
    80004dbc:	00001517          	auipc	a0,0x1
    80004dc0:	64c50513          	addi	a0,a0,1612 # 80006408 <digits+0x48>
    80004dc4:	fffff097          	auipc	ra,0xfffff
    80004dc8:	018080e7          	jalr	24(ra) # 80003ddc <panic>
    80004dcc:	00001517          	auipc	a0,0x1
    80004dd0:	62450513          	addi	a0,a0,1572 # 800063f0 <digits+0x30>
    80004dd4:	fffff097          	auipc	ra,0xfffff
    80004dd8:	008080e7          	jalr	8(ra) # 80003ddc <panic>

0000000080004ddc <push_on>:
    80004ddc:	fe010113          	addi	sp,sp,-32
    80004de0:	00813823          	sd	s0,16(sp)
    80004de4:	00113c23          	sd	ra,24(sp)
    80004de8:	00913423          	sd	s1,8(sp)
    80004dec:	02010413          	addi	s0,sp,32
    80004df0:	100024f3          	csrr	s1,sstatus
    80004df4:	100027f3          	csrr	a5,sstatus
    80004df8:	0027e793          	ori	a5,a5,2
    80004dfc:	10079073          	csrw	sstatus,a5
    80004e00:	ffffe097          	auipc	ra,0xffffe
    80004e04:	620080e7          	jalr	1568(ra) # 80003420 <mycpu>
    80004e08:	07852783          	lw	a5,120(a0)
    80004e0c:	02078663          	beqz	a5,80004e38 <push_on+0x5c>
    80004e10:	ffffe097          	auipc	ra,0xffffe
    80004e14:	610080e7          	jalr	1552(ra) # 80003420 <mycpu>
    80004e18:	07852783          	lw	a5,120(a0)
    80004e1c:	01813083          	ld	ra,24(sp)
    80004e20:	01013403          	ld	s0,16(sp)
    80004e24:	0017879b          	addiw	a5,a5,1
    80004e28:	06f52c23          	sw	a5,120(a0)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	02010113          	addi	sp,sp,32
    80004e34:	00008067          	ret
    80004e38:	0014d493          	srli	s1,s1,0x1
    80004e3c:	ffffe097          	auipc	ra,0xffffe
    80004e40:	5e4080e7          	jalr	1508(ra) # 80003420 <mycpu>
    80004e44:	0014f493          	andi	s1,s1,1
    80004e48:	06952e23          	sw	s1,124(a0)
    80004e4c:	fc5ff06f          	j	80004e10 <push_on+0x34>

0000000080004e50 <pop_on>:
    80004e50:	ff010113          	addi	sp,sp,-16
    80004e54:	00813023          	sd	s0,0(sp)
    80004e58:	00113423          	sd	ra,8(sp)
    80004e5c:	01010413          	addi	s0,sp,16
    80004e60:	ffffe097          	auipc	ra,0xffffe
    80004e64:	5c0080e7          	jalr	1472(ra) # 80003420 <mycpu>
    80004e68:	100027f3          	csrr	a5,sstatus
    80004e6c:	0027f793          	andi	a5,a5,2
    80004e70:	04078463          	beqz	a5,80004eb8 <pop_on+0x68>
    80004e74:	07852783          	lw	a5,120(a0)
    80004e78:	02f05863          	blez	a5,80004ea8 <pop_on+0x58>
    80004e7c:	fff7879b          	addiw	a5,a5,-1
    80004e80:	06f52c23          	sw	a5,120(a0)
    80004e84:	07853783          	ld	a5,120(a0)
    80004e88:	00079863          	bnez	a5,80004e98 <pop_on+0x48>
    80004e8c:	100027f3          	csrr	a5,sstatus
    80004e90:	ffd7f793          	andi	a5,a5,-3
    80004e94:	10079073          	csrw	sstatus,a5
    80004e98:	00813083          	ld	ra,8(sp)
    80004e9c:	00013403          	ld	s0,0(sp)
    80004ea0:	01010113          	addi	sp,sp,16
    80004ea4:	00008067          	ret
    80004ea8:	00001517          	auipc	a0,0x1
    80004eac:	58850513          	addi	a0,a0,1416 # 80006430 <digits+0x70>
    80004eb0:	fffff097          	auipc	ra,0xfffff
    80004eb4:	f2c080e7          	jalr	-212(ra) # 80003ddc <panic>
    80004eb8:	00001517          	auipc	a0,0x1
    80004ebc:	55850513          	addi	a0,a0,1368 # 80006410 <digits+0x50>
    80004ec0:	fffff097          	auipc	ra,0xfffff
    80004ec4:	f1c080e7          	jalr	-228(ra) # 80003ddc <panic>

0000000080004ec8 <__memset>:
    80004ec8:	ff010113          	addi	sp,sp,-16
    80004ecc:	00813423          	sd	s0,8(sp)
    80004ed0:	01010413          	addi	s0,sp,16
    80004ed4:	1a060e63          	beqz	a2,80005090 <__memset+0x1c8>
    80004ed8:	40a007b3          	neg	a5,a0
    80004edc:	0077f793          	andi	a5,a5,7
    80004ee0:	00778693          	addi	a3,a5,7
    80004ee4:	00b00813          	li	a6,11
    80004ee8:	0ff5f593          	andi	a1,a1,255
    80004eec:	fff6071b          	addiw	a4,a2,-1
    80004ef0:	1b06e663          	bltu	a3,a6,8000509c <__memset+0x1d4>
    80004ef4:	1cd76463          	bltu	a4,a3,800050bc <__memset+0x1f4>
    80004ef8:	1a078e63          	beqz	a5,800050b4 <__memset+0x1ec>
    80004efc:	00b50023          	sb	a1,0(a0)
    80004f00:	00100713          	li	a4,1
    80004f04:	1ae78463          	beq	a5,a4,800050ac <__memset+0x1e4>
    80004f08:	00b500a3          	sb	a1,1(a0)
    80004f0c:	00200713          	li	a4,2
    80004f10:	1ae78a63          	beq	a5,a4,800050c4 <__memset+0x1fc>
    80004f14:	00b50123          	sb	a1,2(a0)
    80004f18:	00300713          	li	a4,3
    80004f1c:	18e78463          	beq	a5,a4,800050a4 <__memset+0x1dc>
    80004f20:	00b501a3          	sb	a1,3(a0)
    80004f24:	00400713          	li	a4,4
    80004f28:	1ae78263          	beq	a5,a4,800050cc <__memset+0x204>
    80004f2c:	00b50223          	sb	a1,4(a0)
    80004f30:	00500713          	li	a4,5
    80004f34:	1ae78063          	beq	a5,a4,800050d4 <__memset+0x20c>
    80004f38:	00b502a3          	sb	a1,5(a0)
    80004f3c:	00700713          	li	a4,7
    80004f40:	18e79e63          	bne	a5,a4,800050dc <__memset+0x214>
    80004f44:	00b50323          	sb	a1,6(a0)
    80004f48:	00700e93          	li	t4,7
    80004f4c:	00859713          	slli	a4,a1,0x8
    80004f50:	00e5e733          	or	a4,a1,a4
    80004f54:	01059e13          	slli	t3,a1,0x10
    80004f58:	01c76e33          	or	t3,a4,t3
    80004f5c:	01859313          	slli	t1,a1,0x18
    80004f60:	006e6333          	or	t1,t3,t1
    80004f64:	02059893          	slli	a7,a1,0x20
    80004f68:	40f60e3b          	subw	t3,a2,a5
    80004f6c:	011368b3          	or	a7,t1,a7
    80004f70:	02859813          	slli	a6,a1,0x28
    80004f74:	0108e833          	or	a6,a7,a6
    80004f78:	03059693          	slli	a3,a1,0x30
    80004f7c:	003e589b          	srliw	a7,t3,0x3
    80004f80:	00d866b3          	or	a3,a6,a3
    80004f84:	03859713          	slli	a4,a1,0x38
    80004f88:	00389813          	slli	a6,a7,0x3
    80004f8c:	00f507b3          	add	a5,a0,a5
    80004f90:	00e6e733          	or	a4,a3,a4
    80004f94:	000e089b          	sext.w	a7,t3
    80004f98:	00f806b3          	add	a3,a6,a5
    80004f9c:	00e7b023          	sd	a4,0(a5)
    80004fa0:	00878793          	addi	a5,a5,8
    80004fa4:	fed79ce3          	bne	a5,a3,80004f9c <__memset+0xd4>
    80004fa8:	ff8e7793          	andi	a5,t3,-8
    80004fac:	0007871b          	sext.w	a4,a5
    80004fb0:	01d787bb          	addw	a5,a5,t4
    80004fb4:	0ce88e63          	beq	a7,a4,80005090 <__memset+0x1c8>
    80004fb8:	00f50733          	add	a4,a0,a5
    80004fbc:	00b70023          	sb	a1,0(a4)
    80004fc0:	0017871b          	addiw	a4,a5,1
    80004fc4:	0cc77663          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80004fc8:	00e50733          	add	a4,a0,a4
    80004fcc:	00b70023          	sb	a1,0(a4)
    80004fd0:	0027871b          	addiw	a4,a5,2
    80004fd4:	0ac77e63          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80004fd8:	00e50733          	add	a4,a0,a4
    80004fdc:	00b70023          	sb	a1,0(a4)
    80004fe0:	0037871b          	addiw	a4,a5,3
    80004fe4:	0ac77663          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80004fe8:	00e50733          	add	a4,a0,a4
    80004fec:	00b70023          	sb	a1,0(a4)
    80004ff0:	0047871b          	addiw	a4,a5,4
    80004ff4:	08c77e63          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80004ff8:	00e50733          	add	a4,a0,a4
    80004ffc:	00b70023          	sb	a1,0(a4)
    80005000:	0057871b          	addiw	a4,a5,5
    80005004:	08c77663          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005008:	00e50733          	add	a4,a0,a4
    8000500c:	00b70023          	sb	a1,0(a4)
    80005010:	0067871b          	addiw	a4,a5,6
    80005014:	06c77e63          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005018:	00e50733          	add	a4,a0,a4
    8000501c:	00b70023          	sb	a1,0(a4)
    80005020:	0077871b          	addiw	a4,a5,7
    80005024:	06c77663          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005028:	00e50733          	add	a4,a0,a4
    8000502c:	00b70023          	sb	a1,0(a4)
    80005030:	0087871b          	addiw	a4,a5,8
    80005034:	04c77e63          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005038:	00e50733          	add	a4,a0,a4
    8000503c:	00b70023          	sb	a1,0(a4)
    80005040:	0097871b          	addiw	a4,a5,9
    80005044:	04c77663          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005048:	00e50733          	add	a4,a0,a4
    8000504c:	00b70023          	sb	a1,0(a4)
    80005050:	00a7871b          	addiw	a4,a5,10
    80005054:	02c77e63          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005058:	00e50733          	add	a4,a0,a4
    8000505c:	00b70023          	sb	a1,0(a4)
    80005060:	00b7871b          	addiw	a4,a5,11
    80005064:	02c77663          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005068:	00e50733          	add	a4,a0,a4
    8000506c:	00b70023          	sb	a1,0(a4)
    80005070:	00c7871b          	addiw	a4,a5,12
    80005074:	00c77e63          	bgeu	a4,a2,80005090 <__memset+0x1c8>
    80005078:	00e50733          	add	a4,a0,a4
    8000507c:	00b70023          	sb	a1,0(a4)
    80005080:	00d7879b          	addiw	a5,a5,13
    80005084:	00c7f663          	bgeu	a5,a2,80005090 <__memset+0x1c8>
    80005088:	00f507b3          	add	a5,a0,a5
    8000508c:	00b78023          	sb	a1,0(a5)
    80005090:	00813403          	ld	s0,8(sp)
    80005094:	01010113          	addi	sp,sp,16
    80005098:	00008067          	ret
    8000509c:	00b00693          	li	a3,11
    800050a0:	e55ff06f          	j	80004ef4 <__memset+0x2c>
    800050a4:	00300e93          	li	t4,3
    800050a8:	ea5ff06f          	j	80004f4c <__memset+0x84>
    800050ac:	00100e93          	li	t4,1
    800050b0:	e9dff06f          	j	80004f4c <__memset+0x84>
    800050b4:	00000e93          	li	t4,0
    800050b8:	e95ff06f          	j	80004f4c <__memset+0x84>
    800050bc:	00000793          	li	a5,0
    800050c0:	ef9ff06f          	j	80004fb8 <__memset+0xf0>
    800050c4:	00200e93          	li	t4,2
    800050c8:	e85ff06f          	j	80004f4c <__memset+0x84>
    800050cc:	00400e93          	li	t4,4
    800050d0:	e7dff06f          	j	80004f4c <__memset+0x84>
    800050d4:	00500e93          	li	t4,5
    800050d8:	e75ff06f          	j	80004f4c <__memset+0x84>
    800050dc:	00600e93          	li	t4,6
    800050e0:	e6dff06f          	j	80004f4c <__memset+0x84>

00000000800050e4 <__memmove>:
    800050e4:	ff010113          	addi	sp,sp,-16
    800050e8:	00813423          	sd	s0,8(sp)
    800050ec:	01010413          	addi	s0,sp,16
    800050f0:	0e060863          	beqz	a2,800051e0 <__memmove+0xfc>
    800050f4:	fff6069b          	addiw	a3,a2,-1
    800050f8:	0006881b          	sext.w	a6,a3
    800050fc:	0ea5e863          	bltu	a1,a0,800051ec <__memmove+0x108>
    80005100:	00758713          	addi	a4,a1,7
    80005104:	00a5e7b3          	or	a5,a1,a0
    80005108:	40a70733          	sub	a4,a4,a0
    8000510c:	0077f793          	andi	a5,a5,7
    80005110:	00f73713          	sltiu	a4,a4,15
    80005114:	00174713          	xori	a4,a4,1
    80005118:	0017b793          	seqz	a5,a5
    8000511c:	00e7f7b3          	and	a5,a5,a4
    80005120:	10078863          	beqz	a5,80005230 <__memmove+0x14c>
    80005124:	00900793          	li	a5,9
    80005128:	1107f463          	bgeu	a5,a6,80005230 <__memmove+0x14c>
    8000512c:	0036581b          	srliw	a6,a2,0x3
    80005130:	fff8081b          	addiw	a6,a6,-1
    80005134:	02081813          	slli	a6,a6,0x20
    80005138:	01d85893          	srli	a7,a6,0x1d
    8000513c:	00858813          	addi	a6,a1,8
    80005140:	00058793          	mv	a5,a1
    80005144:	00050713          	mv	a4,a0
    80005148:	01088833          	add	a6,a7,a6
    8000514c:	0007b883          	ld	a7,0(a5)
    80005150:	00878793          	addi	a5,a5,8
    80005154:	00870713          	addi	a4,a4,8
    80005158:	ff173c23          	sd	a7,-8(a4)
    8000515c:	ff0798e3          	bne	a5,a6,8000514c <__memmove+0x68>
    80005160:	ff867713          	andi	a4,a2,-8
    80005164:	02071793          	slli	a5,a4,0x20
    80005168:	0207d793          	srli	a5,a5,0x20
    8000516c:	00f585b3          	add	a1,a1,a5
    80005170:	40e686bb          	subw	a3,a3,a4
    80005174:	00f507b3          	add	a5,a0,a5
    80005178:	06e60463          	beq	a2,a4,800051e0 <__memmove+0xfc>
    8000517c:	0005c703          	lbu	a4,0(a1)
    80005180:	00e78023          	sb	a4,0(a5)
    80005184:	04068e63          	beqz	a3,800051e0 <__memmove+0xfc>
    80005188:	0015c603          	lbu	a2,1(a1)
    8000518c:	00100713          	li	a4,1
    80005190:	00c780a3          	sb	a2,1(a5)
    80005194:	04e68663          	beq	a3,a4,800051e0 <__memmove+0xfc>
    80005198:	0025c603          	lbu	a2,2(a1)
    8000519c:	00200713          	li	a4,2
    800051a0:	00c78123          	sb	a2,2(a5)
    800051a4:	02e68e63          	beq	a3,a4,800051e0 <__memmove+0xfc>
    800051a8:	0035c603          	lbu	a2,3(a1)
    800051ac:	00300713          	li	a4,3
    800051b0:	00c781a3          	sb	a2,3(a5)
    800051b4:	02e68663          	beq	a3,a4,800051e0 <__memmove+0xfc>
    800051b8:	0045c603          	lbu	a2,4(a1)
    800051bc:	00400713          	li	a4,4
    800051c0:	00c78223          	sb	a2,4(a5)
    800051c4:	00e68e63          	beq	a3,a4,800051e0 <__memmove+0xfc>
    800051c8:	0055c603          	lbu	a2,5(a1)
    800051cc:	00500713          	li	a4,5
    800051d0:	00c782a3          	sb	a2,5(a5)
    800051d4:	00e68663          	beq	a3,a4,800051e0 <__memmove+0xfc>
    800051d8:	0065c703          	lbu	a4,6(a1)
    800051dc:	00e78323          	sb	a4,6(a5)
    800051e0:	00813403          	ld	s0,8(sp)
    800051e4:	01010113          	addi	sp,sp,16
    800051e8:	00008067          	ret
    800051ec:	02061713          	slli	a4,a2,0x20
    800051f0:	02075713          	srli	a4,a4,0x20
    800051f4:	00e587b3          	add	a5,a1,a4
    800051f8:	f0f574e3          	bgeu	a0,a5,80005100 <__memmove+0x1c>
    800051fc:	02069613          	slli	a2,a3,0x20
    80005200:	02065613          	srli	a2,a2,0x20
    80005204:	fff64613          	not	a2,a2
    80005208:	00e50733          	add	a4,a0,a4
    8000520c:	00c78633          	add	a2,a5,a2
    80005210:	fff7c683          	lbu	a3,-1(a5)
    80005214:	fff78793          	addi	a5,a5,-1
    80005218:	fff70713          	addi	a4,a4,-1
    8000521c:	00d70023          	sb	a3,0(a4)
    80005220:	fec798e3          	bne	a5,a2,80005210 <__memmove+0x12c>
    80005224:	00813403          	ld	s0,8(sp)
    80005228:	01010113          	addi	sp,sp,16
    8000522c:	00008067          	ret
    80005230:	02069713          	slli	a4,a3,0x20
    80005234:	02075713          	srli	a4,a4,0x20
    80005238:	00170713          	addi	a4,a4,1
    8000523c:	00e50733          	add	a4,a0,a4
    80005240:	00050793          	mv	a5,a0
    80005244:	0005c683          	lbu	a3,0(a1)
    80005248:	00178793          	addi	a5,a5,1
    8000524c:	00158593          	addi	a1,a1,1
    80005250:	fed78fa3          	sb	a3,-1(a5)
    80005254:	fee798e3          	bne	a5,a4,80005244 <__memmove+0x160>
    80005258:	f89ff06f          	j	800051e0 <__memmove+0xfc>

000000008000525c <__putc>:
    8000525c:	fe010113          	addi	sp,sp,-32
    80005260:	00813823          	sd	s0,16(sp)
    80005264:	00113c23          	sd	ra,24(sp)
    80005268:	02010413          	addi	s0,sp,32
    8000526c:	00050793          	mv	a5,a0
    80005270:	fef40593          	addi	a1,s0,-17
    80005274:	00100613          	li	a2,1
    80005278:	00000513          	li	a0,0
    8000527c:	fef407a3          	sb	a5,-17(s0)
    80005280:	fffff097          	auipc	ra,0xfffff
    80005284:	b3c080e7          	jalr	-1220(ra) # 80003dbc <console_write>
    80005288:	01813083          	ld	ra,24(sp)
    8000528c:	01013403          	ld	s0,16(sp)
    80005290:	02010113          	addi	sp,sp,32
    80005294:	00008067          	ret

0000000080005298 <__getc>:
    80005298:	fe010113          	addi	sp,sp,-32
    8000529c:	00813823          	sd	s0,16(sp)
    800052a0:	00113c23          	sd	ra,24(sp)
    800052a4:	02010413          	addi	s0,sp,32
    800052a8:	fe840593          	addi	a1,s0,-24
    800052ac:	00100613          	li	a2,1
    800052b0:	00000513          	li	a0,0
    800052b4:	fffff097          	auipc	ra,0xfffff
    800052b8:	ae8080e7          	jalr	-1304(ra) # 80003d9c <console_read>
    800052bc:	fe844503          	lbu	a0,-24(s0)
    800052c0:	01813083          	ld	ra,24(sp)
    800052c4:	01013403          	ld	s0,16(sp)
    800052c8:	02010113          	addi	sp,sp,32
    800052cc:	00008067          	ret

00000000800052d0 <console_handler>:
    800052d0:	fe010113          	addi	sp,sp,-32
    800052d4:	00813823          	sd	s0,16(sp)
    800052d8:	00113c23          	sd	ra,24(sp)
    800052dc:	00913423          	sd	s1,8(sp)
    800052e0:	02010413          	addi	s0,sp,32
    800052e4:	14202773          	csrr	a4,scause
    800052e8:	100027f3          	csrr	a5,sstatus
    800052ec:	0027f793          	andi	a5,a5,2
    800052f0:	06079e63          	bnez	a5,8000536c <console_handler+0x9c>
    800052f4:	00074c63          	bltz	a4,8000530c <console_handler+0x3c>
    800052f8:	01813083          	ld	ra,24(sp)
    800052fc:	01013403          	ld	s0,16(sp)
    80005300:	00813483          	ld	s1,8(sp)
    80005304:	02010113          	addi	sp,sp,32
    80005308:	00008067          	ret
    8000530c:	0ff77713          	andi	a4,a4,255
    80005310:	00900793          	li	a5,9
    80005314:	fef712e3          	bne	a4,a5,800052f8 <console_handler+0x28>
    80005318:	ffffe097          	auipc	ra,0xffffe
    8000531c:	6dc080e7          	jalr	1756(ra) # 800039f4 <plic_claim>
    80005320:	00a00793          	li	a5,10
    80005324:	00050493          	mv	s1,a0
    80005328:	02f50c63          	beq	a0,a5,80005360 <console_handler+0x90>
    8000532c:	fc0506e3          	beqz	a0,800052f8 <console_handler+0x28>
    80005330:	00050593          	mv	a1,a0
    80005334:	00001517          	auipc	a0,0x1
    80005338:	00450513          	addi	a0,a0,4 # 80006338 <_ZZ12printIntegermE6digits+0x228>
    8000533c:	fffff097          	auipc	ra,0xfffff
    80005340:	afc080e7          	jalr	-1284(ra) # 80003e38 <__printf>
    80005344:	01013403          	ld	s0,16(sp)
    80005348:	01813083          	ld	ra,24(sp)
    8000534c:	00048513          	mv	a0,s1
    80005350:	00813483          	ld	s1,8(sp)
    80005354:	02010113          	addi	sp,sp,32
    80005358:	ffffe317          	auipc	t1,0xffffe
    8000535c:	6d430067          	jr	1748(t1) # 80003a2c <plic_complete>
    80005360:	fffff097          	auipc	ra,0xfffff
    80005364:	3e0080e7          	jalr	992(ra) # 80004740 <uartintr>
    80005368:	fddff06f          	j	80005344 <console_handler+0x74>
    8000536c:	00001517          	auipc	a0,0x1
    80005370:	0cc50513          	addi	a0,a0,204 # 80006438 <digits+0x78>
    80005374:	fffff097          	auipc	ra,0xfffff
    80005378:	a68080e7          	jalr	-1432(ra) # 80003ddc <panic>
	...
