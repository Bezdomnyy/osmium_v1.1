
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	23813103          	ld	sp,568(sp) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0b8030ef          	jal	ra,800030d4 <start>

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
    80001324:	eb8080e7          	jalr	-328(ra) # 800051d8 <__getc>
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
    8000134c:	e54080e7          	jalr	-428(ra) # 8000519c <__putc>
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
    80001374:	680080e7          	jalr	1664(ra) # 800019f0 <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    80001378:	00006797          	auipc	a5,0x6
    8000137c:	ec87b783          	ld	a5,-312(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    //RiscV::writeSepc(sepc);
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
    800013f0:	7a4080e7          	jalr	1956(ra) # 80001b90 <_ZN15MemoryAllocator8allocateEm>
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
    80001414:	00001097          	auipc	ra,0x1
    80001418:	808080e7          	jalr	-2040(ra) # 80001c1c <_ZN15MemoryAllocator4freeEPv>
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
    80001448:	3c0080e7          	jalr	960(ra) # 80001804 <_ZN3TCB9createTCBEPFvPvES0_>
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
    80001470:	ddc7b783          	ld	a5,-548(a5) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001474:	0007b783          	ld	a5,0(a5)

    static TCB* createTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    80001478:	00100713          	li	a4,1
    8000147c:	00e78c23          	sb	a4,24(a5)
    //TCB::yield();
    TCB::dispatch();
    80001480:	00000097          	auipc	ra,0x0
    80001484:	468080e7          	jalr	1128(ra) # 800018e8 <_ZN3TCB8dispatchEv>
}
    80001488:	f6dff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	45c080e7          	jalr	1116(ra) # 800018e8 <_ZN3TCB8dispatchEv>
}
    80001494:	f61ff06f          	j	800013f4 <_ZN6Kernel15syscall_handlerEv+0x58>
            asm volatile ("addi a0, zero, -1");
    80001498:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    8000149c:	00005517          	auipc	a0,0x5
    800014a0:	b8450513          	addi	a0,a0,-1148 # 80006020 <CONSOLE_STATUS+0x10>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	a74080e7          	jalr	-1420(ra) # 80001f18 <_Z14__print_stringPKc>
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
    800014cc:	faf43823          	sd	a5,-80(s0)
    return scause;
    800014d0:	fb043483          	ld	s1,-80(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    800014d4:	ff848713          	addi	a4,s1,-8
    800014d8:	00100793          	li	a5,1
    800014dc:	06e7fe63          	bgeu	a5,a4,80001558 <_ZN6Kernel21supervisorTrapHandlerEv+0xa8>
    if (scause == 0x0000000000000007UL) {
    800014e0:	00700793          	li	a5,7
    800014e4:	0af48463          	beq	s1,a5,8000158c <_ZN6Kernel21supervisorTrapHandlerEv+0xdc>
    if (scause == 0x8000000000000001UL) {
    800014e8:	fff00793          	li	a5,-1
    800014ec:	03f79793          	slli	a5,a5,0x3f
    800014f0:	00178793          	addi	a5,a5,1
    800014f4:	0ef48463          	beq	s1,a5,800015dc <_ZN6Kernel21supervisorTrapHandlerEv+0x12c>
    if (scause == 0x8000000000000009UL) {
    800014f8:	fff00793          	li	a5,-1
    800014fc:	03f79793          	slli	a5,a5,0x3f
    80001500:	00978793          	addi	a5,a5,9
    80001504:	14f48263          	beq	s1,a5,80001648 <_ZN6Kernel21supervisorTrapHandlerEv+0x198>
    __print_string("Neobradjen izuzetak.\n");
    80001508:	00005517          	auipc	a0,0x5
    8000150c:	b6850513          	addi	a0,a0,-1176 # 80006070 <CONSOLE_STATUS+0x60>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	a08080e7          	jalr	-1528(ra) # 80001f18 <_Z14__print_stringPKc>
    __print_string("scause: ");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	b4850513          	addi	a0,a0,-1208 # 80006060 <CONSOLE_STATUS+0x50>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	9f8080e7          	jalr	-1544(ra) # 80001f18 <_Z14__print_stringPKc>
    __print_uint64(scause);
    80001528:	00048513          	mv	a0,s1
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	a30080e7          	jalr	-1488(ra) # 80001f5c <_Z14__print_uint64m>
    __putc('\n');
    80001534:	00a00513          	li	a0,10
    80001538:	00004097          	auipc	ra,0x4
    8000153c:	c64080e7          	jalr	-924(ra) # 8000519c <__putc>
}
    80001540:	04813083          	ld	ra,72(sp)
    80001544:	04013403          	ld	s0,64(sp)
    80001548:	03813483          	ld	s1,56(sp)
    8000154c:	03013903          	ld	s2,48(sp)
    80001550:	05010113          	addi	sp,sp,80
    80001554:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001558:	141027f3          	csrr	a5,sepc
    8000155c:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001560:	fc043483          	ld	s1,-64(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    80001564:	00448493          	addi	s1,s1,4
    asm volatile("csrc sstatus, %[mask]":: [mask] "r" (mask));
}

inline uint64 RiscV::readSstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    80001568:	100027f3          	csrr	a5,sstatus
    8000156c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001570:	fb843903          	ld	s2,-72(s0)
        syscall_handler();
    80001574:	00000097          	auipc	ra,0x0
    80001578:	e28080e7          	jalr	-472(ra) # 8000139c <_ZN6Kernel15syscall_handlerEv>
        asm volatile ("sd a0, 80(s0)");
    8000157c:	04a43823          	sd	a0,80(s0)
}

inline void RiscV::writeSstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001580:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001584:	14149073          	csrw	sepc,s1
        return;
    80001588:	fb9ff06f          	j	80001540 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000158c:	141027f3          	csrr	a5,sepc
    80001590:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001594:	fc843903          	ld	s2,-56(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    80001598:	00490913          	addi	s2,s2,4
        __print_string("Nedozvoljena adresa upisa.\n");
    8000159c:	00005517          	auipc	a0,0x5
    800015a0:	aa450513          	addi	a0,a0,-1372 # 80006040 <CONSOLE_STATUS+0x30>
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	974080e7          	jalr	-1676(ra) # 80001f18 <_Z14__print_stringPKc>
        __print_string("scause: ");
    800015ac:	00005517          	auipc	a0,0x5
    800015b0:	ab450513          	addi	a0,a0,-1356 # 80006060 <CONSOLE_STATUS+0x50>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	964080e7          	jalr	-1692(ra) # 80001f18 <_Z14__print_stringPKc>
        __print_uint64(scause);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	99c080e7          	jalr	-1636(ra) # 80001f5c <_Z14__print_uint64m>
        __putc('\n');
    800015c8:	00a00513          	li	a0,10
    800015cc:	00004097          	auipc	ra,0x4
    800015d0:	bd0080e7          	jalr	-1072(ra) # 8000519c <__putc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800015d4:	14191073          	csrw	sepc,s2
        return;
    800015d8:	f69ff06f          	j	80001540 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    800015dc:	00006717          	auipc	a4,0x6
    800015e0:	c5473703          	ld	a4,-940(a4) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x18>
    800015e4:	00073783          	ld	a5,0(a4)
    800015e8:	00178793          	addi	a5,a5,1
    800015ec:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    800015f0:	00006717          	auipc	a4,0x6
    800015f4:	c5873703          	ld	a4,-936(a4) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015f8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800015fc:	02073703          	ld	a4,32(a4)
    80001600:	00e7f863          	bgeu	a5,a4,80001610 <_ZN6Kernel21supervisorTrapHandlerEv+0x160>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    80001604:	00200793          	li	a5,2
    80001608:	1447b073          	csrc	sip,a5
        return;
    8000160c:	f35ff06f          	j	80001540 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001610:	141027f3          	csrr	a5,sepc
    80001614:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001618:	fd843483          	ld	s1,-40(s0)
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    8000161c:	100027f3          	csrr	a5,sstatus
    80001620:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001624:	fd043903          	ld	s2,-48(s0)
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }
    80001628:	00006797          	auipc	a5,0x6
    8000162c:	c087b783          	ld	a5,-1016(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001630:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001634:	00000097          	auipc	ra,0x0
    80001638:	2b4080e7          	jalr	692(ra) # 800018e8 <_ZN3TCB8dispatchEv>
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    8000163c:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001640:	14149073          	csrw	sepc,s1
}
    80001644:	fc1ff06f          	j	80001604 <_ZN6Kernel21supervisorTrapHandlerEv+0x154>
        console_handler();
    80001648:	00004097          	auipc	ra,0x4
    8000164c:	bc8080e7          	jalr	-1080(ra) # 80005210 <console_handler>
        return;
    80001650:	ef1ff06f          	j	80001540 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>

0000000080001654 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return 0;
}

Semaphore::~Semaphore() {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16

}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
}
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	324080e7          	jalr	804(ra) # 800019a0 <_ZdlPv>
    80001684:	00813083          	ld	ra,8(sp)
    80001688:	00013403          	ld	s0,0(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00813423          	sd	s0,8(sp)
    8000169c:	01010413          	addi	s0,sp,16
    800016a0:	00006797          	auipc	a5,0x6
    800016a4:	af078793          	addi	a5,a5,-1296 # 80007190 <_ZTV9Semaphore+0x10>
    800016a8:	00f53023          	sd	a5,0(a0)
}
    800016ac:	00813403          	ld	s0,8(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret

00000000800016b8 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800016b8:	ff010113          	addi	sp,sp,-16
    800016bc:	00813423          	sd	s0,8(sp)
    800016c0:	01010413          	addi	s0,sp,16
}
    800016c4:	00000513          	li	a0,0
    800016c8:	00813403          	ld	s0,8(sp)
    800016cc:	01010113          	addi	sp,sp,16
    800016d0:	00008067          	ret

00000000800016d4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00813423          	sd	s0,8(sp)
    800016dc:	01010413          	addi	s0,sp,16
}
    800016e0:	00000513          	li	a0,0
    800016e4:	00813403          	ld	s0,8(sp)
    800016e8:	01010113          	addi	sp,sp,16
    800016ec:	00008067          	ret

00000000800016f0 <main>:
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    800016f0:	fd010113          	addi	sp,sp,-48
    800016f4:	02113423          	sd	ra,40(sp)
    800016f8:	02813023          	sd	s0,32(sp)
    800016fc:	03010413          	addi	s0,sp,48
    Kernel::initKernel();
    80001700:	00000097          	auipc	ra,0x0
    80001704:	c60080e7          	jalr	-928(ra) # 80001360 <_ZN6Kernel10initKernelEv>




    TCB* threads[3];
    thread_create(&threads[0], nullptr, nullptr);
    80001708:	00000613          	li	a2,0
    8000170c:	00000593          	li	a1,0
    80001710:	fd840513          	addi	a0,s0,-40
    80001714:	00000097          	auipc	ra,0x0
    80001718:	904080e7          	jalr	-1788(ra) # 80001018 <thread_create>
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))userMain, nullptr);
    8000171c:	00000613          	li	a2,0
    80001720:	00006597          	auipc	a1,0x6
    80001724:	b005b583          	ld	a1,-1280(a1) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001728:	fe040513          	addi	a0,s0,-32
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	8ec080e7          	jalr	-1812(ra) # 80001018 <thread_create>
    //thread_create(&threads[2], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];
    80001734:	fd843703          	ld	a4,-40(s0)
    80001738:	00006797          	auipc	a5,0x6
    8000173c:	b107b783          	ld	a5,-1264(a5) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001740:	00e7b023          	sd	a4,0(a5)

    //thread_dispatch();
    __print_string("hey!\n");
    80001744:	00005517          	auipc	a0,0x5
    80001748:	99450513          	addi	a0,a0,-1644 # 800060d8 <CONSOLE_STATUS+0xc8>
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	7cc080e7          	jalr	1996(ra) # 80001f18 <_Z14__print_stringPKc>
    while(!threads[1]->isFinished()) { thread_dispatch(); }
    80001754:	fe043783          	ld	a5,-32(s0)
    bool isFinished() const { return finished; }
    80001758:	0187c783          	lbu	a5,24(a5)
    8000175c:	00079863          	bnez	a5,8000176c <main+0x7c>
    80001760:	00000097          	auipc	ra,0x0
    80001764:	8d0080e7          	jalr	-1840(ra) # 80001030 <thread_dispatch>
    80001768:	fedff06f          	j	80001754 <main+0x64>

    __print_string("Finished\n");
    8000176c:	00005517          	auipc	a0,0x5
    80001770:	97450513          	addi	a0,a0,-1676 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001774:	00000097          	auipc	ra,0x0
    80001778:	7a4080e7          	jalr	1956(ra) # 80001f18 <_Z14__print_stringPKc>

    //thread_exit();


    8000177c:	02813083          	ld	ra,40(sp)
    80001780:	02013403          	ld	s0,32(sp)
    80001784:	03010113          	addi	sp,sp,48
    80001788:	00008067          	ret

000000008000178c <_ZN7Console4getcEv>:
//

#include "../h/syscall_cpp.hpp"


char Console::getc() {
    8000178c:	ff010113          	addi	sp,sp,-16
    80001790:	00813423          	sd	s0,8(sp)
    80001794:	01010413          	addi	s0,sp,16
    return 0;
}
    80001798:	00000513          	li	a0,0
    8000179c:	00813403          	ld	s0,8(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret

00000000800017a8 <_ZN7Console4putcEc>:

void Console::putc(char) {
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00813423          	sd	s0,8(sp)
    800017b0:	01010413          	addi	s0,sp,16

    800017b4:	00813403          	ld	s0,8(sp)
    800017b8:	01010113          	addi	sp,sp,16
    800017bc:	00008067          	ret

00000000800017c0 <_ZN3TCB13threadWrapperEv>:
    __print_uint64((uint64)running); __putc('\n');*/

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800017c0:	ff010113          	addi	sp,sp,-16
    800017c4:	00113423          	sd	ra,8(sp)
    800017c8:	00813023          	sd	s0,0(sp)
    800017cc:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	4f0080e7          	jalr	1264(ra) # 80001cc0 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    800017d8:	00006797          	auipc	a5,0x6
    800017dc:	ac87b783          	ld	a5,-1336(a5) # 800072a0 <_ZN3TCB7runningE>
    800017e0:	0007b703          	ld	a4,0(a5)
    800017e4:	0087b503          	ld	a0,8(a5)
    800017e8:	000700e7          	jalr	a4
    thread_exit();
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	838080e7          	jalr	-1992(ra) # 80001024 <thread_exit>
}
    800017f4:	00813083          	ld	ra,8(sp)
    800017f8:	00013403          	ld	s0,0(sp)
    800017fc:	01010113          	addi	sp,sp,16
    80001800:	00008067          	ret

0000000080001804 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001804:	fd010113          	addi	sp,sp,-48
    80001808:	02113423          	sd	ra,40(sp)
    8000180c:	02813023          	sd	s0,32(sp)
    80001810:	00913c23          	sd	s1,24(sp)
    80001814:	01213823          	sd	s2,16(sp)
    80001818:	01313423          	sd	s3,8(sp)
    8000181c:	03010413          	addi	s0,sp,48
    80001820:	00050913          	mv	s2,a0
    80001824:	00058993          	mv	s3,a1
    return new TCB(body, args, DEFAULT_TIME_SLICE);
    80001828:	03800513          	li	a0,56
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	124080e7          	jalr	292(ra) # 80001950 <_Znwm>
    80001834:	00050493          	mv	s1,a0
            finished(false),
            timeSlice(timeSlice),
            context({
                body != nullptr ? (uint64) &threadWrapper : 0,
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
            })
    80001838:	01253023          	sd	s2,0(a0)
    8000183c:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001840:	00090a63          	beqz	s2,80001854 <_ZN3TCB9createTCBEPFvPvES0_+0x50>
    80001844:	00008537          	lui	a0,0x8
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	130080e7          	jalr	304(ra) # 80001978 <_Znam>
    80001850:	0080006f          	j	80001858 <_ZN3TCB9createTCBEPFvPvES0_+0x54>
    80001854:	00000513          	li	a0,0
            })
    80001858:	00a4b823          	sd	a0,16(s1)
    8000185c:	00048c23          	sb	zero,24(s1)
    80001860:	00200793          	li	a5,2
    80001864:	02f4b023          	sd	a5,32(s1)
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001868:	02090a63          	beqz	s2,8000189c <_ZN3TCB9createTCBEPFvPvES0_+0x98>
    8000186c:	00000797          	auipc	a5,0x0
    80001870:	f5478793          	addi	a5,a5,-172 # 800017c0 <_ZN3TCB13threadWrapperEv>
            })
    80001874:	02f4b423          	sd	a5,40(s1)
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001878:	02050663          	beqz	a0,800018a4 <_ZN3TCB9createTCBEPFvPvES0_+0xa0>
    8000187c:	000087b7          	lui	a5,0x8
    80001880:	00f50533          	add	a0,a0,a5
            })
    80001884:	02a4b823          	sd	a0,48(s1)
    {
        if (body != nullptr) Scheduler::put(this);
    80001888:	04090063          	beqz	s2,800018c8 <_ZN3TCB9createTCBEPFvPvES0_+0xc4>
    8000188c:	00048513          	mv	a0,s1
    80001890:	00000097          	auipc	ra,0x0
    80001894:	4f8080e7          	jalr	1272(ra) # 80001d88 <_ZN9Scheduler3putEP3TCB>
    80001898:	0300006f          	j	800018c8 <_ZN3TCB9createTCBEPFvPvES0_+0xc4>
                body != nullptr ? (uint64) &threadWrapper : 0,
    8000189c:	00000793          	li	a5,0
    800018a0:	fd5ff06f          	j	80001874 <_ZN3TCB9createTCBEPFvPvES0_+0x70>
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800018a4:	00000513          	li	a0,0
    800018a8:	fddff06f          	j	80001884 <_ZN3TCB9createTCBEPFvPvES0_+0x80>
    800018ac:	00050913          	mv	s2,a0
    800018b0:	00048513          	mv	a0,s1
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	0ec080e7          	jalr	236(ra) # 800019a0 <_ZdlPv>
    800018bc:	00090513          	mv	a0,s2
    800018c0:	00007097          	auipc	ra,0x7
    800018c4:	ae8080e7          	jalr	-1304(ra) # 800083a8 <_Unwind_Resume>
}
    800018c8:	00048513          	mv	a0,s1
    800018cc:	02813083          	ld	ra,40(sp)
    800018d0:	02013403          	ld	s0,32(sp)
    800018d4:	01813483          	ld	s1,24(sp)
    800018d8:	01013903          	ld	s2,16(sp)
    800018dc:	00813983          	ld	s3,8(sp)
    800018e0:	03010113          	addi	sp,sp,48
    800018e4:	00008067          	ret

00000000800018e8 <_ZN3TCB8dispatchEv>:
{
    800018e8:	fe010113          	addi	sp,sp,-32
    800018ec:	00113c23          	sd	ra,24(sp)
    800018f0:	00813823          	sd	s0,16(sp)
    800018f4:	00913423          	sd	s1,8(sp)
    800018f8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800018fc:	00006497          	auipc	s1,0x6
    80001900:	9a44b483          	ld	s1,-1628(s1) # 800072a0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001904:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001908:	02078c63          	beqz	a5,80001940 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	414080e7          	jalr	1044(ra) # 80001d20 <_ZN9Scheduler3getEv>
    80001914:	00006797          	auipc	a5,0x6
    80001918:	98a7b623          	sd	a0,-1652(a5) # 800072a0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000191c:	02850593          	addi	a1,a0,40 # 8028 <_entry-0x7fff7fd8>
    80001920:	02848513          	addi	a0,s1,40
    80001924:	00000097          	auipc	ra,0x0
    80001928:	92c080e7          	jalr	-1748(ra) # 80001250 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000192c:	01813083          	ld	ra,24(sp)
    80001930:	01013403          	ld	s0,16(sp)
    80001934:	00813483          	ld	s1,8(sp)
    80001938:	02010113          	addi	sp,sp,32
    8000193c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001940:	00048513          	mv	a0,s1
    80001944:	00000097          	auipc	ra,0x0
    80001948:	444080e7          	jalr	1092(ra) # 80001d88 <_ZN9Scheduler3putEP3TCB>
    8000194c:	fc1ff06f          	j	8000190c <_ZN3TCB8dispatchEv+0x24>

0000000080001950 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00113423          	sd	ra,8(sp)
    80001958:	00813023          	sd	s0,0(sp)
    8000195c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001960:	fffff097          	auipc	ra,0xfffff
    80001964:	6a0080e7          	jalr	1696(ra) # 80001000 <mem_alloc>
}
    80001968:	00813083          	ld	ra,8(sp)
    8000196c:	00013403          	ld	s0,0(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_Znam>:

void* operator new[](size_t size) {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001988:	fffff097          	auipc	ra,0xfffff
    8000198c:	678080e7          	jalr	1656(ra) # 80001000 <mem_alloc>
}
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <_ZdlPv>:

void operator delete(void* ptr) {
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	00813023          	sd	s0,0(sp)
    800019ac:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800019b0:	fffff097          	auipc	ra,0xfffff
    800019b4:	65c080e7          	jalr	1628(ra) # 8000100c <mem_free>
}
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_ZdaPv>:

void operator delete[](void* ptr) {
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00113423          	sd	ra,8(sp)
    800019d0:	00813023          	sd	s0,0(sp)
    800019d4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800019d8:	fffff097          	auipc	ra,0xfffff
    800019dc:	634080e7          	jalr	1588(ra) # 8000100c <mem_free>
}
    800019e0:	00813083          	ld	ra,8(sp)
    800019e4:	00013403          	ld	s0,0(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret

00000000800019f0 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    800019f0:	ff010113          	addi	sp,sp,-16
    800019f4:	00813423          	sd	s0,8(sp)
    800019f8:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    800019fc:	00006797          	auipc	a5,0x6
    80001a00:	82c7b783          	ld	a5,-2004(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a04:	0007b783          	ld	a5,0(a5)
    80001a08:	00006697          	auipc	a3,0x6
    80001a0c:	8a868693          	addi	a3,a3,-1880 # 800072b0 <_ZN15MemoryAllocator8fMemHeadE>
    80001a10:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    80001a14:	00006717          	auipc	a4,0x6
    80001a18:	83c73703          	ld	a4,-1988(a4) # 80007250 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a1c:	00073703          	ld	a4,0(a4)
    80001a20:	40f70733          	sub	a4,a4,a5
    80001a24:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80001a28:	0006b783          	ld	a5,0(a3)
    80001a2c:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    80001a30:	0007b823          	sd	zero,16(a5)
}
    80001a34:	00813403          	ld	s0,8(sp)
    80001a38:	01010113          	addi	sp,sp,16
    80001a3c:	00008067          	ret

0000000080001a40 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    80001a40:	ff010113          	addi	sp,sp,-16
    80001a44:	00813423          	sd	s0,8(sp)
    80001a48:	01010413          	addi	s0,sp,16
    80001a4c:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    80001a50:	00006517          	auipc	a0,0x6
    80001a54:	86053503          	ld	a0,-1952(a0) # 800072b0 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80001a58:	02050063          	beqz	a0,80001a78 <_ZN15MemoryAllocator8firstFitEm+0x38>
    80001a5c:	01053703          	ld	a4,16(a0)
    80001a60:	00070c63          	beqz	a4,80001a78 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80001a64:	00860793          	addi	a5,a2,8
    80001a68:	00053683          	ld	a3,0(a0)
    80001a6c:	00f6fe63          	bgeu	a3,a5,80001a88 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80001a70:	00070513          	mv	a0,a4
    80001a74:	fe5ff06f          	j	80001a58 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001a78:	00050863          	beqz	a0,80001a88 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001a7c:	00860613          	addi	a2,a2,8
    80001a80:	00053783          	ld	a5,0(a0)
    80001a84:	00c7e863          	bltu	a5,a2,80001a94 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001a88:	00813403          	ld	s0,8(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret
    return nullptr;
    80001a94:	00000513          	li	a0,0
    80001a98:	ff1ff06f          	j	80001a88 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001a9c <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001aa8:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001aac:	03f57793          	andi	a5,a0,63
    80001ab0:	00078863          	beqz	a5,80001ac0 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80001ab4:	04000713          	li	a4,64
    80001ab8:	40f707b3          	sub	a5,a4,a5
    80001abc:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001ac0:	00813403          	ld	s0,8(sp)
    80001ac4:	01010113          	addi	sp,sp,16
    80001ac8:	00008067          	ret

0000000080001acc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001acc:	fe010113          	addi	sp,sp,-32
    80001ad0:	00113c23          	sd	ra,24(sp)
    80001ad4:	00813823          	sd	s0,16(sp)
    80001ad8:	00913423          	sd	s1,8(sp)
    80001adc:	02010413          	addi	s0,sp,32
    80001ae0:	00050493          	mv	s1,a0
    if (node) {
    80001ae4:	04050c63          	beqz	a0,80001b3c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80001ae8:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	fb0080e7          	jalr	-80(ra) # 80001a9c <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80001af4:	0004b783          	ld	a5,0(s1)
    80001af8:	40a787b3          	sub	a5,a5,a0
    80001afc:	03f00713          	li	a4,63
    80001b00:	04f77e63          	bgeu	a4,a5,80001b5c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80001b04:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80001b08:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80001b0c:	0084b783          	ld	a5,8(s1)
    80001b10:	04078063          	beqz	a5,80001b50 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80001b14:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80001b18:	0104b783          	ld	a5,16(s1)
    80001b1c:	00078463          	beqz	a5,80001b24 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001b20:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80001b24:	0104b783          	ld	a5,16(s1)
    80001b28:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80001b2c:	0084b783          	ld	a5,8(s1)
    80001b30:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80001b34:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80001b38:	00848513          	addi	a0,s1,8
}
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret
            else fMemHead = newNode;
    80001b50:	00005797          	auipc	a5,0x5
    80001b54:	76e7b023          	sd	a4,1888(a5) # 800072b0 <_ZN15MemoryAllocator8fMemHeadE>
    80001b58:	fc1ff06f          	j	80001b18 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80001b5c:	0084b783          	ld	a5,8(s1)
    80001b60:	02078063          	beqz	a5,80001b80 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80001b64:	0104b703          	ld	a4,16(s1)
    80001b68:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001b6c:	0104b783          	ld	a5,16(s1)
    80001b70:	fc0782e3          	beqz	a5,80001b34 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80001b74:	0084b703          	ld	a4,8(s1)
    80001b78:	00e7b423          	sd	a4,8(a5)
    80001b7c:	fb9ff06f          	j	80001b34 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    80001b80:	0104b783          	ld	a5,16(s1)
    80001b84:	00005717          	auipc	a4,0x5
    80001b88:	72f73623          	sd	a5,1836(a4) # 800072b0 <_ZN15MemoryAllocator8fMemHeadE>
    80001b8c:	fe1ff06f          	j	80001b6c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080001b90 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80001b90:	fe010113          	addi	sp,sp,-32
    80001b94:	00113c23          	sd	ra,24(sp)
    80001b98:	00813823          	sd	s0,16(sp)
    80001b9c:	00913423          	sd	s1,8(sp)
    80001ba0:	02010413          	addi	s0,sp,32
    80001ba4:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	e98080e7          	jalr	-360(ra) # 80001a40 <_ZN15MemoryAllocator8firstFitEm>
    80001bb0:	00048593          	mv	a1,s1
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	f18080e7          	jalr	-232(ra) # 80001acc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80001bbc:	01813083          	ld	ra,24(sp)
    80001bc0:	01013403          	ld	s0,16(sp)
    80001bc4:	00813483          	ld	s1,8(sp)
    80001bc8:	02010113          	addi	sp,sp,32
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813423          	sd	s0,8(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    if(!node) return;
    80001bdc:	02050a63          	beqz	a0,80001c10 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    80001be0:	01053783          	ld	a5,16(a0)
    80001be4:	02078663          	beqz	a5,80001c10 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80001be8:	00053703          	ld	a4,0(a0)
    80001bec:	00e506b3          	add	a3,a0,a4
    80001bf0:	02f69063          	bne	a3,a5,80001c10 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    80001bf4:	0007b683          	ld	a3,0(a5)
    80001bf8:	00d70733          	add	a4,a4,a3
    80001bfc:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80001c00:	0107b783          	ld	a5,16(a5)
    80001c04:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80001c08:	00078463          	beqz	a5,80001c10 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80001c0c:	00a7b423          	sd	a0,8(a5)
}
    80001c10:	00813403          	ld	s0,8(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret

0000000080001c1c <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80001c30:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    80001c34:	00005717          	auipc	a4,0x5
    80001c38:	67c73703          	ld	a4,1660(a4) # 800072b0 <_ZN15MemoryAllocator8fMemHeadE>
    80001c3c:	02070063          	beqz	a4,80001c5c <_ZN15MemoryAllocator4freeEPv+0x40>
    80001c40:	02a77263          	bgeu	a4,a0,80001c64 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80001c44:	00070793          	mv	a5,a4
    80001c48:	00078493          	mv	s1,a5
    80001c4c:	0107b783          	ld	a5,16(a5)
    80001c50:	00078c63          	beqz	a5,80001c68 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001c54:	fea7eae3          	bltu	a5,a0,80001c48 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80001c58:	0100006f          	j	80001c68 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80001c5c:	00070493          	mv	s1,a4
    80001c60:	0080006f          	j	80001c68 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001c64:	00000493          	li	s1,0
    newNode->prev = curr;
    80001c68:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80001c6c:	04048263          	beqz	s1,80001cb0 <_ZN15MemoryAllocator4freeEPv+0x94>
    80001c70:	0104b783          	ld	a5,16(s1)
    80001c74:	00f53823          	sd	a5,16(a0)
    80001c78:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80001c7c:	01053783          	ld	a5,16(a0)
    80001c80:	00078463          	beqz	a5,80001c88 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80001c84:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	f48080e7          	jalr	-184(ra) # 80001bd0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80001c90:	00048513          	mv	a0,s1
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	f3c080e7          	jalr	-196(ra) # 80001bd0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80001c9c:	01813083          	ld	ra,24(sp)
    80001ca0:	01013403          	ld	s0,16(sp)
    80001ca4:	00813483          	ld	s1,8(sp)
    80001ca8:	02010113          	addi	sp,sp,32
    80001cac:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80001cb0:	00e53823          	sd	a4,16(a0)
    80001cb4:	00005797          	auipc	a5,0x5
    80001cb8:	5ea7be23          	sd	a0,1532(a5) # 800072b0 <_ZN15MemoryAllocator8fMemHeadE>
    80001cbc:	fc1ff06f          	j	80001c7c <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080001cc0 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00813423          	sd	s0,8(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001ccc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001cd0:	10200073          	sret
    80001cd4:	00813403          	ld	s0,8(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB* tcb) {
    //return readyQueue.putLast(tcb);
    readyQueue.putLast(tcb);
    //readyQueue.printStatus();
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    80001cec:	00100793          	li	a5,1
    80001cf0:	00f50863          	beq	a0,a5,80001d00 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001cf4:	00813403          	ld	s0,8(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret
    80001d00:	000107b7          	lui	a5,0x10
    80001d04:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d08:	fef596e3          	bne	a1,a5,80001cf4 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80001d0c:	00005797          	auipc	a5,0x5
    80001d10:	5ac78793          	addi	a5,a5,1452 # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001d14:	0007b023          	sd	zero,0(a5)
    80001d18:	0007b423          	sd	zero,8(a5)
    80001d1c:	fd9ff06f          	j	80001cf4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001d20 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	02010413          	addi	s0,sp,32
            tail = newNode;
        }
    }

    T* takeFirst() {
        if (!head) return 0;
    80001d34:	00005517          	auipc	a0,0x5
    80001d38:	58453503          	ld	a0,1412(a0) # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001d3c:	04050263          	beqz	a0,80001d80 <_ZN9Scheduler3getEv+0x60>

        T* ret = head->data;
    80001d40:	00053483          	ld	s1,0(a0)
        Node* old = head;
        head = head->next;
    80001d44:	00853783          	ld	a5,8(a0)
    80001d48:	00005717          	auipc	a4,0x5
    80001d4c:	56f73823          	sd	a5,1392(a4) # 800072b8 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80001d50:	02078263          	beqz	a5,80001d74 <_ZN9Scheduler3getEv+0x54>
        delete old;
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	c4c080e7          	jalr	-948(ra) # 800019a0 <_ZdlPv>
}
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	01813083          	ld	ra,24(sp)
    80001d64:	01013403          	ld	s0,16(sp)
    80001d68:	00813483          	ld	s1,8(sp)
    80001d6c:	02010113          	addi	sp,sp,32
    80001d70:	00008067          	ret
        if (!head) tail = 0;
    80001d74:	00005797          	auipc	a5,0x5
    80001d78:	5407b623          	sd	zero,1356(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    80001d7c:	fd9ff06f          	j	80001d54 <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80001d80:	00050493          	mv	s1,a0
    return ret;
    80001d84:	fd9ff06f          	j	80001d5c <_ZN9Scheduler3getEv+0x3c>

0000000080001d88 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80001d88:	fe010113          	addi	sp,sp,-32
    80001d8c:	00113c23          	sd	ra,24(sp)
    80001d90:	00813823          	sd	s0,16(sp)
    80001d94:	00913423          	sd	s1,8(sp)
    80001d98:	02010413          	addi	s0,sp,32
    80001d9c:	00050493          	mv	s1,a0
        Node *newNode = new Node(data, 0);
    80001da0:	01000513          	li	a0,16
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	bac080e7          	jalr	-1108(ra) # 80001950 <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80001dac:	00953023          	sd	s1,0(a0)
    80001db0:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80001db4:	00005797          	auipc	a5,0x5
    80001db8:	50c7b783          	ld	a5,1292(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    80001dbc:	02078263          	beqz	a5,80001de0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80001dc0:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80001dc4:	00005797          	auipc	a5,0x5
    80001dc8:	4ea7be23          	sd	a0,1276(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    80001dcc:	01813083          	ld	ra,24(sp)
    80001dd0:	01013403          	ld	s0,16(sp)
    80001dd4:	00813483          	ld	s1,8(sp)
    80001dd8:	02010113          	addi	sp,sp,32
    80001ddc:	00008067          	ret
        if (!tail) head = tail = newNode;
    80001de0:	00005797          	auipc	a5,0x5
    80001de4:	4d878793          	addi	a5,a5,1240 # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001de8:	00a7b423          	sd	a0,8(a5)
    80001dec:	00a7b023          	sd	a0,0(a5)
    80001df0:	fddff06f          	j	80001dcc <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001df4 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00113423          	sd	ra,8(sp)
    80001dfc:	00813023          	sd	s0,0(sp)
    80001e00:	01010413          	addi	s0,sp,16
    80001e04:	000105b7          	lui	a1,0x10
    80001e08:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001e0c:	00100513          	li	a0,1
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	ed0080e7          	jalr	-304(ra) # 80001ce0 <_Z41__static_initialization_and_destruction_0ii>
    80001e18:	00813083          	ld	ra,8(sp)
    80001e1c:	00013403          	ld	s0,0(sp)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <_ZN14PeriodicThreadC1Em>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

PeriodicThread::PeriodicThread(time_t period) {
    80001e28:	fe010113          	addi	sp,sp,-32
    80001e2c:	00113c23          	sd	ra,24(sp)
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	02010413          	addi	s0,sp,32
    80001e3c:	00050493          	mv	s1,a0
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	2a4080e7          	jalr	676(ra) # 800020e4 <_ZN6ThreadC1Ev>
    80001e48:	00005797          	auipc	a5,0x5
    80001e4c:	37078793          	addi	a5,a5,880 # 800071b8 <_ZTV14PeriodicThread+0x10>
    80001e50:	00f4b023          	sd	a5,0(s1)

    80001e54:	01813083          	ld	ra,24(sp)
    80001e58:	01013403          	ld	s0,16(sp)
    80001e5c:	00813483          	ld	s1,8(sp)
    80001e60:	02010113          	addi	sp,sp,32
    80001e64:	00008067          	ret

0000000080001e68 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00813423          	sd	s0,8(sp)
    80001e70:	01010413          	addi	s0,sp,16
    80001e74:	00813403          	ld	s0,8(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00813423          	sd	s0,8(sp)
    80001e88:	01010413          	addi	s0,sp,16
    80001e8c:	00813403          	ld	s0,8(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00113423          	sd	ra,8(sp)
    80001ea0:	00813023          	sd	s0,0(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    80001ea8:	00005797          	auipc	a5,0x5
    80001eac:	31078793          	addi	a5,a5,784 # 800071b8 <_ZTV14PeriodicThread+0x10>
    80001eb0:	00f53023          	sd	a5,0(a0)
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	17c080e7          	jalr	380(ra) # 80002030 <_ZN6ThreadD1Ev>
    80001ebc:	00813083          	ld	ra,8(sp)
    80001ec0:	00013403          	ld	s0,0(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN14PeriodicThreadD0Ev>:
    80001ecc:	fe010113          	addi	sp,sp,-32
    80001ed0:	00113c23          	sd	ra,24(sp)
    80001ed4:	00813823          	sd	s0,16(sp)
    80001ed8:	00913423          	sd	s1,8(sp)
    80001edc:	02010413          	addi	s0,sp,32
    80001ee0:	00050493          	mv	s1,a0
    80001ee4:	00005797          	auipc	a5,0x5
    80001ee8:	2d478793          	addi	a5,a5,724 # 800071b8 <_ZTV14PeriodicThread+0x10>
    80001eec:	00f53023          	sd	a5,0(a0)
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	140080e7          	jalr	320(ra) # 80002030 <_ZN6ThreadD1Ev>
    80001ef8:	00048513          	mv	a0,s1
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	aa4080e7          	jalr	-1372(ra) # 800019a0 <_ZdlPv>
    80001f04:	01813083          	ld	ra,24(sp)
    80001f08:	01013403          	ld	s0,16(sp)
    80001f0c:	00813483          	ld	s1,8(sp)
    80001f10:	02010113          	addi	sp,sp,32
    80001f14:	00008067          	ret

0000000080001f18 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	02010413          	addi	s0,sp,32
    80001f2c:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80001f30:	0004c503          	lbu	a0,0(s1)
    80001f34:	00050a63          	beqz	a0,80001f48 <_Z14__print_stringPKc+0x30>
    80001f38:	00003097          	auipc	ra,0x3
    80001f3c:	264080e7          	jalr	612(ra) # 8000519c <__putc>
    80001f40:	00148493          	addi	s1,s1,1
    80001f44:	fedff06f          	j	80001f30 <_Z14__print_stringPKc+0x18>
}
    80001f48:	01813083          	ld	ra,24(sp)
    80001f4c:	01013403          	ld	s0,16(sp)
    80001f50:	00813483          	ld	s1,8(sp)
    80001f54:	02010113          	addi	sp,sp,32
    80001f58:	00008067          	ret

0000000080001f5c <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80001f5c:	fc010113          	addi	sp,sp,-64
    80001f60:	02113c23          	sd	ra,56(sp)
    80001f64:	02813823          	sd	s0,48(sp)
    80001f68:	02913423          	sd	s1,40(sp)
    80001f6c:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80001f70:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80001f74:	00a00693          	li	a3,10
    80001f78:	02d57633          	remu	a2,a0,a3
    80001f7c:	00004717          	auipc	a4,0x4
    80001f80:	17470713          	addi	a4,a4,372 # 800060f0 <_ZZ14__print_uint64mE6digits>
    80001f84:	00c70733          	add	a4,a4,a2
    80001f88:	00074703          	lbu	a4,0(a4)
    80001f8c:	fe040613          	addi	a2,s0,-32
    80001f90:	009607b3          	add	a5,a2,s1
    80001f94:	0014849b          	addiw	s1,s1,1
    80001f98:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80001f9c:	00050713          	mv	a4,a0
    80001fa0:	02d55533          	divu	a0,a0,a3
    80001fa4:	00900793          	li	a5,9
    80001fa8:	fce7e6e3          	bltu	a5,a4,80001f74 <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    80001fac:	fff4849b          	addiw	s1,s1,-1
    80001fb0:	0004ce63          	bltz	s1,80001fcc <_Z14__print_uint64m+0x70>
    80001fb4:	fe040793          	addi	a5,s0,-32
    80001fb8:	009787b3          	add	a5,a5,s1
    80001fbc:	fe87c503          	lbu	a0,-24(a5)
    80001fc0:	00003097          	auipc	ra,0x3
    80001fc4:	1dc080e7          	jalr	476(ra) # 8000519c <__putc>
    80001fc8:	fe5ff06f          	j	80001fac <_Z14__print_uint64m+0x50>
}
    80001fcc:	03813083          	ld	ra,56(sp)
    80001fd0:	03013403          	ld	s0,48(sp)
    80001fd4:	02813483          	ld	s1,40(sp)
    80001fd8:	04010113          	addi	sp,sp,64
    80001fdc:	00008067          	ret

0000000080001fe0 <_Z11__print_intx>:

void __print_int(long long int integer) {
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00113c23          	sd	ra,24(sp)
    80001fe8:	00813823          	sd	s0,16(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    80001ff8:	02054263          	bltz	a0,8000201c <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80001ffc:	00048513          	mv	a0,s1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	f5c080e7          	jalr	-164(ra) # 80001f5c <_Z14__print_uint64m>
}
    80002008:	01813083          	ld	ra,24(sp)
    8000200c:	01013403          	ld	s0,16(sp)
    80002010:	00813483          	ld	s1,8(sp)
    80002014:	02010113          	addi	sp,sp,32
    80002018:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    8000201c:	02d00513          	li	a0,45
    80002020:	00003097          	auipc	ra,0x3
    80002024:	17c080e7          	jalr	380(ra) # 8000519c <__putc>
    80002028:	409004b3          	neg	s1,s1
    8000202c:	fd1ff06f          	j	80001ffc <_Z11__print_intx+0x1c>

0000000080002030 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00813423          	sd	s0,8(sp)
    80002038:	01010413          	addi	s0,sp,16

}
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00113423          	sd	ra,8(sp)
    80002050:	00813023          	sd	s0,0(sp)
    80002054:	01010413          	addi	s0,sp,16
}
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	948080e7          	jalr	-1720(ra) # 800019a0 <_ZdlPv>
    80002060:	00813083          	ld	ra,8(sp)
    80002064:	00013403          	ld	s0,0(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
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

0000000080002094 <_ZN6Thread5startEv>:

int Thread::start() {
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00813423          	sd	s0,8(sp)
    8000209c:	01010413          	addi	s0,sp,16
    return 0;
}
    800020a0:	00000513          	li	a0,0
    800020a4:	00813403          	ld	s0,8(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16

}
    800020bc:	00813403          	ld	s0,8(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00813423          	sd	s0,8(sp)
    800020d0:	01010413          	addi	s0,sp,16
    return 0;
}
    800020d4:	00000513          	li	a0,0
    800020d8:	00813403          	ld	s0,8(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret

00000000800020e4 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00813423          	sd	s0,8(sp)
    800020ec:	01010413          	addi	s0,sp,16
    800020f0:	00005797          	auipc	a5,0x5
    800020f4:	0f878793          	addi	a5,a5,248 # 800071e8 <_ZTV6Thread+0x10>
    800020f8:	00f53023          	sd	a5,0(a0)

}
    800020fc:	00813403          	ld	s0,8(sp)
    80002100:	01010113          	addi	sp,sp,16
    80002104:	00008067          	ret

0000000080002108 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002108:	fe010113          	addi	sp,sp,-32
    8000210c:	00113c23          	sd	ra,24(sp)
    80002110:	00813823          	sd	s0,16(sp)
    80002114:	00913423          	sd	s1,8(sp)
    80002118:	02010413          	addi	s0,sp,32
    8000211c:	00050493          	mv	s1,a0
    LOCK();
    80002120:	00100613          	li	a2,1
    80002124:	00000593          	li	a1,0
    80002128:	00005517          	auipc	a0,0x5
    8000212c:	1a050513          	addi	a0,a0,416 # 800072c8 <lockPrint>
    80002130:	fffff097          	auipc	ra,0xfffff
    80002134:	134080e7          	jalr	308(ra) # 80001264 <copy_and_swap>
    80002138:	fe0514e3          	bnez	a0,80002120 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000213c:	0004c503          	lbu	a0,0(s1)
    80002140:	00050a63          	beqz	a0,80002154 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	1f4080e7          	jalr	500(ra) # 80001338 <_Z4putcc>
        string++;
    8000214c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002150:	fedff06f          	j	8000213c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002154:	00000613          	li	a2,0
    80002158:	00100593          	li	a1,1
    8000215c:	00005517          	auipc	a0,0x5
    80002160:	16c50513          	addi	a0,a0,364 # 800072c8 <lockPrint>
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	100080e7          	jalr	256(ra) # 80001264 <copy_and_swap>
    8000216c:	fe0514e3          	bnez	a0,80002154 <_Z11printStringPKc+0x4c>
}
    80002170:	01813083          	ld	ra,24(sp)
    80002174:	01013403          	ld	s0,16(sp)
    80002178:	00813483          	ld	s1,8(sp)
    8000217c:	02010113          	addi	sp,sp,32
    80002180:	00008067          	ret

0000000080002184 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002184:	fd010113          	addi	sp,sp,-48
    80002188:	02113423          	sd	ra,40(sp)
    8000218c:	02813023          	sd	s0,32(sp)
    80002190:	00913c23          	sd	s1,24(sp)
    80002194:	01213823          	sd	s2,16(sp)
    80002198:	01313423          	sd	s3,8(sp)
    8000219c:	01413023          	sd	s4,0(sp)
    800021a0:	03010413          	addi	s0,sp,48
    800021a4:	00050993          	mv	s3,a0
    800021a8:	00058a13          	mv	s4,a1
    LOCK();
    800021ac:	00100613          	li	a2,1
    800021b0:	00000593          	li	a1,0
    800021b4:	00005517          	auipc	a0,0x5
    800021b8:	11450513          	addi	a0,a0,276 # 800072c8 <lockPrint>
    800021bc:	fffff097          	auipc	ra,0xfffff
    800021c0:	0a8080e7          	jalr	168(ra) # 80001264 <copy_and_swap>
    800021c4:	fe0514e3          	bnez	a0,800021ac <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800021c8:	00000913          	li	s2,0
    800021cc:	00090493          	mv	s1,s2
    800021d0:	0019091b          	addiw	s2,s2,1
    800021d4:	03495a63          	bge	s2,s4,80002208 <_Z9getStringPci+0x84>
        cc = getc();
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	138080e7          	jalr	312(ra) # 80001310 <_Z4getcv>
        if(cc < 1)
    800021e0:	02050463          	beqz	a0,80002208 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800021e4:	009984b3          	add	s1,s3,s1
    800021e8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800021ec:	00a00793          	li	a5,10
    800021f0:	00f50a63          	beq	a0,a5,80002204 <_Z9getStringPci+0x80>
    800021f4:	00d00793          	li	a5,13
    800021f8:	fcf51ae3          	bne	a0,a5,800021cc <_Z9getStringPci+0x48>
        buf[i++] = c;
    800021fc:	00090493          	mv	s1,s2
    80002200:	0080006f          	j	80002208 <_Z9getStringPci+0x84>
    80002204:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002208:	009984b3          	add	s1,s3,s1
    8000220c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002210:	00000613          	li	a2,0
    80002214:	00100593          	li	a1,1
    80002218:	00005517          	auipc	a0,0x5
    8000221c:	0b050513          	addi	a0,a0,176 # 800072c8 <lockPrint>
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	044080e7          	jalr	68(ra) # 80001264 <copy_and_swap>
    80002228:	fe0514e3          	bnez	a0,80002210 <_Z9getStringPci+0x8c>
    return buf;
}
    8000222c:	00098513          	mv	a0,s3
    80002230:	02813083          	ld	ra,40(sp)
    80002234:	02013403          	ld	s0,32(sp)
    80002238:	01813483          	ld	s1,24(sp)
    8000223c:	01013903          	ld	s2,16(sp)
    80002240:	00813983          	ld	s3,8(sp)
    80002244:	00013a03          	ld	s4,0(sp)
    80002248:	03010113          	addi	sp,sp,48
    8000224c:	00008067          	ret

0000000080002250 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00813423          	sd	s0,8(sp)
    80002258:	01010413          	addi	s0,sp,16
    8000225c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002260:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002264:	0006c603          	lbu	a2,0(a3)
    80002268:	fd06071b          	addiw	a4,a2,-48
    8000226c:	0ff77713          	andi	a4,a4,255
    80002270:	00900793          	li	a5,9
    80002274:	02e7e063          	bltu	a5,a4,80002294 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002278:	0025179b          	slliw	a5,a0,0x2
    8000227c:	00a787bb          	addw	a5,a5,a0
    80002280:	0017979b          	slliw	a5,a5,0x1
    80002284:	00168693          	addi	a3,a3,1
    80002288:	00c787bb          	addw	a5,a5,a2
    8000228c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002290:	fd5ff06f          	j	80002264 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002294:	00813403          	ld	s0,8(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret

00000000800022a0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800022a0:	fc010113          	addi	sp,sp,-64
    800022a4:	02113c23          	sd	ra,56(sp)
    800022a8:	02813823          	sd	s0,48(sp)
    800022ac:	02913423          	sd	s1,40(sp)
    800022b0:	03213023          	sd	s2,32(sp)
    800022b4:	01313c23          	sd	s3,24(sp)
    800022b8:	04010413          	addi	s0,sp,64
    800022bc:	00050493          	mv	s1,a0
    800022c0:	00058913          	mv	s2,a1
    800022c4:	00060993          	mv	s3,a2
    LOCK();
    800022c8:	00100613          	li	a2,1
    800022cc:	00000593          	li	a1,0
    800022d0:	00005517          	auipc	a0,0x5
    800022d4:	ff850513          	addi	a0,a0,-8 # 800072c8 <lockPrint>
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	f8c080e7          	jalr	-116(ra) # 80001264 <copy_and_swap>
    800022e0:	fe0514e3          	bnez	a0,800022c8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800022e4:	00098463          	beqz	s3,800022ec <_Z8printIntiii+0x4c>
    800022e8:	0804c463          	bltz	s1,80002370 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800022ec:	0004851b          	sext.w	a0,s1
    neg = 0;
    800022f0:	00000593          	li	a1,0
    }

    i = 0;
    800022f4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800022f8:	0009079b          	sext.w	a5,s2
    800022fc:	0325773b          	remuw	a4,a0,s2
    80002300:	00048613          	mv	a2,s1
    80002304:	0014849b          	addiw	s1,s1,1
    80002308:	02071693          	slli	a3,a4,0x20
    8000230c:	0206d693          	srli	a3,a3,0x20
    80002310:	00005717          	auipc	a4,0x5
    80002314:	ef070713          	addi	a4,a4,-272 # 80007200 <digits>
    80002318:	00d70733          	add	a4,a4,a3
    8000231c:	00074683          	lbu	a3,0(a4)
    80002320:	fd040713          	addi	a4,s0,-48
    80002324:	00c70733          	add	a4,a4,a2
    80002328:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000232c:	0005071b          	sext.w	a4,a0
    80002330:	0325553b          	divuw	a0,a0,s2
    80002334:	fcf772e3          	bgeu	a4,a5,800022f8 <_Z8printIntiii+0x58>
    if(neg)
    80002338:	00058c63          	beqz	a1,80002350 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000233c:	fd040793          	addi	a5,s0,-48
    80002340:	009784b3          	add	s1,a5,s1
    80002344:	02d00793          	li	a5,45
    80002348:	fef48823          	sb	a5,-16(s1)
    8000234c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002350:	fff4849b          	addiw	s1,s1,-1
    80002354:	0204c463          	bltz	s1,8000237c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002358:	fd040793          	addi	a5,s0,-48
    8000235c:	009787b3          	add	a5,a5,s1
    80002360:	ff07c503          	lbu	a0,-16(a5)
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	fd4080e7          	jalr	-44(ra) # 80001338 <_Z4putcc>
    8000236c:	fe5ff06f          	j	80002350 <_Z8printIntiii+0xb0>
        x = -xx;
    80002370:	4090053b          	negw	a0,s1
        neg = 1;
    80002374:	00100593          	li	a1,1
        x = -xx;
    80002378:	f7dff06f          	j	800022f4 <_Z8printIntiii+0x54>

    UNLOCK();
    8000237c:	00000613          	li	a2,0
    80002380:	00100593          	li	a1,1
    80002384:	00005517          	auipc	a0,0x5
    80002388:	f4450513          	addi	a0,a0,-188 # 800072c8 <lockPrint>
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	ed8080e7          	jalr	-296(ra) # 80001264 <copy_and_swap>
    80002394:	fe0514e3          	bnez	a0,8000237c <_Z8printIntiii+0xdc>
    80002398:	03813083          	ld	ra,56(sp)
    8000239c:	03013403          	ld	s0,48(sp)
    800023a0:	02813483          	ld	s1,40(sp)
    800023a4:	02013903          	ld	s2,32(sp)
    800023a8:	01813983          	ld	s3,24(sp)
    800023ac:	04010113          	addi	sp,sp,64
    800023b0:	00008067          	ret

00000000800023b4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800023b4:	fd010113          	addi	sp,sp,-48
    800023b8:	02113423          	sd	ra,40(sp)
    800023bc:	02813023          	sd	s0,32(sp)
    800023c0:	00913c23          	sd	s1,24(sp)
    800023c4:	01213823          	sd	s2,16(sp)
    800023c8:	01313423          	sd	s3,8(sp)
    800023cc:	03010413          	addi	s0,sp,48
    800023d0:	00050493          	mv	s1,a0
    800023d4:	00058913          	mv	s2,a1
    800023d8:	0015879b          	addiw	a5,a1,1
    800023dc:	0007851b          	sext.w	a0,a5
    800023e0:	00f4a023          	sw	a5,0(s1)
    800023e4:	0004a823          	sw	zero,16(s1)
    800023e8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800023ec:	00251513          	slli	a0,a0,0x2
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	c10080e7          	jalr	-1008(ra) # 80001000 <mem_alloc>
    800023f8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800023fc:	01000513          	li	a0,16
    80002400:	fffff097          	auipc	ra,0xfffff
    80002404:	550080e7          	jalr	1360(ra) # 80001950 <_Znwm>
    80002408:	00050993          	mv	s3,a0
    8000240c:	00000593          	li	a1,0
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	284080e7          	jalr	644(ra) # 80001694 <_ZN9SemaphoreC1Ej>
    80002418:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000241c:	01000513          	li	a0,16
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	530080e7          	jalr	1328(ra) # 80001950 <_Znwm>
    80002428:	00050993          	mv	s3,a0
    8000242c:	00090593          	mv	a1,s2
    80002430:	fffff097          	auipc	ra,0xfffff
    80002434:	264080e7          	jalr	612(ra) # 80001694 <_ZN9SemaphoreC1Ej>
    80002438:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000243c:	01000513          	li	a0,16
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	510080e7          	jalr	1296(ra) # 80001950 <_Znwm>
    80002448:	00050913          	mv	s2,a0
    8000244c:	00100593          	li	a1,1
    80002450:	fffff097          	auipc	ra,0xfffff
    80002454:	244080e7          	jalr	580(ra) # 80001694 <_ZN9SemaphoreC1Ej>
    80002458:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000245c:	01000513          	li	a0,16
    80002460:	fffff097          	auipc	ra,0xfffff
    80002464:	4f0080e7          	jalr	1264(ra) # 80001950 <_Znwm>
    80002468:	00050913          	mv	s2,a0
    8000246c:	00100593          	li	a1,1
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	224080e7          	jalr	548(ra) # 80001694 <_ZN9SemaphoreC1Ej>
    80002478:	0324b823          	sd	s2,48(s1)
}
    8000247c:	02813083          	ld	ra,40(sp)
    80002480:	02013403          	ld	s0,32(sp)
    80002484:	01813483          	ld	s1,24(sp)
    80002488:	01013903          	ld	s2,16(sp)
    8000248c:	00813983          	ld	s3,8(sp)
    80002490:	03010113          	addi	sp,sp,48
    80002494:	00008067          	ret
    80002498:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000249c:	00098513          	mv	a0,s3
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	500080e7          	jalr	1280(ra) # 800019a0 <_ZdlPv>
    800024a8:	00048513          	mv	a0,s1
    800024ac:	00006097          	auipc	ra,0x6
    800024b0:	efc080e7          	jalr	-260(ra) # 800083a8 <_Unwind_Resume>
    800024b4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800024b8:	00098513          	mv	a0,s3
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	4e4080e7          	jalr	1252(ra) # 800019a0 <_ZdlPv>
    800024c4:	00048513          	mv	a0,s1
    800024c8:	00006097          	auipc	ra,0x6
    800024cc:	ee0080e7          	jalr	-288(ra) # 800083a8 <_Unwind_Resume>
    800024d0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800024d4:	00090513          	mv	a0,s2
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	4c8080e7          	jalr	1224(ra) # 800019a0 <_ZdlPv>
    800024e0:	00048513          	mv	a0,s1
    800024e4:	00006097          	auipc	ra,0x6
    800024e8:	ec4080e7          	jalr	-316(ra) # 800083a8 <_Unwind_Resume>
    800024ec:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800024f0:	00090513          	mv	a0,s2
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	4ac080e7          	jalr	1196(ra) # 800019a0 <_ZdlPv>
    800024fc:	00048513          	mv	a0,s1
    80002500:	00006097          	auipc	ra,0x6
    80002504:	ea8080e7          	jalr	-344(ra) # 800083a8 <_Unwind_Resume>

0000000080002508 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002508:	fe010113          	addi	sp,sp,-32
    8000250c:	00113c23          	sd	ra,24(sp)
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	01213023          	sd	s2,0(sp)
    8000251c:	02010413          	addi	s0,sp,32
    80002520:	00050493          	mv	s1,a0
    80002524:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002528:	01853503          	ld	a0,24(a0)
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	18c080e7          	jalr	396(ra) # 800016b8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002534:	0304b503          	ld	a0,48(s1)
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	180080e7          	jalr	384(ra) # 800016b8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002540:	0084b783          	ld	a5,8(s1)
    80002544:	0144a703          	lw	a4,20(s1)
    80002548:	00271713          	slli	a4,a4,0x2
    8000254c:	00e787b3          	add	a5,a5,a4
    80002550:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002554:	0144a783          	lw	a5,20(s1)
    80002558:	0017879b          	addiw	a5,a5,1
    8000255c:	0004a703          	lw	a4,0(s1)
    80002560:	02e7e7bb          	remw	a5,a5,a4
    80002564:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002568:	0304b503          	ld	a0,48(s1)
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	168080e7          	jalr	360(ra) # 800016d4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002574:	0204b503          	ld	a0,32(s1)
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	15c080e7          	jalr	348(ra) # 800016d4 <_ZN9Semaphore6signalEv>

}
    80002580:	01813083          	ld	ra,24(sp)
    80002584:	01013403          	ld	s0,16(sp)
    80002588:	00813483          	ld	s1,8(sp)
    8000258c:	00013903          	ld	s2,0(sp)
    80002590:	02010113          	addi	sp,sp,32
    80002594:	00008067          	ret

0000000080002598 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002598:	fe010113          	addi	sp,sp,-32
    8000259c:	00113c23          	sd	ra,24(sp)
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	00913423          	sd	s1,8(sp)
    800025a8:	01213023          	sd	s2,0(sp)
    800025ac:	02010413          	addi	s0,sp,32
    800025b0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800025b4:	02053503          	ld	a0,32(a0)
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	100080e7          	jalr	256(ra) # 800016b8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800025c0:	0284b503          	ld	a0,40(s1)
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	0f4080e7          	jalr	244(ra) # 800016b8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800025cc:	0084b703          	ld	a4,8(s1)
    800025d0:	0104a783          	lw	a5,16(s1)
    800025d4:	00279693          	slli	a3,a5,0x2
    800025d8:	00d70733          	add	a4,a4,a3
    800025dc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800025e0:	0017879b          	addiw	a5,a5,1
    800025e4:	0004a703          	lw	a4,0(s1)
    800025e8:	02e7e7bb          	remw	a5,a5,a4
    800025ec:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800025f0:	0284b503          	ld	a0,40(s1)
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	0e0080e7          	jalr	224(ra) # 800016d4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800025fc:	0184b503          	ld	a0,24(s1)
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	0d4080e7          	jalr	212(ra) # 800016d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002608:	00090513          	mv	a0,s2
    8000260c:	01813083          	ld	ra,24(sp)
    80002610:	01013403          	ld	s0,16(sp)
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	00013903          	ld	s2,0(sp)
    8000261c:	02010113          	addi	sp,sp,32
    80002620:	00008067          	ret

0000000080002624 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002624:	fe010113          	addi	sp,sp,-32
    80002628:	00113c23          	sd	ra,24(sp)
    8000262c:	00813823          	sd	s0,16(sp)
    80002630:	00913423          	sd	s1,8(sp)
    80002634:	01213023          	sd	s2,0(sp)
    80002638:	02010413          	addi	s0,sp,32
    8000263c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002640:	02853503          	ld	a0,40(a0)
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	074080e7          	jalr	116(ra) # 800016b8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000264c:	0304b503          	ld	a0,48(s1)
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	068080e7          	jalr	104(ra) # 800016b8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002658:	0144a783          	lw	a5,20(s1)
    8000265c:	0104a903          	lw	s2,16(s1)
    80002660:	0327ce63          	blt	a5,s2,8000269c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002664:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002668:	0304b503          	ld	a0,48(s1)
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	068080e7          	jalr	104(ra) # 800016d4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002674:	0284b503          	ld	a0,40(s1)
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	05c080e7          	jalr	92(ra) # 800016d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002680:	00090513          	mv	a0,s2
    80002684:	01813083          	ld	ra,24(sp)
    80002688:	01013403          	ld	s0,16(sp)
    8000268c:	00813483          	ld	s1,8(sp)
    80002690:	00013903          	ld	s2,0(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret
        ret = cap - head + tail;
    8000269c:	0004a703          	lw	a4,0(s1)
    800026a0:	4127093b          	subw	s2,a4,s2
    800026a4:	00f9093b          	addw	s2,s2,a5
    800026a8:	fc1ff06f          	j	80002668 <_ZN9BufferCPP6getCntEv+0x44>

00000000800026ac <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800026ac:	fe010113          	addi	sp,sp,-32
    800026b0:	00113c23          	sd	ra,24(sp)
    800026b4:	00813823          	sd	s0,16(sp)
    800026b8:	00913423          	sd	s1,8(sp)
    800026bc:	02010413          	addi	s0,sp,32
    800026c0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800026c4:	00a00513          	li	a0,10
    800026c8:	fffff097          	auipc	ra,0xfffff
    800026cc:	0e0080e7          	jalr	224(ra) # 800017a8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800026d0:	00004517          	auipc	a0,0x4
    800026d4:	a3050513          	addi	a0,a0,-1488 # 80006100 <_ZZ14__print_uint64mE6digits+0x10>
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	a30080e7          	jalr	-1488(ra) # 80002108 <_Z11printStringPKc>
    while (getCnt()) {
    800026e0:	00048513          	mv	a0,s1
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	f40080e7          	jalr	-192(ra) # 80002624 <_ZN9BufferCPP6getCntEv>
    800026ec:	02050c63          	beqz	a0,80002724 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800026f0:	0084b783          	ld	a5,8(s1)
    800026f4:	0104a703          	lw	a4,16(s1)
    800026f8:	00271713          	slli	a4,a4,0x2
    800026fc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002700:	0007c503          	lbu	a0,0(a5)
    80002704:	fffff097          	auipc	ra,0xfffff
    80002708:	0a4080e7          	jalr	164(ra) # 800017a8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000270c:	0104a783          	lw	a5,16(s1)
    80002710:	0017879b          	addiw	a5,a5,1
    80002714:	0004a703          	lw	a4,0(s1)
    80002718:	02e7e7bb          	remw	a5,a5,a4
    8000271c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002720:	fc1ff06f          	j	800026e0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002724:	02100513          	li	a0,33
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	080080e7          	jalr	128(ra) # 800017a8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002730:	00a00513          	li	a0,10
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	074080e7          	jalr	116(ra) # 800017a8 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000273c:	0084b503          	ld	a0,8(s1)
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	8cc080e7          	jalr	-1844(ra) # 8000100c <mem_free>
    delete itemAvailable;
    80002748:	0204b503          	ld	a0,32(s1)
    8000274c:	00050863          	beqz	a0,8000275c <_ZN9BufferCPPD1Ev+0xb0>
    80002750:	00053783          	ld	a5,0(a0)
    80002754:	0087b783          	ld	a5,8(a5)
    80002758:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000275c:	0184b503          	ld	a0,24(s1)
    80002760:	00050863          	beqz	a0,80002770 <_ZN9BufferCPPD1Ev+0xc4>
    80002764:	00053783          	ld	a5,0(a0)
    80002768:	0087b783          	ld	a5,8(a5)
    8000276c:	000780e7          	jalr	a5
    delete mutexTail;
    80002770:	0304b503          	ld	a0,48(s1)
    80002774:	00050863          	beqz	a0,80002784 <_ZN9BufferCPPD1Ev+0xd8>
    80002778:	00053783          	ld	a5,0(a0)
    8000277c:	0087b783          	ld	a5,8(a5)
    80002780:	000780e7          	jalr	a5
    delete mutexHead;
    80002784:	0284b503          	ld	a0,40(s1)
    80002788:	00050863          	beqz	a0,80002798 <_ZN9BufferCPPD1Ev+0xec>
    8000278c:	00053783          	ld	a5,0(a0)
    80002790:	0087b783          	ld	a5,8(a5)
    80002794:	000780e7          	jalr	a5
}
    80002798:	01813083          	ld	ra,24(sp)
    8000279c:	01013403          	ld	s0,16(sp)
    800027a0:	00813483          	ld	s1,8(sp)
    800027a4:	02010113          	addi	sp,sp,32
    800027a8:	00008067          	ret

00000000800027ac <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00113c23          	sd	ra,24(sp)
    800027b4:	00813823          	sd	s0,16(sp)
    800027b8:	00913423          	sd	s1,8(sp)
    800027bc:	01213023          	sd	s2,0(sp)
    800027c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800027c4:	00000913          	li	s2,0
    800027c8:	0380006f          	j	80002800 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	864080e7          	jalr	-1948(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800027d4:	00148493          	addi	s1,s1,1
    800027d8:	000027b7          	lui	a5,0x2
    800027dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800027e0:	0097ee63          	bltu	a5,s1,800027fc <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800027e4:	00000713          	li	a4,0
    800027e8:	000077b7          	lui	a5,0x7
    800027ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800027f0:	fce7eee3          	bltu	a5,a4,800027cc <_Z11workerBodyAPv+0x20>
    800027f4:	00170713          	addi	a4,a4,1
    800027f8:	ff1ff06f          	j	800027e8 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800027fc:	00190913          	addi	s2,s2,1
    80002800:	00900793          	li	a5,9
    80002804:	0527e063          	bltu	a5,s2,80002844 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002808:	00004517          	auipc	a0,0x4
    8000280c:	91050513          	addi	a0,a0,-1776 # 80006118 <_ZZ14__print_uint64mE6digits+0x28>
    80002810:	00000097          	auipc	ra,0x0
    80002814:	8f8080e7          	jalr	-1800(ra) # 80002108 <_Z11printStringPKc>
    80002818:	00000613          	li	a2,0
    8000281c:	00a00593          	li	a1,10
    80002820:	0009051b          	sext.w	a0,s2
    80002824:	00000097          	auipc	ra,0x0
    80002828:	a7c080e7          	jalr	-1412(ra) # 800022a0 <_Z8printIntiii>
    8000282c:	00004517          	auipc	a0,0x4
    80002830:	a0450513          	addi	a0,a0,-1532 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002834:	00000097          	auipc	ra,0x0
    80002838:	8d4080e7          	jalr	-1836(ra) # 80002108 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000283c:	00000493          	li	s1,0
    80002840:	f99ff06f          	j	800027d8 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002844:	00004517          	auipc	a0,0x4
    80002848:	8dc50513          	addi	a0,a0,-1828 # 80006120 <_ZZ14__print_uint64mE6digits+0x30>
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	8bc080e7          	jalr	-1860(ra) # 80002108 <_Z11printStringPKc>
    finishedA = true;
    80002854:	00100793          	li	a5,1
    80002858:	00005717          	auipc	a4,0x5
    8000285c:	a6f70c23          	sb	a5,-1416(a4) # 800072d0 <finishedA>
    //thread_exit();
}
    80002860:	01813083          	ld	ra,24(sp)
    80002864:	01013403          	ld	s0,16(sp)
    80002868:	00813483          	ld	s1,8(sp)
    8000286c:	00013903          	ld	s2,0(sp)
    80002870:	02010113          	addi	sp,sp,32
    80002874:	00008067          	ret

0000000080002878 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80002878:	fe010113          	addi	sp,sp,-32
    8000287c:	00113c23          	sd	ra,24(sp)
    80002880:	00813823          	sd	s0,16(sp)
    80002884:	00913423          	sd	s1,8(sp)
    80002888:	01213023          	sd	s2,0(sp)
    8000288c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002890:	00000913          	li	s2,0
    80002894:	0380006f          	j	800028cc <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002898:	ffffe097          	auipc	ra,0xffffe
    8000289c:	798080e7          	jalr	1944(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800028a0:	00148493          	addi	s1,s1,1
    800028a4:	000027b7          	lui	a5,0x2
    800028a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800028ac:	0097ee63          	bltu	a5,s1,800028c8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800028b0:	00000713          	li	a4,0
    800028b4:	000077b7          	lui	a5,0x7
    800028b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800028bc:	fce7eee3          	bltu	a5,a4,80002898 <_Z11workerBodyBPv+0x20>
    800028c0:	00170713          	addi	a4,a4,1
    800028c4:	ff1ff06f          	j	800028b4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800028c8:	00190913          	addi	s2,s2,1
    800028cc:	00f00793          	li	a5,15
    800028d0:	0527e063          	bltu	a5,s2,80002910 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800028d4:	00004517          	auipc	a0,0x4
    800028d8:	85c50513          	addi	a0,a0,-1956 # 80006130 <_ZZ14__print_uint64mE6digits+0x40>
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	82c080e7          	jalr	-2004(ra) # 80002108 <_Z11printStringPKc>
    800028e4:	00000613          	li	a2,0
    800028e8:	00a00593          	li	a1,10
    800028ec:	0009051b          	sext.w	a0,s2
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	9b0080e7          	jalr	-1616(ra) # 800022a0 <_Z8printIntiii>
    800028f8:	00004517          	auipc	a0,0x4
    800028fc:	93850513          	addi	a0,a0,-1736 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002900:	00000097          	auipc	ra,0x0
    80002904:	808080e7          	jalr	-2040(ra) # 80002108 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002908:	00000493          	li	s1,0
    8000290c:	f99ff06f          	j	800028a4 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002910:	00004517          	auipc	a0,0x4
    80002914:	82850513          	addi	a0,a0,-2008 # 80006138 <_ZZ14__print_uint64mE6digits+0x48>
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	7f0080e7          	jalr	2032(ra) # 80002108 <_Z11printStringPKc>
    finishedB = true;
    80002920:	00100793          	li	a5,1
    80002924:	00005717          	auipc	a4,0x5
    80002928:	9af706a3          	sb	a5,-1619(a4) # 800072d1 <finishedB>
    //thread_dispatch();
    //thread_exit();
}
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	00013903          	ld	s2,0(sp)
    8000293c:	02010113          	addi	sp,sp,32
    80002940:	00008067          	ret

0000000080002944 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00113c23          	sd	ra,24(sp)
    8000294c:	00813823          	sd	s0,16(sp)
    80002950:	00913423          	sd	s1,8(sp)
    80002954:	01213023          	sd	s2,0(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002960:	00100793          	li	a5,1
    80002964:	02a7f863          	bgeu	a5,a0,80002994 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002968:	00a00793          	li	a5,10
    8000296c:	02f577b3          	remu	a5,a0,a5
    80002970:	02078e63          	beqz	a5,800029ac <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002974:	fff48513          	addi	a0,s1,-1
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	fcc080e7          	jalr	-52(ra) # 80002944 <_Z9fibonaccim>
    80002980:	00050913          	mv	s2,a0
    80002984:	ffe48513          	addi	a0,s1,-2
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	fbc080e7          	jalr	-68(ra) # 80002944 <_Z9fibonaccim>
    80002990:	00a90533          	add	a0,s2,a0
}
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	00013903          	ld	s2,0(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800029ac:	ffffe097          	auipc	ra,0xffffe
    800029b0:	684080e7          	jalr	1668(ra) # 80001030 <thread_dispatch>
    800029b4:	fc1ff06f          	j	80002974 <_Z9fibonaccim+0x30>

00000000800029b8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800029b8:	fe010113          	addi	sp,sp,-32
    800029bc:	00113c23          	sd	ra,24(sp)
    800029c0:	00813823          	sd	s0,16(sp)
    800029c4:	00913423          	sd	s1,8(sp)
    800029c8:	01213023          	sd	s2,0(sp)
    800029cc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800029d0:	00000493          	li	s1,0
    800029d4:	0400006f          	j	80002a14 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800029d8:	00003517          	auipc	a0,0x3
    800029dc:	77050513          	addi	a0,a0,1904 # 80006148 <_ZZ14__print_uint64mE6digits+0x58>
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	728080e7          	jalr	1832(ra) # 80002108 <_Z11printStringPKc>
    800029e8:	00000613          	li	a2,0
    800029ec:	00a00593          	li	a1,10
    800029f0:	00048513          	mv	a0,s1
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	8ac080e7          	jalr	-1876(ra) # 800022a0 <_Z8printIntiii>
    800029fc:	00004517          	auipc	a0,0x4
    80002a00:	83450513          	addi	a0,a0,-1996 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	704080e7          	jalr	1796(ra) # 80002108 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002a0c:	0014849b          	addiw	s1,s1,1
    80002a10:	0ff4f493          	andi	s1,s1,255
    80002a14:	00200793          	li	a5,2
    80002a18:	fc97f0e3          	bgeu	a5,s1,800029d8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80002a1c:	00003517          	auipc	a0,0x3
    80002a20:	73450513          	addi	a0,a0,1844 # 80006150 <_ZZ14__print_uint64mE6digits+0x60>
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	6e4080e7          	jalr	1764(ra) # 80002108 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002a2c:	00700313          	li	t1,7
    thread_dispatch();
    80002a30:	ffffe097          	auipc	ra,0xffffe
    80002a34:	600080e7          	jalr	1536(ra) # 80001030 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002a38:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002a3c:	00003517          	auipc	a0,0x3
    80002a40:	72450513          	addi	a0,a0,1828 # 80006160 <_ZZ14__print_uint64mE6digits+0x70>
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	6c4080e7          	jalr	1732(ra) # 80002108 <_Z11printStringPKc>
    80002a4c:	00000613          	li	a2,0
    80002a50:	00a00593          	li	a1,10
    80002a54:	0009051b          	sext.w	a0,s2
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	848080e7          	jalr	-1976(ra) # 800022a0 <_Z8printIntiii>
    80002a60:	00003517          	auipc	a0,0x3
    80002a64:	7d050513          	addi	a0,a0,2000 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	6a0080e7          	jalr	1696(ra) # 80002108 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002a70:	00c00513          	li	a0,12
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	ed0080e7          	jalr	-304(ra) # 80002944 <_Z9fibonaccim>
    80002a7c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002a80:	00003517          	auipc	a0,0x3
    80002a84:	6e850513          	addi	a0,a0,1768 # 80006168 <_ZZ14__print_uint64mE6digits+0x78>
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	680080e7          	jalr	1664(ra) # 80002108 <_Z11printStringPKc>
    80002a90:	00000613          	li	a2,0
    80002a94:	00a00593          	li	a1,10
    80002a98:	0009051b          	sext.w	a0,s2
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	804080e7          	jalr	-2044(ra) # 800022a0 <_Z8printIntiii>
    80002aa4:	00003517          	auipc	a0,0x3
    80002aa8:	78c50513          	addi	a0,a0,1932 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	65c080e7          	jalr	1628(ra) # 80002108 <_Z11printStringPKc>
    80002ab4:	0400006f          	j	80002af4 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002ab8:	00003517          	auipc	a0,0x3
    80002abc:	69050513          	addi	a0,a0,1680 # 80006148 <_ZZ14__print_uint64mE6digits+0x58>
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	648080e7          	jalr	1608(ra) # 80002108 <_Z11printStringPKc>
    80002ac8:	00000613          	li	a2,0
    80002acc:	00a00593          	li	a1,10
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	7cc080e7          	jalr	1996(ra) # 800022a0 <_Z8printIntiii>
    80002adc:	00003517          	auipc	a0,0x3
    80002ae0:	75450513          	addi	a0,a0,1876 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	624080e7          	jalr	1572(ra) # 80002108 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002aec:	0014849b          	addiw	s1,s1,1
    80002af0:	0ff4f493          	andi	s1,s1,255
    80002af4:	00500793          	li	a5,5
    80002af8:	fc97f0e3          	bgeu	a5,s1,80002ab8 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80002afc:	00003517          	auipc	a0,0x3
    80002b00:	62450513          	addi	a0,a0,1572 # 80006120 <_ZZ14__print_uint64mE6digits+0x30>
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	604080e7          	jalr	1540(ra) # 80002108 <_Z11printStringPKc>
    finishedC = true;
    80002b0c:	00100793          	li	a5,1
    80002b10:	00004717          	auipc	a4,0x4
    80002b14:	7cf70123          	sb	a5,1986(a4) # 800072d2 <finishedC>
    //thread_dispatch();
    //thread_exit();
}
    80002b18:	01813083          	ld	ra,24(sp)
    80002b1c:	01013403          	ld	s0,16(sp)
    80002b20:	00813483          	ld	s1,8(sp)
    80002b24:	00013903          	ld	s2,0(sp)
    80002b28:	02010113          	addi	sp,sp,32
    80002b2c:	00008067          	ret

0000000080002b30 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80002b30:	fe010113          	addi	sp,sp,-32
    80002b34:	00113c23          	sd	ra,24(sp)
    80002b38:	00813823          	sd	s0,16(sp)
    80002b3c:	00913423          	sd	s1,8(sp)
    80002b40:	01213023          	sd	s2,0(sp)
    80002b44:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002b48:	00a00493          	li	s1,10
    80002b4c:	0400006f          	j	80002b8c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002b50:	00003517          	auipc	a0,0x3
    80002b54:	62850513          	addi	a0,a0,1576 # 80006178 <_ZZ14__print_uint64mE6digits+0x88>
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	5b0080e7          	jalr	1456(ra) # 80002108 <_Z11printStringPKc>
    80002b60:	00000613          	li	a2,0
    80002b64:	00a00593          	li	a1,10
    80002b68:	00048513          	mv	a0,s1
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	734080e7          	jalr	1844(ra) # 800022a0 <_Z8printIntiii>
    80002b74:	00003517          	auipc	a0,0x3
    80002b78:	6bc50513          	addi	a0,a0,1724 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	58c080e7          	jalr	1420(ra) # 80002108 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002b84:	0014849b          	addiw	s1,s1,1
    80002b88:	0ff4f493          	andi	s1,s1,255
    80002b8c:	00c00793          	li	a5,12
    80002b90:	fc97f0e3          	bgeu	a5,s1,80002b50 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002b94:	00003517          	auipc	a0,0x3
    80002b98:	5ec50513          	addi	a0,a0,1516 # 80006180 <_ZZ14__print_uint64mE6digits+0x90>
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	56c080e7          	jalr	1388(ra) # 80002108 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002ba4:	00500313          	li	t1,5
    thread_dispatch();
    80002ba8:	ffffe097          	auipc	ra,0xffffe
    80002bac:	488080e7          	jalr	1160(ra) # 80001030 <thread_dispatch>

    uint64 result = fibonacci(16);
    80002bb0:	01000513          	li	a0,16
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	d90080e7          	jalr	-624(ra) # 80002944 <_Z9fibonaccim>
    80002bbc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002bc0:	00003517          	auipc	a0,0x3
    80002bc4:	5d050513          	addi	a0,a0,1488 # 80006190 <_ZZ14__print_uint64mE6digits+0xa0>
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	540080e7          	jalr	1344(ra) # 80002108 <_Z11printStringPKc>
    80002bd0:	00000613          	li	a2,0
    80002bd4:	00a00593          	li	a1,10
    80002bd8:	0009051b          	sext.w	a0,s2
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	6c4080e7          	jalr	1732(ra) # 800022a0 <_Z8printIntiii>
    80002be4:	00003517          	auipc	a0,0x3
    80002be8:	64c50513          	addi	a0,a0,1612 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002bec:	fffff097          	auipc	ra,0xfffff
    80002bf0:	51c080e7          	jalr	1308(ra) # 80002108 <_Z11printStringPKc>
    80002bf4:	0400006f          	j	80002c34 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002bf8:	00003517          	auipc	a0,0x3
    80002bfc:	58050513          	addi	a0,a0,1408 # 80006178 <_ZZ14__print_uint64mE6digits+0x88>
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	508080e7          	jalr	1288(ra) # 80002108 <_Z11printStringPKc>
    80002c08:	00000613          	li	a2,0
    80002c0c:	00a00593          	li	a1,10
    80002c10:	00048513          	mv	a0,s1
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	68c080e7          	jalr	1676(ra) # 800022a0 <_Z8printIntiii>
    80002c1c:	00003517          	auipc	a0,0x3
    80002c20:	61450513          	addi	a0,a0,1556 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	4e4080e7          	jalr	1252(ra) # 80002108 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002c2c:	0014849b          	addiw	s1,s1,1
    80002c30:	0ff4f493          	andi	s1,s1,255
    80002c34:	00f00793          	li	a5,15
    80002c38:	fc97f0e3          	bgeu	a5,s1,80002bf8 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002c3c:	00003517          	auipc	a0,0x3
    80002c40:	56450513          	addi	a0,a0,1380 # 800061a0 <_ZZ14__print_uint64mE6digits+0xb0>
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	4c4080e7          	jalr	1220(ra) # 80002108 <_Z11printStringPKc>
    finishedD = true;
    80002c4c:	00100793          	li	a5,1
    80002c50:	00004717          	auipc	a4,0x4
    80002c54:	68f701a3          	sb	a5,1667(a4) # 800072d3 <finishedD>
    //thread_dispatch();
    //thread_exit();
}
    80002c58:	01813083          	ld	ra,24(sp)
    80002c5c:	01013403          	ld	s0,16(sp)
    80002c60:	00813483          	ld	s1,8(sp)
    80002c64:	00013903          	ld	s2,0(sp)
    80002c68:	02010113          	addi	sp,sp,32
    80002c6c:	00008067          	ret

0000000080002c70 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002c70:	fd010113          	addi	sp,sp,-48
    80002c74:	02113423          	sd	ra,40(sp)
    80002c78:	02813023          	sd	s0,32(sp)
    80002c7c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002c80:	00000613          	li	a2,0
    80002c84:	00000597          	auipc	a1,0x0
    80002c88:	b2858593          	addi	a1,a1,-1240 # 800027ac <_Z11workerBodyAPv>
    80002c8c:	fd040513          	addi	a0,s0,-48
    80002c90:	ffffe097          	auipc	ra,0xffffe
    80002c94:	388080e7          	jalr	904(ra) # 80001018 <thread_create>
    printString("ThreadA created\n");
    80002c98:	00003517          	auipc	a0,0x3
    80002c9c:	51850513          	addi	a0,a0,1304 # 800061b0 <_ZZ14__print_uint64mE6digits+0xc0>
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	468080e7          	jalr	1128(ra) # 80002108 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002ca8:	00000613          	li	a2,0
    80002cac:	00000597          	auipc	a1,0x0
    80002cb0:	bcc58593          	addi	a1,a1,-1076 # 80002878 <_Z11workerBodyBPv>
    80002cb4:	fd840513          	addi	a0,s0,-40
    80002cb8:	ffffe097          	auipc	ra,0xffffe
    80002cbc:	360080e7          	jalr	864(ra) # 80001018 <thread_create>
    printString("ThreadB created\n");
    80002cc0:	00003517          	auipc	a0,0x3
    80002cc4:	50850513          	addi	a0,a0,1288 # 800061c8 <_ZZ14__print_uint64mE6digits+0xd8>
    80002cc8:	fffff097          	auipc	ra,0xfffff
    80002ccc:	440080e7          	jalr	1088(ra) # 80002108 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002cd0:	00000613          	li	a2,0
    80002cd4:	00000597          	auipc	a1,0x0
    80002cd8:	ce458593          	addi	a1,a1,-796 # 800029b8 <_Z11workerBodyCPv>
    80002cdc:	fe040513          	addi	a0,s0,-32
    80002ce0:	ffffe097          	auipc	ra,0xffffe
    80002ce4:	338080e7          	jalr	824(ra) # 80001018 <thread_create>
    printString("ThreadC created\n");
    80002ce8:	00003517          	auipc	a0,0x3
    80002cec:	4f850513          	addi	a0,a0,1272 # 800061e0 <_ZZ14__print_uint64mE6digits+0xf0>
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	418080e7          	jalr	1048(ra) # 80002108 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002cf8:	00000613          	li	a2,0
    80002cfc:	00000597          	auipc	a1,0x0
    80002d00:	e3458593          	addi	a1,a1,-460 # 80002b30 <_Z11workerBodyDPv>
    80002d04:	fe840513          	addi	a0,s0,-24
    80002d08:	ffffe097          	auipc	ra,0xffffe
    80002d0c:	310080e7          	jalr	784(ra) # 80001018 <thread_create>
    printString("ThreadD created\n");
    80002d10:	00003517          	auipc	a0,0x3
    80002d14:	4e850513          	addi	a0,a0,1256 # 800061f8 <_ZZ14__print_uint64mE6digits+0x108>
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	3f0080e7          	jalr	1008(ra) # 80002108 <_Z11printStringPKc>
    80002d20:	00c0006f          	j	80002d2c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002d24:	ffffe097          	auipc	ra,0xffffe
    80002d28:	30c080e7          	jalr	780(ra) # 80001030 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002d2c:	00004797          	auipc	a5,0x4
    80002d30:	5a47c783          	lbu	a5,1444(a5) # 800072d0 <finishedA>
    80002d34:	fe0788e3          	beqz	a5,80002d24 <_Z18Threads_C_API_testv+0xb4>
    80002d38:	00004797          	auipc	a5,0x4
    80002d3c:	5997c783          	lbu	a5,1433(a5) # 800072d1 <finishedB>
    80002d40:	fe0782e3          	beqz	a5,80002d24 <_Z18Threads_C_API_testv+0xb4>
    80002d44:	00004797          	auipc	a5,0x4
    80002d48:	58e7c783          	lbu	a5,1422(a5) # 800072d2 <finishedC>
    80002d4c:	fc078ce3          	beqz	a5,80002d24 <_Z18Threads_C_API_testv+0xb4>
    80002d50:	00004797          	auipc	a5,0x4
    80002d54:	5837c783          	lbu	a5,1411(a5) # 800072d3 <finishedD>
    80002d58:	fc0786e3          	beqz	a5,80002d24 <_Z18Threads_C_API_testv+0xb4>
    }
}
    80002d5c:	02813083          	ld	ra,40(sp)
    80002d60:	02013403          	ld	s0,32(sp)
    80002d64:	03010113          	addi	sp,sp,48
    80002d68:	00008067          	ret

0000000080002d6c <_Z8userMainv>:

#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"

void userMain() {
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00113423          	sd	ra,8(sp)
    80002d74:	00813023          	sd	s0,0(sp)
    80002d78:	01010413          	addi	s0,sp,16
    __print_string("I am here!\n");
    80002d7c:	00003517          	auipc	a0,0x3
    80002d80:	49450513          	addi	a0,a0,1172 # 80006210 <_ZZ14__print_uint64mE6digits+0x120>
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	194080e7          	jalr	404(ra) # 80001f18 <_Z14__print_stringPKc>
    //printString("I am here!");
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	ee4080e7          	jalr	-284(ra) # 80002c70 <_Z18Threads_C_API_testv>
    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //__print_string("I am here too!\n");
    //thread_dispatch();
    __print_string("I am here again!\n");
    80002d94:	00003517          	auipc	a0,0x3
    80002d98:	48c50513          	addi	a0,a0,1164 # 80006220 <_ZZ14__print_uint64mE6digits+0x130>
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	17c080e7          	jalr	380(ra) # 80001f18 <_Z14__print_stringPKc>
    //thread_exit();
    /*TCB::running->setFinished(true);
    thread_dispatch();*/
    80002da4:	00813083          	ld	ra,8(sp)
    80002da8:	00013403          	ld	s0,0(sp)
    80002dac:	01010113          	addi	sp,sp,16
    80002db0:	00008067          	ret

0000000080002db4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002db4:	fe010113          	addi	sp,sp,-32
    80002db8:	00113c23          	sd	ra,24(sp)
    80002dbc:	00813823          	sd	s0,16(sp)
    80002dc0:	00913423          	sd	s1,8(sp)
    80002dc4:	01213023          	sd	s2,0(sp)
    80002dc8:	02010413          	addi	s0,sp,32
    80002dcc:	00050493          	mv	s1,a0
    80002dd0:	00058913          	mv	s2,a1
    80002dd4:	0015879b          	addiw	a5,a1,1
    80002dd8:	0007851b          	sext.w	a0,a5
    80002ddc:	00f4a023          	sw	a5,0(s1)
    80002de0:	0004a823          	sw	zero,16(s1)
    80002de4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002de8:	00251513          	slli	a0,a0,0x2
    80002dec:	ffffe097          	auipc	ra,0xffffe
    80002df0:	214080e7          	jalr	532(ra) # 80001000 <mem_alloc>
    80002df4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002df8:	00000593          	li	a1,0
    80002dfc:	02048513          	addi	a0,s1,32
    80002e00:	ffffe097          	auipc	ra,0xffffe
    80002e04:	484080e7          	jalr	1156(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002e08:	00090593          	mv	a1,s2
    80002e0c:	01848513          	addi	a0,s1,24
    80002e10:	ffffe097          	auipc	ra,0xffffe
    80002e14:	474080e7          	jalr	1140(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002e18:	00100593          	li	a1,1
    80002e1c:	02848513          	addi	a0,s1,40
    80002e20:	ffffe097          	auipc	ra,0xffffe
    80002e24:	464080e7          	jalr	1124(ra) # 80001284 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002e28:	00100593          	li	a1,1
    80002e2c:	03048513          	addi	a0,s1,48
    80002e30:	ffffe097          	auipc	ra,0xffffe
    80002e34:	454080e7          	jalr	1108(ra) # 80001284 <_Z8sem_openPP4_semj>
}
    80002e38:	01813083          	ld	ra,24(sp)
    80002e3c:	01013403          	ld	s0,16(sp)
    80002e40:	00813483          	ld	s1,8(sp)
    80002e44:	00013903          	ld	s2,0(sp)
    80002e48:	02010113          	addi	sp,sp,32
    80002e4c:	00008067          	ret

0000000080002e50 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00113c23          	sd	ra,24(sp)
    80002e58:	00813823          	sd	s0,16(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	01213023          	sd	s2,0(sp)
    80002e64:	02010413          	addi	s0,sp,32
    80002e68:	00050493          	mv	s1,a0
    80002e6c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002e70:	01853503          	ld	a0,24(a0)
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	448080e7          	jalr	1096(ra) # 800012bc <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80002e7c:	0304b503          	ld	a0,48(s1)
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	43c080e7          	jalr	1084(ra) # 800012bc <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80002e88:	0084b783          	ld	a5,8(s1)
    80002e8c:	0144a703          	lw	a4,20(s1)
    80002e90:	00271713          	slli	a4,a4,0x2
    80002e94:	00e787b3          	add	a5,a5,a4
    80002e98:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002e9c:	0144a783          	lw	a5,20(s1)
    80002ea0:	0017879b          	addiw	a5,a5,1
    80002ea4:	0004a703          	lw	a4,0(s1)
    80002ea8:	02e7e7bb          	remw	a5,a5,a4
    80002eac:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002eb0:	0304b503          	ld	a0,48(s1)
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	424080e7          	jalr	1060(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002ebc:	0204b503          	ld	a0,32(s1)
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	418080e7          	jalr	1048(ra) # 800012d8 <_Z10sem_signalP4_sem>

}
    80002ec8:	01813083          	ld	ra,24(sp)
    80002ecc:	01013403          	ld	s0,16(sp)
    80002ed0:	00813483          	ld	s1,8(sp)
    80002ed4:	00013903          	ld	s2,0(sp)
    80002ed8:	02010113          	addi	sp,sp,32
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00913423          	sd	s1,8(sp)
    80002ef0:	01213023          	sd	s2,0(sp)
    80002ef4:	02010413          	addi	s0,sp,32
    80002ef8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002efc:	02053503          	ld	a0,32(a0)
    80002f00:	ffffe097          	auipc	ra,0xffffe
    80002f04:	3bc080e7          	jalr	956(ra) # 800012bc <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002f08:	0284b503          	ld	a0,40(s1)
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	3b0080e7          	jalr	944(ra) # 800012bc <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002f14:	0084b703          	ld	a4,8(s1)
    80002f18:	0104a783          	lw	a5,16(s1)
    80002f1c:	00279693          	slli	a3,a5,0x2
    80002f20:	00d70733          	add	a4,a4,a3
    80002f24:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002f28:	0017879b          	addiw	a5,a5,1
    80002f2c:	0004a703          	lw	a4,0(s1)
    80002f30:	02e7e7bb          	remw	a5,a5,a4
    80002f34:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002f38:	0284b503          	ld	a0,40(s1)
    80002f3c:	ffffe097          	auipc	ra,0xffffe
    80002f40:	39c080e7          	jalr	924(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80002f44:	0184b503          	ld	a0,24(s1)
    80002f48:	ffffe097          	auipc	ra,0xffffe
    80002f4c:	390080e7          	jalr	912(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    80002f50:	00090513          	mv	a0,s2
    80002f54:	01813083          	ld	ra,24(sp)
    80002f58:	01013403          	ld	s0,16(sp)
    80002f5c:	00813483          	ld	s1,8(sp)
    80002f60:	00013903          	ld	s2,0(sp)
    80002f64:	02010113          	addi	sp,sp,32
    80002f68:	00008067          	ret

0000000080002f6c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00113c23          	sd	ra,24(sp)
    80002f74:	00813823          	sd	s0,16(sp)
    80002f78:	00913423          	sd	s1,8(sp)
    80002f7c:	01213023          	sd	s2,0(sp)
    80002f80:	02010413          	addi	s0,sp,32
    80002f84:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002f88:	02853503          	ld	a0,40(a0)
    80002f8c:	ffffe097          	auipc	ra,0xffffe
    80002f90:	330080e7          	jalr	816(ra) # 800012bc <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80002f94:	0304b503          	ld	a0,48(s1)
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	324080e7          	jalr	804(ra) # 800012bc <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002fa0:	0144a783          	lw	a5,20(s1)
    80002fa4:	0104a903          	lw	s2,16(s1)
    80002fa8:	0327ce63          	blt	a5,s2,80002fe4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002fac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002fb0:	0304b503          	ld	a0,48(s1)
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	324080e7          	jalr	804(ra) # 800012d8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80002fbc:	0284b503          	ld	a0,40(s1)
    80002fc0:	ffffe097          	auipc	ra,0xffffe
    80002fc4:	318080e7          	jalr	792(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    80002fc8:	00090513          	mv	a0,s2
    80002fcc:	01813083          	ld	ra,24(sp)
    80002fd0:	01013403          	ld	s0,16(sp)
    80002fd4:	00813483          	ld	s1,8(sp)
    80002fd8:	00013903          	ld	s2,0(sp)
    80002fdc:	02010113          	addi	sp,sp,32
    80002fe0:	00008067          	ret
        ret = cap - head + tail;
    80002fe4:	0004a703          	lw	a4,0(s1)
    80002fe8:	4127093b          	subw	s2,a4,s2
    80002fec:	00f9093b          	addw	s2,s2,a5
    80002ff0:	fc1ff06f          	j	80002fb0 <_ZN6Buffer6getCntEv+0x44>

0000000080002ff4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002ff4:	fe010113          	addi	sp,sp,-32
    80002ff8:	00113c23          	sd	ra,24(sp)
    80002ffc:	00813823          	sd	s0,16(sp)
    80003000:	00913423          	sd	s1,8(sp)
    80003004:	02010413          	addi	s0,sp,32
    80003008:	00050493          	mv	s1,a0
    putc('\n');
    8000300c:	00a00513          	li	a0,10
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	328080e7          	jalr	808(ra) # 80001338 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003018:	00003517          	auipc	a0,0x3
    8000301c:	0e850513          	addi	a0,a0,232 # 80006100 <_ZZ14__print_uint64mE6digits+0x10>
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	0e8080e7          	jalr	232(ra) # 80002108 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003028:	00048513          	mv	a0,s1
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	f40080e7          	jalr	-192(ra) # 80002f6c <_ZN6Buffer6getCntEv>
    80003034:	02a05c63          	blez	a0,8000306c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003038:	0084b783          	ld	a5,8(s1)
    8000303c:	0104a703          	lw	a4,16(s1)
    80003040:	00271713          	slli	a4,a4,0x2
    80003044:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003048:	0007c503          	lbu	a0,0(a5)
    8000304c:	ffffe097          	auipc	ra,0xffffe
    80003050:	2ec080e7          	jalr	748(ra) # 80001338 <_Z4putcc>
        head = (head + 1) % cap;
    80003054:	0104a783          	lw	a5,16(s1)
    80003058:	0017879b          	addiw	a5,a5,1
    8000305c:	0004a703          	lw	a4,0(s1)
    80003060:	02e7e7bb          	remw	a5,a5,a4
    80003064:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003068:	fc1ff06f          	j	80003028 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000306c:	02100513          	li	a0,33
    80003070:	ffffe097          	auipc	ra,0xffffe
    80003074:	2c8080e7          	jalr	712(ra) # 80001338 <_Z4putcc>
    putc('\n');
    80003078:	00a00513          	li	a0,10
    8000307c:	ffffe097          	auipc	ra,0xffffe
    80003080:	2bc080e7          	jalr	700(ra) # 80001338 <_Z4putcc>
    mem_free(buffer);
    80003084:	0084b503          	ld	a0,8(s1)
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	f84080e7          	jalr	-124(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    80003090:	0204b503          	ld	a0,32(s1)
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	20c080e7          	jalr	524(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000309c:	0184b503          	ld	a0,24(s1)
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	200080e7          	jalr	512(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800030a8:	0304b503          	ld	a0,48(s1)
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	1f4080e7          	jalr	500(ra) # 800012a0 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800030b4:	0284b503          	ld	a0,40(s1)
    800030b8:	ffffe097          	auipc	ra,0xffffe
    800030bc:	1e8080e7          	jalr	488(ra) # 800012a0 <_Z9sem_closeP4_sem>
}
    800030c0:	01813083          	ld	ra,24(sp)
    800030c4:	01013403          	ld	s0,16(sp)
    800030c8:	00813483          	ld	s1,8(sp)
    800030cc:	02010113          	addi	sp,sp,32
    800030d0:	00008067          	ret

00000000800030d4 <start>:
    800030d4:	ff010113          	addi	sp,sp,-16
    800030d8:	00813423          	sd	s0,8(sp)
    800030dc:	01010413          	addi	s0,sp,16
    800030e0:	300027f3          	csrr	a5,mstatus
    800030e4:	ffffe737          	lui	a4,0xffffe
    800030e8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff62bf>
    800030ec:	00e7f7b3          	and	a5,a5,a4
    800030f0:	00001737          	lui	a4,0x1
    800030f4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800030f8:	00e7e7b3          	or	a5,a5,a4
    800030fc:	30079073          	csrw	mstatus,a5
    80003100:	00000797          	auipc	a5,0x0
    80003104:	16078793          	addi	a5,a5,352 # 80003260 <system_main>
    80003108:	34179073          	csrw	mepc,a5
    8000310c:	00000793          	li	a5,0
    80003110:	18079073          	csrw	satp,a5
    80003114:	000107b7          	lui	a5,0x10
    80003118:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000311c:	30279073          	csrw	medeleg,a5
    80003120:	30379073          	csrw	mideleg,a5
    80003124:	104027f3          	csrr	a5,sie
    80003128:	2227e793          	ori	a5,a5,546
    8000312c:	10479073          	csrw	sie,a5
    80003130:	fff00793          	li	a5,-1
    80003134:	00a7d793          	srli	a5,a5,0xa
    80003138:	3b079073          	csrw	pmpaddr0,a5
    8000313c:	00f00793          	li	a5,15
    80003140:	3a079073          	csrw	pmpcfg0,a5
    80003144:	f14027f3          	csrr	a5,mhartid
    80003148:	0200c737          	lui	a4,0x200c
    8000314c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003150:	0007869b          	sext.w	a3,a5
    80003154:	00269713          	slli	a4,a3,0x2
    80003158:	000f4637          	lui	a2,0xf4
    8000315c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003160:	00d70733          	add	a4,a4,a3
    80003164:	0037979b          	slliw	a5,a5,0x3
    80003168:	020046b7          	lui	a3,0x2004
    8000316c:	00d787b3          	add	a5,a5,a3
    80003170:	00c585b3          	add	a1,a1,a2
    80003174:	00371693          	slli	a3,a4,0x3
    80003178:	00004717          	auipc	a4,0x4
    8000317c:	16870713          	addi	a4,a4,360 # 800072e0 <timer_scratch>
    80003180:	00b7b023          	sd	a1,0(a5)
    80003184:	00d70733          	add	a4,a4,a3
    80003188:	00f73c23          	sd	a5,24(a4)
    8000318c:	02c73023          	sd	a2,32(a4)
    80003190:	34071073          	csrw	mscratch,a4
    80003194:	00000797          	auipc	a5,0x0
    80003198:	6ec78793          	addi	a5,a5,1772 # 80003880 <timervec>
    8000319c:	30579073          	csrw	mtvec,a5
    800031a0:	300027f3          	csrr	a5,mstatus
    800031a4:	0087e793          	ori	a5,a5,8
    800031a8:	30079073          	csrw	mstatus,a5
    800031ac:	304027f3          	csrr	a5,mie
    800031b0:	0807e793          	ori	a5,a5,128
    800031b4:	30479073          	csrw	mie,a5
    800031b8:	f14027f3          	csrr	a5,mhartid
    800031bc:	0007879b          	sext.w	a5,a5
    800031c0:	00078213          	mv	tp,a5
    800031c4:	30200073          	mret
    800031c8:	00813403          	ld	s0,8(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <timerinit>:
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00813423          	sd	s0,8(sp)
    800031dc:	01010413          	addi	s0,sp,16
    800031e0:	f14027f3          	csrr	a5,mhartid
    800031e4:	0200c737          	lui	a4,0x200c
    800031e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800031ec:	0007869b          	sext.w	a3,a5
    800031f0:	00269713          	slli	a4,a3,0x2
    800031f4:	000f4637          	lui	a2,0xf4
    800031f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800031fc:	00d70733          	add	a4,a4,a3
    80003200:	0037979b          	slliw	a5,a5,0x3
    80003204:	020046b7          	lui	a3,0x2004
    80003208:	00d787b3          	add	a5,a5,a3
    8000320c:	00c585b3          	add	a1,a1,a2
    80003210:	00371693          	slli	a3,a4,0x3
    80003214:	00004717          	auipc	a4,0x4
    80003218:	0cc70713          	addi	a4,a4,204 # 800072e0 <timer_scratch>
    8000321c:	00b7b023          	sd	a1,0(a5)
    80003220:	00d70733          	add	a4,a4,a3
    80003224:	00f73c23          	sd	a5,24(a4)
    80003228:	02c73023          	sd	a2,32(a4)
    8000322c:	34071073          	csrw	mscratch,a4
    80003230:	00000797          	auipc	a5,0x0
    80003234:	65078793          	addi	a5,a5,1616 # 80003880 <timervec>
    80003238:	30579073          	csrw	mtvec,a5
    8000323c:	300027f3          	csrr	a5,mstatus
    80003240:	0087e793          	ori	a5,a5,8
    80003244:	30079073          	csrw	mstatus,a5
    80003248:	304027f3          	csrr	a5,mie
    8000324c:	0807e793          	ori	a5,a5,128
    80003250:	30479073          	csrw	mie,a5
    80003254:	00813403          	ld	s0,8(sp)
    80003258:	01010113          	addi	sp,sp,16
    8000325c:	00008067          	ret

0000000080003260 <system_main>:
    80003260:	fe010113          	addi	sp,sp,-32
    80003264:	00813823          	sd	s0,16(sp)
    80003268:	00913423          	sd	s1,8(sp)
    8000326c:	00113c23          	sd	ra,24(sp)
    80003270:	02010413          	addi	s0,sp,32
    80003274:	00000097          	auipc	ra,0x0
    80003278:	0c4080e7          	jalr	196(ra) # 80003338 <cpuid>
    8000327c:	00004497          	auipc	s1,0x4
    80003280:	ff448493          	addi	s1,s1,-12 # 80007270 <started>
    80003284:	02050263          	beqz	a0,800032a8 <system_main+0x48>
    80003288:	0004a783          	lw	a5,0(s1)
    8000328c:	0007879b          	sext.w	a5,a5
    80003290:	fe078ce3          	beqz	a5,80003288 <system_main+0x28>
    80003294:	0ff0000f          	fence
    80003298:	00003517          	auipc	a0,0x3
    8000329c:	fd050513          	addi	a0,a0,-48 # 80006268 <_ZZ14__print_uint64mE6digits+0x178>
    800032a0:	00001097          	auipc	ra,0x1
    800032a4:	a7c080e7          	jalr	-1412(ra) # 80003d1c <panic>
    800032a8:	00001097          	auipc	ra,0x1
    800032ac:	9d0080e7          	jalr	-1584(ra) # 80003c78 <consoleinit>
    800032b0:	00001097          	auipc	ra,0x1
    800032b4:	15c080e7          	jalr	348(ra) # 8000440c <printfinit>
    800032b8:	00003517          	auipc	a0,0x3
    800032bc:	f7850513          	addi	a0,a0,-136 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    800032c0:	00001097          	auipc	ra,0x1
    800032c4:	ab8080e7          	jalr	-1352(ra) # 80003d78 <__printf>
    800032c8:	00003517          	auipc	a0,0x3
    800032cc:	f7050513          	addi	a0,a0,-144 # 80006238 <_ZZ14__print_uint64mE6digits+0x148>
    800032d0:	00001097          	auipc	ra,0x1
    800032d4:	aa8080e7          	jalr	-1368(ra) # 80003d78 <__printf>
    800032d8:	00003517          	auipc	a0,0x3
    800032dc:	f5850513          	addi	a0,a0,-168 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    800032e0:	00001097          	auipc	ra,0x1
    800032e4:	a98080e7          	jalr	-1384(ra) # 80003d78 <__printf>
    800032e8:	00001097          	auipc	ra,0x1
    800032ec:	4b0080e7          	jalr	1200(ra) # 80004798 <kinit>
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	148080e7          	jalr	328(ra) # 80003438 <trapinit>
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	16c080e7          	jalr	364(ra) # 80003464 <trapinithart>
    80003300:	00000097          	auipc	ra,0x0
    80003304:	5c0080e7          	jalr	1472(ra) # 800038c0 <plicinit>
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	5e0080e7          	jalr	1504(ra) # 800038e8 <plicinithart>
    80003310:	00000097          	auipc	ra,0x0
    80003314:	078080e7          	jalr	120(ra) # 80003388 <userinit>
    80003318:	0ff0000f          	fence
    8000331c:	00100793          	li	a5,1
    80003320:	00003517          	auipc	a0,0x3
    80003324:	f3050513          	addi	a0,a0,-208 # 80006250 <_ZZ14__print_uint64mE6digits+0x160>
    80003328:	00f4a023          	sw	a5,0(s1)
    8000332c:	00001097          	auipc	ra,0x1
    80003330:	a4c080e7          	jalr	-1460(ra) # 80003d78 <__printf>
    80003334:	0000006f          	j	80003334 <system_main+0xd4>

0000000080003338 <cpuid>:
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00813423          	sd	s0,8(sp)
    80003340:	01010413          	addi	s0,sp,16
    80003344:	00020513          	mv	a0,tp
    80003348:	00813403          	ld	s0,8(sp)
    8000334c:	0005051b          	sext.w	a0,a0
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret

0000000080003358 <mycpu>:
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00813423          	sd	s0,8(sp)
    80003360:	01010413          	addi	s0,sp,16
    80003364:	00020793          	mv	a5,tp
    80003368:	00813403          	ld	s0,8(sp)
    8000336c:	0007879b          	sext.w	a5,a5
    80003370:	00779793          	slli	a5,a5,0x7
    80003374:	00005517          	auipc	a0,0x5
    80003378:	f9c50513          	addi	a0,a0,-100 # 80008310 <cpus>
    8000337c:	00f50533          	add	a0,a0,a5
    80003380:	01010113          	addi	sp,sp,16
    80003384:	00008067          	ret

0000000080003388 <userinit>:
    80003388:	ff010113          	addi	sp,sp,-16
    8000338c:	00813423          	sd	s0,8(sp)
    80003390:	01010413          	addi	s0,sp,16
    80003394:	00813403          	ld	s0,8(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	ffffe317          	auipc	t1,0xffffe
    800033a0:	35430067          	jr	852(t1) # 800016f0 <main>

00000000800033a4 <either_copyout>:
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813023          	sd	s0,0(sp)
    800033ac:	00113423          	sd	ra,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	02051663          	bnez	a0,800033e0 <either_copyout+0x3c>
    800033b8:	00058513          	mv	a0,a1
    800033bc:	00060593          	mv	a1,a2
    800033c0:	0006861b          	sext.w	a2,a3
    800033c4:	00002097          	auipc	ra,0x2
    800033c8:	c60080e7          	jalr	-928(ra) # 80005024 <__memmove>
    800033cc:	00813083          	ld	ra,8(sp)
    800033d0:	00013403          	ld	s0,0(sp)
    800033d4:	00000513          	li	a0,0
    800033d8:	01010113          	addi	sp,sp,16
    800033dc:	00008067          	ret
    800033e0:	00003517          	auipc	a0,0x3
    800033e4:	eb050513          	addi	a0,a0,-336 # 80006290 <_ZZ14__print_uint64mE6digits+0x1a0>
    800033e8:	00001097          	auipc	ra,0x1
    800033ec:	934080e7          	jalr	-1740(ra) # 80003d1c <panic>

00000000800033f0 <either_copyin>:
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00813023          	sd	s0,0(sp)
    800033f8:	00113423          	sd	ra,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	02059463          	bnez	a1,80003428 <either_copyin+0x38>
    80003404:	00060593          	mv	a1,a2
    80003408:	0006861b          	sext.w	a2,a3
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	c18080e7          	jalr	-1000(ra) # 80005024 <__memmove>
    80003414:	00813083          	ld	ra,8(sp)
    80003418:	00013403          	ld	s0,0(sp)
    8000341c:	00000513          	li	a0,0
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret
    80003428:	00003517          	auipc	a0,0x3
    8000342c:	e9050513          	addi	a0,a0,-368 # 800062b8 <_ZZ14__print_uint64mE6digits+0x1c8>
    80003430:	00001097          	auipc	ra,0x1
    80003434:	8ec080e7          	jalr	-1812(ra) # 80003d1c <panic>

0000000080003438 <trapinit>:
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00813423          	sd	s0,8(sp)
    80003440:	01010413          	addi	s0,sp,16
    80003444:	00813403          	ld	s0,8(sp)
    80003448:	00003597          	auipc	a1,0x3
    8000344c:	e9858593          	addi	a1,a1,-360 # 800062e0 <_ZZ14__print_uint64mE6digits+0x1f0>
    80003450:	00005517          	auipc	a0,0x5
    80003454:	f4050513          	addi	a0,a0,-192 # 80008390 <tickslock>
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00001317          	auipc	t1,0x1
    80003460:	5cc30067          	jr	1484(t1) # 80004a28 <initlock>

0000000080003464 <trapinithart>:
    80003464:	ff010113          	addi	sp,sp,-16
    80003468:	00813423          	sd	s0,8(sp)
    8000346c:	01010413          	addi	s0,sp,16
    80003470:	00000797          	auipc	a5,0x0
    80003474:	30078793          	addi	a5,a5,768 # 80003770 <kernelvec>
    80003478:	10579073          	csrw	stvec,a5
    8000347c:	00813403          	ld	s0,8(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <usertrap>:
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00813423          	sd	s0,8(sp)
    80003490:	01010413          	addi	s0,sp,16
    80003494:	00813403          	ld	s0,8(sp)
    80003498:	01010113          	addi	sp,sp,16
    8000349c:	00008067          	ret

00000000800034a0 <usertrapret>:
    800034a0:	ff010113          	addi	sp,sp,-16
    800034a4:	00813423          	sd	s0,8(sp)
    800034a8:	01010413          	addi	s0,sp,16
    800034ac:	00813403          	ld	s0,8(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret

00000000800034b8 <kerneltrap>:
    800034b8:	fe010113          	addi	sp,sp,-32
    800034bc:	00813823          	sd	s0,16(sp)
    800034c0:	00113c23          	sd	ra,24(sp)
    800034c4:	00913423          	sd	s1,8(sp)
    800034c8:	02010413          	addi	s0,sp,32
    800034cc:	142025f3          	csrr	a1,scause
    800034d0:	100027f3          	csrr	a5,sstatus
    800034d4:	0027f793          	andi	a5,a5,2
    800034d8:	10079c63          	bnez	a5,800035f0 <kerneltrap+0x138>
    800034dc:	142027f3          	csrr	a5,scause
    800034e0:	0207ce63          	bltz	a5,8000351c <kerneltrap+0x64>
    800034e4:	00003517          	auipc	a0,0x3
    800034e8:	e4450513          	addi	a0,a0,-444 # 80006328 <_ZZ14__print_uint64mE6digits+0x238>
    800034ec:	00001097          	auipc	ra,0x1
    800034f0:	88c080e7          	jalr	-1908(ra) # 80003d78 <__printf>
    800034f4:	141025f3          	csrr	a1,sepc
    800034f8:	14302673          	csrr	a2,stval
    800034fc:	00003517          	auipc	a0,0x3
    80003500:	e3c50513          	addi	a0,a0,-452 # 80006338 <_ZZ14__print_uint64mE6digits+0x248>
    80003504:	00001097          	auipc	ra,0x1
    80003508:	874080e7          	jalr	-1932(ra) # 80003d78 <__printf>
    8000350c:	00003517          	auipc	a0,0x3
    80003510:	e4450513          	addi	a0,a0,-444 # 80006350 <_ZZ14__print_uint64mE6digits+0x260>
    80003514:	00001097          	auipc	ra,0x1
    80003518:	808080e7          	jalr	-2040(ra) # 80003d1c <panic>
    8000351c:	0ff7f713          	andi	a4,a5,255
    80003520:	00900693          	li	a3,9
    80003524:	04d70063          	beq	a4,a3,80003564 <kerneltrap+0xac>
    80003528:	fff00713          	li	a4,-1
    8000352c:	03f71713          	slli	a4,a4,0x3f
    80003530:	00170713          	addi	a4,a4,1
    80003534:	fae798e3          	bne	a5,a4,800034e4 <kerneltrap+0x2c>
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	e00080e7          	jalr	-512(ra) # 80003338 <cpuid>
    80003540:	06050663          	beqz	a0,800035ac <kerneltrap+0xf4>
    80003544:	144027f3          	csrr	a5,sip
    80003548:	ffd7f793          	andi	a5,a5,-3
    8000354c:	14479073          	csrw	sip,a5
    80003550:	01813083          	ld	ra,24(sp)
    80003554:	01013403          	ld	s0,16(sp)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret
    80003564:	00000097          	auipc	ra,0x0
    80003568:	3d0080e7          	jalr	976(ra) # 80003934 <plic_claim>
    8000356c:	00a00793          	li	a5,10
    80003570:	00050493          	mv	s1,a0
    80003574:	06f50863          	beq	a0,a5,800035e4 <kerneltrap+0x12c>
    80003578:	fc050ce3          	beqz	a0,80003550 <kerneltrap+0x98>
    8000357c:	00050593          	mv	a1,a0
    80003580:	00003517          	auipc	a0,0x3
    80003584:	d8850513          	addi	a0,a0,-632 # 80006308 <_ZZ14__print_uint64mE6digits+0x218>
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	7f0080e7          	jalr	2032(ra) # 80003d78 <__printf>
    80003590:	01013403          	ld	s0,16(sp)
    80003594:	01813083          	ld	ra,24(sp)
    80003598:	00048513          	mv	a0,s1
    8000359c:	00813483          	ld	s1,8(sp)
    800035a0:	02010113          	addi	sp,sp,32
    800035a4:	00000317          	auipc	t1,0x0
    800035a8:	3c830067          	jr	968(t1) # 8000396c <plic_complete>
    800035ac:	00005517          	auipc	a0,0x5
    800035b0:	de450513          	addi	a0,a0,-540 # 80008390 <tickslock>
    800035b4:	00001097          	auipc	ra,0x1
    800035b8:	498080e7          	jalr	1176(ra) # 80004a4c <acquire>
    800035bc:	00004717          	auipc	a4,0x4
    800035c0:	cb870713          	addi	a4,a4,-840 # 80007274 <ticks>
    800035c4:	00072783          	lw	a5,0(a4)
    800035c8:	00005517          	auipc	a0,0x5
    800035cc:	dc850513          	addi	a0,a0,-568 # 80008390 <tickslock>
    800035d0:	0017879b          	addiw	a5,a5,1
    800035d4:	00f72023          	sw	a5,0(a4)
    800035d8:	00001097          	auipc	ra,0x1
    800035dc:	540080e7          	jalr	1344(ra) # 80004b18 <release>
    800035e0:	f65ff06f          	j	80003544 <kerneltrap+0x8c>
    800035e4:	00001097          	auipc	ra,0x1
    800035e8:	09c080e7          	jalr	156(ra) # 80004680 <uartintr>
    800035ec:	fa5ff06f          	j	80003590 <kerneltrap+0xd8>
    800035f0:	00003517          	auipc	a0,0x3
    800035f4:	cf850513          	addi	a0,a0,-776 # 800062e8 <_ZZ14__print_uint64mE6digits+0x1f8>
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	724080e7          	jalr	1828(ra) # 80003d1c <panic>

0000000080003600 <clockintr>:
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00913423          	sd	s1,8(sp)
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	02010413          	addi	s0,sp,32
    80003614:	00005497          	auipc	s1,0x5
    80003618:	d7c48493          	addi	s1,s1,-644 # 80008390 <tickslock>
    8000361c:	00048513          	mv	a0,s1
    80003620:	00001097          	auipc	ra,0x1
    80003624:	42c080e7          	jalr	1068(ra) # 80004a4c <acquire>
    80003628:	00004717          	auipc	a4,0x4
    8000362c:	c4c70713          	addi	a4,a4,-948 # 80007274 <ticks>
    80003630:	00072783          	lw	a5,0(a4)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	01813083          	ld	ra,24(sp)
    8000363c:	00048513          	mv	a0,s1
    80003640:	0017879b          	addiw	a5,a5,1
    80003644:	00813483          	ld	s1,8(sp)
    80003648:	00f72023          	sw	a5,0(a4)
    8000364c:	02010113          	addi	sp,sp,32
    80003650:	00001317          	auipc	t1,0x1
    80003654:	4c830067          	jr	1224(t1) # 80004b18 <release>

0000000080003658 <devintr>:
    80003658:	142027f3          	csrr	a5,scause
    8000365c:	00000513          	li	a0,0
    80003660:	0007c463          	bltz	a5,80003668 <devintr+0x10>
    80003664:	00008067          	ret
    80003668:	fe010113          	addi	sp,sp,-32
    8000366c:	00813823          	sd	s0,16(sp)
    80003670:	00113c23          	sd	ra,24(sp)
    80003674:	00913423          	sd	s1,8(sp)
    80003678:	02010413          	addi	s0,sp,32
    8000367c:	0ff7f713          	andi	a4,a5,255
    80003680:	00900693          	li	a3,9
    80003684:	04d70c63          	beq	a4,a3,800036dc <devintr+0x84>
    80003688:	fff00713          	li	a4,-1
    8000368c:	03f71713          	slli	a4,a4,0x3f
    80003690:	00170713          	addi	a4,a4,1
    80003694:	00e78c63          	beq	a5,a4,800036ac <devintr+0x54>
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	c8c080e7          	jalr	-884(ra) # 80003338 <cpuid>
    800036b4:	06050663          	beqz	a0,80003720 <devintr+0xc8>
    800036b8:	144027f3          	csrr	a5,sip
    800036bc:	ffd7f793          	andi	a5,a5,-3
    800036c0:	14479073          	csrw	sip,a5
    800036c4:	01813083          	ld	ra,24(sp)
    800036c8:	01013403          	ld	s0,16(sp)
    800036cc:	00813483          	ld	s1,8(sp)
    800036d0:	00200513          	li	a0,2
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	258080e7          	jalr	600(ra) # 80003934 <plic_claim>
    800036e4:	00a00793          	li	a5,10
    800036e8:	00050493          	mv	s1,a0
    800036ec:	06f50663          	beq	a0,a5,80003758 <devintr+0x100>
    800036f0:	00100513          	li	a0,1
    800036f4:	fa0482e3          	beqz	s1,80003698 <devintr+0x40>
    800036f8:	00048593          	mv	a1,s1
    800036fc:	00003517          	auipc	a0,0x3
    80003700:	c0c50513          	addi	a0,a0,-1012 # 80006308 <_ZZ14__print_uint64mE6digits+0x218>
    80003704:	00000097          	auipc	ra,0x0
    80003708:	674080e7          	jalr	1652(ra) # 80003d78 <__printf>
    8000370c:	00048513          	mv	a0,s1
    80003710:	00000097          	auipc	ra,0x0
    80003714:	25c080e7          	jalr	604(ra) # 8000396c <plic_complete>
    80003718:	00100513          	li	a0,1
    8000371c:	f7dff06f          	j	80003698 <devintr+0x40>
    80003720:	00005517          	auipc	a0,0x5
    80003724:	c7050513          	addi	a0,a0,-912 # 80008390 <tickslock>
    80003728:	00001097          	auipc	ra,0x1
    8000372c:	324080e7          	jalr	804(ra) # 80004a4c <acquire>
    80003730:	00004717          	auipc	a4,0x4
    80003734:	b4470713          	addi	a4,a4,-1212 # 80007274 <ticks>
    80003738:	00072783          	lw	a5,0(a4)
    8000373c:	00005517          	auipc	a0,0x5
    80003740:	c5450513          	addi	a0,a0,-940 # 80008390 <tickslock>
    80003744:	0017879b          	addiw	a5,a5,1
    80003748:	00f72023          	sw	a5,0(a4)
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	3cc080e7          	jalr	972(ra) # 80004b18 <release>
    80003754:	f65ff06f          	j	800036b8 <devintr+0x60>
    80003758:	00001097          	auipc	ra,0x1
    8000375c:	f28080e7          	jalr	-216(ra) # 80004680 <uartintr>
    80003760:	fadff06f          	j	8000370c <devintr+0xb4>
	...

0000000080003770 <kernelvec>:
    80003770:	f0010113          	addi	sp,sp,-256
    80003774:	00113023          	sd	ra,0(sp)
    80003778:	00213423          	sd	sp,8(sp)
    8000377c:	00313823          	sd	gp,16(sp)
    80003780:	00413c23          	sd	tp,24(sp)
    80003784:	02513023          	sd	t0,32(sp)
    80003788:	02613423          	sd	t1,40(sp)
    8000378c:	02713823          	sd	t2,48(sp)
    80003790:	02813c23          	sd	s0,56(sp)
    80003794:	04913023          	sd	s1,64(sp)
    80003798:	04a13423          	sd	a0,72(sp)
    8000379c:	04b13823          	sd	a1,80(sp)
    800037a0:	04c13c23          	sd	a2,88(sp)
    800037a4:	06d13023          	sd	a3,96(sp)
    800037a8:	06e13423          	sd	a4,104(sp)
    800037ac:	06f13823          	sd	a5,112(sp)
    800037b0:	07013c23          	sd	a6,120(sp)
    800037b4:	09113023          	sd	a7,128(sp)
    800037b8:	09213423          	sd	s2,136(sp)
    800037bc:	09313823          	sd	s3,144(sp)
    800037c0:	09413c23          	sd	s4,152(sp)
    800037c4:	0b513023          	sd	s5,160(sp)
    800037c8:	0b613423          	sd	s6,168(sp)
    800037cc:	0b713823          	sd	s7,176(sp)
    800037d0:	0b813c23          	sd	s8,184(sp)
    800037d4:	0d913023          	sd	s9,192(sp)
    800037d8:	0da13423          	sd	s10,200(sp)
    800037dc:	0db13823          	sd	s11,208(sp)
    800037e0:	0dc13c23          	sd	t3,216(sp)
    800037e4:	0fd13023          	sd	t4,224(sp)
    800037e8:	0fe13423          	sd	t5,232(sp)
    800037ec:	0ff13823          	sd	t6,240(sp)
    800037f0:	cc9ff0ef          	jal	ra,800034b8 <kerneltrap>
    800037f4:	00013083          	ld	ra,0(sp)
    800037f8:	00813103          	ld	sp,8(sp)
    800037fc:	01013183          	ld	gp,16(sp)
    80003800:	02013283          	ld	t0,32(sp)
    80003804:	02813303          	ld	t1,40(sp)
    80003808:	03013383          	ld	t2,48(sp)
    8000380c:	03813403          	ld	s0,56(sp)
    80003810:	04013483          	ld	s1,64(sp)
    80003814:	04813503          	ld	a0,72(sp)
    80003818:	05013583          	ld	a1,80(sp)
    8000381c:	05813603          	ld	a2,88(sp)
    80003820:	06013683          	ld	a3,96(sp)
    80003824:	06813703          	ld	a4,104(sp)
    80003828:	07013783          	ld	a5,112(sp)
    8000382c:	07813803          	ld	a6,120(sp)
    80003830:	08013883          	ld	a7,128(sp)
    80003834:	08813903          	ld	s2,136(sp)
    80003838:	09013983          	ld	s3,144(sp)
    8000383c:	09813a03          	ld	s4,152(sp)
    80003840:	0a013a83          	ld	s5,160(sp)
    80003844:	0a813b03          	ld	s6,168(sp)
    80003848:	0b013b83          	ld	s7,176(sp)
    8000384c:	0b813c03          	ld	s8,184(sp)
    80003850:	0c013c83          	ld	s9,192(sp)
    80003854:	0c813d03          	ld	s10,200(sp)
    80003858:	0d013d83          	ld	s11,208(sp)
    8000385c:	0d813e03          	ld	t3,216(sp)
    80003860:	0e013e83          	ld	t4,224(sp)
    80003864:	0e813f03          	ld	t5,232(sp)
    80003868:	0f013f83          	ld	t6,240(sp)
    8000386c:	10010113          	addi	sp,sp,256
    80003870:	10200073          	sret
    80003874:	00000013          	nop
    80003878:	00000013          	nop
    8000387c:	00000013          	nop

0000000080003880 <timervec>:
    80003880:	34051573          	csrrw	a0,mscratch,a0
    80003884:	00b53023          	sd	a1,0(a0)
    80003888:	00c53423          	sd	a2,8(a0)
    8000388c:	00d53823          	sd	a3,16(a0)
    80003890:	01853583          	ld	a1,24(a0)
    80003894:	02053603          	ld	a2,32(a0)
    80003898:	0005b683          	ld	a3,0(a1)
    8000389c:	00c686b3          	add	a3,a3,a2
    800038a0:	00d5b023          	sd	a3,0(a1)
    800038a4:	00200593          	li	a1,2
    800038a8:	14459073          	csrw	sip,a1
    800038ac:	01053683          	ld	a3,16(a0)
    800038b0:	00853603          	ld	a2,8(a0)
    800038b4:	00053583          	ld	a1,0(a0)
    800038b8:	34051573          	csrrw	a0,mscratch,a0
    800038bc:	30200073          	mret

00000000800038c0 <plicinit>:
    800038c0:	ff010113          	addi	sp,sp,-16
    800038c4:	00813423          	sd	s0,8(sp)
    800038c8:	01010413          	addi	s0,sp,16
    800038cc:	00813403          	ld	s0,8(sp)
    800038d0:	0c0007b7          	lui	a5,0xc000
    800038d4:	00100713          	li	a4,1
    800038d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800038dc:	00e7a223          	sw	a4,4(a5)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret

00000000800038e8 <plicinithart>:
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00813023          	sd	s0,0(sp)
    800038f0:	00113423          	sd	ra,8(sp)
    800038f4:	01010413          	addi	s0,sp,16
    800038f8:	00000097          	auipc	ra,0x0
    800038fc:	a40080e7          	jalr	-1472(ra) # 80003338 <cpuid>
    80003900:	0085171b          	slliw	a4,a0,0x8
    80003904:	0c0027b7          	lui	a5,0xc002
    80003908:	00e787b3          	add	a5,a5,a4
    8000390c:	40200713          	li	a4,1026
    80003910:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003914:	00813083          	ld	ra,8(sp)
    80003918:	00013403          	ld	s0,0(sp)
    8000391c:	00d5151b          	slliw	a0,a0,0xd
    80003920:	0c2017b7          	lui	a5,0xc201
    80003924:	00a78533          	add	a0,a5,a0
    80003928:	00052023          	sw	zero,0(a0)
    8000392c:	01010113          	addi	sp,sp,16
    80003930:	00008067          	ret

0000000080003934 <plic_claim>:
    80003934:	ff010113          	addi	sp,sp,-16
    80003938:	00813023          	sd	s0,0(sp)
    8000393c:	00113423          	sd	ra,8(sp)
    80003940:	01010413          	addi	s0,sp,16
    80003944:	00000097          	auipc	ra,0x0
    80003948:	9f4080e7          	jalr	-1548(ra) # 80003338 <cpuid>
    8000394c:	00813083          	ld	ra,8(sp)
    80003950:	00013403          	ld	s0,0(sp)
    80003954:	00d5151b          	slliw	a0,a0,0xd
    80003958:	0c2017b7          	lui	a5,0xc201
    8000395c:	00a78533          	add	a0,a5,a0
    80003960:	00452503          	lw	a0,4(a0)
    80003964:	01010113          	addi	sp,sp,16
    80003968:	00008067          	ret

000000008000396c <plic_complete>:
    8000396c:	fe010113          	addi	sp,sp,-32
    80003970:	00813823          	sd	s0,16(sp)
    80003974:	00913423          	sd	s1,8(sp)
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	02010413          	addi	s0,sp,32
    80003980:	00050493          	mv	s1,a0
    80003984:	00000097          	auipc	ra,0x0
    80003988:	9b4080e7          	jalr	-1612(ra) # 80003338 <cpuid>
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	00d5179b          	slliw	a5,a0,0xd
    80003998:	0c201737          	lui	a4,0xc201
    8000399c:	00f707b3          	add	a5,a4,a5
    800039a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800039a4:	00813483          	ld	s1,8(sp)
    800039a8:	02010113          	addi	sp,sp,32
    800039ac:	00008067          	ret

00000000800039b0 <consolewrite>:
    800039b0:	fb010113          	addi	sp,sp,-80
    800039b4:	04813023          	sd	s0,64(sp)
    800039b8:	04113423          	sd	ra,72(sp)
    800039bc:	02913c23          	sd	s1,56(sp)
    800039c0:	03213823          	sd	s2,48(sp)
    800039c4:	03313423          	sd	s3,40(sp)
    800039c8:	03413023          	sd	s4,32(sp)
    800039cc:	01513c23          	sd	s5,24(sp)
    800039d0:	05010413          	addi	s0,sp,80
    800039d4:	06c05c63          	blez	a2,80003a4c <consolewrite+0x9c>
    800039d8:	00060993          	mv	s3,a2
    800039dc:	00050a13          	mv	s4,a0
    800039e0:	00058493          	mv	s1,a1
    800039e4:	00000913          	li	s2,0
    800039e8:	fff00a93          	li	s5,-1
    800039ec:	01c0006f          	j	80003a08 <consolewrite+0x58>
    800039f0:	fbf44503          	lbu	a0,-65(s0)
    800039f4:	0019091b          	addiw	s2,s2,1
    800039f8:	00148493          	addi	s1,s1,1
    800039fc:	00001097          	auipc	ra,0x1
    80003a00:	a9c080e7          	jalr	-1380(ra) # 80004498 <uartputc>
    80003a04:	03298063          	beq	s3,s2,80003a24 <consolewrite+0x74>
    80003a08:	00048613          	mv	a2,s1
    80003a0c:	00100693          	li	a3,1
    80003a10:	000a0593          	mv	a1,s4
    80003a14:	fbf40513          	addi	a0,s0,-65
    80003a18:	00000097          	auipc	ra,0x0
    80003a1c:	9d8080e7          	jalr	-1576(ra) # 800033f0 <either_copyin>
    80003a20:	fd5518e3          	bne	a0,s5,800039f0 <consolewrite+0x40>
    80003a24:	04813083          	ld	ra,72(sp)
    80003a28:	04013403          	ld	s0,64(sp)
    80003a2c:	03813483          	ld	s1,56(sp)
    80003a30:	02813983          	ld	s3,40(sp)
    80003a34:	02013a03          	ld	s4,32(sp)
    80003a38:	01813a83          	ld	s5,24(sp)
    80003a3c:	00090513          	mv	a0,s2
    80003a40:	03013903          	ld	s2,48(sp)
    80003a44:	05010113          	addi	sp,sp,80
    80003a48:	00008067          	ret
    80003a4c:	00000913          	li	s2,0
    80003a50:	fd5ff06f          	j	80003a24 <consolewrite+0x74>

0000000080003a54 <consoleread>:
    80003a54:	f9010113          	addi	sp,sp,-112
    80003a58:	06813023          	sd	s0,96(sp)
    80003a5c:	04913c23          	sd	s1,88(sp)
    80003a60:	05213823          	sd	s2,80(sp)
    80003a64:	05313423          	sd	s3,72(sp)
    80003a68:	05413023          	sd	s4,64(sp)
    80003a6c:	03513c23          	sd	s5,56(sp)
    80003a70:	03613823          	sd	s6,48(sp)
    80003a74:	03713423          	sd	s7,40(sp)
    80003a78:	03813023          	sd	s8,32(sp)
    80003a7c:	06113423          	sd	ra,104(sp)
    80003a80:	01913c23          	sd	s9,24(sp)
    80003a84:	07010413          	addi	s0,sp,112
    80003a88:	00060b93          	mv	s7,a2
    80003a8c:	00050913          	mv	s2,a0
    80003a90:	00058c13          	mv	s8,a1
    80003a94:	00060b1b          	sext.w	s6,a2
    80003a98:	00005497          	auipc	s1,0x5
    80003a9c:	92048493          	addi	s1,s1,-1760 # 800083b8 <cons>
    80003aa0:	00400993          	li	s3,4
    80003aa4:	fff00a13          	li	s4,-1
    80003aa8:	00a00a93          	li	s5,10
    80003aac:	05705e63          	blez	s7,80003b08 <consoleread+0xb4>
    80003ab0:	09c4a703          	lw	a4,156(s1)
    80003ab4:	0984a783          	lw	a5,152(s1)
    80003ab8:	0007071b          	sext.w	a4,a4
    80003abc:	08e78463          	beq	a5,a4,80003b44 <consoleread+0xf0>
    80003ac0:	07f7f713          	andi	a4,a5,127
    80003ac4:	00e48733          	add	a4,s1,a4
    80003ac8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003acc:	0017869b          	addiw	a3,a5,1
    80003ad0:	08d4ac23          	sw	a3,152(s1)
    80003ad4:	00070c9b          	sext.w	s9,a4
    80003ad8:	0b370663          	beq	a4,s3,80003b84 <consoleread+0x130>
    80003adc:	00100693          	li	a3,1
    80003ae0:	f9f40613          	addi	a2,s0,-97
    80003ae4:	000c0593          	mv	a1,s8
    80003ae8:	00090513          	mv	a0,s2
    80003aec:	f8e40fa3          	sb	a4,-97(s0)
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	8b4080e7          	jalr	-1868(ra) # 800033a4 <either_copyout>
    80003af8:	01450863          	beq	a0,s4,80003b08 <consoleread+0xb4>
    80003afc:	001c0c13          	addi	s8,s8,1
    80003b00:	fffb8b9b          	addiw	s7,s7,-1
    80003b04:	fb5c94e3          	bne	s9,s5,80003aac <consoleread+0x58>
    80003b08:	000b851b          	sext.w	a0,s7
    80003b0c:	06813083          	ld	ra,104(sp)
    80003b10:	06013403          	ld	s0,96(sp)
    80003b14:	05813483          	ld	s1,88(sp)
    80003b18:	05013903          	ld	s2,80(sp)
    80003b1c:	04813983          	ld	s3,72(sp)
    80003b20:	04013a03          	ld	s4,64(sp)
    80003b24:	03813a83          	ld	s5,56(sp)
    80003b28:	02813b83          	ld	s7,40(sp)
    80003b2c:	02013c03          	ld	s8,32(sp)
    80003b30:	01813c83          	ld	s9,24(sp)
    80003b34:	40ab053b          	subw	a0,s6,a0
    80003b38:	03013b03          	ld	s6,48(sp)
    80003b3c:	07010113          	addi	sp,sp,112
    80003b40:	00008067          	ret
    80003b44:	00001097          	auipc	ra,0x1
    80003b48:	1d8080e7          	jalr	472(ra) # 80004d1c <push_on>
    80003b4c:	0984a703          	lw	a4,152(s1)
    80003b50:	09c4a783          	lw	a5,156(s1)
    80003b54:	0007879b          	sext.w	a5,a5
    80003b58:	fef70ce3          	beq	a4,a5,80003b50 <consoleread+0xfc>
    80003b5c:	00001097          	auipc	ra,0x1
    80003b60:	234080e7          	jalr	564(ra) # 80004d90 <pop_on>
    80003b64:	0984a783          	lw	a5,152(s1)
    80003b68:	07f7f713          	andi	a4,a5,127
    80003b6c:	00e48733          	add	a4,s1,a4
    80003b70:	01874703          	lbu	a4,24(a4)
    80003b74:	0017869b          	addiw	a3,a5,1
    80003b78:	08d4ac23          	sw	a3,152(s1)
    80003b7c:	00070c9b          	sext.w	s9,a4
    80003b80:	f5371ee3          	bne	a4,s3,80003adc <consoleread+0x88>
    80003b84:	000b851b          	sext.w	a0,s7
    80003b88:	f96bf2e3          	bgeu	s7,s6,80003b0c <consoleread+0xb8>
    80003b8c:	08f4ac23          	sw	a5,152(s1)
    80003b90:	f7dff06f          	j	80003b0c <consoleread+0xb8>

0000000080003b94 <consputc>:
    80003b94:	10000793          	li	a5,256
    80003b98:	00f50663          	beq	a0,a5,80003ba4 <consputc+0x10>
    80003b9c:	00001317          	auipc	t1,0x1
    80003ba0:	9f430067          	jr	-1548(t1) # 80004590 <uartputc_sync>
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00113423          	sd	ra,8(sp)
    80003bac:	00813023          	sd	s0,0(sp)
    80003bb0:	01010413          	addi	s0,sp,16
    80003bb4:	00800513          	li	a0,8
    80003bb8:	00001097          	auipc	ra,0x1
    80003bbc:	9d8080e7          	jalr	-1576(ra) # 80004590 <uartputc_sync>
    80003bc0:	02000513          	li	a0,32
    80003bc4:	00001097          	auipc	ra,0x1
    80003bc8:	9cc080e7          	jalr	-1588(ra) # 80004590 <uartputc_sync>
    80003bcc:	00013403          	ld	s0,0(sp)
    80003bd0:	00813083          	ld	ra,8(sp)
    80003bd4:	00800513          	li	a0,8
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	00001317          	auipc	t1,0x1
    80003be0:	9b430067          	jr	-1612(t1) # 80004590 <uartputc_sync>

0000000080003be4 <consoleintr>:
    80003be4:	fe010113          	addi	sp,sp,-32
    80003be8:	00813823          	sd	s0,16(sp)
    80003bec:	00913423          	sd	s1,8(sp)
    80003bf0:	01213023          	sd	s2,0(sp)
    80003bf4:	00113c23          	sd	ra,24(sp)
    80003bf8:	02010413          	addi	s0,sp,32
    80003bfc:	00004917          	auipc	s2,0x4
    80003c00:	7bc90913          	addi	s2,s2,1980 # 800083b8 <cons>
    80003c04:	00050493          	mv	s1,a0
    80003c08:	00090513          	mv	a0,s2
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	e40080e7          	jalr	-448(ra) # 80004a4c <acquire>
    80003c14:	02048c63          	beqz	s1,80003c4c <consoleintr+0x68>
    80003c18:	0a092783          	lw	a5,160(s2)
    80003c1c:	09892703          	lw	a4,152(s2)
    80003c20:	07f00693          	li	a3,127
    80003c24:	40e7873b          	subw	a4,a5,a4
    80003c28:	02e6e263          	bltu	a3,a4,80003c4c <consoleintr+0x68>
    80003c2c:	00d00713          	li	a4,13
    80003c30:	04e48063          	beq	s1,a4,80003c70 <consoleintr+0x8c>
    80003c34:	07f7f713          	andi	a4,a5,127
    80003c38:	00e90733          	add	a4,s2,a4
    80003c3c:	0017879b          	addiw	a5,a5,1
    80003c40:	0af92023          	sw	a5,160(s2)
    80003c44:	00970c23          	sb	s1,24(a4)
    80003c48:	08f92e23          	sw	a5,156(s2)
    80003c4c:	01013403          	ld	s0,16(sp)
    80003c50:	01813083          	ld	ra,24(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	00013903          	ld	s2,0(sp)
    80003c5c:	00004517          	auipc	a0,0x4
    80003c60:	75c50513          	addi	a0,a0,1884 # 800083b8 <cons>
    80003c64:	02010113          	addi	sp,sp,32
    80003c68:	00001317          	auipc	t1,0x1
    80003c6c:	eb030067          	jr	-336(t1) # 80004b18 <release>
    80003c70:	00a00493          	li	s1,10
    80003c74:	fc1ff06f          	j	80003c34 <consoleintr+0x50>

0000000080003c78 <consoleinit>:
    80003c78:	fe010113          	addi	sp,sp,-32
    80003c7c:	00113c23          	sd	ra,24(sp)
    80003c80:	00813823          	sd	s0,16(sp)
    80003c84:	00913423          	sd	s1,8(sp)
    80003c88:	02010413          	addi	s0,sp,32
    80003c8c:	00004497          	auipc	s1,0x4
    80003c90:	72c48493          	addi	s1,s1,1836 # 800083b8 <cons>
    80003c94:	00048513          	mv	a0,s1
    80003c98:	00002597          	auipc	a1,0x2
    80003c9c:	6c858593          	addi	a1,a1,1736 # 80006360 <_ZZ14__print_uint64mE6digits+0x270>
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	d88080e7          	jalr	-632(ra) # 80004a28 <initlock>
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	7ac080e7          	jalr	1964(ra) # 80004454 <uartinit>
    80003cb0:	01813083          	ld	ra,24(sp)
    80003cb4:	01013403          	ld	s0,16(sp)
    80003cb8:	00000797          	auipc	a5,0x0
    80003cbc:	d9c78793          	addi	a5,a5,-612 # 80003a54 <consoleread>
    80003cc0:	0af4bc23          	sd	a5,184(s1)
    80003cc4:	00000797          	auipc	a5,0x0
    80003cc8:	cec78793          	addi	a5,a5,-788 # 800039b0 <consolewrite>
    80003ccc:	0cf4b023          	sd	a5,192(s1)
    80003cd0:	00813483          	ld	s1,8(sp)
    80003cd4:	02010113          	addi	sp,sp,32
    80003cd8:	00008067          	ret

0000000080003cdc <console_read>:
    80003cdc:	ff010113          	addi	sp,sp,-16
    80003ce0:	00813423          	sd	s0,8(sp)
    80003ce4:	01010413          	addi	s0,sp,16
    80003ce8:	00813403          	ld	s0,8(sp)
    80003cec:	00004317          	auipc	t1,0x4
    80003cf0:	78433303          	ld	t1,1924(t1) # 80008470 <devsw+0x10>
    80003cf4:	01010113          	addi	sp,sp,16
    80003cf8:	00030067          	jr	t1

0000000080003cfc <console_write>:
    80003cfc:	ff010113          	addi	sp,sp,-16
    80003d00:	00813423          	sd	s0,8(sp)
    80003d04:	01010413          	addi	s0,sp,16
    80003d08:	00813403          	ld	s0,8(sp)
    80003d0c:	00004317          	auipc	t1,0x4
    80003d10:	76c33303          	ld	t1,1900(t1) # 80008478 <devsw+0x18>
    80003d14:	01010113          	addi	sp,sp,16
    80003d18:	00030067          	jr	t1

0000000080003d1c <panic>:
    80003d1c:	fe010113          	addi	sp,sp,-32
    80003d20:	00113c23          	sd	ra,24(sp)
    80003d24:	00813823          	sd	s0,16(sp)
    80003d28:	00913423          	sd	s1,8(sp)
    80003d2c:	02010413          	addi	s0,sp,32
    80003d30:	00050493          	mv	s1,a0
    80003d34:	00002517          	auipc	a0,0x2
    80003d38:	63450513          	addi	a0,a0,1588 # 80006368 <_ZZ14__print_uint64mE6digits+0x278>
    80003d3c:	00004797          	auipc	a5,0x4
    80003d40:	7c07ae23          	sw	zero,2012(a5) # 80008518 <pr+0x18>
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	034080e7          	jalr	52(ra) # 80003d78 <__printf>
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	028080e7          	jalr	40(ra) # 80003d78 <__printf>
    80003d58:	00002517          	auipc	a0,0x2
    80003d5c:	4d850513          	addi	a0,a0,1240 # 80006230 <_ZZ14__print_uint64mE6digits+0x140>
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	018080e7          	jalr	24(ra) # 80003d78 <__printf>
    80003d68:	00100793          	li	a5,1
    80003d6c:	00003717          	auipc	a4,0x3
    80003d70:	50f72623          	sw	a5,1292(a4) # 80007278 <panicked>
    80003d74:	0000006f          	j	80003d74 <panic+0x58>

0000000080003d78 <__printf>:
    80003d78:	f3010113          	addi	sp,sp,-208
    80003d7c:	08813023          	sd	s0,128(sp)
    80003d80:	07313423          	sd	s3,104(sp)
    80003d84:	09010413          	addi	s0,sp,144
    80003d88:	05813023          	sd	s8,64(sp)
    80003d8c:	08113423          	sd	ra,136(sp)
    80003d90:	06913c23          	sd	s1,120(sp)
    80003d94:	07213823          	sd	s2,112(sp)
    80003d98:	07413023          	sd	s4,96(sp)
    80003d9c:	05513c23          	sd	s5,88(sp)
    80003da0:	05613823          	sd	s6,80(sp)
    80003da4:	05713423          	sd	s7,72(sp)
    80003da8:	03913c23          	sd	s9,56(sp)
    80003dac:	03a13823          	sd	s10,48(sp)
    80003db0:	03b13423          	sd	s11,40(sp)
    80003db4:	00004317          	auipc	t1,0x4
    80003db8:	74c30313          	addi	t1,t1,1868 # 80008500 <pr>
    80003dbc:	01832c03          	lw	s8,24(t1)
    80003dc0:	00b43423          	sd	a1,8(s0)
    80003dc4:	00c43823          	sd	a2,16(s0)
    80003dc8:	00d43c23          	sd	a3,24(s0)
    80003dcc:	02e43023          	sd	a4,32(s0)
    80003dd0:	02f43423          	sd	a5,40(s0)
    80003dd4:	03043823          	sd	a6,48(s0)
    80003dd8:	03143c23          	sd	a7,56(s0)
    80003ddc:	00050993          	mv	s3,a0
    80003de0:	4a0c1663          	bnez	s8,8000428c <__printf+0x514>
    80003de4:	60098c63          	beqz	s3,800043fc <__printf+0x684>
    80003de8:	0009c503          	lbu	a0,0(s3)
    80003dec:	00840793          	addi	a5,s0,8
    80003df0:	f6f43c23          	sd	a5,-136(s0)
    80003df4:	00000493          	li	s1,0
    80003df8:	22050063          	beqz	a0,80004018 <__printf+0x2a0>
    80003dfc:	00002a37          	lui	s4,0x2
    80003e00:	00018ab7          	lui	s5,0x18
    80003e04:	000f4b37          	lui	s6,0xf4
    80003e08:	00989bb7          	lui	s7,0x989
    80003e0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003e10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003e14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003e18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003e1c:	00148c9b          	addiw	s9,s1,1
    80003e20:	02500793          	li	a5,37
    80003e24:	01998933          	add	s2,s3,s9
    80003e28:	38f51263          	bne	a0,a5,800041ac <__printf+0x434>
    80003e2c:	00094783          	lbu	a5,0(s2)
    80003e30:	00078c9b          	sext.w	s9,a5
    80003e34:	1e078263          	beqz	a5,80004018 <__printf+0x2a0>
    80003e38:	0024849b          	addiw	s1,s1,2
    80003e3c:	07000713          	li	a4,112
    80003e40:	00998933          	add	s2,s3,s1
    80003e44:	38e78a63          	beq	a5,a4,800041d8 <__printf+0x460>
    80003e48:	20f76863          	bltu	a4,a5,80004058 <__printf+0x2e0>
    80003e4c:	42a78863          	beq	a5,a0,8000427c <__printf+0x504>
    80003e50:	06400713          	li	a4,100
    80003e54:	40e79663          	bne	a5,a4,80004260 <__printf+0x4e8>
    80003e58:	f7843783          	ld	a5,-136(s0)
    80003e5c:	0007a603          	lw	a2,0(a5)
    80003e60:	00878793          	addi	a5,a5,8
    80003e64:	f6f43c23          	sd	a5,-136(s0)
    80003e68:	42064a63          	bltz	a2,8000429c <__printf+0x524>
    80003e6c:	00a00713          	li	a4,10
    80003e70:	02e677bb          	remuw	a5,a2,a4
    80003e74:	00002d97          	auipc	s11,0x2
    80003e78:	51cd8d93          	addi	s11,s11,1308 # 80006390 <digits>
    80003e7c:	00900593          	li	a1,9
    80003e80:	0006051b          	sext.w	a0,a2
    80003e84:	00000c93          	li	s9,0
    80003e88:	02079793          	slli	a5,a5,0x20
    80003e8c:	0207d793          	srli	a5,a5,0x20
    80003e90:	00fd87b3          	add	a5,s11,a5
    80003e94:	0007c783          	lbu	a5,0(a5)
    80003e98:	02e656bb          	divuw	a3,a2,a4
    80003e9c:	f8f40023          	sb	a5,-128(s0)
    80003ea0:	14c5d863          	bge	a1,a2,80003ff0 <__printf+0x278>
    80003ea4:	06300593          	li	a1,99
    80003ea8:	00100c93          	li	s9,1
    80003eac:	02e6f7bb          	remuw	a5,a3,a4
    80003eb0:	02079793          	slli	a5,a5,0x20
    80003eb4:	0207d793          	srli	a5,a5,0x20
    80003eb8:	00fd87b3          	add	a5,s11,a5
    80003ebc:	0007c783          	lbu	a5,0(a5)
    80003ec0:	02e6d73b          	divuw	a4,a3,a4
    80003ec4:	f8f400a3          	sb	a5,-127(s0)
    80003ec8:	12a5f463          	bgeu	a1,a0,80003ff0 <__printf+0x278>
    80003ecc:	00a00693          	li	a3,10
    80003ed0:	00900593          	li	a1,9
    80003ed4:	02d777bb          	remuw	a5,a4,a3
    80003ed8:	02079793          	slli	a5,a5,0x20
    80003edc:	0207d793          	srli	a5,a5,0x20
    80003ee0:	00fd87b3          	add	a5,s11,a5
    80003ee4:	0007c503          	lbu	a0,0(a5)
    80003ee8:	02d757bb          	divuw	a5,a4,a3
    80003eec:	f8a40123          	sb	a0,-126(s0)
    80003ef0:	48e5f263          	bgeu	a1,a4,80004374 <__printf+0x5fc>
    80003ef4:	06300513          	li	a0,99
    80003ef8:	02d7f5bb          	remuw	a1,a5,a3
    80003efc:	02059593          	slli	a1,a1,0x20
    80003f00:	0205d593          	srli	a1,a1,0x20
    80003f04:	00bd85b3          	add	a1,s11,a1
    80003f08:	0005c583          	lbu	a1,0(a1)
    80003f0c:	02d7d7bb          	divuw	a5,a5,a3
    80003f10:	f8b401a3          	sb	a1,-125(s0)
    80003f14:	48e57263          	bgeu	a0,a4,80004398 <__printf+0x620>
    80003f18:	3e700513          	li	a0,999
    80003f1c:	02d7f5bb          	remuw	a1,a5,a3
    80003f20:	02059593          	slli	a1,a1,0x20
    80003f24:	0205d593          	srli	a1,a1,0x20
    80003f28:	00bd85b3          	add	a1,s11,a1
    80003f2c:	0005c583          	lbu	a1,0(a1)
    80003f30:	02d7d7bb          	divuw	a5,a5,a3
    80003f34:	f8b40223          	sb	a1,-124(s0)
    80003f38:	46e57663          	bgeu	a0,a4,800043a4 <__printf+0x62c>
    80003f3c:	02d7f5bb          	remuw	a1,a5,a3
    80003f40:	02059593          	slli	a1,a1,0x20
    80003f44:	0205d593          	srli	a1,a1,0x20
    80003f48:	00bd85b3          	add	a1,s11,a1
    80003f4c:	0005c583          	lbu	a1,0(a1)
    80003f50:	02d7d7bb          	divuw	a5,a5,a3
    80003f54:	f8b402a3          	sb	a1,-123(s0)
    80003f58:	46ea7863          	bgeu	s4,a4,800043c8 <__printf+0x650>
    80003f5c:	02d7f5bb          	remuw	a1,a5,a3
    80003f60:	02059593          	slli	a1,a1,0x20
    80003f64:	0205d593          	srli	a1,a1,0x20
    80003f68:	00bd85b3          	add	a1,s11,a1
    80003f6c:	0005c583          	lbu	a1,0(a1)
    80003f70:	02d7d7bb          	divuw	a5,a5,a3
    80003f74:	f8b40323          	sb	a1,-122(s0)
    80003f78:	3eeaf863          	bgeu	s5,a4,80004368 <__printf+0x5f0>
    80003f7c:	02d7f5bb          	remuw	a1,a5,a3
    80003f80:	02059593          	slli	a1,a1,0x20
    80003f84:	0205d593          	srli	a1,a1,0x20
    80003f88:	00bd85b3          	add	a1,s11,a1
    80003f8c:	0005c583          	lbu	a1,0(a1)
    80003f90:	02d7d7bb          	divuw	a5,a5,a3
    80003f94:	f8b403a3          	sb	a1,-121(s0)
    80003f98:	42eb7e63          	bgeu	s6,a4,800043d4 <__printf+0x65c>
    80003f9c:	02d7f5bb          	remuw	a1,a5,a3
    80003fa0:	02059593          	slli	a1,a1,0x20
    80003fa4:	0205d593          	srli	a1,a1,0x20
    80003fa8:	00bd85b3          	add	a1,s11,a1
    80003fac:	0005c583          	lbu	a1,0(a1)
    80003fb0:	02d7d7bb          	divuw	a5,a5,a3
    80003fb4:	f8b40423          	sb	a1,-120(s0)
    80003fb8:	42ebfc63          	bgeu	s7,a4,800043f0 <__printf+0x678>
    80003fbc:	02079793          	slli	a5,a5,0x20
    80003fc0:	0207d793          	srli	a5,a5,0x20
    80003fc4:	00fd8db3          	add	s11,s11,a5
    80003fc8:	000dc703          	lbu	a4,0(s11)
    80003fcc:	00a00793          	li	a5,10
    80003fd0:	00900c93          	li	s9,9
    80003fd4:	f8e404a3          	sb	a4,-119(s0)
    80003fd8:	00065c63          	bgez	a2,80003ff0 <__printf+0x278>
    80003fdc:	f9040713          	addi	a4,s0,-112
    80003fe0:	00f70733          	add	a4,a4,a5
    80003fe4:	02d00693          	li	a3,45
    80003fe8:	fed70823          	sb	a3,-16(a4)
    80003fec:	00078c93          	mv	s9,a5
    80003ff0:	f8040793          	addi	a5,s0,-128
    80003ff4:	01978cb3          	add	s9,a5,s9
    80003ff8:	f7f40d13          	addi	s10,s0,-129
    80003ffc:	000cc503          	lbu	a0,0(s9)
    80004000:	fffc8c93          	addi	s9,s9,-1
    80004004:	00000097          	auipc	ra,0x0
    80004008:	b90080e7          	jalr	-1136(ra) # 80003b94 <consputc>
    8000400c:	ffac98e3          	bne	s9,s10,80003ffc <__printf+0x284>
    80004010:	00094503          	lbu	a0,0(s2)
    80004014:	e00514e3          	bnez	a0,80003e1c <__printf+0xa4>
    80004018:	1a0c1663          	bnez	s8,800041c4 <__printf+0x44c>
    8000401c:	08813083          	ld	ra,136(sp)
    80004020:	08013403          	ld	s0,128(sp)
    80004024:	07813483          	ld	s1,120(sp)
    80004028:	07013903          	ld	s2,112(sp)
    8000402c:	06813983          	ld	s3,104(sp)
    80004030:	06013a03          	ld	s4,96(sp)
    80004034:	05813a83          	ld	s5,88(sp)
    80004038:	05013b03          	ld	s6,80(sp)
    8000403c:	04813b83          	ld	s7,72(sp)
    80004040:	04013c03          	ld	s8,64(sp)
    80004044:	03813c83          	ld	s9,56(sp)
    80004048:	03013d03          	ld	s10,48(sp)
    8000404c:	02813d83          	ld	s11,40(sp)
    80004050:	0d010113          	addi	sp,sp,208
    80004054:	00008067          	ret
    80004058:	07300713          	li	a4,115
    8000405c:	1ce78a63          	beq	a5,a4,80004230 <__printf+0x4b8>
    80004060:	07800713          	li	a4,120
    80004064:	1ee79e63          	bne	a5,a4,80004260 <__printf+0x4e8>
    80004068:	f7843783          	ld	a5,-136(s0)
    8000406c:	0007a703          	lw	a4,0(a5)
    80004070:	00878793          	addi	a5,a5,8
    80004074:	f6f43c23          	sd	a5,-136(s0)
    80004078:	28074263          	bltz	a4,800042fc <__printf+0x584>
    8000407c:	00002d97          	auipc	s11,0x2
    80004080:	314d8d93          	addi	s11,s11,788 # 80006390 <digits>
    80004084:	00f77793          	andi	a5,a4,15
    80004088:	00fd87b3          	add	a5,s11,a5
    8000408c:	0007c683          	lbu	a3,0(a5)
    80004090:	00f00613          	li	a2,15
    80004094:	0007079b          	sext.w	a5,a4
    80004098:	f8d40023          	sb	a3,-128(s0)
    8000409c:	0047559b          	srliw	a1,a4,0x4
    800040a0:	0047569b          	srliw	a3,a4,0x4
    800040a4:	00000c93          	li	s9,0
    800040a8:	0ee65063          	bge	a2,a4,80004188 <__printf+0x410>
    800040ac:	00f6f693          	andi	a3,a3,15
    800040b0:	00dd86b3          	add	a3,s11,a3
    800040b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800040b8:	0087d79b          	srliw	a5,a5,0x8
    800040bc:	00100c93          	li	s9,1
    800040c0:	f8d400a3          	sb	a3,-127(s0)
    800040c4:	0cb67263          	bgeu	a2,a1,80004188 <__printf+0x410>
    800040c8:	00f7f693          	andi	a3,a5,15
    800040cc:	00dd86b3          	add	a3,s11,a3
    800040d0:	0006c583          	lbu	a1,0(a3)
    800040d4:	00f00613          	li	a2,15
    800040d8:	0047d69b          	srliw	a3,a5,0x4
    800040dc:	f8b40123          	sb	a1,-126(s0)
    800040e0:	0047d593          	srli	a1,a5,0x4
    800040e4:	28f67e63          	bgeu	a2,a5,80004380 <__printf+0x608>
    800040e8:	00f6f693          	andi	a3,a3,15
    800040ec:	00dd86b3          	add	a3,s11,a3
    800040f0:	0006c503          	lbu	a0,0(a3)
    800040f4:	0087d813          	srli	a6,a5,0x8
    800040f8:	0087d69b          	srliw	a3,a5,0x8
    800040fc:	f8a401a3          	sb	a0,-125(s0)
    80004100:	28b67663          	bgeu	a2,a1,8000438c <__printf+0x614>
    80004104:	00f6f693          	andi	a3,a3,15
    80004108:	00dd86b3          	add	a3,s11,a3
    8000410c:	0006c583          	lbu	a1,0(a3)
    80004110:	00c7d513          	srli	a0,a5,0xc
    80004114:	00c7d69b          	srliw	a3,a5,0xc
    80004118:	f8b40223          	sb	a1,-124(s0)
    8000411c:	29067a63          	bgeu	a2,a6,800043b0 <__printf+0x638>
    80004120:	00f6f693          	andi	a3,a3,15
    80004124:	00dd86b3          	add	a3,s11,a3
    80004128:	0006c583          	lbu	a1,0(a3)
    8000412c:	0107d813          	srli	a6,a5,0x10
    80004130:	0107d69b          	srliw	a3,a5,0x10
    80004134:	f8b402a3          	sb	a1,-123(s0)
    80004138:	28a67263          	bgeu	a2,a0,800043bc <__printf+0x644>
    8000413c:	00f6f693          	andi	a3,a3,15
    80004140:	00dd86b3          	add	a3,s11,a3
    80004144:	0006c683          	lbu	a3,0(a3)
    80004148:	0147d79b          	srliw	a5,a5,0x14
    8000414c:	f8d40323          	sb	a3,-122(s0)
    80004150:	21067663          	bgeu	a2,a6,8000435c <__printf+0x5e4>
    80004154:	02079793          	slli	a5,a5,0x20
    80004158:	0207d793          	srli	a5,a5,0x20
    8000415c:	00fd8db3          	add	s11,s11,a5
    80004160:	000dc683          	lbu	a3,0(s11)
    80004164:	00800793          	li	a5,8
    80004168:	00700c93          	li	s9,7
    8000416c:	f8d403a3          	sb	a3,-121(s0)
    80004170:	00075c63          	bgez	a4,80004188 <__printf+0x410>
    80004174:	f9040713          	addi	a4,s0,-112
    80004178:	00f70733          	add	a4,a4,a5
    8000417c:	02d00693          	li	a3,45
    80004180:	fed70823          	sb	a3,-16(a4)
    80004184:	00078c93          	mv	s9,a5
    80004188:	f8040793          	addi	a5,s0,-128
    8000418c:	01978cb3          	add	s9,a5,s9
    80004190:	f7f40d13          	addi	s10,s0,-129
    80004194:	000cc503          	lbu	a0,0(s9)
    80004198:	fffc8c93          	addi	s9,s9,-1
    8000419c:	00000097          	auipc	ra,0x0
    800041a0:	9f8080e7          	jalr	-1544(ra) # 80003b94 <consputc>
    800041a4:	ff9d18e3          	bne	s10,s9,80004194 <__printf+0x41c>
    800041a8:	0100006f          	j	800041b8 <__printf+0x440>
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	9e8080e7          	jalr	-1560(ra) # 80003b94 <consputc>
    800041b4:	000c8493          	mv	s1,s9
    800041b8:	00094503          	lbu	a0,0(s2)
    800041bc:	c60510e3          	bnez	a0,80003e1c <__printf+0xa4>
    800041c0:	e40c0ee3          	beqz	s8,8000401c <__printf+0x2a4>
    800041c4:	00004517          	auipc	a0,0x4
    800041c8:	33c50513          	addi	a0,a0,828 # 80008500 <pr>
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	94c080e7          	jalr	-1716(ra) # 80004b18 <release>
    800041d4:	e49ff06f          	j	8000401c <__printf+0x2a4>
    800041d8:	f7843783          	ld	a5,-136(s0)
    800041dc:	03000513          	li	a0,48
    800041e0:	01000d13          	li	s10,16
    800041e4:	00878713          	addi	a4,a5,8
    800041e8:	0007bc83          	ld	s9,0(a5)
    800041ec:	f6e43c23          	sd	a4,-136(s0)
    800041f0:	00000097          	auipc	ra,0x0
    800041f4:	9a4080e7          	jalr	-1628(ra) # 80003b94 <consputc>
    800041f8:	07800513          	li	a0,120
    800041fc:	00000097          	auipc	ra,0x0
    80004200:	998080e7          	jalr	-1640(ra) # 80003b94 <consputc>
    80004204:	00002d97          	auipc	s11,0x2
    80004208:	18cd8d93          	addi	s11,s11,396 # 80006390 <digits>
    8000420c:	03ccd793          	srli	a5,s9,0x3c
    80004210:	00fd87b3          	add	a5,s11,a5
    80004214:	0007c503          	lbu	a0,0(a5)
    80004218:	fffd0d1b          	addiw	s10,s10,-1
    8000421c:	004c9c93          	slli	s9,s9,0x4
    80004220:	00000097          	auipc	ra,0x0
    80004224:	974080e7          	jalr	-1676(ra) # 80003b94 <consputc>
    80004228:	fe0d12e3          	bnez	s10,8000420c <__printf+0x494>
    8000422c:	f8dff06f          	j	800041b8 <__printf+0x440>
    80004230:	f7843783          	ld	a5,-136(s0)
    80004234:	0007bc83          	ld	s9,0(a5)
    80004238:	00878793          	addi	a5,a5,8
    8000423c:	f6f43c23          	sd	a5,-136(s0)
    80004240:	000c9a63          	bnez	s9,80004254 <__printf+0x4dc>
    80004244:	1080006f          	j	8000434c <__printf+0x5d4>
    80004248:	001c8c93          	addi	s9,s9,1
    8000424c:	00000097          	auipc	ra,0x0
    80004250:	948080e7          	jalr	-1720(ra) # 80003b94 <consputc>
    80004254:	000cc503          	lbu	a0,0(s9)
    80004258:	fe0518e3          	bnez	a0,80004248 <__printf+0x4d0>
    8000425c:	f5dff06f          	j	800041b8 <__printf+0x440>
    80004260:	02500513          	li	a0,37
    80004264:	00000097          	auipc	ra,0x0
    80004268:	930080e7          	jalr	-1744(ra) # 80003b94 <consputc>
    8000426c:	000c8513          	mv	a0,s9
    80004270:	00000097          	auipc	ra,0x0
    80004274:	924080e7          	jalr	-1756(ra) # 80003b94 <consputc>
    80004278:	f41ff06f          	j	800041b8 <__printf+0x440>
    8000427c:	02500513          	li	a0,37
    80004280:	00000097          	auipc	ra,0x0
    80004284:	914080e7          	jalr	-1772(ra) # 80003b94 <consputc>
    80004288:	f31ff06f          	j	800041b8 <__printf+0x440>
    8000428c:	00030513          	mv	a0,t1
    80004290:	00000097          	auipc	ra,0x0
    80004294:	7bc080e7          	jalr	1980(ra) # 80004a4c <acquire>
    80004298:	b4dff06f          	j	80003de4 <__printf+0x6c>
    8000429c:	40c0053b          	negw	a0,a2
    800042a0:	00a00713          	li	a4,10
    800042a4:	02e576bb          	remuw	a3,a0,a4
    800042a8:	00002d97          	auipc	s11,0x2
    800042ac:	0e8d8d93          	addi	s11,s11,232 # 80006390 <digits>
    800042b0:	ff700593          	li	a1,-9
    800042b4:	02069693          	slli	a3,a3,0x20
    800042b8:	0206d693          	srli	a3,a3,0x20
    800042bc:	00dd86b3          	add	a3,s11,a3
    800042c0:	0006c683          	lbu	a3,0(a3)
    800042c4:	02e557bb          	divuw	a5,a0,a4
    800042c8:	f8d40023          	sb	a3,-128(s0)
    800042cc:	10b65e63          	bge	a2,a1,800043e8 <__printf+0x670>
    800042d0:	06300593          	li	a1,99
    800042d4:	02e7f6bb          	remuw	a3,a5,a4
    800042d8:	02069693          	slli	a3,a3,0x20
    800042dc:	0206d693          	srli	a3,a3,0x20
    800042e0:	00dd86b3          	add	a3,s11,a3
    800042e4:	0006c683          	lbu	a3,0(a3)
    800042e8:	02e7d73b          	divuw	a4,a5,a4
    800042ec:	00200793          	li	a5,2
    800042f0:	f8d400a3          	sb	a3,-127(s0)
    800042f4:	bca5ece3          	bltu	a1,a0,80003ecc <__printf+0x154>
    800042f8:	ce5ff06f          	j	80003fdc <__printf+0x264>
    800042fc:	40e007bb          	negw	a5,a4
    80004300:	00002d97          	auipc	s11,0x2
    80004304:	090d8d93          	addi	s11,s11,144 # 80006390 <digits>
    80004308:	00f7f693          	andi	a3,a5,15
    8000430c:	00dd86b3          	add	a3,s11,a3
    80004310:	0006c583          	lbu	a1,0(a3)
    80004314:	ff100613          	li	a2,-15
    80004318:	0047d69b          	srliw	a3,a5,0x4
    8000431c:	f8b40023          	sb	a1,-128(s0)
    80004320:	0047d59b          	srliw	a1,a5,0x4
    80004324:	0ac75e63          	bge	a4,a2,800043e0 <__printf+0x668>
    80004328:	00f6f693          	andi	a3,a3,15
    8000432c:	00dd86b3          	add	a3,s11,a3
    80004330:	0006c603          	lbu	a2,0(a3)
    80004334:	00f00693          	li	a3,15
    80004338:	0087d79b          	srliw	a5,a5,0x8
    8000433c:	f8c400a3          	sb	a2,-127(s0)
    80004340:	d8b6e4e3          	bltu	a3,a1,800040c8 <__printf+0x350>
    80004344:	00200793          	li	a5,2
    80004348:	e2dff06f          	j	80004174 <__printf+0x3fc>
    8000434c:	00002c97          	auipc	s9,0x2
    80004350:	024c8c93          	addi	s9,s9,36 # 80006370 <_ZZ14__print_uint64mE6digits+0x280>
    80004354:	02800513          	li	a0,40
    80004358:	ef1ff06f          	j	80004248 <__printf+0x4d0>
    8000435c:	00700793          	li	a5,7
    80004360:	00600c93          	li	s9,6
    80004364:	e0dff06f          	j	80004170 <__printf+0x3f8>
    80004368:	00700793          	li	a5,7
    8000436c:	00600c93          	li	s9,6
    80004370:	c69ff06f          	j	80003fd8 <__printf+0x260>
    80004374:	00300793          	li	a5,3
    80004378:	00200c93          	li	s9,2
    8000437c:	c5dff06f          	j	80003fd8 <__printf+0x260>
    80004380:	00300793          	li	a5,3
    80004384:	00200c93          	li	s9,2
    80004388:	de9ff06f          	j	80004170 <__printf+0x3f8>
    8000438c:	00400793          	li	a5,4
    80004390:	00300c93          	li	s9,3
    80004394:	dddff06f          	j	80004170 <__printf+0x3f8>
    80004398:	00400793          	li	a5,4
    8000439c:	00300c93          	li	s9,3
    800043a0:	c39ff06f          	j	80003fd8 <__printf+0x260>
    800043a4:	00500793          	li	a5,5
    800043a8:	00400c93          	li	s9,4
    800043ac:	c2dff06f          	j	80003fd8 <__printf+0x260>
    800043b0:	00500793          	li	a5,5
    800043b4:	00400c93          	li	s9,4
    800043b8:	db9ff06f          	j	80004170 <__printf+0x3f8>
    800043bc:	00600793          	li	a5,6
    800043c0:	00500c93          	li	s9,5
    800043c4:	dadff06f          	j	80004170 <__printf+0x3f8>
    800043c8:	00600793          	li	a5,6
    800043cc:	00500c93          	li	s9,5
    800043d0:	c09ff06f          	j	80003fd8 <__printf+0x260>
    800043d4:	00800793          	li	a5,8
    800043d8:	00700c93          	li	s9,7
    800043dc:	bfdff06f          	j	80003fd8 <__printf+0x260>
    800043e0:	00100793          	li	a5,1
    800043e4:	d91ff06f          	j	80004174 <__printf+0x3fc>
    800043e8:	00100793          	li	a5,1
    800043ec:	bf1ff06f          	j	80003fdc <__printf+0x264>
    800043f0:	00900793          	li	a5,9
    800043f4:	00800c93          	li	s9,8
    800043f8:	be1ff06f          	j	80003fd8 <__printf+0x260>
    800043fc:	00002517          	auipc	a0,0x2
    80004400:	f7c50513          	addi	a0,a0,-132 # 80006378 <_ZZ14__print_uint64mE6digits+0x288>
    80004404:	00000097          	auipc	ra,0x0
    80004408:	918080e7          	jalr	-1768(ra) # 80003d1c <panic>

000000008000440c <printfinit>:
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00813823          	sd	s0,16(sp)
    80004414:	00913423          	sd	s1,8(sp)
    80004418:	00113c23          	sd	ra,24(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	00004497          	auipc	s1,0x4
    80004424:	0e048493          	addi	s1,s1,224 # 80008500 <pr>
    80004428:	00048513          	mv	a0,s1
    8000442c:	00002597          	auipc	a1,0x2
    80004430:	f5c58593          	addi	a1,a1,-164 # 80006388 <_ZZ14__print_uint64mE6digits+0x298>
    80004434:	00000097          	auipc	ra,0x0
    80004438:	5f4080e7          	jalr	1524(ra) # 80004a28 <initlock>
    8000443c:	01813083          	ld	ra,24(sp)
    80004440:	01013403          	ld	s0,16(sp)
    80004444:	0004ac23          	sw	zero,24(s1)
    80004448:	00813483          	ld	s1,8(sp)
    8000444c:	02010113          	addi	sp,sp,32
    80004450:	00008067          	ret

0000000080004454 <uartinit>:
    80004454:	ff010113          	addi	sp,sp,-16
    80004458:	00813423          	sd	s0,8(sp)
    8000445c:	01010413          	addi	s0,sp,16
    80004460:	100007b7          	lui	a5,0x10000
    80004464:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004468:	f8000713          	li	a4,-128
    8000446c:	00e781a3          	sb	a4,3(a5)
    80004470:	00300713          	li	a4,3
    80004474:	00e78023          	sb	a4,0(a5)
    80004478:	000780a3          	sb	zero,1(a5)
    8000447c:	00e781a3          	sb	a4,3(a5)
    80004480:	00700693          	li	a3,7
    80004484:	00d78123          	sb	a3,2(a5)
    80004488:	00e780a3          	sb	a4,1(a5)
    8000448c:	00813403          	ld	s0,8(sp)
    80004490:	01010113          	addi	sp,sp,16
    80004494:	00008067          	ret

0000000080004498 <uartputc>:
    80004498:	00003797          	auipc	a5,0x3
    8000449c:	de07a783          	lw	a5,-544(a5) # 80007278 <panicked>
    800044a0:	00078463          	beqz	a5,800044a8 <uartputc+0x10>
    800044a4:	0000006f          	j	800044a4 <uartputc+0xc>
    800044a8:	fd010113          	addi	sp,sp,-48
    800044ac:	02813023          	sd	s0,32(sp)
    800044b0:	00913c23          	sd	s1,24(sp)
    800044b4:	01213823          	sd	s2,16(sp)
    800044b8:	01313423          	sd	s3,8(sp)
    800044bc:	02113423          	sd	ra,40(sp)
    800044c0:	03010413          	addi	s0,sp,48
    800044c4:	00003917          	auipc	s2,0x3
    800044c8:	dbc90913          	addi	s2,s2,-580 # 80007280 <uart_tx_r>
    800044cc:	00093783          	ld	a5,0(s2)
    800044d0:	00003497          	auipc	s1,0x3
    800044d4:	db848493          	addi	s1,s1,-584 # 80007288 <uart_tx_w>
    800044d8:	0004b703          	ld	a4,0(s1)
    800044dc:	02078693          	addi	a3,a5,32
    800044e0:	00050993          	mv	s3,a0
    800044e4:	02e69c63          	bne	a3,a4,8000451c <uartputc+0x84>
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	834080e7          	jalr	-1996(ra) # 80004d1c <push_on>
    800044f0:	00093783          	ld	a5,0(s2)
    800044f4:	0004b703          	ld	a4,0(s1)
    800044f8:	02078793          	addi	a5,a5,32
    800044fc:	00e79463          	bne	a5,a4,80004504 <uartputc+0x6c>
    80004500:	0000006f          	j	80004500 <uartputc+0x68>
    80004504:	00001097          	auipc	ra,0x1
    80004508:	88c080e7          	jalr	-1908(ra) # 80004d90 <pop_on>
    8000450c:	00093783          	ld	a5,0(s2)
    80004510:	0004b703          	ld	a4,0(s1)
    80004514:	02078693          	addi	a3,a5,32
    80004518:	fce688e3          	beq	a3,a4,800044e8 <uartputc+0x50>
    8000451c:	01f77693          	andi	a3,a4,31
    80004520:	00004597          	auipc	a1,0x4
    80004524:	00058593          	mv	a1,a1
    80004528:	00d586b3          	add	a3,a1,a3
    8000452c:	00170713          	addi	a4,a4,1
    80004530:	01368023          	sb	s3,0(a3)
    80004534:	00e4b023          	sd	a4,0(s1)
    80004538:	10000637          	lui	a2,0x10000
    8000453c:	02f71063          	bne	a4,a5,8000455c <uartputc+0xc4>
    80004540:	0340006f          	j	80004574 <uartputc+0xdc>
    80004544:	00074703          	lbu	a4,0(a4)
    80004548:	00f93023          	sd	a5,0(s2)
    8000454c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004550:	00093783          	ld	a5,0(s2)
    80004554:	0004b703          	ld	a4,0(s1)
    80004558:	00f70e63          	beq	a4,a5,80004574 <uartputc+0xdc>
    8000455c:	00564683          	lbu	a3,5(a2)
    80004560:	01f7f713          	andi	a4,a5,31
    80004564:	00e58733          	add	a4,a1,a4
    80004568:	0206f693          	andi	a3,a3,32
    8000456c:	00178793          	addi	a5,a5,1
    80004570:	fc069ae3          	bnez	a3,80004544 <uartputc+0xac>
    80004574:	02813083          	ld	ra,40(sp)
    80004578:	02013403          	ld	s0,32(sp)
    8000457c:	01813483          	ld	s1,24(sp)
    80004580:	01013903          	ld	s2,16(sp)
    80004584:	00813983          	ld	s3,8(sp)
    80004588:	03010113          	addi	sp,sp,48
    8000458c:	00008067          	ret

0000000080004590 <uartputc_sync>:
    80004590:	ff010113          	addi	sp,sp,-16
    80004594:	00813423          	sd	s0,8(sp)
    80004598:	01010413          	addi	s0,sp,16
    8000459c:	00003717          	auipc	a4,0x3
    800045a0:	cdc72703          	lw	a4,-804(a4) # 80007278 <panicked>
    800045a4:	02071663          	bnez	a4,800045d0 <uartputc_sync+0x40>
    800045a8:	00050793          	mv	a5,a0
    800045ac:	100006b7          	lui	a3,0x10000
    800045b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800045b4:	02077713          	andi	a4,a4,32
    800045b8:	fe070ce3          	beqz	a4,800045b0 <uartputc_sync+0x20>
    800045bc:	0ff7f793          	andi	a5,a5,255
    800045c0:	00f68023          	sb	a5,0(a3)
    800045c4:	00813403          	ld	s0,8(sp)
    800045c8:	01010113          	addi	sp,sp,16
    800045cc:	00008067          	ret
    800045d0:	0000006f          	j	800045d0 <uartputc_sync+0x40>

00000000800045d4 <uartstart>:
    800045d4:	ff010113          	addi	sp,sp,-16
    800045d8:	00813423          	sd	s0,8(sp)
    800045dc:	01010413          	addi	s0,sp,16
    800045e0:	00003617          	auipc	a2,0x3
    800045e4:	ca060613          	addi	a2,a2,-864 # 80007280 <uart_tx_r>
    800045e8:	00003517          	auipc	a0,0x3
    800045ec:	ca050513          	addi	a0,a0,-864 # 80007288 <uart_tx_w>
    800045f0:	00063783          	ld	a5,0(a2)
    800045f4:	00053703          	ld	a4,0(a0)
    800045f8:	04f70263          	beq	a4,a5,8000463c <uartstart+0x68>
    800045fc:	100005b7          	lui	a1,0x10000
    80004600:	00004817          	auipc	a6,0x4
    80004604:	f2080813          	addi	a6,a6,-224 # 80008520 <uart_tx_buf>
    80004608:	01c0006f          	j	80004624 <uartstart+0x50>
    8000460c:	0006c703          	lbu	a4,0(a3)
    80004610:	00f63023          	sd	a5,0(a2)
    80004614:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004618:	00063783          	ld	a5,0(a2)
    8000461c:	00053703          	ld	a4,0(a0)
    80004620:	00f70e63          	beq	a4,a5,8000463c <uartstart+0x68>
    80004624:	01f7f713          	andi	a4,a5,31
    80004628:	00e806b3          	add	a3,a6,a4
    8000462c:	0055c703          	lbu	a4,5(a1)
    80004630:	00178793          	addi	a5,a5,1
    80004634:	02077713          	andi	a4,a4,32
    80004638:	fc071ae3          	bnez	a4,8000460c <uartstart+0x38>
    8000463c:	00813403          	ld	s0,8(sp)
    80004640:	01010113          	addi	sp,sp,16
    80004644:	00008067          	ret

0000000080004648 <uartgetc>:
    80004648:	ff010113          	addi	sp,sp,-16
    8000464c:	00813423          	sd	s0,8(sp)
    80004650:	01010413          	addi	s0,sp,16
    80004654:	10000737          	lui	a4,0x10000
    80004658:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000465c:	0017f793          	andi	a5,a5,1
    80004660:	00078c63          	beqz	a5,80004678 <uartgetc+0x30>
    80004664:	00074503          	lbu	a0,0(a4)
    80004668:	0ff57513          	andi	a0,a0,255
    8000466c:	00813403          	ld	s0,8(sp)
    80004670:	01010113          	addi	sp,sp,16
    80004674:	00008067          	ret
    80004678:	fff00513          	li	a0,-1
    8000467c:	ff1ff06f          	j	8000466c <uartgetc+0x24>

0000000080004680 <uartintr>:
    80004680:	100007b7          	lui	a5,0x10000
    80004684:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004688:	0017f793          	andi	a5,a5,1
    8000468c:	0a078463          	beqz	a5,80004734 <uartintr+0xb4>
    80004690:	fe010113          	addi	sp,sp,-32
    80004694:	00813823          	sd	s0,16(sp)
    80004698:	00913423          	sd	s1,8(sp)
    8000469c:	00113c23          	sd	ra,24(sp)
    800046a0:	02010413          	addi	s0,sp,32
    800046a4:	100004b7          	lui	s1,0x10000
    800046a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800046ac:	0ff57513          	andi	a0,a0,255
    800046b0:	fffff097          	auipc	ra,0xfffff
    800046b4:	534080e7          	jalr	1332(ra) # 80003be4 <consoleintr>
    800046b8:	0054c783          	lbu	a5,5(s1)
    800046bc:	0017f793          	andi	a5,a5,1
    800046c0:	fe0794e3          	bnez	a5,800046a8 <uartintr+0x28>
    800046c4:	00003617          	auipc	a2,0x3
    800046c8:	bbc60613          	addi	a2,a2,-1092 # 80007280 <uart_tx_r>
    800046cc:	00003517          	auipc	a0,0x3
    800046d0:	bbc50513          	addi	a0,a0,-1092 # 80007288 <uart_tx_w>
    800046d4:	00063783          	ld	a5,0(a2)
    800046d8:	00053703          	ld	a4,0(a0)
    800046dc:	04f70263          	beq	a4,a5,80004720 <uartintr+0xa0>
    800046e0:	100005b7          	lui	a1,0x10000
    800046e4:	00004817          	auipc	a6,0x4
    800046e8:	e3c80813          	addi	a6,a6,-452 # 80008520 <uart_tx_buf>
    800046ec:	01c0006f          	j	80004708 <uartintr+0x88>
    800046f0:	0006c703          	lbu	a4,0(a3)
    800046f4:	00f63023          	sd	a5,0(a2)
    800046f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800046fc:	00063783          	ld	a5,0(a2)
    80004700:	00053703          	ld	a4,0(a0)
    80004704:	00f70e63          	beq	a4,a5,80004720 <uartintr+0xa0>
    80004708:	01f7f713          	andi	a4,a5,31
    8000470c:	00e806b3          	add	a3,a6,a4
    80004710:	0055c703          	lbu	a4,5(a1)
    80004714:	00178793          	addi	a5,a5,1
    80004718:	02077713          	andi	a4,a4,32
    8000471c:	fc071ae3          	bnez	a4,800046f0 <uartintr+0x70>
    80004720:	01813083          	ld	ra,24(sp)
    80004724:	01013403          	ld	s0,16(sp)
    80004728:	00813483          	ld	s1,8(sp)
    8000472c:	02010113          	addi	sp,sp,32
    80004730:	00008067          	ret
    80004734:	00003617          	auipc	a2,0x3
    80004738:	b4c60613          	addi	a2,a2,-1204 # 80007280 <uart_tx_r>
    8000473c:	00003517          	auipc	a0,0x3
    80004740:	b4c50513          	addi	a0,a0,-1204 # 80007288 <uart_tx_w>
    80004744:	00063783          	ld	a5,0(a2)
    80004748:	00053703          	ld	a4,0(a0)
    8000474c:	04f70263          	beq	a4,a5,80004790 <uartintr+0x110>
    80004750:	100005b7          	lui	a1,0x10000
    80004754:	00004817          	auipc	a6,0x4
    80004758:	dcc80813          	addi	a6,a6,-564 # 80008520 <uart_tx_buf>
    8000475c:	01c0006f          	j	80004778 <uartintr+0xf8>
    80004760:	0006c703          	lbu	a4,0(a3)
    80004764:	00f63023          	sd	a5,0(a2)
    80004768:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000476c:	00063783          	ld	a5,0(a2)
    80004770:	00053703          	ld	a4,0(a0)
    80004774:	02f70063          	beq	a4,a5,80004794 <uartintr+0x114>
    80004778:	01f7f713          	andi	a4,a5,31
    8000477c:	00e806b3          	add	a3,a6,a4
    80004780:	0055c703          	lbu	a4,5(a1)
    80004784:	00178793          	addi	a5,a5,1
    80004788:	02077713          	andi	a4,a4,32
    8000478c:	fc071ae3          	bnez	a4,80004760 <uartintr+0xe0>
    80004790:	00008067          	ret
    80004794:	00008067          	ret

0000000080004798 <kinit>:
    80004798:	fc010113          	addi	sp,sp,-64
    8000479c:	02913423          	sd	s1,40(sp)
    800047a0:	fffff7b7          	lui	a5,0xfffff
    800047a4:	00005497          	auipc	s1,0x5
    800047a8:	d9b48493          	addi	s1,s1,-613 # 8000953f <end+0xfff>
    800047ac:	02813823          	sd	s0,48(sp)
    800047b0:	01313c23          	sd	s3,24(sp)
    800047b4:	00f4f4b3          	and	s1,s1,a5
    800047b8:	02113c23          	sd	ra,56(sp)
    800047bc:	03213023          	sd	s2,32(sp)
    800047c0:	01413823          	sd	s4,16(sp)
    800047c4:	01513423          	sd	s5,8(sp)
    800047c8:	04010413          	addi	s0,sp,64
    800047cc:	000017b7          	lui	a5,0x1
    800047d0:	01100993          	li	s3,17
    800047d4:	00f487b3          	add	a5,s1,a5
    800047d8:	01b99993          	slli	s3,s3,0x1b
    800047dc:	06f9e063          	bltu	s3,a5,8000483c <kinit+0xa4>
    800047e0:	00004a97          	auipc	s5,0x4
    800047e4:	d60a8a93          	addi	s5,s5,-672 # 80008540 <end>
    800047e8:	0754ec63          	bltu	s1,s5,80004860 <kinit+0xc8>
    800047ec:	0734fa63          	bgeu	s1,s3,80004860 <kinit+0xc8>
    800047f0:	00088a37          	lui	s4,0x88
    800047f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800047f8:	00003917          	auipc	s2,0x3
    800047fc:	a9890913          	addi	s2,s2,-1384 # 80007290 <kmem>
    80004800:	00ca1a13          	slli	s4,s4,0xc
    80004804:	0140006f          	j	80004818 <kinit+0x80>
    80004808:	000017b7          	lui	a5,0x1
    8000480c:	00f484b3          	add	s1,s1,a5
    80004810:	0554e863          	bltu	s1,s5,80004860 <kinit+0xc8>
    80004814:	0534f663          	bgeu	s1,s3,80004860 <kinit+0xc8>
    80004818:	00001637          	lui	a2,0x1
    8000481c:	00100593          	li	a1,1
    80004820:	00048513          	mv	a0,s1
    80004824:	00000097          	auipc	ra,0x0
    80004828:	5e4080e7          	jalr	1508(ra) # 80004e08 <__memset>
    8000482c:	00093783          	ld	a5,0(s2)
    80004830:	00f4b023          	sd	a5,0(s1)
    80004834:	00993023          	sd	s1,0(s2)
    80004838:	fd4498e3          	bne	s1,s4,80004808 <kinit+0x70>
    8000483c:	03813083          	ld	ra,56(sp)
    80004840:	03013403          	ld	s0,48(sp)
    80004844:	02813483          	ld	s1,40(sp)
    80004848:	02013903          	ld	s2,32(sp)
    8000484c:	01813983          	ld	s3,24(sp)
    80004850:	01013a03          	ld	s4,16(sp)
    80004854:	00813a83          	ld	s5,8(sp)
    80004858:	04010113          	addi	sp,sp,64
    8000485c:	00008067          	ret
    80004860:	00002517          	auipc	a0,0x2
    80004864:	b4850513          	addi	a0,a0,-1208 # 800063a8 <digits+0x18>
    80004868:	fffff097          	auipc	ra,0xfffff
    8000486c:	4b4080e7          	jalr	1204(ra) # 80003d1c <panic>

0000000080004870 <freerange>:
    80004870:	fc010113          	addi	sp,sp,-64
    80004874:	000017b7          	lui	a5,0x1
    80004878:	02913423          	sd	s1,40(sp)
    8000487c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004880:	009504b3          	add	s1,a0,s1
    80004884:	fffff537          	lui	a0,0xfffff
    80004888:	02813823          	sd	s0,48(sp)
    8000488c:	02113c23          	sd	ra,56(sp)
    80004890:	03213023          	sd	s2,32(sp)
    80004894:	01313c23          	sd	s3,24(sp)
    80004898:	01413823          	sd	s4,16(sp)
    8000489c:	01513423          	sd	s5,8(sp)
    800048a0:	01613023          	sd	s6,0(sp)
    800048a4:	04010413          	addi	s0,sp,64
    800048a8:	00a4f4b3          	and	s1,s1,a0
    800048ac:	00f487b3          	add	a5,s1,a5
    800048b0:	06f5e463          	bltu	a1,a5,80004918 <freerange+0xa8>
    800048b4:	00004a97          	auipc	s5,0x4
    800048b8:	c8ca8a93          	addi	s5,s5,-884 # 80008540 <end>
    800048bc:	0954e263          	bltu	s1,s5,80004940 <freerange+0xd0>
    800048c0:	01100993          	li	s3,17
    800048c4:	01b99993          	slli	s3,s3,0x1b
    800048c8:	0734fc63          	bgeu	s1,s3,80004940 <freerange+0xd0>
    800048cc:	00058a13          	mv	s4,a1
    800048d0:	00003917          	auipc	s2,0x3
    800048d4:	9c090913          	addi	s2,s2,-1600 # 80007290 <kmem>
    800048d8:	00002b37          	lui	s6,0x2
    800048dc:	0140006f          	j	800048f0 <freerange+0x80>
    800048e0:	000017b7          	lui	a5,0x1
    800048e4:	00f484b3          	add	s1,s1,a5
    800048e8:	0554ec63          	bltu	s1,s5,80004940 <freerange+0xd0>
    800048ec:	0534fa63          	bgeu	s1,s3,80004940 <freerange+0xd0>
    800048f0:	00001637          	lui	a2,0x1
    800048f4:	00100593          	li	a1,1
    800048f8:	00048513          	mv	a0,s1
    800048fc:	00000097          	auipc	ra,0x0
    80004900:	50c080e7          	jalr	1292(ra) # 80004e08 <__memset>
    80004904:	00093703          	ld	a4,0(s2)
    80004908:	016487b3          	add	a5,s1,s6
    8000490c:	00e4b023          	sd	a4,0(s1)
    80004910:	00993023          	sd	s1,0(s2)
    80004914:	fcfa76e3          	bgeu	s4,a5,800048e0 <freerange+0x70>
    80004918:	03813083          	ld	ra,56(sp)
    8000491c:	03013403          	ld	s0,48(sp)
    80004920:	02813483          	ld	s1,40(sp)
    80004924:	02013903          	ld	s2,32(sp)
    80004928:	01813983          	ld	s3,24(sp)
    8000492c:	01013a03          	ld	s4,16(sp)
    80004930:	00813a83          	ld	s5,8(sp)
    80004934:	00013b03          	ld	s6,0(sp)
    80004938:	04010113          	addi	sp,sp,64
    8000493c:	00008067          	ret
    80004940:	00002517          	auipc	a0,0x2
    80004944:	a6850513          	addi	a0,a0,-1432 # 800063a8 <digits+0x18>
    80004948:	fffff097          	auipc	ra,0xfffff
    8000494c:	3d4080e7          	jalr	980(ra) # 80003d1c <panic>

0000000080004950 <kfree>:
    80004950:	fe010113          	addi	sp,sp,-32
    80004954:	00813823          	sd	s0,16(sp)
    80004958:	00113c23          	sd	ra,24(sp)
    8000495c:	00913423          	sd	s1,8(sp)
    80004960:	02010413          	addi	s0,sp,32
    80004964:	03451793          	slli	a5,a0,0x34
    80004968:	04079c63          	bnez	a5,800049c0 <kfree+0x70>
    8000496c:	00004797          	auipc	a5,0x4
    80004970:	bd478793          	addi	a5,a5,-1068 # 80008540 <end>
    80004974:	00050493          	mv	s1,a0
    80004978:	04f56463          	bltu	a0,a5,800049c0 <kfree+0x70>
    8000497c:	01100793          	li	a5,17
    80004980:	01b79793          	slli	a5,a5,0x1b
    80004984:	02f57e63          	bgeu	a0,a5,800049c0 <kfree+0x70>
    80004988:	00001637          	lui	a2,0x1
    8000498c:	00100593          	li	a1,1
    80004990:	00000097          	auipc	ra,0x0
    80004994:	478080e7          	jalr	1144(ra) # 80004e08 <__memset>
    80004998:	00003797          	auipc	a5,0x3
    8000499c:	8f878793          	addi	a5,a5,-1800 # 80007290 <kmem>
    800049a0:	0007b703          	ld	a4,0(a5)
    800049a4:	01813083          	ld	ra,24(sp)
    800049a8:	01013403          	ld	s0,16(sp)
    800049ac:	00e4b023          	sd	a4,0(s1)
    800049b0:	0097b023          	sd	s1,0(a5)
    800049b4:	00813483          	ld	s1,8(sp)
    800049b8:	02010113          	addi	sp,sp,32
    800049bc:	00008067          	ret
    800049c0:	00002517          	auipc	a0,0x2
    800049c4:	9e850513          	addi	a0,a0,-1560 # 800063a8 <digits+0x18>
    800049c8:	fffff097          	auipc	ra,0xfffff
    800049cc:	354080e7          	jalr	852(ra) # 80003d1c <panic>

00000000800049d0 <kalloc>:
    800049d0:	fe010113          	addi	sp,sp,-32
    800049d4:	00813823          	sd	s0,16(sp)
    800049d8:	00913423          	sd	s1,8(sp)
    800049dc:	00113c23          	sd	ra,24(sp)
    800049e0:	02010413          	addi	s0,sp,32
    800049e4:	00003797          	auipc	a5,0x3
    800049e8:	8ac78793          	addi	a5,a5,-1876 # 80007290 <kmem>
    800049ec:	0007b483          	ld	s1,0(a5)
    800049f0:	02048063          	beqz	s1,80004a10 <kalloc+0x40>
    800049f4:	0004b703          	ld	a4,0(s1)
    800049f8:	00001637          	lui	a2,0x1
    800049fc:	00500593          	li	a1,5
    80004a00:	00048513          	mv	a0,s1
    80004a04:	00e7b023          	sd	a4,0(a5)
    80004a08:	00000097          	auipc	ra,0x0
    80004a0c:	400080e7          	jalr	1024(ra) # 80004e08 <__memset>
    80004a10:	01813083          	ld	ra,24(sp)
    80004a14:	01013403          	ld	s0,16(sp)
    80004a18:	00048513          	mv	a0,s1
    80004a1c:	00813483          	ld	s1,8(sp)
    80004a20:	02010113          	addi	sp,sp,32
    80004a24:	00008067          	ret

0000000080004a28 <initlock>:
    80004a28:	ff010113          	addi	sp,sp,-16
    80004a2c:	00813423          	sd	s0,8(sp)
    80004a30:	01010413          	addi	s0,sp,16
    80004a34:	00813403          	ld	s0,8(sp)
    80004a38:	00b53423          	sd	a1,8(a0)
    80004a3c:	00052023          	sw	zero,0(a0)
    80004a40:	00053823          	sd	zero,16(a0)
    80004a44:	01010113          	addi	sp,sp,16
    80004a48:	00008067          	ret

0000000080004a4c <acquire>:
    80004a4c:	fe010113          	addi	sp,sp,-32
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	01213023          	sd	s2,0(sp)
    80004a60:	02010413          	addi	s0,sp,32
    80004a64:	00050493          	mv	s1,a0
    80004a68:	10002973          	csrr	s2,sstatus
    80004a6c:	100027f3          	csrr	a5,sstatus
    80004a70:	ffd7f793          	andi	a5,a5,-3
    80004a74:	10079073          	csrw	sstatus,a5
    80004a78:	fffff097          	auipc	ra,0xfffff
    80004a7c:	8e0080e7          	jalr	-1824(ra) # 80003358 <mycpu>
    80004a80:	07852783          	lw	a5,120(a0)
    80004a84:	06078e63          	beqz	a5,80004b00 <acquire+0xb4>
    80004a88:	fffff097          	auipc	ra,0xfffff
    80004a8c:	8d0080e7          	jalr	-1840(ra) # 80003358 <mycpu>
    80004a90:	07852783          	lw	a5,120(a0)
    80004a94:	0004a703          	lw	a4,0(s1)
    80004a98:	0017879b          	addiw	a5,a5,1
    80004a9c:	06f52c23          	sw	a5,120(a0)
    80004aa0:	04071063          	bnez	a4,80004ae0 <acquire+0x94>
    80004aa4:	00100713          	li	a4,1
    80004aa8:	00070793          	mv	a5,a4
    80004aac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004ab0:	0007879b          	sext.w	a5,a5
    80004ab4:	fe079ae3          	bnez	a5,80004aa8 <acquire+0x5c>
    80004ab8:	0ff0000f          	fence
    80004abc:	fffff097          	auipc	ra,0xfffff
    80004ac0:	89c080e7          	jalr	-1892(ra) # 80003358 <mycpu>
    80004ac4:	01813083          	ld	ra,24(sp)
    80004ac8:	01013403          	ld	s0,16(sp)
    80004acc:	00a4b823          	sd	a0,16(s1)
    80004ad0:	00013903          	ld	s2,0(sp)
    80004ad4:	00813483          	ld	s1,8(sp)
    80004ad8:	02010113          	addi	sp,sp,32
    80004adc:	00008067          	ret
    80004ae0:	0104b903          	ld	s2,16(s1)
    80004ae4:	fffff097          	auipc	ra,0xfffff
    80004ae8:	874080e7          	jalr	-1932(ra) # 80003358 <mycpu>
    80004aec:	faa91ce3          	bne	s2,a0,80004aa4 <acquire+0x58>
    80004af0:	00002517          	auipc	a0,0x2
    80004af4:	8c050513          	addi	a0,a0,-1856 # 800063b0 <digits+0x20>
    80004af8:	fffff097          	auipc	ra,0xfffff
    80004afc:	224080e7          	jalr	548(ra) # 80003d1c <panic>
    80004b00:	00195913          	srli	s2,s2,0x1
    80004b04:	fffff097          	auipc	ra,0xfffff
    80004b08:	854080e7          	jalr	-1964(ra) # 80003358 <mycpu>
    80004b0c:	00197913          	andi	s2,s2,1
    80004b10:	07252e23          	sw	s2,124(a0)
    80004b14:	f75ff06f          	j	80004a88 <acquire+0x3c>

0000000080004b18 <release>:
    80004b18:	fe010113          	addi	sp,sp,-32
    80004b1c:	00813823          	sd	s0,16(sp)
    80004b20:	00113c23          	sd	ra,24(sp)
    80004b24:	00913423          	sd	s1,8(sp)
    80004b28:	01213023          	sd	s2,0(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    80004b30:	00052783          	lw	a5,0(a0)
    80004b34:	00079a63          	bnez	a5,80004b48 <release+0x30>
    80004b38:	00002517          	auipc	a0,0x2
    80004b3c:	88050513          	addi	a0,a0,-1920 # 800063b8 <digits+0x28>
    80004b40:	fffff097          	auipc	ra,0xfffff
    80004b44:	1dc080e7          	jalr	476(ra) # 80003d1c <panic>
    80004b48:	01053903          	ld	s2,16(a0)
    80004b4c:	00050493          	mv	s1,a0
    80004b50:	fffff097          	auipc	ra,0xfffff
    80004b54:	808080e7          	jalr	-2040(ra) # 80003358 <mycpu>
    80004b58:	fea910e3          	bne	s2,a0,80004b38 <release+0x20>
    80004b5c:	0004b823          	sd	zero,16(s1)
    80004b60:	0ff0000f          	fence
    80004b64:	0f50000f          	fence	iorw,ow
    80004b68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004b6c:	ffffe097          	auipc	ra,0xffffe
    80004b70:	7ec080e7          	jalr	2028(ra) # 80003358 <mycpu>
    80004b74:	100027f3          	csrr	a5,sstatus
    80004b78:	0027f793          	andi	a5,a5,2
    80004b7c:	04079a63          	bnez	a5,80004bd0 <release+0xb8>
    80004b80:	07852783          	lw	a5,120(a0)
    80004b84:	02f05e63          	blez	a5,80004bc0 <release+0xa8>
    80004b88:	fff7871b          	addiw	a4,a5,-1
    80004b8c:	06e52c23          	sw	a4,120(a0)
    80004b90:	00071c63          	bnez	a4,80004ba8 <release+0x90>
    80004b94:	07c52783          	lw	a5,124(a0)
    80004b98:	00078863          	beqz	a5,80004ba8 <release+0x90>
    80004b9c:	100027f3          	csrr	a5,sstatus
    80004ba0:	0027e793          	ori	a5,a5,2
    80004ba4:	10079073          	csrw	sstatus,a5
    80004ba8:	01813083          	ld	ra,24(sp)
    80004bac:	01013403          	ld	s0,16(sp)
    80004bb0:	00813483          	ld	s1,8(sp)
    80004bb4:	00013903          	ld	s2,0(sp)
    80004bb8:	02010113          	addi	sp,sp,32
    80004bbc:	00008067          	ret
    80004bc0:	00002517          	auipc	a0,0x2
    80004bc4:	81850513          	addi	a0,a0,-2024 # 800063d8 <digits+0x48>
    80004bc8:	fffff097          	auipc	ra,0xfffff
    80004bcc:	154080e7          	jalr	340(ra) # 80003d1c <panic>
    80004bd0:	00001517          	auipc	a0,0x1
    80004bd4:	7f050513          	addi	a0,a0,2032 # 800063c0 <digits+0x30>
    80004bd8:	fffff097          	auipc	ra,0xfffff
    80004bdc:	144080e7          	jalr	324(ra) # 80003d1c <panic>

0000000080004be0 <holding>:
    80004be0:	00052783          	lw	a5,0(a0)
    80004be4:	00079663          	bnez	a5,80004bf0 <holding+0x10>
    80004be8:	00000513          	li	a0,0
    80004bec:	00008067          	ret
    80004bf0:	fe010113          	addi	sp,sp,-32
    80004bf4:	00813823          	sd	s0,16(sp)
    80004bf8:	00913423          	sd	s1,8(sp)
    80004bfc:	00113c23          	sd	ra,24(sp)
    80004c00:	02010413          	addi	s0,sp,32
    80004c04:	01053483          	ld	s1,16(a0)
    80004c08:	ffffe097          	auipc	ra,0xffffe
    80004c0c:	750080e7          	jalr	1872(ra) # 80003358 <mycpu>
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	40a48533          	sub	a0,s1,a0
    80004c1c:	00153513          	seqz	a0,a0
    80004c20:	00813483          	ld	s1,8(sp)
    80004c24:	02010113          	addi	sp,sp,32
    80004c28:	00008067          	ret

0000000080004c2c <push_off>:
    80004c2c:	fe010113          	addi	sp,sp,-32
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	00913423          	sd	s1,8(sp)
    80004c3c:	02010413          	addi	s0,sp,32
    80004c40:	100024f3          	csrr	s1,sstatus
    80004c44:	100027f3          	csrr	a5,sstatus
    80004c48:	ffd7f793          	andi	a5,a5,-3
    80004c4c:	10079073          	csrw	sstatus,a5
    80004c50:	ffffe097          	auipc	ra,0xffffe
    80004c54:	708080e7          	jalr	1800(ra) # 80003358 <mycpu>
    80004c58:	07852783          	lw	a5,120(a0)
    80004c5c:	02078663          	beqz	a5,80004c88 <push_off+0x5c>
    80004c60:	ffffe097          	auipc	ra,0xffffe
    80004c64:	6f8080e7          	jalr	1784(ra) # 80003358 <mycpu>
    80004c68:	07852783          	lw	a5,120(a0)
    80004c6c:	01813083          	ld	ra,24(sp)
    80004c70:	01013403          	ld	s0,16(sp)
    80004c74:	0017879b          	addiw	a5,a5,1
    80004c78:	06f52c23          	sw	a5,120(a0)
    80004c7c:	00813483          	ld	s1,8(sp)
    80004c80:	02010113          	addi	sp,sp,32
    80004c84:	00008067          	ret
    80004c88:	0014d493          	srli	s1,s1,0x1
    80004c8c:	ffffe097          	auipc	ra,0xffffe
    80004c90:	6cc080e7          	jalr	1740(ra) # 80003358 <mycpu>
    80004c94:	0014f493          	andi	s1,s1,1
    80004c98:	06952e23          	sw	s1,124(a0)
    80004c9c:	fc5ff06f          	j	80004c60 <push_off+0x34>

0000000080004ca0 <pop_off>:
    80004ca0:	ff010113          	addi	sp,sp,-16
    80004ca4:	00813023          	sd	s0,0(sp)
    80004ca8:	00113423          	sd	ra,8(sp)
    80004cac:	01010413          	addi	s0,sp,16
    80004cb0:	ffffe097          	auipc	ra,0xffffe
    80004cb4:	6a8080e7          	jalr	1704(ra) # 80003358 <mycpu>
    80004cb8:	100027f3          	csrr	a5,sstatus
    80004cbc:	0027f793          	andi	a5,a5,2
    80004cc0:	04079663          	bnez	a5,80004d0c <pop_off+0x6c>
    80004cc4:	07852783          	lw	a5,120(a0)
    80004cc8:	02f05a63          	blez	a5,80004cfc <pop_off+0x5c>
    80004ccc:	fff7871b          	addiw	a4,a5,-1
    80004cd0:	06e52c23          	sw	a4,120(a0)
    80004cd4:	00071c63          	bnez	a4,80004cec <pop_off+0x4c>
    80004cd8:	07c52783          	lw	a5,124(a0)
    80004cdc:	00078863          	beqz	a5,80004cec <pop_off+0x4c>
    80004ce0:	100027f3          	csrr	a5,sstatus
    80004ce4:	0027e793          	ori	a5,a5,2
    80004ce8:	10079073          	csrw	sstatus,a5
    80004cec:	00813083          	ld	ra,8(sp)
    80004cf0:	00013403          	ld	s0,0(sp)
    80004cf4:	01010113          	addi	sp,sp,16
    80004cf8:	00008067          	ret
    80004cfc:	00001517          	auipc	a0,0x1
    80004d00:	6dc50513          	addi	a0,a0,1756 # 800063d8 <digits+0x48>
    80004d04:	fffff097          	auipc	ra,0xfffff
    80004d08:	018080e7          	jalr	24(ra) # 80003d1c <panic>
    80004d0c:	00001517          	auipc	a0,0x1
    80004d10:	6b450513          	addi	a0,a0,1716 # 800063c0 <digits+0x30>
    80004d14:	fffff097          	auipc	ra,0xfffff
    80004d18:	008080e7          	jalr	8(ra) # 80003d1c <panic>

0000000080004d1c <push_on>:
    80004d1c:	fe010113          	addi	sp,sp,-32
    80004d20:	00813823          	sd	s0,16(sp)
    80004d24:	00113c23          	sd	ra,24(sp)
    80004d28:	00913423          	sd	s1,8(sp)
    80004d2c:	02010413          	addi	s0,sp,32
    80004d30:	100024f3          	csrr	s1,sstatus
    80004d34:	100027f3          	csrr	a5,sstatus
    80004d38:	0027e793          	ori	a5,a5,2
    80004d3c:	10079073          	csrw	sstatus,a5
    80004d40:	ffffe097          	auipc	ra,0xffffe
    80004d44:	618080e7          	jalr	1560(ra) # 80003358 <mycpu>
    80004d48:	07852783          	lw	a5,120(a0)
    80004d4c:	02078663          	beqz	a5,80004d78 <push_on+0x5c>
    80004d50:	ffffe097          	auipc	ra,0xffffe
    80004d54:	608080e7          	jalr	1544(ra) # 80003358 <mycpu>
    80004d58:	07852783          	lw	a5,120(a0)
    80004d5c:	01813083          	ld	ra,24(sp)
    80004d60:	01013403          	ld	s0,16(sp)
    80004d64:	0017879b          	addiw	a5,a5,1
    80004d68:	06f52c23          	sw	a5,120(a0)
    80004d6c:	00813483          	ld	s1,8(sp)
    80004d70:	02010113          	addi	sp,sp,32
    80004d74:	00008067          	ret
    80004d78:	0014d493          	srli	s1,s1,0x1
    80004d7c:	ffffe097          	auipc	ra,0xffffe
    80004d80:	5dc080e7          	jalr	1500(ra) # 80003358 <mycpu>
    80004d84:	0014f493          	andi	s1,s1,1
    80004d88:	06952e23          	sw	s1,124(a0)
    80004d8c:	fc5ff06f          	j	80004d50 <push_on+0x34>

0000000080004d90 <pop_on>:
    80004d90:	ff010113          	addi	sp,sp,-16
    80004d94:	00813023          	sd	s0,0(sp)
    80004d98:	00113423          	sd	ra,8(sp)
    80004d9c:	01010413          	addi	s0,sp,16
    80004da0:	ffffe097          	auipc	ra,0xffffe
    80004da4:	5b8080e7          	jalr	1464(ra) # 80003358 <mycpu>
    80004da8:	100027f3          	csrr	a5,sstatus
    80004dac:	0027f793          	andi	a5,a5,2
    80004db0:	04078463          	beqz	a5,80004df8 <pop_on+0x68>
    80004db4:	07852783          	lw	a5,120(a0)
    80004db8:	02f05863          	blez	a5,80004de8 <pop_on+0x58>
    80004dbc:	fff7879b          	addiw	a5,a5,-1
    80004dc0:	06f52c23          	sw	a5,120(a0)
    80004dc4:	07853783          	ld	a5,120(a0)
    80004dc8:	00079863          	bnez	a5,80004dd8 <pop_on+0x48>
    80004dcc:	100027f3          	csrr	a5,sstatus
    80004dd0:	ffd7f793          	andi	a5,a5,-3
    80004dd4:	10079073          	csrw	sstatus,a5
    80004dd8:	00813083          	ld	ra,8(sp)
    80004ddc:	00013403          	ld	s0,0(sp)
    80004de0:	01010113          	addi	sp,sp,16
    80004de4:	00008067          	ret
    80004de8:	00001517          	auipc	a0,0x1
    80004dec:	61850513          	addi	a0,a0,1560 # 80006400 <digits+0x70>
    80004df0:	fffff097          	auipc	ra,0xfffff
    80004df4:	f2c080e7          	jalr	-212(ra) # 80003d1c <panic>
    80004df8:	00001517          	auipc	a0,0x1
    80004dfc:	5e850513          	addi	a0,a0,1512 # 800063e0 <digits+0x50>
    80004e00:	fffff097          	auipc	ra,0xfffff
    80004e04:	f1c080e7          	jalr	-228(ra) # 80003d1c <panic>

0000000080004e08 <__memset>:
    80004e08:	ff010113          	addi	sp,sp,-16
    80004e0c:	00813423          	sd	s0,8(sp)
    80004e10:	01010413          	addi	s0,sp,16
    80004e14:	1a060e63          	beqz	a2,80004fd0 <__memset+0x1c8>
    80004e18:	40a007b3          	neg	a5,a0
    80004e1c:	0077f793          	andi	a5,a5,7
    80004e20:	00778693          	addi	a3,a5,7
    80004e24:	00b00813          	li	a6,11
    80004e28:	0ff5f593          	andi	a1,a1,255
    80004e2c:	fff6071b          	addiw	a4,a2,-1
    80004e30:	1b06e663          	bltu	a3,a6,80004fdc <__memset+0x1d4>
    80004e34:	1cd76463          	bltu	a4,a3,80004ffc <__memset+0x1f4>
    80004e38:	1a078e63          	beqz	a5,80004ff4 <__memset+0x1ec>
    80004e3c:	00b50023          	sb	a1,0(a0)
    80004e40:	00100713          	li	a4,1
    80004e44:	1ae78463          	beq	a5,a4,80004fec <__memset+0x1e4>
    80004e48:	00b500a3          	sb	a1,1(a0)
    80004e4c:	00200713          	li	a4,2
    80004e50:	1ae78a63          	beq	a5,a4,80005004 <__memset+0x1fc>
    80004e54:	00b50123          	sb	a1,2(a0)
    80004e58:	00300713          	li	a4,3
    80004e5c:	18e78463          	beq	a5,a4,80004fe4 <__memset+0x1dc>
    80004e60:	00b501a3          	sb	a1,3(a0)
    80004e64:	00400713          	li	a4,4
    80004e68:	1ae78263          	beq	a5,a4,8000500c <__memset+0x204>
    80004e6c:	00b50223          	sb	a1,4(a0)
    80004e70:	00500713          	li	a4,5
    80004e74:	1ae78063          	beq	a5,a4,80005014 <__memset+0x20c>
    80004e78:	00b502a3          	sb	a1,5(a0)
    80004e7c:	00700713          	li	a4,7
    80004e80:	18e79e63          	bne	a5,a4,8000501c <__memset+0x214>
    80004e84:	00b50323          	sb	a1,6(a0)
    80004e88:	00700e93          	li	t4,7
    80004e8c:	00859713          	slli	a4,a1,0x8
    80004e90:	00e5e733          	or	a4,a1,a4
    80004e94:	01059e13          	slli	t3,a1,0x10
    80004e98:	01c76e33          	or	t3,a4,t3
    80004e9c:	01859313          	slli	t1,a1,0x18
    80004ea0:	006e6333          	or	t1,t3,t1
    80004ea4:	02059893          	slli	a7,a1,0x20
    80004ea8:	40f60e3b          	subw	t3,a2,a5
    80004eac:	011368b3          	or	a7,t1,a7
    80004eb0:	02859813          	slli	a6,a1,0x28
    80004eb4:	0108e833          	or	a6,a7,a6
    80004eb8:	03059693          	slli	a3,a1,0x30
    80004ebc:	003e589b          	srliw	a7,t3,0x3
    80004ec0:	00d866b3          	or	a3,a6,a3
    80004ec4:	03859713          	slli	a4,a1,0x38
    80004ec8:	00389813          	slli	a6,a7,0x3
    80004ecc:	00f507b3          	add	a5,a0,a5
    80004ed0:	00e6e733          	or	a4,a3,a4
    80004ed4:	000e089b          	sext.w	a7,t3
    80004ed8:	00f806b3          	add	a3,a6,a5
    80004edc:	00e7b023          	sd	a4,0(a5)
    80004ee0:	00878793          	addi	a5,a5,8
    80004ee4:	fed79ce3          	bne	a5,a3,80004edc <__memset+0xd4>
    80004ee8:	ff8e7793          	andi	a5,t3,-8
    80004eec:	0007871b          	sext.w	a4,a5
    80004ef0:	01d787bb          	addw	a5,a5,t4
    80004ef4:	0ce88e63          	beq	a7,a4,80004fd0 <__memset+0x1c8>
    80004ef8:	00f50733          	add	a4,a0,a5
    80004efc:	00b70023          	sb	a1,0(a4)
    80004f00:	0017871b          	addiw	a4,a5,1
    80004f04:	0cc77663          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f08:	00e50733          	add	a4,a0,a4
    80004f0c:	00b70023          	sb	a1,0(a4)
    80004f10:	0027871b          	addiw	a4,a5,2
    80004f14:	0ac77e63          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f18:	00e50733          	add	a4,a0,a4
    80004f1c:	00b70023          	sb	a1,0(a4)
    80004f20:	0037871b          	addiw	a4,a5,3
    80004f24:	0ac77663          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f28:	00e50733          	add	a4,a0,a4
    80004f2c:	00b70023          	sb	a1,0(a4)
    80004f30:	0047871b          	addiw	a4,a5,4
    80004f34:	08c77e63          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f38:	00e50733          	add	a4,a0,a4
    80004f3c:	00b70023          	sb	a1,0(a4)
    80004f40:	0057871b          	addiw	a4,a5,5
    80004f44:	08c77663          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f48:	00e50733          	add	a4,a0,a4
    80004f4c:	00b70023          	sb	a1,0(a4)
    80004f50:	0067871b          	addiw	a4,a5,6
    80004f54:	06c77e63          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f58:	00e50733          	add	a4,a0,a4
    80004f5c:	00b70023          	sb	a1,0(a4)
    80004f60:	0077871b          	addiw	a4,a5,7
    80004f64:	06c77663          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f68:	00e50733          	add	a4,a0,a4
    80004f6c:	00b70023          	sb	a1,0(a4)
    80004f70:	0087871b          	addiw	a4,a5,8
    80004f74:	04c77e63          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f78:	00e50733          	add	a4,a0,a4
    80004f7c:	00b70023          	sb	a1,0(a4)
    80004f80:	0097871b          	addiw	a4,a5,9
    80004f84:	04c77663          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f88:	00e50733          	add	a4,a0,a4
    80004f8c:	00b70023          	sb	a1,0(a4)
    80004f90:	00a7871b          	addiw	a4,a5,10
    80004f94:	02c77e63          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004f98:	00e50733          	add	a4,a0,a4
    80004f9c:	00b70023          	sb	a1,0(a4)
    80004fa0:	00b7871b          	addiw	a4,a5,11
    80004fa4:	02c77663          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004fa8:	00e50733          	add	a4,a0,a4
    80004fac:	00b70023          	sb	a1,0(a4)
    80004fb0:	00c7871b          	addiw	a4,a5,12
    80004fb4:	00c77e63          	bgeu	a4,a2,80004fd0 <__memset+0x1c8>
    80004fb8:	00e50733          	add	a4,a0,a4
    80004fbc:	00b70023          	sb	a1,0(a4)
    80004fc0:	00d7879b          	addiw	a5,a5,13
    80004fc4:	00c7f663          	bgeu	a5,a2,80004fd0 <__memset+0x1c8>
    80004fc8:	00f507b3          	add	a5,a0,a5
    80004fcc:	00b78023          	sb	a1,0(a5)
    80004fd0:	00813403          	ld	s0,8(sp)
    80004fd4:	01010113          	addi	sp,sp,16
    80004fd8:	00008067          	ret
    80004fdc:	00b00693          	li	a3,11
    80004fe0:	e55ff06f          	j	80004e34 <__memset+0x2c>
    80004fe4:	00300e93          	li	t4,3
    80004fe8:	ea5ff06f          	j	80004e8c <__memset+0x84>
    80004fec:	00100e93          	li	t4,1
    80004ff0:	e9dff06f          	j	80004e8c <__memset+0x84>
    80004ff4:	00000e93          	li	t4,0
    80004ff8:	e95ff06f          	j	80004e8c <__memset+0x84>
    80004ffc:	00000793          	li	a5,0
    80005000:	ef9ff06f          	j	80004ef8 <__memset+0xf0>
    80005004:	00200e93          	li	t4,2
    80005008:	e85ff06f          	j	80004e8c <__memset+0x84>
    8000500c:	00400e93          	li	t4,4
    80005010:	e7dff06f          	j	80004e8c <__memset+0x84>
    80005014:	00500e93          	li	t4,5
    80005018:	e75ff06f          	j	80004e8c <__memset+0x84>
    8000501c:	00600e93          	li	t4,6
    80005020:	e6dff06f          	j	80004e8c <__memset+0x84>

0000000080005024 <__memmove>:
    80005024:	ff010113          	addi	sp,sp,-16
    80005028:	00813423          	sd	s0,8(sp)
    8000502c:	01010413          	addi	s0,sp,16
    80005030:	0e060863          	beqz	a2,80005120 <__memmove+0xfc>
    80005034:	fff6069b          	addiw	a3,a2,-1
    80005038:	0006881b          	sext.w	a6,a3
    8000503c:	0ea5e863          	bltu	a1,a0,8000512c <__memmove+0x108>
    80005040:	00758713          	addi	a4,a1,7
    80005044:	00a5e7b3          	or	a5,a1,a0
    80005048:	40a70733          	sub	a4,a4,a0
    8000504c:	0077f793          	andi	a5,a5,7
    80005050:	00f73713          	sltiu	a4,a4,15
    80005054:	00174713          	xori	a4,a4,1
    80005058:	0017b793          	seqz	a5,a5
    8000505c:	00e7f7b3          	and	a5,a5,a4
    80005060:	10078863          	beqz	a5,80005170 <__memmove+0x14c>
    80005064:	00900793          	li	a5,9
    80005068:	1107f463          	bgeu	a5,a6,80005170 <__memmove+0x14c>
    8000506c:	0036581b          	srliw	a6,a2,0x3
    80005070:	fff8081b          	addiw	a6,a6,-1
    80005074:	02081813          	slli	a6,a6,0x20
    80005078:	01d85893          	srli	a7,a6,0x1d
    8000507c:	00858813          	addi	a6,a1,8
    80005080:	00058793          	mv	a5,a1
    80005084:	00050713          	mv	a4,a0
    80005088:	01088833          	add	a6,a7,a6
    8000508c:	0007b883          	ld	a7,0(a5)
    80005090:	00878793          	addi	a5,a5,8
    80005094:	00870713          	addi	a4,a4,8
    80005098:	ff173c23          	sd	a7,-8(a4)
    8000509c:	ff0798e3          	bne	a5,a6,8000508c <__memmove+0x68>
    800050a0:	ff867713          	andi	a4,a2,-8
    800050a4:	02071793          	slli	a5,a4,0x20
    800050a8:	0207d793          	srli	a5,a5,0x20
    800050ac:	00f585b3          	add	a1,a1,a5
    800050b0:	40e686bb          	subw	a3,a3,a4
    800050b4:	00f507b3          	add	a5,a0,a5
    800050b8:	06e60463          	beq	a2,a4,80005120 <__memmove+0xfc>
    800050bc:	0005c703          	lbu	a4,0(a1)
    800050c0:	00e78023          	sb	a4,0(a5)
    800050c4:	04068e63          	beqz	a3,80005120 <__memmove+0xfc>
    800050c8:	0015c603          	lbu	a2,1(a1)
    800050cc:	00100713          	li	a4,1
    800050d0:	00c780a3          	sb	a2,1(a5)
    800050d4:	04e68663          	beq	a3,a4,80005120 <__memmove+0xfc>
    800050d8:	0025c603          	lbu	a2,2(a1)
    800050dc:	00200713          	li	a4,2
    800050e0:	00c78123          	sb	a2,2(a5)
    800050e4:	02e68e63          	beq	a3,a4,80005120 <__memmove+0xfc>
    800050e8:	0035c603          	lbu	a2,3(a1)
    800050ec:	00300713          	li	a4,3
    800050f0:	00c781a3          	sb	a2,3(a5)
    800050f4:	02e68663          	beq	a3,a4,80005120 <__memmove+0xfc>
    800050f8:	0045c603          	lbu	a2,4(a1)
    800050fc:	00400713          	li	a4,4
    80005100:	00c78223          	sb	a2,4(a5)
    80005104:	00e68e63          	beq	a3,a4,80005120 <__memmove+0xfc>
    80005108:	0055c603          	lbu	a2,5(a1)
    8000510c:	00500713          	li	a4,5
    80005110:	00c782a3          	sb	a2,5(a5)
    80005114:	00e68663          	beq	a3,a4,80005120 <__memmove+0xfc>
    80005118:	0065c703          	lbu	a4,6(a1)
    8000511c:	00e78323          	sb	a4,6(a5)
    80005120:	00813403          	ld	s0,8(sp)
    80005124:	01010113          	addi	sp,sp,16
    80005128:	00008067          	ret
    8000512c:	02061713          	slli	a4,a2,0x20
    80005130:	02075713          	srli	a4,a4,0x20
    80005134:	00e587b3          	add	a5,a1,a4
    80005138:	f0f574e3          	bgeu	a0,a5,80005040 <__memmove+0x1c>
    8000513c:	02069613          	slli	a2,a3,0x20
    80005140:	02065613          	srli	a2,a2,0x20
    80005144:	fff64613          	not	a2,a2
    80005148:	00e50733          	add	a4,a0,a4
    8000514c:	00c78633          	add	a2,a5,a2
    80005150:	fff7c683          	lbu	a3,-1(a5)
    80005154:	fff78793          	addi	a5,a5,-1
    80005158:	fff70713          	addi	a4,a4,-1
    8000515c:	00d70023          	sb	a3,0(a4)
    80005160:	fec798e3          	bne	a5,a2,80005150 <__memmove+0x12c>
    80005164:	00813403          	ld	s0,8(sp)
    80005168:	01010113          	addi	sp,sp,16
    8000516c:	00008067          	ret
    80005170:	02069713          	slli	a4,a3,0x20
    80005174:	02075713          	srli	a4,a4,0x20
    80005178:	00170713          	addi	a4,a4,1
    8000517c:	00e50733          	add	a4,a0,a4
    80005180:	00050793          	mv	a5,a0
    80005184:	0005c683          	lbu	a3,0(a1)
    80005188:	00178793          	addi	a5,a5,1
    8000518c:	00158593          	addi	a1,a1,1
    80005190:	fed78fa3          	sb	a3,-1(a5)
    80005194:	fee798e3          	bne	a5,a4,80005184 <__memmove+0x160>
    80005198:	f89ff06f          	j	80005120 <__memmove+0xfc>

000000008000519c <__putc>:
    8000519c:	fe010113          	addi	sp,sp,-32
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00113c23          	sd	ra,24(sp)
    800051a8:	02010413          	addi	s0,sp,32
    800051ac:	00050793          	mv	a5,a0
    800051b0:	fef40593          	addi	a1,s0,-17
    800051b4:	00100613          	li	a2,1
    800051b8:	00000513          	li	a0,0
    800051bc:	fef407a3          	sb	a5,-17(s0)
    800051c0:	fffff097          	auipc	ra,0xfffff
    800051c4:	b3c080e7          	jalr	-1220(ra) # 80003cfc <console_write>
    800051c8:	01813083          	ld	ra,24(sp)
    800051cc:	01013403          	ld	s0,16(sp)
    800051d0:	02010113          	addi	sp,sp,32
    800051d4:	00008067          	ret

00000000800051d8 <__getc>:
    800051d8:	fe010113          	addi	sp,sp,-32
    800051dc:	00813823          	sd	s0,16(sp)
    800051e0:	00113c23          	sd	ra,24(sp)
    800051e4:	02010413          	addi	s0,sp,32
    800051e8:	fe840593          	addi	a1,s0,-24
    800051ec:	00100613          	li	a2,1
    800051f0:	00000513          	li	a0,0
    800051f4:	fffff097          	auipc	ra,0xfffff
    800051f8:	ae8080e7          	jalr	-1304(ra) # 80003cdc <console_read>
    800051fc:	fe844503          	lbu	a0,-24(s0)
    80005200:	01813083          	ld	ra,24(sp)
    80005204:	01013403          	ld	s0,16(sp)
    80005208:	02010113          	addi	sp,sp,32
    8000520c:	00008067          	ret

0000000080005210 <console_handler>:
    80005210:	fe010113          	addi	sp,sp,-32
    80005214:	00813823          	sd	s0,16(sp)
    80005218:	00113c23          	sd	ra,24(sp)
    8000521c:	00913423          	sd	s1,8(sp)
    80005220:	02010413          	addi	s0,sp,32
    80005224:	14202773          	csrr	a4,scause
    80005228:	100027f3          	csrr	a5,sstatus
    8000522c:	0027f793          	andi	a5,a5,2
    80005230:	06079e63          	bnez	a5,800052ac <console_handler+0x9c>
    80005234:	00074c63          	bltz	a4,8000524c <console_handler+0x3c>
    80005238:	01813083          	ld	ra,24(sp)
    8000523c:	01013403          	ld	s0,16(sp)
    80005240:	00813483          	ld	s1,8(sp)
    80005244:	02010113          	addi	sp,sp,32
    80005248:	00008067          	ret
    8000524c:	0ff77713          	andi	a4,a4,255
    80005250:	00900793          	li	a5,9
    80005254:	fef712e3          	bne	a4,a5,80005238 <console_handler+0x28>
    80005258:	ffffe097          	auipc	ra,0xffffe
    8000525c:	6dc080e7          	jalr	1756(ra) # 80003934 <plic_claim>
    80005260:	00a00793          	li	a5,10
    80005264:	00050493          	mv	s1,a0
    80005268:	02f50c63          	beq	a0,a5,800052a0 <console_handler+0x90>
    8000526c:	fc0506e3          	beqz	a0,80005238 <console_handler+0x28>
    80005270:	00050593          	mv	a1,a0
    80005274:	00001517          	auipc	a0,0x1
    80005278:	09450513          	addi	a0,a0,148 # 80006308 <_ZZ14__print_uint64mE6digits+0x218>
    8000527c:	fffff097          	auipc	ra,0xfffff
    80005280:	afc080e7          	jalr	-1284(ra) # 80003d78 <__printf>
    80005284:	01013403          	ld	s0,16(sp)
    80005288:	01813083          	ld	ra,24(sp)
    8000528c:	00048513          	mv	a0,s1
    80005290:	00813483          	ld	s1,8(sp)
    80005294:	02010113          	addi	sp,sp,32
    80005298:	ffffe317          	auipc	t1,0xffffe
    8000529c:	6d430067          	jr	1748(t1) # 8000396c <plic_complete>
    800052a0:	fffff097          	auipc	ra,0xfffff
    800052a4:	3e0080e7          	jalr	992(ra) # 80004680 <uartintr>
    800052a8:	fddff06f          	j	80005284 <console_handler+0x74>
    800052ac:	00001517          	auipc	a0,0x1
    800052b0:	15c50513          	addi	a0,a0,348 # 80006408 <digits+0x78>
    800052b4:	fffff097          	auipc	ra,0xfffff
    800052b8:	a68080e7          	jalr	-1432(ra) # 80003d1c <panic>
	...
