
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	40813103          	ld	sp,1032(sp) # 80007408 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6a4030ef          	jal	ra,800036c0 <start>

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
    ret
    80001038:	00008067          	ret

000000008000103c <thread_create_deactivated>:

.global thread_create_deactivated
thread_create_deactivated:
    addi a7, zero, 0x14
    8000103c:	01400893          	li	a7,20
    ecall
    80001040:	00000073          	ecall
    ret
    80001044:	00008067          	ret

0000000080001048 <sem_open>:

.global sem_open
sem_open:
    addi a7, zero, 0x21
    80001048:	02100893          	li	a7,33
    ecall
    8000104c:	00000073          	ecall
    ret
    80001050:	00008067          	ret

0000000080001054 <sem_close>:

.global sem_close
sem_close:
    addi a7, zero, 0x22
    80001054:	02200893          	li	a7,34
    ecall
    80001058:	00000073          	ecall
    ret
    8000105c:	00008067          	ret

0000000080001060 <sem_wait>:

.global sem_wait
sem_wait:
    addi a7, zero, 0x23
    80001060:	02300893          	li	a7,35
    ecall
    80001064:	00000073          	ecall
    ret
    80001068:	00008067          	ret

000000008000106c <sem_signal>:

.global sem_signal
sem_signal:
    addi a7, zero, 0x24
    8000106c:	02400893          	li	a7,36
    ecall
    80001070:	00000073          	ecall
    ret
    80001074:	00008067          	ret

0000000080001078 <time_sleep>:

.global time_sleep
time_sleep:
    addi a7, zero, 0x31
    80001078:	03100893          	li	a7,49
    ecall
    8000107c:	00000073          	ecall
    ret
    80001080:	00008067          	ret

0000000080001084 <getc>:

.global getc
getc:
    addi a7, zero, 0x41
    80001084:	04100893          	li	a7,65
    ecall
    80001088:	00000073          	ecall
    ret
    8000108c:	00008067          	ret

0000000080001090 <putc>:

.global putc
putc:
    addi a7, zero, 0x42
    80001090:	04200893          	li	a7,66
    ecall
    80001094:	00000073          	ecall
    80001098:	00008067          	ret

000000008000109c <_ZN5RiscV13pushRegistersEv>:
.global _ZN5RiscV13pushRegistersEv
.type _ZN5RiscV13pushRegistersEv, @function

_ZN5RiscV13pushRegistersEv:
    addi sp, sp, -256
    8000109c:	f0010113          	addi	sp,sp,-256
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8 (sp)
    .endr
    800010a0:	00313c23          	sd	gp,24(sp)
    800010a4:	02413023          	sd	tp,32(sp)
    800010a8:	02513423          	sd	t0,40(sp)
    800010ac:	02613823          	sd	t1,48(sp)
    800010b0:	02713c23          	sd	t2,56(sp)
    800010b4:	04813023          	sd	s0,64(sp)
    800010b8:	04913423          	sd	s1,72(sp)
    800010bc:	04a13823          	sd	a0,80(sp)
    800010c0:	04b13c23          	sd	a1,88(sp)
    800010c4:	06c13023          	sd	a2,96(sp)
    800010c8:	06d13423          	sd	a3,104(sp)
    800010cc:	06e13823          	sd	a4,112(sp)
    800010d0:	06f13c23          	sd	a5,120(sp)
    800010d4:	09013023          	sd	a6,128(sp)
    800010d8:	09113423          	sd	a7,136(sp)
    800010dc:	09213823          	sd	s2,144(sp)
    800010e0:	09313c23          	sd	s3,152(sp)
    800010e4:	0b413023          	sd	s4,160(sp)
    800010e8:	0b513423          	sd	s5,168(sp)
    800010ec:	0b613823          	sd	s6,176(sp)
    800010f0:	0b713c23          	sd	s7,184(sp)
    800010f4:	0d813023          	sd	s8,192(sp)
    800010f8:	0d913423          	sd	s9,200(sp)
    800010fc:	0da13823          	sd	s10,208(sp)
    80001100:	0db13c23          	sd	s11,216(sp)
    80001104:	0fc13023          	sd	t3,224(sp)
    80001108:	0fd13423          	sd	t4,232(sp)
    8000110c:	0fe13823          	sd	t5,240(sp)
    80001110:	0ff13c23          	sd	t6,248(sp)
    ret
    80001114:	00008067          	ret

0000000080001118 <_ZN5RiscV12popRegistersEv>:
.type _ZN5RiscV12popRegistersEv, @function

_ZN5RiscV12popRegistersEv:
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8 (sp)
    .endr
    80001118:	01813183          	ld	gp,24(sp)
    8000111c:	02013203          	ld	tp,32(sp)
    80001120:	02813283          	ld	t0,40(sp)
    80001124:	03013303          	ld	t1,48(sp)
    80001128:	03813383          	ld	t2,56(sp)
    8000112c:	04013403          	ld	s0,64(sp)
    80001130:	04813483          	ld	s1,72(sp)
    80001134:	05013503          	ld	a0,80(sp)
    80001138:	05813583          	ld	a1,88(sp)
    8000113c:	06013603          	ld	a2,96(sp)
    80001140:	06813683          	ld	a3,104(sp)
    80001144:	07013703          	ld	a4,112(sp)
    80001148:	07813783          	ld	a5,120(sp)
    8000114c:	08013803          	ld	a6,128(sp)
    80001150:	08813883          	ld	a7,136(sp)
    80001154:	09013903          	ld	s2,144(sp)
    80001158:	09813983          	ld	s3,152(sp)
    8000115c:	0a013a03          	ld	s4,160(sp)
    80001160:	0a813a83          	ld	s5,168(sp)
    80001164:	0b013b03          	ld	s6,176(sp)
    80001168:	0b813b83          	ld	s7,184(sp)
    8000116c:	0c013c03          	ld	s8,192(sp)
    80001170:	0c813c83          	ld	s9,200(sp)
    80001174:	0d013d03          	ld	s10,208(sp)
    80001178:	0d813d83          	ld	s11,216(sp)
    8000117c:	0e013e03          	ld	t3,224(sp)
    80001180:	0e813e83          	ld	t4,232(sp)
    80001184:	0f013f03          	ld	t5,240(sp)
    80001188:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000118c:	10010113          	addi	sp,sp,256
    80001190:	00008067          	ret
	...

00000000800011a0 <_ZN6Kernel14supervisorTrapEv>:

.align 4
.global _ZN6Kernel14supervisorTrapEv
.type _ZN6Kernel14supervisorTrapEv, @function
_ZN6Kernel14supervisorTrapEv:
    addi sp, sp, -256
    800011a0:	f0010113          	addi	sp,sp,-256
    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8(sp)
    .endr
    800011a4:	00013023          	sd	zero,0(sp)
    800011a8:	00113423          	sd	ra,8(sp)
    800011ac:	00213823          	sd	sp,16(sp)
    800011b0:	00313c23          	sd	gp,24(sp)
    800011b4:	02413023          	sd	tp,32(sp)
    800011b8:	02513423          	sd	t0,40(sp)
    800011bc:	02613823          	sd	t1,48(sp)
    800011c0:	02713c23          	sd	t2,56(sp)
    800011c4:	04813023          	sd	s0,64(sp)
    800011c8:	04913423          	sd	s1,72(sp)
    800011cc:	04a13823          	sd	a0,80(sp)
    800011d0:	04b13c23          	sd	a1,88(sp)
    800011d4:	06c13023          	sd	a2,96(sp)
    800011d8:	06d13423          	sd	a3,104(sp)
    800011dc:	06e13823          	sd	a4,112(sp)
    800011e0:	06f13c23          	sd	a5,120(sp)
    800011e4:	09013023          	sd	a6,128(sp)
    800011e8:	09113423          	sd	a7,136(sp)
    800011ec:	09213823          	sd	s2,144(sp)
    800011f0:	09313c23          	sd	s3,152(sp)
    800011f4:	0b413023          	sd	s4,160(sp)
    800011f8:	0b513423          	sd	s5,168(sp)
    800011fc:	0b613823          	sd	s6,176(sp)
    80001200:	0b713c23          	sd	s7,184(sp)
    80001204:	0d813023          	sd	s8,192(sp)
    80001208:	0d913423          	sd	s9,200(sp)
    8000120c:	0da13823          	sd	s10,208(sp)
    80001210:	0db13c23          	sd	s11,216(sp)
    80001214:	0fc13023          	sd	t3,224(sp)
    80001218:	0fd13423          	sd	t4,232(sp)
    8000121c:	0fe13823          	sd	t5,240(sp)
    80001220:	0ff13c23          	sd	t6,248(sp)

    call _ZN6Kernel21supervisorTrapHandlerEv
    80001224:	340000ef          	jal	ra,80001564 <_ZN6Kernel21supervisorTrapHandlerEv>



    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8(sp)
    .endr
    80001228:	00013003          	ld	zero,0(sp)
    8000122c:	00813083          	ld	ra,8(sp)
    80001230:	01013103          	ld	sp,16(sp)
    80001234:	01813183          	ld	gp,24(sp)
    80001238:	02013203          	ld	tp,32(sp)
    8000123c:	02813283          	ld	t0,40(sp)
    80001240:	03013303          	ld	t1,48(sp)
    80001244:	03813383          	ld	t2,56(sp)
    80001248:	04013403          	ld	s0,64(sp)
    8000124c:	04813483          	ld	s1,72(sp)
    80001250:	05013503          	ld	a0,80(sp)
    80001254:	05813583          	ld	a1,88(sp)
    80001258:	06013603          	ld	a2,96(sp)
    8000125c:	06813683          	ld	a3,104(sp)
    80001260:	07013703          	ld	a4,112(sp)
    80001264:	07813783          	ld	a5,120(sp)
    80001268:	08013803          	ld	a6,128(sp)
    8000126c:	08813883          	ld	a7,136(sp)
    80001270:	09013903          	ld	s2,144(sp)
    80001274:	09813983          	ld	s3,152(sp)
    80001278:	0a013a03          	ld	s4,160(sp)
    8000127c:	0a813a83          	ld	s5,168(sp)
    80001280:	0b013b03          	ld	s6,176(sp)
    80001284:	0b813b83          	ld	s7,184(sp)
    80001288:	0c013c03          	ld	s8,192(sp)
    8000128c:	0c813c83          	ld	s9,200(sp)
    80001290:	0d013d03          	ld	s10,208(sp)
    80001294:	0d813d83          	ld	s11,216(sp)
    80001298:	0e013e03          	ld	t3,224(sp)
    8000129c:	0e813e83          	ld	t4,232(sp)
    800012a0:	0f013f03          	ld	t5,240(sp)
    800012a4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800012a8:	10010113          	addi	sp,sp,256

    sret
    800012ac:	10200073          	sret

00000000800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    800012b0:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800012b4:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    800012b8:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    800012bc:	0085b103          	ld	sp,8(a1)

    800012c0:	00008067          	ret

00000000800012c4 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800012c4:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800012c8:	00b29a63          	bne	t0,a1,800012dc <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800012cc:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800012d0:	fe029ae3          	bnez	t0,800012c4 <copy_and_swap>
    li a0, 0               # Set return to success.
    800012d4:	00000513          	li	a0,0
    jr ra                  # Return.
    800012d8:	00008067          	ret

00000000800012dc <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800012dc:	00100513          	li	a0,1
    800012e0:	00008067          	ret

00000000800012e4 <_ZN6Kernel10initKernelEv>:
#include "../h/riscv.hpp"
#include "../h/console_interface.hpp"

extern void userMain();

void Kernel::initKernel() {
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00113423          	sd	ra,8(sp)
    800012ec:	00813023          	sd	s0,0(sp)
    800012f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMem();
    800012f4:	00001097          	auipc	ra,0x1
    800012f8:	b7c080e7          	jalr	-1156(ra) # 80001e70 <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    800012fc:	00006797          	auipc	a5,0x6
    80001300:	1147b783          	ld	a5,276(a5) # 80007410 <_GLOBAL_OFFSET_TABLE_+0x28>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    80001304:	10579073          	csrw	stvec,a5
    //RiscV::setSstatus(RiscV::SIE);
}
    80001308:	00813083          	ld	ra,8(sp)
    8000130c:	00013403          	ld	s0,0(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_ZN6Kernel15syscall_handlerEv>:
    //console_handler();*/
    RiscV::writeSepc(sepc);
    return;
}

void Kernel::syscall_handler() {
    80001318:	f5010113          	addi	sp,sp,-176
    8000131c:	0a113423          	sd	ra,168(sp)
    80001320:	0a813023          	sd	s0,160(sp)
    80001324:	08913c23          	sd	s1,152(sp)
    80001328:	0b010413          	addi	s0,sp,176
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));
    8000132c:	00088793          	mv	a5,a7
    80001330:	fcf43c23          	sd	a5,-40(s0)

    //volatile uint64 arg0, arg1, arg2, temp;
    switch(syscall_id) {
    80001334:	fd843783          	ld	a5,-40(s0)
    80001338:	04200713          	li	a4,66
    8000133c:	20f76863          	bltu	a4,a5,8000154c <_ZN6Kernel15syscall_handlerEv+0x234>
    80001340:	00279793          	slli	a5,a5,0x2
    80001344:	00005717          	auipc	a4,0x5
    80001348:	d2c70713          	addi	a4,a4,-724 # 80006070 <CONSOLE_STATUS+0x60>
    8000134c:	00e787b3          	add	a5,a5,a4
    80001350:	0007a783          	lw	a5,0(a5)
    80001354:	00e787b3          	add	a5,a5,a4
    80001358:	00078067          	jr	a5


//0x01
inline void Kernel::mem_alloc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000135c:	00050793          	mv	a5,a0
    80001360:	f4f43c23          	sd	a5,-168(s0)
    MemoryAllocator::allocate((size_t)arg0);
    80001364:	f5843503          	ld	a0,-168(s0)
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	ca8080e7          	jalr	-856(ra) # 80002010 <_ZN15MemoryAllocator8allocateEm>
            asm volatile ("addi a0, zero, -1");
            __print_string("Error: Invalid syscall id!");
            break;
    }
    //RiscV::writeSepc(sepc);
}
    80001370:	0a813083          	ld	ra,168(sp)
    80001374:	0a013403          	ld	s0,160(sp)
    80001378:	09813483          	ld	s1,152(sp)
    8000137c:	0b010113          	addi	sp,sp,176
    80001380:	00008067          	ret


//0x02
inline void Kernel::mem_free_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001384:	00050793          	mv	a5,a0
    80001388:	f6f43023          	sd	a5,-160(s0)
    MemoryAllocator::free((void*)arg0);
    8000138c:	f6043503          	ld	a0,-160(s0)
    80001390:	00001097          	auipc	ra,0x1
    80001394:	d0c080e7          	jalr	-756(ra) # 8000209c <_ZN15MemoryAllocator4freeEPv>
}
    80001398:	fd9ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x11
inline void Kernel::thread_create_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000139c:	00050793          	mv	a5,a0
    800013a0:	f8f43823          	sd	a5,-112(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    800013a4:	00058793          	mv	a5,a1
    800013a8:	f8f43c23          	sd	a5,-104(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    800013ac:	00060793          	mv	a5,a2
    800013b0:	faf43023          	sd	a5,-96(s0)

    *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);
    800013b4:	f9843503          	ld	a0,-104(s0)
    800013b8:	fa043583          	ld	a1,-96(s0)
    800013bc:	f9043483          	ld	s1,-112(s0)
    800013c0:	00000097          	auipc	ra,0x0
    800013c4:	504080e7          	jalr	1284(ra) # 800018c4 <_ZN3TCB9createTCBEPFvPvES0_>
    800013c8:	00a4b023          	sd	a0,0(s1)

    asm volatile("mv a0, zero");
    800013cc:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    800013d0:	f9043783          	ld	a5,-112(s0)
    800013d4:	0007b783          	ld	a5,0(a5)
    800013d8:	f8079ce3          	bnez	a5,80001370 <_ZN6Kernel15syscall_handlerEv+0x58>
    800013dc:	fff50513          	addi	a0,a0,-1
}
    800013e0:	f91ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>



//0x12
inline void Kernel::thread_exit_handler() {
    TCB::running->setFinished(true);
    800013e4:	00006797          	auipc	a5,0x6
    800013e8:	0347b783          	ld	a5,52(a5) # 80007418 <_GLOBAL_OFFSET_TABLE_+0x30>
    800013ec:	0007b783          	ld	a5,0(a5)

    static TCB* createDeactivatedTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    800013f0:	00100713          	li	a4,1
    800013f4:	00e78c23          	sb	a4,24(a5)
    asm volatile ("addi a0, zero, 0");
    800013f8:	00000513          	li	a0,0
    //TCB::yield();
    TCB::dispatch();
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	5e0080e7          	jalr	1504(ra) # 800019dc <_ZN3TCB8dispatchEv>
}
    80001404:	f6dff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	5d4080e7          	jalr	1492(ra) # 800019dc <_ZN3TCB8dispatchEv>
}
    80001410:	f61ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x14
inline void Kernel::thread_create_deactivated_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001414:	00050793          	mv	a5,a0
    80001418:	faf43423          	sd	a5,-88(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    8000141c:	00058793          	mv	a5,a1
    80001420:	faf43823          	sd	a5,-80(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    80001424:	00060793          	mv	a5,a2
    80001428:	faf43c23          	sd	a5,-72(s0)

    *(TCB**)arg0 = TCB::createDeactivatedTCB((TCB::Body)arg1, (void*)arg2);
    8000142c:	fb043503          	ld	a0,-80(s0)
    80001430:	fb843583          	ld	a1,-72(s0)
    80001434:	fa843483          	ld	s1,-88(s0)
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	518080e7          	jalr	1304(ra) # 80001950 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
    80001440:	00a4b023          	sd	a0,0(s1)

    asm volatile("mv a0, zero");
    80001444:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    80001448:	fa843783          	ld	a5,-88(s0)
    8000144c:	0007b783          	ld	a5,0(a5)
    80001450:	f20790e3          	bnez	a5,80001370 <_ZN6Kernel15syscall_handlerEv+0x58>
    80001454:	fff50513          	addi	a0,a0,-1
}
    80001458:	f19ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x021
inline void Kernel::sem_open_handler() {
    volatile uint64 arg0, arg1;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000145c:	00050793          	mv	a5,a0
    80001460:	fcf43023          	sd	a5,-64(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001464:	00058793          	mv	a5,a1
    80001468:	fcf43423          	sd	a5,-56(s0)

    *(Sem**)arg0 = Sem::createSem((unsigned)arg1);
    8000146c:	fc843503          	ld	a0,-56(s0)
    80001470:	fc043483          	ld	s1,-64(s0)
    80001474:	0005051b          	sext.w	a0,a0
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	ce8080e7          	jalr	-792(ra) # 80002160 <_ZN3Sem9createSemEj>
    80001480:	00a4b023          	sd	a0,0(s1)

    asm volatile("mv a0, zero");
    80001484:	00000513          	li	a0,0
    if (!(*(Sem**)arg0)) asm volatile("addi a0, a0, -1");
    80001488:	fc043783          	ld	a5,-64(s0)
    8000148c:	0007b783          	ld	a5,0(a5)
    80001490:	ee0790e3          	bnez	a5,80001370 <_ZN6Kernel15syscall_handlerEv+0x58>
    80001494:	fff50513          	addi	a0,a0,-1
}
    80001498:	ed9ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x22
inline void Kernel::sem_close_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000149c:	00050793          	mv	a5,a0
    800014a0:	fcf43823          	sd	a5,-48(s0)
    delete *(Sem**)arg0;
    800014a4:	fd043783          	ld	a5,-48(s0)
    800014a8:	0007b483          	ld	s1,0(a5)
    800014ac:	00048e63          	beqz	s1,800014c8 <_ZN6Kernel15syscall_handlerEv+0x1b0>
    800014b0:	00048513          	mv	a0,s1
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	cfc080e7          	jalr	-772(ra) # 800021b0 <_ZN3SemD1Ev>
    800014bc:	00048513          	mv	a0,s1
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	5dc080e7          	jalr	1500(ra) # 80001a9c <_ZdlPv>

    asm volatile("mv a0, zero");
    800014c8:	00000513          	li	a0,0
}
    800014cc:	ea5ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x23
inline void Kernel::sem_wait_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800014d0:	00050793          	mv	a5,a0
    800014d4:	f6f43423          	sd	a5,-152(s0)
    ((Sem*)arg0)->semWait();
    800014d8:	f6843503          	ld	a0,-152(s0)
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	d5c080e7          	jalr	-676(ra) # 80002238 <_ZN3Sem7semWaitEv>

    //asm volatile("mv a0, zero");
}
    800014e4:	e8dff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x24
inline void Kernel::sem_signal_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800014e8:	00050793          	mv	a5,a0
    800014ec:	f6f43823          	sd	a5,-144(s0)
    ((Sem*)arg0)->semSignal();
    800014f0:	f7043503          	ld	a0,-144(s0)
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	de0080e7          	jalr	-544(ra) # 800022d4 <_ZN3Sem9semSignalEv>
}
    800014fc:	e75ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x31
inline void Kernel::time_sleep_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001500:	00050793          	mv	a5,a0
    80001504:	f6f43c23          	sd	a5,-136(s0)
    Scheduler::timeSleep((time_t)arg0);
    80001508:	f7843503          	ld	a0,-136(s0)
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	02c080e7          	jalr	44(ra) # 80002538 <_ZN9Scheduler9timeSleepEm>
}
    80001514:	e5dff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x41
inline void Kernel::getc_handler() {
    volatile uint64 arg0;
    arg0 = __getc();
    80001518:	00004097          	auipc	ra,0x4
    8000151c:	2a0080e7          	jalr	672(ra) # 800057b8 <__getc>
    80001520:	f8a43023          	sd	a0,-128(s0)
    asm volatile ("mv a0, %[arg0]":: [arg0] "r"(arg0));
    80001524:	f8043783          	ld	a5,-128(s0)
    80001528:	00078513          	mv	a0,a5
}
    8000152c:	e45ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x42
inline void Kernel::putc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001530:	00050793          	mv	a5,a0
    80001534:	f8f43423          	sd	a5,-120(s0)
    __putc(arg0);
    80001538:	f8843503          	ld	a0,-120(s0)
    8000153c:	0ff57513          	andi	a0,a0,255
    80001540:	00004097          	auipc	ra,0x4
    80001544:	23c080e7          	jalr	572(ra) # 8000577c <__putc>
}
    80001548:	e29ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>
            asm volatile ("addi a0, zero, -1");
    8000154c:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    80001550:	00005517          	auipc	a0,0x5
    80001554:	ad050513          	addi	a0,a0,-1328 # 80006020 <CONSOLE_STATUS+0x10>
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	114080e7          	jalr	276(ra) # 8000266c <_Z14__print_stringPKc>
}
    80001560:	e11ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>

0000000080001564 <_ZN6Kernel21supervisorTrapHandlerEv>:
void Kernel::supervisorTrapHandler() {
    80001564:	fb010113          	addi	sp,sp,-80
    80001568:	04113423          	sd	ra,72(sp)
    8000156c:	04813023          	sd	s0,64(sp)
    80001570:	02913c23          	sd	s1,56(sp)
    80001574:	03213823          	sd	s2,48(sp)
    80001578:	05010413          	addi	s0,sp,80
    asm volatile("csrr %[scause], scause": [scause] "=r" (scause));
    8000157c:	142027f3          	csrr	a5,scause
    80001580:	faf43823          	sd	a5,-80(s0)
    return scause;
    80001584:	fb043483          	ld	s1,-80(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001588:	ff848713          	addi	a4,s1,-8
    8000158c:	00100793          	li	a5,1
    80001590:	0ae7f663          	bgeu	a5,a4,8000163c <_ZN6Kernel21supervisorTrapHandlerEv+0xd8>
    if (scause == 0x8000000000000001UL) {
    80001594:	fff00793          	li	a5,-1
    80001598:	03f79793          	slli	a5,a5,0x3f
    8000159c:	00178793          	addi	a5,a5,1
    800015a0:	0cf48863          	beq	s1,a5,80001670 <_ZN6Kernel21supervisorTrapHandlerEv+0x10c>
    if (scause == 0x8000000000000009UL) {
    800015a4:	fff00793          	li	a5,-1
    800015a8:	03f79793          	slli	a5,a5,0x3f
    800015ac:	00978793          	addi	a5,a5,9
    800015b0:	14f48863          	beq	s1,a5,80001700 <_ZN6Kernel21supervisorTrapHandlerEv+0x19c>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800015b4:	141027f3          	csrr	a5,sepc
    800015b8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800015bc:	fd843903          	ld	s2,-40(s0)
    __print_string("Neobradjen izuzetak.\n");
    800015c0:	00005517          	auipc	a0,0x5
    800015c4:	a8050513          	addi	a0,a0,-1408 # 80006040 <CONSOLE_STATUS+0x30>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	0a4080e7          	jalr	164(ra) # 8000266c <_Z14__print_stringPKc>
    __print_string("scause: ");
    800015d0:	00005517          	auipc	a0,0x5
    800015d4:	a8850513          	addi	a0,a0,-1400 # 80006058 <CONSOLE_STATUS+0x48>
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	094080e7          	jalr	148(ra) # 8000266c <_Z14__print_stringPKc>
    __print_uint64(scause);
    800015e0:	00048513          	mv	a0,s1
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	0cc080e7          	jalr	204(ra) # 800026b0 <_Z14__print_uint64m>
    __putc('\n');
    800015ec:	00a00513          	li	a0,10
    800015f0:	00004097          	auipc	ra,0x4
    800015f4:	18c080e7          	jalr	396(ra) # 8000577c <__putc>
    __print_string("sepc: ");
    800015f8:	00005517          	auipc	a0,0x5
    800015fc:	a7050513          	addi	a0,a0,-1424 # 80006068 <CONSOLE_STATUS+0x58>
    80001600:	00001097          	auipc	ra,0x1
    80001604:	06c080e7          	jalr	108(ra) # 8000266c <_Z14__print_stringPKc>
    __print_uint64(sepc);
    80001608:	00090513          	mv	a0,s2
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	0a4080e7          	jalr	164(ra) # 800026b0 <_Z14__print_uint64m>
    __putc('\n');
    80001614:	00a00513          	li	a0,10
    80001618:	00004097          	auipc	ra,0x4
    8000161c:	164080e7          	jalr	356(ra) # 8000577c <__putc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001620:	14191073          	csrw	sepc,s2
}
    80001624:	04813083          	ld	ra,72(sp)
    80001628:	04013403          	ld	s0,64(sp)
    8000162c:	03813483          	ld	s1,56(sp)
    80001630:	03013903          	ld	s2,48(sp)
    80001634:	05010113          	addi	sp,sp,80
    80001638:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000163c:	141027f3          	csrr	a5,sepc
    80001640:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001644:	fc043483          	ld	s1,-64(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    80001648:	00448493          	addi	s1,s1,4
    asm volatile("csrc sstatus, %[mask]":: [mask] "r" (mask));
}

inline uint64 RiscV::readSstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    8000164c:	100027f3          	csrr	a5,sstatus
    80001650:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001654:	fb843903          	ld	s2,-72(s0)
        syscall_handler();
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	cc0080e7          	jalr	-832(ra) # 80001318 <_ZN6Kernel15syscall_handlerEv>
        asm volatile ("sd a0, 80(s0)");
    80001660:	04a43823          	sd	a0,80(s0)
}

inline void RiscV::writeSstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001664:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001668:	14149073          	csrw	sepc,s1
        return;
    8000166c:	fb9ff06f          	j	80001624 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    80001670:	00006797          	auipc	a5,0x6
    80001674:	da87b783          	ld	a5,-600(a5) # 80007418 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001678:	0007b783          	ld	a5,0(a5)
    8000167c:	04078063          	beqz	a5,800016bc <_ZN6Kernel21supervisorTrapHandlerEv+0x158>
        Scheduler::timerInterrupt();
    80001680:	00001097          	auipc	ra,0x1
    80001684:	df8080e7          	jalr	-520(ra) # 80002478 <_ZN9Scheduler14timerInterruptEv>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    80001688:	00006717          	auipc	a4,0x6
    8000168c:	d7873703          	ld	a4,-648(a4) # 80007400 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001690:	00073783          	ld	a5,0(a4)
    80001694:	00178793          	addi	a5,a5,1
    80001698:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    8000169c:	00006717          	auipc	a4,0x6
    800016a0:	d7c73703          	ld	a4,-644(a4) # 80007418 <_GLOBAL_OFFSET_TABLE_+0x30>
    800016a4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800016a8:	02073703          	ld	a4,32(a4)
    800016ac:	00e7fe63          	bgeu	a5,a4,800016c8 <_ZN6Kernel21supervisorTrapHandlerEv+0x164>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    800016b0:	00200793          	li	a5,2
    800016b4:	1447b073          	csrc	sip,a5
        return;
    800016b8:	f6dff06f          	j	80001624 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>
    800016bc:	00200793          	li	a5,2
    800016c0:	1447b073          	csrc	sip,a5
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    800016c4:	f61ff06f          	j	80001624 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800016c8:	141027f3          	csrr	a5,sepc
    800016cc:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    800016d0:	fd043483          	ld	s1,-48(s0)
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    800016d4:	100027f3          	csrr	a5,sstatus
    800016d8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800016dc:	fc843903          	ld	s2,-56(s0)
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }
    800016e0:	00006797          	auipc	a5,0x6
    800016e4:	d207b783          	ld	a5,-736(a5) # 80007400 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016e8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	2f0080e7          	jalr	752(ra) # 800019dc <_ZN3TCB8dispatchEv>
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    800016f4:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800016f8:	14149073          	csrw	sepc,s1
}
    800016fc:	fb5ff06f          	j	800016b0 <_ZN6Kernel21supervisorTrapHandlerEv+0x14c>
        console_handler();
    80001700:	00004097          	auipc	ra,0x4
    80001704:	0f0080e7          	jalr	240(ra) # 800057f0 <console_handler>
        return;
    80001708:	f1dff06f          	j	80001624 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>

000000008000170c <main>:
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    8000170c:	fe010113          	addi	sp,sp,-32
    80001710:	00113c23          	sd	ra,24(sp)
    80001714:	00813823          	sd	s0,16(sp)
    80001718:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	bc8080e7          	jalr	-1080(ra) # 800012e4 <_ZN6Kernel10initKernelEv>





    TCB* threads[2] = {nullptr, nullptr};
    80001724:	fe043023          	sd	zero,-32(s0)
    80001728:	fe043423          	sd	zero,-24(s0)
    thread_create(&threads[0], nullptr, nullptr);
    8000172c:	00000613          	li	a2,0
    80001730:	00000593          	li	a1,0
    80001734:	fe040513          	addi	a0,s0,-32
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	8e0080e7          	jalr	-1824(ra) # 80001018 <thread_create>
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001740:	00200793          	li	a5,2
    80001744:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(RiscV::SIE);
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))&userMain, nullptr);
    80001748:	00000613          	li	a2,0
    8000174c:	00006597          	auipc	a1,0x6
    80001750:	ca45b583          	ld	a1,-860(a1) # 800073f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001754:	fe840513          	addi	a0,s0,-24
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	8c0080e7          	jalr	-1856(ra) # 80001018 <thread_create>
    //thread_create(&threads[2], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];
    80001760:	fe043703          	ld	a4,-32(s0)
    80001764:	00006797          	auipc	a5,0x6
    80001768:	cb47b783          	ld	a5,-844(a5) # 80007418 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000176c:	00e7b023          	sd	a4,0(a5)

    //thread_dispatch();
    __print_string("hey!\n");
    80001770:	00005517          	auipc	a0,0x5
    80001774:	a1050513          	addi	a0,a0,-1520 # 80006180 <CONSOLE_STATUS+0x170>
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	ef4080e7          	jalr	-268(ra) # 8000266c <_Z14__print_stringPKc>
    while(!threads[1]->isFinished()) { /*__print_string("hello\n");*/thread_dispatch(); }
    80001780:	fe843783          	ld	a5,-24(s0)
    bool isFinished() const { return finished; }
    80001784:	0187c783          	lbu	a5,24(a5)
    80001788:	00079863          	bnez	a5,80001798 <main+0x8c>
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	8a4080e7          	jalr	-1884(ra) # 80001030 <thread_dispatch>
    80001794:	fedff06f          	j	80001780 <main+0x74>

    __print_string("Finished\n");
    80001798:	00005517          	auipc	a0,0x5
    8000179c:	9f050513          	addi	a0,a0,-1552 # 80006188 <CONSOLE_STATUS+0x178>
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	ecc080e7          	jalr	-308(ra) # 8000266c <_Z14__print_stringPKc>

    //thread_exit();


    800017a8:	01813083          	ld	ra,24(sp)
    800017ac:	01013403          	ld	s0,16(sp)
    800017b0:	02010113          	addi	sp,sp,32
    800017b4:	00008067          	ret

00000000800017b8 <_ZN3TCB13threadWrapperEv>:
    __print_uint64((uint64)running); __putc('\n');*/

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800017b8:	ff010113          	addi	sp,sp,-16
    800017bc:	00113423          	sd	ra,8(sp)
    800017c0:	00813023          	sd	s0,0(sp)
    800017c4:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	978080e7          	jalr	-1672(ra) # 80002140 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    800017d0:	00006797          	auipc	a5,0x6
    800017d4:	ca07b783          	ld	a5,-864(a5) # 80007470 <_ZN3TCB7runningE>
    800017d8:	0007b703          	ld	a4,0(a5)
    800017dc:	0087b503          	ld	a0,8(a5)
    800017e0:	000700e7          	jalr	a4
    thread_exit();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	840080e7          	jalr	-1984(ra) # 80001024 <thread_exit>
}
    800017ec:	00813083          	ld	ra,8(sp)
    800017f0:	00013403          	ld	s0,0(sp)
    800017f4:	01010113          	addi	sp,sp,16
    800017f8:	00008067          	ret

00000000800017fc <_ZN3TCBC1EPFvPvES0_mb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready)
    800017fc:	fd010113          	addi	sp,sp,-48
    80001800:	02113423          	sd	ra,40(sp)
    80001804:	02813023          	sd	s0,32(sp)
    80001808:	00913c23          	sd	s1,24(sp)
    8000180c:	01213823          	sd	s2,16(sp)
    80001810:	01313423          	sd	s3,8(sp)
    80001814:	01413023          	sd	s4,0(sp)
    80001818:	03010413          	addi	s0,sp,48
    8000181c:	00050493          	mv	s1,a0
    80001820:	00058913          	mv	s2,a1
    80001824:	00068993          	mv	s3,a3
    80001828:	00070a13          	mv	s4,a4
        })
    8000182c:	00b53023          	sd	a1,0(a0)
    80001830:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001834:	06058463          	beqz	a1,8000189c <_ZN3TCBC1EPFvPvES0_mb+0xa0>
    80001838:	00008537          	lui	a0,0x8
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	238080e7          	jalr	568(ra) # 80001a74 <_Znam>
        })
    80001844:	00a4b823          	sd	a0,16(s1)
    80001848:	00048c23          	sb	zero,24(s1)
    8000184c:	00048ca3          	sb	zero,25(s1)
    80001850:	0334b023          	sd	s3,32(s1)
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001854:	04090863          	beqz	s2,800018a4 <_ZN3TCBC1EPFvPvES0_mb+0xa8>
    80001858:	00000797          	auipc	a5,0x0
    8000185c:	f6078793          	addi	a5,a5,-160 # 800017b8 <_ZN3TCB13threadWrapperEv>
        })
    80001860:	02f4b423          	sd	a5,40(s1)
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001864:	04050463          	beqz	a0,800018ac <_ZN3TCBC1EPFvPvES0_mb+0xb0>
    80001868:	000087b7          	lui	a5,0x8
    8000186c:	00f50533          	add	a0,a0,a5
        })
    80001870:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001874:	00090463          	beqz	s2,8000187c <_ZN3TCBC1EPFvPvES0_mb+0x80>
    80001878:	020a1e63          	bnez	s4,800018b4 <_ZN3TCBC1EPFvPvES0_mb+0xb8>
}
    8000187c:	02813083          	ld	ra,40(sp)
    80001880:	02013403          	ld	s0,32(sp)
    80001884:	01813483          	ld	s1,24(sp)
    80001888:	01013903          	ld	s2,16(sp)
    8000188c:	00813983          	ld	s3,8(sp)
    80001890:	00013a03          	ld	s4,0(sp)
    80001894:	03010113          	addi	sp,sp,48
    80001898:	00008067          	ret
stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    8000189c:	00000513          	li	a0,0
    800018a0:	fa5ff06f          	j	80001844 <_ZN3TCBC1EPFvPvES0_mb+0x48>
                body != nullptr ? (uint64) &threadWrapper : 0,
    800018a4:	00000793          	li	a5,0
    800018a8:	fb9ff06f          	j	80001860 <_ZN3TCBC1EPFvPvES0_mb+0x64>
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800018ac:	00000513          	li	a0,0
    800018b0:	fc1ff06f          	j	80001870 <_ZN3TCBC1EPFvPvES0_mb+0x74>
    if (body != nullptr && ready) Scheduler::put(this);
    800018b4:	00048513          	mv	a0,s1
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	b54080e7          	jalr	-1196(ra) # 8000240c <_ZN9Scheduler3putEP3TCB>
}
    800018c0:	fbdff06f          	j	8000187c <_ZN3TCBC1EPFvPvES0_mb+0x80>

00000000800018c4 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    800018c4:	fd010113          	addi	sp,sp,-48
    800018c8:	02113423          	sd	ra,40(sp)
    800018cc:	02813023          	sd	s0,32(sp)
    800018d0:	00913c23          	sd	s1,24(sp)
    800018d4:	01213823          	sd	s2,16(sp)
    800018d8:	01313423          	sd	s3,8(sp)
    800018dc:	03010413          	addi	s0,sp,48
    800018e0:	00050913          	mv	s2,a0
    800018e4:	00058993          	mv	s3,a1
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1);
    800018e8:	03800513          	li	a0,56
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	160080e7          	jalr	352(ra) # 80001a4c <_Znwm>
    800018f4:	00050493          	mv	s1,a0
    800018f8:	00100713          	li	a4,1
    800018fc:	00200693          	li	a3,2
    80001900:	00098613          	mv	a2,s3
    80001904:	00090593          	mv	a1,s2
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	ef4080e7          	jalr	-268(ra) # 800017fc <_ZN3TCBC1EPFvPvES0_mb>
    80001910:	0200006f          	j	80001930 <_ZN3TCB9createTCBEPFvPvES0_+0x6c>
    80001914:	00050913          	mv	s2,a0
    80001918:	00048513          	mv	a0,s1
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	180080e7          	jalr	384(ra) # 80001a9c <_ZdlPv>
    80001924:	00090513          	mv	a0,s2
    80001928:	00007097          	auipc	ra,0x7
    8000192c:	c60080e7          	jalr	-928(ra) # 80008588 <_Unwind_Resume>
}
    80001930:	00048513          	mv	a0,s1
    80001934:	02813083          	ld	ra,40(sp)
    80001938:	02013403          	ld	s0,32(sp)
    8000193c:	01813483          	ld	s1,24(sp)
    80001940:	01013903          	ld	s2,16(sp)
    80001944:	00813983          	ld	s3,8(sp)
    80001948:	03010113          	addi	sp,sp,48
    8000194c:	00008067          	ret

0000000080001950 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    80001950:	fd010113          	addi	sp,sp,-48
    80001954:	02113423          	sd	ra,40(sp)
    80001958:	02813023          	sd	s0,32(sp)
    8000195c:	00913c23          	sd	s1,24(sp)
    80001960:	01213823          	sd	s2,16(sp)
    80001964:	01313423          	sd	s3,8(sp)
    80001968:	03010413          	addi	s0,sp,48
    8000196c:	00050913          	mv	s2,a0
    80001970:	00058993          	mv	s3,a1
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0);
    80001974:	03800513          	li	a0,56
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	0d4080e7          	jalr	212(ra) # 80001a4c <_Znwm>
    80001980:	00050493          	mv	s1,a0
    80001984:	00000713          	li	a4,0
    80001988:	00200693          	li	a3,2
    8000198c:	00098613          	mv	a2,s3
    80001990:	00090593          	mv	a1,s2
    80001994:	00000097          	auipc	ra,0x0
    80001998:	e68080e7          	jalr	-408(ra) # 800017fc <_ZN3TCBC1EPFvPvES0_mb>
    8000199c:	0200006f          	j	800019bc <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x6c>
    800019a0:	00050913          	mv	s2,a0
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	0f4080e7          	jalr	244(ra) # 80001a9c <_ZdlPv>
    800019b0:	00090513          	mv	a0,s2
    800019b4:	00007097          	auipc	ra,0x7
    800019b8:	bd4080e7          	jalr	-1068(ra) # 80008588 <_Unwind_Resume>
}
    800019bc:	00048513          	mv	a0,s1
    800019c0:	02813083          	ld	ra,40(sp)
    800019c4:	02013403          	ld	s0,32(sp)
    800019c8:	01813483          	ld	s1,24(sp)
    800019cc:	01013903          	ld	s2,16(sp)
    800019d0:	00813983          	ld	s3,8(sp)
    800019d4:	03010113          	addi	sp,sp,48
    800019d8:	00008067          	ret

00000000800019dc <_ZN3TCB8dispatchEv>:
{
    800019dc:	fe010113          	addi	sp,sp,-32
    800019e0:	00113c23          	sd	ra,24(sp)
    800019e4:	00813823          	sd	s0,16(sp)
    800019e8:	00913423          	sd	s1,8(sp)
    800019ec:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800019f0:	00006497          	auipc	s1,0x6
    800019f4:	a804b483          	ld	s1,-1408(s1) # 80007470 <_ZN3TCB7runningE>
    800019f8:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800019fc:	00079663          	bnez	a5,80001a08 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80001a00:	0194c783          	lbu	a5,25(s1)
    80001a04:	02078c63          	beqz	a5,80001a3c <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	99c080e7          	jalr	-1636(ra) # 800023a4 <_ZN9Scheduler3getEv>
    80001a10:	00006797          	auipc	a5,0x6
    80001a14:	a6a7b023          	sd	a0,-1440(a5) # 80007470 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a18:	02850593          	addi	a1,a0,40 # 8028 <_entry-0x7fff7fd8>
    80001a1c:	02848513          	addi	a0,s1,40
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	890080e7          	jalr	-1904(ra) # 800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a28:	01813083          	ld	ra,24(sp)
    80001a2c:	01013403          	ld	s0,16(sp)
    80001a30:	00813483          	ld	s1,8(sp)
    80001a34:	02010113          	addi	sp,sp,32
    80001a38:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001a3c:	00048513          	mv	a0,s1
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	9cc080e7          	jalr	-1588(ra) # 8000240c <_ZN9Scheduler3putEP3TCB>
    80001a48:	fc1ff06f          	j	80001a08 <_ZN3TCB8dispatchEv+0x2c>

0000000080001a4c <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00113423          	sd	ra,8(sp)
    80001a54:	00813023          	sd	s0,0(sp)
    80001a58:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a5c:	fffff097          	auipc	ra,0xfffff
    80001a60:	5a4080e7          	jalr	1444(ra) # 80001000 <mem_alloc>
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret

0000000080001a74 <_Znam>:

void* operator new[](size_t size) {
    80001a74:	ff010113          	addi	sp,sp,-16
    80001a78:	00113423          	sd	ra,8(sp)
    80001a7c:	00813023          	sd	s0,0(sp)
    80001a80:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a84:	fffff097          	auipc	ra,0xfffff
    80001a88:	57c080e7          	jalr	1404(ra) # 80001000 <mem_alloc>
}
    80001a8c:	00813083          	ld	ra,8(sp)
    80001a90:	00013403          	ld	s0,0(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_ZdlPv>:

void operator delete(void* ptr) {
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00113423          	sd	ra,8(sp)
    80001aa4:	00813023          	sd	s0,0(sp)
    80001aa8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001aac:	fffff097          	auipc	ra,0xfffff
    80001ab0:	560080e7          	jalr	1376(ra) # 8000100c <mem_free>
}
    80001ab4:	00813083          	ld	ra,8(sp)
    80001ab8:	00013403          	ld	s0,0(sp)
    80001abc:	01010113          	addi	sp,sp,16
    80001ac0:	00008067          	ret

0000000080001ac4 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00113423          	sd	ra,8(sp)
    80001acc:	00813023          	sd	s0,0(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001ad4:	fffff097          	auipc	ra,0xfffff
    80001ad8:	538080e7          	jalr	1336(ra) # 8000100c <mem_free>
}
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_Z16threadRunWrapperPv>:
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    80001aec:	ff010113          	addi	sp,sp,-16
    80001af0:	00113423          	sd	ra,8(sp)
    80001af4:	00813023          	sd	s0,0(sp)
    80001af8:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) thread;
    t->run();
    80001afc:	00053783          	ld	a5,0(a0)
    80001b00:	0107b783          	ld	a5,16(a5)
    80001b04:	000780e7          	jalr	a5
}
    80001b08:	00813083          	ld	ra,8(sp)
    80001b0c:	00013403          	ld	s0,0(sp)
    80001b10:	01010113          	addi	sp,sp,16
    80001b14:	00008067          	ret

0000000080001b18 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00813423          	sd	s0,8(sp)
    80001b20:	01010413          	addi	s0,sp,16
    80001b24:	00813403          	ld	s0,8(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <_ZN6ThreadD0Ev>:
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	f5c080e7          	jalr	-164(ra) # 80001a9c <_ZdlPv>
    80001b48:	00813083          	ld	ra,8(sp)
    80001b4c:	00013403          	ld	s0,0(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00113423          	sd	ra,8(sp)
    80001b60:	00813023          	sd	s0,0(sp)
    80001b64:	01010413          	addi	s0,sp,16
    80001b68:	00006797          	auipc	a5,0x6
    80001b6c:	85878793          	addi	a5,a5,-1960 # 800073c0 <_ZTV9Semaphore+0x10>
    80001b70:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001b74:	00853503          	ld	a0,8(a0)
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	4dc080e7          	jalr	1244(ra) # 80001054 <sem_close>
}
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001b90:	fe010113          	addi	sp,sp,-32
    80001b94:	00113c23          	sd	ra,24(sp)
    80001b98:	00813823          	sd	s0,16(sp)
    80001b9c:	00913423          	sd	s1,8(sp)
    80001ba0:	02010413          	addi	s0,sp,32
    80001ba4:	00050493          	mv	s1,a0
}
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	fb0080e7          	jalr	-80(ra) # 80001b58 <_ZN9SemaphoreD1Ev>
    80001bb0:	00048513          	mv	a0,s1
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	ee8080e7          	jalr	-280(ra) # 80001a9c <_ZdlPv>
    80001bbc:	01813083          	ld	ra,24(sp)
    80001bc0:	01013403          	ld	s0,16(sp)
    80001bc4:	00813483          	ld	s1,8(sp)
    80001bc8:	02010113          	addi	sp,sp,32
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00113423          	sd	ra,8(sp)
    80001bd8:	00813023          	sd	s0,0(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    80001be0:	00005797          	auipc	a5,0x5
    80001be4:	7b878793          	addi	a5,a5,1976 # 80007398 <_ZTV6Thread+0x10>
    80001be8:	00f53023          	sd	a5,0(a0)
    thread_create_deactivated(&myHandle, body, arg);
    80001bec:	00850513          	addi	a0,a0,8
    80001bf0:	fffff097          	auipc	ra,0xfffff
    80001bf4:	44c080e7          	jalr	1100(ra) # 8000103c <thread_create_deactivated>
}
    80001bf8:	00813083          	ld	ra,8(sp)
    80001bfc:	00013403          	ld	s0,0(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN6Thread5startEv>:
int Thread::start() {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,&threadRunWrapper, this);
    80001c18:	00050613          	mv	a2,a0
    80001c1c:	00000597          	auipc	a1,0x0
    80001c20:	ed058593          	addi	a1,a1,-304 # 80001aec <_Z16threadRunWrapperPv>
    80001c24:	00850513          	addi	a0,a0,8
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	3f0080e7          	jalr	1008(ra) # 80001018 <thread_create>
}
    80001c30:	00000513          	li	a0,0
    80001c34:	00813083          	ld	ra,8(sp)
    80001c38:	00013403          	ld	s0,0(sp)
    80001c3c:	01010113          	addi	sp,sp,16
    80001c40:	00008067          	ret

0000000080001c44 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00113423          	sd	ra,8(sp)
    80001c4c:	00813023          	sd	s0,0(sp)
    80001c50:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001c54:	fffff097          	auipc	ra,0xfffff
    80001c58:	3dc080e7          	jalr	988(ra) # 80001030 <thread_dispatch>
}
    80001c5c:	00813083          	ld	ra,8(sp)
    80001c60:	00013403          	ld	s0,0(sp)
    80001c64:	01010113          	addi	sp,sp,16
    80001c68:	00008067          	ret

0000000080001c6c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00113423          	sd	ra,8(sp)
    80001c74:	00813023          	sd	s0,0(sp)
    80001c78:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001c7c:	fffff097          	auipc	ra,0xfffff
    80001c80:	3fc080e7          	jalr	1020(ra) # 80001078 <time_sleep>
}
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_ZN6ThreadC1Ev>:
Thread::Thread() {}
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00813423          	sd	s0,8(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    80001ca0:	00005797          	auipc	a5,0x5
    80001ca4:	6f878793          	addi	a5,a5,1784 # 80007398 <_ZTV6Thread+0x10>
    80001ca8:	00f53023          	sd	a5,0(a0)
    80001cac:	00813403          	ld	s0,8(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00113423          	sd	ra,8(sp)
    80001cc0:	00813023          	sd	s0,0(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    80001cc8:	00005797          	auipc	a5,0x5
    80001ccc:	6f878793          	addi	a5,a5,1784 # 800073c0 <_ZTV9Semaphore+0x10>
    80001cd0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001cd4:	00850513          	addi	a0,a0,8
    80001cd8:	fffff097          	auipc	ra,0xfffff
    80001cdc:	370080e7          	jalr	880(ra) # 80001048 <sem_open>
}
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00113423          	sd	ra,8(sp)
    80001cf8:	00813023          	sd	s0,0(sp)
    80001cfc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001d00:	00853503          	ld	a0,8(a0)
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	35c080e7          	jalr	860(ra) # 80001060 <sem_wait>
}
    80001d0c:	00813083          	ld	ra,8(sp)
    80001d10:	00013403          	ld	s0,0(sp)
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00008067          	ret

0000000080001d1c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00113423          	sd	ra,8(sp)
    80001d24:	00813023          	sd	s0,0(sp)
    80001d28:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001d2c:	00853503          	ld	a0,8(a0)
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	33c080e7          	jalr	828(ra) # 8000106c <sem_signal>
}
    80001d38:	00813083          	ld	ra,8(sp)
    80001d3c:	00013403          	ld	s0,0(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_ZN14PeriodicThreadC1Em>:


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    80001d48:	fe010113          	addi	sp,sp,-32
    80001d4c:	00113c23          	sd	ra,24(sp)
    80001d50:	00813823          	sd	s0,16(sp)
    80001d54:	00913423          	sd	s1,8(sp)
    80001d58:	01213023          	sd	s2,0(sp)
    80001d5c:	02010413          	addi	s0,sp,32
    80001d60:	00050493          	mv	s1,a0
    80001d64:	00058913          	mv	s2,a1
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	f2c080e7          	jalr	-212(ra) # 80001c94 <_ZN6ThreadC1Ev>
    80001d70:	00005797          	auipc	a5,0x5
    80001d74:	5f878793          	addi	a5,a5,1528 # 80007368 <_ZTV14PeriodicThread+0x10>
    80001d78:	00f4b023          	sd	a5,0(s1)
    80001d7c:	0324b423          	sd	s2,40(s1)
    80001d80:	01813083          	ld	ra,24(sp)
    80001d84:	01013403          	ld	s0,16(sp)
    80001d88:	00813483          	ld	s1,8(sp)
    80001d8c:	00013903          	ld	s2,0(sp)
    80001d90:	02010113          	addi	sp,sp,32
    80001d94:	00008067          	ret

0000000080001d98 <_ZN7Console4getcEv>:


//CONSOLE

char Console::getc() {
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00113423          	sd	ra,8(sp)
    80001da0:	00813023          	sd	s0,0(sp)
    80001da4:	01010413          	addi	s0,sp,16
    return __getc();
    80001da8:	00004097          	auipc	ra,0x4
    80001dac:	a10080e7          	jalr	-1520(ra) # 800057b8 <__getc>
}
    80001db0:	00813083          	ld	ra,8(sp)
    80001db4:	00013403          	ld	s0,0(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    __putc(c);
    80001dd0:	00004097          	auipc	ra,0x4
    80001dd4:	9ac080e7          	jalr	-1620(ra) # 8000577c <__putc>
}
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813423          	sd	s0,8(sp)
    80001df0:	01010413          	addi	s0,sp,16
    80001df4:	00813403          	ld	s0,8(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN14PeriodicThread18periodicActivationEv>:
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00813423          	sd	s0,8(sp)
    80001e08:	01010413          	addi	s0,sp,16
    80001e0c:	00813403          	ld	s0,8(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00813423          	sd	s0,8(sp)
    80001e20:	01010413          	addi	s0,sp,16
    80001e24:	00005797          	auipc	a5,0x5
    80001e28:	54478793          	addi	a5,a5,1348 # 80007368 <_ZTV14PeriodicThread+0x10>
    80001e2c:	00f53023          	sd	a5,0(a0)
    80001e30:	00813403          	ld	s0,8(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_ZN14PeriodicThreadD0Ev>:
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    80001e4c:	00005797          	auipc	a5,0x5
    80001e50:	51c78793          	addi	a5,a5,1308 # 80007368 <_ZTV14PeriodicThread+0x10>
    80001e54:	00f53023          	sd	a5,0(a0)
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	c44080e7          	jalr	-956(ra) # 80001a9c <_ZdlPv>
    80001e60:	00813083          	ld	ra,8(sp)
    80001e64:	00013403          	ld	s0,0(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    80001e7c:	00005797          	auipc	a5,0x5
    80001e80:	57c7b783          	ld	a5,1404(a5) # 800073f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e84:	0007b783          	ld	a5,0(a5)
    80001e88:	00005697          	auipc	a3,0x5
    80001e8c:	5f868693          	addi	a3,a3,1528 # 80007480 <_ZN15MemoryAllocator8fMemHeadE>
    80001e90:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    80001e94:	00005717          	auipc	a4,0x5
    80001e98:	58c73703          	ld	a4,1420(a4) # 80007420 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001e9c:	00073703          	ld	a4,0(a4)
    80001ea0:	40f70733          	sub	a4,a4,a5
    80001ea4:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80001ea8:	0006b783          	ld	a5,0(a3)
    80001eac:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    80001eb0:	0007b823          	sd	zero,16(a5)
}
    80001eb4:	00813403          	ld	s0,8(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00813423          	sd	s0,8(sp)
    80001ec8:	01010413          	addi	s0,sp,16
    80001ecc:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    80001ed0:	00005517          	auipc	a0,0x5
    80001ed4:	5b053503          	ld	a0,1456(a0) # 80007480 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80001ed8:	02050063          	beqz	a0,80001ef8 <_ZN15MemoryAllocator8firstFitEm+0x38>
    80001edc:	01053703          	ld	a4,16(a0)
    80001ee0:	00070c63          	beqz	a4,80001ef8 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80001ee4:	00860793          	addi	a5,a2,8
    80001ee8:	00053683          	ld	a3,0(a0)
    80001eec:	00f6fe63          	bgeu	a3,a5,80001f08 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80001ef0:	00070513          	mv	a0,a4
    80001ef4:	fe5ff06f          	j	80001ed8 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001ef8:	00050863          	beqz	a0,80001f08 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001efc:	00860613          	addi	a2,a2,8
    80001f00:	00053783          	ld	a5,0(a0)
    80001f04:	00c7e863          	bltu	a5,a2,80001f14 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001f08:	00813403          	ld	s0,8(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret
    return nullptr;
    80001f14:	00000513          	li	a0,0
    80001f18:	ff1ff06f          	j	80001f08 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001f1c <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001f28:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001f2c:	03f57793          	andi	a5,a0,63
    80001f30:	00078863          	beqz	a5,80001f40 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80001f34:	04000713          	li	a4,64
    80001f38:	40f707b3          	sub	a5,a4,a5
    80001f3c:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001f40:	00813403          	ld	s0,8(sp)
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	00008067          	ret

0000000080001f4c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001f4c:	fe010113          	addi	sp,sp,-32
    80001f50:	00113c23          	sd	ra,24(sp)
    80001f54:	00813823          	sd	s0,16(sp)
    80001f58:	00913423          	sd	s1,8(sp)
    80001f5c:	02010413          	addi	s0,sp,32
    80001f60:	00050493          	mv	s1,a0
    if (node) {
    80001f64:	04050c63          	beqz	a0,80001fbc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80001f68:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	fb0080e7          	jalr	-80(ra) # 80001f1c <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80001f74:	0004b783          	ld	a5,0(s1)
    80001f78:	40a787b3          	sub	a5,a5,a0
    80001f7c:	03f00713          	li	a4,63
    80001f80:	04f77e63          	bgeu	a4,a5,80001fdc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80001f84:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80001f88:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80001f8c:	0084b783          	ld	a5,8(s1)
    80001f90:	04078063          	beqz	a5,80001fd0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80001f94:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80001f98:	0104b783          	ld	a5,16(s1)
    80001f9c:	00078463          	beqz	a5,80001fa4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001fa0:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80001fa4:	0104b783          	ld	a5,16(s1)
    80001fa8:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80001fac:	0084b783          	ld	a5,8(s1)
    80001fb0:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80001fb4:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80001fb8:	00848513          	addi	a0,s1,8
}
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	00813483          	ld	s1,8(sp)
    80001fc8:	02010113          	addi	sp,sp,32
    80001fcc:	00008067          	ret
            else fMemHead = newNode;
    80001fd0:	00005797          	auipc	a5,0x5
    80001fd4:	4ae7b823          	sd	a4,1200(a5) # 80007480 <_ZN15MemoryAllocator8fMemHeadE>
    80001fd8:	fc1ff06f          	j	80001f98 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80001fdc:	0084b783          	ld	a5,8(s1)
    80001fe0:	02078063          	beqz	a5,80002000 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80001fe4:	0104b703          	ld	a4,16(s1)
    80001fe8:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001fec:	0104b783          	ld	a5,16(s1)
    80001ff0:	fc0782e3          	beqz	a5,80001fb4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80001ff4:	0084b703          	ld	a4,8(s1)
    80001ff8:	00e7b423          	sd	a4,8(a5)
    80001ffc:	fb9ff06f          	j	80001fb4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    80002000:	0104b783          	ld	a5,16(s1)
    80002004:	00005717          	auipc	a4,0x5
    80002008:	46f73e23          	sd	a5,1148(a4) # 80007480 <_ZN15MemoryAllocator8fMemHeadE>
    8000200c:	fe1ff06f          	j	80001fec <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080002010 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80002010:	fe010113          	addi	sp,sp,-32
    80002014:	00113c23          	sd	ra,24(sp)
    80002018:	00813823          	sd	s0,16(sp)
    8000201c:	00913423          	sd	s1,8(sp)
    80002020:	02010413          	addi	s0,sp,32
    80002024:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	e98080e7          	jalr	-360(ra) # 80001ec0 <_ZN15MemoryAllocator8firstFitEm>
    80002030:	00048593          	mv	a1,s1
    80002034:	00000097          	auipc	ra,0x0
    80002038:	f18080e7          	jalr	-232(ra) # 80001f4c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    8000203c:	01813083          	ld	ra,24(sp)
    80002040:	01013403          	ld	s0,16(sp)
    80002044:	00813483          	ld	s1,8(sp)
    80002048:	02010113          	addi	sp,sp,32
    8000204c:	00008067          	ret

0000000080002050 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80002050:	ff010113          	addi	sp,sp,-16
    80002054:	00813423          	sd	s0,8(sp)
    80002058:	01010413          	addi	s0,sp,16
    if(!node) return;
    8000205c:	02050a63          	beqz	a0,80002090 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    80002060:	01053783          	ld	a5,16(a0)
    80002064:	02078663          	beqz	a5,80002090 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80002068:	00053703          	ld	a4,0(a0)
    8000206c:	00e506b3          	add	a3,a0,a4
    80002070:	02f69063          	bne	a3,a5,80002090 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    80002074:	0007b683          	ld	a3,0(a5)
    80002078:	00d70733          	add	a4,a4,a3
    8000207c:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80002080:	0107b783          	ld	a5,16(a5)
    80002084:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80002088:	00078463          	beqz	a5,80002090 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    8000208c:	00a7b423          	sd	a0,8(a5)
}
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    8000209c:	fe010113          	addi	sp,sp,-32
    800020a0:	00113c23          	sd	ra,24(sp)
    800020a4:	00813823          	sd	s0,16(sp)
    800020a8:	00913423          	sd	s1,8(sp)
    800020ac:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    800020b0:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    800020b4:	00005717          	auipc	a4,0x5
    800020b8:	3cc73703          	ld	a4,972(a4) # 80007480 <_ZN15MemoryAllocator8fMemHeadE>
    800020bc:	02070063          	beqz	a4,800020dc <_ZN15MemoryAllocator4freeEPv+0x40>
    800020c0:	02a77263          	bgeu	a4,a0,800020e4 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    800020c4:	00070793          	mv	a5,a4
    800020c8:	00078493          	mv	s1,a5
    800020cc:	0107b783          	ld	a5,16(a5)
    800020d0:	00078c63          	beqz	a5,800020e8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800020d4:	fea7eae3          	bltu	a5,a0,800020c8 <_ZN15MemoryAllocator4freeEPv+0x2c>
    800020d8:	0100006f          	j	800020e8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    800020dc:	00070493          	mv	s1,a4
    800020e0:	0080006f          	j	800020e8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800020e4:	00000493          	li	s1,0
    newNode->prev = curr;
    800020e8:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    800020ec:	04048263          	beqz	s1,80002130 <_ZN15MemoryAllocator4freeEPv+0x94>
    800020f0:	0104b783          	ld	a5,16(s1)
    800020f4:	00f53823          	sd	a5,16(a0)
    800020f8:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    800020fc:	01053783          	ld	a5,16(a0)
    80002100:	00078463          	beqz	a5,80002108 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80002104:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	f48080e7          	jalr	-184(ra) # 80002050 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80002110:	00048513          	mv	a0,s1
    80002114:	00000097          	auipc	ra,0x0
    80002118:	f3c080e7          	jalr	-196(ra) # 80002050 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    8000211c:	01813083          	ld	ra,24(sp)
    80002120:	01013403          	ld	s0,16(sp)
    80002124:	00813483          	ld	s1,8(sp)
    80002128:	02010113          	addi	sp,sp,32
    8000212c:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80002130:	00e53823          	sd	a4,16(a0)
    80002134:	00005797          	auipc	a5,0x5
    80002138:	34a7b623          	sd	a0,844(a5) # 80007480 <_ZN15MemoryAllocator8fMemHeadE>
    8000213c:	fc1ff06f          	j	800020fc <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080002140 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000214c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002150:	10200073          	sret
    80002154:	00813403          	ld	s0,8(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret

0000000080002160 <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    80002160:	fe010113          	addi	sp,sp,-32
    80002164:	00113c23          	sd	ra,24(sp)
    80002168:	00813823          	sd	s0,16(sp)
    8000216c:	00913423          	sd	s1,8(sp)
    80002170:	02010413          	addi	s0,sp,32
    80002174:	00050493          	mv	s1,a0
    return new Sem(init);
    80002178:	02000513          	li	a0,32
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	8d0080e7          	jalr	-1840(ra) # 80001a4c <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80002184:	00053023          	sd	zero,0(a0)
    80002188:	00053423          	sd	zero,8(a0)
    int semWait();

    int semSignal();

private:
    Sem(unsigned init) : init(init), val(init) {}
    8000218c:	00952823          	sw	s1,16(a0)
    80002190:	02049493          	slli	s1,s1,0x20
    80002194:	0204d493          	srli	s1,s1,0x20
    80002198:	00953c23          	sd	s1,24(a0)
}
    8000219c:	01813083          	ld	ra,24(sp)
    800021a0:	01013403          	ld	s0,16(sp)
    800021a4:	00813483          	ld	s1,8(sp)
    800021a8:	02010113          	addi	sp,sp,32
    800021ac:	00008067          	ret

00000000800021b0 <_ZN3SemD1Ev>:

Sem::~Sem() {
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	01213023          	sd	s2,0(sp)
    800021c4:	02010413          	addi	s0,sp,32
    800021c8:	00050493          	mv	s1,a0
    800021cc:	0280006f          	j	800021f4 <_ZN3SemD1Ev+0x44>
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
    800021d0:	0004b423          	sd	zero,8(s1)
        delete old;
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	8c8080e7          	jalr	-1848(ra) # 80001a9c <_ZdlPv>
    while (val < 0) {
        Scheduler::put(list.takeFirst());
    800021dc:	00090513          	mv	a0,s2
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	22c080e7          	jalr	556(ra) # 8000240c <_ZN9Scheduler3putEP3TCB>
        val++;
    800021e8:	0184b783          	ld	a5,24(s1)
    800021ec:	00178793          	addi	a5,a5,1
    800021f0:	00f4bc23          	sd	a5,24(s1)
    while (val < 0) {
    800021f4:	0184b783          	ld	a5,24(s1)
    800021f8:	0207d463          	bgez	a5,80002220 <_ZN3SemD1Ev+0x70>
        if (!head) return 0;
    800021fc:	0004b503          	ld	a0,0(s1)
    80002200:	00050c63          	beqz	a0,80002218 <_ZN3SemD1Ev+0x68>
        T* ret = head->data;
    80002204:	00053903          	ld	s2,0(a0)
        head = head->next;
    80002208:	00853783          	ld	a5,8(a0)
    8000220c:	00f4b023          	sd	a5,0(s1)
        if (!head) tail = 0;
    80002210:	fc0792e3          	bnez	a5,800021d4 <_ZN3SemD1Ev+0x24>
    80002214:	fbdff06f          	j	800021d0 <_ZN3SemD1Ev+0x20>
        if (!head) return 0;
    80002218:	00050913          	mv	s2,a0
    8000221c:	fc1ff06f          	j	800021dc <_ZN3SemD1Ev+0x2c>
    }
}
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	00013903          	ld	s2,0(sp)
    80002230:	02010113          	addi	sp,sp,32
    80002234:	00008067          	ret

0000000080002238 <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    //if (Scheduler::readyQueueEmpty()) return -1;
    if (--val < 0) {
    80002238:	01853783          	ld	a5,24(a0)
    8000223c:	fff78793          	addi	a5,a5,-1
    80002240:	00f53c23          	sd	a5,24(a0)
    80002244:	0007c663          	bltz	a5,80002250 <_ZN3Sem7semWaitEv+0x18>
        old->setBlocked(true);
        list.putLast(old);
        thread_dispatch();
    }
    return 0;
}
    80002248:	00000513          	li	a0,0
    8000224c:	00008067          	ret
int Sem::semWait() {
    80002250:	fe010113          	addi	sp,sp,-32
    80002254:	00113c23          	sd	ra,24(sp)
    80002258:	00813823          	sd	s0,16(sp)
    8000225c:	00913423          	sd	s1,8(sp)
    80002260:	01213023          	sd	s2,0(sp)
    80002264:	02010413          	addi	s0,sp,32
    80002268:	00050493          	mv	s1,a0
        TCB *old = TCB::running;
    8000226c:	00005797          	auipc	a5,0x5
    80002270:	1ac7b783          	ld	a5,428(a5) # 80007418 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002274:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool val) { blocked = val; }
    80002278:	00100793          	li	a5,1
    8000227c:	00f90ca3          	sb	a5,25(s2)
        Node *newNode = new Node(data, 0);
    80002280:	01000513          	li	a0,16
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	7c8080e7          	jalr	1992(ra) # 80001a4c <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    8000228c:	01253023          	sd	s2,0(a0)
    80002290:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002294:	0084b783          	ld	a5,8(s1)
    80002298:	02078863          	beqz	a5,800022c8 <_ZN3Sem7semWaitEv+0x90>
            tail->next = newNode;
    8000229c:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    800022a0:	00a4b423          	sd	a0,8(s1)
        thread_dispatch();
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	d8c080e7          	jalr	-628(ra) # 80001030 <thread_dispatch>
}
    800022ac:	00000513          	li	a0,0
    800022b0:	01813083          	ld	ra,24(sp)
    800022b4:	01013403          	ld	s0,16(sp)
    800022b8:	00813483          	ld	s1,8(sp)
    800022bc:	00013903          	ld	s2,0(sp)
    800022c0:	02010113          	addi	sp,sp,32
    800022c4:	00008067          	ret
        if (!tail) head = tail = newNode;
    800022c8:	00a4b423          	sd	a0,8(s1)
    800022cc:	00a4b023          	sd	a0,0(s1)
    800022d0:	fd5ff06f          	j	800022a4 <_ZN3Sem7semWaitEv+0x6c>

00000000800022d4 <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    800022d4:	01853703          	ld	a4,24(a0)
    800022d8:	00170713          	addi	a4,a4,1
    800022dc:	00e53c23          	sd	a4,24(a0)
    800022e0:	00e05663          	blez	a4,800022ec <_ZN3Sem9semSignalEv+0x18>
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
    800022e4:	00000513          	li	a0,0
    800022e8:	00008067          	ret
int Sem::semSignal() {
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050793          	mv	a5,a0
        if (!head) return 0;
    80002304:	00053503          	ld	a0,0(a0)
    80002308:	04050663          	beqz	a0,80002354 <_ZN3Sem9semSignalEv+0x80>
        T* ret = head->data;
    8000230c:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002310:	00853703          	ld	a4,8(a0)
    80002314:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    80002318:	02070a63          	beqz	a4,8000234c <_ZN3Sem9semSignalEv+0x78>
        delete old;
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	780080e7          	jalr	1920(ra) # 80001a9c <_ZdlPv>
    80002324:	00048ca3          	sb	zero,25(s1)
        Scheduler::put(ready);
    80002328:	00048513          	mv	a0,s1
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	0e0080e7          	jalr	224(ra) # 8000240c <_ZN9Scheduler3putEP3TCB>
    80002334:	00000513          	li	a0,0
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret
        if (!head) tail = 0;
    8000234c:	0007b423          	sd	zero,8(a5)
    80002350:	fcdff06f          	j	8000231c <_ZN3Sem9semSignalEv+0x48>
        if (!head) return 0;
    80002354:	00050493          	mv	s1,a0
    80002358:	fcdff06f          	j	80002324 <_ZN3Sem9semSignalEv+0x50>

000000008000235c <_Z41__static_initialization_and_destruction_0ii>:
    TCB* old = TCB::running;
    old->setBlocked(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    thread_dispatch();
}
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813423          	sd	s0,8(sp)
    80002364:	01010413          	addi	s0,sp,16
    80002368:	00100793          	li	a5,1
    8000236c:	00f50863          	beq	a0,a5,8000237c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret
    8000237c:	000107b7          	lui	a5,0x10
    80002380:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002384:	fef596e3          	bne	a1,a5,80002370 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80002388:	00005797          	auipc	a5,0x5
    8000238c:	10078793          	addi	a5,a5,256 # 80007488 <_ZN9Scheduler10readyQueueE>
    80002390:	0007b023          	sd	zero,0(a5)
    80002394:	0007b423          	sd	zero,8(a5)
    80002398:	0007b823          	sd	zero,16(a5)
    8000239c:	0007bc23          	sd	zero,24(a5)
    800023a0:	fd1ff06f          	j	80002370 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800023a4 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    800023a4:	fe010113          	addi	sp,sp,-32
    800023a8:	00113c23          	sd	ra,24(sp)
    800023ac:	00813823          	sd	s0,16(sp)
    800023b0:	00913423          	sd	s1,8(sp)
    800023b4:	02010413          	addi	s0,sp,32

    T* takeFirst() {
        /*__putc('o');
        __putc('f');
        __putc('\n');*/
        if (!head) return 0;
    800023b8:	00005517          	auipc	a0,0x5
    800023bc:	0d053503          	ld	a0,208(a0) # 80007488 <_ZN9Scheduler10readyQueueE>
    800023c0:	04050263          	beqz	a0,80002404 <_ZN9Scheduler3getEv+0x60>

        T* ret = head->data;
    800023c4:	00053483          	ld	s1,0(a0)
        Node* old = head;
        head = head->next;
    800023c8:	00853783          	ld	a5,8(a0)
    800023cc:	00005717          	auipc	a4,0x5
    800023d0:	0af73e23          	sd	a5,188(a4) # 80007488 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    800023d4:	02078263          	beqz	a5,800023f8 <_ZN9Scheduler3getEv+0x54>
        delete old;
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	6c4080e7          	jalr	1732(ra) # 80001a9c <_ZdlPv>
}
    800023e0:	00048513          	mv	a0,s1
    800023e4:	01813083          	ld	ra,24(sp)
    800023e8:	01013403          	ld	s0,16(sp)
    800023ec:	00813483          	ld	s1,8(sp)
    800023f0:	02010113          	addi	sp,sp,32
    800023f4:	00008067          	ret
        if (!head) tail = 0;
    800023f8:	00005797          	auipc	a5,0x5
    800023fc:	0807bc23          	sd	zero,152(a5) # 80007490 <_ZN9Scheduler10readyQueueE+0x8>
    80002400:	fd9ff06f          	j	800023d8 <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80002404:	00050493          	mv	s1,a0
    return ret;
    80002408:	fd9ff06f          	j	800023e0 <_ZN9Scheduler3getEv+0x3c>

000000008000240c <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    8000240c:	fe010113          	addi	sp,sp,-32
    80002410:	00113c23          	sd	ra,24(sp)
    80002414:	00813823          	sd	s0,16(sp)
    80002418:	00913423          	sd	s1,8(sp)
    8000241c:	02010413          	addi	s0,sp,32
    80002420:	00050493          	mv	s1,a0
        Node *newNode = new Node(data, 0);
    80002424:	01000513          	li	a0,16
    80002428:	fffff097          	auipc	ra,0xfffff
    8000242c:	624080e7          	jalr	1572(ra) # 80001a4c <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002430:	00953023          	sd	s1,0(a0)
    80002434:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002438:	00005797          	auipc	a5,0x5
    8000243c:	0587b783          	ld	a5,88(a5) # 80007490 <_ZN9Scheduler10readyQueueE+0x8>
    80002440:	02078263          	beqz	a5,80002464 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80002444:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002448:	00005797          	auipc	a5,0x5
    8000244c:	04a7b423          	sd	a0,72(a5) # 80007490 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002450:	01813083          	ld	ra,24(sp)
    80002454:	01013403          	ld	s0,16(sp)
    80002458:	00813483          	ld	s1,8(sp)
    8000245c:	02010113          	addi	sp,sp,32
    80002460:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002464:	00005797          	auipc	a5,0x5
    80002468:	02478793          	addi	a5,a5,36 # 80007488 <_ZN9Scheduler10readyQueueE>
    8000246c:	00a7b423          	sd	a0,8(a5)
    80002470:	00a7b023          	sd	a0,0(a5)
    80002474:	fddff06f          	j	80002450 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002478 <_ZN9Scheduler14timerInterruptEv>:

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002478:	00005797          	auipc	a5,0x5
    8000247c:	0207b783          	ld	a5,32(a5) # 80007498 <_ZN9Scheduler10sleepQueueE>
    80002480:	0a078a63          	beqz	a5,80002534 <_ZN9Scheduler14timerInterruptEv+0xbc>
void Scheduler::timerInterrupt() {
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00113c23          	sd	ra,24(sp)
    8000248c:	00813823          	sd	s0,16(sp)
    80002490:	00913423          	sd	s1,8(sp)
    80002494:	02010413          	addi	s0,sp,32
        return head->data;
    80002498:	0007b483          	ld	s1,0(a5)
    if (!first) return;
    8000249c:	08048263          	beqz	s1,80002520 <_ZN9Scheduler14timerInterruptEv+0xa8>
    first->time--;
    800024a0:	0004b783          	ld	a5,0(s1)
    800024a4:	fff78793          	addi	a5,a5,-1
    800024a8:	00f4b023          	sd	a5,0(s1)
    800024ac:	02c0006f          	j	800024d8 <_ZN9Scheduler14timerInterruptEv+0x60>
        if (!head) tail = 0;
    800024b0:	00005797          	auipc	a5,0x5
    800024b4:	fe07b823          	sd	zero,-16(a5) # 800074a0 <_ZN9Scheduler10sleepQueueE+0x8>
    800024b8:	0440006f          	j	800024fc <_ZN9Scheduler14timerInterruptEv+0x84>
        delete first;
    800024bc:	00048513          	mv	a0,s1
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	5dc080e7          	jalr	1500(ra) # 80001a9c <_ZdlPv>
        if(!head) return 0;
    800024c8:	00005497          	auipc	s1,0x5
    800024cc:	fd04b483          	ld	s1,-48(s1) # 80007498 <_ZN9Scheduler10sleepQueueE>
    800024d0:	00048463          	beqz	s1,800024d8 <_ZN9Scheduler14timerInterruptEv+0x60>
        return head->data;
    800024d4:	0004b483          	ld	s1,0(s1)
    while(first->time == 0) {
    800024d8:	0004b783          	ld	a5,0(s1)
    800024dc:	04079263          	bnez	a5,80002520 <_ZN9Scheduler14timerInterruptEv+0xa8>
        if (!head) return 0;
    800024e0:	00005517          	auipc	a0,0x5
    800024e4:	fb853503          	ld	a0,-72(a0) # 80007498 <_ZN9Scheduler10sleepQueueE>
    800024e8:	00050e63          	beqz	a0,80002504 <_ZN9Scheduler14timerInterruptEv+0x8c>
        head = head->next;
    800024ec:	00853783          	ld	a5,8(a0)
    800024f0:	00005717          	auipc	a4,0x5
    800024f4:	faf73423          	sd	a5,-88(a4) # 80007498 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    800024f8:	fa078ce3          	beqz	a5,800024b0 <_ZN9Scheduler14timerInterruptEv+0x38>
        delete old;
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	5a0080e7          	jalr	1440(ra) # 80001a9c <_ZdlPv>
        first->thread->setBlocked(false);
    80002504:	0084b783          	ld	a5,8(s1)
    80002508:	00078ca3          	sb	zero,25(a5)
        Scheduler::put(first->thread);
    8000250c:	0084b503          	ld	a0,8(s1)
    80002510:	00000097          	auipc	ra,0x0
    80002514:	efc080e7          	jalr	-260(ra) # 8000240c <_ZN9Scheduler3putEP3TCB>
        delete first;
    80002518:	fa0492e3          	bnez	s1,800024bc <_ZN9Scheduler14timerInterruptEv+0x44>
    8000251c:	fadff06f          	j	800024c8 <_ZN9Scheduler14timerInterruptEv+0x50>
}
    80002520:	01813083          	ld	ra,24(sp)
    80002524:	01013403          	ld	s0,16(sp)
    80002528:	00813483          	ld	s1,8(sp)
    8000252c:	02010113          	addi	sp,sp,32
    80002530:	00008067          	ret
    80002534:	00008067          	ret

0000000080002538 <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    80002538:	fd010113          	addi	sp,sp,-48
    8000253c:	02113423          	sd	ra,40(sp)
    80002540:	02813023          	sd	s0,32(sp)
    80002544:	00913c23          	sd	s1,24(sp)
    80002548:	01213823          	sd	s2,16(sp)
    8000254c:	01313423          	sd	s3,8(sp)
    80002550:	03010413          	addi	s0,sp,48
    80002554:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80002558:	00005797          	auipc	a5,0x5
    8000255c:	ec07b783          	ld	a5,-320(a5) # 80007418 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002560:	0007b983          	ld	s3,0(a5)
    80002564:	00100793          	li	a5,1
    80002568:	00f98ca3          	sb	a5,25(s3)
    sleepNode* sn = new sleepNode(time, old);
    8000256c:	01000513          	li	a0,16
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	4dc080e7          	jalr	1244(ra) # 80001a4c <_Znwm>
    80002578:	00050493          	mv	s1,a0

    struct sleepNode {
        time_t time;
        TCB* thread;

        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    8000257c:	01253023          	sd	s2,0(a0)
    80002580:	01353423          	sd	s3,8(a0)
        Node *newNode = new Node(data, 0);
    80002584:	01000513          	li	a0,16
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	4c4080e7          	jalr	1220(ra) # 80001a4c <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002590:	00953023          	sd	s1,0(a0)
    80002594:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    80002598:	00005797          	auipc	a5,0x5
    8000259c:	f007b783          	ld	a5,-256(a5) # 80007498 <_ZN9Scheduler10sleepQueueE>
    800025a0:	02078c63          	beqz	a5,800025d8 <_ZN9Scheduler9timeSleepEm+0xa0>
        Node* curr = head, *prev = nullptr;
    800025a4:	00000693          	li	a3,0
        while (curr && *(uint64*)data > *(uint64*)(curr->data)) {
    800025a8:	04078263          	beqz	a5,800025ec <_ZN9Scheduler9timeSleepEm+0xb4>
    800025ac:	0004b703          	ld	a4,0(s1)
    800025b0:	0007b603          	ld	a2,0(a5)
    800025b4:	00063603          	ld	a2,0(a2)
    800025b8:	02e67a63          	bgeu	a2,a4,800025ec <_ZN9Scheduler9timeSleepEm+0xb4>
            curr = curr->next;
    800025bc:	0087b603          	ld	a2,8(a5)
            *(uint64*)data -= *(uint64*)curr;
    800025c0:	00063683          	ld	a3,0(a2)
    800025c4:	40d70733          	sub	a4,a4,a3
    800025c8:	00e4b023          	sd	a4,0(s1)
            prev = curr;
    800025cc:	00078693          	mv	a3,a5
            curr = curr->next;
    800025d0:	00060793          	mv	a5,a2
        while (curr && *(uint64*)data > *(uint64*)(curr->data)) {
    800025d4:	fd5ff06f          	j	800025a8 <_ZN9Scheduler9timeSleepEm+0x70>
        if (!head) { head = tail = newNode; return; }
    800025d8:	00005797          	auipc	a5,0x5
    800025dc:	eb078793          	addi	a5,a5,-336 # 80007488 <_ZN9Scheduler10readyQueueE>
    800025e0:	00a7bc23          	sd	a0,24(a5)
    800025e4:	00a7b823          	sd	a0,16(a5)
    800025e8:	0140006f          	j	800025fc <_ZN9Scheduler9timeSleepEm+0xc4>
        newNode->next = curr;
    800025ec:	00f53423          	sd	a5,8(a0)
        if (prev) prev->next = newNode;
    800025f0:	02068863          	beqz	a3,80002620 <_ZN9Scheduler9timeSleepEm+0xe8>
    800025f4:	00a6b423          	sd	a0,8(a3)
        if(!curr) tail = newNode;
    800025f8:	02078a63          	beqz	a5,8000262c <_ZN9Scheduler9timeSleepEm+0xf4>
    thread_dispatch();
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	a34080e7          	jalr	-1484(ra) # 80001030 <thread_dispatch>
}
    80002604:	02813083          	ld	ra,40(sp)
    80002608:	02013403          	ld	s0,32(sp)
    8000260c:	01813483          	ld	s1,24(sp)
    80002610:	01013903          	ld	s2,16(sp)
    80002614:	00813983          	ld	s3,8(sp)
    80002618:	03010113          	addi	sp,sp,48
    8000261c:	00008067          	ret
        else head = newNode;
    80002620:	00005717          	auipc	a4,0x5
    80002624:	e6a73c23          	sd	a0,-392(a4) # 80007498 <_ZN9Scheduler10sleepQueueE>
    80002628:	fd1ff06f          	j	800025f8 <_ZN9Scheduler9timeSleepEm+0xc0>
        if(!curr) tail = newNode;
    8000262c:	00005797          	auipc	a5,0x5
    80002630:	e6a7ba23          	sd	a0,-396(a5) # 800074a0 <_ZN9Scheduler10sleepQueueE+0x8>
    80002634:	fc9ff06f          	j	800025fc <_ZN9Scheduler9timeSleepEm+0xc4>

0000000080002638 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00113423          	sd	ra,8(sp)
    80002640:	00813023          	sd	s0,0(sp)
    80002644:	01010413          	addi	s0,sp,16
    80002648:	000105b7          	lui	a1,0x10
    8000264c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002650:	00100513          	li	a0,1
    80002654:	00000097          	auipc	ra,0x0
    80002658:	d08080e7          	jalr	-760(ra) # 8000235c <_Z41__static_initialization_and_destruction_0ii>
    8000265c:	00813083          	ld	ra,8(sp)
    80002660:	00013403          	ld	s0,0(sp)
    80002664:	01010113          	addi	sp,sp,16
    80002668:	00008067          	ret

000000008000266c <_Z14__print_stringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.h"

void __print_string(char const *string) {
    8000266c:	fe010113          	addi	sp,sp,-32
    80002670:	00113c23          	sd	ra,24(sp)
    80002674:	00813823          	sd	s0,16(sp)
    80002678:	00913423          	sd	s1,8(sp)
    8000267c:	02010413          	addi	s0,sp,32
    80002680:	00050493          	mv	s1,a0
    //uint64 sstatus = RiscV::readSstatus();
    //RiscV::clearSstatus(RiscV::SIE);
    for (char const *c = string; *c != '\0'; c++) putc(*c);
    80002684:	0004c503          	lbu	a0,0(s1)
    80002688:	00050a63          	beqz	a0,8000269c <_Z14__print_stringPKc+0x30>
    8000268c:	fffff097          	auipc	ra,0xfffff
    80002690:	a04080e7          	jalr	-1532(ra) # 80001090 <putc>
    80002694:	00148493          	addi	s1,s1,1
    80002698:	fedff06f          	j	80002684 <_Z14__print_stringPKc+0x18>
    //RiscV::setSstatus(sstatus & RiscV::SIE ? RiscV::SIE : 0);
}
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret

00000000800026b0 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    800026b0:	fc010113          	addi	sp,sp,-64
    800026b4:	02113c23          	sd	ra,56(sp)
    800026b8:	02813823          	sd	s0,48(sp)
    800026bc:	02913423          	sd	s1,40(sp)
    800026c0:	04010413          	addi	s0,sp,64
    //uint64 sstatus = RiscV::readSstatus();
    //RiscV::clearSstatus(RiscV::SIE);
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    800026c4:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    800026c8:	00a00693          	li	a3,10
    800026cc:	02d57633          	remu	a2,a0,a3
    800026d0:	00004717          	auipc	a4,0x4
    800026d4:	ac870713          	addi	a4,a4,-1336 # 80006198 <_ZZ14__print_uint64mE6digits>
    800026d8:	00c70733          	add	a4,a4,a2
    800026dc:	00074703          	lbu	a4,0(a4)
    800026e0:	fe040613          	addi	a2,s0,-32
    800026e4:	009607b3          	add	a5,a2,s1
    800026e8:	0014849b          	addiw	s1,s1,1
    800026ec:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    800026f0:	00050713          	mv	a4,a0
    800026f4:	02d55533          	divu	a0,a0,a3
    800026f8:	00900793          	li	a5,9
    800026fc:	fce7e6e3          	bltu	a5,a4,800026c8 <_Z14__print_uint64m+0x18>
    while(--i >= 0) putc(output[i]);
    80002700:	fff4849b          	addiw	s1,s1,-1
    80002704:	0004ce63          	bltz	s1,80002720 <_Z14__print_uint64m+0x70>
    80002708:	fe040793          	addi	a5,s0,-32
    8000270c:	009787b3          	add	a5,a5,s1
    80002710:	fe87c503          	lbu	a0,-24(a5)
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	97c080e7          	jalr	-1668(ra) # 80001090 <putc>
    8000271c:	fe5ff06f          	j	80002700 <_Z14__print_uint64m+0x50>
    //RiscV::setSstatus(sstatus & RiscV::SIE ? RiscV::SIE : 0);
}
    80002720:	03813083          	ld	ra,56(sp)
    80002724:	03013403          	ld	s0,48(sp)
    80002728:	02813483          	ld	s1,40(sp)
    8000272c:	04010113          	addi	sp,sp,64
    80002730:	00008067          	ret

0000000080002734 <_Z11__print_intx>:

void __print_int(long long int integer) {
    80002734:	fe010113          	addi	sp,sp,-32
    80002738:	00113c23          	sd	ra,24(sp)
    8000273c:	00813823          	sd	s0,16(sp)
    80002740:	00913423          	sd	s1,8(sp)
    80002744:	02010413          	addi	s0,sp,32
    80002748:	00050493          	mv	s1,a0
    //uint64 sstatus = RiscV::readSstatus();
    //RiscV::clearSstatus(RiscV::SIE);
    if (integer < 0) putc('-'), integer *= -1;
    8000274c:	02054263          	bltz	a0,80002770 <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80002750:	00048513          	mv	a0,s1
    80002754:	00000097          	auipc	ra,0x0
    80002758:	f5c080e7          	jalr	-164(ra) # 800026b0 <_Z14__print_uint64m>
    //RiscV::setSstatus(sstatus & RiscV::SIE ? RiscV::SIE : 0);
}
    8000275c:	01813083          	ld	ra,24(sp)
    80002760:	01013403          	ld	s0,16(sp)
    80002764:	00813483          	ld	s1,8(sp)
    80002768:	02010113          	addi	sp,sp,32
    8000276c:	00008067          	ret
    if (integer < 0) putc('-'), integer *= -1;
    80002770:	02d00513          	li	a0,45
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	91c080e7          	jalr	-1764(ra) # 80001090 <putc>
    8000277c:	409004b3          	neg	s1,s1
    80002780:	fd1ff06f          	j	80002750 <_Z11__print_intx+0x1c>

0000000080002784 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002784:	fe010113          	addi	sp,sp,-32
    80002788:	00113c23          	sd	ra,24(sp)
    8000278c:	00813823          	sd	s0,16(sp)
    80002790:	00913423          	sd	s1,8(sp)
    80002794:	02010413          	addi	s0,sp,32
    80002798:	00050493          	mv	s1,a0
    LOCK();
    8000279c:	00100613          	li	a2,1
    800027a0:	00000593          	li	a1,0
    800027a4:	00005517          	auipc	a0,0x5
    800027a8:	d0450513          	addi	a0,a0,-764 # 800074a8 <lockPrint>
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	b18080e7          	jalr	-1256(ra) # 800012c4 <copy_and_swap>
    800027b4:	fe0514e3          	bnez	a0,8000279c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800027b8:	0004c503          	lbu	a0,0(s1)
    800027bc:	00050a63          	beqz	a0,800027d0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	8d0080e7          	jalr	-1840(ra) # 80001090 <putc>
        string++;
    800027c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800027cc:	fedff06f          	j	800027b8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800027d0:	00000613          	li	a2,0
    800027d4:	00100593          	li	a1,1
    800027d8:	00005517          	auipc	a0,0x5
    800027dc:	cd050513          	addi	a0,a0,-816 # 800074a8 <lockPrint>
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	ae4080e7          	jalr	-1308(ra) # 800012c4 <copy_and_swap>
    800027e8:	fe0514e3          	bnez	a0,800027d0 <_Z11printStringPKc+0x4c>
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret

0000000080002800 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002800:	fd010113          	addi	sp,sp,-48
    80002804:	02113423          	sd	ra,40(sp)
    80002808:	02813023          	sd	s0,32(sp)
    8000280c:	00913c23          	sd	s1,24(sp)
    80002810:	01213823          	sd	s2,16(sp)
    80002814:	01313423          	sd	s3,8(sp)
    80002818:	01413023          	sd	s4,0(sp)
    8000281c:	03010413          	addi	s0,sp,48
    80002820:	00050993          	mv	s3,a0
    80002824:	00058a13          	mv	s4,a1
    LOCK();
    80002828:	00100613          	li	a2,1
    8000282c:	00000593          	li	a1,0
    80002830:	00005517          	auipc	a0,0x5
    80002834:	c7850513          	addi	a0,a0,-904 # 800074a8 <lockPrint>
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	a8c080e7          	jalr	-1396(ra) # 800012c4 <copy_and_swap>
    80002840:	fe0514e3          	bnez	a0,80002828 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002844:	00000913          	li	s2,0
    80002848:	00090493          	mv	s1,s2
    8000284c:	0019091b          	addiw	s2,s2,1
    80002850:	03495a63          	bge	s2,s4,80002884 <_Z9getStringPci+0x84>
        cc = getc();
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	830080e7          	jalr	-2000(ra) # 80001084 <getc>
        if(cc < 1)
    8000285c:	02050463          	beqz	a0,80002884 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002860:	009984b3          	add	s1,s3,s1
    80002864:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002868:	00a00793          	li	a5,10
    8000286c:	00f50a63          	beq	a0,a5,80002880 <_Z9getStringPci+0x80>
    80002870:	00d00793          	li	a5,13
    80002874:	fcf51ae3          	bne	a0,a5,80002848 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002878:	00090493          	mv	s1,s2
    8000287c:	0080006f          	j	80002884 <_Z9getStringPci+0x84>
    80002880:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002884:	009984b3          	add	s1,s3,s1
    80002888:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000288c:	00000613          	li	a2,0
    80002890:	00100593          	li	a1,1
    80002894:	00005517          	auipc	a0,0x5
    80002898:	c1450513          	addi	a0,a0,-1004 # 800074a8 <lockPrint>
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	a28080e7          	jalr	-1496(ra) # 800012c4 <copy_and_swap>
    800028a4:	fe0514e3          	bnez	a0,8000288c <_Z9getStringPci+0x8c>
    return buf;
}
    800028a8:	00098513          	mv	a0,s3
    800028ac:	02813083          	ld	ra,40(sp)
    800028b0:	02013403          	ld	s0,32(sp)
    800028b4:	01813483          	ld	s1,24(sp)
    800028b8:	01013903          	ld	s2,16(sp)
    800028bc:	00813983          	ld	s3,8(sp)
    800028c0:	00013a03          	ld	s4,0(sp)
    800028c4:	03010113          	addi	sp,sp,48
    800028c8:	00008067          	ret

00000000800028cc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800028cc:	ff010113          	addi	sp,sp,-16
    800028d0:	00813423          	sd	s0,8(sp)
    800028d4:	01010413          	addi	s0,sp,16
    800028d8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800028dc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800028e0:	0006c603          	lbu	a2,0(a3)
    800028e4:	fd06071b          	addiw	a4,a2,-48
    800028e8:	0ff77713          	andi	a4,a4,255
    800028ec:	00900793          	li	a5,9
    800028f0:	02e7e063          	bltu	a5,a4,80002910 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800028f4:	0025179b          	slliw	a5,a0,0x2
    800028f8:	00a787bb          	addw	a5,a5,a0
    800028fc:	0017979b          	slliw	a5,a5,0x1
    80002900:	00168693          	addi	a3,a3,1
    80002904:	00c787bb          	addw	a5,a5,a2
    80002908:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000290c:	fd5ff06f          	j	800028e0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002910:	00813403          	ld	s0,8(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00008067          	ret

000000008000291c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000291c:	fc010113          	addi	sp,sp,-64
    80002920:	02113c23          	sd	ra,56(sp)
    80002924:	02813823          	sd	s0,48(sp)
    80002928:	02913423          	sd	s1,40(sp)
    8000292c:	03213023          	sd	s2,32(sp)
    80002930:	01313c23          	sd	s3,24(sp)
    80002934:	04010413          	addi	s0,sp,64
    80002938:	00050493          	mv	s1,a0
    8000293c:	00058913          	mv	s2,a1
    80002940:	00060993          	mv	s3,a2
    LOCK();
    80002944:	00100613          	li	a2,1
    80002948:	00000593          	li	a1,0
    8000294c:	00005517          	auipc	a0,0x5
    80002950:	b5c50513          	addi	a0,a0,-1188 # 800074a8 <lockPrint>
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	970080e7          	jalr	-1680(ra) # 800012c4 <copy_and_swap>
    8000295c:	fe0514e3          	bnez	a0,80002944 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002960:	00098463          	beqz	s3,80002968 <_Z8printIntiii+0x4c>
    80002964:	0804c463          	bltz	s1,800029ec <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002968:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000296c:	00000593          	li	a1,0
    }

    i = 0;
    80002970:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002974:	0009079b          	sext.w	a5,s2
    80002978:	0325773b          	remuw	a4,a0,s2
    8000297c:	00048613          	mv	a2,s1
    80002980:	0014849b          	addiw	s1,s1,1
    80002984:	02071693          	slli	a3,a4,0x20
    80002988:	0206d693          	srli	a3,a3,0x20
    8000298c:	00005717          	auipc	a4,0x5
    80002990:	a4470713          	addi	a4,a4,-1468 # 800073d0 <digits>
    80002994:	00d70733          	add	a4,a4,a3
    80002998:	00074683          	lbu	a3,0(a4)
    8000299c:	fd040713          	addi	a4,s0,-48
    800029a0:	00c70733          	add	a4,a4,a2
    800029a4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800029a8:	0005071b          	sext.w	a4,a0
    800029ac:	0325553b          	divuw	a0,a0,s2
    800029b0:	fcf772e3          	bgeu	a4,a5,80002974 <_Z8printIntiii+0x58>
    if(neg)
    800029b4:	00058c63          	beqz	a1,800029cc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800029b8:	fd040793          	addi	a5,s0,-48
    800029bc:	009784b3          	add	s1,a5,s1
    800029c0:	02d00793          	li	a5,45
    800029c4:	fef48823          	sb	a5,-16(s1)
    800029c8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800029cc:	fff4849b          	addiw	s1,s1,-1
    800029d0:	0204c463          	bltz	s1,800029f8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800029d4:	fd040793          	addi	a5,s0,-48
    800029d8:	009787b3          	add	a5,a5,s1
    800029dc:	ff07c503          	lbu	a0,-16(a5)
    800029e0:	ffffe097          	auipc	ra,0xffffe
    800029e4:	6b0080e7          	jalr	1712(ra) # 80001090 <putc>
    800029e8:	fe5ff06f          	j	800029cc <_Z8printIntiii+0xb0>
        x = -xx;
    800029ec:	4090053b          	negw	a0,s1
        neg = 1;
    800029f0:	00100593          	li	a1,1
        x = -xx;
    800029f4:	f7dff06f          	j	80002970 <_Z8printIntiii+0x54>

    UNLOCK();
    800029f8:	00000613          	li	a2,0
    800029fc:	00100593          	li	a1,1
    80002a00:	00005517          	auipc	a0,0x5
    80002a04:	aa850513          	addi	a0,a0,-1368 # 800074a8 <lockPrint>
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	8bc080e7          	jalr	-1860(ra) # 800012c4 <copy_and_swap>
    80002a10:	fe0514e3          	bnez	a0,800029f8 <_Z8printIntiii+0xdc>
    80002a14:	03813083          	ld	ra,56(sp)
    80002a18:	03013403          	ld	s0,48(sp)
    80002a1c:	02813483          	ld	s1,40(sp)
    80002a20:	02013903          	ld	s2,32(sp)
    80002a24:	01813983          	ld	s3,24(sp)
    80002a28:	04010113          	addi	sp,sp,64
    80002a2c:	00008067          	ret

0000000080002a30 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002a30:	fd010113          	addi	sp,sp,-48
    80002a34:	02113423          	sd	ra,40(sp)
    80002a38:	02813023          	sd	s0,32(sp)
    80002a3c:	00913c23          	sd	s1,24(sp)
    80002a40:	01213823          	sd	s2,16(sp)
    80002a44:	01313423          	sd	s3,8(sp)
    80002a48:	03010413          	addi	s0,sp,48
    80002a4c:	00050493          	mv	s1,a0
    80002a50:	00058913          	mv	s2,a1
    80002a54:	0015879b          	addiw	a5,a1,1
    80002a58:	0007851b          	sext.w	a0,a5
    80002a5c:	00f4a023          	sw	a5,0(s1)
    80002a60:	0004a823          	sw	zero,16(s1)
    80002a64:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002a68:	00251513          	slli	a0,a0,0x2
    80002a6c:	ffffe097          	auipc	ra,0xffffe
    80002a70:	594080e7          	jalr	1428(ra) # 80001000 <mem_alloc>
    80002a74:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002a78:	01000513          	li	a0,16
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	fd0080e7          	jalr	-48(ra) # 80001a4c <_Znwm>
    80002a84:	00050993          	mv	s3,a0
    80002a88:	00000593          	li	a1,0
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	22c080e7          	jalr	556(ra) # 80001cb8 <_ZN9SemaphoreC1Ej>
    80002a94:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002a98:	01000513          	li	a0,16
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	fb0080e7          	jalr	-80(ra) # 80001a4c <_Znwm>
    80002aa4:	00050993          	mv	s3,a0
    80002aa8:	00090593          	mv	a1,s2
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	20c080e7          	jalr	524(ra) # 80001cb8 <_ZN9SemaphoreC1Ej>
    80002ab4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002ab8:	01000513          	li	a0,16
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	f90080e7          	jalr	-112(ra) # 80001a4c <_Znwm>
    80002ac4:	00050913          	mv	s2,a0
    80002ac8:	00100593          	li	a1,1
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	1ec080e7          	jalr	492(ra) # 80001cb8 <_ZN9SemaphoreC1Ej>
    80002ad4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002ad8:	01000513          	li	a0,16
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	f70080e7          	jalr	-144(ra) # 80001a4c <_Znwm>
    80002ae4:	00050913          	mv	s2,a0
    80002ae8:	00100593          	li	a1,1
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	1cc080e7          	jalr	460(ra) # 80001cb8 <_ZN9SemaphoreC1Ej>
    80002af4:	0324b823          	sd	s2,48(s1)
}
    80002af8:	02813083          	ld	ra,40(sp)
    80002afc:	02013403          	ld	s0,32(sp)
    80002b00:	01813483          	ld	s1,24(sp)
    80002b04:	01013903          	ld	s2,16(sp)
    80002b08:	00813983          	ld	s3,8(sp)
    80002b0c:	03010113          	addi	sp,sp,48
    80002b10:	00008067          	ret
    80002b14:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002b18:	00098513          	mv	a0,s3
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	f80080e7          	jalr	-128(ra) # 80001a9c <_ZdlPv>
    80002b24:	00048513          	mv	a0,s1
    80002b28:	00006097          	auipc	ra,0x6
    80002b2c:	a60080e7          	jalr	-1440(ra) # 80008588 <_Unwind_Resume>
    80002b30:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002b34:	00098513          	mv	a0,s3
    80002b38:	fffff097          	auipc	ra,0xfffff
    80002b3c:	f64080e7          	jalr	-156(ra) # 80001a9c <_ZdlPv>
    80002b40:	00048513          	mv	a0,s1
    80002b44:	00006097          	auipc	ra,0x6
    80002b48:	a44080e7          	jalr	-1468(ra) # 80008588 <_Unwind_Resume>
    80002b4c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002b50:	00090513          	mv	a0,s2
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	f48080e7          	jalr	-184(ra) # 80001a9c <_ZdlPv>
    80002b5c:	00048513          	mv	a0,s1
    80002b60:	00006097          	auipc	ra,0x6
    80002b64:	a28080e7          	jalr	-1496(ra) # 80008588 <_Unwind_Resume>
    80002b68:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002b6c:	00090513          	mv	a0,s2
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	f2c080e7          	jalr	-212(ra) # 80001a9c <_ZdlPv>
    80002b78:	00048513          	mv	a0,s1
    80002b7c:	00006097          	auipc	ra,0x6
    80002b80:	a0c080e7          	jalr	-1524(ra) # 80008588 <_Unwind_Resume>

0000000080002b84 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	00813823          	sd	s0,16(sp)
    80002b90:	00913423          	sd	s1,8(sp)
    80002b94:	01213023          	sd	s2,0(sp)
    80002b98:	02010413          	addi	s0,sp,32
    80002b9c:	00050493          	mv	s1,a0
    80002ba0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002ba4:	01853503          	ld	a0,24(a0)
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	148080e7          	jalr	328(ra) # 80001cf0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002bb0:	0304b503          	ld	a0,48(s1)
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	13c080e7          	jalr	316(ra) # 80001cf0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002bbc:	0084b783          	ld	a5,8(s1)
    80002bc0:	0144a703          	lw	a4,20(s1)
    80002bc4:	00271713          	slli	a4,a4,0x2
    80002bc8:	00e787b3          	add	a5,a5,a4
    80002bcc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002bd0:	0144a783          	lw	a5,20(s1)
    80002bd4:	0017879b          	addiw	a5,a5,1
    80002bd8:	0004a703          	lw	a4,0(s1)
    80002bdc:	02e7e7bb          	remw	a5,a5,a4
    80002be0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002be4:	0304b503          	ld	a0,48(s1)
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	134080e7          	jalr	308(ra) # 80001d1c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002bf0:	0204b503          	ld	a0,32(s1)
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	128080e7          	jalr	296(ra) # 80001d1c <_ZN9Semaphore6signalEv>

}
    80002bfc:	01813083          	ld	ra,24(sp)
    80002c00:	01013403          	ld	s0,16(sp)
    80002c04:	00813483          	ld	s1,8(sp)
    80002c08:	00013903          	ld	s2,0(sp)
    80002c0c:	02010113          	addi	sp,sp,32
    80002c10:	00008067          	ret

0000000080002c14 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002c14:	fe010113          	addi	sp,sp,-32
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	00813823          	sd	s0,16(sp)
    80002c20:	00913423          	sd	s1,8(sp)
    80002c24:	01213023          	sd	s2,0(sp)
    80002c28:	02010413          	addi	s0,sp,32
    80002c2c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002c30:	02053503          	ld	a0,32(a0)
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	0bc080e7          	jalr	188(ra) # 80001cf0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002c3c:	0284b503          	ld	a0,40(s1)
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	0b0080e7          	jalr	176(ra) # 80001cf0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002c48:	0084b703          	ld	a4,8(s1)
    80002c4c:	0104a783          	lw	a5,16(s1)
    80002c50:	00279693          	slli	a3,a5,0x2
    80002c54:	00d70733          	add	a4,a4,a3
    80002c58:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002c5c:	0017879b          	addiw	a5,a5,1
    80002c60:	0004a703          	lw	a4,0(s1)
    80002c64:	02e7e7bb          	remw	a5,a5,a4
    80002c68:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002c6c:	0284b503          	ld	a0,40(s1)
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	0ac080e7          	jalr	172(ra) # 80001d1c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002c78:	0184b503          	ld	a0,24(s1)
    80002c7c:	fffff097          	auipc	ra,0xfffff
    80002c80:	0a0080e7          	jalr	160(ra) # 80001d1c <_ZN9Semaphore6signalEv>

    return ret;
}
    80002c84:	00090513          	mv	a0,s2
    80002c88:	01813083          	ld	ra,24(sp)
    80002c8c:	01013403          	ld	s0,16(sp)
    80002c90:	00813483          	ld	s1,8(sp)
    80002c94:	00013903          	ld	s2,0(sp)
    80002c98:	02010113          	addi	sp,sp,32
    80002c9c:	00008067          	ret

0000000080002ca0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002ca0:	fe010113          	addi	sp,sp,-32
    80002ca4:	00113c23          	sd	ra,24(sp)
    80002ca8:	00813823          	sd	s0,16(sp)
    80002cac:	00913423          	sd	s1,8(sp)
    80002cb0:	01213023          	sd	s2,0(sp)
    80002cb4:	02010413          	addi	s0,sp,32
    80002cb8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002cbc:	02853503          	ld	a0,40(a0)
    80002cc0:	fffff097          	auipc	ra,0xfffff
    80002cc4:	030080e7          	jalr	48(ra) # 80001cf0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002cc8:	0304b503          	ld	a0,48(s1)
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	024080e7          	jalr	36(ra) # 80001cf0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002cd4:	0144a783          	lw	a5,20(s1)
    80002cd8:	0104a903          	lw	s2,16(s1)
    80002cdc:	0327ce63          	blt	a5,s2,80002d18 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002ce0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002ce4:	0304b503          	ld	a0,48(s1)
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	034080e7          	jalr	52(ra) # 80001d1c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002cf0:	0284b503          	ld	a0,40(s1)
    80002cf4:	fffff097          	auipc	ra,0xfffff
    80002cf8:	028080e7          	jalr	40(ra) # 80001d1c <_ZN9Semaphore6signalEv>

    return ret;
}
    80002cfc:	00090513          	mv	a0,s2
    80002d00:	01813083          	ld	ra,24(sp)
    80002d04:	01013403          	ld	s0,16(sp)
    80002d08:	00813483          	ld	s1,8(sp)
    80002d0c:	00013903          	ld	s2,0(sp)
    80002d10:	02010113          	addi	sp,sp,32
    80002d14:	00008067          	ret
        ret = cap - head + tail;
    80002d18:	0004a703          	lw	a4,0(s1)
    80002d1c:	4127093b          	subw	s2,a4,s2
    80002d20:	00f9093b          	addw	s2,s2,a5
    80002d24:	fc1ff06f          	j	80002ce4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002d28 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002d28:	fe010113          	addi	sp,sp,-32
    80002d2c:	00113c23          	sd	ra,24(sp)
    80002d30:	00813823          	sd	s0,16(sp)
    80002d34:	00913423          	sd	s1,8(sp)
    80002d38:	02010413          	addi	s0,sp,32
    80002d3c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002d40:	00a00513          	li	a0,10
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	07c080e7          	jalr	124(ra) # 80001dc0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002d4c:	00003517          	auipc	a0,0x3
    80002d50:	45c50513          	addi	a0,a0,1116 # 800061a8 <_ZZ14__print_uint64mE6digits+0x10>
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	a30080e7          	jalr	-1488(ra) # 80002784 <_Z11printStringPKc>
    while (getCnt()) {
    80002d5c:	00048513          	mv	a0,s1
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	f40080e7          	jalr	-192(ra) # 80002ca0 <_ZN9BufferCPP6getCntEv>
    80002d68:	02050c63          	beqz	a0,80002da0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002d6c:	0084b783          	ld	a5,8(s1)
    80002d70:	0104a703          	lw	a4,16(s1)
    80002d74:	00271713          	slli	a4,a4,0x2
    80002d78:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002d7c:	0007c503          	lbu	a0,0(a5)
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	040080e7          	jalr	64(ra) # 80001dc0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002d88:	0104a783          	lw	a5,16(s1)
    80002d8c:	0017879b          	addiw	a5,a5,1
    80002d90:	0004a703          	lw	a4,0(s1)
    80002d94:	02e7e7bb          	remw	a5,a5,a4
    80002d98:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002d9c:	fc1ff06f          	j	80002d5c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002da0:	02100513          	li	a0,33
    80002da4:	fffff097          	auipc	ra,0xfffff
    80002da8:	01c080e7          	jalr	28(ra) # 80001dc0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002dac:	00a00513          	li	a0,10
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	010080e7          	jalr	16(ra) # 80001dc0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002db8:	0084b503          	ld	a0,8(s1)
    80002dbc:	ffffe097          	auipc	ra,0xffffe
    80002dc0:	250080e7          	jalr	592(ra) # 8000100c <mem_free>
    delete itemAvailable;
    80002dc4:	0204b503          	ld	a0,32(s1)
    80002dc8:	00050863          	beqz	a0,80002dd8 <_ZN9BufferCPPD1Ev+0xb0>
    80002dcc:	00053783          	ld	a5,0(a0)
    80002dd0:	0087b783          	ld	a5,8(a5)
    80002dd4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002dd8:	0184b503          	ld	a0,24(s1)
    80002ddc:	00050863          	beqz	a0,80002dec <_ZN9BufferCPPD1Ev+0xc4>
    80002de0:	00053783          	ld	a5,0(a0)
    80002de4:	0087b783          	ld	a5,8(a5)
    80002de8:	000780e7          	jalr	a5
    delete mutexTail;
    80002dec:	0304b503          	ld	a0,48(s1)
    80002df0:	00050863          	beqz	a0,80002e00 <_ZN9BufferCPPD1Ev+0xd8>
    80002df4:	00053783          	ld	a5,0(a0)
    80002df8:	0087b783          	ld	a5,8(a5)
    80002dfc:	000780e7          	jalr	a5
    delete mutexHead;
    80002e00:	0284b503          	ld	a0,40(s1)
    80002e04:	00050863          	beqz	a0,80002e14 <_ZN9BufferCPPD1Ev+0xec>
    80002e08:	00053783          	ld	a5,0(a0)
    80002e0c:	0087b783          	ld	a5,8(a5)
    80002e10:	000780e7          	jalr	a5
}
    80002e14:	01813083          	ld	ra,24(sp)
    80002e18:	01013403          	ld	s0,16(sp)
    80002e1c:	00813483          	ld	s1,8(sp)
    80002e20:	02010113          	addi	sp,sp,32
    80002e24:	00008067          	ret

0000000080002e28 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80002e28:	fd010113          	addi	sp,sp,-48
    80002e2c:	02113423          	sd	ra,40(sp)
    80002e30:	02813023          	sd	s0,32(sp)
    80002e34:	00913c23          	sd	s1,24(sp)
    80002e38:	01213823          	sd	s2,16(sp)
    80002e3c:	01313423          	sd	s3,8(sp)
    80002e40:	03010413          	addi	s0,sp,48
    80002e44:	00050913          	mv	s2,a0

    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002e48:	00000993          	li	s3,0
    80002e4c:	00c0006f          	j	80002e58 <_Z16producerKeyboardPv+0x30>
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {

            thread_dispatch();
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	1e0080e7          	jalr	480(ra) # 80001030 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80002e58:	ffffe097          	auipc	ra,0xffffe
    80002e5c:	22c080e7          	jalr	556(ra) # 80001084 <getc>
    80002e60:	0005049b          	sext.w	s1,a0
    80002e64:	01b00793          	li	a5,27
    80002e68:	04f48463          	beq	s1,a5,80002eb0 <_Z16producerKeyboardPv+0x88>
        printString("key\n");
    80002e6c:	00003517          	auipc	a0,0x3
    80002e70:	35450513          	addi	a0,a0,852 # 800061c0 <_ZZ14__print_uint64mE6digits+0x28>
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	910080e7          	jalr	-1776(ra) # 80002784 <_Z11printStringPKc>
        data->buffer->put(key);
    80002e7c:	00048593          	mv	a1,s1
    80002e80:	00893503          	ld	a0,8(s2)
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	5b8080e7          	jalr	1464(ra) # 8000343c <_ZN6Buffer3putEi>
        i++;
    80002e8c:	0019871b          	addiw	a4,s3,1
    80002e90:	0007099b          	sext.w	s3,a4
        if (i % (10 * data->id) == 0) {
    80002e94:	00092683          	lw	a3,0(s2)
    80002e98:	0026979b          	slliw	a5,a3,0x2
    80002e9c:	00d787bb          	addw	a5,a5,a3
    80002ea0:	0017979b          	slliw	a5,a5,0x1
    80002ea4:	02f767bb          	remw	a5,a4,a5
    80002ea8:	fa0798e3          	bnez	a5,80002e58 <_Z16producerKeyboardPv+0x30>
    80002eac:	fa5ff06f          	j	80002e50 <_Z16producerKeyboardPv+0x28>
        }
    }

    threadEnd = 1;
    80002eb0:	00100793          	li	a5,1
    80002eb4:	00004717          	auipc	a4,0x4
    80002eb8:	5ef72e23          	sw	a5,1532(a4) # 800074b0 <threadEnd>
    data->buffer->put('!');
    80002ebc:	02100593          	li	a1,33
    80002ec0:	00893503          	ld	a0,8(s2)
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	578080e7          	jalr	1400(ra) # 8000343c <_ZN6Buffer3putEi>

    //printInt((uint64)data->wait);

    sem_signal(data->wait);
    80002ecc:	01093503          	ld	a0,16(s2)
    80002ed0:	ffffe097          	auipc	ra,0xffffe
    80002ed4:	19c080e7          	jalr	412(ra) # 8000106c <sem_signal>
}
    80002ed8:	02813083          	ld	ra,40(sp)
    80002edc:	02013403          	ld	s0,32(sp)
    80002ee0:	01813483          	ld	s1,24(sp)
    80002ee4:	01013903          	ld	s2,16(sp)
    80002ee8:	00813983          	ld	s3,8(sp)
    80002eec:	03010113          	addi	sp,sp,48
    80002ef0:	00008067          	ret

0000000080002ef4 <_Z8producerPv>:

void producer(void *arg) {
    80002ef4:	fe010113          	addi	sp,sp,-32
    80002ef8:	00113c23          	sd	ra,24(sp)
    80002efc:	00813823          	sd	s0,16(sp)
    80002f00:	00913423          	sd	s1,8(sp)
    80002f04:	01213023          	sd	s2,0(sp)
    80002f08:	02010413          	addi	s0,sp,32
    80002f0c:	00050493          	mv	s1,a0

    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f10:	00000913          	li	s2,0
    80002f14:	01c0006f          	j	80002f30 <_Z8producerPv+0x3c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            printString("prod\n");
    80002f18:	00003517          	auipc	a0,0x3
    80002f1c:	2b050513          	addi	a0,a0,688 # 800061c8 <_ZZ14__print_uint64mE6digits+0x30>
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	864080e7          	jalr	-1948(ra) # 80002784 <_Z11printStringPKc>
            thread_dispatch();
    80002f28:	ffffe097          	auipc	ra,0xffffe
    80002f2c:	108080e7          	jalr	264(ra) # 80001030 <thread_dispatch>
    while (!threadEnd) {
    80002f30:	00004797          	auipc	a5,0x4
    80002f34:	5807a783          	lw	a5,1408(a5) # 800074b0 <threadEnd>
    80002f38:	02079e63          	bnez	a5,80002f74 <_Z8producerPv+0x80>
        data->buffer->put(data->id + '0');
    80002f3c:	0004a583          	lw	a1,0(s1)
    80002f40:	0305859b          	addiw	a1,a1,48
    80002f44:	0084b503          	ld	a0,8(s1)
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	4f4080e7          	jalr	1268(ra) # 8000343c <_ZN6Buffer3putEi>
        i++;
    80002f50:	0019071b          	addiw	a4,s2,1
    80002f54:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f58:	0004a683          	lw	a3,0(s1)
    80002f5c:	0026979b          	slliw	a5,a3,0x2
    80002f60:	00d787bb          	addw	a5,a5,a3
    80002f64:	0017979b          	slliw	a5,a5,0x1
    80002f68:	02f767bb          	remw	a5,a4,a5
    80002f6c:	fc0792e3          	bnez	a5,80002f30 <_Z8producerPv+0x3c>
    80002f70:	fa9ff06f          	j	80002f18 <_Z8producerPv+0x24>
        }
    }

    //printInt((uint64)data->wait);

    sem_signal(data->wait);
    80002f74:	0104b503          	ld	a0,16(s1)
    80002f78:	ffffe097          	auipc	ra,0xffffe
    80002f7c:	0f4080e7          	jalr	244(ra) # 8000106c <sem_signal>
}
    80002f80:	01813083          	ld	ra,24(sp)
    80002f84:	01013403          	ld	s0,16(sp)
    80002f88:	00813483          	ld	s1,8(sp)
    80002f8c:	00013903          	ld	s2,0(sp)
    80002f90:	02010113          	addi	sp,sp,32
    80002f94:	00008067          	ret

0000000080002f98 <_Z8consumerPv>:

void consumer(void *arg) {
    80002f98:	fd010113          	addi	sp,sp,-48
    80002f9c:	02113423          	sd	ra,40(sp)
    80002fa0:	02813023          	sd	s0,32(sp)
    80002fa4:	00913c23          	sd	s1,24(sp)
    80002fa8:	01213823          	sd	s2,16(sp)
    80002fac:	01313423          	sd	s3,8(sp)
    80002fb0:	03010413          	addi	s0,sp,48
    80002fb4:	00050913          	mv	s2,a0

    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002fb8:	00000993          	li	s3,0
    80002fbc:	02c0006f          	j	80002fe8 <_Z8consumerPv+0x50>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            printString("cons\n");
    80002fc0:	00003517          	auipc	a0,0x3
    80002fc4:	21050513          	addi	a0,a0,528 # 800061d0 <_ZZ14__print_uint64mE6digits+0x38>
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	7bc080e7          	jalr	1980(ra) # 80002784 <_Z11printStringPKc>
            thread_dispatch();
    80002fd0:	ffffe097          	auipc	ra,0xffffe
    80002fd4:	060080e7          	jalr	96(ra) # 80001030 <thread_dispatch>
    80002fd8:	0500006f          	j	80003028 <_Z8consumerPv+0x90>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002fdc:	00a00513          	li	a0,10
    80002fe0:	ffffe097          	auipc	ra,0xffffe
    80002fe4:	0b0080e7          	jalr	176(ra) # 80001090 <putc>
    while (!threadEnd) {
    80002fe8:	00004797          	auipc	a5,0x4
    80002fec:	4c87a783          	lw	a5,1224(a5) # 800074b0 <threadEnd>
    80002ff0:	06079063          	bnez	a5,80003050 <_Z8consumerPv+0xb8>
        int key = data->buffer->get();
    80002ff4:	00893503          	ld	a0,8(s2)
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	4d4080e7          	jalr	1236(ra) # 800034cc <_ZN6Buffer3getEv>
        i++;
    80003000:	0019849b          	addiw	s1,s3,1
    80003004:	0004899b          	sext.w	s3,s1
        putc(key);
    80003008:	0ff57513          	andi	a0,a0,255
    8000300c:	ffffe097          	auipc	ra,0xffffe
    80003010:	084080e7          	jalr	132(ra) # 80001090 <putc>
        if (i % (5 * data->id) == 0) {
    80003014:	00092703          	lw	a4,0(s2)
    80003018:	0027179b          	slliw	a5,a4,0x2
    8000301c:	00e787bb          	addw	a5,a5,a4
    80003020:	02f4e7bb          	remw	a5,s1,a5
    80003024:	f8078ee3          	beqz	a5,80002fc0 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80003028:	05000793          	li	a5,80
    8000302c:	02f4e4bb          	remw	s1,s1,a5
    80003030:	fa049ce3          	bnez	s1,80002fe8 <_Z8consumerPv+0x50>
    80003034:	fa9ff06f          	j	80002fdc <_Z8consumerPv+0x44>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003038:	00893503          	ld	a0,8(s2)
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	490080e7          	jalr	1168(ra) # 800034cc <_ZN6Buffer3getEv>
        putc(key);
    80003044:	0ff57513          	andi	a0,a0,255
    80003048:	ffffe097          	auipc	ra,0xffffe
    8000304c:	048080e7          	jalr	72(ra) # 80001090 <putc>
    while (data->buffer->getCnt() > 0) {
    80003050:	00893503          	ld	a0,8(s2)
    80003054:	00000097          	auipc	ra,0x0
    80003058:	504080e7          	jalr	1284(ra) # 80003558 <_ZN6Buffer6getCntEv>
    8000305c:	fca04ee3          	bgtz	a0,80003038 <_Z8consumerPv+0xa0>
    }

    //printInt((uint64)data->wait);

    sem_signal(data->wait);
    80003060:	01093503          	ld	a0,16(s2)
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	008080e7          	jalr	8(ra) # 8000106c <sem_signal>
}
    8000306c:	02813083          	ld	ra,40(sp)
    80003070:	02013403          	ld	s0,32(sp)
    80003074:	01813483          	ld	s1,24(sp)
    80003078:	01013903          	ld	s2,16(sp)
    8000307c:	00813983          	ld	s3,8(sp)
    80003080:	03010113          	addi	sp,sp,48
    80003084:	00008067          	ret

0000000080003088 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003088:	f9010113          	addi	sp,sp,-112
    8000308c:	06113423          	sd	ra,104(sp)
    80003090:	06813023          	sd	s0,96(sp)
    80003094:	04913c23          	sd	s1,88(sp)
    80003098:	05213823          	sd	s2,80(sp)
    8000309c:	05313423          	sd	s3,72(sp)
    800030a0:	05413023          	sd	s4,64(sp)
    800030a4:	03513c23          	sd	s5,56(sp)
    800030a8:	03613823          	sd	s6,48(sp)
    800030ac:	07010413          	addi	s0,sp,112
    }


    sem_close(waitForAll);

    delete buffer;
    800030b0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800030b4:	00003517          	auipc	a0,0x3
    800030b8:	12450513          	addi	a0,a0,292 # 800061d8 <_ZZ14__print_uint64mE6digits+0x40>
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	6c8080e7          	jalr	1736(ra) # 80002784 <_Z11printStringPKc>
    getString(input, 30);
    800030c4:	01e00593          	li	a1,30
    800030c8:	fa040493          	addi	s1,s0,-96
    800030cc:	00048513          	mv	a0,s1
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	730080e7          	jalr	1840(ra) # 80002800 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800030d8:	00048513          	mv	a0,s1
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	7f0080e7          	jalr	2032(ra) # 800028cc <_Z11stringToIntPKc>
    800030e4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800030e8:	00003517          	auipc	a0,0x3
    800030ec:	11050513          	addi	a0,a0,272 # 800061f8 <_ZZ14__print_uint64mE6digits+0x60>
    800030f0:	fffff097          	auipc	ra,0xfffff
    800030f4:	694080e7          	jalr	1684(ra) # 80002784 <_Z11printStringPKc>
    getString(input, 30);
    800030f8:	01e00593          	li	a1,30
    800030fc:	00048513          	mv	a0,s1
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	700080e7          	jalr	1792(ra) # 80002800 <_Z9getStringPci>
    n = stringToInt(input);
    80003108:	00048513          	mv	a0,s1
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	7c0080e7          	jalr	1984(ra) # 800028cc <_Z11stringToIntPKc>
    80003114:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003118:	00003517          	auipc	a0,0x3
    8000311c:	10050513          	addi	a0,a0,256 # 80006218 <_ZZ14__print_uint64mE6digits+0x80>
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	664080e7          	jalr	1636(ra) # 80002784 <_Z11printStringPKc>
    80003128:	00000613          	li	a2,0
    8000312c:	00a00593          	li	a1,10
    80003130:	00090513          	mv	a0,s2
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	7e8080e7          	jalr	2024(ra) # 8000291c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000313c:	00003517          	auipc	a0,0x3
    80003140:	0f450513          	addi	a0,a0,244 # 80006230 <_ZZ14__print_uint64mE6digits+0x98>
    80003144:	fffff097          	auipc	ra,0xfffff
    80003148:	640080e7          	jalr	1600(ra) # 80002784 <_Z11printStringPKc>
    8000314c:	00000613          	li	a2,0
    80003150:	00a00593          	li	a1,10
    80003154:	00048513          	mv	a0,s1
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	7c4080e7          	jalr	1988(ra) # 8000291c <_Z8printIntiii>
    printString(".\n");
    80003160:	00003517          	auipc	a0,0x3
    80003164:	0e850513          	addi	a0,a0,232 # 80006248 <_ZZ14__print_uint64mE6digits+0xb0>
    80003168:	fffff097          	auipc	ra,0xfffff
    8000316c:	61c080e7          	jalr	1564(ra) # 80002784 <_Z11printStringPKc>
    if(threadNum > n) {
    80003170:	0324c463          	blt	s1,s2,80003198 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003174:	03205c63          	blez	s2,800031ac <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003178:	03800513          	li	a0,56
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	8d0080e7          	jalr	-1840(ra) # 80001a4c <_Znwm>
    80003184:	00050a13          	mv	s4,a0
    80003188:	00048593          	mv	a1,s1
    8000318c:	00000097          	auipc	ra,0x0
    80003190:	214080e7          	jalr	532(ra) # 800033a0 <_ZN6BufferC1Ei>
    80003194:	0300006f          	j	800031c4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003198:	00003517          	auipc	a0,0x3
    8000319c:	0b850513          	addi	a0,a0,184 # 80006250 <_ZZ14__print_uint64mE6digits+0xb8>
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	5e4080e7          	jalr	1508(ra) # 80002784 <_Z11printStringPKc>
        return;
    800031a8:	0140006f          	j	800031bc <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800031ac:	00003517          	auipc	a0,0x3
    800031b0:	0e450513          	addi	a0,a0,228 # 80006290 <_ZZ14__print_uint64mE6digits+0xf8>
    800031b4:	fffff097          	auipc	ra,0xfffff
    800031b8:	5d0080e7          	jalr	1488(ra) # 80002784 <_Z11printStringPKc>
        return;
    800031bc:	000b0113          	mv	sp,s6
    800031c0:	1500006f          	j	80003310 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800031c4:	00000593          	li	a1,0
    800031c8:	00004517          	auipc	a0,0x4
    800031cc:	2f050513          	addi	a0,a0,752 # 800074b8 <waitForAll>
    800031d0:	ffffe097          	auipc	ra,0xffffe
    800031d4:	e78080e7          	jalr	-392(ra) # 80001048 <sem_open>
    thread_t threads[threadNum];
    800031d8:	00391793          	slli	a5,s2,0x3
    800031dc:	00f78793          	addi	a5,a5,15
    800031e0:	ff07f793          	andi	a5,a5,-16
    800031e4:	40f10133          	sub	sp,sp,a5
    800031e8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800031ec:	0019071b          	addiw	a4,s2,1
    800031f0:	00171793          	slli	a5,a4,0x1
    800031f4:	00e787b3          	add	a5,a5,a4
    800031f8:	00379793          	slli	a5,a5,0x3
    800031fc:	00f78793          	addi	a5,a5,15
    80003200:	ff07f793          	andi	a5,a5,-16
    80003204:	40f10133          	sub	sp,sp,a5
    80003208:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000320c:	00191613          	slli	a2,s2,0x1
    80003210:	012607b3          	add	a5,a2,s2
    80003214:	00379793          	slli	a5,a5,0x3
    80003218:	00f987b3          	add	a5,s3,a5
    8000321c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003220:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003224:	00004717          	auipc	a4,0x4
    80003228:	29473703          	ld	a4,660(a4) # 800074b8 <waitForAll>
    8000322c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003230:	00078613          	mv	a2,a5
    80003234:	00000597          	auipc	a1,0x0
    80003238:	d6458593          	addi	a1,a1,-668 # 80002f98 <_Z8consumerPv>
    8000323c:	f9840513          	addi	a0,s0,-104
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	dd8080e7          	jalr	-552(ra) # 80001018 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003248:	00000493          	li	s1,0
    8000324c:	0280006f          	j	80003274 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003250:	00000597          	auipc	a1,0x0
    80003254:	bd858593          	addi	a1,a1,-1064 # 80002e28 <_Z16producerKeyboardPv>
                      data + i);
    80003258:	00179613          	slli	a2,a5,0x1
    8000325c:	00f60633          	add	a2,a2,a5
    80003260:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003264:	00c98633          	add	a2,s3,a2
    80003268:	ffffe097          	auipc	ra,0xffffe
    8000326c:	db0080e7          	jalr	-592(ra) # 80001018 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003270:	0014849b          	addiw	s1,s1,1
    80003274:	0524d263          	bge	s1,s2,800032b8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003278:	00149793          	slli	a5,s1,0x1
    8000327c:	009787b3          	add	a5,a5,s1
    80003280:	00379793          	slli	a5,a5,0x3
    80003284:	00f987b3          	add	a5,s3,a5
    80003288:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000328c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003290:	00004717          	auipc	a4,0x4
    80003294:	22873703          	ld	a4,552(a4) # 800074b8 <waitForAll>
    80003298:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000329c:	00048793          	mv	a5,s1
    800032a0:	00349513          	slli	a0,s1,0x3
    800032a4:	00aa8533          	add	a0,s5,a0
    800032a8:	fa9054e3          	blez	s1,80003250 <_Z22producerConsumer_C_APIv+0x1c8>
    800032ac:	00000597          	auipc	a1,0x0
    800032b0:	c4858593          	addi	a1,a1,-952 # 80002ef4 <_Z8producerPv>
    800032b4:	fa5ff06f          	j	80003258 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800032b8:	ffffe097          	auipc	ra,0xffffe
    800032bc:	d78080e7          	jalr	-648(ra) # 80001030 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    800032c0:	00000493          	li	s1,0
    800032c4:	00994e63          	blt	s2,s1,800032e0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800032c8:	00004517          	auipc	a0,0x4
    800032cc:	1f053503          	ld	a0,496(a0) # 800074b8 <waitForAll>
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	d90080e7          	jalr	-624(ra) # 80001060 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800032d8:	0014849b          	addiw	s1,s1,1
    800032dc:	fe9ff06f          	j	800032c4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800032e0:	00004517          	auipc	a0,0x4
    800032e4:	1d853503          	ld	a0,472(a0) # 800074b8 <waitForAll>
    800032e8:	ffffe097          	auipc	ra,0xffffe
    800032ec:	d6c080e7          	jalr	-660(ra) # 80001054 <sem_close>
    delete buffer;
    800032f0:	000a0e63          	beqz	s4,8000330c <_Z22producerConsumer_C_APIv+0x284>
    800032f4:	000a0513          	mv	a0,s4
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	2e8080e7          	jalr	744(ra) # 800035e0 <_ZN6BufferD1Ev>
    80003300:	000a0513          	mv	a0,s4
    80003304:	ffffe097          	auipc	ra,0xffffe
    80003308:	798080e7          	jalr	1944(ra) # 80001a9c <_ZdlPv>
    8000330c:	000b0113          	mv	sp,s6

}
    80003310:	f9040113          	addi	sp,s0,-112
    80003314:	06813083          	ld	ra,104(sp)
    80003318:	06013403          	ld	s0,96(sp)
    8000331c:	05813483          	ld	s1,88(sp)
    80003320:	05013903          	ld	s2,80(sp)
    80003324:	04813983          	ld	s3,72(sp)
    80003328:	04013a03          	ld	s4,64(sp)
    8000332c:	03813a83          	ld	s5,56(sp)
    80003330:	03013b03          	ld	s6,48(sp)
    80003334:	07010113          	addi	sp,sp,112
    80003338:	00008067          	ret
    8000333c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003340:	000a0513          	mv	a0,s4
    80003344:	ffffe097          	auipc	ra,0xffffe
    80003348:	758080e7          	jalr	1880(ra) # 80001a9c <_ZdlPv>
    8000334c:	00048513          	mv	a0,s1
    80003350:	00005097          	auipc	ra,0x5
    80003354:	238080e7          	jalr	568(ra) # 80008588 <_Unwind_Resume>

0000000080003358 <_Z8userMainv>:

#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"

void userMain() {
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00113423          	sd	ra,8(sp)
    80003360:	00813023          	sd	s0,0(sp)
    80003364:	01010413          	addi	s0,sp,16
    __print_string("I am here!\n");
    80003368:	00003517          	auipc	a0,0x3
    8000336c:	f5850513          	addi	a0,a0,-168 # 800062c0 <_ZZ14__print_uint64mE6digits+0x128>
    80003370:	fffff097          	auipc	ra,0xfffff
    80003374:	2fc080e7          	jalr	764(ra) # 8000266c <_Z14__print_stringPKc>
    //printString("I am here!");
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	d10080e7          	jalr	-752(ra) # 80003088 <_Z22producerConsumer_C_APIv>
    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //__print_string("I am here too!\n");
    //thread_dispatch();
    __print_string("I am here again!\n");
    80003380:	00003517          	auipc	a0,0x3
    80003384:	f5050513          	addi	a0,a0,-176 # 800062d0 <_ZZ14__print_uint64mE6digits+0x138>
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	2e4080e7          	jalr	740(ra) # 8000266c <_Z14__print_stringPKc>
    //thread_exit();
    /*TCB::running->setFinished(true);
    thread_dispatch();*/
    80003390:	00813083          	ld	ra,8(sp)
    80003394:	00013403          	ld	s0,0(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00813823          	sd	s0,16(sp)
    800033ac:	00913423          	sd	s1,8(sp)
    800033b0:	01213023          	sd	s2,0(sp)
    800033b4:	02010413          	addi	s0,sp,32
    800033b8:	00050493          	mv	s1,a0
    800033bc:	00058913          	mv	s2,a1
    800033c0:	0015879b          	addiw	a5,a1,1
    800033c4:	0007851b          	sext.w	a0,a5
    800033c8:	00f4a023          	sw	a5,0(s1)
    800033cc:	0004a823          	sw	zero,16(s1)
    800033d0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800033d4:	00251513          	slli	a0,a0,0x2
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	c28080e7          	jalr	-984(ra) # 80001000 <mem_alloc>
    800033e0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800033e4:	00000593          	li	a1,0
    800033e8:	02048513          	addi	a0,s1,32
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	c5c080e7          	jalr	-932(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    800033f4:	00090593          	mv	a1,s2
    800033f8:	01848513          	addi	a0,s1,24
    800033fc:	ffffe097          	auipc	ra,0xffffe
    80003400:	c4c080e7          	jalr	-948(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    80003404:	00100593          	li	a1,1
    80003408:	02848513          	addi	a0,s1,40
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	c3c080e7          	jalr	-964(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    80003414:	00100593          	li	a1,1
    80003418:	03048513          	addi	a0,s1,48
    8000341c:	ffffe097          	auipc	ra,0xffffe
    80003420:	c2c080e7          	jalr	-980(ra) # 80001048 <sem_open>
}
    80003424:	01813083          	ld	ra,24(sp)
    80003428:	01013403          	ld	s0,16(sp)
    8000342c:	00813483          	ld	s1,8(sp)
    80003430:	00013903          	ld	s2,0(sp)
    80003434:	02010113          	addi	sp,sp,32
    80003438:	00008067          	ret

000000008000343c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00113c23          	sd	ra,24(sp)
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00913423          	sd	s1,8(sp)
    8000344c:	01213023          	sd	s2,0(sp)
    80003450:	02010413          	addi	s0,sp,32
    80003454:	00050493          	mv	s1,a0
    80003458:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000345c:	01853503          	ld	a0,24(a0)
    80003460:	ffffe097          	auipc	ra,0xffffe
    80003464:	c00080e7          	jalr	-1024(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    80003468:	0304b503          	ld	a0,48(s1)
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	bf4080e7          	jalr	-1036(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    80003474:	0084b783          	ld	a5,8(s1)
    80003478:	0144a703          	lw	a4,20(s1)
    8000347c:	00271713          	slli	a4,a4,0x2
    80003480:	00e787b3          	add	a5,a5,a4
    80003484:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003488:	0144a783          	lw	a5,20(s1)
    8000348c:	0017879b          	addiw	a5,a5,1
    80003490:	0004a703          	lw	a4,0(s1)
    80003494:	02e7e7bb          	remw	a5,a5,a4
    80003498:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000349c:	0304b503          	ld	a0,48(s1)
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	bcc080e7          	jalr	-1076(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    800034a8:	0204b503          	ld	a0,32(s1)
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	bc0080e7          	jalr	-1088(ra) # 8000106c <sem_signal>

}
    800034b4:	01813083          	ld	ra,24(sp)
    800034b8:	01013403          	ld	s0,16(sp)
    800034bc:	00813483          	ld	s1,8(sp)
    800034c0:	00013903          	ld	s2,0(sp)
    800034c4:	02010113          	addi	sp,sp,32
    800034c8:	00008067          	ret

00000000800034cc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800034cc:	fe010113          	addi	sp,sp,-32
    800034d0:	00113c23          	sd	ra,24(sp)
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00913423          	sd	s1,8(sp)
    800034dc:	01213023          	sd	s2,0(sp)
    800034e0:	02010413          	addi	s0,sp,32
    800034e4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800034e8:	02053503          	ld	a0,32(a0)
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	b74080e7          	jalr	-1164(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    800034f4:	0284b503          	ld	a0,40(s1)
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	b68080e7          	jalr	-1176(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    80003500:	0084b703          	ld	a4,8(s1)
    80003504:	0104a783          	lw	a5,16(s1)
    80003508:	00279693          	slli	a3,a5,0x2
    8000350c:	00d70733          	add	a4,a4,a3
    80003510:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003514:	0017879b          	addiw	a5,a5,1
    80003518:	0004a703          	lw	a4,0(s1)
    8000351c:	02e7e7bb          	remw	a5,a5,a4
    80003520:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003524:	0284b503          	ld	a0,40(s1)
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	b44080e7          	jalr	-1212(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    80003530:	0184b503          	ld	a0,24(s1)
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	b38080e7          	jalr	-1224(ra) # 8000106c <sem_signal>

    return ret;
}
    8000353c:	00090513          	mv	a0,s2
    80003540:	01813083          	ld	ra,24(sp)
    80003544:	01013403          	ld	s0,16(sp)
    80003548:	00813483          	ld	s1,8(sp)
    8000354c:	00013903          	ld	s2,0(sp)
    80003550:	02010113          	addi	sp,sp,32
    80003554:	00008067          	ret

0000000080003558 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003558:	fe010113          	addi	sp,sp,-32
    8000355c:	00113c23          	sd	ra,24(sp)
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	01213023          	sd	s2,0(sp)
    8000356c:	02010413          	addi	s0,sp,32
    80003570:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003574:	02853503          	ld	a0,40(a0)
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	ae8080e7          	jalr	-1304(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    80003580:	0304b503          	ld	a0,48(s1)
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	adc080e7          	jalr	-1316(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    8000358c:	0144a783          	lw	a5,20(s1)
    80003590:	0104a903          	lw	s2,16(s1)
    80003594:	0327ce63          	blt	a5,s2,800035d0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003598:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000359c:	0304b503          	ld	a0,48(s1)
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	acc080e7          	jalr	-1332(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    800035a8:	0284b503          	ld	a0,40(s1)
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	ac0080e7          	jalr	-1344(ra) # 8000106c <sem_signal>

    return ret;
}
    800035b4:	00090513          	mv	a0,s2
    800035b8:	01813083          	ld	ra,24(sp)
    800035bc:	01013403          	ld	s0,16(sp)
    800035c0:	00813483          	ld	s1,8(sp)
    800035c4:	00013903          	ld	s2,0(sp)
    800035c8:	02010113          	addi	sp,sp,32
    800035cc:	00008067          	ret
        ret = cap - head + tail;
    800035d0:	0004a703          	lw	a4,0(s1)
    800035d4:	4127093b          	subw	s2,a4,s2
    800035d8:	00f9093b          	addw	s2,s2,a5
    800035dc:	fc1ff06f          	j	8000359c <_ZN6Buffer6getCntEv+0x44>

00000000800035e0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800035e0:	fe010113          	addi	sp,sp,-32
    800035e4:	00113c23          	sd	ra,24(sp)
    800035e8:	00813823          	sd	s0,16(sp)
    800035ec:	00913423          	sd	s1,8(sp)
    800035f0:	02010413          	addi	s0,sp,32
    800035f4:	00050493          	mv	s1,a0
    putc('\n');
    800035f8:	00a00513          	li	a0,10
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	a94080e7          	jalr	-1388(ra) # 80001090 <putc>
    printString("Buffer deleted!\n");
    80003604:	00003517          	auipc	a0,0x3
    80003608:	ba450513          	addi	a0,a0,-1116 # 800061a8 <_ZZ14__print_uint64mE6digits+0x10>
    8000360c:	fffff097          	auipc	ra,0xfffff
    80003610:	178080e7          	jalr	376(ra) # 80002784 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003614:	00048513          	mv	a0,s1
    80003618:	00000097          	auipc	ra,0x0
    8000361c:	f40080e7          	jalr	-192(ra) # 80003558 <_ZN6Buffer6getCntEv>
    80003620:	02a05c63          	blez	a0,80003658 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003624:	0084b783          	ld	a5,8(s1)
    80003628:	0104a703          	lw	a4,16(s1)
    8000362c:	00271713          	slli	a4,a4,0x2
    80003630:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003634:	0007c503          	lbu	a0,0(a5)
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	a58080e7          	jalr	-1448(ra) # 80001090 <putc>
        head = (head + 1) % cap;
    80003640:	0104a783          	lw	a5,16(s1)
    80003644:	0017879b          	addiw	a5,a5,1
    80003648:	0004a703          	lw	a4,0(s1)
    8000364c:	02e7e7bb          	remw	a5,a5,a4
    80003650:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003654:	fc1ff06f          	j	80003614 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003658:	02100513          	li	a0,33
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	a34080e7          	jalr	-1484(ra) # 80001090 <putc>
    putc('\n');
    80003664:	00a00513          	li	a0,10
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	a28080e7          	jalr	-1496(ra) # 80001090 <putc>
    mem_free(buffer);
    80003670:	0084b503          	ld	a0,8(s1)
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	998080e7          	jalr	-1640(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    8000367c:	0204b503          	ld	a0,32(s1)
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	9d4080e7          	jalr	-1580(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    80003688:	0184b503          	ld	a0,24(s1)
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	9c8080e7          	jalr	-1592(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    80003694:	0304b503          	ld	a0,48(s1)
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	9bc080e7          	jalr	-1604(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    800036a0:	0284b503          	ld	a0,40(s1)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	9b0080e7          	jalr	-1616(ra) # 80001054 <sem_close>
}
    800036ac:	01813083          	ld	ra,24(sp)
    800036b0:	01013403          	ld	s0,16(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret

00000000800036c0 <start>:
    800036c0:	ff010113          	addi	sp,sp,-16
    800036c4:	00813423          	sd	s0,8(sp)
    800036c8:	01010413          	addi	s0,sp,16
    800036cc:	300027f3          	csrr	a5,mstatus
    800036d0:	ffffe737          	lui	a4,0xffffe
    800036d4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff60df>
    800036d8:	00e7f7b3          	and	a5,a5,a4
    800036dc:	00001737          	lui	a4,0x1
    800036e0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800036e4:	00e7e7b3          	or	a5,a5,a4
    800036e8:	30079073          	csrw	mstatus,a5
    800036ec:	00000797          	auipc	a5,0x0
    800036f0:	16078793          	addi	a5,a5,352 # 8000384c <system_main>
    800036f4:	34179073          	csrw	mepc,a5
    800036f8:	00000793          	li	a5,0
    800036fc:	18079073          	csrw	satp,a5
    80003700:	000107b7          	lui	a5,0x10
    80003704:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003708:	30279073          	csrw	medeleg,a5
    8000370c:	30379073          	csrw	mideleg,a5
    80003710:	104027f3          	csrr	a5,sie
    80003714:	2227e793          	ori	a5,a5,546
    80003718:	10479073          	csrw	sie,a5
    8000371c:	fff00793          	li	a5,-1
    80003720:	00a7d793          	srli	a5,a5,0xa
    80003724:	3b079073          	csrw	pmpaddr0,a5
    80003728:	00f00793          	li	a5,15
    8000372c:	3a079073          	csrw	pmpcfg0,a5
    80003730:	f14027f3          	csrr	a5,mhartid
    80003734:	0200c737          	lui	a4,0x200c
    80003738:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000373c:	0007869b          	sext.w	a3,a5
    80003740:	00269713          	slli	a4,a3,0x2
    80003744:	000f4637          	lui	a2,0xf4
    80003748:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000374c:	00d70733          	add	a4,a4,a3
    80003750:	0037979b          	slliw	a5,a5,0x3
    80003754:	020046b7          	lui	a3,0x2004
    80003758:	00d787b3          	add	a5,a5,a3
    8000375c:	00c585b3          	add	a1,a1,a2
    80003760:	00371693          	slli	a3,a4,0x3
    80003764:	00004717          	auipc	a4,0x4
    80003768:	d5c70713          	addi	a4,a4,-676 # 800074c0 <timer_scratch>
    8000376c:	00b7b023          	sd	a1,0(a5)
    80003770:	00d70733          	add	a4,a4,a3
    80003774:	00f73c23          	sd	a5,24(a4)
    80003778:	02c73023          	sd	a2,32(a4)
    8000377c:	34071073          	csrw	mscratch,a4
    80003780:	00000797          	auipc	a5,0x0
    80003784:	6e078793          	addi	a5,a5,1760 # 80003e60 <timervec>
    80003788:	30579073          	csrw	mtvec,a5
    8000378c:	300027f3          	csrr	a5,mstatus
    80003790:	0087e793          	ori	a5,a5,8
    80003794:	30079073          	csrw	mstatus,a5
    80003798:	304027f3          	csrr	a5,mie
    8000379c:	0807e793          	ori	a5,a5,128
    800037a0:	30479073          	csrw	mie,a5
    800037a4:	f14027f3          	csrr	a5,mhartid
    800037a8:	0007879b          	sext.w	a5,a5
    800037ac:	00078213          	mv	tp,a5
    800037b0:	30200073          	mret
    800037b4:	00813403          	ld	s0,8(sp)
    800037b8:	01010113          	addi	sp,sp,16
    800037bc:	00008067          	ret

00000000800037c0 <timerinit>:
    800037c0:	ff010113          	addi	sp,sp,-16
    800037c4:	00813423          	sd	s0,8(sp)
    800037c8:	01010413          	addi	s0,sp,16
    800037cc:	f14027f3          	csrr	a5,mhartid
    800037d0:	0200c737          	lui	a4,0x200c
    800037d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800037d8:	0007869b          	sext.w	a3,a5
    800037dc:	00269713          	slli	a4,a3,0x2
    800037e0:	000f4637          	lui	a2,0xf4
    800037e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800037e8:	00d70733          	add	a4,a4,a3
    800037ec:	0037979b          	slliw	a5,a5,0x3
    800037f0:	020046b7          	lui	a3,0x2004
    800037f4:	00d787b3          	add	a5,a5,a3
    800037f8:	00c585b3          	add	a1,a1,a2
    800037fc:	00371693          	slli	a3,a4,0x3
    80003800:	00004717          	auipc	a4,0x4
    80003804:	cc070713          	addi	a4,a4,-832 # 800074c0 <timer_scratch>
    80003808:	00b7b023          	sd	a1,0(a5)
    8000380c:	00d70733          	add	a4,a4,a3
    80003810:	00f73c23          	sd	a5,24(a4)
    80003814:	02c73023          	sd	a2,32(a4)
    80003818:	34071073          	csrw	mscratch,a4
    8000381c:	00000797          	auipc	a5,0x0
    80003820:	64478793          	addi	a5,a5,1604 # 80003e60 <timervec>
    80003824:	30579073          	csrw	mtvec,a5
    80003828:	300027f3          	csrr	a5,mstatus
    8000382c:	0087e793          	ori	a5,a5,8
    80003830:	30079073          	csrw	mstatus,a5
    80003834:	304027f3          	csrr	a5,mie
    80003838:	0807e793          	ori	a5,a5,128
    8000383c:	30479073          	csrw	mie,a5
    80003840:	00813403          	ld	s0,8(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <system_main>:
    8000384c:	fe010113          	addi	sp,sp,-32
    80003850:	00813823          	sd	s0,16(sp)
    80003854:	00913423          	sd	s1,8(sp)
    80003858:	00113c23          	sd	ra,24(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00000097          	auipc	ra,0x0
    80003864:	0c4080e7          	jalr	196(ra) # 80003924 <cpuid>
    80003868:	00004497          	auipc	s1,0x4
    8000386c:	bd848493          	addi	s1,s1,-1064 # 80007440 <started>
    80003870:	02050263          	beqz	a0,80003894 <system_main+0x48>
    80003874:	0004a783          	lw	a5,0(s1)
    80003878:	0007879b          	sext.w	a5,a5
    8000387c:	fe078ce3          	beqz	a5,80003874 <system_main+0x28>
    80003880:	0ff0000f          	fence
    80003884:	00003517          	auipc	a0,0x3
    80003888:	a9450513          	addi	a0,a0,-1388 # 80006318 <_ZZ14__print_uint64mE6digits+0x180>
    8000388c:	00001097          	auipc	ra,0x1
    80003890:	a70080e7          	jalr	-1424(ra) # 800042fc <panic>
    80003894:	00001097          	auipc	ra,0x1
    80003898:	9c4080e7          	jalr	-1596(ra) # 80004258 <consoleinit>
    8000389c:	00001097          	auipc	ra,0x1
    800038a0:	150080e7          	jalr	336(ra) # 800049ec <printfinit>
    800038a4:	00003517          	auipc	a0,0x3
    800038a8:	a3c50513          	addi	a0,a0,-1476 # 800062e0 <_ZZ14__print_uint64mE6digits+0x148>
    800038ac:	00001097          	auipc	ra,0x1
    800038b0:	aac080e7          	jalr	-1364(ra) # 80004358 <__printf>
    800038b4:	00003517          	auipc	a0,0x3
    800038b8:	a3450513          	addi	a0,a0,-1484 # 800062e8 <_ZZ14__print_uint64mE6digits+0x150>
    800038bc:	00001097          	auipc	ra,0x1
    800038c0:	a9c080e7          	jalr	-1380(ra) # 80004358 <__printf>
    800038c4:	00003517          	auipc	a0,0x3
    800038c8:	a1c50513          	addi	a0,a0,-1508 # 800062e0 <_ZZ14__print_uint64mE6digits+0x148>
    800038cc:	00001097          	auipc	ra,0x1
    800038d0:	a8c080e7          	jalr	-1396(ra) # 80004358 <__printf>
    800038d4:	00001097          	auipc	ra,0x1
    800038d8:	4a4080e7          	jalr	1188(ra) # 80004d78 <kinit>
    800038dc:	00000097          	auipc	ra,0x0
    800038e0:	148080e7          	jalr	328(ra) # 80003a24 <trapinit>
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	16c080e7          	jalr	364(ra) # 80003a50 <trapinithart>
    800038ec:	00000097          	auipc	ra,0x0
    800038f0:	5b4080e7          	jalr	1460(ra) # 80003ea0 <plicinit>
    800038f4:	00000097          	auipc	ra,0x0
    800038f8:	5d4080e7          	jalr	1492(ra) # 80003ec8 <plicinithart>
    800038fc:	00000097          	auipc	ra,0x0
    80003900:	078080e7          	jalr	120(ra) # 80003974 <userinit>
    80003904:	0ff0000f          	fence
    80003908:	00100793          	li	a5,1
    8000390c:	00003517          	auipc	a0,0x3
    80003910:	9f450513          	addi	a0,a0,-1548 # 80006300 <_ZZ14__print_uint64mE6digits+0x168>
    80003914:	00f4a023          	sw	a5,0(s1)
    80003918:	00001097          	auipc	ra,0x1
    8000391c:	a40080e7          	jalr	-1472(ra) # 80004358 <__printf>
    80003920:	0000006f          	j	80003920 <system_main+0xd4>

0000000080003924 <cpuid>:
    80003924:	ff010113          	addi	sp,sp,-16
    80003928:	00813423          	sd	s0,8(sp)
    8000392c:	01010413          	addi	s0,sp,16
    80003930:	00020513          	mv	a0,tp
    80003934:	00813403          	ld	s0,8(sp)
    80003938:	0005051b          	sext.w	a0,a0
    8000393c:	01010113          	addi	sp,sp,16
    80003940:	00008067          	ret

0000000080003944 <mycpu>:
    80003944:	ff010113          	addi	sp,sp,-16
    80003948:	00813423          	sd	s0,8(sp)
    8000394c:	01010413          	addi	s0,sp,16
    80003950:	00020793          	mv	a5,tp
    80003954:	00813403          	ld	s0,8(sp)
    80003958:	0007879b          	sext.w	a5,a5
    8000395c:	00779793          	slli	a5,a5,0x7
    80003960:	00005517          	auipc	a0,0x5
    80003964:	b9050513          	addi	a0,a0,-1136 # 800084f0 <cpus>
    80003968:	00f50533          	add	a0,a0,a5
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret

0000000080003974 <userinit>:
    80003974:	ff010113          	addi	sp,sp,-16
    80003978:	00813423          	sd	s0,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	00813403          	ld	s0,8(sp)
    80003984:	01010113          	addi	sp,sp,16
    80003988:	ffffe317          	auipc	t1,0xffffe
    8000398c:	d8430067          	jr	-636(t1) # 8000170c <main>

0000000080003990 <either_copyout>:
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00813023          	sd	s0,0(sp)
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	01010413          	addi	s0,sp,16
    800039a0:	02051663          	bnez	a0,800039cc <either_copyout+0x3c>
    800039a4:	00058513          	mv	a0,a1
    800039a8:	00060593          	mv	a1,a2
    800039ac:	0006861b          	sext.w	a2,a3
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	c54080e7          	jalr	-940(ra) # 80005604 <__memmove>
    800039b8:	00813083          	ld	ra,8(sp)
    800039bc:	00013403          	ld	s0,0(sp)
    800039c0:	00000513          	li	a0,0
    800039c4:	01010113          	addi	sp,sp,16
    800039c8:	00008067          	ret
    800039cc:	00003517          	auipc	a0,0x3
    800039d0:	97450513          	addi	a0,a0,-1676 # 80006340 <_ZZ14__print_uint64mE6digits+0x1a8>
    800039d4:	00001097          	auipc	ra,0x1
    800039d8:	928080e7          	jalr	-1752(ra) # 800042fc <panic>

00000000800039dc <either_copyin>:
    800039dc:	ff010113          	addi	sp,sp,-16
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	00113423          	sd	ra,8(sp)
    800039e8:	01010413          	addi	s0,sp,16
    800039ec:	02059463          	bnez	a1,80003a14 <either_copyin+0x38>
    800039f0:	00060593          	mv	a1,a2
    800039f4:	0006861b          	sext.w	a2,a3
    800039f8:	00002097          	auipc	ra,0x2
    800039fc:	c0c080e7          	jalr	-1012(ra) # 80005604 <__memmove>
    80003a00:	00813083          	ld	ra,8(sp)
    80003a04:	00013403          	ld	s0,0(sp)
    80003a08:	00000513          	li	a0,0
    80003a0c:	01010113          	addi	sp,sp,16
    80003a10:	00008067          	ret
    80003a14:	00003517          	auipc	a0,0x3
    80003a18:	95450513          	addi	a0,a0,-1708 # 80006368 <_ZZ14__print_uint64mE6digits+0x1d0>
    80003a1c:	00001097          	auipc	ra,0x1
    80003a20:	8e0080e7          	jalr	-1824(ra) # 800042fc <panic>

0000000080003a24 <trapinit>:
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00813423          	sd	s0,8(sp)
    80003a2c:	01010413          	addi	s0,sp,16
    80003a30:	00813403          	ld	s0,8(sp)
    80003a34:	00003597          	auipc	a1,0x3
    80003a38:	95c58593          	addi	a1,a1,-1700 # 80006390 <_ZZ14__print_uint64mE6digits+0x1f8>
    80003a3c:	00005517          	auipc	a0,0x5
    80003a40:	b3450513          	addi	a0,a0,-1228 # 80008570 <tickslock>
    80003a44:	01010113          	addi	sp,sp,16
    80003a48:	00001317          	auipc	t1,0x1
    80003a4c:	5c030067          	jr	1472(t1) # 80005008 <initlock>

0000000080003a50 <trapinithart>:
    80003a50:	ff010113          	addi	sp,sp,-16
    80003a54:	00813423          	sd	s0,8(sp)
    80003a58:	01010413          	addi	s0,sp,16
    80003a5c:	00000797          	auipc	a5,0x0
    80003a60:	2f478793          	addi	a5,a5,756 # 80003d50 <kernelvec>
    80003a64:	10579073          	csrw	stvec,a5
    80003a68:	00813403          	ld	s0,8(sp)
    80003a6c:	01010113          	addi	sp,sp,16
    80003a70:	00008067          	ret

0000000080003a74 <usertrap>:
    80003a74:	ff010113          	addi	sp,sp,-16
    80003a78:	00813423          	sd	s0,8(sp)
    80003a7c:	01010413          	addi	s0,sp,16
    80003a80:	00813403          	ld	s0,8(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <usertrapret>:
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00813423          	sd	s0,8(sp)
    80003a94:	01010413          	addi	s0,sp,16
    80003a98:	00813403          	ld	s0,8(sp)
    80003a9c:	01010113          	addi	sp,sp,16
    80003aa0:	00008067          	ret

0000000080003aa4 <kerneltrap>:
    80003aa4:	fe010113          	addi	sp,sp,-32
    80003aa8:	00813823          	sd	s0,16(sp)
    80003aac:	00113c23          	sd	ra,24(sp)
    80003ab0:	00913423          	sd	s1,8(sp)
    80003ab4:	02010413          	addi	s0,sp,32
    80003ab8:	142025f3          	csrr	a1,scause
    80003abc:	100027f3          	csrr	a5,sstatus
    80003ac0:	0027f793          	andi	a5,a5,2
    80003ac4:	10079c63          	bnez	a5,80003bdc <kerneltrap+0x138>
    80003ac8:	142027f3          	csrr	a5,scause
    80003acc:	0207ce63          	bltz	a5,80003b08 <kerneltrap+0x64>
    80003ad0:	00003517          	auipc	a0,0x3
    80003ad4:	90850513          	addi	a0,a0,-1784 # 800063d8 <_ZZ14__print_uint64mE6digits+0x240>
    80003ad8:	00001097          	auipc	ra,0x1
    80003adc:	880080e7          	jalr	-1920(ra) # 80004358 <__printf>
    80003ae0:	141025f3          	csrr	a1,sepc
    80003ae4:	14302673          	csrr	a2,stval
    80003ae8:	00003517          	auipc	a0,0x3
    80003aec:	90050513          	addi	a0,a0,-1792 # 800063e8 <_ZZ14__print_uint64mE6digits+0x250>
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	868080e7          	jalr	-1944(ra) # 80004358 <__printf>
    80003af8:	00003517          	auipc	a0,0x3
    80003afc:	90850513          	addi	a0,a0,-1784 # 80006400 <_ZZ14__print_uint64mE6digits+0x268>
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	7fc080e7          	jalr	2044(ra) # 800042fc <panic>
    80003b08:	0ff7f713          	andi	a4,a5,255
    80003b0c:	00900693          	li	a3,9
    80003b10:	04d70063          	beq	a4,a3,80003b50 <kerneltrap+0xac>
    80003b14:	fff00713          	li	a4,-1
    80003b18:	03f71713          	slli	a4,a4,0x3f
    80003b1c:	00170713          	addi	a4,a4,1
    80003b20:	fae798e3          	bne	a5,a4,80003ad0 <kerneltrap+0x2c>
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	e00080e7          	jalr	-512(ra) # 80003924 <cpuid>
    80003b2c:	06050663          	beqz	a0,80003b98 <kerneltrap+0xf4>
    80003b30:	144027f3          	csrr	a5,sip
    80003b34:	ffd7f793          	andi	a5,a5,-3
    80003b38:	14479073          	csrw	sip,a5
    80003b3c:	01813083          	ld	ra,24(sp)
    80003b40:	01013403          	ld	s0,16(sp)
    80003b44:	00813483          	ld	s1,8(sp)
    80003b48:	02010113          	addi	sp,sp,32
    80003b4c:	00008067          	ret
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	3c4080e7          	jalr	964(ra) # 80003f14 <plic_claim>
    80003b58:	00a00793          	li	a5,10
    80003b5c:	00050493          	mv	s1,a0
    80003b60:	06f50863          	beq	a0,a5,80003bd0 <kerneltrap+0x12c>
    80003b64:	fc050ce3          	beqz	a0,80003b3c <kerneltrap+0x98>
    80003b68:	00050593          	mv	a1,a0
    80003b6c:	00003517          	auipc	a0,0x3
    80003b70:	84c50513          	addi	a0,a0,-1972 # 800063b8 <_ZZ14__print_uint64mE6digits+0x220>
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	7e4080e7          	jalr	2020(ra) # 80004358 <__printf>
    80003b7c:	01013403          	ld	s0,16(sp)
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	00048513          	mv	a0,s1
    80003b88:	00813483          	ld	s1,8(sp)
    80003b8c:	02010113          	addi	sp,sp,32
    80003b90:	00000317          	auipc	t1,0x0
    80003b94:	3bc30067          	jr	956(t1) # 80003f4c <plic_complete>
    80003b98:	00005517          	auipc	a0,0x5
    80003b9c:	9d850513          	addi	a0,a0,-1576 # 80008570 <tickslock>
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	48c080e7          	jalr	1164(ra) # 8000502c <acquire>
    80003ba8:	00004717          	auipc	a4,0x4
    80003bac:	89c70713          	addi	a4,a4,-1892 # 80007444 <ticks>
    80003bb0:	00072783          	lw	a5,0(a4)
    80003bb4:	00005517          	auipc	a0,0x5
    80003bb8:	9bc50513          	addi	a0,a0,-1604 # 80008570 <tickslock>
    80003bbc:	0017879b          	addiw	a5,a5,1
    80003bc0:	00f72023          	sw	a5,0(a4)
    80003bc4:	00001097          	auipc	ra,0x1
    80003bc8:	534080e7          	jalr	1332(ra) # 800050f8 <release>
    80003bcc:	f65ff06f          	j	80003b30 <kerneltrap+0x8c>
    80003bd0:	00001097          	auipc	ra,0x1
    80003bd4:	090080e7          	jalr	144(ra) # 80004c60 <uartintr>
    80003bd8:	fa5ff06f          	j	80003b7c <kerneltrap+0xd8>
    80003bdc:	00002517          	auipc	a0,0x2
    80003be0:	7bc50513          	addi	a0,a0,1980 # 80006398 <_ZZ14__print_uint64mE6digits+0x200>
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	718080e7          	jalr	1816(ra) # 800042fc <panic>

0000000080003bec <clockintr>:
    80003bec:	fe010113          	addi	sp,sp,-32
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00913423          	sd	s1,8(sp)
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	02010413          	addi	s0,sp,32
    80003c00:	00005497          	auipc	s1,0x5
    80003c04:	97048493          	addi	s1,s1,-1680 # 80008570 <tickslock>
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	420080e7          	jalr	1056(ra) # 8000502c <acquire>
    80003c14:	00004717          	auipc	a4,0x4
    80003c18:	83070713          	addi	a4,a4,-2000 # 80007444 <ticks>
    80003c1c:	00072783          	lw	a5,0(a4)
    80003c20:	01013403          	ld	s0,16(sp)
    80003c24:	01813083          	ld	ra,24(sp)
    80003c28:	00048513          	mv	a0,s1
    80003c2c:	0017879b          	addiw	a5,a5,1
    80003c30:	00813483          	ld	s1,8(sp)
    80003c34:	00f72023          	sw	a5,0(a4)
    80003c38:	02010113          	addi	sp,sp,32
    80003c3c:	00001317          	auipc	t1,0x1
    80003c40:	4bc30067          	jr	1212(t1) # 800050f8 <release>

0000000080003c44 <devintr>:
    80003c44:	142027f3          	csrr	a5,scause
    80003c48:	00000513          	li	a0,0
    80003c4c:	0007c463          	bltz	a5,80003c54 <devintr+0x10>
    80003c50:	00008067          	ret
    80003c54:	fe010113          	addi	sp,sp,-32
    80003c58:	00813823          	sd	s0,16(sp)
    80003c5c:	00113c23          	sd	ra,24(sp)
    80003c60:	00913423          	sd	s1,8(sp)
    80003c64:	02010413          	addi	s0,sp,32
    80003c68:	0ff7f713          	andi	a4,a5,255
    80003c6c:	00900693          	li	a3,9
    80003c70:	04d70c63          	beq	a4,a3,80003cc8 <devintr+0x84>
    80003c74:	fff00713          	li	a4,-1
    80003c78:	03f71713          	slli	a4,a4,0x3f
    80003c7c:	00170713          	addi	a4,a4,1
    80003c80:	00e78c63          	beq	a5,a4,80003c98 <devintr+0x54>
    80003c84:	01813083          	ld	ra,24(sp)
    80003c88:	01013403          	ld	s0,16(sp)
    80003c8c:	00813483          	ld	s1,8(sp)
    80003c90:	02010113          	addi	sp,sp,32
    80003c94:	00008067          	ret
    80003c98:	00000097          	auipc	ra,0x0
    80003c9c:	c8c080e7          	jalr	-884(ra) # 80003924 <cpuid>
    80003ca0:	06050663          	beqz	a0,80003d0c <devintr+0xc8>
    80003ca4:	144027f3          	csrr	a5,sip
    80003ca8:	ffd7f793          	andi	a5,a5,-3
    80003cac:	14479073          	csrw	sip,a5
    80003cb0:	01813083          	ld	ra,24(sp)
    80003cb4:	01013403          	ld	s0,16(sp)
    80003cb8:	00813483          	ld	s1,8(sp)
    80003cbc:	00200513          	li	a0,2
    80003cc0:	02010113          	addi	sp,sp,32
    80003cc4:	00008067          	ret
    80003cc8:	00000097          	auipc	ra,0x0
    80003ccc:	24c080e7          	jalr	588(ra) # 80003f14 <plic_claim>
    80003cd0:	00a00793          	li	a5,10
    80003cd4:	00050493          	mv	s1,a0
    80003cd8:	06f50663          	beq	a0,a5,80003d44 <devintr+0x100>
    80003cdc:	00100513          	li	a0,1
    80003ce0:	fa0482e3          	beqz	s1,80003c84 <devintr+0x40>
    80003ce4:	00048593          	mv	a1,s1
    80003ce8:	00002517          	auipc	a0,0x2
    80003cec:	6d050513          	addi	a0,a0,1744 # 800063b8 <_ZZ14__print_uint64mE6digits+0x220>
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	668080e7          	jalr	1640(ra) # 80004358 <__printf>
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	250080e7          	jalr	592(ra) # 80003f4c <plic_complete>
    80003d04:	00100513          	li	a0,1
    80003d08:	f7dff06f          	j	80003c84 <devintr+0x40>
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	86450513          	addi	a0,a0,-1948 # 80008570 <tickslock>
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	318080e7          	jalr	792(ra) # 8000502c <acquire>
    80003d1c:	00003717          	auipc	a4,0x3
    80003d20:	72870713          	addi	a4,a4,1832 # 80007444 <ticks>
    80003d24:	00072783          	lw	a5,0(a4)
    80003d28:	00005517          	auipc	a0,0x5
    80003d2c:	84850513          	addi	a0,a0,-1976 # 80008570 <tickslock>
    80003d30:	0017879b          	addiw	a5,a5,1
    80003d34:	00f72023          	sw	a5,0(a4)
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	3c0080e7          	jalr	960(ra) # 800050f8 <release>
    80003d40:	f65ff06f          	j	80003ca4 <devintr+0x60>
    80003d44:	00001097          	auipc	ra,0x1
    80003d48:	f1c080e7          	jalr	-228(ra) # 80004c60 <uartintr>
    80003d4c:	fadff06f          	j	80003cf8 <devintr+0xb4>

0000000080003d50 <kernelvec>:
    80003d50:	f0010113          	addi	sp,sp,-256
    80003d54:	00113023          	sd	ra,0(sp)
    80003d58:	00213423          	sd	sp,8(sp)
    80003d5c:	00313823          	sd	gp,16(sp)
    80003d60:	00413c23          	sd	tp,24(sp)
    80003d64:	02513023          	sd	t0,32(sp)
    80003d68:	02613423          	sd	t1,40(sp)
    80003d6c:	02713823          	sd	t2,48(sp)
    80003d70:	02813c23          	sd	s0,56(sp)
    80003d74:	04913023          	sd	s1,64(sp)
    80003d78:	04a13423          	sd	a0,72(sp)
    80003d7c:	04b13823          	sd	a1,80(sp)
    80003d80:	04c13c23          	sd	a2,88(sp)
    80003d84:	06d13023          	sd	a3,96(sp)
    80003d88:	06e13423          	sd	a4,104(sp)
    80003d8c:	06f13823          	sd	a5,112(sp)
    80003d90:	07013c23          	sd	a6,120(sp)
    80003d94:	09113023          	sd	a7,128(sp)
    80003d98:	09213423          	sd	s2,136(sp)
    80003d9c:	09313823          	sd	s3,144(sp)
    80003da0:	09413c23          	sd	s4,152(sp)
    80003da4:	0b513023          	sd	s5,160(sp)
    80003da8:	0b613423          	sd	s6,168(sp)
    80003dac:	0b713823          	sd	s7,176(sp)
    80003db0:	0b813c23          	sd	s8,184(sp)
    80003db4:	0d913023          	sd	s9,192(sp)
    80003db8:	0da13423          	sd	s10,200(sp)
    80003dbc:	0db13823          	sd	s11,208(sp)
    80003dc0:	0dc13c23          	sd	t3,216(sp)
    80003dc4:	0fd13023          	sd	t4,224(sp)
    80003dc8:	0fe13423          	sd	t5,232(sp)
    80003dcc:	0ff13823          	sd	t6,240(sp)
    80003dd0:	cd5ff0ef          	jal	ra,80003aa4 <kerneltrap>
    80003dd4:	00013083          	ld	ra,0(sp)
    80003dd8:	00813103          	ld	sp,8(sp)
    80003ddc:	01013183          	ld	gp,16(sp)
    80003de0:	02013283          	ld	t0,32(sp)
    80003de4:	02813303          	ld	t1,40(sp)
    80003de8:	03013383          	ld	t2,48(sp)
    80003dec:	03813403          	ld	s0,56(sp)
    80003df0:	04013483          	ld	s1,64(sp)
    80003df4:	04813503          	ld	a0,72(sp)
    80003df8:	05013583          	ld	a1,80(sp)
    80003dfc:	05813603          	ld	a2,88(sp)
    80003e00:	06013683          	ld	a3,96(sp)
    80003e04:	06813703          	ld	a4,104(sp)
    80003e08:	07013783          	ld	a5,112(sp)
    80003e0c:	07813803          	ld	a6,120(sp)
    80003e10:	08013883          	ld	a7,128(sp)
    80003e14:	08813903          	ld	s2,136(sp)
    80003e18:	09013983          	ld	s3,144(sp)
    80003e1c:	09813a03          	ld	s4,152(sp)
    80003e20:	0a013a83          	ld	s5,160(sp)
    80003e24:	0a813b03          	ld	s6,168(sp)
    80003e28:	0b013b83          	ld	s7,176(sp)
    80003e2c:	0b813c03          	ld	s8,184(sp)
    80003e30:	0c013c83          	ld	s9,192(sp)
    80003e34:	0c813d03          	ld	s10,200(sp)
    80003e38:	0d013d83          	ld	s11,208(sp)
    80003e3c:	0d813e03          	ld	t3,216(sp)
    80003e40:	0e013e83          	ld	t4,224(sp)
    80003e44:	0e813f03          	ld	t5,232(sp)
    80003e48:	0f013f83          	ld	t6,240(sp)
    80003e4c:	10010113          	addi	sp,sp,256
    80003e50:	10200073          	sret
    80003e54:	00000013          	nop
    80003e58:	00000013          	nop
    80003e5c:	00000013          	nop

0000000080003e60 <timervec>:
    80003e60:	34051573          	csrrw	a0,mscratch,a0
    80003e64:	00b53023          	sd	a1,0(a0)
    80003e68:	00c53423          	sd	a2,8(a0)
    80003e6c:	00d53823          	sd	a3,16(a0)
    80003e70:	01853583          	ld	a1,24(a0)
    80003e74:	02053603          	ld	a2,32(a0)
    80003e78:	0005b683          	ld	a3,0(a1)
    80003e7c:	00c686b3          	add	a3,a3,a2
    80003e80:	00d5b023          	sd	a3,0(a1)
    80003e84:	00200593          	li	a1,2
    80003e88:	14459073          	csrw	sip,a1
    80003e8c:	01053683          	ld	a3,16(a0)
    80003e90:	00853603          	ld	a2,8(a0)
    80003e94:	00053583          	ld	a1,0(a0)
    80003e98:	34051573          	csrrw	a0,mscratch,a0
    80003e9c:	30200073          	mret

0000000080003ea0 <plicinit>:
    80003ea0:	ff010113          	addi	sp,sp,-16
    80003ea4:	00813423          	sd	s0,8(sp)
    80003ea8:	01010413          	addi	s0,sp,16
    80003eac:	00813403          	ld	s0,8(sp)
    80003eb0:	0c0007b7          	lui	a5,0xc000
    80003eb4:	00100713          	li	a4,1
    80003eb8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003ebc:	00e7a223          	sw	a4,4(a5)
    80003ec0:	01010113          	addi	sp,sp,16
    80003ec4:	00008067          	ret

0000000080003ec8 <plicinithart>:
    80003ec8:	ff010113          	addi	sp,sp,-16
    80003ecc:	00813023          	sd	s0,0(sp)
    80003ed0:	00113423          	sd	ra,8(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	a4c080e7          	jalr	-1460(ra) # 80003924 <cpuid>
    80003ee0:	0085171b          	slliw	a4,a0,0x8
    80003ee4:	0c0027b7          	lui	a5,0xc002
    80003ee8:	00e787b3          	add	a5,a5,a4
    80003eec:	40200713          	li	a4,1026
    80003ef0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003ef4:	00813083          	ld	ra,8(sp)
    80003ef8:	00013403          	ld	s0,0(sp)
    80003efc:	00d5151b          	slliw	a0,a0,0xd
    80003f00:	0c2017b7          	lui	a5,0xc201
    80003f04:	00a78533          	add	a0,a5,a0
    80003f08:	00052023          	sw	zero,0(a0)
    80003f0c:	01010113          	addi	sp,sp,16
    80003f10:	00008067          	ret

0000000080003f14 <plic_claim>:
    80003f14:	ff010113          	addi	sp,sp,-16
    80003f18:	00813023          	sd	s0,0(sp)
    80003f1c:	00113423          	sd	ra,8(sp)
    80003f20:	01010413          	addi	s0,sp,16
    80003f24:	00000097          	auipc	ra,0x0
    80003f28:	a00080e7          	jalr	-1536(ra) # 80003924 <cpuid>
    80003f2c:	00813083          	ld	ra,8(sp)
    80003f30:	00013403          	ld	s0,0(sp)
    80003f34:	00d5151b          	slliw	a0,a0,0xd
    80003f38:	0c2017b7          	lui	a5,0xc201
    80003f3c:	00a78533          	add	a0,a5,a0
    80003f40:	00452503          	lw	a0,4(a0)
    80003f44:	01010113          	addi	sp,sp,16
    80003f48:	00008067          	ret

0000000080003f4c <plic_complete>:
    80003f4c:	fe010113          	addi	sp,sp,-32
    80003f50:	00813823          	sd	s0,16(sp)
    80003f54:	00913423          	sd	s1,8(sp)
    80003f58:	00113c23          	sd	ra,24(sp)
    80003f5c:	02010413          	addi	s0,sp,32
    80003f60:	00050493          	mv	s1,a0
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	9c0080e7          	jalr	-1600(ra) # 80003924 <cpuid>
    80003f6c:	01813083          	ld	ra,24(sp)
    80003f70:	01013403          	ld	s0,16(sp)
    80003f74:	00d5179b          	slliw	a5,a0,0xd
    80003f78:	0c201737          	lui	a4,0xc201
    80003f7c:	00f707b3          	add	a5,a4,a5
    80003f80:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	02010113          	addi	sp,sp,32
    80003f8c:	00008067          	ret

0000000080003f90 <consolewrite>:
    80003f90:	fb010113          	addi	sp,sp,-80
    80003f94:	04813023          	sd	s0,64(sp)
    80003f98:	04113423          	sd	ra,72(sp)
    80003f9c:	02913c23          	sd	s1,56(sp)
    80003fa0:	03213823          	sd	s2,48(sp)
    80003fa4:	03313423          	sd	s3,40(sp)
    80003fa8:	03413023          	sd	s4,32(sp)
    80003fac:	01513c23          	sd	s5,24(sp)
    80003fb0:	05010413          	addi	s0,sp,80
    80003fb4:	06c05c63          	blez	a2,8000402c <consolewrite+0x9c>
    80003fb8:	00060993          	mv	s3,a2
    80003fbc:	00050a13          	mv	s4,a0
    80003fc0:	00058493          	mv	s1,a1
    80003fc4:	00000913          	li	s2,0
    80003fc8:	fff00a93          	li	s5,-1
    80003fcc:	01c0006f          	j	80003fe8 <consolewrite+0x58>
    80003fd0:	fbf44503          	lbu	a0,-65(s0)
    80003fd4:	0019091b          	addiw	s2,s2,1
    80003fd8:	00148493          	addi	s1,s1,1
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	a9c080e7          	jalr	-1380(ra) # 80004a78 <uartputc>
    80003fe4:	03298063          	beq	s3,s2,80004004 <consolewrite+0x74>
    80003fe8:	00048613          	mv	a2,s1
    80003fec:	00100693          	li	a3,1
    80003ff0:	000a0593          	mv	a1,s4
    80003ff4:	fbf40513          	addi	a0,s0,-65
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	9e4080e7          	jalr	-1564(ra) # 800039dc <either_copyin>
    80004000:	fd5518e3          	bne	a0,s5,80003fd0 <consolewrite+0x40>
    80004004:	04813083          	ld	ra,72(sp)
    80004008:	04013403          	ld	s0,64(sp)
    8000400c:	03813483          	ld	s1,56(sp)
    80004010:	02813983          	ld	s3,40(sp)
    80004014:	02013a03          	ld	s4,32(sp)
    80004018:	01813a83          	ld	s5,24(sp)
    8000401c:	00090513          	mv	a0,s2
    80004020:	03013903          	ld	s2,48(sp)
    80004024:	05010113          	addi	sp,sp,80
    80004028:	00008067          	ret
    8000402c:	00000913          	li	s2,0
    80004030:	fd5ff06f          	j	80004004 <consolewrite+0x74>

0000000080004034 <consoleread>:
    80004034:	f9010113          	addi	sp,sp,-112
    80004038:	06813023          	sd	s0,96(sp)
    8000403c:	04913c23          	sd	s1,88(sp)
    80004040:	05213823          	sd	s2,80(sp)
    80004044:	05313423          	sd	s3,72(sp)
    80004048:	05413023          	sd	s4,64(sp)
    8000404c:	03513c23          	sd	s5,56(sp)
    80004050:	03613823          	sd	s6,48(sp)
    80004054:	03713423          	sd	s7,40(sp)
    80004058:	03813023          	sd	s8,32(sp)
    8000405c:	06113423          	sd	ra,104(sp)
    80004060:	01913c23          	sd	s9,24(sp)
    80004064:	07010413          	addi	s0,sp,112
    80004068:	00060b93          	mv	s7,a2
    8000406c:	00050913          	mv	s2,a0
    80004070:	00058c13          	mv	s8,a1
    80004074:	00060b1b          	sext.w	s6,a2
    80004078:	00004497          	auipc	s1,0x4
    8000407c:	52048493          	addi	s1,s1,1312 # 80008598 <cons>
    80004080:	00400993          	li	s3,4
    80004084:	fff00a13          	li	s4,-1
    80004088:	00a00a93          	li	s5,10
    8000408c:	05705e63          	blez	s7,800040e8 <consoleread+0xb4>
    80004090:	09c4a703          	lw	a4,156(s1)
    80004094:	0984a783          	lw	a5,152(s1)
    80004098:	0007071b          	sext.w	a4,a4
    8000409c:	08e78463          	beq	a5,a4,80004124 <consoleread+0xf0>
    800040a0:	07f7f713          	andi	a4,a5,127
    800040a4:	00e48733          	add	a4,s1,a4
    800040a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800040ac:	0017869b          	addiw	a3,a5,1
    800040b0:	08d4ac23          	sw	a3,152(s1)
    800040b4:	00070c9b          	sext.w	s9,a4
    800040b8:	0b370663          	beq	a4,s3,80004164 <consoleread+0x130>
    800040bc:	00100693          	li	a3,1
    800040c0:	f9f40613          	addi	a2,s0,-97
    800040c4:	000c0593          	mv	a1,s8
    800040c8:	00090513          	mv	a0,s2
    800040cc:	f8e40fa3          	sb	a4,-97(s0)
    800040d0:	00000097          	auipc	ra,0x0
    800040d4:	8c0080e7          	jalr	-1856(ra) # 80003990 <either_copyout>
    800040d8:	01450863          	beq	a0,s4,800040e8 <consoleread+0xb4>
    800040dc:	001c0c13          	addi	s8,s8,1
    800040e0:	fffb8b9b          	addiw	s7,s7,-1
    800040e4:	fb5c94e3          	bne	s9,s5,8000408c <consoleread+0x58>
    800040e8:	000b851b          	sext.w	a0,s7
    800040ec:	06813083          	ld	ra,104(sp)
    800040f0:	06013403          	ld	s0,96(sp)
    800040f4:	05813483          	ld	s1,88(sp)
    800040f8:	05013903          	ld	s2,80(sp)
    800040fc:	04813983          	ld	s3,72(sp)
    80004100:	04013a03          	ld	s4,64(sp)
    80004104:	03813a83          	ld	s5,56(sp)
    80004108:	02813b83          	ld	s7,40(sp)
    8000410c:	02013c03          	ld	s8,32(sp)
    80004110:	01813c83          	ld	s9,24(sp)
    80004114:	40ab053b          	subw	a0,s6,a0
    80004118:	03013b03          	ld	s6,48(sp)
    8000411c:	07010113          	addi	sp,sp,112
    80004120:	00008067          	ret
    80004124:	00001097          	auipc	ra,0x1
    80004128:	1d8080e7          	jalr	472(ra) # 800052fc <push_on>
    8000412c:	0984a703          	lw	a4,152(s1)
    80004130:	09c4a783          	lw	a5,156(s1)
    80004134:	0007879b          	sext.w	a5,a5
    80004138:	fef70ce3          	beq	a4,a5,80004130 <consoleread+0xfc>
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	234080e7          	jalr	564(ra) # 80005370 <pop_on>
    80004144:	0984a783          	lw	a5,152(s1)
    80004148:	07f7f713          	andi	a4,a5,127
    8000414c:	00e48733          	add	a4,s1,a4
    80004150:	01874703          	lbu	a4,24(a4)
    80004154:	0017869b          	addiw	a3,a5,1
    80004158:	08d4ac23          	sw	a3,152(s1)
    8000415c:	00070c9b          	sext.w	s9,a4
    80004160:	f5371ee3          	bne	a4,s3,800040bc <consoleread+0x88>
    80004164:	000b851b          	sext.w	a0,s7
    80004168:	f96bf2e3          	bgeu	s7,s6,800040ec <consoleread+0xb8>
    8000416c:	08f4ac23          	sw	a5,152(s1)
    80004170:	f7dff06f          	j	800040ec <consoleread+0xb8>

0000000080004174 <consputc>:
    80004174:	10000793          	li	a5,256
    80004178:	00f50663          	beq	a0,a5,80004184 <consputc+0x10>
    8000417c:	00001317          	auipc	t1,0x1
    80004180:	9f430067          	jr	-1548(t1) # 80004b70 <uartputc_sync>
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
    80004194:	00800513          	li	a0,8
    80004198:	00001097          	auipc	ra,0x1
    8000419c:	9d8080e7          	jalr	-1576(ra) # 80004b70 <uartputc_sync>
    800041a0:	02000513          	li	a0,32
    800041a4:	00001097          	auipc	ra,0x1
    800041a8:	9cc080e7          	jalr	-1588(ra) # 80004b70 <uartputc_sync>
    800041ac:	00013403          	ld	s0,0(sp)
    800041b0:	00813083          	ld	ra,8(sp)
    800041b4:	00800513          	li	a0,8
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00001317          	auipc	t1,0x1
    800041c0:	9b430067          	jr	-1612(t1) # 80004b70 <uartputc_sync>

00000000800041c4 <consoleintr>:
    800041c4:	fe010113          	addi	sp,sp,-32
    800041c8:	00813823          	sd	s0,16(sp)
    800041cc:	00913423          	sd	s1,8(sp)
    800041d0:	01213023          	sd	s2,0(sp)
    800041d4:	00113c23          	sd	ra,24(sp)
    800041d8:	02010413          	addi	s0,sp,32
    800041dc:	00004917          	auipc	s2,0x4
    800041e0:	3bc90913          	addi	s2,s2,956 # 80008598 <cons>
    800041e4:	00050493          	mv	s1,a0
    800041e8:	00090513          	mv	a0,s2
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	e40080e7          	jalr	-448(ra) # 8000502c <acquire>
    800041f4:	02048c63          	beqz	s1,8000422c <consoleintr+0x68>
    800041f8:	0a092783          	lw	a5,160(s2)
    800041fc:	09892703          	lw	a4,152(s2)
    80004200:	07f00693          	li	a3,127
    80004204:	40e7873b          	subw	a4,a5,a4
    80004208:	02e6e263          	bltu	a3,a4,8000422c <consoleintr+0x68>
    8000420c:	00d00713          	li	a4,13
    80004210:	04e48063          	beq	s1,a4,80004250 <consoleintr+0x8c>
    80004214:	07f7f713          	andi	a4,a5,127
    80004218:	00e90733          	add	a4,s2,a4
    8000421c:	0017879b          	addiw	a5,a5,1
    80004220:	0af92023          	sw	a5,160(s2)
    80004224:	00970c23          	sb	s1,24(a4)
    80004228:	08f92e23          	sw	a5,156(s2)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	01813083          	ld	ra,24(sp)
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	00013903          	ld	s2,0(sp)
    8000423c:	00004517          	auipc	a0,0x4
    80004240:	35c50513          	addi	a0,a0,860 # 80008598 <cons>
    80004244:	02010113          	addi	sp,sp,32
    80004248:	00001317          	auipc	t1,0x1
    8000424c:	eb030067          	jr	-336(t1) # 800050f8 <release>
    80004250:	00a00493          	li	s1,10
    80004254:	fc1ff06f          	j	80004214 <consoleintr+0x50>

0000000080004258 <consoleinit>:
    80004258:	fe010113          	addi	sp,sp,-32
    8000425c:	00113c23          	sd	ra,24(sp)
    80004260:	00813823          	sd	s0,16(sp)
    80004264:	00913423          	sd	s1,8(sp)
    80004268:	02010413          	addi	s0,sp,32
    8000426c:	00004497          	auipc	s1,0x4
    80004270:	32c48493          	addi	s1,s1,812 # 80008598 <cons>
    80004274:	00048513          	mv	a0,s1
    80004278:	00002597          	auipc	a1,0x2
    8000427c:	19858593          	addi	a1,a1,408 # 80006410 <_ZZ14__print_uint64mE6digits+0x278>
    80004280:	00001097          	auipc	ra,0x1
    80004284:	d88080e7          	jalr	-632(ra) # 80005008 <initlock>
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	7ac080e7          	jalr	1964(ra) # 80004a34 <uartinit>
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	00000797          	auipc	a5,0x0
    8000429c:	d9c78793          	addi	a5,a5,-612 # 80004034 <consoleread>
    800042a0:	0af4bc23          	sd	a5,184(s1)
    800042a4:	00000797          	auipc	a5,0x0
    800042a8:	cec78793          	addi	a5,a5,-788 # 80003f90 <consolewrite>
    800042ac:	0cf4b023          	sd	a5,192(s1)
    800042b0:	00813483          	ld	s1,8(sp)
    800042b4:	02010113          	addi	sp,sp,32
    800042b8:	00008067          	ret

00000000800042bc <console_read>:
    800042bc:	ff010113          	addi	sp,sp,-16
    800042c0:	00813423          	sd	s0,8(sp)
    800042c4:	01010413          	addi	s0,sp,16
    800042c8:	00813403          	ld	s0,8(sp)
    800042cc:	00004317          	auipc	t1,0x4
    800042d0:	38433303          	ld	t1,900(t1) # 80008650 <devsw+0x10>
    800042d4:	01010113          	addi	sp,sp,16
    800042d8:	00030067          	jr	t1

00000000800042dc <console_write>:
    800042dc:	ff010113          	addi	sp,sp,-16
    800042e0:	00813423          	sd	s0,8(sp)
    800042e4:	01010413          	addi	s0,sp,16
    800042e8:	00813403          	ld	s0,8(sp)
    800042ec:	00004317          	auipc	t1,0x4
    800042f0:	36c33303          	ld	t1,876(t1) # 80008658 <devsw+0x18>
    800042f4:	01010113          	addi	sp,sp,16
    800042f8:	00030067          	jr	t1

00000000800042fc <panic>:
    800042fc:	fe010113          	addi	sp,sp,-32
    80004300:	00113c23          	sd	ra,24(sp)
    80004304:	00813823          	sd	s0,16(sp)
    80004308:	00913423          	sd	s1,8(sp)
    8000430c:	02010413          	addi	s0,sp,32
    80004310:	00050493          	mv	s1,a0
    80004314:	00002517          	auipc	a0,0x2
    80004318:	10450513          	addi	a0,a0,260 # 80006418 <_ZZ14__print_uint64mE6digits+0x280>
    8000431c:	00004797          	auipc	a5,0x4
    80004320:	3c07ae23          	sw	zero,988(a5) # 800086f8 <pr+0x18>
    80004324:	00000097          	auipc	ra,0x0
    80004328:	034080e7          	jalr	52(ra) # 80004358 <__printf>
    8000432c:	00048513          	mv	a0,s1
    80004330:	00000097          	auipc	ra,0x0
    80004334:	028080e7          	jalr	40(ra) # 80004358 <__printf>
    80004338:	00002517          	auipc	a0,0x2
    8000433c:	fa850513          	addi	a0,a0,-88 # 800062e0 <_ZZ14__print_uint64mE6digits+0x148>
    80004340:	00000097          	auipc	ra,0x0
    80004344:	018080e7          	jalr	24(ra) # 80004358 <__printf>
    80004348:	00100793          	li	a5,1
    8000434c:	00003717          	auipc	a4,0x3
    80004350:	0ef72e23          	sw	a5,252(a4) # 80007448 <panicked>
    80004354:	0000006f          	j	80004354 <panic+0x58>

0000000080004358 <__printf>:
    80004358:	f3010113          	addi	sp,sp,-208
    8000435c:	08813023          	sd	s0,128(sp)
    80004360:	07313423          	sd	s3,104(sp)
    80004364:	09010413          	addi	s0,sp,144
    80004368:	05813023          	sd	s8,64(sp)
    8000436c:	08113423          	sd	ra,136(sp)
    80004370:	06913c23          	sd	s1,120(sp)
    80004374:	07213823          	sd	s2,112(sp)
    80004378:	07413023          	sd	s4,96(sp)
    8000437c:	05513c23          	sd	s5,88(sp)
    80004380:	05613823          	sd	s6,80(sp)
    80004384:	05713423          	sd	s7,72(sp)
    80004388:	03913c23          	sd	s9,56(sp)
    8000438c:	03a13823          	sd	s10,48(sp)
    80004390:	03b13423          	sd	s11,40(sp)
    80004394:	00004317          	auipc	t1,0x4
    80004398:	34c30313          	addi	t1,t1,844 # 800086e0 <pr>
    8000439c:	01832c03          	lw	s8,24(t1)
    800043a0:	00b43423          	sd	a1,8(s0)
    800043a4:	00c43823          	sd	a2,16(s0)
    800043a8:	00d43c23          	sd	a3,24(s0)
    800043ac:	02e43023          	sd	a4,32(s0)
    800043b0:	02f43423          	sd	a5,40(s0)
    800043b4:	03043823          	sd	a6,48(s0)
    800043b8:	03143c23          	sd	a7,56(s0)
    800043bc:	00050993          	mv	s3,a0
    800043c0:	4a0c1663          	bnez	s8,8000486c <__printf+0x514>
    800043c4:	60098c63          	beqz	s3,800049dc <__printf+0x684>
    800043c8:	0009c503          	lbu	a0,0(s3)
    800043cc:	00840793          	addi	a5,s0,8
    800043d0:	f6f43c23          	sd	a5,-136(s0)
    800043d4:	00000493          	li	s1,0
    800043d8:	22050063          	beqz	a0,800045f8 <__printf+0x2a0>
    800043dc:	00002a37          	lui	s4,0x2
    800043e0:	00018ab7          	lui	s5,0x18
    800043e4:	000f4b37          	lui	s6,0xf4
    800043e8:	00989bb7          	lui	s7,0x989
    800043ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800043f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800043f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800043f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800043fc:	00148c9b          	addiw	s9,s1,1
    80004400:	02500793          	li	a5,37
    80004404:	01998933          	add	s2,s3,s9
    80004408:	38f51263          	bne	a0,a5,8000478c <__printf+0x434>
    8000440c:	00094783          	lbu	a5,0(s2)
    80004410:	00078c9b          	sext.w	s9,a5
    80004414:	1e078263          	beqz	a5,800045f8 <__printf+0x2a0>
    80004418:	0024849b          	addiw	s1,s1,2
    8000441c:	07000713          	li	a4,112
    80004420:	00998933          	add	s2,s3,s1
    80004424:	38e78a63          	beq	a5,a4,800047b8 <__printf+0x460>
    80004428:	20f76863          	bltu	a4,a5,80004638 <__printf+0x2e0>
    8000442c:	42a78863          	beq	a5,a0,8000485c <__printf+0x504>
    80004430:	06400713          	li	a4,100
    80004434:	40e79663          	bne	a5,a4,80004840 <__printf+0x4e8>
    80004438:	f7843783          	ld	a5,-136(s0)
    8000443c:	0007a603          	lw	a2,0(a5)
    80004440:	00878793          	addi	a5,a5,8
    80004444:	f6f43c23          	sd	a5,-136(s0)
    80004448:	42064a63          	bltz	a2,8000487c <__printf+0x524>
    8000444c:	00a00713          	li	a4,10
    80004450:	02e677bb          	remuw	a5,a2,a4
    80004454:	00002d97          	auipc	s11,0x2
    80004458:	fecd8d93          	addi	s11,s11,-20 # 80006440 <digits>
    8000445c:	00900593          	li	a1,9
    80004460:	0006051b          	sext.w	a0,a2
    80004464:	00000c93          	li	s9,0
    80004468:	02079793          	slli	a5,a5,0x20
    8000446c:	0207d793          	srli	a5,a5,0x20
    80004470:	00fd87b3          	add	a5,s11,a5
    80004474:	0007c783          	lbu	a5,0(a5)
    80004478:	02e656bb          	divuw	a3,a2,a4
    8000447c:	f8f40023          	sb	a5,-128(s0)
    80004480:	14c5d863          	bge	a1,a2,800045d0 <__printf+0x278>
    80004484:	06300593          	li	a1,99
    80004488:	00100c93          	li	s9,1
    8000448c:	02e6f7bb          	remuw	a5,a3,a4
    80004490:	02079793          	slli	a5,a5,0x20
    80004494:	0207d793          	srli	a5,a5,0x20
    80004498:	00fd87b3          	add	a5,s11,a5
    8000449c:	0007c783          	lbu	a5,0(a5)
    800044a0:	02e6d73b          	divuw	a4,a3,a4
    800044a4:	f8f400a3          	sb	a5,-127(s0)
    800044a8:	12a5f463          	bgeu	a1,a0,800045d0 <__printf+0x278>
    800044ac:	00a00693          	li	a3,10
    800044b0:	00900593          	li	a1,9
    800044b4:	02d777bb          	remuw	a5,a4,a3
    800044b8:	02079793          	slli	a5,a5,0x20
    800044bc:	0207d793          	srli	a5,a5,0x20
    800044c0:	00fd87b3          	add	a5,s11,a5
    800044c4:	0007c503          	lbu	a0,0(a5)
    800044c8:	02d757bb          	divuw	a5,a4,a3
    800044cc:	f8a40123          	sb	a0,-126(s0)
    800044d0:	48e5f263          	bgeu	a1,a4,80004954 <__printf+0x5fc>
    800044d4:	06300513          	li	a0,99
    800044d8:	02d7f5bb          	remuw	a1,a5,a3
    800044dc:	02059593          	slli	a1,a1,0x20
    800044e0:	0205d593          	srli	a1,a1,0x20
    800044e4:	00bd85b3          	add	a1,s11,a1
    800044e8:	0005c583          	lbu	a1,0(a1)
    800044ec:	02d7d7bb          	divuw	a5,a5,a3
    800044f0:	f8b401a3          	sb	a1,-125(s0)
    800044f4:	48e57263          	bgeu	a0,a4,80004978 <__printf+0x620>
    800044f8:	3e700513          	li	a0,999
    800044fc:	02d7f5bb          	remuw	a1,a5,a3
    80004500:	02059593          	slli	a1,a1,0x20
    80004504:	0205d593          	srli	a1,a1,0x20
    80004508:	00bd85b3          	add	a1,s11,a1
    8000450c:	0005c583          	lbu	a1,0(a1)
    80004510:	02d7d7bb          	divuw	a5,a5,a3
    80004514:	f8b40223          	sb	a1,-124(s0)
    80004518:	46e57663          	bgeu	a0,a4,80004984 <__printf+0x62c>
    8000451c:	02d7f5bb          	remuw	a1,a5,a3
    80004520:	02059593          	slli	a1,a1,0x20
    80004524:	0205d593          	srli	a1,a1,0x20
    80004528:	00bd85b3          	add	a1,s11,a1
    8000452c:	0005c583          	lbu	a1,0(a1)
    80004530:	02d7d7bb          	divuw	a5,a5,a3
    80004534:	f8b402a3          	sb	a1,-123(s0)
    80004538:	46ea7863          	bgeu	s4,a4,800049a8 <__printf+0x650>
    8000453c:	02d7f5bb          	remuw	a1,a5,a3
    80004540:	02059593          	slli	a1,a1,0x20
    80004544:	0205d593          	srli	a1,a1,0x20
    80004548:	00bd85b3          	add	a1,s11,a1
    8000454c:	0005c583          	lbu	a1,0(a1)
    80004550:	02d7d7bb          	divuw	a5,a5,a3
    80004554:	f8b40323          	sb	a1,-122(s0)
    80004558:	3eeaf863          	bgeu	s5,a4,80004948 <__printf+0x5f0>
    8000455c:	02d7f5bb          	remuw	a1,a5,a3
    80004560:	02059593          	slli	a1,a1,0x20
    80004564:	0205d593          	srli	a1,a1,0x20
    80004568:	00bd85b3          	add	a1,s11,a1
    8000456c:	0005c583          	lbu	a1,0(a1)
    80004570:	02d7d7bb          	divuw	a5,a5,a3
    80004574:	f8b403a3          	sb	a1,-121(s0)
    80004578:	42eb7e63          	bgeu	s6,a4,800049b4 <__printf+0x65c>
    8000457c:	02d7f5bb          	remuw	a1,a5,a3
    80004580:	02059593          	slli	a1,a1,0x20
    80004584:	0205d593          	srli	a1,a1,0x20
    80004588:	00bd85b3          	add	a1,s11,a1
    8000458c:	0005c583          	lbu	a1,0(a1)
    80004590:	02d7d7bb          	divuw	a5,a5,a3
    80004594:	f8b40423          	sb	a1,-120(s0)
    80004598:	42ebfc63          	bgeu	s7,a4,800049d0 <__printf+0x678>
    8000459c:	02079793          	slli	a5,a5,0x20
    800045a0:	0207d793          	srli	a5,a5,0x20
    800045a4:	00fd8db3          	add	s11,s11,a5
    800045a8:	000dc703          	lbu	a4,0(s11)
    800045ac:	00a00793          	li	a5,10
    800045b0:	00900c93          	li	s9,9
    800045b4:	f8e404a3          	sb	a4,-119(s0)
    800045b8:	00065c63          	bgez	a2,800045d0 <__printf+0x278>
    800045bc:	f9040713          	addi	a4,s0,-112
    800045c0:	00f70733          	add	a4,a4,a5
    800045c4:	02d00693          	li	a3,45
    800045c8:	fed70823          	sb	a3,-16(a4)
    800045cc:	00078c93          	mv	s9,a5
    800045d0:	f8040793          	addi	a5,s0,-128
    800045d4:	01978cb3          	add	s9,a5,s9
    800045d8:	f7f40d13          	addi	s10,s0,-129
    800045dc:	000cc503          	lbu	a0,0(s9)
    800045e0:	fffc8c93          	addi	s9,s9,-1
    800045e4:	00000097          	auipc	ra,0x0
    800045e8:	b90080e7          	jalr	-1136(ra) # 80004174 <consputc>
    800045ec:	ffac98e3          	bne	s9,s10,800045dc <__printf+0x284>
    800045f0:	00094503          	lbu	a0,0(s2)
    800045f4:	e00514e3          	bnez	a0,800043fc <__printf+0xa4>
    800045f8:	1a0c1663          	bnez	s8,800047a4 <__printf+0x44c>
    800045fc:	08813083          	ld	ra,136(sp)
    80004600:	08013403          	ld	s0,128(sp)
    80004604:	07813483          	ld	s1,120(sp)
    80004608:	07013903          	ld	s2,112(sp)
    8000460c:	06813983          	ld	s3,104(sp)
    80004610:	06013a03          	ld	s4,96(sp)
    80004614:	05813a83          	ld	s5,88(sp)
    80004618:	05013b03          	ld	s6,80(sp)
    8000461c:	04813b83          	ld	s7,72(sp)
    80004620:	04013c03          	ld	s8,64(sp)
    80004624:	03813c83          	ld	s9,56(sp)
    80004628:	03013d03          	ld	s10,48(sp)
    8000462c:	02813d83          	ld	s11,40(sp)
    80004630:	0d010113          	addi	sp,sp,208
    80004634:	00008067          	ret
    80004638:	07300713          	li	a4,115
    8000463c:	1ce78a63          	beq	a5,a4,80004810 <__printf+0x4b8>
    80004640:	07800713          	li	a4,120
    80004644:	1ee79e63          	bne	a5,a4,80004840 <__printf+0x4e8>
    80004648:	f7843783          	ld	a5,-136(s0)
    8000464c:	0007a703          	lw	a4,0(a5)
    80004650:	00878793          	addi	a5,a5,8
    80004654:	f6f43c23          	sd	a5,-136(s0)
    80004658:	28074263          	bltz	a4,800048dc <__printf+0x584>
    8000465c:	00002d97          	auipc	s11,0x2
    80004660:	de4d8d93          	addi	s11,s11,-540 # 80006440 <digits>
    80004664:	00f77793          	andi	a5,a4,15
    80004668:	00fd87b3          	add	a5,s11,a5
    8000466c:	0007c683          	lbu	a3,0(a5)
    80004670:	00f00613          	li	a2,15
    80004674:	0007079b          	sext.w	a5,a4
    80004678:	f8d40023          	sb	a3,-128(s0)
    8000467c:	0047559b          	srliw	a1,a4,0x4
    80004680:	0047569b          	srliw	a3,a4,0x4
    80004684:	00000c93          	li	s9,0
    80004688:	0ee65063          	bge	a2,a4,80004768 <__printf+0x410>
    8000468c:	00f6f693          	andi	a3,a3,15
    80004690:	00dd86b3          	add	a3,s11,a3
    80004694:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004698:	0087d79b          	srliw	a5,a5,0x8
    8000469c:	00100c93          	li	s9,1
    800046a0:	f8d400a3          	sb	a3,-127(s0)
    800046a4:	0cb67263          	bgeu	a2,a1,80004768 <__printf+0x410>
    800046a8:	00f7f693          	andi	a3,a5,15
    800046ac:	00dd86b3          	add	a3,s11,a3
    800046b0:	0006c583          	lbu	a1,0(a3)
    800046b4:	00f00613          	li	a2,15
    800046b8:	0047d69b          	srliw	a3,a5,0x4
    800046bc:	f8b40123          	sb	a1,-126(s0)
    800046c0:	0047d593          	srli	a1,a5,0x4
    800046c4:	28f67e63          	bgeu	a2,a5,80004960 <__printf+0x608>
    800046c8:	00f6f693          	andi	a3,a3,15
    800046cc:	00dd86b3          	add	a3,s11,a3
    800046d0:	0006c503          	lbu	a0,0(a3)
    800046d4:	0087d813          	srli	a6,a5,0x8
    800046d8:	0087d69b          	srliw	a3,a5,0x8
    800046dc:	f8a401a3          	sb	a0,-125(s0)
    800046e0:	28b67663          	bgeu	a2,a1,8000496c <__printf+0x614>
    800046e4:	00f6f693          	andi	a3,a3,15
    800046e8:	00dd86b3          	add	a3,s11,a3
    800046ec:	0006c583          	lbu	a1,0(a3)
    800046f0:	00c7d513          	srli	a0,a5,0xc
    800046f4:	00c7d69b          	srliw	a3,a5,0xc
    800046f8:	f8b40223          	sb	a1,-124(s0)
    800046fc:	29067a63          	bgeu	a2,a6,80004990 <__printf+0x638>
    80004700:	00f6f693          	andi	a3,a3,15
    80004704:	00dd86b3          	add	a3,s11,a3
    80004708:	0006c583          	lbu	a1,0(a3)
    8000470c:	0107d813          	srli	a6,a5,0x10
    80004710:	0107d69b          	srliw	a3,a5,0x10
    80004714:	f8b402a3          	sb	a1,-123(s0)
    80004718:	28a67263          	bgeu	a2,a0,8000499c <__printf+0x644>
    8000471c:	00f6f693          	andi	a3,a3,15
    80004720:	00dd86b3          	add	a3,s11,a3
    80004724:	0006c683          	lbu	a3,0(a3)
    80004728:	0147d79b          	srliw	a5,a5,0x14
    8000472c:	f8d40323          	sb	a3,-122(s0)
    80004730:	21067663          	bgeu	a2,a6,8000493c <__printf+0x5e4>
    80004734:	02079793          	slli	a5,a5,0x20
    80004738:	0207d793          	srli	a5,a5,0x20
    8000473c:	00fd8db3          	add	s11,s11,a5
    80004740:	000dc683          	lbu	a3,0(s11)
    80004744:	00800793          	li	a5,8
    80004748:	00700c93          	li	s9,7
    8000474c:	f8d403a3          	sb	a3,-121(s0)
    80004750:	00075c63          	bgez	a4,80004768 <__printf+0x410>
    80004754:	f9040713          	addi	a4,s0,-112
    80004758:	00f70733          	add	a4,a4,a5
    8000475c:	02d00693          	li	a3,45
    80004760:	fed70823          	sb	a3,-16(a4)
    80004764:	00078c93          	mv	s9,a5
    80004768:	f8040793          	addi	a5,s0,-128
    8000476c:	01978cb3          	add	s9,a5,s9
    80004770:	f7f40d13          	addi	s10,s0,-129
    80004774:	000cc503          	lbu	a0,0(s9)
    80004778:	fffc8c93          	addi	s9,s9,-1
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	9f8080e7          	jalr	-1544(ra) # 80004174 <consputc>
    80004784:	ff9d18e3          	bne	s10,s9,80004774 <__printf+0x41c>
    80004788:	0100006f          	j	80004798 <__printf+0x440>
    8000478c:	00000097          	auipc	ra,0x0
    80004790:	9e8080e7          	jalr	-1560(ra) # 80004174 <consputc>
    80004794:	000c8493          	mv	s1,s9
    80004798:	00094503          	lbu	a0,0(s2)
    8000479c:	c60510e3          	bnez	a0,800043fc <__printf+0xa4>
    800047a0:	e40c0ee3          	beqz	s8,800045fc <__printf+0x2a4>
    800047a4:	00004517          	auipc	a0,0x4
    800047a8:	f3c50513          	addi	a0,a0,-196 # 800086e0 <pr>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	94c080e7          	jalr	-1716(ra) # 800050f8 <release>
    800047b4:	e49ff06f          	j	800045fc <__printf+0x2a4>
    800047b8:	f7843783          	ld	a5,-136(s0)
    800047bc:	03000513          	li	a0,48
    800047c0:	01000d13          	li	s10,16
    800047c4:	00878713          	addi	a4,a5,8
    800047c8:	0007bc83          	ld	s9,0(a5)
    800047cc:	f6e43c23          	sd	a4,-136(s0)
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	9a4080e7          	jalr	-1628(ra) # 80004174 <consputc>
    800047d8:	07800513          	li	a0,120
    800047dc:	00000097          	auipc	ra,0x0
    800047e0:	998080e7          	jalr	-1640(ra) # 80004174 <consputc>
    800047e4:	00002d97          	auipc	s11,0x2
    800047e8:	c5cd8d93          	addi	s11,s11,-932 # 80006440 <digits>
    800047ec:	03ccd793          	srli	a5,s9,0x3c
    800047f0:	00fd87b3          	add	a5,s11,a5
    800047f4:	0007c503          	lbu	a0,0(a5)
    800047f8:	fffd0d1b          	addiw	s10,s10,-1
    800047fc:	004c9c93          	slli	s9,s9,0x4
    80004800:	00000097          	auipc	ra,0x0
    80004804:	974080e7          	jalr	-1676(ra) # 80004174 <consputc>
    80004808:	fe0d12e3          	bnez	s10,800047ec <__printf+0x494>
    8000480c:	f8dff06f          	j	80004798 <__printf+0x440>
    80004810:	f7843783          	ld	a5,-136(s0)
    80004814:	0007bc83          	ld	s9,0(a5)
    80004818:	00878793          	addi	a5,a5,8
    8000481c:	f6f43c23          	sd	a5,-136(s0)
    80004820:	000c9a63          	bnez	s9,80004834 <__printf+0x4dc>
    80004824:	1080006f          	j	8000492c <__printf+0x5d4>
    80004828:	001c8c93          	addi	s9,s9,1
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	948080e7          	jalr	-1720(ra) # 80004174 <consputc>
    80004834:	000cc503          	lbu	a0,0(s9)
    80004838:	fe0518e3          	bnez	a0,80004828 <__printf+0x4d0>
    8000483c:	f5dff06f          	j	80004798 <__printf+0x440>
    80004840:	02500513          	li	a0,37
    80004844:	00000097          	auipc	ra,0x0
    80004848:	930080e7          	jalr	-1744(ra) # 80004174 <consputc>
    8000484c:	000c8513          	mv	a0,s9
    80004850:	00000097          	auipc	ra,0x0
    80004854:	924080e7          	jalr	-1756(ra) # 80004174 <consputc>
    80004858:	f41ff06f          	j	80004798 <__printf+0x440>
    8000485c:	02500513          	li	a0,37
    80004860:	00000097          	auipc	ra,0x0
    80004864:	914080e7          	jalr	-1772(ra) # 80004174 <consputc>
    80004868:	f31ff06f          	j	80004798 <__printf+0x440>
    8000486c:	00030513          	mv	a0,t1
    80004870:	00000097          	auipc	ra,0x0
    80004874:	7bc080e7          	jalr	1980(ra) # 8000502c <acquire>
    80004878:	b4dff06f          	j	800043c4 <__printf+0x6c>
    8000487c:	40c0053b          	negw	a0,a2
    80004880:	00a00713          	li	a4,10
    80004884:	02e576bb          	remuw	a3,a0,a4
    80004888:	00002d97          	auipc	s11,0x2
    8000488c:	bb8d8d93          	addi	s11,s11,-1096 # 80006440 <digits>
    80004890:	ff700593          	li	a1,-9
    80004894:	02069693          	slli	a3,a3,0x20
    80004898:	0206d693          	srli	a3,a3,0x20
    8000489c:	00dd86b3          	add	a3,s11,a3
    800048a0:	0006c683          	lbu	a3,0(a3)
    800048a4:	02e557bb          	divuw	a5,a0,a4
    800048a8:	f8d40023          	sb	a3,-128(s0)
    800048ac:	10b65e63          	bge	a2,a1,800049c8 <__printf+0x670>
    800048b0:	06300593          	li	a1,99
    800048b4:	02e7f6bb          	remuw	a3,a5,a4
    800048b8:	02069693          	slli	a3,a3,0x20
    800048bc:	0206d693          	srli	a3,a3,0x20
    800048c0:	00dd86b3          	add	a3,s11,a3
    800048c4:	0006c683          	lbu	a3,0(a3)
    800048c8:	02e7d73b          	divuw	a4,a5,a4
    800048cc:	00200793          	li	a5,2
    800048d0:	f8d400a3          	sb	a3,-127(s0)
    800048d4:	bca5ece3          	bltu	a1,a0,800044ac <__printf+0x154>
    800048d8:	ce5ff06f          	j	800045bc <__printf+0x264>
    800048dc:	40e007bb          	negw	a5,a4
    800048e0:	00002d97          	auipc	s11,0x2
    800048e4:	b60d8d93          	addi	s11,s11,-1184 # 80006440 <digits>
    800048e8:	00f7f693          	andi	a3,a5,15
    800048ec:	00dd86b3          	add	a3,s11,a3
    800048f0:	0006c583          	lbu	a1,0(a3)
    800048f4:	ff100613          	li	a2,-15
    800048f8:	0047d69b          	srliw	a3,a5,0x4
    800048fc:	f8b40023          	sb	a1,-128(s0)
    80004900:	0047d59b          	srliw	a1,a5,0x4
    80004904:	0ac75e63          	bge	a4,a2,800049c0 <__printf+0x668>
    80004908:	00f6f693          	andi	a3,a3,15
    8000490c:	00dd86b3          	add	a3,s11,a3
    80004910:	0006c603          	lbu	a2,0(a3)
    80004914:	00f00693          	li	a3,15
    80004918:	0087d79b          	srliw	a5,a5,0x8
    8000491c:	f8c400a3          	sb	a2,-127(s0)
    80004920:	d8b6e4e3          	bltu	a3,a1,800046a8 <__printf+0x350>
    80004924:	00200793          	li	a5,2
    80004928:	e2dff06f          	j	80004754 <__printf+0x3fc>
    8000492c:	00002c97          	auipc	s9,0x2
    80004930:	af4c8c93          	addi	s9,s9,-1292 # 80006420 <_ZZ14__print_uint64mE6digits+0x288>
    80004934:	02800513          	li	a0,40
    80004938:	ef1ff06f          	j	80004828 <__printf+0x4d0>
    8000493c:	00700793          	li	a5,7
    80004940:	00600c93          	li	s9,6
    80004944:	e0dff06f          	j	80004750 <__printf+0x3f8>
    80004948:	00700793          	li	a5,7
    8000494c:	00600c93          	li	s9,6
    80004950:	c69ff06f          	j	800045b8 <__printf+0x260>
    80004954:	00300793          	li	a5,3
    80004958:	00200c93          	li	s9,2
    8000495c:	c5dff06f          	j	800045b8 <__printf+0x260>
    80004960:	00300793          	li	a5,3
    80004964:	00200c93          	li	s9,2
    80004968:	de9ff06f          	j	80004750 <__printf+0x3f8>
    8000496c:	00400793          	li	a5,4
    80004970:	00300c93          	li	s9,3
    80004974:	dddff06f          	j	80004750 <__printf+0x3f8>
    80004978:	00400793          	li	a5,4
    8000497c:	00300c93          	li	s9,3
    80004980:	c39ff06f          	j	800045b8 <__printf+0x260>
    80004984:	00500793          	li	a5,5
    80004988:	00400c93          	li	s9,4
    8000498c:	c2dff06f          	j	800045b8 <__printf+0x260>
    80004990:	00500793          	li	a5,5
    80004994:	00400c93          	li	s9,4
    80004998:	db9ff06f          	j	80004750 <__printf+0x3f8>
    8000499c:	00600793          	li	a5,6
    800049a0:	00500c93          	li	s9,5
    800049a4:	dadff06f          	j	80004750 <__printf+0x3f8>
    800049a8:	00600793          	li	a5,6
    800049ac:	00500c93          	li	s9,5
    800049b0:	c09ff06f          	j	800045b8 <__printf+0x260>
    800049b4:	00800793          	li	a5,8
    800049b8:	00700c93          	li	s9,7
    800049bc:	bfdff06f          	j	800045b8 <__printf+0x260>
    800049c0:	00100793          	li	a5,1
    800049c4:	d91ff06f          	j	80004754 <__printf+0x3fc>
    800049c8:	00100793          	li	a5,1
    800049cc:	bf1ff06f          	j	800045bc <__printf+0x264>
    800049d0:	00900793          	li	a5,9
    800049d4:	00800c93          	li	s9,8
    800049d8:	be1ff06f          	j	800045b8 <__printf+0x260>
    800049dc:	00002517          	auipc	a0,0x2
    800049e0:	a4c50513          	addi	a0,a0,-1460 # 80006428 <_ZZ14__print_uint64mE6digits+0x290>
    800049e4:	00000097          	auipc	ra,0x0
    800049e8:	918080e7          	jalr	-1768(ra) # 800042fc <panic>

00000000800049ec <printfinit>:
    800049ec:	fe010113          	addi	sp,sp,-32
    800049f0:	00813823          	sd	s0,16(sp)
    800049f4:	00913423          	sd	s1,8(sp)
    800049f8:	00113c23          	sd	ra,24(sp)
    800049fc:	02010413          	addi	s0,sp,32
    80004a00:	00004497          	auipc	s1,0x4
    80004a04:	ce048493          	addi	s1,s1,-800 # 800086e0 <pr>
    80004a08:	00048513          	mv	a0,s1
    80004a0c:	00002597          	auipc	a1,0x2
    80004a10:	a2c58593          	addi	a1,a1,-1492 # 80006438 <_ZZ14__print_uint64mE6digits+0x2a0>
    80004a14:	00000097          	auipc	ra,0x0
    80004a18:	5f4080e7          	jalr	1524(ra) # 80005008 <initlock>
    80004a1c:	01813083          	ld	ra,24(sp)
    80004a20:	01013403          	ld	s0,16(sp)
    80004a24:	0004ac23          	sw	zero,24(s1)
    80004a28:	00813483          	ld	s1,8(sp)
    80004a2c:	02010113          	addi	sp,sp,32
    80004a30:	00008067          	ret

0000000080004a34 <uartinit>:
    80004a34:	ff010113          	addi	sp,sp,-16
    80004a38:	00813423          	sd	s0,8(sp)
    80004a3c:	01010413          	addi	s0,sp,16
    80004a40:	100007b7          	lui	a5,0x10000
    80004a44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004a48:	f8000713          	li	a4,-128
    80004a4c:	00e781a3          	sb	a4,3(a5)
    80004a50:	00300713          	li	a4,3
    80004a54:	00e78023          	sb	a4,0(a5)
    80004a58:	000780a3          	sb	zero,1(a5)
    80004a5c:	00e781a3          	sb	a4,3(a5)
    80004a60:	00700693          	li	a3,7
    80004a64:	00d78123          	sb	a3,2(a5)
    80004a68:	00e780a3          	sb	a4,1(a5)
    80004a6c:	00813403          	ld	s0,8(sp)
    80004a70:	01010113          	addi	sp,sp,16
    80004a74:	00008067          	ret

0000000080004a78 <uartputc>:
    80004a78:	00003797          	auipc	a5,0x3
    80004a7c:	9d07a783          	lw	a5,-1584(a5) # 80007448 <panicked>
    80004a80:	00078463          	beqz	a5,80004a88 <uartputc+0x10>
    80004a84:	0000006f          	j	80004a84 <uartputc+0xc>
    80004a88:	fd010113          	addi	sp,sp,-48
    80004a8c:	02813023          	sd	s0,32(sp)
    80004a90:	00913c23          	sd	s1,24(sp)
    80004a94:	01213823          	sd	s2,16(sp)
    80004a98:	01313423          	sd	s3,8(sp)
    80004a9c:	02113423          	sd	ra,40(sp)
    80004aa0:	03010413          	addi	s0,sp,48
    80004aa4:	00003917          	auipc	s2,0x3
    80004aa8:	9ac90913          	addi	s2,s2,-1620 # 80007450 <uart_tx_r>
    80004aac:	00093783          	ld	a5,0(s2)
    80004ab0:	00003497          	auipc	s1,0x3
    80004ab4:	9a848493          	addi	s1,s1,-1624 # 80007458 <uart_tx_w>
    80004ab8:	0004b703          	ld	a4,0(s1)
    80004abc:	02078693          	addi	a3,a5,32
    80004ac0:	00050993          	mv	s3,a0
    80004ac4:	02e69c63          	bne	a3,a4,80004afc <uartputc+0x84>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	834080e7          	jalr	-1996(ra) # 800052fc <push_on>
    80004ad0:	00093783          	ld	a5,0(s2)
    80004ad4:	0004b703          	ld	a4,0(s1)
    80004ad8:	02078793          	addi	a5,a5,32
    80004adc:	00e79463          	bne	a5,a4,80004ae4 <uartputc+0x6c>
    80004ae0:	0000006f          	j	80004ae0 <uartputc+0x68>
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	88c080e7          	jalr	-1908(ra) # 80005370 <pop_on>
    80004aec:	00093783          	ld	a5,0(s2)
    80004af0:	0004b703          	ld	a4,0(s1)
    80004af4:	02078693          	addi	a3,a5,32
    80004af8:	fce688e3          	beq	a3,a4,80004ac8 <uartputc+0x50>
    80004afc:	01f77693          	andi	a3,a4,31
    80004b00:	00004597          	auipc	a1,0x4
    80004b04:	c0058593          	addi	a1,a1,-1024 # 80008700 <uart_tx_buf>
    80004b08:	00d586b3          	add	a3,a1,a3
    80004b0c:	00170713          	addi	a4,a4,1
    80004b10:	01368023          	sb	s3,0(a3)
    80004b14:	00e4b023          	sd	a4,0(s1)
    80004b18:	10000637          	lui	a2,0x10000
    80004b1c:	02f71063          	bne	a4,a5,80004b3c <uartputc+0xc4>
    80004b20:	0340006f          	j	80004b54 <uartputc+0xdc>
    80004b24:	00074703          	lbu	a4,0(a4)
    80004b28:	00f93023          	sd	a5,0(s2)
    80004b2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004b30:	00093783          	ld	a5,0(s2)
    80004b34:	0004b703          	ld	a4,0(s1)
    80004b38:	00f70e63          	beq	a4,a5,80004b54 <uartputc+0xdc>
    80004b3c:	00564683          	lbu	a3,5(a2)
    80004b40:	01f7f713          	andi	a4,a5,31
    80004b44:	00e58733          	add	a4,a1,a4
    80004b48:	0206f693          	andi	a3,a3,32
    80004b4c:	00178793          	addi	a5,a5,1
    80004b50:	fc069ae3          	bnez	a3,80004b24 <uartputc+0xac>
    80004b54:	02813083          	ld	ra,40(sp)
    80004b58:	02013403          	ld	s0,32(sp)
    80004b5c:	01813483          	ld	s1,24(sp)
    80004b60:	01013903          	ld	s2,16(sp)
    80004b64:	00813983          	ld	s3,8(sp)
    80004b68:	03010113          	addi	sp,sp,48
    80004b6c:	00008067          	ret

0000000080004b70 <uartputc_sync>:
    80004b70:	ff010113          	addi	sp,sp,-16
    80004b74:	00813423          	sd	s0,8(sp)
    80004b78:	01010413          	addi	s0,sp,16
    80004b7c:	00003717          	auipc	a4,0x3
    80004b80:	8cc72703          	lw	a4,-1844(a4) # 80007448 <panicked>
    80004b84:	02071663          	bnez	a4,80004bb0 <uartputc_sync+0x40>
    80004b88:	00050793          	mv	a5,a0
    80004b8c:	100006b7          	lui	a3,0x10000
    80004b90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004b94:	02077713          	andi	a4,a4,32
    80004b98:	fe070ce3          	beqz	a4,80004b90 <uartputc_sync+0x20>
    80004b9c:	0ff7f793          	andi	a5,a5,255
    80004ba0:	00f68023          	sb	a5,0(a3)
    80004ba4:	00813403          	ld	s0,8(sp)
    80004ba8:	01010113          	addi	sp,sp,16
    80004bac:	00008067          	ret
    80004bb0:	0000006f          	j	80004bb0 <uartputc_sync+0x40>

0000000080004bb4 <uartstart>:
    80004bb4:	ff010113          	addi	sp,sp,-16
    80004bb8:	00813423          	sd	s0,8(sp)
    80004bbc:	01010413          	addi	s0,sp,16
    80004bc0:	00003617          	auipc	a2,0x3
    80004bc4:	89060613          	addi	a2,a2,-1904 # 80007450 <uart_tx_r>
    80004bc8:	00003517          	auipc	a0,0x3
    80004bcc:	89050513          	addi	a0,a0,-1904 # 80007458 <uart_tx_w>
    80004bd0:	00063783          	ld	a5,0(a2)
    80004bd4:	00053703          	ld	a4,0(a0)
    80004bd8:	04f70263          	beq	a4,a5,80004c1c <uartstart+0x68>
    80004bdc:	100005b7          	lui	a1,0x10000
    80004be0:	00004817          	auipc	a6,0x4
    80004be4:	b2080813          	addi	a6,a6,-1248 # 80008700 <uart_tx_buf>
    80004be8:	01c0006f          	j	80004c04 <uartstart+0x50>
    80004bec:	0006c703          	lbu	a4,0(a3)
    80004bf0:	00f63023          	sd	a5,0(a2)
    80004bf4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004bf8:	00063783          	ld	a5,0(a2)
    80004bfc:	00053703          	ld	a4,0(a0)
    80004c00:	00f70e63          	beq	a4,a5,80004c1c <uartstart+0x68>
    80004c04:	01f7f713          	andi	a4,a5,31
    80004c08:	00e806b3          	add	a3,a6,a4
    80004c0c:	0055c703          	lbu	a4,5(a1)
    80004c10:	00178793          	addi	a5,a5,1
    80004c14:	02077713          	andi	a4,a4,32
    80004c18:	fc071ae3          	bnez	a4,80004bec <uartstart+0x38>
    80004c1c:	00813403          	ld	s0,8(sp)
    80004c20:	01010113          	addi	sp,sp,16
    80004c24:	00008067          	ret

0000000080004c28 <uartgetc>:
    80004c28:	ff010113          	addi	sp,sp,-16
    80004c2c:	00813423          	sd	s0,8(sp)
    80004c30:	01010413          	addi	s0,sp,16
    80004c34:	10000737          	lui	a4,0x10000
    80004c38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004c3c:	0017f793          	andi	a5,a5,1
    80004c40:	00078c63          	beqz	a5,80004c58 <uartgetc+0x30>
    80004c44:	00074503          	lbu	a0,0(a4)
    80004c48:	0ff57513          	andi	a0,a0,255
    80004c4c:	00813403          	ld	s0,8(sp)
    80004c50:	01010113          	addi	sp,sp,16
    80004c54:	00008067          	ret
    80004c58:	fff00513          	li	a0,-1
    80004c5c:	ff1ff06f          	j	80004c4c <uartgetc+0x24>

0000000080004c60 <uartintr>:
    80004c60:	100007b7          	lui	a5,0x10000
    80004c64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004c68:	0017f793          	andi	a5,a5,1
    80004c6c:	0a078463          	beqz	a5,80004d14 <uartintr+0xb4>
    80004c70:	fe010113          	addi	sp,sp,-32
    80004c74:	00813823          	sd	s0,16(sp)
    80004c78:	00913423          	sd	s1,8(sp)
    80004c7c:	00113c23          	sd	ra,24(sp)
    80004c80:	02010413          	addi	s0,sp,32
    80004c84:	100004b7          	lui	s1,0x10000
    80004c88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004c8c:	0ff57513          	andi	a0,a0,255
    80004c90:	fffff097          	auipc	ra,0xfffff
    80004c94:	534080e7          	jalr	1332(ra) # 800041c4 <consoleintr>
    80004c98:	0054c783          	lbu	a5,5(s1)
    80004c9c:	0017f793          	andi	a5,a5,1
    80004ca0:	fe0794e3          	bnez	a5,80004c88 <uartintr+0x28>
    80004ca4:	00002617          	auipc	a2,0x2
    80004ca8:	7ac60613          	addi	a2,a2,1964 # 80007450 <uart_tx_r>
    80004cac:	00002517          	auipc	a0,0x2
    80004cb0:	7ac50513          	addi	a0,a0,1964 # 80007458 <uart_tx_w>
    80004cb4:	00063783          	ld	a5,0(a2)
    80004cb8:	00053703          	ld	a4,0(a0)
    80004cbc:	04f70263          	beq	a4,a5,80004d00 <uartintr+0xa0>
    80004cc0:	100005b7          	lui	a1,0x10000
    80004cc4:	00004817          	auipc	a6,0x4
    80004cc8:	a3c80813          	addi	a6,a6,-1476 # 80008700 <uart_tx_buf>
    80004ccc:	01c0006f          	j	80004ce8 <uartintr+0x88>
    80004cd0:	0006c703          	lbu	a4,0(a3)
    80004cd4:	00f63023          	sd	a5,0(a2)
    80004cd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004cdc:	00063783          	ld	a5,0(a2)
    80004ce0:	00053703          	ld	a4,0(a0)
    80004ce4:	00f70e63          	beq	a4,a5,80004d00 <uartintr+0xa0>
    80004ce8:	01f7f713          	andi	a4,a5,31
    80004cec:	00e806b3          	add	a3,a6,a4
    80004cf0:	0055c703          	lbu	a4,5(a1)
    80004cf4:	00178793          	addi	a5,a5,1
    80004cf8:	02077713          	andi	a4,a4,32
    80004cfc:	fc071ae3          	bnez	a4,80004cd0 <uartintr+0x70>
    80004d00:	01813083          	ld	ra,24(sp)
    80004d04:	01013403          	ld	s0,16(sp)
    80004d08:	00813483          	ld	s1,8(sp)
    80004d0c:	02010113          	addi	sp,sp,32
    80004d10:	00008067          	ret
    80004d14:	00002617          	auipc	a2,0x2
    80004d18:	73c60613          	addi	a2,a2,1852 # 80007450 <uart_tx_r>
    80004d1c:	00002517          	auipc	a0,0x2
    80004d20:	73c50513          	addi	a0,a0,1852 # 80007458 <uart_tx_w>
    80004d24:	00063783          	ld	a5,0(a2)
    80004d28:	00053703          	ld	a4,0(a0)
    80004d2c:	04f70263          	beq	a4,a5,80004d70 <uartintr+0x110>
    80004d30:	100005b7          	lui	a1,0x10000
    80004d34:	00004817          	auipc	a6,0x4
    80004d38:	9cc80813          	addi	a6,a6,-1588 # 80008700 <uart_tx_buf>
    80004d3c:	01c0006f          	j	80004d58 <uartintr+0xf8>
    80004d40:	0006c703          	lbu	a4,0(a3)
    80004d44:	00f63023          	sd	a5,0(a2)
    80004d48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d4c:	00063783          	ld	a5,0(a2)
    80004d50:	00053703          	ld	a4,0(a0)
    80004d54:	02f70063          	beq	a4,a5,80004d74 <uartintr+0x114>
    80004d58:	01f7f713          	andi	a4,a5,31
    80004d5c:	00e806b3          	add	a3,a6,a4
    80004d60:	0055c703          	lbu	a4,5(a1)
    80004d64:	00178793          	addi	a5,a5,1
    80004d68:	02077713          	andi	a4,a4,32
    80004d6c:	fc071ae3          	bnez	a4,80004d40 <uartintr+0xe0>
    80004d70:	00008067          	ret
    80004d74:	00008067          	ret

0000000080004d78 <kinit>:
    80004d78:	fc010113          	addi	sp,sp,-64
    80004d7c:	02913423          	sd	s1,40(sp)
    80004d80:	fffff7b7          	lui	a5,0xfffff
    80004d84:	00005497          	auipc	s1,0x5
    80004d88:	99b48493          	addi	s1,s1,-1637 # 8000971f <end+0xfff>
    80004d8c:	02813823          	sd	s0,48(sp)
    80004d90:	01313c23          	sd	s3,24(sp)
    80004d94:	00f4f4b3          	and	s1,s1,a5
    80004d98:	02113c23          	sd	ra,56(sp)
    80004d9c:	03213023          	sd	s2,32(sp)
    80004da0:	01413823          	sd	s4,16(sp)
    80004da4:	01513423          	sd	s5,8(sp)
    80004da8:	04010413          	addi	s0,sp,64
    80004dac:	000017b7          	lui	a5,0x1
    80004db0:	01100993          	li	s3,17
    80004db4:	00f487b3          	add	a5,s1,a5
    80004db8:	01b99993          	slli	s3,s3,0x1b
    80004dbc:	06f9e063          	bltu	s3,a5,80004e1c <kinit+0xa4>
    80004dc0:	00004a97          	auipc	s5,0x4
    80004dc4:	960a8a93          	addi	s5,s5,-1696 # 80008720 <end>
    80004dc8:	0754ec63          	bltu	s1,s5,80004e40 <kinit+0xc8>
    80004dcc:	0734fa63          	bgeu	s1,s3,80004e40 <kinit+0xc8>
    80004dd0:	00088a37          	lui	s4,0x88
    80004dd4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004dd8:	00002917          	auipc	s2,0x2
    80004ddc:	68890913          	addi	s2,s2,1672 # 80007460 <kmem>
    80004de0:	00ca1a13          	slli	s4,s4,0xc
    80004de4:	0140006f          	j	80004df8 <kinit+0x80>
    80004de8:	000017b7          	lui	a5,0x1
    80004dec:	00f484b3          	add	s1,s1,a5
    80004df0:	0554e863          	bltu	s1,s5,80004e40 <kinit+0xc8>
    80004df4:	0534f663          	bgeu	s1,s3,80004e40 <kinit+0xc8>
    80004df8:	00001637          	lui	a2,0x1
    80004dfc:	00100593          	li	a1,1
    80004e00:	00048513          	mv	a0,s1
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	5e4080e7          	jalr	1508(ra) # 800053e8 <__memset>
    80004e0c:	00093783          	ld	a5,0(s2)
    80004e10:	00f4b023          	sd	a5,0(s1)
    80004e14:	00993023          	sd	s1,0(s2)
    80004e18:	fd4498e3          	bne	s1,s4,80004de8 <kinit+0x70>
    80004e1c:	03813083          	ld	ra,56(sp)
    80004e20:	03013403          	ld	s0,48(sp)
    80004e24:	02813483          	ld	s1,40(sp)
    80004e28:	02013903          	ld	s2,32(sp)
    80004e2c:	01813983          	ld	s3,24(sp)
    80004e30:	01013a03          	ld	s4,16(sp)
    80004e34:	00813a83          	ld	s5,8(sp)
    80004e38:	04010113          	addi	sp,sp,64
    80004e3c:	00008067          	ret
    80004e40:	00001517          	auipc	a0,0x1
    80004e44:	61850513          	addi	a0,a0,1560 # 80006458 <digits+0x18>
    80004e48:	fffff097          	auipc	ra,0xfffff
    80004e4c:	4b4080e7          	jalr	1204(ra) # 800042fc <panic>

0000000080004e50 <freerange>:
    80004e50:	fc010113          	addi	sp,sp,-64
    80004e54:	000017b7          	lui	a5,0x1
    80004e58:	02913423          	sd	s1,40(sp)
    80004e5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004e60:	009504b3          	add	s1,a0,s1
    80004e64:	fffff537          	lui	a0,0xfffff
    80004e68:	02813823          	sd	s0,48(sp)
    80004e6c:	02113c23          	sd	ra,56(sp)
    80004e70:	03213023          	sd	s2,32(sp)
    80004e74:	01313c23          	sd	s3,24(sp)
    80004e78:	01413823          	sd	s4,16(sp)
    80004e7c:	01513423          	sd	s5,8(sp)
    80004e80:	01613023          	sd	s6,0(sp)
    80004e84:	04010413          	addi	s0,sp,64
    80004e88:	00a4f4b3          	and	s1,s1,a0
    80004e8c:	00f487b3          	add	a5,s1,a5
    80004e90:	06f5e463          	bltu	a1,a5,80004ef8 <freerange+0xa8>
    80004e94:	00004a97          	auipc	s5,0x4
    80004e98:	88ca8a93          	addi	s5,s5,-1908 # 80008720 <end>
    80004e9c:	0954e263          	bltu	s1,s5,80004f20 <freerange+0xd0>
    80004ea0:	01100993          	li	s3,17
    80004ea4:	01b99993          	slli	s3,s3,0x1b
    80004ea8:	0734fc63          	bgeu	s1,s3,80004f20 <freerange+0xd0>
    80004eac:	00058a13          	mv	s4,a1
    80004eb0:	00002917          	auipc	s2,0x2
    80004eb4:	5b090913          	addi	s2,s2,1456 # 80007460 <kmem>
    80004eb8:	00002b37          	lui	s6,0x2
    80004ebc:	0140006f          	j	80004ed0 <freerange+0x80>
    80004ec0:	000017b7          	lui	a5,0x1
    80004ec4:	00f484b3          	add	s1,s1,a5
    80004ec8:	0554ec63          	bltu	s1,s5,80004f20 <freerange+0xd0>
    80004ecc:	0534fa63          	bgeu	s1,s3,80004f20 <freerange+0xd0>
    80004ed0:	00001637          	lui	a2,0x1
    80004ed4:	00100593          	li	a1,1
    80004ed8:	00048513          	mv	a0,s1
    80004edc:	00000097          	auipc	ra,0x0
    80004ee0:	50c080e7          	jalr	1292(ra) # 800053e8 <__memset>
    80004ee4:	00093703          	ld	a4,0(s2)
    80004ee8:	016487b3          	add	a5,s1,s6
    80004eec:	00e4b023          	sd	a4,0(s1)
    80004ef0:	00993023          	sd	s1,0(s2)
    80004ef4:	fcfa76e3          	bgeu	s4,a5,80004ec0 <freerange+0x70>
    80004ef8:	03813083          	ld	ra,56(sp)
    80004efc:	03013403          	ld	s0,48(sp)
    80004f00:	02813483          	ld	s1,40(sp)
    80004f04:	02013903          	ld	s2,32(sp)
    80004f08:	01813983          	ld	s3,24(sp)
    80004f0c:	01013a03          	ld	s4,16(sp)
    80004f10:	00813a83          	ld	s5,8(sp)
    80004f14:	00013b03          	ld	s6,0(sp)
    80004f18:	04010113          	addi	sp,sp,64
    80004f1c:	00008067          	ret
    80004f20:	00001517          	auipc	a0,0x1
    80004f24:	53850513          	addi	a0,a0,1336 # 80006458 <digits+0x18>
    80004f28:	fffff097          	auipc	ra,0xfffff
    80004f2c:	3d4080e7          	jalr	980(ra) # 800042fc <panic>

0000000080004f30 <kfree>:
    80004f30:	fe010113          	addi	sp,sp,-32
    80004f34:	00813823          	sd	s0,16(sp)
    80004f38:	00113c23          	sd	ra,24(sp)
    80004f3c:	00913423          	sd	s1,8(sp)
    80004f40:	02010413          	addi	s0,sp,32
    80004f44:	03451793          	slli	a5,a0,0x34
    80004f48:	04079c63          	bnez	a5,80004fa0 <kfree+0x70>
    80004f4c:	00003797          	auipc	a5,0x3
    80004f50:	7d478793          	addi	a5,a5,2004 # 80008720 <end>
    80004f54:	00050493          	mv	s1,a0
    80004f58:	04f56463          	bltu	a0,a5,80004fa0 <kfree+0x70>
    80004f5c:	01100793          	li	a5,17
    80004f60:	01b79793          	slli	a5,a5,0x1b
    80004f64:	02f57e63          	bgeu	a0,a5,80004fa0 <kfree+0x70>
    80004f68:	00001637          	lui	a2,0x1
    80004f6c:	00100593          	li	a1,1
    80004f70:	00000097          	auipc	ra,0x0
    80004f74:	478080e7          	jalr	1144(ra) # 800053e8 <__memset>
    80004f78:	00002797          	auipc	a5,0x2
    80004f7c:	4e878793          	addi	a5,a5,1256 # 80007460 <kmem>
    80004f80:	0007b703          	ld	a4,0(a5)
    80004f84:	01813083          	ld	ra,24(sp)
    80004f88:	01013403          	ld	s0,16(sp)
    80004f8c:	00e4b023          	sd	a4,0(s1)
    80004f90:	0097b023          	sd	s1,0(a5)
    80004f94:	00813483          	ld	s1,8(sp)
    80004f98:	02010113          	addi	sp,sp,32
    80004f9c:	00008067          	ret
    80004fa0:	00001517          	auipc	a0,0x1
    80004fa4:	4b850513          	addi	a0,a0,1208 # 80006458 <digits+0x18>
    80004fa8:	fffff097          	auipc	ra,0xfffff
    80004fac:	354080e7          	jalr	852(ra) # 800042fc <panic>

0000000080004fb0 <kalloc>:
    80004fb0:	fe010113          	addi	sp,sp,-32
    80004fb4:	00813823          	sd	s0,16(sp)
    80004fb8:	00913423          	sd	s1,8(sp)
    80004fbc:	00113c23          	sd	ra,24(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	00002797          	auipc	a5,0x2
    80004fc8:	49c78793          	addi	a5,a5,1180 # 80007460 <kmem>
    80004fcc:	0007b483          	ld	s1,0(a5)
    80004fd0:	02048063          	beqz	s1,80004ff0 <kalloc+0x40>
    80004fd4:	0004b703          	ld	a4,0(s1)
    80004fd8:	00001637          	lui	a2,0x1
    80004fdc:	00500593          	li	a1,5
    80004fe0:	00048513          	mv	a0,s1
    80004fe4:	00e7b023          	sd	a4,0(a5)
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	400080e7          	jalr	1024(ra) # 800053e8 <__memset>
    80004ff0:	01813083          	ld	ra,24(sp)
    80004ff4:	01013403          	ld	s0,16(sp)
    80004ff8:	00048513          	mv	a0,s1
    80004ffc:	00813483          	ld	s1,8(sp)
    80005000:	02010113          	addi	sp,sp,32
    80005004:	00008067          	ret

0000000080005008 <initlock>:
    80005008:	ff010113          	addi	sp,sp,-16
    8000500c:	00813423          	sd	s0,8(sp)
    80005010:	01010413          	addi	s0,sp,16
    80005014:	00813403          	ld	s0,8(sp)
    80005018:	00b53423          	sd	a1,8(a0)
    8000501c:	00052023          	sw	zero,0(a0)
    80005020:	00053823          	sd	zero,16(a0)
    80005024:	01010113          	addi	sp,sp,16
    80005028:	00008067          	ret

000000008000502c <acquire>:
    8000502c:	fe010113          	addi	sp,sp,-32
    80005030:	00813823          	sd	s0,16(sp)
    80005034:	00913423          	sd	s1,8(sp)
    80005038:	00113c23          	sd	ra,24(sp)
    8000503c:	01213023          	sd	s2,0(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00050493          	mv	s1,a0
    80005048:	10002973          	csrr	s2,sstatus
    8000504c:	100027f3          	csrr	a5,sstatus
    80005050:	ffd7f793          	andi	a5,a5,-3
    80005054:	10079073          	csrw	sstatus,a5
    80005058:	fffff097          	auipc	ra,0xfffff
    8000505c:	8ec080e7          	jalr	-1812(ra) # 80003944 <mycpu>
    80005060:	07852783          	lw	a5,120(a0)
    80005064:	06078e63          	beqz	a5,800050e0 <acquire+0xb4>
    80005068:	fffff097          	auipc	ra,0xfffff
    8000506c:	8dc080e7          	jalr	-1828(ra) # 80003944 <mycpu>
    80005070:	07852783          	lw	a5,120(a0)
    80005074:	0004a703          	lw	a4,0(s1)
    80005078:	0017879b          	addiw	a5,a5,1
    8000507c:	06f52c23          	sw	a5,120(a0)
    80005080:	04071063          	bnez	a4,800050c0 <acquire+0x94>
    80005084:	00100713          	li	a4,1
    80005088:	00070793          	mv	a5,a4
    8000508c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005090:	0007879b          	sext.w	a5,a5
    80005094:	fe079ae3          	bnez	a5,80005088 <acquire+0x5c>
    80005098:	0ff0000f          	fence
    8000509c:	fffff097          	auipc	ra,0xfffff
    800050a0:	8a8080e7          	jalr	-1880(ra) # 80003944 <mycpu>
    800050a4:	01813083          	ld	ra,24(sp)
    800050a8:	01013403          	ld	s0,16(sp)
    800050ac:	00a4b823          	sd	a0,16(s1)
    800050b0:	00013903          	ld	s2,0(sp)
    800050b4:	00813483          	ld	s1,8(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret
    800050c0:	0104b903          	ld	s2,16(s1)
    800050c4:	fffff097          	auipc	ra,0xfffff
    800050c8:	880080e7          	jalr	-1920(ra) # 80003944 <mycpu>
    800050cc:	faa91ce3          	bne	s2,a0,80005084 <acquire+0x58>
    800050d0:	00001517          	auipc	a0,0x1
    800050d4:	39050513          	addi	a0,a0,912 # 80006460 <digits+0x20>
    800050d8:	fffff097          	auipc	ra,0xfffff
    800050dc:	224080e7          	jalr	548(ra) # 800042fc <panic>
    800050e0:	00195913          	srli	s2,s2,0x1
    800050e4:	fffff097          	auipc	ra,0xfffff
    800050e8:	860080e7          	jalr	-1952(ra) # 80003944 <mycpu>
    800050ec:	00197913          	andi	s2,s2,1
    800050f0:	07252e23          	sw	s2,124(a0)
    800050f4:	f75ff06f          	j	80005068 <acquire+0x3c>

00000000800050f8 <release>:
    800050f8:	fe010113          	addi	sp,sp,-32
    800050fc:	00813823          	sd	s0,16(sp)
    80005100:	00113c23          	sd	ra,24(sp)
    80005104:	00913423          	sd	s1,8(sp)
    80005108:	01213023          	sd	s2,0(sp)
    8000510c:	02010413          	addi	s0,sp,32
    80005110:	00052783          	lw	a5,0(a0)
    80005114:	00079a63          	bnez	a5,80005128 <release+0x30>
    80005118:	00001517          	auipc	a0,0x1
    8000511c:	35050513          	addi	a0,a0,848 # 80006468 <digits+0x28>
    80005120:	fffff097          	auipc	ra,0xfffff
    80005124:	1dc080e7          	jalr	476(ra) # 800042fc <panic>
    80005128:	01053903          	ld	s2,16(a0)
    8000512c:	00050493          	mv	s1,a0
    80005130:	fffff097          	auipc	ra,0xfffff
    80005134:	814080e7          	jalr	-2028(ra) # 80003944 <mycpu>
    80005138:	fea910e3          	bne	s2,a0,80005118 <release+0x20>
    8000513c:	0004b823          	sd	zero,16(s1)
    80005140:	0ff0000f          	fence
    80005144:	0f50000f          	fence	iorw,ow
    80005148:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000514c:	ffffe097          	auipc	ra,0xffffe
    80005150:	7f8080e7          	jalr	2040(ra) # 80003944 <mycpu>
    80005154:	100027f3          	csrr	a5,sstatus
    80005158:	0027f793          	andi	a5,a5,2
    8000515c:	04079a63          	bnez	a5,800051b0 <release+0xb8>
    80005160:	07852783          	lw	a5,120(a0)
    80005164:	02f05e63          	blez	a5,800051a0 <release+0xa8>
    80005168:	fff7871b          	addiw	a4,a5,-1
    8000516c:	06e52c23          	sw	a4,120(a0)
    80005170:	00071c63          	bnez	a4,80005188 <release+0x90>
    80005174:	07c52783          	lw	a5,124(a0)
    80005178:	00078863          	beqz	a5,80005188 <release+0x90>
    8000517c:	100027f3          	csrr	a5,sstatus
    80005180:	0027e793          	ori	a5,a5,2
    80005184:	10079073          	csrw	sstatus,a5
    80005188:	01813083          	ld	ra,24(sp)
    8000518c:	01013403          	ld	s0,16(sp)
    80005190:	00813483          	ld	s1,8(sp)
    80005194:	00013903          	ld	s2,0(sp)
    80005198:	02010113          	addi	sp,sp,32
    8000519c:	00008067          	ret
    800051a0:	00001517          	auipc	a0,0x1
    800051a4:	2e850513          	addi	a0,a0,744 # 80006488 <digits+0x48>
    800051a8:	fffff097          	auipc	ra,0xfffff
    800051ac:	154080e7          	jalr	340(ra) # 800042fc <panic>
    800051b0:	00001517          	auipc	a0,0x1
    800051b4:	2c050513          	addi	a0,a0,704 # 80006470 <digits+0x30>
    800051b8:	fffff097          	auipc	ra,0xfffff
    800051bc:	144080e7          	jalr	324(ra) # 800042fc <panic>

00000000800051c0 <holding>:
    800051c0:	00052783          	lw	a5,0(a0)
    800051c4:	00079663          	bnez	a5,800051d0 <holding+0x10>
    800051c8:	00000513          	li	a0,0
    800051cc:	00008067          	ret
    800051d0:	fe010113          	addi	sp,sp,-32
    800051d4:	00813823          	sd	s0,16(sp)
    800051d8:	00913423          	sd	s1,8(sp)
    800051dc:	00113c23          	sd	ra,24(sp)
    800051e0:	02010413          	addi	s0,sp,32
    800051e4:	01053483          	ld	s1,16(a0)
    800051e8:	ffffe097          	auipc	ra,0xffffe
    800051ec:	75c080e7          	jalr	1884(ra) # 80003944 <mycpu>
    800051f0:	01813083          	ld	ra,24(sp)
    800051f4:	01013403          	ld	s0,16(sp)
    800051f8:	40a48533          	sub	a0,s1,a0
    800051fc:	00153513          	seqz	a0,a0
    80005200:	00813483          	ld	s1,8(sp)
    80005204:	02010113          	addi	sp,sp,32
    80005208:	00008067          	ret

000000008000520c <push_off>:
    8000520c:	fe010113          	addi	sp,sp,-32
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00113c23          	sd	ra,24(sp)
    80005218:	00913423          	sd	s1,8(sp)
    8000521c:	02010413          	addi	s0,sp,32
    80005220:	100024f3          	csrr	s1,sstatus
    80005224:	100027f3          	csrr	a5,sstatus
    80005228:	ffd7f793          	andi	a5,a5,-3
    8000522c:	10079073          	csrw	sstatus,a5
    80005230:	ffffe097          	auipc	ra,0xffffe
    80005234:	714080e7          	jalr	1812(ra) # 80003944 <mycpu>
    80005238:	07852783          	lw	a5,120(a0)
    8000523c:	02078663          	beqz	a5,80005268 <push_off+0x5c>
    80005240:	ffffe097          	auipc	ra,0xffffe
    80005244:	704080e7          	jalr	1796(ra) # 80003944 <mycpu>
    80005248:	07852783          	lw	a5,120(a0)
    8000524c:	01813083          	ld	ra,24(sp)
    80005250:	01013403          	ld	s0,16(sp)
    80005254:	0017879b          	addiw	a5,a5,1
    80005258:	06f52c23          	sw	a5,120(a0)
    8000525c:	00813483          	ld	s1,8(sp)
    80005260:	02010113          	addi	sp,sp,32
    80005264:	00008067          	ret
    80005268:	0014d493          	srli	s1,s1,0x1
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	6d8080e7          	jalr	1752(ra) # 80003944 <mycpu>
    80005274:	0014f493          	andi	s1,s1,1
    80005278:	06952e23          	sw	s1,124(a0)
    8000527c:	fc5ff06f          	j	80005240 <push_off+0x34>

0000000080005280 <pop_off>:
    80005280:	ff010113          	addi	sp,sp,-16
    80005284:	00813023          	sd	s0,0(sp)
    80005288:	00113423          	sd	ra,8(sp)
    8000528c:	01010413          	addi	s0,sp,16
    80005290:	ffffe097          	auipc	ra,0xffffe
    80005294:	6b4080e7          	jalr	1716(ra) # 80003944 <mycpu>
    80005298:	100027f3          	csrr	a5,sstatus
    8000529c:	0027f793          	andi	a5,a5,2
    800052a0:	04079663          	bnez	a5,800052ec <pop_off+0x6c>
    800052a4:	07852783          	lw	a5,120(a0)
    800052a8:	02f05a63          	blez	a5,800052dc <pop_off+0x5c>
    800052ac:	fff7871b          	addiw	a4,a5,-1
    800052b0:	06e52c23          	sw	a4,120(a0)
    800052b4:	00071c63          	bnez	a4,800052cc <pop_off+0x4c>
    800052b8:	07c52783          	lw	a5,124(a0)
    800052bc:	00078863          	beqz	a5,800052cc <pop_off+0x4c>
    800052c0:	100027f3          	csrr	a5,sstatus
    800052c4:	0027e793          	ori	a5,a5,2
    800052c8:	10079073          	csrw	sstatus,a5
    800052cc:	00813083          	ld	ra,8(sp)
    800052d0:	00013403          	ld	s0,0(sp)
    800052d4:	01010113          	addi	sp,sp,16
    800052d8:	00008067          	ret
    800052dc:	00001517          	auipc	a0,0x1
    800052e0:	1ac50513          	addi	a0,a0,428 # 80006488 <digits+0x48>
    800052e4:	fffff097          	auipc	ra,0xfffff
    800052e8:	018080e7          	jalr	24(ra) # 800042fc <panic>
    800052ec:	00001517          	auipc	a0,0x1
    800052f0:	18450513          	addi	a0,a0,388 # 80006470 <digits+0x30>
    800052f4:	fffff097          	auipc	ra,0xfffff
    800052f8:	008080e7          	jalr	8(ra) # 800042fc <panic>

00000000800052fc <push_on>:
    800052fc:	fe010113          	addi	sp,sp,-32
    80005300:	00813823          	sd	s0,16(sp)
    80005304:	00113c23          	sd	ra,24(sp)
    80005308:	00913423          	sd	s1,8(sp)
    8000530c:	02010413          	addi	s0,sp,32
    80005310:	100024f3          	csrr	s1,sstatus
    80005314:	100027f3          	csrr	a5,sstatus
    80005318:	0027e793          	ori	a5,a5,2
    8000531c:	10079073          	csrw	sstatus,a5
    80005320:	ffffe097          	auipc	ra,0xffffe
    80005324:	624080e7          	jalr	1572(ra) # 80003944 <mycpu>
    80005328:	07852783          	lw	a5,120(a0)
    8000532c:	02078663          	beqz	a5,80005358 <push_on+0x5c>
    80005330:	ffffe097          	auipc	ra,0xffffe
    80005334:	614080e7          	jalr	1556(ra) # 80003944 <mycpu>
    80005338:	07852783          	lw	a5,120(a0)
    8000533c:	01813083          	ld	ra,24(sp)
    80005340:	01013403          	ld	s0,16(sp)
    80005344:	0017879b          	addiw	a5,a5,1
    80005348:	06f52c23          	sw	a5,120(a0)
    8000534c:	00813483          	ld	s1,8(sp)
    80005350:	02010113          	addi	sp,sp,32
    80005354:	00008067          	ret
    80005358:	0014d493          	srli	s1,s1,0x1
    8000535c:	ffffe097          	auipc	ra,0xffffe
    80005360:	5e8080e7          	jalr	1512(ra) # 80003944 <mycpu>
    80005364:	0014f493          	andi	s1,s1,1
    80005368:	06952e23          	sw	s1,124(a0)
    8000536c:	fc5ff06f          	j	80005330 <push_on+0x34>

0000000080005370 <pop_on>:
    80005370:	ff010113          	addi	sp,sp,-16
    80005374:	00813023          	sd	s0,0(sp)
    80005378:	00113423          	sd	ra,8(sp)
    8000537c:	01010413          	addi	s0,sp,16
    80005380:	ffffe097          	auipc	ra,0xffffe
    80005384:	5c4080e7          	jalr	1476(ra) # 80003944 <mycpu>
    80005388:	100027f3          	csrr	a5,sstatus
    8000538c:	0027f793          	andi	a5,a5,2
    80005390:	04078463          	beqz	a5,800053d8 <pop_on+0x68>
    80005394:	07852783          	lw	a5,120(a0)
    80005398:	02f05863          	blez	a5,800053c8 <pop_on+0x58>
    8000539c:	fff7879b          	addiw	a5,a5,-1
    800053a0:	06f52c23          	sw	a5,120(a0)
    800053a4:	07853783          	ld	a5,120(a0)
    800053a8:	00079863          	bnez	a5,800053b8 <pop_on+0x48>
    800053ac:	100027f3          	csrr	a5,sstatus
    800053b0:	ffd7f793          	andi	a5,a5,-3
    800053b4:	10079073          	csrw	sstatus,a5
    800053b8:	00813083          	ld	ra,8(sp)
    800053bc:	00013403          	ld	s0,0(sp)
    800053c0:	01010113          	addi	sp,sp,16
    800053c4:	00008067          	ret
    800053c8:	00001517          	auipc	a0,0x1
    800053cc:	0e850513          	addi	a0,a0,232 # 800064b0 <digits+0x70>
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	f2c080e7          	jalr	-212(ra) # 800042fc <panic>
    800053d8:	00001517          	auipc	a0,0x1
    800053dc:	0b850513          	addi	a0,a0,184 # 80006490 <digits+0x50>
    800053e0:	fffff097          	auipc	ra,0xfffff
    800053e4:	f1c080e7          	jalr	-228(ra) # 800042fc <panic>

00000000800053e8 <__memset>:
    800053e8:	ff010113          	addi	sp,sp,-16
    800053ec:	00813423          	sd	s0,8(sp)
    800053f0:	01010413          	addi	s0,sp,16
    800053f4:	1a060e63          	beqz	a2,800055b0 <__memset+0x1c8>
    800053f8:	40a007b3          	neg	a5,a0
    800053fc:	0077f793          	andi	a5,a5,7
    80005400:	00778693          	addi	a3,a5,7
    80005404:	00b00813          	li	a6,11
    80005408:	0ff5f593          	andi	a1,a1,255
    8000540c:	fff6071b          	addiw	a4,a2,-1
    80005410:	1b06e663          	bltu	a3,a6,800055bc <__memset+0x1d4>
    80005414:	1cd76463          	bltu	a4,a3,800055dc <__memset+0x1f4>
    80005418:	1a078e63          	beqz	a5,800055d4 <__memset+0x1ec>
    8000541c:	00b50023          	sb	a1,0(a0)
    80005420:	00100713          	li	a4,1
    80005424:	1ae78463          	beq	a5,a4,800055cc <__memset+0x1e4>
    80005428:	00b500a3          	sb	a1,1(a0)
    8000542c:	00200713          	li	a4,2
    80005430:	1ae78a63          	beq	a5,a4,800055e4 <__memset+0x1fc>
    80005434:	00b50123          	sb	a1,2(a0)
    80005438:	00300713          	li	a4,3
    8000543c:	18e78463          	beq	a5,a4,800055c4 <__memset+0x1dc>
    80005440:	00b501a3          	sb	a1,3(a0)
    80005444:	00400713          	li	a4,4
    80005448:	1ae78263          	beq	a5,a4,800055ec <__memset+0x204>
    8000544c:	00b50223          	sb	a1,4(a0)
    80005450:	00500713          	li	a4,5
    80005454:	1ae78063          	beq	a5,a4,800055f4 <__memset+0x20c>
    80005458:	00b502a3          	sb	a1,5(a0)
    8000545c:	00700713          	li	a4,7
    80005460:	18e79e63          	bne	a5,a4,800055fc <__memset+0x214>
    80005464:	00b50323          	sb	a1,6(a0)
    80005468:	00700e93          	li	t4,7
    8000546c:	00859713          	slli	a4,a1,0x8
    80005470:	00e5e733          	or	a4,a1,a4
    80005474:	01059e13          	slli	t3,a1,0x10
    80005478:	01c76e33          	or	t3,a4,t3
    8000547c:	01859313          	slli	t1,a1,0x18
    80005480:	006e6333          	or	t1,t3,t1
    80005484:	02059893          	slli	a7,a1,0x20
    80005488:	40f60e3b          	subw	t3,a2,a5
    8000548c:	011368b3          	or	a7,t1,a7
    80005490:	02859813          	slli	a6,a1,0x28
    80005494:	0108e833          	or	a6,a7,a6
    80005498:	03059693          	slli	a3,a1,0x30
    8000549c:	003e589b          	srliw	a7,t3,0x3
    800054a0:	00d866b3          	or	a3,a6,a3
    800054a4:	03859713          	slli	a4,a1,0x38
    800054a8:	00389813          	slli	a6,a7,0x3
    800054ac:	00f507b3          	add	a5,a0,a5
    800054b0:	00e6e733          	or	a4,a3,a4
    800054b4:	000e089b          	sext.w	a7,t3
    800054b8:	00f806b3          	add	a3,a6,a5
    800054bc:	00e7b023          	sd	a4,0(a5)
    800054c0:	00878793          	addi	a5,a5,8
    800054c4:	fed79ce3          	bne	a5,a3,800054bc <__memset+0xd4>
    800054c8:	ff8e7793          	andi	a5,t3,-8
    800054cc:	0007871b          	sext.w	a4,a5
    800054d0:	01d787bb          	addw	a5,a5,t4
    800054d4:	0ce88e63          	beq	a7,a4,800055b0 <__memset+0x1c8>
    800054d8:	00f50733          	add	a4,a0,a5
    800054dc:	00b70023          	sb	a1,0(a4)
    800054e0:	0017871b          	addiw	a4,a5,1
    800054e4:	0cc77663          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    800054e8:	00e50733          	add	a4,a0,a4
    800054ec:	00b70023          	sb	a1,0(a4)
    800054f0:	0027871b          	addiw	a4,a5,2
    800054f4:	0ac77e63          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    800054f8:	00e50733          	add	a4,a0,a4
    800054fc:	00b70023          	sb	a1,0(a4)
    80005500:	0037871b          	addiw	a4,a5,3
    80005504:	0ac77663          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005508:	00e50733          	add	a4,a0,a4
    8000550c:	00b70023          	sb	a1,0(a4)
    80005510:	0047871b          	addiw	a4,a5,4
    80005514:	08c77e63          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005518:	00e50733          	add	a4,a0,a4
    8000551c:	00b70023          	sb	a1,0(a4)
    80005520:	0057871b          	addiw	a4,a5,5
    80005524:	08c77663          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005528:	00e50733          	add	a4,a0,a4
    8000552c:	00b70023          	sb	a1,0(a4)
    80005530:	0067871b          	addiw	a4,a5,6
    80005534:	06c77e63          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005538:	00e50733          	add	a4,a0,a4
    8000553c:	00b70023          	sb	a1,0(a4)
    80005540:	0077871b          	addiw	a4,a5,7
    80005544:	06c77663          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005548:	00e50733          	add	a4,a0,a4
    8000554c:	00b70023          	sb	a1,0(a4)
    80005550:	0087871b          	addiw	a4,a5,8
    80005554:	04c77e63          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005558:	00e50733          	add	a4,a0,a4
    8000555c:	00b70023          	sb	a1,0(a4)
    80005560:	0097871b          	addiw	a4,a5,9
    80005564:	04c77663          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005568:	00e50733          	add	a4,a0,a4
    8000556c:	00b70023          	sb	a1,0(a4)
    80005570:	00a7871b          	addiw	a4,a5,10
    80005574:	02c77e63          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005578:	00e50733          	add	a4,a0,a4
    8000557c:	00b70023          	sb	a1,0(a4)
    80005580:	00b7871b          	addiw	a4,a5,11
    80005584:	02c77663          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005588:	00e50733          	add	a4,a0,a4
    8000558c:	00b70023          	sb	a1,0(a4)
    80005590:	00c7871b          	addiw	a4,a5,12
    80005594:	00c77e63          	bgeu	a4,a2,800055b0 <__memset+0x1c8>
    80005598:	00e50733          	add	a4,a0,a4
    8000559c:	00b70023          	sb	a1,0(a4)
    800055a0:	00d7879b          	addiw	a5,a5,13
    800055a4:	00c7f663          	bgeu	a5,a2,800055b0 <__memset+0x1c8>
    800055a8:	00f507b3          	add	a5,a0,a5
    800055ac:	00b78023          	sb	a1,0(a5)
    800055b0:	00813403          	ld	s0,8(sp)
    800055b4:	01010113          	addi	sp,sp,16
    800055b8:	00008067          	ret
    800055bc:	00b00693          	li	a3,11
    800055c0:	e55ff06f          	j	80005414 <__memset+0x2c>
    800055c4:	00300e93          	li	t4,3
    800055c8:	ea5ff06f          	j	8000546c <__memset+0x84>
    800055cc:	00100e93          	li	t4,1
    800055d0:	e9dff06f          	j	8000546c <__memset+0x84>
    800055d4:	00000e93          	li	t4,0
    800055d8:	e95ff06f          	j	8000546c <__memset+0x84>
    800055dc:	00000793          	li	a5,0
    800055e0:	ef9ff06f          	j	800054d8 <__memset+0xf0>
    800055e4:	00200e93          	li	t4,2
    800055e8:	e85ff06f          	j	8000546c <__memset+0x84>
    800055ec:	00400e93          	li	t4,4
    800055f0:	e7dff06f          	j	8000546c <__memset+0x84>
    800055f4:	00500e93          	li	t4,5
    800055f8:	e75ff06f          	j	8000546c <__memset+0x84>
    800055fc:	00600e93          	li	t4,6
    80005600:	e6dff06f          	j	8000546c <__memset+0x84>

0000000080005604 <__memmove>:
    80005604:	ff010113          	addi	sp,sp,-16
    80005608:	00813423          	sd	s0,8(sp)
    8000560c:	01010413          	addi	s0,sp,16
    80005610:	0e060863          	beqz	a2,80005700 <__memmove+0xfc>
    80005614:	fff6069b          	addiw	a3,a2,-1
    80005618:	0006881b          	sext.w	a6,a3
    8000561c:	0ea5e863          	bltu	a1,a0,8000570c <__memmove+0x108>
    80005620:	00758713          	addi	a4,a1,7
    80005624:	00a5e7b3          	or	a5,a1,a0
    80005628:	40a70733          	sub	a4,a4,a0
    8000562c:	0077f793          	andi	a5,a5,7
    80005630:	00f73713          	sltiu	a4,a4,15
    80005634:	00174713          	xori	a4,a4,1
    80005638:	0017b793          	seqz	a5,a5
    8000563c:	00e7f7b3          	and	a5,a5,a4
    80005640:	10078863          	beqz	a5,80005750 <__memmove+0x14c>
    80005644:	00900793          	li	a5,9
    80005648:	1107f463          	bgeu	a5,a6,80005750 <__memmove+0x14c>
    8000564c:	0036581b          	srliw	a6,a2,0x3
    80005650:	fff8081b          	addiw	a6,a6,-1
    80005654:	02081813          	slli	a6,a6,0x20
    80005658:	01d85893          	srli	a7,a6,0x1d
    8000565c:	00858813          	addi	a6,a1,8
    80005660:	00058793          	mv	a5,a1
    80005664:	00050713          	mv	a4,a0
    80005668:	01088833          	add	a6,a7,a6
    8000566c:	0007b883          	ld	a7,0(a5)
    80005670:	00878793          	addi	a5,a5,8
    80005674:	00870713          	addi	a4,a4,8
    80005678:	ff173c23          	sd	a7,-8(a4)
    8000567c:	ff0798e3          	bne	a5,a6,8000566c <__memmove+0x68>
    80005680:	ff867713          	andi	a4,a2,-8
    80005684:	02071793          	slli	a5,a4,0x20
    80005688:	0207d793          	srli	a5,a5,0x20
    8000568c:	00f585b3          	add	a1,a1,a5
    80005690:	40e686bb          	subw	a3,a3,a4
    80005694:	00f507b3          	add	a5,a0,a5
    80005698:	06e60463          	beq	a2,a4,80005700 <__memmove+0xfc>
    8000569c:	0005c703          	lbu	a4,0(a1)
    800056a0:	00e78023          	sb	a4,0(a5)
    800056a4:	04068e63          	beqz	a3,80005700 <__memmove+0xfc>
    800056a8:	0015c603          	lbu	a2,1(a1)
    800056ac:	00100713          	li	a4,1
    800056b0:	00c780a3          	sb	a2,1(a5)
    800056b4:	04e68663          	beq	a3,a4,80005700 <__memmove+0xfc>
    800056b8:	0025c603          	lbu	a2,2(a1)
    800056bc:	00200713          	li	a4,2
    800056c0:	00c78123          	sb	a2,2(a5)
    800056c4:	02e68e63          	beq	a3,a4,80005700 <__memmove+0xfc>
    800056c8:	0035c603          	lbu	a2,3(a1)
    800056cc:	00300713          	li	a4,3
    800056d0:	00c781a3          	sb	a2,3(a5)
    800056d4:	02e68663          	beq	a3,a4,80005700 <__memmove+0xfc>
    800056d8:	0045c603          	lbu	a2,4(a1)
    800056dc:	00400713          	li	a4,4
    800056e0:	00c78223          	sb	a2,4(a5)
    800056e4:	00e68e63          	beq	a3,a4,80005700 <__memmove+0xfc>
    800056e8:	0055c603          	lbu	a2,5(a1)
    800056ec:	00500713          	li	a4,5
    800056f0:	00c782a3          	sb	a2,5(a5)
    800056f4:	00e68663          	beq	a3,a4,80005700 <__memmove+0xfc>
    800056f8:	0065c703          	lbu	a4,6(a1)
    800056fc:	00e78323          	sb	a4,6(a5)
    80005700:	00813403          	ld	s0,8(sp)
    80005704:	01010113          	addi	sp,sp,16
    80005708:	00008067          	ret
    8000570c:	02061713          	slli	a4,a2,0x20
    80005710:	02075713          	srli	a4,a4,0x20
    80005714:	00e587b3          	add	a5,a1,a4
    80005718:	f0f574e3          	bgeu	a0,a5,80005620 <__memmove+0x1c>
    8000571c:	02069613          	slli	a2,a3,0x20
    80005720:	02065613          	srli	a2,a2,0x20
    80005724:	fff64613          	not	a2,a2
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00c78633          	add	a2,a5,a2
    80005730:	fff7c683          	lbu	a3,-1(a5)
    80005734:	fff78793          	addi	a5,a5,-1
    80005738:	fff70713          	addi	a4,a4,-1
    8000573c:	00d70023          	sb	a3,0(a4)
    80005740:	fec798e3          	bne	a5,a2,80005730 <__memmove+0x12c>
    80005744:	00813403          	ld	s0,8(sp)
    80005748:	01010113          	addi	sp,sp,16
    8000574c:	00008067          	ret
    80005750:	02069713          	slli	a4,a3,0x20
    80005754:	02075713          	srli	a4,a4,0x20
    80005758:	00170713          	addi	a4,a4,1
    8000575c:	00e50733          	add	a4,a0,a4
    80005760:	00050793          	mv	a5,a0
    80005764:	0005c683          	lbu	a3,0(a1)
    80005768:	00178793          	addi	a5,a5,1
    8000576c:	00158593          	addi	a1,a1,1
    80005770:	fed78fa3          	sb	a3,-1(a5)
    80005774:	fee798e3          	bne	a5,a4,80005764 <__memmove+0x160>
    80005778:	f89ff06f          	j	80005700 <__memmove+0xfc>

000000008000577c <__putc>:
    8000577c:	fe010113          	addi	sp,sp,-32
    80005780:	00813823          	sd	s0,16(sp)
    80005784:	00113c23          	sd	ra,24(sp)
    80005788:	02010413          	addi	s0,sp,32
    8000578c:	00050793          	mv	a5,a0
    80005790:	fef40593          	addi	a1,s0,-17
    80005794:	00100613          	li	a2,1
    80005798:	00000513          	li	a0,0
    8000579c:	fef407a3          	sb	a5,-17(s0)
    800057a0:	fffff097          	auipc	ra,0xfffff
    800057a4:	b3c080e7          	jalr	-1220(ra) # 800042dc <console_write>
    800057a8:	01813083          	ld	ra,24(sp)
    800057ac:	01013403          	ld	s0,16(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret

00000000800057b8 <__getc>:
    800057b8:	fe010113          	addi	sp,sp,-32
    800057bc:	00813823          	sd	s0,16(sp)
    800057c0:	00113c23          	sd	ra,24(sp)
    800057c4:	02010413          	addi	s0,sp,32
    800057c8:	fe840593          	addi	a1,s0,-24
    800057cc:	00100613          	li	a2,1
    800057d0:	00000513          	li	a0,0
    800057d4:	fffff097          	auipc	ra,0xfffff
    800057d8:	ae8080e7          	jalr	-1304(ra) # 800042bc <console_read>
    800057dc:	fe844503          	lbu	a0,-24(s0)
    800057e0:	01813083          	ld	ra,24(sp)
    800057e4:	01013403          	ld	s0,16(sp)
    800057e8:	02010113          	addi	sp,sp,32
    800057ec:	00008067          	ret

00000000800057f0 <console_handler>:
    800057f0:	fe010113          	addi	sp,sp,-32
    800057f4:	00813823          	sd	s0,16(sp)
    800057f8:	00113c23          	sd	ra,24(sp)
    800057fc:	00913423          	sd	s1,8(sp)
    80005800:	02010413          	addi	s0,sp,32
    80005804:	14202773          	csrr	a4,scause
    80005808:	100027f3          	csrr	a5,sstatus
    8000580c:	0027f793          	andi	a5,a5,2
    80005810:	06079e63          	bnez	a5,8000588c <console_handler+0x9c>
    80005814:	00074c63          	bltz	a4,8000582c <console_handler+0x3c>
    80005818:	01813083          	ld	ra,24(sp)
    8000581c:	01013403          	ld	s0,16(sp)
    80005820:	00813483          	ld	s1,8(sp)
    80005824:	02010113          	addi	sp,sp,32
    80005828:	00008067          	ret
    8000582c:	0ff77713          	andi	a4,a4,255
    80005830:	00900793          	li	a5,9
    80005834:	fef712e3          	bne	a4,a5,80005818 <console_handler+0x28>
    80005838:	ffffe097          	auipc	ra,0xffffe
    8000583c:	6dc080e7          	jalr	1756(ra) # 80003f14 <plic_claim>
    80005840:	00a00793          	li	a5,10
    80005844:	00050493          	mv	s1,a0
    80005848:	02f50c63          	beq	a0,a5,80005880 <console_handler+0x90>
    8000584c:	fc0506e3          	beqz	a0,80005818 <console_handler+0x28>
    80005850:	00050593          	mv	a1,a0
    80005854:	00001517          	auipc	a0,0x1
    80005858:	b6450513          	addi	a0,a0,-1180 # 800063b8 <_ZZ14__print_uint64mE6digits+0x220>
    8000585c:	fffff097          	auipc	ra,0xfffff
    80005860:	afc080e7          	jalr	-1284(ra) # 80004358 <__printf>
    80005864:	01013403          	ld	s0,16(sp)
    80005868:	01813083          	ld	ra,24(sp)
    8000586c:	00048513          	mv	a0,s1
    80005870:	00813483          	ld	s1,8(sp)
    80005874:	02010113          	addi	sp,sp,32
    80005878:	ffffe317          	auipc	t1,0xffffe
    8000587c:	6d430067          	jr	1748(t1) # 80003f4c <plic_complete>
    80005880:	fffff097          	auipc	ra,0xfffff
    80005884:	3e0080e7          	jalr	992(ra) # 80004c60 <uartintr>
    80005888:	fddff06f          	j	80005864 <console_handler+0x74>
    8000588c:	00001517          	auipc	a0,0x1
    80005890:	c2c50513          	addi	a0,a0,-980 # 800064b8 <digits+0x78>
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	a68080e7          	jalr	-1432(ra) # 800042fc <panic>
	...
