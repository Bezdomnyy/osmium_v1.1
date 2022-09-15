
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	3d813103          	ld	sp,984(sp) # 800073d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5f0030ef          	jal	ra,8000360c <start>

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
    800012f8:	b78080e7          	jalr	-1160(ra) # 80001e6c <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    800012fc:	00006797          	auipc	a5,0x6
    80001300:	0e47b783          	ld	a5,228(a5) # 800073e0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    8000136c:	ca4080e7          	jalr	-860(ra) # 8000200c <_ZN15MemoryAllocator8allocateEm>
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
    80001394:	d08080e7          	jalr	-760(ra) # 80002098 <_ZN15MemoryAllocator4freeEPv>
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
    800013c4:	4e8080e7          	jalr	1256(ra) # 800018a8 <_ZN3TCB9createTCBEPFvPvES0_>
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
    800013e8:	0047b783          	ld	a5,4(a5) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001400:	5c4080e7          	jalr	1476(ra) # 800019c0 <_ZN3TCB8dispatchEv>
}
    80001404:	f6dff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	5b8080e7          	jalr	1464(ra) # 800019c0 <_ZN3TCB8dispatchEv>
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
    8000143c:	4fc080e7          	jalr	1276(ra) # 80001934 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
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
    8000147c:	ce4080e7          	jalr	-796(ra) # 8000215c <_ZN3Sem9createSemEj>
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
    800014b8:	cf0080e7          	jalr	-784(ra) # 800021a4 <_ZN3SemD1Ev>
    800014bc:	00048513          	mv	a0,s1
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	5d8080e7          	jalr	1496(ra) # 80001a98 <_ZdlPv>

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
    800014e0:	ce0080e7          	jalr	-800(ra) # 800021bc <_ZN3Sem7semWaitEv>

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
    800014f8:	cf0080e7          	jalr	-784(ra) # 800021e4 <_ZN3Sem9semSignalEv>
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
    80001510:	f40080e7          	jalr	-192(ra) # 8000244c <_ZN9Scheduler9timeSleepEm>
}
    80001514:	e5dff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x41
inline void Kernel::getc_handler() {
    volatile uint64 arg0;
    arg0 = __getc();
    80001518:	00004097          	auipc	ra,0x4
    8000151c:	1f0080e7          	jalr	496(ra) # 80005708 <__getc>
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
    80001544:	18c080e7          	jalr	396(ra) # 800056cc <__putc>
}
    80001548:	e29ff06f          	j	80001370 <_ZN6Kernel15syscall_handlerEv+0x58>
            asm volatile ("addi a0, zero, -1");
    8000154c:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    80001550:	00005517          	auipc	a0,0x5
    80001554:	ad050513          	addi	a0,a0,-1328 # 80006020 <CONSOLE_STATUS+0x10>
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	028080e7          	jalr	40(ra) # 80002580 <_Z14__print_stringPKc>
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
    800015b0:	12f48a63          	beq	s1,a5,800016e4 <_ZN6Kernel21supervisorTrapHandlerEv+0x180>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800015b4:	141027f3          	csrr	a5,sepc
    800015b8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800015bc:	fd843903          	ld	s2,-40(s0)
    __print_string("Neobradjen izuzetak.\n");
    800015c0:	00005517          	auipc	a0,0x5
    800015c4:	a8050513          	addi	a0,a0,-1408 # 80006040 <CONSOLE_STATUS+0x30>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	fb8080e7          	jalr	-72(ra) # 80002580 <_Z14__print_stringPKc>
    __print_string("scause: ");
    800015d0:	00005517          	auipc	a0,0x5
    800015d4:	a8850513          	addi	a0,a0,-1400 # 80006058 <CONSOLE_STATUS+0x48>
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	fa8080e7          	jalr	-88(ra) # 80002580 <_Z14__print_stringPKc>
    __print_uint64(scause);
    800015e0:	00048513          	mv	a0,s1
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	fe0080e7          	jalr	-32(ra) # 800025c4 <_Z14__print_uint64m>
    __putc('\n');
    800015ec:	00a00513          	li	a0,10
    800015f0:	00004097          	auipc	ra,0x4
    800015f4:	0dc080e7          	jalr	220(ra) # 800056cc <__putc>
    __print_string("sepc: ");
    800015f8:	00005517          	auipc	a0,0x5
    800015fc:	a7050513          	addi	a0,a0,-1424 # 80006068 <CONSOLE_STATUS+0x58>
    80001600:	00001097          	auipc	ra,0x1
    80001604:	f80080e7          	jalr	-128(ra) # 80002580 <_Z14__print_stringPKc>
    __print_uint64(sepc);
    80001608:	00090513          	mv	a0,s2
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	fb8080e7          	jalr	-72(ra) # 800025c4 <_Z14__print_uint64m>
    __putc('\n');
    80001614:	00a00513          	li	a0,10
    80001618:	00004097          	auipc	ra,0x4
    8000161c:	0b4080e7          	jalr	180(ra) # 800056cc <__putc>
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
        Scheduler::timerInterrupt();
    80001670:	00001097          	auipc	ra,0x1
    80001674:	d1c080e7          	jalr	-740(ra) # 8000238c <_ZN9Scheduler14timerInterruptEv>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    80001678:	00006717          	auipc	a4,0x6
    8000167c:	d5873703          	ld	a4,-680(a4) # 800073d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001680:	00073783          	ld	a5,0(a4)
    80001684:	00178793          	addi	a5,a5,1
    80001688:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    8000168c:	00006717          	auipc	a4,0x6
    80001690:	d5c73703          	ld	a4,-676(a4) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001694:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001698:	02073703          	ld	a4,32(a4)
    8000169c:	00e7f863          	bgeu	a5,a4,800016ac <_ZN6Kernel21supervisorTrapHandlerEv+0x148>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    800016a0:	00200793          	li	a5,2
    800016a4:	1447b073          	csrc	sip,a5
        return;
    800016a8:	f7dff06f          	j	80001624 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800016ac:	141027f3          	csrr	a5,sepc
    800016b0:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    800016b4:	fd043483          	ld	s1,-48(s0)
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    800016b8:	100027f3          	csrr	a5,sstatus
    800016bc:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800016c0:	fc843903          	ld	s2,-56(s0)
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }
    800016c4:	00006797          	auipc	a5,0x6
    800016c8:	d0c7b783          	ld	a5,-756(a5) # 800073d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016cc:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	2f0080e7          	jalr	752(ra) # 800019c0 <_ZN3TCB8dispatchEv>
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    800016d8:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800016dc:	14149073          	csrw	sepc,s1
}
    800016e0:	fc1ff06f          	j	800016a0 <_ZN6Kernel21supervisorTrapHandlerEv+0x13c>
        console_handler();
    800016e4:	00004097          	auipc	ra,0x4
    800016e8:	05c080e7          	jalr	92(ra) # 80005740 <console_handler>
        return;
    800016ec:	f39ff06f          	j	80001624 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>

00000000800016f0 <main>:
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    80001700:	00000097          	auipc	ra,0x0
    80001704:	be4080e7          	jalr	-1052(ra) # 800012e4 <_ZN6Kernel10initKernelEv>





    TCB* threads[2] = {nullptr, nullptr};
    80001708:	fe043023          	sd	zero,-32(s0)
    8000170c:	fe043423          	sd	zero,-24(s0)
    thread_create(&threads[0], nullptr, nullptr);
    80001710:	00000613          	li	a2,0
    80001714:	00000593          	li	a1,0
    80001718:	fe040513          	addi	a0,s0,-32
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	8fc080e7          	jalr	-1796(ra) # 80001018 <thread_create>
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001724:	00200793          	li	a5,2
    80001728:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(RiscV::SIE);
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))&userMain, nullptr);
    8000172c:	00000613          	li	a2,0
    80001730:	00006597          	auipc	a1,0x6
    80001734:	c905b583          	ld	a1,-880(a1) # 800073c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001738:	fe840513          	addi	a0,s0,-24
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	8dc080e7          	jalr	-1828(ra) # 80001018 <thread_create>
    //thread_create(&threads[2], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];
    80001744:	fe043703          	ld	a4,-32(s0)
    80001748:	00006797          	auipc	a5,0x6
    8000174c:	ca07b783          	ld	a5,-864(a5) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001750:	00e7b023          	sd	a4,0(a5)

    //thread_dispatch();
    __print_string("hey!\n");
    80001754:	00005517          	auipc	a0,0x5
    80001758:	a2c50513          	addi	a0,a0,-1492 # 80006180 <CONSOLE_STATUS+0x170>
    8000175c:	00001097          	auipc	ra,0x1
    80001760:	e24080e7          	jalr	-476(ra) # 80002580 <_Z14__print_stringPKc>
    while(!threads[1]->isFinished()) { thread_dispatch(); }
    80001764:	fe843783          	ld	a5,-24(s0)
    bool isFinished() const { return finished; }
    80001768:	0187c783          	lbu	a5,24(a5)
    8000176c:	00079863          	bnez	a5,8000177c <main+0x8c>
    80001770:	00000097          	auipc	ra,0x0
    80001774:	8c0080e7          	jalr	-1856(ra) # 80001030 <thread_dispatch>
    80001778:	fedff06f          	j	80001764 <main+0x74>

    __print_string("Finished\n");
    8000177c:	00005517          	auipc	a0,0x5
    80001780:	a0c50513          	addi	a0,a0,-1524 # 80006188 <CONSOLE_STATUS+0x178>
    80001784:	00001097          	auipc	ra,0x1
    80001788:	dfc080e7          	jalr	-516(ra) # 80002580 <_Z14__print_stringPKc>

    //thread_exit();


    8000178c:	01813083          	ld	ra,24(sp)
    80001790:	01013403          	ld	s0,16(sp)
    80001794:	02010113          	addi	sp,sp,32
    80001798:	00008067          	ret

000000008000179c <_ZN3TCB13threadWrapperEv>:
    __print_uint64((uint64)running); __putc('\n');*/

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00113423          	sd	ra,8(sp)
    800017a4:	00813023          	sd	s0,0(sp)
    800017a8:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	990080e7          	jalr	-1648(ra) # 8000213c <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    800017b4:	00006797          	auipc	a5,0x6
    800017b8:	c8c7b783          	ld	a5,-884(a5) # 80007440 <_ZN3TCB7runningE>
    800017bc:	0007b703          	ld	a4,0(a5)
    800017c0:	0087b503          	ld	a0,8(a5)
    800017c4:	000700e7          	jalr	a4
    thread_exit();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	85c080e7          	jalr	-1956(ra) # 80001024 <thread_exit>
}
    800017d0:	00813083          	ld	ra,8(sp)
    800017d4:	00013403          	ld	s0,0(sp)
    800017d8:	01010113          	addi	sp,sp,16
    800017dc:	00008067          	ret

00000000800017e0 <_ZN3TCBC1EPFvPvES0_mb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready)
    800017e0:	fd010113          	addi	sp,sp,-48
    800017e4:	02113423          	sd	ra,40(sp)
    800017e8:	02813023          	sd	s0,32(sp)
    800017ec:	00913c23          	sd	s1,24(sp)
    800017f0:	01213823          	sd	s2,16(sp)
    800017f4:	01313423          	sd	s3,8(sp)
    800017f8:	01413023          	sd	s4,0(sp)
    800017fc:	03010413          	addi	s0,sp,48
    80001800:	00050493          	mv	s1,a0
    80001804:	00058913          	mv	s2,a1
    80001808:	00068993          	mv	s3,a3
    8000180c:	00070a13          	mv	s4,a4
        })
    80001810:	00b53023          	sd	a1,0(a0)
    80001814:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001818:	06058463          	beqz	a1,80001880 <_ZN3TCBC1EPFvPvES0_mb+0xa0>
    8000181c:	00008537          	lui	a0,0x8
    80001820:	00000097          	auipc	ra,0x0
    80001824:	250080e7          	jalr	592(ra) # 80001a70 <_Znam>
        })
    80001828:	00a4b823          	sd	a0,16(s1)
    8000182c:	00048c23          	sb	zero,24(s1)
    80001830:	00048ca3          	sb	zero,25(s1)
    80001834:	0334b023          	sd	s3,32(s1)
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001838:	04090863          	beqz	s2,80001888 <_ZN3TCBC1EPFvPvES0_mb+0xa8>
    8000183c:	00000797          	auipc	a5,0x0
    80001840:	f6078793          	addi	a5,a5,-160 # 8000179c <_ZN3TCB13threadWrapperEv>
        })
    80001844:	02f4b423          	sd	a5,40(s1)
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001848:	04050463          	beqz	a0,80001890 <_ZN3TCBC1EPFvPvES0_mb+0xb0>
    8000184c:	000087b7          	lui	a5,0x8
    80001850:	00f50533          	add	a0,a0,a5
        })
    80001854:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001858:	00090463          	beqz	s2,80001860 <_ZN3TCBC1EPFvPvES0_mb+0x80>
    8000185c:	020a1e63          	bnez	s4,80001898 <_ZN3TCBC1EPFvPvES0_mb+0xb8>
}
    80001860:	02813083          	ld	ra,40(sp)
    80001864:	02013403          	ld	s0,32(sp)
    80001868:	01813483          	ld	s1,24(sp)
    8000186c:	01013903          	ld	s2,16(sp)
    80001870:	00813983          	ld	s3,8(sp)
    80001874:	00013a03          	ld	s4,0(sp)
    80001878:	03010113          	addi	sp,sp,48
    8000187c:	00008067          	ret
stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001880:	00000513          	li	a0,0
    80001884:	fa5ff06f          	j	80001828 <_ZN3TCBC1EPFvPvES0_mb+0x48>
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001888:	00000793          	li	a5,0
    8000188c:	fb9ff06f          	j	80001844 <_ZN3TCBC1EPFvPvES0_mb+0x64>
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001890:	00000513          	li	a0,0
    80001894:	fc1ff06f          	j	80001854 <_ZN3TCBC1EPFvPvES0_mb+0x74>
    if (body != nullptr && ready) Scheduler::put(this);
    80001898:	00048513          	mv	a0,s1
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	a84080e7          	jalr	-1404(ra) # 80002320 <_ZN9Scheduler3putEP3TCB>
}
    800018a4:	fbdff06f          	j	80001860 <_ZN3TCBC1EPFvPvES0_mb+0x80>

00000000800018a8 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    800018a8:	fd010113          	addi	sp,sp,-48
    800018ac:	02113423          	sd	ra,40(sp)
    800018b0:	02813023          	sd	s0,32(sp)
    800018b4:	00913c23          	sd	s1,24(sp)
    800018b8:	01213823          	sd	s2,16(sp)
    800018bc:	01313423          	sd	s3,8(sp)
    800018c0:	03010413          	addi	s0,sp,48
    800018c4:	00050913          	mv	s2,a0
    800018c8:	00058993          	mv	s3,a1
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1);
    800018cc:	03800513          	li	a0,56
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	178080e7          	jalr	376(ra) # 80001a48 <_Znwm>
    800018d8:	00050493          	mv	s1,a0
    800018dc:	00100713          	li	a4,1
    800018e0:	00200693          	li	a3,2
    800018e4:	00098613          	mv	a2,s3
    800018e8:	00090593          	mv	a1,s2
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	ef4080e7          	jalr	-268(ra) # 800017e0 <_ZN3TCBC1EPFvPvES0_mb>
    800018f4:	0200006f          	j	80001914 <_ZN3TCB9createTCBEPFvPvES0_+0x6c>
    800018f8:	00050913          	mv	s2,a0
    800018fc:	00048513          	mv	a0,s1
    80001900:	00000097          	auipc	ra,0x0
    80001904:	198080e7          	jalr	408(ra) # 80001a98 <_ZdlPv>
    80001908:	00090513          	mv	a0,s2
    8000190c:	00007097          	auipc	ra,0x7
    80001910:	c4c080e7          	jalr	-948(ra) # 80008558 <_Unwind_Resume>
}
    80001914:	00048513          	mv	a0,s1
    80001918:	02813083          	ld	ra,40(sp)
    8000191c:	02013403          	ld	s0,32(sp)
    80001920:	01813483          	ld	s1,24(sp)
    80001924:	01013903          	ld	s2,16(sp)
    80001928:	00813983          	ld	s3,8(sp)
    8000192c:	03010113          	addi	sp,sp,48
    80001930:	00008067          	ret

0000000080001934 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    80001934:	fd010113          	addi	sp,sp,-48
    80001938:	02113423          	sd	ra,40(sp)
    8000193c:	02813023          	sd	s0,32(sp)
    80001940:	00913c23          	sd	s1,24(sp)
    80001944:	01213823          	sd	s2,16(sp)
    80001948:	01313423          	sd	s3,8(sp)
    8000194c:	03010413          	addi	s0,sp,48
    80001950:	00050913          	mv	s2,a0
    80001954:	00058993          	mv	s3,a1
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0);
    80001958:	03800513          	li	a0,56
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	0ec080e7          	jalr	236(ra) # 80001a48 <_Znwm>
    80001964:	00050493          	mv	s1,a0
    80001968:	00000713          	li	a4,0
    8000196c:	00200693          	li	a3,2
    80001970:	00098613          	mv	a2,s3
    80001974:	00090593          	mv	a1,s2
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	e68080e7          	jalr	-408(ra) # 800017e0 <_ZN3TCBC1EPFvPvES0_mb>
    80001980:	0200006f          	j	800019a0 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x6c>
    80001984:	00050913          	mv	s2,a0
    80001988:	00048513          	mv	a0,s1
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	10c080e7          	jalr	268(ra) # 80001a98 <_ZdlPv>
    80001994:	00090513          	mv	a0,s2
    80001998:	00007097          	auipc	ra,0x7
    8000199c:	bc0080e7          	jalr	-1088(ra) # 80008558 <_Unwind_Resume>
}
    800019a0:	00048513          	mv	a0,s1
    800019a4:	02813083          	ld	ra,40(sp)
    800019a8:	02013403          	ld	s0,32(sp)
    800019ac:	01813483          	ld	s1,24(sp)
    800019b0:	01013903          	ld	s2,16(sp)
    800019b4:	00813983          	ld	s3,8(sp)
    800019b8:	03010113          	addi	sp,sp,48
    800019bc:	00008067          	ret

00000000800019c0 <_ZN3TCB8dispatchEv>:
{
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800019d4:	00006497          	auipc	s1,0x6
    800019d8:	a6c4b483          	ld	s1,-1428(s1) # 80007440 <_ZN3TCB7runningE>
    800019dc:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800019e0:	00079663          	bnez	a5,800019ec <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    800019e4:	0194c783          	lbu	a5,25(s1)
    800019e8:	02078663          	beqz	a5,80001a14 <_ZN3TCB8dispatchEv+0x54>
    running = Scheduler::get();
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	8cc080e7          	jalr	-1844(ra) # 800022b8 <_ZN9Scheduler3getEv>
    800019f4:	00006797          	auipc	a5,0x6
    800019f8:	a4a7b623          	sd	a0,-1460(a5) # 80007440 <_ZN3TCB7runningE>
    while (!running) { Scheduler::get(); }
    800019fc:	00006597          	auipc	a1,0x6
    80001a00:	a445b583          	ld	a1,-1468(a1) # 80007440 <_ZN3TCB7runningE>
    80001a04:	02059063          	bnez	a1,80001a24 <_ZN3TCB8dispatchEv+0x64>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	8b0080e7          	jalr	-1872(ra) # 800022b8 <_ZN9Scheduler3getEv>
    80001a10:	fedff06f          	j	800019fc <_ZN3TCB8dispatchEv+0x3c>
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001a14:	00048513          	mv	a0,s1
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	908080e7          	jalr	-1784(ra) # 80002320 <_ZN9Scheduler3putEP3TCB>
    80001a20:	fcdff06f          	j	800019ec <_ZN3TCB8dispatchEv+0x2c>
    TCB::contextSwitch(&old->context, &running->context);
    80001a24:	02858593          	addi	a1,a1,40
    80001a28:	02848513          	addi	a0,s1,40
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	884080e7          	jalr	-1916(ra) # 800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a34:	01813083          	ld	ra,24(sp)
    80001a38:	01013403          	ld	s0,16(sp)
    80001a3c:	00813483          	ld	s1,8(sp)
    80001a40:	02010113          	addi	sp,sp,32
    80001a44:	00008067          	ret

0000000080001a48 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00113423          	sd	ra,8(sp)
    80001a50:	00813023          	sd	s0,0(sp)
    80001a54:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a58:	fffff097          	auipc	ra,0xfffff
    80001a5c:	5a8080e7          	jalr	1448(ra) # 80001000 <mem_alloc>
}
    80001a60:	00813083          	ld	ra,8(sp)
    80001a64:	00013403          	ld	s0,0(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_Znam>:

void* operator new[](size_t size) {
    80001a70:	ff010113          	addi	sp,sp,-16
    80001a74:	00113423          	sd	ra,8(sp)
    80001a78:	00813023          	sd	s0,0(sp)
    80001a7c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a80:	fffff097          	auipc	ra,0xfffff
    80001a84:	580080e7          	jalr	1408(ra) # 80001000 <mem_alloc>
}
    80001a88:	00813083          	ld	ra,8(sp)
    80001a8c:	00013403          	ld	s0,0(sp)
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret

0000000080001a98 <_ZdlPv>:

void operator delete(void* ptr) {
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00113423          	sd	ra,8(sp)
    80001aa0:	00813023          	sd	s0,0(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001aa8:	fffff097          	auipc	ra,0xfffff
    80001aac:	564080e7          	jalr	1380(ra) # 8000100c <mem_free>
}
    80001ab0:	00813083          	ld	ra,8(sp)
    80001ab4:	00013403          	ld	s0,0(sp)
    80001ab8:	01010113          	addi	sp,sp,16
    80001abc:	00008067          	ret

0000000080001ac0 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00113423          	sd	ra,8(sp)
    80001ac8:	00813023          	sd	s0,0(sp)
    80001acc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001ad0:	fffff097          	auipc	ra,0xfffff
    80001ad4:	53c080e7          	jalr	1340(ra) # 8000100c <mem_free>
}
    80001ad8:	00813083          	ld	ra,8(sp)
    80001adc:	00013403          	ld	s0,0(sp)
    80001ae0:	01010113          	addi	sp,sp,16
    80001ae4:	00008067          	ret

0000000080001ae8 <_Z16threadRunWrapperPv>:
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    80001ae8:	ff010113          	addi	sp,sp,-16
    80001aec:	00113423          	sd	ra,8(sp)
    80001af0:	00813023          	sd	s0,0(sp)
    80001af4:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) thread;
    t->run();
    80001af8:	00053783          	ld	a5,0(a0) # 8000 <_entry-0x7fff8000>
    80001afc:	0107b783          	ld	a5,16(a5)
    80001b00:	000780e7          	jalr	a5
}
    80001b04:	00813083          	ld	ra,8(sp)
    80001b08:	00013403          	ld	s0,0(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00813423          	sd	s0,8(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    80001b20:	00813403          	ld	s0,8(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <_ZN6ThreadD0Ev>:
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	f5c080e7          	jalr	-164(ra) # 80001a98 <_ZdlPv>
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00113423          	sd	ra,8(sp)
    80001b5c:	00813023          	sd	s0,0(sp)
    80001b60:	01010413          	addi	s0,sp,16
    80001b64:	00006797          	auipc	a5,0x6
    80001b68:	82c78793          	addi	a5,a5,-2004 # 80007390 <_ZTV9Semaphore+0x10>
    80001b6c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001b70:	00853503          	ld	a0,8(a0)
    80001b74:	fffff097          	auipc	ra,0xfffff
    80001b78:	4e0080e7          	jalr	1248(ra) # 80001054 <sem_close>
}
    80001b7c:	00813083          	ld	ra,8(sp)
    80001b80:	00013403          	ld	s0,0(sp)
    80001b84:	01010113          	addi	sp,sp,16
    80001b88:	00008067          	ret

0000000080001b8c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001b8c:	fe010113          	addi	sp,sp,-32
    80001b90:	00113c23          	sd	ra,24(sp)
    80001b94:	00813823          	sd	s0,16(sp)
    80001b98:	00913423          	sd	s1,8(sp)
    80001b9c:	02010413          	addi	s0,sp,32
    80001ba0:	00050493          	mv	s1,a0
}
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	fb0080e7          	jalr	-80(ra) # 80001b54 <_ZN9SemaphoreD1Ev>
    80001bac:	00048513          	mv	a0,s1
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	ee8080e7          	jalr	-280(ra) # 80001a98 <_ZdlPv>
    80001bb8:	01813083          	ld	ra,24(sp)
    80001bbc:	01013403          	ld	s0,16(sp)
    80001bc0:	00813483          	ld	s1,8(sp)
    80001bc4:	02010113          	addi	sp,sp,32
    80001bc8:	00008067          	ret

0000000080001bcc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00113423          	sd	ra,8(sp)
    80001bd4:	00813023          	sd	s0,0(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    80001bdc:	00005797          	auipc	a5,0x5
    80001be0:	78c78793          	addi	a5,a5,1932 # 80007368 <_ZTV6Thread+0x10>
    80001be4:	00f53023          	sd	a5,0(a0)
    thread_create_deactivated(&myHandle, body, arg);
    80001be8:	00850513          	addi	a0,a0,8
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	450080e7          	jalr	1104(ra) # 8000103c <thread_create_deactivated>
}
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN6Thread5startEv>:
int Thread::start() {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,&threadRunWrapper, this);
    80001c14:	00050613          	mv	a2,a0
    80001c18:	00000597          	auipc	a1,0x0
    80001c1c:	ed058593          	addi	a1,a1,-304 # 80001ae8 <_Z16threadRunWrapperPv>
    80001c20:	00850513          	addi	a0,a0,8
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	3f4080e7          	jalr	1012(ra) # 80001018 <thread_create>
}
    80001c2c:	00000513          	li	a0,0
    80001c30:	00813083          	ld	ra,8(sp)
    80001c34:	00013403          	ld	s0,0(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret

0000000080001c40 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001c40:	ff010113          	addi	sp,sp,-16
    80001c44:	00113423          	sd	ra,8(sp)
    80001c48:	00813023          	sd	s0,0(sp)
    80001c4c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	3e0080e7          	jalr	992(ra) # 80001030 <thread_dispatch>
}
    80001c58:	00813083          	ld	ra,8(sp)
    80001c5c:	00013403          	ld	s0,0(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	400080e7          	jalr	1024(ra) # 80001078 <time_sleep>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN6ThreadC1Ev>:
Thread::Thread() {}
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00813423          	sd	s0,8(sp)
    80001c98:	01010413          	addi	s0,sp,16
    80001c9c:	00005797          	auipc	a5,0x5
    80001ca0:	6cc78793          	addi	a5,a5,1740 # 80007368 <_ZTV6Thread+0x10>
    80001ca4:	00f53023          	sd	a5,0(a0)
    80001ca8:	00813403          	ld	s0,8(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret

0000000080001cb4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    80001cc4:	00005797          	auipc	a5,0x5
    80001cc8:	6cc78793          	addi	a5,a5,1740 # 80007390 <_ZTV9Semaphore+0x10>
    80001ccc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001cd0:	00850513          	addi	a0,a0,8
    80001cd4:	fffff097          	auipc	ra,0xfffff
    80001cd8:	374080e7          	jalr	884(ra) # 80001048 <sem_open>
}
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00113423          	sd	ra,8(sp)
    80001cf4:	00813023          	sd	s0,0(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001cfc:	00853503          	ld	a0,8(a0)
    80001d00:	fffff097          	auipc	ra,0xfffff
    80001d04:	360080e7          	jalr	864(ra) # 80001060 <sem_wait>
}
    80001d08:	00813083          	ld	ra,8(sp)
    80001d0c:	00013403          	ld	s0,0(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00113423          	sd	ra,8(sp)
    80001d20:	00813023          	sd	s0,0(sp)
    80001d24:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001d28:	00853503          	ld	a0,8(a0)
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	340080e7          	jalr	832(ra) # 8000106c <sem_signal>
}
    80001d34:	00813083          	ld	ra,8(sp)
    80001d38:	00013403          	ld	s0,0(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <_ZN14PeriodicThreadC1Em>:


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    80001d44:	fe010113          	addi	sp,sp,-32
    80001d48:	00113c23          	sd	ra,24(sp)
    80001d4c:	00813823          	sd	s0,16(sp)
    80001d50:	00913423          	sd	s1,8(sp)
    80001d54:	01213023          	sd	s2,0(sp)
    80001d58:	02010413          	addi	s0,sp,32
    80001d5c:	00050493          	mv	s1,a0
    80001d60:	00058913          	mv	s2,a1
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	f2c080e7          	jalr	-212(ra) # 80001c90 <_ZN6ThreadC1Ev>
    80001d6c:	00005797          	auipc	a5,0x5
    80001d70:	5cc78793          	addi	a5,a5,1484 # 80007338 <_ZTV14PeriodicThread+0x10>
    80001d74:	00f4b023          	sd	a5,0(s1)
    80001d78:	0324b423          	sd	s2,40(s1)
    80001d7c:	01813083          	ld	ra,24(sp)
    80001d80:	01013403          	ld	s0,16(sp)
    80001d84:	00813483          	ld	s1,8(sp)
    80001d88:	00013903          	ld	s2,0(sp)
    80001d8c:	02010113          	addi	sp,sp,32
    80001d90:	00008067          	ret

0000000080001d94 <_ZN7Console4getcEv>:


//CONSOLE

char Console::getc() {
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00113423          	sd	ra,8(sp)
    80001d9c:	00813023          	sd	s0,0(sp)
    80001da0:	01010413          	addi	s0,sp,16
    return __getc();
    80001da4:	00004097          	auipc	ra,0x4
    80001da8:	964080e7          	jalr	-1692(ra) # 80005708 <__getc>
}
    80001dac:	00813083          	ld	ra,8(sp)
    80001db0:	00013403          	ld	s0,0(sp)
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00008067          	ret

0000000080001dbc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00113423          	sd	ra,8(sp)
    80001dc4:	00813023          	sd	s0,0(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    __putc(c);
    80001dcc:	00004097          	auipc	ra,0x4
    80001dd0:	900080e7          	jalr	-1792(ra) # 800056cc <__putc>
}
    80001dd4:	00813083          	ld	ra,8(sp)
    80001dd8:	00013403          	ld	s0,0(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret

0000000080001de4 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00813423          	sd	s0,8(sp)
    80001dec:	01010413          	addi	s0,sp,16
    80001df0:	00813403          	ld	s0,8(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_ZN14PeriodicThread18periodicActivationEv>:
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00813423          	sd	s0,8(sp)
    80001e04:	01010413          	addi	s0,sp,16
    80001e08:	00813403          	ld	s0,8(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00813423          	sd	s0,8(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    80001e20:	00005797          	auipc	a5,0x5
    80001e24:	51878793          	addi	a5,a5,1304 # 80007338 <_ZTV14PeriodicThread+0x10>
    80001e28:	00f53023          	sd	a5,0(a0)
    80001e2c:	00813403          	ld	s0,8(sp)
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <_ZN14PeriodicThreadD0Ev>:
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00113423          	sd	ra,8(sp)
    80001e40:	00813023          	sd	s0,0(sp)
    80001e44:	01010413          	addi	s0,sp,16
    80001e48:	00005797          	auipc	a5,0x5
    80001e4c:	4f078793          	addi	a5,a5,1264 # 80007338 <_ZTV14PeriodicThread+0x10>
    80001e50:	00f53023          	sd	a5,0(a0)
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	c44080e7          	jalr	-956(ra) # 80001a98 <_ZdlPv>
    80001e5c:	00813083          	ld	ra,8(sp)
    80001e60:	00013403          	ld	s0,0(sp)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00813423          	sd	s0,8(sp)
    80001e74:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    80001e78:	00005797          	auipc	a5,0x5
    80001e7c:	5507b783          	ld	a5,1360(a5) # 800073c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e80:	0007b783          	ld	a5,0(a5)
    80001e84:	00005697          	auipc	a3,0x5
    80001e88:	5cc68693          	addi	a3,a3,1484 # 80007450 <_ZN15MemoryAllocator8fMemHeadE>
    80001e8c:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    80001e90:	00005717          	auipc	a4,0x5
    80001e94:	56073703          	ld	a4,1376(a4) # 800073f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001e98:	00073703          	ld	a4,0(a4)
    80001e9c:	40f70733          	sub	a4,a4,a5
    80001ea0:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80001ea4:	0006b783          	ld	a5,0(a3)
    80001ea8:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    80001eac:	0007b823          	sd	zero,16(a5)
}
    80001eb0:	00813403          	ld	s0,8(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    80001ebc:	ff010113          	addi	sp,sp,-16
    80001ec0:	00813423          	sd	s0,8(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    80001ec8:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    80001ecc:	00005517          	auipc	a0,0x5
    80001ed0:	58453503          	ld	a0,1412(a0) # 80007450 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80001ed4:	02050063          	beqz	a0,80001ef4 <_ZN15MemoryAllocator8firstFitEm+0x38>
    80001ed8:	01053703          	ld	a4,16(a0)
    80001edc:	00070c63          	beqz	a4,80001ef4 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80001ee0:	00860793          	addi	a5,a2,8
    80001ee4:	00053683          	ld	a3,0(a0)
    80001ee8:	00f6fe63          	bgeu	a3,a5,80001f04 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80001eec:	00070513          	mv	a0,a4
    80001ef0:	fe5ff06f          	j	80001ed4 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001ef4:	00050863          	beqz	a0,80001f04 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001ef8:	00860613          	addi	a2,a2,8
    80001efc:	00053783          	ld	a5,0(a0)
    80001f00:	00c7e863          	bltu	a5,a2,80001f10 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001f04:	00813403          	ld	s0,8(sp)
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00008067          	ret
    return nullptr;
    80001f10:	00000513          	li	a0,0
    80001f14:	ff1ff06f          	j	80001f04 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001f18 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00813423          	sd	s0,8(sp)
    80001f20:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001f24:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001f28:	03f57793          	andi	a5,a0,63
    80001f2c:	00078863          	beqz	a5,80001f3c <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80001f30:	04000713          	li	a4,64
    80001f34:	40f707b3          	sub	a5,a4,a5
    80001f38:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001f3c:	00813403          	ld	s0,8(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001f48:	fe010113          	addi	sp,sp,-32
    80001f4c:	00113c23          	sd	ra,24(sp)
    80001f50:	00813823          	sd	s0,16(sp)
    80001f54:	00913423          	sd	s1,8(sp)
    80001f58:	02010413          	addi	s0,sp,32
    80001f5c:	00050493          	mv	s1,a0
    if (node) {
    80001f60:	04050c63          	beqz	a0,80001fb8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80001f64:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	fb0080e7          	jalr	-80(ra) # 80001f18 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80001f70:	0004b783          	ld	a5,0(s1)
    80001f74:	40a787b3          	sub	a5,a5,a0
    80001f78:	03f00713          	li	a4,63
    80001f7c:	04f77e63          	bgeu	a4,a5,80001fd8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80001f80:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80001f84:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80001f88:	0084b783          	ld	a5,8(s1)
    80001f8c:	04078063          	beqz	a5,80001fcc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80001f90:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80001f94:	0104b783          	ld	a5,16(s1)
    80001f98:	00078463          	beqz	a5,80001fa0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001f9c:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80001fa0:	0104b783          	ld	a5,16(s1)
    80001fa4:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80001fa8:	0084b783          	ld	a5,8(s1)
    80001fac:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80001fb0:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80001fb4:	00848513          	addi	a0,s1,8
}
    80001fb8:	01813083          	ld	ra,24(sp)
    80001fbc:	01013403          	ld	s0,16(sp)
    80001fc0:	00813483          	ld	s1,8(sp)
    80001fc4:	02010113          	addi	sp,sp,32
    80001fc8:	00008067          	ret
            else fMemHead = newNode;
    80001fcc:	00005797          	auipc	a5,0x5
    80001fd0:	48e7b223          	sd	a4,1156(a5) # 80007450 <_ZN15MemoryAllocator8fMemHeadE>
    80001fd4:	fc1ff06f          	j	80001f94 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80001fd8:	0084b783          	ld	a5,8(s1)
    80001fdc:	02078063          	beqz	a5,80001ffc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80001fe0:	0104b703          	ld	a4,16(s1)
    80001fe4:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001fe8:	0104b783          	ld	a5,16(s1)
    80001fec:	fc0782e3          	beqz	a5,80001fb0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80001ff0:	0084b703          	ld	a4,8(s1)
    80001ff4:	00e7b423          	sd	a4,8(a5)
    80001ff8:	fb9ff06f          	j	80001fb0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    80001ffc:	0104b783          	ld	a5,16(s1)
    80002000:	00005717          	auipc	a4,0x5
    80002004:	44f73823          	sd	a5,1104(a4) # 80007450 <_ZN15MemoryAllocator8fMemHeadE>
    80002008:	fe1ff06f          	j	80001fe8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

000000008000200c <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00113c23          	sd	ra,24(sp)
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00913423          	sd	s1,8(sp)
    8000201c:	02010413          	addi	s0,sp,32
    80002020:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80002024:	00000097          	auipc	ra,0x0
    80002028:	e98080e7          	jalr	-360(ra) # 80001ebc <_ZN15MemoryAllocator8firstFitEm>
    8000202c:	00048593          	mv	a1,s1
    80002030:	00000097          	auipc	ra,0x0
    80002034:	f18080e7          	jalr	-232(ra) # 80001f48 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80002038:	01813083          	ld	ra,24(sp)
    8000203c:	01013403          	ld	s0,16(sp)
    80002040:	00813483          	ld	s1,8(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret

000000008000204c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    if(!node) return;
    80002058:	02050a63          	beqz	a0,8000208c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    8000205c:	01053783          	ld	a5,16(a0)
    80002060:	02078663          	beqz	a5,8000208c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80002064:	00053703          	ld	a4,0(a0)
    80002068:	00e506b3          	add	a3,a0,a4
    8000206c:	02f69063          	bne	a3,a5,8000208c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    80002070:	0007b683          	ld	a3,0(a5)
    80002074:	00d70733          	add	a4,a4,a3
    80002078:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    8000207c:	0107b783          	ld	a5,16(a5)
    80002080:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80002084:	00078463          	beqz	a5,8000208c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80002088:	00a7b423          	sd	a0,8(a5)
}
    8000208c:	00813403          	ld	s0,8(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00113c23          	sd	ra,24(sp)
    800020a0:	00813823          	sd	s0,16(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    800020ac:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    800020b0:	00005717          	auipc	a4,0x5
    800020b4:	3a073703          	ld	a4,928(a4) # 80007450 <_ZN15MemoryAllocator8fMemHeadE>
    800020b8:	02070063          	beqz	a4,800020d8 <_ZN15MemoryAllocator4freeEPv+0x40>
    800020bc:	02a77263          	bgeu	a4,a0,800020e0 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    800020c0:	00070793          	mv	a5,a4
    800020c4:	00078493          	mv	s1,a5
    800020c8:	0107b783          	ld	a5,16(a5)
    800020cc:	00078c63          	beqz	a5,800020e4 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800020d0:	fea7eae3          	bltu	a5,a0,800020c4 <_ZN15MemoryAllocator4freeEPv+0x2c>
    800020d4:	0100006f          	j	800020e4 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    800020d8:	00070493          	mv	s1,a4
    800020dc:	0080006f          	j	800020e4 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800020e0:	00000493          	li	s1,0
    newNode->prev = curr;
    800020e4:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    800020e8:	04048263          	beqz	s1,8000212c <_ZN15MemoryAllocator4freeEPv+0x94>
    800020ec:	0104b783          	ld	a5,16(s1)
    800020f0:	00f53823          	sd	a5,16(a0)
    800020f4:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    800020f8:	01053783          	ld	a5,16(a0)
    800020fc:	00078463          	beqz	a5,80002104 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80002100:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80002104:	00000097          	auipc	ra,0x0
    80002108:	f48080e7          	jalr	-184(ra) # 8000204c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    8000210c:	00048513          	mv	a0,s1
    80002110:	00000097          	auipc	ra,0x0
    80002114:	f3c080e7          	jalr	-196(ra) # 8000204c <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80002118:	01813083          	ld	ra,24(sp)
    8000211c:	01013403          	ld	s0,16(sp)
    80002120:	00813483          	ld	s1,8(sp)
    80002124:	02010113          	addi	sp,sp,32
    80002128:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    8000212c:	00e53823          	sd	a4,16(a0)
    80002130:	00005797          	auipc	a5,0x5
    80002134:	32a7b023          	sd	a0,800(a5) # 80007450 <_ZN15MemoryAllocator8fMemHeadE>
    80002138:	fc1ff06f          	j	800020f8 <_ZN15MemoryAllocator4freeEPv+0x60>

000000008000213c <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002148:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000214c:	10200073          	sret
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	02010413          	addi	s0,sp,32
    80002170:	00050493          	mv	s1,a0
    return new Sem(init);
    80002174:	01800513          	li	a0,24
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	8d0080e7          	jalr	-1840(ra) # 80001a48 <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80002180:	00053023          	sd	zero,0(a0)
    80002184:	00053423          	sd	zero,8(a0)
    int semWait();

    int semSignal();

private:
    Sem(unsigned init) : init(init), val(init) {}
    80002188:	00952823          	sw	s1,16(a0)
    8000218c:	00952a23          	sw	s1,20(a0)
}
    80002190:	01813083          	ld	ra,24(sp)
    80002194:	01013403          	ld	s0,16(sp)
    80002198:	00813483          	ld	s1,8(sp)
    8000219c:	02010113          	addi	sp,sp,32
    800021a0:	00008067          	ret

00000000800021a4 <_ZN3SemD1Ev>:

Sem::~Sem() {
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00813423          	sd	s0,8(sp)
    800021ac:	01010413          	addi	s0,sp,16
    while (val < 0) {
        Scheduler::put(list.takeFirst());
        val++;
    }
}
    800021b0:	00813403          	ld	s0,8(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00813423          	sd	s0,8(sp)
    800021c4:	01010413          	addi	s0,sp,16
    //if (Scheduler::readyQueueEmpty()) return -1;
    if (--val < 0) {
    800021c8:	01452783          	lw	a5,20(a0)
    800021cc:	fff7879b          	addiw	a5,a5,-1
    800021d0:	00f52a23          	sw	a5,20(a0)
        old->setBlocked(true);
        list.putLast(old);
        thread_dispatch();
    }
    return 0;
}
    800021d4:	00000513          	li	a0,0
    800021d8:	00813403          	ld	s0,8(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    800021e4:	01452703          	lw	a4,20(a0)
    800021e8:	0017071b          	addiw	a4,a4,1
    800021ec:	0007069b          	sext.w	a3,a4
    800021f0:	00e52a23          	sw	a4,20(a0)
    800021f4:	06069a63          	bnez	a3,80002268 <_ZN3Sem9semSignalEv+0x84>
int Sem::semSignal() {
    800021f8:	fe010113          	addi	sp,sp,-32
    800021fc:	00113c23          	sd	ra,24(sp)
    80002200:	00813823          	sd	s0,16(sp)
    80002204:	00913423          	sd	s1,8(sp)
    80002208:	02010413          	addi	s0,sp,32
    8000220c:	00050793          	mv	a5,a0
        else head = newNode;
        if(!curr) tail = newNode;
    }

    T* takeFirst() {
        if (!head) return 0;
    80002210:	00053503          	ld	a0,0(a0)
    80002214:	04050663          	beqz	a0,80002260 <_ZN3Sem9semSignalEv+0x7c>

        T* ret = head->data;
    80002218:	00053483          	ld	s1,0(a0)
        Node* old = head;
        head = head->next;
    8000221c:	00853703          	ld	a4,8(a0)
    80002220:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    80002224:	02070a63          	beqz	a4,80002258 <_ZN3Sem9semSignalEv+0x74>
        delete old;
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	870080e7          	jalr	-1936(ra) # 80001a98 <_ZdlPv>
    void setBlocked(bool val) { blocked = val; }
    80002230:	00048ca3          	sb	zero,25(s1)
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    80002234:	00048513          	mv	a0,s1
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	0e8080e7          	jalr	232(ra) # 80002320 <_ZN9Scheduler3putEP3TCB>
    }
    return 0;
    80002240:	00000513          	li	a0,0
    80002244:	01813083          	ld	ra,24(sp)
    80002248:	01013403          	ld	s0,16(sp)
    8000224c:	00813483          	ld	s1,8(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret
        if (!head) tail = 0;
    80002258:	0007b423          	sd	zero,8(a5)
    8000225c:	fcdff06f          	j	80002228 <_ZN3Sem9semSignalEv+0x44>
        if (!head) return 0;
    80002260:	00050493          	mv	s1,a0
    80002264:	fcdff06f          	j	80002230 <_ZN3Sem9semSignalEv+0x4c>
    80002268:	00000513          	li	a0,0
    8000226c:	00008067          	ret

0000000080002270 <_Z41__static_initialization_and_destruction_0ii>:
    TCB* old = TCB::running;
    old->setBlocked(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    thread_dispatch();
}
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
    8000227c:	00100793          	li	a5,1
    80002280:	00f50863          	beq	a0,a5,80002290 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret
    80002290:	000107b7          	lui	a5,0x10
    80002294:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002298:	fef596e3          	bne	a1,a5,80002284 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    8000229c:	00005797          	auipc	a5,0x5
    800022a0:	1bc78793          	addi	a5,a5,444 # 80007458 <_ZN9Scheduler10readyQueueE>
    800022a4:	0007b023          	sd	zero,0(a5)
    800022a8:	0007b423          	sd	zero,8(a5)
    800022ac:	0007b823          	sd	zero,16(a5)
    800022b0:	0007bc23          	sd	zero,24(a5)
    800022b4:	fd1ff06f          	j	80002284 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800022b8 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    800022b8:	fe010113          	addi	sp,sp,-32
    800022bc:	00113c23          	sd	ra,24(sp)
    800022c0:	00813823          	sd	s0,16(sp)
    800022c4:	00913423          	sd	s1,8(sp)
    800022c8:	02010413          	addi	s0,sp,32
        else head = newNode;
        if(!curr) tail = newNode;
    }

    T* takeFirst() {
        if (!head) return 0;
    800022cc:	00005517          	auipc	a0,0x5
    800022d0:	18c53503          	ld	a0,396(a0) # 80007458 <_ZN9Scheduler10readyQueueE>
    800022d4:	04050263          	beqz	a0,80002318 <_ZN9Scheduler3getEv+0x60>

        T* ret = head->data;
    800022d8:	00053483          	ld	s1,0(a0)
        Node* old = head;
        head = head->next;
    800022dc:	00853783          	ld	a5,8(a0)
    800022e0:	00005717          	auipc	a4,0x5
    800022e4:	16f73c23          	sd	a5,376(a4) # 80007458 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    800022e8:	02078263          	beqz	a5,8000230c <_ZN9Scheduler3getEv+0x54>
        delete old;
    800022ec:	fffff097          	auipc	ra,0xfffff
    800022f0:	7ac080e7          	jalr	1964(ra) # 80001a98 <_ZdlPv>
}
    800022f4:	00048513          	mv	a0,s1
    800022f8:	01813083          	ld	ra,24(sp)
    800022fc:	01013403          	ld	s0,16(sp)
    80002300:	00813483          	ld	s1,8(sp)
    80002304:	02010113          	addi	sp,sp,32
    80002308:	00008067          	ret
        if (!head) tail = 0;
    8000230c:	00005797          	auipc	a5,0x5
    80002310:	1407ba23          	sd	zero,340(a5) # 80007460 <_ZN9Scheduler10readyQueueE+0x8>
    80002314:	fd9ff06f          	j	800022ec <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80002318:	00050493          	mv	s1,a0
    return ret;
    8000231c:	fd9ff06f          	j	800022f4 <_ZN9Scheduler3getEv+0x3c>

0000000080002320 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00913423          	sd	s1,8(sp)
    80002330:	02010413          	addi	s0,sp,32
    80002334:	00050493          	mv	s1,a0
        Node *newNode = new Node(data, 0);
    80002338:	01000513          	li	a0,16
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	70c080e7          	jalr	1804(ra) # 80001a48 <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002344:	00953023          	sd	s1,0(a0)
    80002348:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    8000234c:	00005797          	auipc	a5,0x5
    80002350:	1147b783          	ld	a5,276(a5) # 80007460 <_ZN9Scheduler10readyQueueE+0x8>
    80002354:	02078263          	beqz	a5,80002378 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80002358:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    8000235c:	00005797          	auipc	a5,0x5
    80002360:	10a7b223          	sd	a0,260(a5) # 80007460 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002364:	01813083          	ld	ra,24(sp)
    80002368:	01013403          	ld	s0,16(sp)
    8000236c:	00813483          	ld	s1,8(sp)
    80002370:	02010113          	addi	sp,sp,32
    80002374:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002378:	00005797          	auipc	a5,0x5
    8000237c:	0e078793          	addi	a5,a5,224 # 80007458 <_ZN9Scheduler10readyQueueE>
    80002380:	00a7b423          	sd	a0,8(a5)
    80002384:	00a7b023          	sd	a0,0(a5)
    80002388:	fddff06f          	j	80002364 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000238c <_ZN9Scheduler14timerInterruptEv>:

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    8000238c:	00005797          	auipc	a5,0x5
    80002390:	0dc7b783          	ld	a5,220(a5) # 80007468 <_ZN9Scheduler10sleepQueueE>
    80002394:	0a078a63          	beqz	a5,80002448 <_ZN9Scheduler14timerInterruptEv+0xbc>
void Scheduler::timerInterrupt() {
    80002398:	fe010113          	addi	sp,sp,-32
    8000239c:	00113c23          	sd	ra,24(sp)
    800023a0:	00813823          	sd	s0,16(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	02010413          	addi	s0,sp,32
        return head->data;
    800023ac:	0007b483          	ld	s1,0(a5)
    if (!first) return;
    800023b0:	08048263          	beqz	s1,80002434 <_ZN9Scheduler14timerInterruptEv+0xa8>
    first->time--;
    800023b4:	0004b783          	ld	a5,0(s1)
    800023b8:	fff78793          	addi	a5,a5,-1
    800023bc:	00f4b023          	sd	a5,0(s1)
    800023c0:	02c0006f          	j	800023ec <_ZN9Scheduler14timerInterruptEv+0x60>
        if (!head) tail = 0;
    800023c4:	00005797          	auipc	a5,0x5
    800023c8:	0a07b623          	sd	zero,172(a5) # 80007470 <_ZN9Scheduler10sleepQueueE+0x8>
    800023cc:	0440006f          	j	80002410 <_ZN9Scheduler14timerInterruptEv+0x84>
        delete first;
    800023d0:	00048513          	mv	a0,s1
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	6c4080e7          	jalr	1732(ra) # 80001a98 <_ZdlPv>
        if(!head) return 0;
    800023dc:	00005497          	auipc	s1,0x5
    800023e0:	08c4b483          	ld	s1,140(s1) # 80007468 <_ZN9Scheduler10sleepQueueE>
    800023e4:	00048463          	beqz	s1,800023ec <_ZN9Scheduler14timerInterruptEv+0x60>
        return head->data;
    800023e8:	0004b483          	ld	s1,0(s1)
    while(first->time == 0) {
    800023ec:	0004b783          	ld	a5,0(s1)
    800023f0:	04079263          	bnez	a5,80002434 <_ZN9Scheduler14timerInterruptEv+0xa8>
        if (!head) return 0;
    800023f4:	00005517          	auipc	a0,0x5
    800023f8:	07453503          	ld	a0,116(a0) # 80007468 <_ZN9Scheduler10sleepQueueE>
    800023fc:	00050e63          	beqz	a0,80002418 <_ZN9Scheduler14timerInterruptEv+0x8c>
        head = head->next;
    80002400:	00853783          	ld	a5,8(a0)
    80002404:	00005717          	auipc	a4,0x5
    80002408:	06f73223          	sd	a5,100(a4) # 80007468 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    8000240c:	fa078ce3          	beqz	a5,800023c4 <_ZN9Scheduler14timerInterruptEv+0x38>
        delete old;
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	688080e7          	jalr	1672(ra) # 80001a98 <_ZdlPv>
        first->thread->setBlocked(false);
    80002418:	0084b783          	ld	a5,8(s1)
    8000241c:	00078ca3          	sb	zero,25(a5)
        Scheduler::put(first->thread);
    80002420:	0084b503          	ld	a0,8(s1)
    80002424:	00000097          	auipc	ra,0x0
    80002428:	efc080e7          	jalr	-260(ra) # 80002320 <_ZN9Scheduler3putEP3TCB>
        delete first;
    8000242c:	fa0492e3          	bnez	s1,800023d0 <_ZN9Scheduler14timerInterruptEv+0x44>
    80002430:	fadff06f          	j	800023dc <_ZN9Scheduler14timerInterruptEv+0x50>
}
    80002434:	01813083          	ld	ra,24(sp)
    80002438:	01013403          	ld	s0,16(sp)
    8000243c:	00813483          	ld	s1,8(sp)
    80002440:	02010113          	addi	sp,sp,32
    80002444:	00008067          	ret
    80002448:	00008067          	ret

000000008000244c <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    8000244c:	fd010113          	addi	sp,sp,-48
    80002450:	02113423          	sd	ra,40(sp)
    80002454:	02813023          	sd	s0,32(sp)
    80002458:	00913c23          	sd	s1,24(sp)
    8000245c:	01213823          	sd	s2,16(sp)
    80002460:	01313423          	sd	s3,8(sp)
    80002464:	03010413          	addi	s0,sp,48
    80002468:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    8000246c:	00005797          	auipc	a5,0x5
    80002470:	f7c7b783          	ld	a5,-132(a5) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002474:	0007b983          	ld	s3,0(a5)
    80002478:	00100793          	li	a5,1
    8000247c:	00f98ca3          	sb	a5,25(s3)
    sleepNode* sn = new sleepNode(time, old);
    80002480:	01000513          	li	a0,16
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	5c4080e7          	jalr	1476(ra) # 80001a48 <_Znwm>
    8000248c:	00050493          	mv	s1,a0

    struct sleepNode {
        time_t time;
        TCB* thread;

        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    80002490:	01253023          	sd	s2,0(a0)
    80002494:	01353423          	sd	s3,8(a0)
        Node *newNode = new Node(data, 0);
    80002498:	01000513          	li	a0,16
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	5ac080e7          	jalr	1452(ra) # 80001a48 <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    800024a4:	00953023          	sd	s1,0(a0)
    800024a8:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    800024ac:	00005797          	auipc	a5,0x5
    800024b0:	fbc7b783          	ld	a5,-68(a5) # 80007468 <_ZN9Scheduler10sleepQueueE>
    800024b4:	02078c63          	beqz	a5,800024ec <_ZN9Scheduler9timeSleepEm+0xa0>
        Node* curr = head, *prev = nullptr;
    800024b8:	00000693          	li	a3,0
        while (curr && *(uint64*)data > *(uint64*)(curr->data)) {
    800024bc:	04078263          	beqz	a5,80002500 <_ZN9Scheduler9timeSleepEm+0xb4>
    800024c0:	0004b703          	ld	a4,0(s1)
    800024c4:	0007b603          	ld	a2,0(a5)
    800024c8:	00063603          	ld	a2,0(a2)
    800024cc:	02e67a63          	bgeu	a2,a4,80002500 <_ZN9Scheduler9timeSleepEm+0xb4>
            curr = curr->next;
    800024d0:	0087b603          	ld	a2,8(a5)
            *(uint64*)data -= *(uint64*)curr;
    800024d4:	00063683          	ld	a3,0(a2)
    800024d8:	40d70733          	sub	a4,a4,a3
    800024dc:	00e4b023          	sd	a4,0(s1)
            prev = curr;
    800024e0:	00078693          	mv	a3,a5
            curr = curr->next;
    800024e4:	00060793          	mv	a5,a2
        while (curr && *(uint64*)data > *(uint64*)(curr->data)) {
    800024e8:	fd5ff06f          	j	800024bc <_ZN9Scheduler9timeSleepEm+0x70>
        if (!head) { head = tail = newNode; return; }
    800024ec:	00005797          	auipc	a5,0x5
    800024f0:	f6c78793          	addi	a5,a5,-148 # 80007458 <_ZN9Scheduler10readyQueueE>
    800024f4:	00a7bc23          	sd	a0,24(a5)
    800024f8:	00a7b823          	sd	a0,16(a5)
    800024fc:	0140006f          	j	80002510 <_ZN9Scheduler9timeSleepEm+0xc4>
        newNode->next = curr;
    80002500:	00f53423          	sd	a5,8(a0)
        if (prev) prev->next = newNode;
    80002504:	02068863          	beqz	a3,80002534 <_ZN9Scheduler9timeSleepEm+0xe8>
    80002508:	00a6b423          	sd	a0,8(a3)
        if(!curr) tail = newNode;
    8000250c:	02078a63          	beqz	a5,80002540 <_ZN9Scheduler9timeSleepEm+0xf4>
    thread_dispatch();
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	b20080e7          	jalr	-1248(ra) # 80001030 <thread_dispatch>
}
    80002518:	02813083          	ld	ra,40(sp)
    8000251c:	02013403          	ld	s0,32(sp)
    80002520:	01813483          	ld	s1,24(sp)
    80002524:	01013903          	ld	s2,16(sp)
    80002528:	00813983          	ld	s3,8(sp)
    8000252c:	03010113          	addi	sp,sp,48
    80002530:	00008067          	ret
        else head = newNode;
    80002534:	00005717          	auipc	a4,0x5
    80002538:	f2a73a23          	sd	a0,-204(a4) # 80007468 <_ZN9Scheduler10sleepQueueE>
    8000253c:	fd1ff06f          	j	8000250c <_ZN9Scheduler9timeSleepEm+0xc0>
        if(!curr) tail = newNode;
    80002540:	00005797          	auipc	a5,0x5
    80002544:	f2a7b823          	sd	a0,-208(a5) # 80007470 <_ZN9Scheduler10sleepQueueE+0x8>
    80002548:	fc9ff06f          	j	80002510 <_ZN9Scheduler9timeSleepEm+0xc4>

000000008000254c <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    8000254c:	ff010113          	addi	sp,sp,-16
    80002550:	00113423          	sd	ra,8(sp)
    80002554:	00813023          	sd	s0,0(sp)
    80002558:	01010413          	addi	s0,sp,16
    8000255c:	000105b7          	lui	a1,0x10
    80002560:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002564:	00100513          	li	a0,1
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	d08080e7          	jalr	-760(ra) # 80002270 <_Z41__static_initialization_and_destruction_0ii>
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00013403          	ld	s0,0(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00113c23          	sd	ra,24(sp)
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	02010413          	addi	s0,sp,32
    80002594:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80002598:	0004c503          	lbu	a0,0(s1)
    8000259c:	00050a63          	beqz	a0,800025b0 <_Z14__print_stringPKc+0x30>
    800025a0:	00003097          	auipc	ra,0x3
    800025a4:	12c080e7          	jalr	300(ra) # 800056cc <__putc>
    800025a8:	00148493          	addi	s1,s1,1
    800025ac:	fedff06f          	j	80002598 <_Z14__print_stringPKc+0x18>
}
    800025b0:	01813083          	ld	ra,24(sp)
    800025b4:	01013403          	ld	s0,16(sp)
    800025b8:	00813483          	ld	s1,8(sp)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret

00000000800025c4 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    800025c4:	fc010113          	addi	sp,sp,-64
    800025c8:	02113c23          	sd	ra,56(sp)
    800025cc:	02813823          	sd	s0,48(sp)
    800025d0:	02913423          	sd	s1,40(sp)
    800025d4:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    800025d8:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    800025dc:	00a00693          	li	a3,10
    800025e0:	02d57633          	remu	a2,a0,a3
    800025e4:	00004717          	auipc	a4,0x4
    800025e8:	bb470713          	addi	a4,a4,-1100 # 80006198 <_ZZ14__print_uint64mE6digits>
    800025ec:	00c70733          	add	a4,a4,a2
    800025f0:	00074703          	lbu	a4,0(a4)
    800025f4:	fe040613          	addi	a2,s0,-32
    800025f8:	009607b3          	add	a5,a2,s1
    800025fc:	0014849b          	addiw	s1,s1,1
    80002600:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80002604:	00050713          	mv	a4,a0
    80002608:	02d55533          	divu	a0,a0,a3
    8000260c:	00900793          	li	a5,9
    80002610:	fce7e6e3          	bltu	a5,a4,800025dc <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    80002614:	fff4849b          	addiw	s1,s1,-1
    80002618:	0004ce63          	bltz	s1,80002634 <_Z14__print_uint64m+0x70>
    8000261c:	fe040793          	addi	a5,s0,-32
    80002620:	009787b3          	add	a5,a5,s1
    80002624:	fe87c503          	lbu	a0,-24(a5)
    80002628:	00003097          	auipc	ra,0x3
    8000262c:	0a4080e7          	jalr	164(ra) # 800056cc <__putc>
    80002630:	fe5ff06f          	j	80002614 <_Z14__print_uint64m+0x50>
}
    80002634:	03813083          	ld	ra,56(sp)
    80002638:	03013403          	ld	s0,48(sp)
    8000263c:	02813483          	ld	s1,40(sp)
    80002640:	04010113          	addi	sp,sp,64
    80002644:	00008067          	ret

0000000080002648 <_Z11__print_intx>:

void __print_int(long long int integer) {
    80002648:	fe010113          	addi	sp,sp,-32
    8000264c:	00113c23          	sd	ra,24(sp)
    80002650:	00813823          	sd	s0,16(sp)
    80002654:	00913423          	sd	s1,8(sp)
    80002658:	02010413          	addi	s0,sp,32
    8000265c:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    80002660:	02054263          	bltz	a0,80002684 <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    80002664:	00048513          	mv	a0,s1
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	f5c080e7          	jalr	-164(ra) # 800025c4 <_Z14__print_uint64m>
}
    80002670:	01813083          	ld	ra,24(sp)
    80002674:	01013403          	ld	s0,16(sp)
    80002678:	00813483          	ld	s1,8(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    80002684:	02d00513          	li	a0,45
    80002688:	00003097          	auipc	ra,0x3
    8000268c:	044080e7          	jalr	68(ra) # 800056cc <__putc>
    80002690:	409004b3          	neg	s1,s1
    80002694:	fd1ff06f          	j	80002664 <_Z11__print_intx+0x1c>

0000000080002698 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002698:	fe010113          	addi	sp,sp,-32
    8000269c:	00113c23          	sd	ra,24(sp)
    800026a0:	00813823          	sd	s0,16(sp)
    800026a4:	00913423          	sd	s1,8(sp)
    800026a8:	02010413          	addi	s0,sp,32
    800026ac:	00050493          	mv	s1,a0
    LOCK();
    800026b0:	00100613          	li	a2,1
    800026b4:	00000593          	li	a1,0
    800026b8:	00005517          	auipc	a0,0x5
    800026bc:	dc050513          	addi	a0,a0,-576 # 80007478 <lockPrint>
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	c04080e7          	jalr	-1020(ra) # 800012c4 <copy_and_swap>
    800026c8:	fe0514e3          	bnez	a0,800026b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800026cc:	0004c503          	lbu	a0,0(s1)
    800026d0:	00050a63          	beqz	a0,800026e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	9bc080e7          	jalr	-1604(ra) # 80001090 <putc>
        string++;
    800026dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800026e0:	fedff06f          	j	800026cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800026e4:	00000613          	li	a2,0
    800026e8:	00100593          	li	a1,1
    800026ec:	00005517          	auipc	a0,0x5
    800026f0:	d8c50513          	addi	a0,a0,-628 # 80007478 <lockPrint>
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	bd0080e7          	jalr	-1072(ra) # 800012c4 <copy_and_swap>
    800026fc:	fe0514e3          	bnez	a0,800026e4 <_Z11printStringPKc+0x4c>
}
    80002700:	01813083          	ld	ra,24(sp)
    80002704:	01013403          	ld	s0,16(sp)
    80002708:	00813483          	ld	s1,8(sp)
    8000270c:	02010113          	addi	sp,sp,32
    80002710:	00008067          	ret

0000000080002714 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002714:	fd010113          	addi	sp,sp,-48
    80002718:	02113423          	sd	ra,40(sp)
    8000271c:	02813023          	sd	s0,32(sp)
    80002720:	00913c23          	sd	s1,24(sp)
    80002724:	01213823          	sd	s2,16(sp)
    80002728:	01313423          	sd	s3,8(sp)
    8000272c:	01413023          	sd	s4,0(sp)
    80002730:	03010413          	addi	s0,sp,48
    80002734:	00050993          	mv	s3,a0
    80002738:	00058a13          	mv	s4,a1
    LOCK();
    8000273c:	00100613          	li	a2,1
    80002740:	00000593          	li	a1,0
    80002744:	00005517          	auipc	a0,0x5
    80002748:	d3450513          	addi	a0,a0,-716 # 80007478 <lockPrint>
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	b78080e7          	jalr	-1160(ra) # 800012c4 <copy_and_swap>
    80002754:	fe0514e3          	bnez	a0,8000273c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002758:	00000913          	li	s2,0
    8000275c:	00090493          	mv	s1,s2
    80002760:	0019091b          	addiw	s2,s2,1
    80002764:	03495a63          	bge	s2,s4,80002798 <_Z9getStringPci+0x84>
        cc = getc();
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	91c080e7          	jalr	-1764(ra) # 80001084 <getc>
        if(cc < 1)
    80002770:	02050463          	beqz	a0,80002798 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002774:	009984b3          	add	s1,s3,s1
    80002778:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000277c:	00a00793          	li	a5,10
    80002780:	00f50a63          	beq	a0,a5,80002794 <_Z9getStringPci+0x80>
    80002784:	00d00793          	li	a5,13
    80002788:	fcf51ae3          	bne	a0,a5,8000275c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000278c:	00090493          	mv	s1,s2
    80002790:	0080006f          	j	80002798 <_Z9getStringPci+0x84>
    80002794:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002798:	009984b3          	add	s1,s3,s1
    8000279c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800027a0:	00000613          	li	a2,0
    800027a4:	00100593          	li	a1,1
    800027a8:	00005517          	auipc	a0,0x5
    800027ac:	cd050513          	addi	a0,a0,-816 # 80007478 <lockPrint>
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	b14080e7          	jalr	-1260(ra) # 800012c4 <copy_and_swap>
    800027b8:	fe0514e3          	bnez	a0,800027a0 <_Z9getStringPci+0x8c>
    return buf;
}
    800027bc:	00098513          	mv	a0,s3
    800027c0:	02813083          	ld	ra,40(sp)
    800027c4:	02013403          	ld	s0,32(sp)
    800027c8:	01813483          	ld	s1,24(sp)
    800027cc:	01013903          	ld	s2,16(sp)
    800027d0:	00813983          	ld	s3,8(sp)
    800027d4:	00013a03          	ld	s4,0(sp)
    800027d8:	03010113          	addi	sp,sp,48
    800027dc:	00008067          	ret

00000000800027e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800027e0:	ff010113          	addi	sp,sp,-16
    800027e4:	00813423          	sd	s0,8(sp)
    800027e8:	01010413          	addi	s0,sp,16
    800027ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800027f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800027f4:	0006c603          	lbu	a2,0(a3)
    800027f8:	fd06071b          	addiw	a4,a2,-48
    800027fc:	0ff77713          	andi	a4,a4,255
    80002800:	00900793          	li	a5,9
    80002804:	02e7e063          	bltu	a5,a4,80002824 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002808:	0025179b          	slliw	a5,a0,0x2
    8000280c:	00a787bb          	addw	a5,a5,a0
    80002810:	0017979b          	slliw	a5,a5,0x1
    80002814:	00168693          	addi	a3,a3,1
    80002818:	00c787bb          	addw	a5,a5,a2
    8000281c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002820:	fd5ff06f          	j	800027f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002824:	00813403          	ld	s0,8(sp)
    80002828:	01010113          	addi	sp,sp,16
    8000282c:	00008067          	ret

0000000080002830 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002830:	fc010113          	addi	sp,sp,-64
    80002834:	02113c23          	sd	ra,56(sp)
    80002838:	02813823          	sd	s0,48(sp)
    8000283c:	02913423          	sd	s1,40(sp)
    80002840:	03213023          	sd	s2,32(sp)
    80002844:	01313c23          	sd	s3,24(sp)
    80002848:	04010413          	addi	s0,sp,64
    8000284c:	00050493          	mv	s1,a0
    80002850:	00058913          	mv	s2,a1
    80002854:	00060993          	mv	s3,a2
    LOCK();
    80002858:	00100613          	li	a2,1
    8000285c:	00000593          	li	a1,0
    80002860:	00005517          	auipc	a0,0x5
    80002864:	c1850513          	addi	a0,a0,-1000 # 80007478 <lockPrint>
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	a5c080e7          	jalr	-1444(ra) # 800012c4 <copy_and_swap>
    80002870:	fe0514e3          	bnez	a0,80002858 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002874:	00098463          	beqz	s3,8000287c <_Z8printIntiii+0x4c>
    80002878:	0804c463          	bltz	s1,80002900 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000287c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002880:	00000593          	li	a1,0
    }

    i = 0;
    80002884:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002888:	0009079b          	sext.w	a5,s2
    8000288c:	0325773b          	remuw	a4,a0,s2
    80002890:	00048613          	mv	a2,s1
    80002894:	0014849b          	addiw	s1,s1,1
    80002898:	02071693          	slli	a3,a4,0x20
    8000289c:	0206d693          	srli	a3,a3,0x20
    800028a0:	00005717          	auipc	a4,0x5
    800028a4:	b0070713          	addi	a4,a4,-1280 # 800073a0 <digits>
    800028a8:	00d70733          	add	a4,a4,a3
    800028ac:	00074683          	lbu	a3,0(a4)
    800028b0:	fd040713          	addi	a4,s0,-48
    800028b4:	00c70733          	add	a4,a4,a2
    800028b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800028bc:	0005071b          	sext.w	a4,a0
    800028c0:	0325553b          	divuw	a0,a0,s2
    800028c4:	fcf772e3          	bgeu	a4,a5,80002888 <_Z8printIntiii+0x58>
    if(neg)
    800028c8:	00058c63          	beqz	a1,800028e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800028cc:	fd040793          	addi	a5,s0,-48
    800028d0:	009784b3          	add	s1,a5,s1
    800028d4:	02d00793          	li	a5,45
    800028d8:	fef48823          	sb	a5,-16(s1)
    800028dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800028e0:	fff4849b          	addiw	s1,s1,-1
    800028e4:	0204c463          	bltz	s1,8000290c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800028e8:	fd040793          	addi	a5,s0,-48
    800028ec:	009787b3          	add	a5,a5,s1
    800028f0:	ff07c503          	lbu	a0,-16(a5)
    800028f4:	ffffe097          	auipc	ra,0xffffe
    800028f8:	79c080e7          	jalr	1948(ra) # 80001090 <putc>
    800028fc:	fe5ff06f          	j	800028e0 <_Z8printIntiii+0xb0>
        x = -xx;
    80002900:	4090053b          	negw	a0,s1
        neg = 1;
    80002904:	00100593          	li	a1,1
        x = -xx;
    80002908:	f7dff06f          	j	80002884 <_Z8printIntiii+0x54>

    UNLOCK();
    8000290c:	00000613          	li	a2,0
    80002910:	00100593          	li	a1,1
    80002914:	00005517          	auipc	a0,0x5
    80002918:	b6450513          	addi	a0,a0,-1180 # 80007478 <lockPrint>
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	9a8080e7          	jalr	-1624(ra) # 800012c4 <copy_and_swap>
    80002924:	fe0514e3          	bnez	a0,8000290c <_Z8printIntiii+0xdc>
    80002928:	03813083          	ld	ra,56(sp)
    8000292c:	03013403          	ld	s0,48(sp)
    80002930:	02813483          	ld	s1,40(sp)
    80002934:	02013903          	ld	s2,32(sp)
    80002938:	01813983          	ld	s3,24(sp)
    8000293c:	04010113          	addi	sp,sp,64
    80002940:	00008067          	ret

0000000080002944 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002944:	fd010113          	addi	sp,sp,-48
    80002948:	02113423          	sd	ra,40(sp)
    8000294c:	02813023          	sd	s0,32(sp)
    80002950:	00913c23          	sd	s1,24(sp)
    80002954:	01213823          	sd	s2,16(sp)
    80002958:	01313423          	sd	s3,8(sp)
    8000295c:	03010413          	addi	s0,sp,48
    80002960:	00050493          	mv	s1,a0
    80002964:	00058913          	mv	s2,a1
    80002968:	0015879b          	addiw	a5,a1,1
    8000296c:	0007851b          	sext.w	a0,a5
    80002970:	00f4a023          	sw	a5,0(s1)
    80002974:	0004a823          	sw	zero,16(s1)
    80002978:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000297c:	00251513          	slli	a0,a0,0x2
    80002980:	ffffe097          	auipc	ra,0xffffe
    80002984:	680080e7          	jalr	1664(ra) # 80001000 <mem_alloc>
    80002988:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000298c:	01000513          	li	a0,16
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	0b8080e7          	jalr	184(ra) # 80001a48 <_Znwm>
    80002998:	00050993          	mv	s3,a0
    8000299c:	00000593          	li	a1,0
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	314080e7          	jalr	788(ra) # 80001cb4 <_ZN9SemaphoreC1Ej>
    800029a8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800029ac:	01000513          	li	a0,16
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	098080e7          	jalr	152(ra) # 80001a48 <_Znwm>
    800029b8:	00050993          	mv	s3,a0
    800029bc:	00090593          	mv	a1,s2
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	2f4080e7          	jalr	756(ra) # 80001cb4 <_ZN9SemaphoreC1Ej>
    800029c8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800029cc:	01000513          	li	a0,16
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	078080e7          	jalr	120(ra) # 80001a48 <_Znwm>
    800029d8:	00050913          	mv	s2,a0
    800029dc:	00100593          	li	a1,1
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	2d4080e7          	jalr	724(ra) # 80001cb4 <_ZN9SemaphoreC1Ej>
    800029e8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800029ec:	01000513          	li	a0,16
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	058080e7          	jalr	88(ra) # 80001a48 <_Znwm>
    800029f8:	00050913          	mv	s2,a0
    800029fc:	00100593          	li	a1,1
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	2b4080e7          	jalr	692(ra) # 80001cb4 <_ZN9SemaphoreC1Ej>
    80002a08:	0324b823          	sd	s2,48(s1)
}
    80002a0c:	02813083          	ld	ra,40(sp)
    80002a10:	02013403          	ld	s0,32(sp)
    80002a14:	01813483          	ld	s1,24(sp)
    80002a18:	01013903          	ld	s2,16(sp)
    80002a1c:	00813983          	ld	s3,8(sp)
    80002a20:	03010113          	addi	sp,sp,48
    80002a24:	00008067          	ret
    80002a28:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002a2c:	00098513          	mv	a0,s3
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	068080e7          	jalr	104(ra) # 80001a98 <_ZdlPv>
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	00006097          	auipc	ra,0x6
    80002a40:	b1c080e7          	jalr	-1252(ra) # 80008558 <_Unwind_Resume>
    80002a44:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002a48:	00098513          	mv	a0,s3
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	04c080e7          	jalr	76(ra) # 80001a98 <_ZdlPv>
    80002a54:	00048513          	mv	a0,s1
    80002a58:	00006097          	auipc	ra,0x6
    80002a5c:	b00080e7          	jalr	-1280(ra) # 80008558 <_Unwind_Resume>
    80002a60:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002a64:	00090513          	mv	a0,s2
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	030080e7          	jalr	48(ra) # 80001a98 <_ZdlPv>
    80002a70:	00048513          	mv	a0,s1
    80002a74:	00006097          	auipc	ra,0x6
    80002a78:	ae4080e7          	jalr	-1308(ra) # 80008558 <_Unwind_Resume>
    80002a7c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002a80:	00090513          	mv	a0,s2
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	014080e7          	jalr	20(ra) # 80001a98 <_ZdlPv>
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00006097          	auipc	ra,0x6
    80002a94:	ac8080e7          	jalr	-1336(ra) # 80008558 <_Unwind_Resume>

0000000080002a98 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00113c23          	sd	ra,24(sp)
    80002aa0:	00813823          	sd	s0,16(sp)
    80002aa4:	00913423          	sd	s1,8(sp)
    80002aa8:	01213023          	sd	s2,0(sp)
    80002aac:	02010413          	addi	s0,sp,32
    80002ab0:	00050493          	mv	s1,a0
    80002ab4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002ab8:	01853503          	ld	a0,24(a0)
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	230080e7          	jalr	560(ra) # 80001cec <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002ac4:	0304b503          	ld	a0,48(s1)
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	224080e7          	jalr	548(ra) # 80001cec <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002ad0:	0084b783          	ld	a5,8(s1)
    80002ad4:	0144a703          	lw	a4,20(s1)
    80002ad8:	00271713          	slli	a4,a4,0x2
    80002adc:	00e787b3          	add	a5,a5,a4
    80002ae0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002ae4:	0144a783          	lw	a5,20(s1)
    80002ae8:	0017879b          	addiw	a5,a5,1
    80002aec:	0004a703          	lw	a4,0(s1)
    80002af0:	02e7e7bb          	remw	a5,a5,a4
    80002af4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002af8:	0304b503          	ld	a0,48(s1)
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	21c080e7          	jalr	540(ra) # 80001d18 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002b04:	0204b503          	ld	a0,32(s1)
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	210080e7          	jalr	528(ra) # 80001d18 <_ZN9Semaphore6signalEv>

}
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	00013903          	ld	s2,0(sp)
    80002b20:	02010113          	addi	sp,sp,32
    80002b24:	00008067          	ret

0000000080002b28 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002b28:	fe010113          	addi	sp,sp,-32
    80002b2c:	00113c23          	sd	ra,24(sp)
    80002b30:	00813823          	sd	s0,16(sp)
    80002b34:	00913423          	sd	s1,8(sp)
    80002b38:	01213023          	sd	s2,0(sp)
    80002b3c:	02010413          	addi	s0,sp,32
    80002b40:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002b44:	02053503          	ld	a0,32(a0)
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	1a4080e7          	jalr	420(ra) # 80001cec <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002b50:	0284b503          	ld	a0,40(s1)
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	198080e7          	jalr	408(ra) # 80001cec <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002b5c:	0084b703          	ld	a4,8(s1)
    80002b60:	0104a783          	lw	a5,16(s1)
    80002b64:	00279693          	slli	a3,a5,0x2
    80002b68:	00d70733          	add	a4,a4,a3
    80002b6c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002b70:	0017879b          	addiw	a5,a5,1
    80002b74:	0004a703          	lw	a4,0(s1)
    80002b78:	02e7e7bb          	remw	a5,a5,a4
    80002b7c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002b80:	0284b503          	ld	a0,40(s1)
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	194080e7          	jalr	404(ra) # 80001d18 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002b8c:	0184b503          	ld	a0,24(s1)
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	188080e7          	jalr	392(ra) # 80001d18 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002b98:	00090513          	mv	a0,s2
    80002b9c:	01813083          	ld	ra,24(sp)
    80002ba0:	01013403          	ld	s0,16(sp)
    80002ba4:	00813483          	ld	s1,8(sp)
    80002ba8:	00013903          	ld	s2,0(sp)
    80002bac:	02010113          	addi	sp,sp,32
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002bb4:	fe010113          	addi	sp,sp,-32
    80002bb8:	00113c23          	sd	ra,24(sp)
    80002bbc:	00813823          	sd	s0,16(sp)
    80002bc0:	00913423          	sd	s1,8(sp)
    80002bc4:	01213023          	sd	s2,0(sp)
    80002bc8:	02010413          	addi	s0,sp,32
    80002bcc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002bd0:	02853503          	ld	a0,40(a0)
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	118080e7          	jalr	280(ra) # 80001cec <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002bdc:	0304b503          	ld	a0,48(s1)
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	10c080e7          	jalr	268(ra) # 80001cec <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002be8:	0144a783          	lw	a5,20(s1)
    80002bec:	0104a903          	lw	s2,16(s1)
    80002bf0:	0327ce63          	blt	a5,s2,80002c2c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002bf4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002bf8:	0304b503          	ld	a0,48(s1)
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	11c080e7          	jalr	284(ra) # 80001d18 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002c04:	0284b503          	ld	a0,40(s1)
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	110080e7          	jalr	272(ra) # 80001d18 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002c10:	00090513          	mv	a0,s2
    80002c14:	01813083          	ld	ra,24(sp)
    80002c18:	01013403          	ld	s0,16(sp)
    80002c1c:	00813483          	ld	s1,8(sp)
    80002c20:	00013903          	ld	s2,0(sp)
    80002c24:	02010113          	addi	sp,sp,32
    80002c28:	00008067          	ret
        ret = cap - head + tail;
    80002c2c:	0004a703          	lw	a4,0(s1)
    80002c30:	4127093b          	subw	s2,a4,s2
    80002c34:	00f9093b          	addw	s2,s2,a5
    80002c38:	fc1ff06f          	j	80002bf8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002c3c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002c3c:	fe010113          	addi	sp,sp,-32
    80002c40:	00113c23          	sd	ra,24(sp)
    80002c44:	00813823          	sd	s0,16(sp)
    80002c48:	00913423          	sd	s1,8(sp)
    80002c4c:	02010413          	addi	s0,sp,32
    80002c50:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002c54:	00a00513          	li	a0,10
    80002c58:	fffff097          	auipc	ra,0xfffff
    80002c5c:	164080e7          	jalr	356(ra) # 80001dbc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002c60:	00003517          	auipc	a0,0x3
    80002c64:	54850513          	addi	a0,a0,1352 # 800061a8 <_ZZ14__print_uint64mE6digits+0x10>
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	a30080e7          	jalr	-1488(ra) # 80002698 <_Z11printStringPKc>
    while (getCnt()) {
    80002c70:	00048513          	mv	a0,s1
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	f40080e7          	jalr	-192(ra) # 80002bb4 <_ZN9BufferCPP6getCntEv>
    80002c7c:	02050c63          	beqz	a0,80002cb4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002c80:	0084b783          	ld	a5,8(s1)
    80002c84:	0104a703          	lw	a4,16(s1)
    80002c88:	00271713          	slli	a4,a4,0x2
    80002c8c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002c90:	0007c503          	lbu	a0,0(a5)
    80002c94:	fffff097          	auipc	ra,0xfffff
    80002c98:	128080e7          	jalr	296(ra) # 80001dbc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002c9c:	0104a783          	lw	a5,16(s1)
    80002ca0:	0017879b          	addiw	a5,a5,1
    80002ca4:	0004a703          	lw	a4,0(s1)
    80002ca8:	02e7e7bb          	remw	a5,a5,a4
    80002cac:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002cb0:	fc1ff06f          	j	80002c70 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002cb4:	02100513          	li	a0,33
    80002cb8:	fffff097          	auipc	ra,0xfffff
    80002cbc:	104080e7          	jalr	260(ra) # 80001dbc <_ZN7Console4putcEc>
    Console::putc('\n');
    80002cc0:	00a00513          	li	a0,10
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	0f8080e7          	jalr	248(ra) # 80001dbc <_ZN7Console4putcEc>
    mem_free(buffer);
    80002ccc:	0084b503          	ld	a0,8(s1)
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	33c080e7          	jalr	828(ra) # 8000100c <mem_free>
    delete itemAvailable;
    80002cd8:	0204b503          	ld	a0,32(s1)
    80002cdc:	00050863          	beqz	a0,80002cec <_ZN9BufferCPPD1Ev+0xb0>
    80002ce0:	00053783          	ld	a5,0(a0)
    80002ce4:	0087b783          	ld	a5,8(a5)
    80002ce8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002cec:	0184b503          	ld	a0,24(s1)
    80002cf0:	00050863          	beqz	a0,80002d00 <_ZN9BufferCPPD1Ev+0xc4>
    80002cf4:	00053783          	ld	a5,0(a0)
    80002cf8:	0087b783          	ld	a5,8(a5)
    80002cfc:	000780e7          	jalr	a5
    delete mutexTail;
    80002d00:	0304b503          	ld	a0,48(s1)
    80002d04:	00050863          	beqz	a0,80002d14 <_ZN9BufferCPPD1Ev+0xd8>
    80002d08:	00053783          	ld	a5,0(a0)
    80002d0c:	0087b783          	ld	a5,8(a5)
    80002d10:	000780e7          	jalr	a5
    delete mutexHead;
    80002d14:	0284b503          	ld	a0,40(s1)
    80002d18:	00050863          	beqz	a0,80002d28 <_ZN9BufferCPPD1Ev+0xec>
    80002d1c:	00053783          	ld	a5,0(a0)
    80002d20:	0087b783          	ld	a5,8(a5)
    80002d24:	000780e7          	jalr	a5
}
    80002d28:	01813083          	ld	ra,24(sp)
    80002d2c:	01013403          	ld	s0,16(sp)
    80002d30:	00813483          	ld	s1,8(sp)
    80002d34:	02010113          	addi	sp,sp,32
    80002d38:	00008067          	ret

0000000080002d3c <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80002d3c:	fe010113          	addi	sp,sp,-32
    80002d40:	00113c23          	sd	ra,24(sp)
    80002d44:	00813823          	sd	s0,16(sp)
    80002d48:	00913423          	sd	s1,8(sp)
    80002d4c:	01213023          	sd	s2,0(sp)
    80002d50:	02010413          	addi	s0,sp,32
    80002d54:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002d58:	00000913          	li	s2,0
    80002d5c:	00c0006f          	j	80002d68 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d60:	ffffe097          	auipc	ra,0xffffe
    80002d64:	2d0080e7          	jalr	720(ra) # 80001030 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80002d68:	ffffe097          	auipc	ra,0xffffe
    80002d6c:	31c080e7          	jalr	796(ra) # 80001084 <getc>
    80002d70:	0005059b          	sext.w	a1,a0
    80002d74:	01b00793          	li	a5,27
    80002d78:	02f58a63          	beq	a1,a5,80002dac <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002d7c:	0084b503          	ld	a0,8(s1)
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	608080e7          	jalr	1544(ra) # 80003388 <_ZN6Buffer3putEi>
        i++;
    80002d88:	0019071b          	addiw	a4,s2,1
    80002d8c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d90:	0004a683          	lw	a3,0(s1)
    80002d94:	0026979b          	slliw	a5,a3,0x2
    80002d98:	00d787bb          	addw	a5,a5,a3
    80002d9c:	0017979b          	slliw	a5,a5,0x1
    80002da0:	02f767bb          	remw	a5,a4,a5
    80002da4:	fc0792e3          	bnez	a5,80002d68 <_Z16producerKeyboardPv+0x2c>
    80002da8:	fb9ff06f          	j	80002d60 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002dac:	00100793          	li	a5,1
    80002db0:	00004717          	auipc	a4,0x4
    80002db4:	6cf72823          	sw	a5,1744(a4) # 80007480 <threadEnd>
    data->buffer->put('!');
    80002db8:	02100593          	li	a1,33
    80002dbc:	0084b503          	ld	a0,8(s1)
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	5c8080e7          	jalr	1480(ra) # 80003388 <_ZN6Buffer3putEi>

    printInt((uint64)data->wait);
    80002dc8:	00000613          	li	a2,0
    80002dcc:	00a00593          	li	a1,10
    80002dd0:	0104a503          	lw	a0,16(s1)
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	a5c080e7          	jalr	-1444(ra) # 80002830 <_Z8printIntiii>

    sem_signal(data->wait);
    80002ddc:	0104b503          	ld	a0,16(s1)
    80002de0:	ffffe097          	auipc	ra,0xffffe
    80002de4:	28c080e7          	jalr	652(ra) # 8000106c <sem_signal>
}
    80002de8:	01813083          	ld	ra,24(sp)
    80002dec:	01013403          	ld	s0,16(sp)
    80002df0:	00813483          	ld	s1,8(sp)
    80002df4:	00013903          	ld	s2,0(sp)
    80002df8:	02010113          	addi	sp,sp,32
    80002dfc:	00008067          	ret

0000000080002e00 <_Z8producerPv>:

void producer(void *arg) {
    80002e00:	fe010113          	addi	sp,sp,-32
    80002e04:	00113c23          	sd	ra,24(sp)
    80002e08:	00813823          	sd	s0,16(sp)
    80002e0c:	00913423          	sd	s1,8(sp)
    80002e10:	01213023          	sd	s2,0(sp)
    80002e14:	02010413          	addi	s0,sp,32
    80002e18:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e1c:	00000913          	li	s2,0
    80002e20:	00c0006f          	j	80002e2c <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e24:	ffffe097          	auipc	ra,0xffffe
    80002e28:	20c080e7          	jalr	524(ra) # 80001030 <thread_dispatch>
    while (!threadEnd) {
    80002e2c:	00004797          	auipc	a5,0x4
    80002e30:	6547a783          	lw	a5,1620(a5) # 80007480 <threadEnd>
    80002e34:	02079e63          	bnez	a5,80002e70 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e38:	0004a583          	lw	a1,0(s1)
    80002e3c:	0305859b          	addiw	a1,a1,48
    80002e40:	0084b503          	ld	a0,8(s1)
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	544080e7          	jalr	1348(ra) # 80003388 <_ZN6Buffer3putEi>
        i++;
    80002e4c:	0019071b          	addiw	a4,s2,1
    80002e50:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e54:	0004a683          	lw	a3,0(s1)
    80002e58:	0026979b          	slliw	a5,a3,0x2
    80002e5c:	00d787bb          	addw	a5,a5,a3
    80002e60:	0017979b          	slliw	a5,a5,0x1
    80002e64:	02f767bb          	remw	a5,a4,a5
    80002e68:	fc0792e3          	bnez	a5,80002e2c <_Z8producerPv+0x2c>
    80002e6c:	fb9ff06f          	j	80002e24 <_Z8producerPv+0x24>
        }
    }

    printInt((uint64)data->wait);
    80002e70:	00000613          	li	a2,0
    80002e74:	00a00593          	li	a1,10
    80002e78:	0104a503          	lw	a0,16(s1)
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	9b4080e7          	jalr	-1612(ra) # 80002830 <_Z8printIntiii>

    sem_signal(data->wait);
    80002e84:	0104b503          	ld	a0,16(s1)
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	1e4080e7          	jalr	484(ra) # 8000106c <sem_signal>
}
    80002e90:	01813083          	ld	ra,24(sp)
    80002e94:	01013403          	ld	s0,16(sp)
    80002e98:	00813483          	ld	s1,8(sp)
    80002e9c:	00013903          	ld	s2,0(sp)
    80002ea0:	02010113          	addi	sp,sp,32
    80002ea4:	00008067          	ret

0000000080002ea8 <_Z8consumerPv>:

void consumer(void *arg) {
    80002ea8:	fd010113          	addi	sp,sp,-48
    80002eac:	02113423          	sd	ra,40(sp)
    80002eb0:	02813023          	sd	s0,32(sp)
    80002eb4:	00913c23          	sd	s1,24(sp)
    80002eb8:	01213823          	sd	s2,16(sp)
    80002ebc:	01313423          	sd	s3,8(sp)
    80002ec0:	03010413          	addi	s0,sp,48
    80002ec4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ec8:	00000993          	li	s3,0
    80002ecc:	01c0006f          	j	80002ee8 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ed0:	ffffe097          	auipc	ra,0xffffe
    80002ed4:	160080e7          	jalr	352(ra) # 80001030 <thread_dispatch>
    80002ed8:	0500006f          	j	80002f28 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002edc:	00a00513          	li	a0,10
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	1b0080e7          	jalr	432(ra) # 80001090 <putc>
    while (!threadEnd) {
    80002ee8:	00004797          	auipc	a5,0x4
    80002eec:	5987a783          	lw	a5,1432(a5) # 80007480 <threadEnd>
    80002ef0:	06079063          	bnez	a5,80002f50 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    80002ef4:	00893503          	ld	a0,8(s2)
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	520080e7          	jalr	1312(ra) # 80003418 <_ZN6Buffer3getEv>
        i++;
    80002f00:	0019849b          	addiw	s1,s3,1
    80002f04:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f08:	0ff57513          	andi	a0,a0,255
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	184080e7          	jalr	388(ra) # 80001090 <putc>
        if (i % (5 * data->id) == 0) {
    80002f14:	00092703          	lw	a4,0(s2)
    80002f18:	0027179b          	slliw	a5,a4,0x2
    80002f1c:	00e787bb          	addw	a5,a5,a4
    80002f20:	02f4e7bb          	remw	a5,s1,a5
    80002f24:	fa0786e3          	beqz	a5,80002ed0 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f28:	05000793          	li	a5,80
    80002f2c:	02f4e4bb          	remw	s1,s1,a5
    80002f30:	fa049ce3          	bnez	s1,80002ee8 <_Z8consumerPv+0x40>
    80002f34:	fa9ff06f          	j	80002edc <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f38:	00893503          	ld	a0,8(s2)
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	4dc080e7          	jalr	1244(ra) # 80003418 <_ZN6Buffer3getEv>
        putc(key);
    80002f44:	0ff57513          	andi	a0,a0,255
    80002f48:	ffffe097          	auipc	ra,0xffffe
    80002f4c:	148080e7          	jalr	328(ra) # 80001090 <putc>
    while (data->buffer->getCnt() > 0) {
    80002f50:	00893503          	ld	a0,8(s2)
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	550080e7          	jalr	1360(ra) # 800034a4 <_ZN6Buffer6getCntEv>
    80002f5c:	fca04ee3          	bgtz	a0,80002f38 <_Z8consumerPv+0x90>
    }

    printInt((uint64)data->wait);
    80002f60:	00000613          	li	a2,0
    80002f64:	00a00593          	li	a1,10
    80002f68:	01092503          	lw	a0,16(s2)
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	8c4080e7          	jalr	-1852(ra) # 80002830 <_Z8printIntiii>

    sem_signal(data->wait);
    80002f74:	01093503          	ld	a0,16(s2)
    80002f78:	ffffe097          	auipc	ra,0xffffe
    80002f7c:	0f4080e7          	jalr	244(ra) # 8000106c <sem_signal>
}
    80002f80:	02813083          	ld	ra,40(sp)
    80002f84:	02013403          	ld	s0,32(sp)
    80002f88:	01813483          	ld	s1,24(sp)
    80002f8c:	01013903          	ld	s2,16(sp)
    80002f90:	00813983          	ld	s3,8(sp)
    80002f94:	03010113          	addi	sp,sp,48
    80002f98:	00008067          	ret

0000000080002f9c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002f9c:	f9010113          	addi	sp,sp,-112
    80002fa0:	06113423          	sd	ra,104(sp)
    80002fa4:	06813023          	sd	s0,96(sp)
    80002fa8:	04913c23          	sd	s1,88(sp)
    80002fac:	05213823          	sd	s2,80(sp)
    80002fb0:	05313423          	sd	s3,72(sp)
    80002fb4:	05413023          	sd	s4,64(sp)
    80002fb8:	03513c23          	sd	s5,56(sp)
    80002fbc:	03613823          	sd	s6,48(sp)
    80002fc0:	07010413          	addi	s0,sp,112
    }


    sem_close(waitForAll);

    delete buffer;
    80002fc4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002fc8:	00003517          	auipc	a0,0x3
    80002fcc:	1f850513          	addi	a0,a0,504 # 800061c0 <_ZZ14__print_uint64mE6digits+0x28>
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	6c8080e7          	jalr	1736(ra) # 80002698 <_Z11printStringPKc>
    getString(input, 30);
    80002fd8:	01e00593          	li	a1,30
    80002fdc:	fa040493          	addi	s1,s0,-96
    80002fe0:	00048513          	mv	a0,s1
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	730080e7          	jalr	1840(ra) # 80002714 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	7f0080e7          	jalr	2032(ra) # 800027e0 <_Z11stringToIntPKc>
    80002ff8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002ffc:	00003517          	auipc	a0,0x3
    80003000:	1e450513          	addi	a0,a0,484 # 800061e0 <_ZZ14__print_uint64mE6digits+0x48>
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	694080e7          	jalr	1684(ra) # 80002698 <_Z11printStringPKc>
    getString(input, 30);
    8000300c:	01e00593          	li	a1,30
    80003010:	00048513          	mv	a0,s1
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	700080e7          	jalr	1792(ra) # 80002714 <_Z9getStringPci>
    n = stringToInt(input);
    8000301c:	00048513          	mv	a0,s1
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	7c0080e7          	jalr	1984(ra) # 800027e0 <_Z11stringToIntPKc>
    80003028:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000302c:	00003517          	auipc	a0,0x3
    80003030:	1d450513          	addi	a0,a0,468 # 80006200 <_ZZ14__print_uint64mE6digits+0x68>
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	664080e7          	jalr	1636(ra) # 80002698 <_Z11printStringPKc>
    8000303c:	00000613          	li	a2,0
    80003040:	00a00593          	li	a1,10
    80003044:	00090513          	mv	a0,s2
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	7e8080e7          	jalr	2024(ra) # 80002830 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003050:	00003517          	auipc	a0,0x3
    80003054:	1c850513          	addi	a0,a0,456 # 80006218 <_ZZ14__print_uint64mE6digits+0x80>
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	640080e7          	jalr	1600(ra) # 80002698 <_Z11printStringPKc>
    80003060:	00000613          	li	a2,0
    80003064:	00a00593          	li	a1,10
    80003068:	00048513          	mv	a0,s1
    8000306c:	fffff097          	auipc	ra,0xfffff
    80003070:	7c4080e7          	jalr	1988(ra) # 80002830 <_Z8printIntiii>
    printString(".\n");
    80003074:	00003517          	auipc	a0,0x3
    80003078:	1bc50513          	addi	a0,a0,444 # 80006230 <_ZZ14__print_uint64mE6digits+0x98>
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	61c080e7          	jalr	1564(ra) # 80002698 <_Z11printStringPKc>
    if(threadNum > n) {
    80003084:	0324c463          	blt	s1,s2,800030ac <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003088:	03205c63          	blez	s2,800030c0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000308c:	03800513          	li	a0,56
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	9b8080e7          	jalr	-1608(ra) # 80001a48 <_Znwm>
    80003098:	00050a13          	mv	s4,a0
    8000309c:	00048593          	mv	a1,s1
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	24c080e7          	jalr	588(ra) # 800032ec <_ZN6BufferC1Ei>
    800030a8:	0300006f          	j	800030d8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030ac:	00003517          	auipc	a0,0x3
    800030b0:	18c50513          	addi	a0,a0,396 # 80006238 <_ZZ14__print_uint64mE6digits+0xa0>
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	5e4080e7          	jalr	1508(ra) # 80002698 <_Z11printStringPKc>
        return;
    800030bc:	0140006f          	j	800030d0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030c0:	00003517          	auipc	a0,0x3
    800030c4:	1b850513          	addi	a0,a0,440 # 80006278 <_ZZ14__print_uint64mE6digits+0xe0>
    800030c8:	fffff097          	auipc	ra,0xfffff
    800030cc:	5d0080e7          	jalr	1488(ra) # 80002698 <_Z11printStringPKc>
        return;
    800030d0:	000b0113          	mv	sp,s6
    800030d4:	1880006f          	j	8000325c <_Z22producerConsumer_C_APIv+0x2c0>
    sem_open(&waitForAll, 0);
    800030d8:	00004497          	auipc	s1,0x4
    800030dc:	3a848493          	addi	s1,s1,936 # 80007480 <threadEnd>
    800030e0:	00000593          	li	a1,0
    800030e4:	00004517          	auipc	a0,0x4
    800030e8:	3a450513          	addi	a0,a0,932 # 80007488 <waitForAll>
    800030ec:	ffffe097          	auipc	ra,0xffffe
    800030f0:	f5c080e7          	jalr	-164(ra) # 80001048 <sem_open>
    printInt((uint64)waitForAll);
    800030f4:	00000613          	li	a2,0
    800030f8:	00a00593          	li	a1,10
    800030fc:	0084a503          	lw	a0,8(s1)
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	730080e7          	jalr	1840(ra) # 80002830 <_Z8printIntiii>
    thread_t threads[threadNum];
    80003108:	00391793          	slli	a5,s2,0x3
    8000310c:	00f78793          	addi	a5,a5,15
    80003110:	ff07f793          	andi	a5,a5,-16
    80003114:	40f10133          	sub	sp,sp,a5
    80003118:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000311c:	0019071b          	addiw	a4,s2,1
    80003120:	00171793          	slli	a5,a4,0x1
    80003124:	00e787b3          	add	a5,a5,a4
    80003128:	00379793          	slli	a5,a5,0x3
    8000312c:	00f78793          	addi	a5,a5,15
    80003130:	ff07f793          	andi	a5,a5,-16
    80003134:	40f10133          	sub	sp,sp,a5
    80003138:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000313c:	00191613          	slli	a2,s2,0x1
    80003140:	012607b3          	add	a5,a2,s2
    80003144:	00379793          	slli	a5,a5,0x3
    80003148:	00f987b3          	add	a5,s3,a5
    8000314c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003150:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003154:	0084b703          	ld	a4,8(s1)
    80003158:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000315c:	00078613          	mv	a2,a5
    80003160:	00000597          	auipc	a1,0x0
    80003164:	d4858593          	addi	a1,a1,-696 # 80002ea8 <_Z8consumerPv>
    80003168:	f9840513          	addi	a0,s0,-104
    8000316c:	ffffe097          	auipc	ra,0xffffe
    80003170:	eac080e7          	jalr	-340(ra) # 80001018 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003174:	00000493          	li	s1,0
    80003178:	0280006f          	j	800031a0 <_Z22producerConsumer_C_APIv+0x204>
        thread_create(threads + i,
    8000317c:	00000597          	auipc	a1,0x0
    80003180:	bc058593          	addi	a1,a1,-1088 # 80002d3c <_Z16producerKeyboardPv>
                      data + i);
    80003184:	00179613          	slli	a2,a5,0x1
    80003188:	00f60633          	add	a2,a2,a5
    8000318c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003190:	00c98633          	add	a2,s3,a2
    80003194:	ffffe097          	auipc	ra,0xffffe
    80003198:	e84080e7          	jalr	-380(ra) # 80001018 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000319c:	0014849b          	addiw	s1,s1,1
    800031a0:	0524d263          	bge	s1,s2,800031e4 <_Z22producerConsumer_C_APIv+0x248>
        data[i].id = i;
    800031a4:	00149793          	slli	a5,s1,0x1
    800031a8:	009787b3          	add	a5,a5,s1
    800031ac:	00379793          	slli	a5,a5,0x3
    800031b0:	00f987b3          	add	a5,s3,a5
    800031b4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031b8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031bc:	00004717          	auipc	a4,0x4
    800031c0:	2cc73703          	ld	a4,716(a4) # 80007488 <waitForAll>
    800031c4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031c8:	00048793          	mv	a5,s1
    800031cc:	00349513          	slli	a0,s1,0x3
    800031d0:	00aa8533          	add	a0,s5,a0
    800031d4:	fa9054e3          	blez	s1,8000317c <_Z22producerConsumer_C_APIv+0x1e0>
    800031d8:	00000597          	auipc	a1,0x0
    800031dc:	c2858593          	addi	a1,a1,-984 # 80002e00 <_Z8producerPv>
    800031e0:	fa5ff06f          	j	80003184 <_Z22producerConsumer_C_APIv+0x1e8>
    printString("here1\n");
    800031e4:	00003517          	auipc	a0,0x3
    800031e8:	0c450513          	addi	a0,a0,196 # 800062a8 <_ZZ14__print_uint64mE6digits+0x110>
    800031ec:	fffff097          	auipc	ra,0xfffff
    800031f0:	4ac080e7          	jalr	1196(ra) # 80002698 <_Z11printStringPKc>
    thread_dispatch();
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	e3c080e7          	jalr	-452(ra) # 80001030 <thread_dispatch>
    printString("here2\n");
    800031fc:	00003517          	auipc	a0,0x3
    80003200:	0b450513          	addi	a0,a0,180 # 800062b0 <_ZZ14__print_uint64mE6digits+0x118>
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	494080e7          	jalr	1172(ra) # 80002698 <_Z11printStringPKc>
    for (int i = 0; i <= threadNum; i++) {
    8000320c:	00000493          	li	s1,0
    80003210:	00994e63          	blt	s2,s1,8000322c <_Z22producerConsumer_C_APIv+0x290>
        sem_wait(waitForAll);
    80003214:	00004517          	auipc	a0,0x4
    80003218:	27453503          	ld	a0,628(a0) # 80007488 <waitForAll>
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	e44080e7          	jalr	-444(ra) # 80001060 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003224:	0014849b          	addiw	s1,s1,1
    80003228:	fe9ff06f          	j	80003210 <_Z22producerConsumer_C_APIv+0x274>
    sem_close(waitForAll);
    8000322c:	00004517          	auipc	a0,0x4
    80003230:	25c53503          	ld	a0,604(a0) # 80007488 <waitForAll>
    80003234:	ffffe097          	auipc	ra,0xffffe
    80003238:	e20080e7          	jalr	-480(ra) # 80001054 <sem_close>
    delete buffer;
    8000323c:	000a0e63          	beqz	s4,80003258 <_Z22producerConsumer_C_APIv+0x2bc>
    80003240:	000a0513          	mv	a0,s4
    80003244:	00000097          	auipc	ra,0x0
    80003248:	2e8080e7          	jalr	744(ra) # 8000352c <_ZN6BufferD1Ev>
    8000324c:	000a0513          	mv	a0,s4
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	848080e7          	jalr	-1976(ra) # 80001a98 <_ZdlPv>
    80003258:	000b0113          	mv	sp,s6

}
    8000325c:	f9040113          	addi	sp,s0,-112
    80003260:	06813083          	ld	ra,104(sp)
    80003264:	06013403          	ld	s0,96(sp)
    80003268:	05813483          	ld	s1,88(sp)
    8000326c:	05013903          	ld	s2,80(sp)
    80003270:	04813983          	ld	s3,72(sp)
    80003274:	04013a03          	ld	s4,64(sp)
    80003278:	03813a83          	ld	s5,56(sp)
    8000327c:	03013b03          	ld	s6,48(sp)
    80003280:	07010113          	addi	sp,sp,112
    80003284:	00008067          	ret
    80003288:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000328c:	000a0513          	mv	a0,s4
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	808080e7          	jalr	-2040(ra) # 80001a98 <_ZdlPv>
    80003298:	00048513          	mv	a0,s1
    8000329c:	00005097          	auipc	ra,0x5
    800032a0:	2bc080e7          	jalr	700(ra) # 80008558 <_Unwind_Resume>

00000000800032a4 <_Z8userMainv>:

#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"

void userMain() {
    800032a4:	ff010113          	addi	sp,sp,-16
    800032a8:	00113423          	sd	ra,8(sp)
    800032ac:	00813023          	sd	s0,0(sp)
    800032b0:	01010413          	addi	s0,sp,16
    __print_string("I am here!\n");
    800032b4:	00003517          	auipc	a0,0x3
    800032b8:	00450513          	addi	a0,a0,4 # 800062b8 <_ZZ14__print_uint64mE6digits+0x120>
    800032bc:	fffff097          	auipc	ra,0xfffff
    800032c0:	2c4080e7          	jalr	708(ra) # 80002580 <_Z14__print_stringPKc>
    //printString("I am here!");
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	cd8080e7          	jalr	-808(ra) # 80002f9c <_Z22producerConsumer_C_APIv>
    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //__print_string("I am here too!\n");
    //thread_dispatch();
    __print_string("I am here again!\n");
    800032cc:	00003517          	auipc	a0,0x3
    800032d0:	ffc50513          	addi	a0,a0,-4 # 800062c8 <_ZZ14__print_uint64mE6digits+0x130>
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	2ac080e7          	jalr	684(ra) # 80002580 <_Z14__print_stringPKc>
    //thread_exit();
    /*TCB::running->setFinished(true);
    thread_dispatch();*/
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret

00000000800032ec <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	01213023          	sd	s2,0(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	00050493          	mv	s1,a0
    80003308:	00058913          	mv	s2,a1
    8000330c:	0015879b          	addiw	a5,a1,1
    80003310:	0007851b          	sext.w	a0,a5
    80003314:	00f4a023          	sw	a5,0(s1)
    80003318:	0004a823          	sw	zero,16(s1)
    8000331c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003320:	00251513          	slli	a0,a0,0x2
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	cdc080e7          	jalr	-804(ra) # 80001000 <mem_alloc>
    8000332c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003330:	00000593          	li	a1,0
    80003334:	02048513          	addi	a0,s1,32
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	d10080e7          	jalr	-752(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80003340:	00090593          	mv	a1,s2
    80003344:	01848513          	addi	a0,s1,24
    80003348:	ffffe097          	auipc	ra,0xffffe
    8000334c:	d00080e7          	jalr	-768(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    80003350:	00100593          	li	a1,1
    80003354:	02848513          	addi	a0,s1,40
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	cf0080e7          	jalr	-784(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    80003360:	00100593          	li	a1,1
    80003364:	03048513          	addi	a0,s1,48
    80003368:	ffffe097          	auipc	ra,0xffffe
    8000336c:	ce0080e7          	jalr	-800(ra) # 80001048 <sem_open>
}
    80003370:	01813083          	ld	ra,24(sp)
    80003374:	01013403          	ld	s0,16(sp)
    80003378:	00813483          	ld	s1,8(sp)
    8000337c:	00013903          	ld	s2,0(sp)
    80003380:	02010113          	addi	sp,sp,32
    80003384:	00008067          	ret

0000000080003388 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00050493          	mv	s1,a0
    800033a4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800033a8:	01853503          	ld	a0,24(a0)
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	cb4080e7          	jalr	-844(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    800033b4:	0304b503          	ld	a0,48(s1)
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	ca8080e7          	jalr	-856(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    800033c0:	0084b783          	ld	a5,8(s1)
    800033c4:	0144a703          	lw	a4,20(s1)
    800033c8:	00271713          	slli	a4,a4,0x2
    800033cc:	00e787b3          	add	a5,a5,a4
    800033d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800033d4:	0144a783          	lw	a5,20(s1)
    800033d8:	0017879b          	addiw	a5,a5,1
    800033dc:	0004a703          	lw	a4,0(s1)
    800033e0:	02e7e7bb          	remw	a5,a5,a4
    800033e4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800033e8:	0304b503          	ld	a0,48(s1)
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	c80080e7          	jalr	-896(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    800033f4:	0204b503          	ld	a0,32(s1)
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	c74080e7          	jalr	-908(ra) # 8000106c <sem_signal>

}
    80003400:	01813083          	ld	ra,24(sp)
    80003404:	01013403          	ld	s0,16(sp)
    80003408:	00813483          	ld	s1,8(sp)
    8000340c:	00013903          	ld	s2,0(sp)
    80003410:	02010113          	addi	sp,sp,32
    80003414:	00008067          	ret

0000000080003418 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003418:	fe010113          	addi	sp,sp,-32
    8000341c:	00113c23          	sd	ra,24(sp)
    80003420:	00813823          	sd	s0,16(sp)
    80003424:	00913423          	sd	s1,8(sp)
    80003428:	01213023          	sd	s2,0(sp)
    8000342c:	02010413          	addi	s0,sp,32
    80003430:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003434:	02053503          	ld	a0,32(a0)
    80003438:	ffffe097          	auipc	ra,0xffffe
    8000343c:	c28080e7          	jalr	-984(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    80003440:	0284b503          	ld	a0,40(s1)
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	c1c080e7          	jalr	-996(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    8000344c:	0084b703          	ld	a4,8(s1)
    80003450:	0104a783          	lw	a5,16(s1)
    80003454:	00279693          	slli	a3,a5,0x2
    80003458:	00d70733          	add	a4,a4,a3
    8000345c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003460:	0017879b          	addiw	a5,a5,1
    80003464:	0004a703          	lw	a4,0(s1)
    80003468:	02e7e7bb          	remw	a5,a5,a4
    8000346c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003470:	0284b503          	ld	a0,40(s1)
    80003474:	ffffe097          	auipc	ra,0xffffe
    80003478:	bf8080e7          	jalr	-1032(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    8000347c:	0184b503          	ld	a0,24(s1)
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	bec080e7          	jalr	-1044(ra) # 8000106c <sem_signal>

    return ret;
}
    80003488:	00090513          	mv	a0,s2
    8000348c:	01813083          	ld	ra,24(sp)
    80003490:	01013403          	ld	s0,16(sp)
    80003494:	00813483          	ld	s1,8(sp)
    80003498:	00013903          	ld	s2,0(sp)
    8000349c:	02010113          	addi	sp,sp,32
    800034a0:	00008067          	ret

00000000800034a4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800034a4:	fe010113          	addi	sp,sp,-32
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	00813823          	sd	s0,16(sp)
    800034b0:	00913423          	sd	s1,8(sp)
    800034b4:	01213023          	sd	s2,0(sp)
    800034b8:	02010413          	addi	s0,sp,32
    800034bc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800034c0:	02853503          	ld	a0,40(a0)
    800034c4:	ffffe097          	auipc	ra,0xffffe
    800034c8:	b9c080e7          	jalr	-1124(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    800034cc:	0304b503          	ld	a0,48(s1)
    800034d0:	ffffe097          	auipc	ra,0xffffe
    800034d4:	b90080e7          	jalr	-1136(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    800034d8:	0144a783          	lw	a5,20(s1)
    800034dc:	0104a903          	lw	s2,16(s1)
    800034e0:	0327ce63          	blt	a5,s2,8000351c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800034e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800034e8:	0304b503          	ld	a0,48(s1)
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	b80080e7          	jalr	-1152(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    800034f4:	0284b503          	ld	a0,40(s1)
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	b74080e7          	jalr	-1164(ra) # 8000106c <sem_signal>

    return ret;
}
    80003500:	00090513          	mv	a0,s2
    80003504:	01813083          	ld	ra,24(sp)
    80003508:	01013403          	ld	s0,16(sp)
    8000350c:	00813483          	ld	s1,8(sp)
    80003510:	00013903          	ld	s2,0(sp)
    80003514:	02010113          	addi	sp,sp,32
    80003518:	00008067          	ret
        ret = cap - head + tail;
    8000351c:	0004a703          	lw	a4,0(s1)
    80003520:	4127093b          	subw	s2,a4,s2
    80003524:	00f9093b          	addw	s2,s2,a5
    80003528:	fc1ff06f          	j	800034e8 <_ZN6Buffer6getCntEv+0x44>

000000008000352c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000352c:	fe010113          	addi	sp,sp,-32
    80003530:	00113c23          	sd	ra,24(sp)
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	02010413          	addi	s0,sp,32
    80003540:	00050493          	mv	s1,a0
    putc('\n');
    80003544:	00a00513          	li	a0,10
    80003548:	ffffe097          	auipc	ra,0xffffe
    8000354c:	b48080e7          	jalr	-1208(ra) # 80001090 <putc>
    printString("Buffer deleted!\n");
    80003550:	00003517          	auipc	a0,0x3
    80003554:	c5850513          	addi	a0,a0,-936 # 800061a8 <_ZZ14__print_uint64mE6digits+0x10>
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	140080e7          	jalr	320(ra) # 80002698 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003560:	00048513          	mv	a0,s1
    80003564:	00000097          	auipc	ra,0x0
    80003568:	f40080e7          	jalr	-192(ra) # 800034a4 <_ZN6Buffer6getCntEv>
    8000356c:	02a05c63          	blez	a0,800035a4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003570:	0084b783          	ld	a5,8(s1)
    80003574:	0104a703          	lw	a4,16(s1)
    80003578:	00271713          	slli	a4,a4,0x2
    8000357c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003580:	0007c503          	lbu	a0,0(a5)
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	b0c080e7          	jalr	-1268(ra) # 80001090 <putc>
        head = (head + 1) % cap;
    8000358c:	0104a783          	lw	a5,16(s1)
    80003590:	0017879b          	addiw	a5,a5,1
    80003594:	0004a703          	lw	a4,0(s1)
    80003598:	02e7e7bb          	remw	a5,a5,a4
    8000359c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800035a0:	fc1ff06f          	j	80003560 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800035a4:	02100513          	li	a0,33
    800035a8:	ffffe097          	auipc	ra,0xffffe
    800035ac:	ae8080e7          	jalr	-1304(ra) # 80001090 <putc>
    putc('\n');
    800035b0:	00a00513          	li	a0,10
    800035b4:	ffffe097          	auipc	ra,0xffffe
    800035b8:	adc080e7          	jalr	-1316(ra) # 80001090 <putc>
    mem_free(buffer);
    800035bc:	0084b503          	ld	a0,8(s1)
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	a4c080e7          	jalr	-1460(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    800035c8:	0204b503          	ld	a0,32(s1)
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	a88080e7          	jalr	-1400(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    800035d4:	0184b503          	ld	a0,24(s1)
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	a7c080e7          	jalr	-1412(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    800035e0:	0304b503          	ld	a0,48(s1)
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	a70080e7          	jalr	-1424(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    800035ec:	0284b503          	ld	a0,40(s1)
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	a64080e7          	jalr	-1436(ra) # 80001054 <sem_close>
}
    800035f8:	01813083          	ld	ra,24(sp)
    800035fc:	01013403          	ld	s0,16(sp)
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	02010113          	addi	sp,sp,32
    80003608:	00008067          	ret

000000008000360c <start>:
    8000360c:	ff010113          	addi	sp,sp,-16
    80003610:	00813423          	sd	s0,8(sp)
    80003614:	01010413          	addi	s0,sp,16
    80003618:	300027f3          	csrr	a5,mstatus
    8000361c:	ffffe737          	lui	a4,0xffffe
    80003620:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff610f>
    80003624:	00e7f7b3          	and	a5,a5,a4
    80003628:	00001737          	lui	a4,0x1
    8000362c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003630:	00e7e7b3          	or	a5,a5,a4
    80003634:	30079073          	csrw	mstatus,a5
    80003638:	00000797          	auipc	a5,0x0
    8000363c:	16078793          	addi	a5,a5,352 # 80003798 <system_main>
    80003640:	34179073          	csrw	mepc,a5
    80003644:	00000793          	li	a5,0
    80003648:	18079073          	csrw	satp,a5
    8000364c:	000107b7          	lui	a5,0x10
    80003650:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003654:	30279073          	csrw	medeleg,a5
    80003658:	30379073          	csrw	mideleg,a5
    8000365c:	104027f3          	csrr	a5,sie
    80003660:	2227e793          	ori	a5,a5,546
    80003664:	10479073          	csrw	sie,a5
    80003668:	fff00793          	li	a5,-1
    8000366c:	00a7d793          	srli	a5,a5,0xa
    80003670:	3b079073          	csrw	pmpaddr0,a5
    80003674:	00f00793          	li	a5,15
    80003678:	3a079073          	csrw	pmpcfg0,a5
    8000367c:	f14027f3          	csrr	a5,mhartid
    80003680:	0200c737          	lui	a4,0x200c
    80003684:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003688:	0007869b          	sext.w	a3,a5
    8000368c:	00269713          	slli	a4,a3,0x2
    80003690:	000f4637          	lui	a2,0xf4
    80003694:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003698:	00d70733          	add	a4,a4,a3
    8000369c:	0037979b          	slliw	a5,a5,0x3
    800036a0:	020046b7          	lui	a3,0x2004
    800036a4:	00d787b3          	add	a5,a5,a3
    800036a8:	00c585b3          	add	a1,a1,a2
    800036ac:	00371693          	slli	a3,a4,0x3
    800036b0:	00004717          	auipc	a4,0x4
    800036b4:	de070713          	addi	a4,a4,-544 # 80007490 <timer_scratch>
    800036b8:	00b7b023          	sd	a1,0(a5)
    800036bc:	00d70733          	add	a4,a4,a3
    800036c0:	00f73c23          	sd	a5,24(a4)
    800036c4:	02c73023          	sd	a2,32(a4)
    800036c8:	34071073          	csrw	mscratch,a4
    800036cc:	00000797          	auipc	a5,0x0
    800036d0:	6e478793          	addi	a5,a5,1764 # 80003db0 <timervec>
    800036d4:	30579073          	csrw	mtvec,a5
    800036d8:	300027f3          	csrr	a5,mstatus
    800036dc:	0087e793          	ori	a5,a5,8
    800036e0:	30079073          	csrw	mstatus,a5
    800036e4:	304027f3          	csrr	a5,mie
    800036e8:	0807e793          	ori	a5,a5,128
    800036ec:	30479073          	csrw	mie,a5
    800036f0:	f14027f3          	csrr	a5,mhartid
    800036f4:	0007879b          	sext.w	a5,a5
    800036f8:	00078213          	mv	tp,a5
    800036fc:	30200073          	mret
    80003700:	00813403          	ld	s0,8(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <timerinit>:
    8000370c:	ff010113          	addi	sp,sp,-16
    80003710:	00813423          	sd	s0,8(sp)
    80003714:	01010413          	addi	s0,sp,16
    80003718:	f14027f3          	csrr	a5,mhartid
    8000371c:	0200c737          	lui	a4,0x200c
    80003720:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003724:	0007869b          	sext.w	a3,a5
    80003728:	00269713          	slli	a4,a3,0x2
    8000372c:	000f4637          	lui	a2,0xf4
    80003730:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003734:	00d70733          	add	a4,a4,a3
    80003738:	0037979b          	slliw	a5,a5,0x3
    8000373c:	020046b7          	lui	a3,0x2004
    80003740:	00d787b3          	add	a5,a5,a3
    80003744:	00c585b3          	add	a1,a1,a2
    80003748:	00371693          	slli	a3,a4,0x3
    8000374c:	00004717          	auipc	a4,0x4
    80003750:	d4470713          	addi	a4,a4,-700 # 80007490 <timer_scratch>
    80003754:	00b7b023          	sd	a1,0(a5)
    80003758:	00d70733          	add	a4,a4,a3
    8000375c:	00f73c23          	sd	a5,24(a4)
    80003760:	02c73023          	sd	a2,32(a4)
    80003764:	34071073          	csrw	mscratch,a4
    80003768:	00000797          	auipc	a5,0x0
    8000376c:	64878793          	addi	a5,a5,1608 # 80003db0 <timervec>
    80003770:	30579073          	csrw	mtvec,a5
    80003774:	300027f3          	csrr	a5,mstatus
    80003778:	0087e793          	ori	a5,a5,8
    8000377c:	30079073          	csrw	mstatus,a5
    80003780:	304027f3          	csrr	a5,mie
    80003784:	0807e793          	ori	a5,a5,128
    80003788:	30479073          	csrw	mie,a5
    8000378c:	00813403          	ld	s0,8(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <system_main>:
    80003798:	fe010113          	addi	sp,sp,-32
    8000379c:	00813823          	sd	s0,16(sp)
    800037a0:	00913423          	sd	s1,8(sp)
    800037a4:	00113c23          	sd	ra,24(sp)
    800037a8:	02010413          	addi	s0,sp,32
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	0c4080e7          	jalr	196(ra) # 80003870 <cpuid>
    800037b4:	00004497          	auipc	s1,0x4
    800037b8:	c5c48493          	addi	s1,s1,-932 # 80007410 <started>
    800037bc:	02050263          	beqz	a0,800037e0 <system_main+0x48>
    800037c0:	0004a783          	lw	a5,0(s1)
    800037c4:	0007879b          	sext.w	a5,a5
    800037c8:	fe078ce3          	beqz	a5,800037c0 <system_main+0x28>
    800037cc:	0ff0000f          	fence
    800037d0:	00003517          	auipc	a0,0x3
    800037d4:	b4050513          	addi	a0,a0,-1216 # 80006310 <_ZZ14__print_uint64mE6digits+0x178>
    800037d8:	00001097          	auipc	ra,0x1
    800037dc:	a74080e7          	jalr	-1420(ra) # 8000424c <panic>
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	9c8080e7          	jalr	-1592(ra) # 800041a8 <consoleinit>
    800037e8:	00001097          	auipc	ra,0x1
    800037ec:	154080e7          	jalr	340(ra) # 8000493c <printfinit>
    800037f0:	00003517          	auipc	a0,0x3
    800037f4:	ae850513          	addi	a0,a0,-1304 # 800062d8 <_ZZ14__print_uint64mE6digits+0x140>
    800037f8:	00001097          	auipc	ra,0x1
    800037fc:	ab0080e7          	jalr	-1360(ra) # 800042a8 <__printf>
    80003800:	00003517          	auipc	a0,0x3
    80003804:	ae050513          	addi	a0,a0,-1312 # 800062e0 <_ZZ14__print_uint64mE6digits+0x148>
    80003808:	00001097          	auipc	ra,0x1
    8000380c:	aa0080e7          	jalr	-1376(ra) # 800042a8 <__printf>
    80003810:	00003517          	auipc	a0,0x3
    80003814:	ac850513          	addi	a0,a0,-1336 # 800062d8 <_ZZ14__print_uint64mE6digits+0x140>
    80003818:	00001097          	auipc	ra,0x1
    8000381c:	a90080e7          	jalr	-1392(ra) # 800042a8 <__printf>
    80003820:	00001097          	auipc	ra,0x1
    80003824:	4a8080e7          	jalr	1192(ra) # 80004cc8 <kinit>
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	148080e7          	jalr	328(ra) # 80003970 <trapinit>
    80003830:	00000097          	auipc	ra,0x0
    80003834:	16c080e7          	jalr	364(ra) # 8000399c <trapinithart>
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	5b8080e7          	jalr	1464(ra) # 80003df0 <plicinit>
    80003840:	00000097          	auipc	ra,0x0
    80003844:	5d8080e7          	jalr	1496(ra) # 80003e18 <plicinithart>
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	078080e7          	jalr	120(ra) # 800038c0 <userinit>
    80003850:	0ff0000f          	fence
    80003854:	00100793          	li	a5,1
    80003858:	00003517          	auipc	a0,0x3
    8000385c:	aa050513          	addi	a0,a0,-1376 # 800062f8 <_ZZ14__print_uint64mE6digits+0x160>
    80003860:	00f4a023          	sw	a5,0(s1)
    80003864:	00001097          	auipc	ra,0x1
    80003868:	a44080e7          	jalr	-1468(ra) # 800042a8 <__printf>
    8000386c:	0000006f          	j	8000386c <system_main+0xd4>

0000000080003870 <cpuid>:
    80003870:	ff010113          	addi	sp,sp,-16
    80003874:	00813423          	sd	s0,8(sp)
    80003878:	01010413          	addi	s0,sp,16
    8000387c:	00020513          	mv	a0,tp
    80003880:	00813403          	ld	s0,8(sp)
    80003884:	0005051b          	sext.w	a0,a0
    80003888:	01010113          	addi	sp,sp,16
    8000388c:	00008067          	ret

0000000080003890 <mycpu>:
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00813423          	sd	s0,8(sp)
    80003898:	01010413          	addi	s0,sp,16
    8000389c:	00020793          	mv	a5,tp
    800038a0:	00813403          	ld	s0,8(sp)
    800038a4:	0007879b          	sext.w	a5,a5
    800038a8:	00779793          	slli	a5,a5,0x7
    800038ac:	00005517          	auipc	a0,0x5
    800038b0:	c1450513          	addi	a0,a0,-1004 # 800084c0 <cpus>
    800038b4:	00f50533          	add	a0,a0,a5
    800038b8:	01010113          	addi	sp,sp,16
    800038bc:	00008067          	ret

00000000800038c0 <userinit>:
    800038c0:	ff010113          	addi	sp,sp,-16
    800038c4:	00813423          	sd	s0,8(sp)
    800038c8:	01010413          	addi	s0,sp,16
    800038cc:	00813403          	ld	s0,8(sp)
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	ffffe317          	auipc	t1,0xffffe
    800038d8:	e1c30067          	jr	-484(t1) # 800016f0 <main>

00000000800038dc <either_copyout>:
    800038dc:	ff010113          	addi	sp,sp,-16
    800038e0:	00813023          	sd	s0,0(sp)
    800038e4:	00113423          	sd	ra,8(sp)
    800038e8:	01010413          	addi	s0,sp,16
    800038ec:	02051663          	bnez	a0,80003918 <either_copyout+0x3c>
    800038f0:	00058513          	mv	a0,a1
    800038f4:	00060593          	mv	a1,a2
    800038f8:	0006861b          	sext.w	a2,a3
    800038fc:	00002097          	auipc	ra,0x2
    80003900:	c58080e7          	jalr	-936(ra) # 80005554 <__memmove>
    80003904:	00813083          	ld	ra,8(sp)
    80003908:	00013403          	ld	s0,0(sp)
    8000390c:	00000513          	li	a0,0
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret
    80003918:	00003517          	auipc	a0,0x3
    8000391c:	a2050513          	addi	a0,a0,-1504 # 80006338 <_ZZ14__print_uint64mE6digits+0x1a0>
    80003920:	00001097          	auipc	ra,0x1
    80003924:	92c080e7          	jalr	-1748(ra) # 8000424c <panic>

0000000080003928 <either_copyin>:
    80003928:	ff010113          	addi	sp,sp,-16
    8000392c:	00813023          	sd	s0,0(sp)
    80003930:	00113423          	sd	ra,8(sp)
    80003934:	01010413          	addi	s0,sp,16
    80003938:	02059463          	bnez	a1,80003960 <either_copyin+0x38>
    8000393c:	00060593          	mv	a1,a2
    80003940:	0006861b          	sext.w	a2,a3
    80003944:	00002097          	auipc	ra,0x2
    80003948:	c10080e7          	jalr	-1008(ra) # 80005554 <__memmove>
    8000394c:	00813083          	ld	ra,8(sp)
    80003950:	00013403          	ld	s0,0(sp)
    80003954:	00000513          	li	a0,0
    80003958:	01010113          	addi	sp,sp,16
    8000395c:	00008067          	ret
    80003960:	00003517          	auipc	a0,0x3
    80003964:	a0050513          	addi	a0,a0,-1536 # 80006360 <_ZZ14__print_uint64mE6digits+0x1c8>
    80003968:	00001097          	auipc	ra,0x1
    8000396c:	8e4080e7          	jalr	-1820(ra) # 8000424c <panic>

0000000080003970 <trapinit>:
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00813423          	sd	s0,8(sp)
    80003978:	01010413          	addi	s0,sp,16
    8000397c:	00813403          	ld	s0,8(sp)
    80003980:	00003597          	auipc	a1,0x3
    80003984:	a0858593          	addi	a1,a1,-1528 # 80006388 <_ZZ14__print_uint64mE6digits+0x1f0>
    80003988:	00005517          	auipc	a0,0x5
    8000398c:	bb850513          	addi	a0,a0,-1096 # 80008540 <tickslock>
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00001317          	auipc	t1,0x1
    80003998:	5c430067          	jr	1476(t1) # 80004f58 <initlock>

000000008000399c <trapinithart>:
    8000399c:	ff010113          	addi	sp,sp,-16
    800039a0:	00813423          	sd	s0,8(sp)
    800039a4:	01010413          	addi	s0,sp,16
    800039a8:	00000797          	auipc	a5,0x0
    800039ac:	2f878793          	addi	a5,a5,760 # 80003ca0 <kernelvec>
    800039b0:	10579073          	csrw	stvec,a5
    800039b4:	00813403          	ld	s0,8(sp)
    800039b8:	01010113          	addi	sp,sp,16
    800039bc:	00008067          	ret

00000000800039c0 <usertrap>:
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00813423          	sd	s0,8(sp)
    800039c8:	01010413          	addi	s0,sp,16
    800039cc:	00813403          	ld	s0,8(sp)
    800039d0:	01010113          	addi	sp,sp,16
    800039d4:	00008067          	ret

00000000800039d8 <usertrapret>:
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00813423          	sd	s0,8(sp)
    800039e0:	01010413          	addi	s0,sp,16
    800039e4:	00813403          	ld	s0,8(sp)
    800039e8:	01010113          	addi	sp,sp,16
    800039ec:	00008067          	ret

00000000800039f0 <kerneltrap>:
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00813823          	sd	s0,16(sp)
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	02010413          	addi	s0,sp,32
    80003a04:	142025f3          	csrr	a1,scause
    80003a08:	100027f3          	csrr	a5,sstatus
    80003a0c:	0027f793          	andi	a5,a5,2
    80003a10:	10079c63          	bnez	a5,80003b28 <kerneltrap+0x138>
    80003a14:	142027f3          	csrr	a5,scause
    80003a18:	0207ce63          	bltz	a5,80003a54 <kerneltrap+0x64>
    80003a1c:	00003517          	auipc	a0,0x3
    80003a20:	9b450513          	addi	a0,a0,-1612 # 800063d0 <_ZZ14__print_uint64mE6digits+0x238>
    80003a24:	00001097          	auipc	ra,0x1
    80003a28:	884080e7          	jalr	-1916(ra) # 800042a8 <__printf>
    80003a2c:	141025f3          	csrr	a1,sepc
    80003a30:	14302673          	csrr	a2,stval
    80003a34:	00003517          	auipc	a0,0x3
    80003a38:	9ac50513          	addi	a0,a0,-1620 # 800063e0 <_ZZ14__print_uint64mE6digits+0x248>
    80003a3c:	00001097          	auipc	ra,0x1
    80003a40:	86c080e7          	jalr	-1940(ra) # 800042a8 <__printf>
    80003a44:	00003517          	auipc	a0,0x3
    80003a48:	9b450513          	addi	a0,a0,-1612 # 800063f8 <_ZZ14__print_uint64mE6digits+0x260>
    80003a4c:	00001097          	auipc	ra,0x1
    80003a50:	800080e7          	jalr	-2048(ra) # 8000424c <panic>
    80003a54:	0ff7f713          	andi	a4,a5,255
    80003a58:	00900693          	li	a3,9
    80003a5c:	04d70063          	beq	a4,a3,80003a9c <kerneltrap+0xac>
    80003a60:	fff00713          	li	a4,-1
    80003a64:	03f71713          	slli	a4,a4,0x3f
    80003a68:	00170713          	addi	a4,a4,1
    80003a6c:	fae798e3          	bne	a5,a4,80003a1c <kerneltrap+0x2c>
    80003a70:	00000097          	auipc	ra,0x0
    80003a74:	e00080e7          	jalr	-512(ra) # 80003870 <cpuid>
    80003a78:	06050663          	beqz	a0,80003ae4 <kerneltrap+0xf4>
    80003a7c:	144027f3          	csrr	a5,sip
    80003a80:	ffd7f793          	andi	a5,a5,-3
    80003a84:	14479073          	csrw	sip,a5
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	00813483          	ld	s1,8(sp)
    80003a94:	02010113          	addi	sp,sp,32
    80003a98:	00008067          	ret
    80003a9c:	00000097          	auipc	ra,0x0
    80003aa0:	3c8080e7          	jalr	968(ra) # 80003e64 <plic_claim>
    80003aa4:	00a00793          	li	a5,10
    80003aa8:	00050493          	mv	s1,a0
    80003aac:	06f50863          	beq	a0,a5,80003b1c <kerneltrap+0x12c>
    80003ab0:	fc050ce3          	beqz	a0,80003a88 <kerneltrap+0x98>
    80003ab4:	00050593          	mv	a1,a0
    80003ab8:	00003517          	auipc	a0,0x3
    80003abc:	8f850513          	addi	a0,a0,-1800 # 800063b0 <_ZZ14__print_uint64mE6digits+0x218>
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	7e8080e7          	jalr	2024(ra) # 800042a8 <__printf>
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	01813083          	ld	ra,24(sp)
    80003ad0:	00048513          	mv	a0,s1
    80003ad4:	00813483          	ld	s1,8(sp)
    80003ad8:	02010113          	addi	sp,sp,32
    80003adc:	00000317          	auipc	t1,0x0
    80003ae0:	3c030067          	jr	960(t1) # 80003e9c <plic_complete>
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	a5c50513          	addi	a0,a0,-1444 # 80008540 <tickslock>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	490080e7          	jalr	1168(ra) # 80004f7c <acquire>
    80003af4:	00004717          	auipc	a4,0x4
    80003af8:	92070713          	addi	a4,a4,-1760 # 80007414 <ticks>
    80003afc:	00072783          	lw	a5,0(a4)
    80003b00:	00005517          	auipc	a0,0x5
    80003b04:	a4050513          	addi	a0,a0,-1472 # 80008540 <tickslock>
    80003b08:	0017879b          	addiw	a5,a5,1
    80003b0c:	00f72023          	sw	a5,0(a4)
    80003b10:	00001097          	auipc	ra,0x1
    80003b14:	538080e7          	jalr	1336(ra) # 80005048 <release>
    80003b18:	f65ff06f          	j	80003a7c <kerneltrap+0x8c>
    80003b1c:	00001097          	auipc	ra,0x1
    80003b20:	094080e7          	jalr	148(ra) # 80004bb0 <uartintr>
    80003b24:	fa5ff06f          	j	80003ac8 <kerneltrap+0xd8>
    80003b28:	00003517          	auipc	a0,0x3
    80003b2c:	86850513          	addi	a0,a0,-1944 # 80006390 <_ZZ14__print_uint64mE6digits+0x1f8>
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	71c080e7          	jalr	1820(ra) # 8000424c <panic>

0000000080003b38 <clockintr>:
    80003b38:	fe010113          	addi	sp,sp,-32
    80003b3c:	00813823          	sd	s0,16(sp)
    80003b40:	00913423          	sd	s1,8(sp)
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	02010413          	addi	s0,sp,32
    80003b4c:	00005497          	auipc	s1,0x5
    80003b50:	9f448493          	addi	s1,s1,-1548 # 80008540 <tickslock>
    80003b54:	00048513          	mv	a0,s1
    80003b58:	00001097          	auipc	ra,0x1
    80003b5c:	424080e7          	jalr	1060(ra) # 80004f7c <acquire>
    80003b60:	00004717          	auipc	a4,0x4
    80003b64:	8b470713          	addi	a4,a4,-1868 # 80007414 <ticks>
    80003b68:	00072783          	lw	a5,0(a4)
    80003b6c:	01013403          	ld	s0,16(sp)
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	00048513          	mv	a0,s1
    80003b78:	0017879b          	addiw	a5,a5,1
    80003b7c:	00813483          	ld	s1,8(sp)
    80003b80:	00f72023          	sw	a5,0(a4)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00001317          	auipc	t1,0x1
    80003b8c:	4c030067          	jr	1216(t1) # 80005048 <release>

0000000080003b90 <devintr>:
    80003b90:	142027f3          	csrr	a5,scause
    80003b94:	00000513          	li	a0,0
    80003b98:	0007c463          	bltz	a5,80003ba0 <devintr+0x10>
    80003b9c:	00008067          	ret
    80003ba0:	fe010113          	addi	sp,sp,-32
    80003ba4:	00813823          	sd	s0,16(sp)
    80003ba8:	00113c23          	sd	ra,24(sp)
    80003bac:	00913423          	sd	s1,8(sp)
    80003bb0:	02010413          	addi	s0,sp,32
    80003bb4:	0ff7f713          	andi	a4,a5,255
    80003bb8:	00900693          	li	a3,9
    80003bbc:	04d70c63          	beq	a4,a3,80003c14 <devintr+0x84>
    80003bc0:	fff00713          	li	a4,-1
    80003bc4:	03f71713          	slli	a4,a4,0x3f
    80003bc8:	00170713          	addi	a4,a4,1
    80003bcc:	00e78c63          	beq	a5,a4,80003be4 <devintr+0x54>
    80003bd0:	01813083          	ld	ra,24(sp)
    80003bd4:	01013403          	ld	s0,16(sp)
    80003bd8:	00813483          	ld	s1,8(sp)
    80003bdc:	02010113          	addi	sp,sp,32
    80003be0:	00008067          	ret
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	c8c080e7          	jalr	-884(ra) # 80003870 <cpuid>
    80003bec:	06050663          	beqz	a0,80003c58 <devintr+0xc8>
    80003bf0:	144027f3          	csrr	a5,sip
    80003bf4:	ffd7f793          	andi	a5,a5,-3
    80003bf8:	14479073          	csrw	sip,a5
    80003bfc:	01813083          	ld	ra,24(sp)
    80003c00:	01013403          	ld	s0,16(sp)
    80003c04:	00813483          	ld	s1,8(sp)
    80003c08:	00200513          	li	a0,2
    80003c0c:	02010113          	addi	sp,sp,32
    80003c10:	00008067          	ret
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	250080e7          	jalr	592(ra) # 80003e64 <plic_claim>
    80003c1c:	00a00793          	li	a5,10
    80003c20:	00050493          	mv	s1,a0
    80003c24:	06f50663          	beq	a0,a5,80003c90 <devintr+0x100>
    80003c28:	00100513          	li	a0,1
    80003c2c:	fa0482e3          	beqz	s1,80003bd0 <devintr+0x40>
    80003c30:	00048593          	mv	a1,s1
    80003c34:	00002517          	auipc	a0,0x2
    80003c38:	77c50513          	addi	a0,a0,1916 # 800063b0 <_ZZ14__print_uint64mE6digits+0x218>
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	66c080e7          	jalr	1644(ra) # 800042a8 <__printf>
    80003c44:	00048513          	mv	a0,s1
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	254080e7          	jalr	596(ra) # 80003e9c <plic_complete>
    80003c50:	00100513          	li	a0,1
    80003c54:	f7dff06f          	j	80003bd0 <devintr+0x40>
    80003c58:	00005517          	auipc	a0,0x5
    80003c5c:	8e850513          	addi	a0,a0,-1816 # 80008540 <tickslock>
    80003c60:	00001097          	auipc	ra,0x1
    80003c64:	31c080e7          	jalr	796(ra) # 80004f7c <acquire>
    80003c68:	00003717          	auipc	a4,0x3
    80003c6c:	7ac70713          	addi	a4,a4,1964 # 80007414 <ticks>
    80003c70:	00072783          	lw	a5,0(a4)
    80003c74:	00005517          	auipc	a0,0x5
    80003c78:	8cc50513          	addi	a0,a0,-1844 # 80008540 <tickslock>
    80003c7c:	0017879b          	addiw	a5,a5,1
    80003c80:	00f72023          	sw	a5,0(a4)
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	3c4080e7          	jalr	964(ra) # 80005048 <release>
    80003c8c:	f65ff06f          	j	80003bf0 <devintr+0x60>
    80003c90:	00001097          	auipc	ra,0x1
    80003c94:	f20080e7          	jalr	-224(ra) # 80004bb0 <uartintr>
    80003c98:	fadff06f          	j	80003c44 <devintr+0xb4>
    80003c9c:	0000                	unimp
	...

0000000080003ca0 <kernelvec>:
    80003ca0:	f0010113          	addi	sp,sp,-256
    80003ca4:	00113023          	sd	ra,0(sp)
    80003ca8:	00213423          	sd	sp,8(sp)
    80003cac:	00313823          	sd	gp,16(sp)
    80003cb0:	00413c23          	sd	tp,24(sp)
    80003cb4:	02513023          	sd	t0,32(sp)
    80003cb8:	02613423          	sd	t1,40(sp)
    80003cbc:	02713823          	sd	t2,48(sp)
    80003cc0:	02813c23          	sd	s0,56(sp)
    80003cc4:	04913023          	sd	s1,64(sp)
    80003cc8:	04a13423          	sd	a0,72(sp)
    80003ccc:	04b13823          	sd	a1,80(sp)
    80003cd0:	04c13c23          	sd	a2,88(sp)
    80003cd4:	06d13023          	sd	a3,96(sp)
    80003cd8:	06e13423          	sd	a4,104(sp)
    80003cdc:	06f13823          	sd	a5,112(sp)
    80003ce0:	07013c23          	sd	a6,120(sp)
    80003ce4:	09113023          	sd	a7,128(sp)
    80003ce8:	09213423          	sd	s2,136(sp)
    80003cec:	09313823          	sd	s3,144(sp)
    80003cf0:	09413c23          	sd	s4,152(sp)
    80003cf4:	0b513023          	sd	s5,160(sp)
    80003cf8:	0b613423          	sd	s6,168(sp)
    80003cfc:	0b713823          	sd	s7,176(sp)
    80003d00:	0b813c23          	sd	s8,184(sp)
    80003d04:	0d913023          	sd	s9,192(sp)
    80003d08:	0da13423          	sd	s10,200(sp)
    80003d0c:	0db13823          	sd	s11,208(sp)
    80003d10:	0dc13c23          	sd	t3,216(sp)
    80003d14:	0fd13023          	sd	t4,224(sp)
    80003d18:	0fe13423          	sd	t5,232(sp)
    80003d1c:	0ff13823          	sd	t6,240(sp)
    80003d20:	cd1ff0ef          	jal	ra,800039f0 <kerneltrap>
    80003d24:	00013083          	ld	ra,0(sp)
    80003d28:	00813103          	ld	sp,8(sp)
    80003d2c:	01013183          	ld	gp,16(sp)
    80003d30:	02013283          	ld	t0,32(sp)
    80003d34:	02813303          	ld	t1,40(sp)
    80003d38:	03013383          	ld	t2,48(sp)
    80003d3c:	03813403          	ld	s0,56(sp)
    80003d40:	04013483          	ld	s1,64(sp)
    80003d44:	04813503          	ld	a0,72(sp)
    80003d48:	05013583          	ld	a1,80(sp)
    80003d4c:	05813603          	ld	a2,88(sp)
    80003d50:	06013683          	ld	a3,96(sp)
    80003d54:	06813703          	ld	a4,104(sp)
    80003d58:	07013783          	ld	a5,112(sp)
    80003d5c:	07813803          	ld	a6,120(sp)
    80003d60:	08013883          	ld	a7,128(sp)
    80003d64:	08813903          	ld	s2,136(sp)
    80003d68:	09013983          	ld	s3,144(sp)
    80003d6c:	09813a03          	ld	s4,152(sp)
    80003d70:	0a013a83          	ld	s5,160(sp)
    80003d74:	0a813b03          	ld	s6,168(sp)
    80003d78:	0b013b83          	ld	s7,176(sp)
    80003d7c:	0b813c03          	ld	s8,184(sp)
    80003d80:	0c013c83          	ld	s9,192(sp)
    80003d84:	0c813d03          	ld	s10,200(sp)
    80003d88:	0d013d83          	ld	s11,208(sp)
    80003d8c:	0d813e03          	ld	t3,216(sp)
    80003d90:	0e013e83          	ld	t4,224(sp)
    80003d94:	0e813f03          	ld	t5,232(sp)
    80003d98:	0f013f83          	ld	t6,240(sp)
    80003d9c:	10010113          	addi	sp,sp,256
    80003da0:	10200073          	sret
    80003da4:	00000013          	nop
    80003da8:	00000013          	nop
    80003dac:	00000013          	nop

0000000080003db0 <timervec>:
    80003db0:	34051573          	csrrw	a0,mscratch,a0
    80003db4:	00b53023          	sd	a1,0(a0)
    80003db8:	00c53423          	sd	a2,8(a0)
    80003dbc:	00d53823          	sd	a3,16(a0)
    80003dc0:	01853583          	ld	a1,24(a0)
    80003dc4:	02053603          	ld	a2,32(a0)
    80003dc8:	0005b683          	ld	a3,0(a1)
    80003dcc:	00c686b3          	add	a3,a3,a2
    80003dd0:	00d5b023          	sd	a3,0(a1)
    80003dd4:	00200593          	li	a1,2
    80003dd8:	14459073          	csrw	sip,a1
    80003ddc:	01053683          	ld	a3,16(a0)
    80003de0:	00853603          	ld	a2,8(a0)
    80003de4:	00053583          	ld	a1,0(a0)
    80003de8:	34051573          	csrrw	a0,mscratch,a0
    80003dec:	30200073          	mret

0000000080003df0 <plicinit>:
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00813423          	sd	s0,8(sp)
    80003df8:	01010413          	addi	s0,sp,16
    80003dfc:	00813403          	ld	s0,8(sp)
    80003e00:	0c0007b7          	lui	a5,0xc000
    80003e04:	00100713          	li	a4,1
    80003e08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003e0c:	00e7a223          	sw	a4,4(a5)
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <plicinithart>:
    80003e18:	ff010113          	addi	sp,sp,-16
    80003e1c:	00813023          	sd	s0,0(sp)
    80003e20:	00113423          	sd	ra,8(sp)
    80003e24:	01010413          	addi	s0,sp,16
    80003e28:	00000097          	auipc	ra,0x0
    80003e2c:	a48080e7          	jalr	-1464(ra) # 80003870 <cpuid>
    80003e30:	0085171b          	slliw	a4,a0,0x8
    80003e34:	0c0027b7          	lui	a5,0xc002
    80003e38:	00e787b3          	add	a5,a5,a4
    80003e3c:	40200713          	li	a4,1026
    80003e40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003e44:	00813083          	ld	ra,8(sp)
    80003e48:	00013403          	ld	s0,0(sp)
    80003e4c:	00d5151b          	slliw	a0,a0,0xd
    80003e50:	0c2017b7          	lui	a5,0xc201
    80003e54:	00a78533          	add	a0,a5,a0
    80003e58:	00052023          	sw	zero,0(a0)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret

0000000080003e64 <plic_claim>:
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00813023          	sd	s0,0(sp)
    80003e6c:	00113423          	sd	ra,8(sp)
    80003e70:	01010413          	addi	s0,sp,16
    80003e74:	00000097          	auipc	ra,0x0
    80003e78:	9fc080e7          	jalr	-1540(ra) # 80003870 <cpuid>
    80003e7c:	00813083          	ld	ra,8(sp)
    80003e80:	00013403          	ld	s0,0(sp)
    80003e84:	00d5151b          	slliw	a0,a0,0xd
    80003e88:	0c2017b7          	lui	a5,0xc201
    80003e8c:	00a78533          	add	a0,a5,a0
    80003e90:	00452503          	lw	a0,4(a0)
    80003e94:	01010113          	addi	sp,sp,16
    80003e98:	00008067          	ret

0000000080003e9c <plic_complete>:
    80003e9c:	fe010113          	addi	sp,sp,-32
    80003ea0:	00813823          	sd	s0,16(sp)
    80003ea4:	00913423          	sd	s1,8(sp)
    80003ea8:	00113c23          	sd	ra,24(sp)
    80003eac:	02010413          	addi	s0,sp,32
    80003eb0:	00050493          	mv	s1,a0
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	9bc080e7          	jalr	-1604(ra) # 80003870 <cpuid>
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00d5179b          	slliw	a5,a0,0xd
    80003ec8:	0c201737          	lui	a4,0xc201
    80003ecc:	00f707b3          	add	a5,a4,a5
    80003ed0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret

0000000080003ee0 <consolewrite>:
    80003ee0:	fb010113          	addi	sp,sp,-80
    80003ee4:	04813023          	sd	s0,64(sp)
    80003ee8:	04113423          	sd	ra,72(sp)
    80003eec:	02913c23          	sd	s1,56(sp)
    80003ef0:	03213823          	sd	s2,48(sp)
    80003ef4:	03313423          	sd	s3,40(sp)
    80003ef8:	03413023          	sd	s4,32(sp)
    80003efc:	01513c23          	sd	s5,24(sp)
    80003f00:	05010413          	addi	s0,sp,80
    80003f04:	06c05c63          	blez	a2,80003f7c <consolewrite+0x9c>
    80003f08:	00060993          	mv	s3,a2
    80003f0c:	00050a13          	mv	s4,a0
    80003f10:	00058493          	mv	s1,a1
    80003f14:	00000913          	li	s2,0
    80003f18:	fff00a93          	li	s5,-1
    80003f1c:	01c0006f          	j	80003f38 <consolewrite+0x58>
    80003f20:	fbf44503          	lbu	a0,-65(s0)
    80003f24:	0019091b          	addiw	s2,s2,1
    80003f28:	00148493          	addi	s1,s1,1
    80003f2c:	00001097          	auipc	ra,0x1
    80003f30:	a9c080e7          	jalr	-1380(ra) # 800049c8 <uartputc>
    80003f34:	03298063          	beq	s3,s2,80003f54 <consolewrite+0x74>
    80003f38:	00048613          	mv	a2,s1
    80003f3c:	00100693          	li	a3,1
    80003f40:	000a0593          	mv	a1,s4
    80003f44:	fbf40513          	addi	a0,s0,-65
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	9e0080e7          	jalr	-1568(ra) # 80003928 <either_copyin>
    80003f50:	fd5518e3          	bne	a0,s5,80003f20 <consolewrite+0x40>
    80003f54:	04813083          	ld	ra,72(sp)
    80003f58:	04013403          	ld	s0,64(sp)
    80003f5c:	03813483          	ld	s1,56(sp)
    80003f60:	02813983          	ld	s3,40(sp)
    80003f64:	02013a03          	ld	s4,32(sp)
    80003f68:	01813a83          	ld	s5,24(sp)
    80003f6c:	00090513          	mv	a0,s2
    80003f70:	03013903          	ld	s2,48(sp)
    80003f74:	05010113          	addi	sp,sp,80
    80003f78:	00008067          	ret
    80003f7c:	00000913          	li	s2,0
    80003f80:	fd5ff06f          	j	80003f54 <consolewrite+0x74>

0000000080003f84 <consoleread>:
    80003f84:	f9010113          	addi	sp,sp,-112
    80003f88:	06813023          	sd	s0,96(sp)
    80003f8c:	04913c23          	sd	s1,88(sp)
    80003f90:	05213823          	sd	s2,80(sp)
    80003f94:	05313423          	sd	s3,72(sp)
    80003f98:	05413023          	sd	s4,64(sp)
    80003f9c:	03513c23          	sd	s5,56(sp)
    80003fa0:	03613823          	sd	s6,48(sp)
    80003fa4:	03713423          	sd	s7,40(sp)
    80003fa8:	03813023          	sd	s8,32(sp)
    80003fac:	06113423          	sd	ra,104(sp)
    80003fb0:	01913c23          	sd	s9,24(sp)
    80003fb4:	07010413          	addi	s0,sp,112
    80003fb8:	00060b93          	mv	s7,a2
    80003fbc:	00050913          	mv	s2,a0
    80003fc0:	00058c13          	mv	s8,a1
    80003fc4:	00060b1b          	sext.w	s6,a2
    80003fc8:	00004497          	auipc	s1,0x4
    80003fcc:	5a048493          	addi	s1,s1,1440 # 80008568 <cons>
    80003fd0:	00400993          	li	s3,4
    80003fd4:	fff00a13          	li	s4,-1
    80003fd8:	00a00a93          	li	s5,10
    80003fdc:	05705e63          	blez	s7,80004038 <consoleread+0xb4>
    80003fe0:	09c4a703          	lw	a4,156(s1)
    80003fe4:	0984a783          	lw	a5,152(s1)
    80003fe8:	0007071b          	sext.w	a4,a4
    80003fec:	08e78463          	beq	a5,a4,80004074 <consoleread+0xf0>
    80003ff0:	07f7f713          	andi	a4,a5,127
    80003ff4:	00e48733          	add	a4,s1,a4
    80003ff8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003ffc:	0017869b          	addiw	a3,a5,1
    80004000:	08d4ac23          	sw	a3,152(s1)
    80004004:	00070c9b          	sext.w	s9,a4
    80004008:	0b370663          	beq	a4,s3,800040b4 <consoleread+0x130>
    8000400c:	00100693          	li	a3,1
    80004010:	f9f40613          	addi	a2,s0,-97
    80004014:	000c0593          	mv	a1,s8
    80004018:	00090513          	mv	a0,s2
    8000401c:	f8e40fa3          	sb	a4,-97(s0)
    80004020:	00000097          	auipc	ra,0x0
    80004024:	8bc080e7          	jalr	-1860(ra) # 800038dc <either_copyout>
    80004028:	01450863          	beq	a0,s4,80004038 <consoleread+0xb4>
    8000402c:	001c0c13          	addi	s8,s8,1
    80004030:	fffb8b9b          	addiw	s7,s7,-1
    80004034:	fb5c94e3          	bne	s9,s5,80003fdc <consoleread+0x58>
    80004038:	000b851b          	sext.w	a0,s7
    8000403c:	06813083          	ld	ra,104(sp)
    80004040:	06013403          	ld	s0,96(sp)
    80004044:	05813483          	ld	s1,88(sp)
    80004048:	05013903          	ld	s2,80(sp)
    8000404c:	04813983          	ld	s3,72(sp)
    80004050:	04013a03          	ld	s4,64(sp)
    80004054:	03813a83          	ld	s5,56(sp)
    80004058:	02813b83          	ld	s7,40(sp)
    8000405c:	02013c03          	ld	s8,32(sp)
    80004060:	01813c83          	ld	s9,24(sp)
    80004064:	40ab053b          	subw	a0,s6,a0
    80004068:	03013b03          	ld	s6,48(sp)
    8000406c:	07010113          	addi	sp,sp,112
    80004070:	00008067          	ret
    80004074:	00001097          	auipc	ra,0x1
    80004078:	1d8080e7          	jalr	472(ra) # 8000524c <push_on>
    8000407c:	0984a703          	lw	a4,152(s1)
    80004080:	09c4a783          	lw	a5,156(s1)
    80004084:	0007879b          	sext.w	a5,a5
    80004088:	fef70ce3          	beq	a4,a5,80004080 <consoleread+0xfc>
    8000408c:	00001097          	auipc	ra,0x1
    80004090:	234080e7          	jalr	564(ra) # 800052c0 <pop_on>
    80004094:	0984a783          	lw	a5,152(s1)
    80004098:	07f7f713          	andi	a4,a5,127
    8000409c:	00e48733          	add	a4,s1,a4
    800040a0:	01874703          	lbu	a4,24(a4)
    800040a4:	0017869b          	addiw	a3,a5,1
    800040a8:	08d4ac23          	sw	a3,152(s1)
    800040ac:	00070c9b          	sext.w	s9,a4
    800040b0:	f5371ee3          	bne	a4,s3,8000400c <consoleread+0x88>
    800040b4:	000b851b          	sext.w	a0,s7
    800040b8:	f96bf2e3          	bgeu	s7,s6,8000403c <consoleread+0xb8>
    800040bc:	08f4ac23          	sw	a5,152(s1)
    800040c0:	f7dff06f          	j	8000403c <consoleread+0xb8>

00000000800040c4 <consputc>:
    800040c4:	10000793          	li	a5,256
    800040c8:	00f50663          	beq	a0,a5,800040d4 <consputc+0x10>
    800040cc:	00001317          	auipc	t1,0x1
    800040d0:	9f430067          	jr	-1548(t1) # 80004ac0 <uartputc_sync>
    800040d4:	ff010113          	addi	sp,sp,-16
    800040d8:	00113423          	sd	ra,8(sp)
    800040dc:	00813023          	sd	s0,0(sp)
    800040e0:	01010413          	addi	s0,sp,16
    800040e4:	00800513          	li	a0,8
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	9d8080e7          	jalr	-1576(ra) # 80004ac0 <uartputc_sync>
    800040f0:	02000513          	li	a0,32
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	9cc080e7          	jalr	-1588(ra) # 80004ac0 <uartputc_sync>
    800040fc:	00013403          	ld	s0,0(sp)
    80004100:	00813083          	ld	ra,8(sp)
    80004104:	00800513          	li	a0,8
    80004108:	01010113          	addi	sp,sp,16
    8000410c:	00001317          	auipc	t1,0x1
    80004110:	9b430067          	jr	-1612(t1) # 80004ac0 <uartputc_sync>

0000000080004114 <consoleintr>:
    80004114:	fe010113          	addi	sp,sp,-32
    80004118:	00813823          	sd	s0,16(sp)
    8000411c:	00913423          	sd	s1,8(sp)
    80004120:	01213023          	sd	s2,0(sp)
    80004124:	00113c23          	sd	ra,24(sp)
    80004128:	02010413          	addi	s0,sp,32
    8000412c:	00004917          	auipc	s2,0x4
    80004130:	43c90913          	addi	s2,s2,1084 # 80008568 <cons>
    80004134:	00050493          	mv	s1,a0
    80004138:	00090513          	mv	a0,s2
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	e40080e7          	jalr	-448(ra) # 80004f7c <acquire>
    80004144:	02048c63          	beqz	s1,8000417c <consoleintr+0x68>
    80004148:	0a092783          	lw	a5,160(s2)
    8000414c:	09892703          	lw	a4,152(s2)
    80004150:	07f00693          	li	a3,127
    80004154:	40e7873b          	subw	a4,a5,a4
    80004158:	02e6e263          	bltu	a3,a4,8000417c <consoleintr+0x68>
    8000415c:	00d00713          	li	a4,13
    80004160:	04e48063          	beq	s1,a4,800041a0 <consoleintr+0x8c>
    80004164:	07f7f713          	andi	a4,a5,127
    80004168:	00e90733          	add	a4,s2,a4
    8000416c:	0017879b          	addiw	a5,a5,1
    80004170:	0af92023          	sw	a5,160(s2)
    80004174:	00970c23          	sb	s1,24(a4)
    80004178:	08f92e23          	sw	a5,156(s2)
    8000417c:	01013403          	ld	s0,16(sp)
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	00813483          	ld	s1,8(sp)
    80004188:	00013903          	ld	s2,0(sp)
    8000418c:	00004517          	auipc	a0,0x4
    80004190:	3dc50513          	addi	a0,a0,988 # 80008568 <cons>
    80004194:	02010113          	addi	sp,sp,32
    80004198:	00001317          	auipc	t1,0x1
    8000419c:	eb030067          	jr	-336(t1) # 80005048 <release>
    800041a0:	00a00493          	li	s1,10
    800041a4:	fc1ff06f          	j	80004164 <consoleintr+0x50>

00000000800041a8 <consoleinit>:
    800041a8:	fe010113          	addi	sp,sp,-32
    800041ac:	00113c23          	sd	ra,24(sp)
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	02010413          	addi	s0,sp,32
    800041bc:	00004497          	auipc	s1,0x4
    800041c0:	3ac48493          	addi	s1,s1,940 # 80008568 <cons>
    800041c4:	00048513          	mv	a0,s1
    800041c8:	00002597          	auipc	a1,0x2
    800041cc:	24058593          	addi	a1,a1,576 # 80006408 <_ZZ14__print_uint64mE6digits+0x270>
    800041d0:	00001097          	auipc	ra,0x1
    800041d4:	d88080e7          	jalr	-632(ra) # 80004f58 <initlock>
    800041d8:	00000097          	auipc	ra,0x0
    800041dc:	7ac080e7          	jalr	1964(ra) # 80004984 <uartinit>
    800041e0:	01813083          	ld	ra,24(sp)
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	00000797          	auipc	a5,0x0
    800041ec:	d9c78793          	addi	a5,a5,-612 # 80003f84 <consoleread>
    800041f0:	0af4bc23          	sd	a5,184(s1)
    800041f4:	00000797          	auipc	a5,0x0
    800041f8:	cec78793          	addi	a5,a5,-788 # 80003ee0 <consolewrite>
    800041fc:	0cf4b023          	sd	a5,192(s1)
    80004200:	00813483          	ld	s1,8(sp)
    80004204:	02010113          	addi	sp,sp,32
    80004208:	00008067          	ret

000000008000420c <console_read>:
    8000420c:	ff010113          	addi	sp,sp,-16
    80004210:	00813423          	sd	s0,8(sp)
    80004214:	01010413          	addi	s0,sp,16
    80004218:	00813403          	ld	s0,8(sp)
    8000421c:	00004317          	auipc	t1,0x4
    80004220:	40433303          	ld	t1,1028(t1) # 80008620 <devsw+0x10>
    80004224:	01010113          	addi	sp,sp,16
    80004228:	00030067          	jr	t1

000000008000422c <console_write>:
    8000422c:	ff010113          	addi	sp,sp,-16
    80004230:	00813423          	sd	s0,8(sp)
    80004234:	01010413          	addi	s0,sp,16
    80004238:	00813403          	ld	s0,8(sp)
    8000423c:	00004317          	auipc	t1,0x4
    80004240:	3ec33303          	ld	t1,1004(t1) # 80008628 <devsw+0x18>
    80004244:	01010113          	addi	sp,sp,16
    80004248:	00030067          	jr	t1

000000008000424c <panic>:
    8000424c:	fe010113          	addi	sp,sp,-32
    80004250:	00113c23          	sd	ra,24(sp)
    80004254:	00813823          	sd	s0,16(sp)
    80004258:	00913423          	sd	s1,8(sp)
    8000425c:	02010413          	addi	s0,sp,32
    80004260:	00050493          	mv	s1,a0
    80004264:	00002517          	auipc	a0,0x2
    80004268:	1ac50513          	addi	a0,a0,428 # 80006410 <_ZZ14__print_uint64mE6digits+0x278>
    8000426c:	00004797          	auipc	a5,0x4
    80004270:	4407ae23          	sw	zero,1116(a5) # 800086c8 <pr+0x18>
    80004274:	00000097          	auipc	ra,0x0
    80004278:	034080e7          	jalr	52(ra) # 800042a8 <__printf>
    8000427c:	00048513          	mv	a0,s1
    80004280:	00000097          	auipc	ra,0x0
    80004284:	028080e7          	jalr	40(ra) # 800042a8 <__printf>
    80004288:	00002517          	auipc	a0,0x2
    8000428c:	05050513          	addi	a0,a0,80 # 800062d8 <_ZZ14__print_uint64mE6digits+0x140>
    80004290:	00000097          	auipc	ra,0x0
    80004294:	018080e7          	jalr	24(ra) # 800042a8 <__printf>
    80004298:	00100793          	li	a5,1
    8000429c:	00003717          	auipc	a4,0x3
    800042a0:	16f72e23          	sw	a5,380(a4) # 80007418 <panicked>
    800042a4:	0000006f          	j	800042a4 <panic+0x58>

00000000800042a8 <__printf>:
    800042a8:	f3010113          	addi	sp,sp,-208
    800042ac:	08813023          	sd	s0,128(sp)
    800042b0:	07313423          	sd	s3,104(sp)
    800042b4:	09010413          	addi	s0,sp,144
    800042b8:	05813023          	sd	s8,64(sp)
    800042bc:	08113423          	sd	ra,136(sp)
    800042c0:	06913c23          	sd	s1,120(sp)
    800042c4:	07213823          	sd	s2,112(sp)
    800042c8:	07413023          	sd	s4,96(sp)
    800042cc:	05513c23          	sd	s5,88(sp)
    800042d0:	05613823          	sd	s6,80(sp)
    800042d4:	05713423          	sd	s7,72(sp)
    800042d8:	03913c23          	sd	s9,56(sp)
    800042dc:	03a13823          	sd	s10,48(sp)
    800042e0:	03b13423          	sd	s11,40(sp)
    800042e4:	00004317          	auipc	t1,0x4
    800042e8:	3cc30313          	addi	t1,t1,972 # 800086b0 <pr>
    800042ec:	01832c03          	lw	s8,24(t1)
    800042f0:	00b43423          	sd	a1,8(s0)
    800042f4:	00c43823          	sd	a2,16(s0)
    800042f8:	00d43c23          	sd	a3,24(s0)
    800042fc:	02e43023          	sd	a4,32(s0)
    80004300:	02f43423          	sd	a5,40(s0)
    80004304:	03043823          	sd	a6,48(s0)
    80004308:	03143c23          	sd	a7,56(s0)
    8000430c:	00050993          	mv	s3,a0
    80004310:	4a0c1663          	bnez	s8,800047bc <__printf+0x514>
    80004314:	60098c63          	beqz	s3,8000492c <__printf+0x684>
    80004318:	0009c503          	lbu	a0,0(s3)
    8000431c:	00840793          	addi	a5,s0,8
    80004320:	f6f43c23          	sd	a5,-136(s0)
    80004324:	00000493          	li	s1,0
    80004328:	22050063          	beqz	a0,80004548 <__printf+0x2a0>
    8000432c:	00002a37          	lui	s4,0x2
    80004330:	00018ab7          	lui	s5,0x18
    80004334:	000f4b37          	lui	s6,0xf4
    80004338:	00989bb7          	lui	s7,0x989
    8000433c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004340:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004344:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004348:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000434c:	00148c9b          	addiw	s9,s1,1
    80004350:	02500793          	li	a5,37
    80004354:	01998933          	add	s2,s3,s9
    80004358:	38f51263          	bne	a0,a5,800046dc <__printf+0x434>
    8000435c:	00094783          	lbu	a5,0(s2)
    80004360:	00078c9b          	sext.w	s9,a5
    80004364:	1e078263          	beqz	a5,80004548 <__printf+0x2a0>
    80004368:	0024849b          	addiw	s1,s1,2
    8000436c:	07000713          	li	a4,112
    80004370:	00998933          	add	s2,s3,s1
    80004374:	38e78a63          	beq	a5,a4,80004708 <__printf+0x460>
    80004378:	20f76863          	bltu	a4,a5,80004588 <__printf+0x2e0>
    8000437c:	42a78863          	beq	a5,a0,800047ac <__printf+0x504>
    80004380:	06400713          	li	a4,100
    80004384:	40e79663          	bne	a5,a4,80004790 <__printf+0x4e8>
    80004388:	f7843783          	ld	a5,-136(s0)
    8000438c:	0007a603          	lw	a2,0(a5)
    80004390:	00878793          	addi	a5,a5,8
    80004394:	f6f43c23          	sd	a5,-136(s0)
    80004398:	42064a63          	bltz	a2,800047cc <__printf+0x524>
    8000439c:	00a00713          	li	a4,10
    800043a0:	02e677bb          	remuw	a5,a2,a4
    800043a4:	00002d97          	auipc	s11,0x2
    800043a8:	094d8d93          	addi	s11,s11,148 # 80006438 <digits>
    800043ac:	00900593          	li	a1,9
    800043b0:	0006051b          	sext.w	a0,a2
    800043b4:	00000c93          	li	s9,0
    800043b8:	02079793          	slli	a5,a5,0x20
    800043bc:	0207d793          	srli	a5,a5,0x20
    800043c0:	00fd87b3          	add	a5,s11,a5
    800043c4:	0007c783          	lbu	a5,0(a5)
    800043c8:	02e656bb          	divuw	a3,a2,a4
    800043cc:	f8f40023          	sb	a5,-128(s0)
    800043d0:	14c5d863          	bge	a1,a2,80004520 <__printf+0x278>
    800043d4:	06300593          	li	a1,99
    800043d8:	00100c93          	li	s9,1
    800043dc:	02e6f7bb          	remuw	a5,a3,a4
    800043e0:	02079793          	slli	a5,a5,0x20
    800043e4:	0207d793          	srli	a5,a5,0x20
    800043e8:	00fd87b3          	add	a5,s11,a5
    800043ec:	0007c783          	lbu	a5,0(a5)
    800043f0:	02e6d73b          	divuw	a4,a3,a4
    800043f4:	f8f400a3          	sb	a5,-127(s0)
    800043f8:	12a5f463          	bgeu	a1,a0,80004520 <__printf+0x278>
    800043fc:	00a00693          	li	a3,10
    80004400:	00900593          	li	a1,9
    80004404:	02d777bb          	remuw	a5,a4,a3
    80004408:	02079793          	slli	a5,a5,0x20
    8000440c:	0207d793          	srli	a5,a5,0x20
    80004410:	00fd87b3          	add	a5,s11,a5
    80004414:	0007c503          	lbu	a0,0(a5)
    80004418:	02d757bb          	divuw	a5,a4,a3
    8000441c:	f8a40123          	sb	a0,-126(s0)
    80004420:	48e5f263          	bgeu	a1,a4,800048a4 <__printf+0x5fc>
    80004424:	06300513          	li	a0,99
    80004428:	02d7f5bb          	remuw	a1,a5,a3
    8000442c:	02059593          	slli	a1,a1,0x20
    80004430:	0205d593          	srli	a1,a1,0x20
    80004434:	00bd85b3          	add	a1,s11,a1
    80004438:	0005c583          	lbu	a1,0(a1)
    8000443c:	02d7d7bb          	divuw	a5,a5,a3
    80004440:	f8b401a3          	sb	a1,-125(s0)
    80004444:	48e57263          	bgeu	a0,a4,800048c8 <__printf+0x620>
    80004448:	3e700513          	li	a0,999
    8000444c:	02d7f5bb          	remuw	a1,a5,a3
    80004450:	02059593          	slli	a1,a1,0x20
    80004454:	0205d593          	srli	a1,a1,0x20
    80004458:	00bd85b3          	add	a1,s11,a1
    8000445c:	0005c583          	lbu	a1,0(a1)
    80004460:	02d7d7bb          	divuw	a5,a5,a3
    80004464:	f8b40223          	sb	a1,-124(s0)
    80004468:	46e57663          	bgeu	a0,a4,800048d4 <__printf+0x62c>
    8000446c:	02d7f5bb          	remuw	a1,a5,a3
    80004470:	02059593          	slli	a1,a1,0x20
    80004474:	0205d593          	srli	a1,a1,0x20
    80004478:	00bd85b3          	add	a1,s11,a1
    8000447c:	0005c583          	lbu	a1,0(a1)
    80004480:	02d7d7bb          	divuw	a5,a5,a3
    80004484:	f8b402a3          	sb	a1,-123(s0)
    80004488:	46ea7863          	bgeu	s4,a4,800048f8 <__printf+0x650>
    8000448c:	02d7f5bb          	remuw	a1,a5,a3
    80004490:	02059593          	slli	a1,a1,0x20
    80004494:	0205d593          	srli	a1,a1,0x20
    80004498:	00bd85b3          	add	a1,s11,a1
    8000449c:	0005c583          	lbu	a1,0(a1)
    800044a0:	02d7d7bb          	divuw	a5,a5,a3
    800044a4:	f8b40323          	sb	a1,-122(s0)
    800044a8:	3eeaf863          	bgeu	s5,a4,80004898 <__printf+0x5f0>
    800044ac:	02d7f5bb          	remuw	a1,a5,a3
    800044b0:	02059593          	slli	a1,a1,0x20
    800044b4:	0205d593          	srli	a1,a1,0x20
    800044b8:	00bd85b3          	add	a1,s11,a1
    800044bc:	0005c583          	lbu	a1,0(a1)
    800044c0:	02d7d7bb          	divuw	a5,a5,a3
    800044c4:	f8b403a3          	sb	a1,-121(s0)
    800044c8:	42eb7e63          	bgeu	s6,a4,80004904 <__printf+0x65c>
    800044cc:	02d7f5bb          	remuw	a1,a5,a3
    800044d0:	02059593          	slli	a1,a1,0x20
    800044d4:	0205d593          	srli	a1,a1,0x20
    800044d8:	00bd85b3          	add	a1,s11,a1
    800044dc:	0005c583          	lbu	a1,0(a1)
    800044e0:	02d7d7bb          	divuw	a5,a5,a3
    800044e4:	f8b40423          	sb	a1,-120(s0)
    800044e8:	42ebfc63          	bgeu	s7,a4,80004920 <__printf+0x678>
    800044ec:	02079793          	slli	a5,a5,0x20
    800044f0:	0207d793          	srli	a5,a5,0x20
    800044f4:	00fd8db3          	add	s11,s11,a5
    800044f8:	000dc703          	lbu	a4,0(s11)
    800044fc:	00a00793          	li	a5,10
    80004500:	00900c93          	li	s9,9
    80004504:	f8e404a3          	sb	a4,-119(s0)
    80004508:	00065c63          	bgez	a2,80004520 <__printf+0x278>
    8000450c:	f9040713          	addi	a4,s0,-112
    80004510:	00f70733          	add	a4,a4,a5
    80004514:	02d00693          	li	a3,45
    80004518:	fed70823          	sb	a3,-16(a4)
    8000451c:	00078c93          	mv	s9,a5
    80004520:	f8040793          	addi	a5,s0,-128
    80004524:	01978cb3          	add	s9,a5,s9
    80004528:	f7f40d13          	addi	s10,s0,-129
    8000452c:	000cc503          	lbu	a0,0(s9)
    80004530:	fffc8c93          	addi	s9,s9,-1
    80004534:	00000097          	auipc	ra,0x0
    80004538:	b90080e7          	jalr	-1136(ra) # 800040c4 <consputc>
    8000453c:	ffac98e3          	bne	s9,s10,8000452c <__printf+0x284>
    80004540:	00094503          	lbu	a0,0(s2)
    80004544:	e00514e3          	bnez	a0,8000434c <__printf+0xa4>
    80004548:	1a0c1663          	bnez	s8,800046f4 <__printf+0x44c>
    8000454c:	08813083          	ld	ra,136(sp)
    80004550:	08013403          	ld	s0,128(sp)
    80004554:	07813483          	ld	s1,120(sp)
    80004558:	07013903          	ld	s2,112(sp)
    8000455c:	06813983          	ld	s3,104(sp)
    80004560:	06013a03          	ld	s4,96(sp)
    80004564:	05813a83          	ld	s5,88(sp)
    80004568:	05013b03          	ld	s6,80(sp)
    8000456c:	04813b83          	ld	s7,72(sp)
    80004570:	04013c03          	ld	s8,64(sp)
    80004574:	03813c83          	ld	s9,56(sp)
    80004578:	03013d03          	ld	s10,48(sp)
    8000457c:	02813d83          	ld	s11,40(sp)
    80004580:	0d010113          	addi	sp,sp,208
    80004584:	00008067          	ret
    80004588:	07300713          	li	a4,115
    8000458c:	1ce78a63          	beq	a5,a4,80004760 <__printf+0x4b8>
    80004590:	07800713          	li	a4,120
    80004594:	1ee79e63          	bne	a5,a4,80004790 <__printf+0x4e8>
    80004598:	f7843783          	ld	a5,-136(s0)
    8000459c:	0007a703          	lw	a4,0(a5)
    800045a0:	00878793          	addi	a5,a5,8
    800045a4:	f6f43c23          	sd	a5,-136(s0)
    800045a8:	28074263          	bltz	a4,8000482c <__printf+0x584>
    800045ac:	00002d97          	auipc	s11,0x2
    800045b0:	e8cd8d93          	addi	s11,s11,-372 # 80006438 <digits>
    800045b4:	00f77793          	andi	a5,a4,15
    800045b8:	00fd87b3          	add	a5,s11,a5
    800045bc:	0007c683          	lbu	a3,0(a5)
    800045c0:	00f00613          	li	a2,15
    800045c4:	0007079b          	sext.w	a5,a4
    800045c8:	f8d40023          	sb	a3,-128(s0)
    800045cc:	0047559b          	srliw	a1,a4,0x4
    800045d0:	0047569b          	srliw	a3,a4,0x4
    800045d4:	00000c93          	li	s9,0
    800045d8:	0ee65063          	bge	a2,a4,800046b8 <__printf+0x410>
    800045dc:	00f6f693          	andi	a3,a3,15
    800045e0:	00dd86b3          	add	a3,s11,a3
    800045e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800045e8:	0087d79b          	srliw	a5,a5,0x8
    800045ec:	00100c93          	li	s9,1
    800045f0:	f8d400a3          	sb	a3,-127(s0)
    800045f4:	0cb67263          	bgeu	a2,a1,800046b8 <__printf+0x410>
    800045f8:	00f7f693          	andi	a3,a5,15
    800045fc:	00dd86b3          	add	a3,s11,a3
    80004600:	0006c583          	lbu	a1,0(a3)
    80004604:	00f00613          	li	a2,15
    80004608:	0047d69b          	srliw	a3,a5,0x4
    8000460c:	f8b40123          	sb	a1,-126(s0)
    80004610:	0047d593          	srli	a1,a5,0x4
    80004614:	28f67e63          	bgeu	a2,a5,800048b0 <__printf+0x608>
    80004618:	00f6f693          	andi	a3,a3,15
    8000461c:	00dd86b3          	add	a3,s11,a3
    80004620:	0006c503          	lbu	a0,0(a3)
    80004624:	0087d813          	srli	a6,a5,0x8
    80004628:	0087d69b          	srliw	a3,a5,0x8
    8000462c:	f8a401a3          	sb	a0,-125(s0)
    80004630:	28b67663          	bgeu	a2,a1,800048bc <__printf+0x614>
    80004634:	00f6f693          	andi	a3,a3,15
    80004638:	00dd86b3          	add	a3,s11,a3
    8000463c:	0006c583          	lbu	a1,0(a3)
    80004640:	00c7d513          	srli	a0,a5,0xc
    80004644:	00c7d69b          	srliw	a3,a5,0xc
    80004648:	f8b40223          	sb	a1,-124(s0)
    8000464c:	29067a63          	bgeu	a2,a6,800048e0 <__printf+0x638>
    80004650:	00f6f693          	andi	a3,a3,15
    80004654:	00dd86b3          	add	a3,s11,a3
    80004658:	0006c583          	lbu	a1,0(a3)
    8000465c:	0107d813          	srli	a6,a5,0x10
    80004660:	0107d69b          	srliw	a3,a5,0x10
    80004664:	f8b402a3          	sb	a1,-123(s0)
    80004668:	28a67263          	bgeu	a2,a0,800048ec <__printf+0x644>
    8000466c:	00f6f693          	andi	a3,a3,15
    80004670:	00dd86b3          	add	a3,s11,a3
    80004674:	0006c683          	lbu	a3,0(a3)
    80004678:	0147d79b          	srliw	a5,a5,0x14
    8000467c:	f8d40323          	sb	a3,-122(s0)
    80004680:	21067663          	bgeu	a2,a6,8000488c <__printf+0x5e4>
    80004684:	02079793          	slli	a5,a5,0x20
    80004688:	0207d793          	srli	a5,a5,0x20
    8000468c:	00fd8db3          	add	s11,s11,a5
    80004690:	000dc683          	lbu	a3,0(s11)
    80004694:	00800793          	li	a5,8
    80004698:	00700c93          	li	s9,7
    8000469c:	f8d403a3          	sb	a3,-121(s0)
    800046a0:	00075c63          	bgez	a4,800046b8 <__printf+0x410>
    800046a4:	f9040713          	addi	a4,s0,-112
    800046a8:	00f70733          	add	a4,a4,a5
    800046ac:	02d00693          	li	a3,45
    800046b0:	fed70823          	sb	a3,-16(a4)
    800046b4:	00078c93          	mv	s9,a5
    800046b8:	f8040793          	addi	a5,s0,-128
    800046bc:	01978cb3          	add	s9,a5,s9
    800046c0:	f7f40d13          	addi	s10,s0,-129
    800046c4:	000cc503          	lbu	a0,0(s9)
    800046c8:	fffc8c93          	addi	s9,s9,-1
    800046cc:	00000097          	auipc	ra,0x0
    800046d0:	9f8080e7          	jalr	-1544(ra) # 800040c4 <consputc>
    800046d4:	ff9d18e3          	bne	s10,s9,800046c4 <__printf+0x41c>
    800046d8:	0100006f          	j	800046e8 <__printf+0x440>
    800046dc:	00000097          	auipc	ra,0x0
    800046e0:	9e8080e7          	jalr	-1560(ra) # 800040c4 <consputc>
    800046e4:	000c8493          	mv	s1,s9
    800046e8:	00094503          	lbu	a0,0(s2)
    800046ec:	c60510e3          	bnez	a0,8000434c <__printf+0xa4>
    800046f0:	e40c0ee3          	beqz	s8,8000454c <__printf+0x2a4>
    800046f4:	00004517          	auipc	a0,0x4
    800046f8:	fbc50513          	addi	a0,a0,-68 # 800086b0 <pr>
    800046fc:	00001097          	auipc	ra,0x1
    80004700:	94c080e7          	jalr	-1716(ra) # 80005048 <release>
    80004704:	e49ff06f          	j	8000454c <__printf+0x2a4>
    80004708:	f7843783          	ld	a5,-136(s0)
    8000470c:	03000513          	li	a0,48
    80004710:	01000d13          	li	s10,16
    80004714:	00878713          	addi	a4,a5,8
    80004718:	0007bc83          	ld	s9,0(a5)
    8000471c:	f6e43c23          	sd	a4,-136(s0)
    80004720:	00000097          	auipc	ra,0x0
    80004724:	9a4080e7          	jalr	-1628(ra) # 800040c4 <consputc>
    80004728:	07800513          	li	a0,120
    8000472c:	00000097          	auipc	ra,0x0
    80004730:	998080e7          	jalr	-1640(ra) # 800040c4 <consputc>
    80004734:	00002d97          	auipc	s11,0x2
    80004738:	d04d8d93          	addi	s11,s11,-764 # 80006438 <digits>
    8000473c:	03ccd793          	srli	a5,s9,0x3c
    80004740:	00fd87b3          	add	a5,s11,a5
    80004744:	0007c503          	lbu	a0,0(a5)
    80004748:	fffd0d1b          	addiw	s10,s10,-1
    8000474c:	004c9c93          	slli	s9,s9,0x4
    80004750:	00000097          	auipc	ra,0x0
    80004754:	974080e7          	jalr	-1676(ra) # 800040c4 <consputc>
    80004758:	fe0d12e3          	bnez	s10,8000473c <__printf+0x494>
    8000475c:	f8dff06f          	j	800046e8 <__printf+0x440>
    80004760:	f7843783          	ld	a5,-136(s0)
    80004764:	0007bc83          	ld	s9,0(a5)
    80004768:	00878793          	addi	a5,a5,8
    8000476c:	f6f43c23          	sd	a5,-136(s0)
    80004770:	000c9a63          	bnez	s9,80004784 <__printf+0x4dc>
    80004774:	1080006f          	j	8000487c <__printf+0x5d4>
    80004778:	001c8c93          	addi	s9,s9,1
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	948080e7          	jalr	-1720(ra) # 800040c4 <consputc>
    80004784:	000cc503          	lbu	a0,0(s9)
    80004788:	fe0518e3          	bnez	a0,80004778 <__printf+0x4d0>
    8000478c:	f5dff06f          	j	800046e8 <__printf+0x440>
    80004790:	02500513          	li	a0,37
    80004794:	00000097          	auipc	ra,0x0
    80004798:	930080e7          	jalr	-1744(ra) # 800040c4 <consputc>
    8000479c:	000c8513          	mv	a0,s9
    800047a0:	00000097          	auipc	ra,0x0
    800047a4:	924080e7          	jalr	-1756(ra) # 800040c4 <consputc>
    800047a8:	f41ff06f          	j	800046e8 <__printf+0x440>
    800047ac:	02500513          	li	a0,37
    800047b0:	00000097          	auipc	ra,0x0
    800047b4:	914080e7          	jalr	-1772(ra) # 800040c4 <consputc>
    800047b8:	f31ff06f          	j	800046e8 <__printf+0x440>
    800047bc:	00030513          	mv	a0,t1
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	7bc080e7          	jalr	1980(ra) # 80004f7c <acquire>
    800047c8:	b4dff06f          	j	80004314 <__printf+0x6c>
    800047cc:	40c0053b          	negw	a0,a2
    800047d0:	00a00713          	li	a4,10
    800047d4:	02e576bb          	remuw	a3,a0,a4
    800047d8:	00002d97          	auipc	s11,0x2
    800047dc:	c60d8d93          	addi	s11,s11,-928 # 80006438 <digits>
    800047e0:	ff700593          	li	a1,-9
    800047e4:	02069693          	slli	a3,a3,0x20
    800047e8:	0206d693          	srli	a3,a3,0x20
    800047ec:	00dd86b3          	add	a3,s11,a3
    800047f0:	0006c683          	lbu	a3,0(a3)
    800047f4:	02e557bb          	divuw	a5,a0,a4
    800047f8:	f8d40023          	sb	a3,-128(s0)
    800047fc:	10b65e63          	bge	a2,a1,80004918 <__printf+0x670>
    80004800:	06300593          	li	a1,99
    80004804:	02e7f6bb          	remuw	a3,a5,a4
    80004808:	02069693          	slli	a3,a3,0x20
    8000480c:	0206d693          	srli	a3,a3,0x20
    80004810:	00dd86b3          	add	a3,s11,a3
    80004814:	0006c683          	lbu	a3,0(a3)
    80004818:	02e7d73b          	divuw	a4,a5,a4
    8000481c:	00200793          	li	a5,2
    80004820:	f8d400a3          	sb	a3,-127(s0)
    80004824:	bca5ece3          	bltu	a1,a0,800043fc <__printf+0x154>
    80004828:	ce5ff06f          	j	8000450c <__printf+0x264>
    8000482c:	40e007bb          	negw	a5,a4
    80004830:	00002d97          	auipc	s11,0x2
    80004834:	c08d8d93          	addi	s11,s11,-1016 # 80006438 <digits>
    80004838:	00f7f693          	andi	a3,a5,15
    8000483c:	00dd86b3          	add	a3,s11,a3
    80004840:	0006c583          	lbu	a1,0(a3)
    80004844:	ff100613          	li	a2,-15
    80004848:	0047d69b          	srliw	a3,a5,0x4
    8000484c:	f8b40023          	sb	a1,-128(s0)
    80004850:	0047d59b          	srliw	a1,a5,0x4
    80004854:	0ac75e63          	bge	a4,a2,80004910 <__printf+0x668>
    80004858:	00f6f693          	andi	a3,a3,15
    8000485c:	00dd86b3          	add	a3,s11,a3
    80004860:	0006c603          	lbu	a2,0(a3)
    80004864:	00f00693          	li	a3,15
    80004868:	0087d79b          	srliw	a5,a5,0x8
    8000486c:	f8c400a3          	sb	a2,-127(s0)
    80004870:	d8b6e4e3          	bltu	a3,a1,800045f8 <__printf+0x350>
    80004874:	00200793          	li	a5,2
    80004878:	e2dff06f          	j	800046a4 <__printf+0x3fc>
    8000487c:	00002c97          	auipc	s9,0x2
    80004880:	b9cc8c93          	addi	s9,s9,-1124 # 80006418 <_ZZ14__print_uint64mE6digits+0x280>
    80004884:	02800513          	li	a0,40
    80004888:	ef1ff06f          	j	80004778 <__printf+0x4d0>
    8000488c:	00700793          	li	a5,7
    80004890:	00600c93          	li	s9,6
    80004894:	e0dff06f          	j	800046a0 <__printf+0x3f8>
    80004898:	00700793          	li	a5,7
    8000489c:	00600c93          	li	s9,6
    800048a0:	c69ff06f          	j	80004508 <__printf+0x260>
    800048a4:	00300793          	li	a5,3
    800048a8:	00200c93          	li	s9,2
    800048ac:	c5dff06f          	j	80004508 <__printf+0x260>
    800048b0:	00300793          	li	a5,3
    800048b4:	00200c93          	li	s9,2
    800048b8:	de9ff06f          	j	800046a0 <__printf+0x3f8>
    800048bc:	00400793          	li	a5,4
    800048c0:	00300c93          	li	s9,3
    800048c4:	dddff06f          	j	800046a0 <__printf+0x3f8>
    800048c8:	00400793          	li	a5,4
    800048cc:	00300c93          	li	s9,3
    800048d0:	c39ff06f          	j	80004508 <__printf+0x260>
    800048d4:	00500793          	li	a5,5
    800048d8:	00400c93          	li	s9,4
    800048dc:	c2dff06f          	j	80004508 <__printf+0x260>
    800048e0:	00500793          	li	a5,5
    800048e4:	00400c93          	li	s9,4
    800048e8:	db9ff06f          	j	800046a0 <__printf+0x3f8>
    800048ec:	00600793          	li	a5,6
    800048f0:	00500c93          	li	s9,5
    800048f4:	dadff06f          	j	800046a0 <__printf+0x3f8>
    800048f8:	00600793          	li	a5,6
    800048fc:	00500c93          	li	s9,5
    80004900:	c09ff06f          	j	80004508 <__printf+0x260>
    80004904:	00800793          	li	a5,8
    80004908:	00700c93          	li	s9,7
    8000490c:	bfdff06f          	j	80004508 <__printf+0x260>
    80004910:	00100793          	li	a5,1
    80004914:	d91ff06f          	j	800046a4 <__printf+0x3fc>
    80004918:	00100793          	li	a5,1
    8000491c:	bf1ff06f          	j	8000450c <__printf+0x264>
    80004920:	00900793          	li	a5,9
    80004924:	00800c93          	li	s9,8
    80004928:	be1ff06f          	j	80004508 <__printf+0x260>
    8000492c:	00002517          	auipc	a0,0x2
    80004930:	af450513          	addi	a0,a0,-1292 # 80006420 <_ZZ14__print_uint64mE6digits+0x288>
    80004934:	00000097          	auipc	ra,0x0
    80004938:	918080e7          	jalr	-1768(ra) # 8000424c <panic>

000000008000493c <printfinit>:
    8000493c:	fe010113          	addi	sp,sp,-32
    80004940:	00813823          	sd	s0,16(sp)
    80004944:	00913423          	sd	s1,8(sp)
    80004948:	00113c23          	sd	ra,24(sp)
    8000494c:	02010413          	addi	s0,sp,32
    80004950:	00004497          	auipc	s1,0x4
    80004954:	d6048493          	addi	s1,s1,-672 # 800086b0 <pr>
    80004958:	00048513          	mv	a0,s1
    8000495c:	00002597          	auipc	a1,0x2
    80004960:	ad458593          	addi	a1,a1,-1324 # 80006430 <_ZZ14__print_uint64mE6digits+0x298>
    80004964:	00000097          	auipc	ra,0x0
    80004968:	5f4080e7          	jalr	1524(ra) # 80004f58 <initlock>
    8000496c:	01813083          	ld	ra,24(sp)
    80004970:	01013403          	ld	s0,16(sp)
    80004974:	0004ac23          	sw	zero,24(s1)
    80004978:	00813483          	ld	s1,8(sp)
    8000497c:	02010113          	addi	sp,sp,32
    80004980:	00008067          	ret

0000000080004984 <uartinit>:
    80004984:	ff010113          	addi	sp,sp,-16
    80004988:	00813423          	sd	s0,8(sp)
    8000498c:	01010413          	addi	s0,sp,16
    80004990:	100007b7          	lui	a5,0x10000
    80004994:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004998:	f8000713          	li	a4,-128
    8000499c:	00e781a3          	sb	a4,3(a5)
    800049a0:	00300713          	li	a4,3
    800049a4:	00e78023          	sb	a4,0(a5)
    800049a8:	000780a3          	sb	zero,1(a5)
    800049ac:	00e781a3          	sb	a4,3(a5)
    800049b0:	00700693          	li	a3,7
    800049b4:	00d78123          	sb	a3,2(a5)
    800049b8:	00e780a3          	sb	a4,1(a5)
    800049bc:	00813403          	ld	s0,8(sp)
    800049c0:	01010113          	addi	sp,sp,16
    800049c4:	00008067          	ret

00000000800049c8 <uartputc>:
    800049c8:	00003797          	auipc	a5,0x3
    800049cc:	a507a783          	lw	a5,-1456(a5) # 80007418 <panicked>
    800049d0:	00078463          	beqz	a5,800049d8 <uartputc+0x10>
    800049d4:	0000006f          	j	800049d4 <uartputc+0xc>
    800049d8:	fd010113          	addi	sp,sp,-48
    800049dc:	02813023          	sd	s0,32(sp)
    800049e0:	00913c23          	sd	s1,24(sp)
    800049e4:	01213823          	sd	s2,16(sp)
    800049e8:	01313423          	sd	s3,8(sp)
    800049ec:	02113423          	sd	ra,40(sp)
    800049f0:	03010413          	addi	s0,sp,48
    800049f4:	00003917          	auipc	s2,0x3
    800049f8:	a2c90913          	addi	s2,s2,-1492 # 80007420 <uart_tx_r>
    800049fc:	00093783          	ld	a5,0(s2)
    80004a00:	00003497          	auipc	s1,0x3
    80004a04:	a2848493          	addi	s1,s1,-1496 # 80007428 <uart_tx_w>
    80004a08:	0004b703          	ld	a4,0(s1)
    80004a0c:	02078693          	addi	a3,a5,32
    80004a10:	00050993          	mv	s3,a0
    80004a14:	02e69c63          	bne	a3,a4,80004a4c <uartputc+0x84>
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	834080e7          	jalr	-1996(ra) # 8000524c <push_on>
    80004a20:	00093783          	ld	a5,0(s2)
    80004a24:	0004b703          	ld	a4,0(s1)
    80004a28:	02078793          	addi	a5,a5,32
    80004a2c:	00e79463          	bne	a5,a4,80004a34 <uartputc+0x6c>
    80004a30:	0000006f          	j	80004a30 <uartputc+0x68>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	88c080e7          	jalr	-1908(ra) # 800052c0 <pop_on>
    80004a3c:	00093783          	ld	a5,0(s2)
    80004a40:	0004b703          	ld	a4,0(s1)
    80004a44:	02078693          	addi	a3,a5,32
    80004a48:	fce688e3          	beq	a3,a4,80004a18 <uartputc+0x50>
    80004a4c:	01f77693          	andi	a3,a4,31
    80004a50:	00004597          	auipc	a1,0x4
    80004a54:	c8058593          	addi	a1,a1,-896 # 800086d0 <uart_tx_buf>
    80004a58:	00d586b3          	add	a3,a1,a3
    80004a5c:	00170713          	addi	a4,a4,1
    80004a60:	01368023          	sb	s3,0(a3)
    80004a64:	00e4b023          	sd	a4,0(s1)
    80004a68:	10000637          	lui	a2,0x10000
    80004a6c:	02f71063          	bne	a4,a5,80004a8c <uartputc+0xc4>
    80004a70:	0340006f          	j	80004aa4 <uartputc+0xdc>
    80004a74:	00074703          	lbu	a4,0(a4)
    80004a78:	00f93023          	sd	a5,0(s2)
    80004a7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004a80:	00093783          	ld	a5,0(s2)
    80004a84:	0004b703          	ld	a4,0(s1)
    80004a88:	00f70e63          	beq	a4,a5,80004aa4 <uartputc+0xdc>
    80004a8c:	00564683          	lbu	a3,5(a2)
    80004a90:	01f7f713          	andi	a4,a5,31
    80004a94:	00e58733          	add	a4,a1,a4
    80004a98:	0206f693          	andi	a3,a3,32
    80004a9c:	00178793          	addi	a5,a5,1
    80004aa0:	fc069ae3          	bnez	a3,80004a74 <uartputc+0xac>
    80004aa4:	02813083          	ld	ra,40(sp)
    80004aa8:	02013403          	ld	s0,32(sp)
    80004aac:	01813483          	ld	s1,24(sp)
    80004ab0:	01013903          	ld	s2,16(sp)
    80004ab4:	00813983          	ld	s3,8(sp)
    80004ab8:	03010113          	addi	sp,sp,48
    80004abc:	00008067          	ret

0000000080004ac0 <uartputc_sync>:
    80004ac0:	ff010113          	addi	sp,sp,-16
    80004ac4:	00813423          	sd	s0,8(sp)
    80004ac8:	01010413          	addi	s0,sp,16
    80004acc:	00003717          	auipc	a4,0x3
    80004ad0:	94c72703          	lw	a4,-1716(a4) # 80007418 <panicked>
    80004ad4:	02071663          	bnez	a4,80004b00 <uartputc_sync+0x40>
    80004ad8:	00050793          	mv	a5,a0
    80004adc:	100006b7          	lui	a3,0x10000
    80004ae0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004ae4:	02077713          	andi	a4,a4,32
    80004ae8:	fe070ce3          	beqz	a4,80004ae0 <uartputc_sync+0x20>
    80004aec:	0ff7f793          	andi	a5,a5,255
    80004af0:	00f68023          	sb	a5,0(a3)
    80004af4:	00813403          	ld	s0,8(sp)
    80004af8:	01010113          	addi	sp,sp,16
    80004afc:	00008067          	ret
    80004b00:	0000006f          	j	80004b00 <uartputc_sync+0x40>

0000000080004b04 <uartstart>:
    80004b04:	ff010113          	addi	sp,sp,-16
    80004b08:	00813423          	sd	s0,8(sp)
    80004b0c:	01010413          	addi	s0,sp,16
    80004b10:	00003617          	auipc	a2,0x3
    80004b14:	91060613          	addi	a2,a2,-1776 # 80007420 <uart_tx_r>
    80004b18:	00003517          	auipc	a0,0x3
    80004b1c:	91050513          	addi	a0,a0,-1776 # 80007428 <uart_tx_w>
    80004b20:	00063783          	ld	a5,0(a2)
    80004b24:	00053703          	ld	a4,0(a0)
    80004b28:	04f70263          	beq	a4,a5,80004b6c <uartstart+0x68>
    80004b2c:	100005b7          	lui	a1,0x10000
    80004b30:	00004817          	auipc	a6,0x4
    80004b34:	ba080813          	addi	a6,a6,-1120 # 800086d0 <uart_tx_buf>
    80004b38:	01c0006f          	j	80004b54 <uartstart+0x50>
    80004b3c:	0006c703          	lbu	a4,0(a3)
    80004b40:	00f63023          	sd	a5,0(a2)
    80004b44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004b48:	00063783          	ld	a5,0(a2)
    80004b4c:	00053703          	ld	a4,0(a0)
    80004b50:	00f70e63          	beq	a4,a5,80004b6c <uartstart+0x68>
    80004b54:	01f7f713          	andi	a4,a5,31
    80004b58:	00e806b3          	add	a3,a6,a4
    80004b5c:	0055c703          	lbu	a4,5(a1)
    80004b60:	00178793          	addi	a5,a5,1
    80004b64:	02077713          	andi	a4,a4,32
    80004b68:	fc071ae3          	bnez	a4,80004b3c <uartstart+0x38>
    80004b6c:	00813403          	ld	s0,8(sp)
    80004b70:	01010113          	addi	sp,sp,16
    80004b74:	00008067          	ret

0000000080004b78 <uartgetc>:
    80004b78:	ff010113          	addi	sp,sp,-16
    80004b7c:	00813423          	sd	s0,8(sp)
    80004b80:	01010413          	addi	s0,sp,16
    80004b84:	10000737          	lui	a4,0x10000
    80004b88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004b8c:	0017f793          	andi	a5,a5,1
    80004b90:	00078c63          	beqz	a5,80004ba8 <uartgetc+0x30>
    80004b94:	00074503          	lbu	a0,0(a4)
    80004b98:	0ff57513          	andi	a0,a0,255
    80004b9c:	00813403          	ld	s0,8(sp)
    80004ba0:	01010113          	addi	sp,sp,16
    80004ba4:	00008067          	ret
    80004ba8:	fff00513          	li	a0,-1
    80004bac:	ff1ff06f          	j	80004b9c <uartgetc+0x24>

0000000080004bb0 <uartintr>:
    80004bb0:	100007b7          	lui	a5,0x10000
    80004bb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004bb8:	0017f793          	andi	a5,a5,1
    80004bbc:	0a078463          	beqz	a5,80004c64 <uartintr+0xb4>
    80004bc0:	fe010113          	addi	sp,sp,-32
    80004bc4:	00813823          	sd	s0,16(sp)
    80004bc8:	00913423          	sd	s1,8(sp)
    80004bcc:	00113c23          	sd	ra,24(sp)
    80004bd0:	02010413          	addi	s0,sp,32
    80004bd4:	100004b7          	lui	s1,0x10000
    80004bd8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004bdc:	0ff57513          	andi	a0,a0,255
    80004be0:	fffff097          	auipc	ra,0xfffff
    80004be4:	534080e7          	jalr	1332(ra) # 80004114 <consoleintr>
    80004be8:	0054c783          	lbu	a5,5(s1)
    80004bec:	0017f793          	andi	a5,a5,1
    80004bf0:	fe0794e3          	bnez	a5,80004bd8 <uartintr+0x28>
    80004bf4:	00003617          	auipc	a2,0x3
    80004bf8:	82c60613          	addi	a2,a2,-2004 # 80007420 <uart_tx_r>
    80004bfc:	00003517          	auipc	a0,0x3
    80004c00:	82c50513          	addi	a0,a0,-2004 # 80007428 <uart_tx_w>
    80004c04:	00063783          	ld	a5,0(a2)
    80004c08:	00053703          	ld	a4,0(a0)
    80004c0c:	04f70263          	beq	a4,a5,80004c50 <uartintr+0xa0>
    80004c10:	100005b7          	lui	a1,0x10000
    80004c14:	00004817          	auipc	a6,0x4
    80004c18:	abc80813          	addi	a6,a6,-1348 # 800086d0 <uart_tx_buf>
    80004c1c:	01c0006f          	j	80004c38 <uartintr+0x88>
    80004c20:	0006c703          	lbu	a4,0(a3)
    80004c24:	00f63023          	sd	a5,0(a2)
    80004c28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c2c:	00063783          	ld	a5,0(a2)
    80004c30:	00053703          	ld	a4,0(a0)
    80004c34:	00f70e63          	beq	a4,a5,80004c50 <uartintr+0xa0>
    80004c38:	01f7f713          	andi	a4,a5,31
    80004c3c:	00e806b3          	add	a3,a6,a4
    80004c40:	0055c703          	lbu	a4,5(a1)
    80004c44:	00178793          	addi	a5,a5,1
    80004c48:	02077713          	andi	a4,a4,32
    80004c4c:	fc071ae3          	bnez	a4,80004c20 <uartintr+0x70>
    80004c50:	01813083          	ld	ra,24(sp)
    80004c54:	01013403          	ld	s0,16(sp)
    80004c58:	00813483          	ld	s1,8(sp)
    80004c5c:	02010113          	addi	sp,sp,32
    80004c60:	00008067          	ret
    80004c64:	00002617          	auipc	a2,0x2
    80004c68:	7bc60613          	addi	a2,a2,1980 # 80007420 <uart_tx_r>
    80004c6c:	00002517          	auipc	a0,0x2
    80004c70:	7bc50513          	addi	a0,a0,1980 # 80007428 <uart_tx_w>
    80004c74:	00063783          	ld	a5,0(a2)
    80004c78:	00053703          	ld	a4,0(a0)
    80004c7c:	04f70263          	beq	a4,a5,80004cc0 <uartintr+0x110>
    80004c80:	100005b7          	lui	a1,0x10000
    80004c84:	00004817          	auipc	a6,0x4
    80004c88:	a4c80813          	addi	a6,a6,-1460 # 800086d0 <uart_tx_buf>
    80004c8c:	01c0006f          	j	80004ca8 <uartintr+0xf8>
    80004c90:	0006c703          	lbu	a4,0(a3)
    80004c94:	00f63023          	sd	a5,0(a2)
    80004c98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c9c:	00063783          	ld	a5,0(a2)
    80004ca0:	00053703          	ld	a4,0(a0)
    80004ca4:	02f70063          	beq	a4,a5,80004cc4 <uartintr+0x114>
    80004ca8:	01f7f713          	andi	a4,a5,31
    80004cac:	00e806b3          	add	a3,a6,a4
    80004cb0:	0055c703          	lbu	a4,5(a1)
    80004cb4:	00178793          	addi	a5,a5,1
    80004cb8:	02077713          	andi	a4,a4,32
    80004cbc:	fc071ae3          	bnez	a4,80004c90 <uartintr+0xe0>
    80004cc0:	00008067          	ret
    80004cc4:	00008067          	ret

0000000080004cc8 <kinit>:
    80004cc8:	fc010113          	addi	sp,sp,-64
    80004ccc:	02913423          	sd	s1,40(sp)
    80004cd0:	fffff7b7          	lui	a5,0xfffff
    80004cd4:	00005497          	auipc	s1,0x5
    80004cd8:	a1b48493          	addi	s1,s1,-1509 # 800096ef <end+0xfff>
    80004cdc:	02813823          	sd	s0,48(sp)
    80004ce0:	01313c23          	sd	s3,24(sp)
    80004ce4:	00f4f4b3          	and	s1,s1,a5
    80004ce8:	02113c23          	sd	ra,56(sp)
    80004cec:	03213023          	sd	s2,32(sp)
    80004cf0:	01413823          	sd	s4,16(sp)
    80004cf4:	01513423          	sd	s5,8(sp)
    80004cf8:	04010413          	addi	s0,sp,64
    80004cfc:	000017b7          	lui	a5,0x1
    80004d00:	01100993          	li	s3,17
    80004d04:	00f487b3          	add	a5,s1,a5
    80004d08:	01b99993          	slli	s3,s3,0x1b
    80004d0c:	06f9e063          	bltu	s3,a5,80004d6c <kinit+0xa4>
    80004d10:	00004a97          	auipc	s5,0x4
    80004d14:	9e0a8a93          	addi	s5,s5,-1568 # 800086f0 <end>
    80004d18:	0754ec63          	bltu	s1,s5,80004d90 <kinit+0xc8>
    80004d1c:	0734fa63          	bgeu	s1,s3,80004d90 <kinit+0xc8>
    80004d20:	00088a37          	lui	s4,0x88
    80004d24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004d28:	00002917          	auipc	s2,0x2
    80004d2c:	70890913          	addi	s2,s2,1800 # 80007430 <kmem>
    80004d30:	00ca1a13          	slli	s4,s4,0xc
    80004d34:	0140006f          	j	80004d48 <kinit+0x80>
    80004d38:	000017b7          	lui	a5,0x1
    80004d3c:	00f484b3          	add	s1,s1,a5
    80004d40:	0554e863          	bltu	s1,s5,80004d90 <kinit+0xc8>
    80004d44:	0534f663          	bgeu	s1,s3,80004d90 <kinit+0xc8>
    80004d48:	00001637          	lui	a2,0x1
    80004d4c:	00100593          	li	a1,1
    80004d50:	00048513          	mv	a0,s1
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	5e4080e7          	jalr	1508(ra) # 80005338 <__memset>
    80004d5c:	00093783          	ld	a5,0(s2)
    80004d60:	00f4b023          	sd	a5,0(s1)
    80004d64:	00993023          	sd	s1,0(s2)
    80004d68:	fd4498e3          	bne	s1,s4,80004d38 <kinit+0x70>
    80004d6c:	03813083          	ld	ra,56(sp)
    80004d70:	03013403          	ld	s0,48(sp)
    80004d74:	02813483          	ld	s1,40(sp)
    80004d78:	02013903          	ld	s2,32(sp)
    80004d7c:	01813983          	ld	s3,24(sp)
    80004d80:	01013a03          	ld	s4,16(sp)
    80004d84:	00813a83          	ld	s5,8(sp)
    80004d88:	04010113          	addi	sp,sp,64
    80004d8c:	00008067          	ret
    80004d90:	00001517          	auipc	a0,0x1
    80004d94:	6c050513          	addi	a0,a0,1728 # 80006450 <digits+0x18>
    80004d98:	fffff097          	auipc	ra,0xfffff
    80004d9c:	4b4080e7          	jalr	1204(ra) # 8000424c <panic>

0000000080004da0 <freerange>:
    80004da0:	fc010113          	addi	sp,sp,-64
    80004da4:	000017b7          	lui	a5,0x1
    80004da8:	02913423          	sd	s1,40(sp)
    80004dac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004db0:	009504b3          	add	s1,a0,s1
    80004db4:	fffff537          	lui	a0,0xfffff
    80004db8:	02813823          	sd	s0,48(sp)
    80004dbc:	02113c23          	sd	ra,56(sp)
    80004dc0:	03213023          	sd	s2,32(sp)
    80004dc4:	01313c23          	sd	s3,24(sp)
    80004dc8:	01413823          	sd	s4,16(sp)
    80004dcc:	01513423          	sd	s5,8(sp)
    80004dd0:	01613023          	sd	s6,0(sp)
    80004dd4:	04010413          	addi	s0,sp,64
    80004dd8:	00a4f4b3          	and	s1,s1,a0
    80004ddc:	00f487b3          	add	a5,s1,a5
    80004de0:	06f5e463          	bltu	a1,a5,80004e48 <freerange+0xa8>
    80004de4:	00004a97          	auipc	s5,0x4
    80004de8:	90ca8a93          	addi	s5,s5,-1780 # 800086f0 <end>
    80004dec:	0954e263          	bltu	s1,s5,80004e70 <freerange+0xd0>
    80004df0:	01100993          	li	s3,17
    80004df4:	01b99993          	slli	s3,s3,0x1b
    80004df8:	0734fc63          	bgeu	s1,s3,80004e70 <freerange+0xd0>
    80004dfc:	00058a13          	mv	s4,a1
    80004e00:	00002917          	auipc	s2,0x2
    80004e04:	63090913          	addi	s2,s2,1584 # 80007430 <kmem>
    80004e08:	00002b37          	lui	s6,0x2
    80004e0c:	0140006f          	j	80004e20 <freerange+0x80>
    80004e10:	000017b7          	lui	a5,0x1
    80004e14:	00f484b3          	add	s1,s1,a5
    80004e18:	0554ec63          	bltu	s1,s5,80004e70 <freerange+0xd0>
    80004e1c:	0534fa63          	bgeu	s1,s3,80004e70 <freerange+0xd0>
    80004e20:	00001637          	lui	a2,0x1
    80004e24:	00100593          	li	a1,1
    80004e28:	00048513          	mv	a0,s1
    80004e2c:	00000097          	auipc	ra,0x0
    80004e30:	50c080e7          	jalr	1292(ra) # 80005338 <__memset>
    80004e34:	00093703          	ld	a4,0(s2)
    80004e38:	016487b3          	add	a5,s1,s6
    80004e3c:	00e4b023          	sd	a4,0(s1)
    80004e40:	00993023          	sd	s1,0(s2)
    80004e44:	fcfa76e3          	bgeu	s4,a5,80004e10 <freerange+0x70>
    80004e48:	03813083          	ld	ra,56(sp)
    80004e4c:	03013403          	ld	s0,48(sp)
    80004e50:	02813483          	ld	s1,40(sp)
    80004e54:	02013903          	ld	s2,32(sp)
    80004e58:	01813983          	ld	s3,24(sp)
    80004e5c:	01013a03          	ld	s4,16(sp)
    80004e60:	00813a83          	ld	s5,8(sp)
    80004e64:	00013b03          	ld	s6,0(sp)
    80004e68:	04010113          	addi	sp,sp,64
    80004e6c:	00008067          	ret
    80004e70:	00001517          	auipc	a0,0x1
    80004e74:	5e050513          	addi	a0,a0,1504 # 80006450 <digits+0x18>
    80004e78:	fffff097          	auipc	ra,0xfffff
    80004e7c:	3d4080e7          	jalr	980(ra) # 8000424c <panic>

0000000080004e80 <kfree>:
    80004e80:	fe010113          	addi	sp,sp,-32
    80004e84:	00813823          	sd	s0,16(sp)
    80004e88:	00113c23          	sd	ra,24(sp)
    80004e8c:	00913423          	sd	s1,8(sp)
    80004e90:	02010413          	addi	s0,sp,32
    80004e94:	03451793          	slli	a5,a0,0x34
    80004e98:	04079c63          	bnez	a5,80004ef0 <kfree+0x70>
    80004e9c:	00004797          	auipc	a5,0x4
    80004ea0:	85478793          	addi	a5,a5,-1964 # 800086f0 <end>
    80004ea4:	00050493          	mv	s1,a0
    80004ea8:	04f56463          	bltu	a0,a5,80004ef0 <kfree+0x70>
    80004eac:	01100793          	li	a5,17
    80004eb0:	01b79793          	slli	a5,a5,0x1b
    80004eb4:	02f57e63          	bgeu	a0,a5,80004ef0 <kfree+0x70>
    80004eb8:	00001637          	lui	a2,0x1
    80004ebc:	00100593          	li	a1,1
    80004ec0:	00000097          	auipc	ra,0x0
    80004ec4:	478080e7          	jalr	1144(ra) # 80005338 <__memset>
    80004ec8:	00002797          	auipc	a5,0x2
    80004ecc:	56878793          	addi	a5,a5,1384 # 80007430 <kmem>
    80004ed0:	0007b703          	ld	a4,0(a5)
    80004ed4:	01813083          	ld	ra,24(sp)
    80004ed8:	01013403          	ld	s0,16(sp)
    80004edc:	00e4b023          	sd	a4,0(s1)
    80004ee0:	0097b023          	sd	s1,0(a5)
    80004ee4:	00813483          	ld	s1,8(sp)
    80004ee8:	02010113          	addi	sp,sp,32
    80004eec:	00008067          	ret
    80004ef0:	00001517          	auipc	a0,0x1
    80004ef4:	56050513          	addi	a0,a0,1376 # 80006450 <digits+0x18>
    80004ef8:	fffff097          	auipc	ra,0xfffff
    80004efc:	354080e7          	jalr	852(ra) # 8000424c <panic>

0000000080004f00 <kalloc>:
    80004f00:	fe010113          	addi	sp,sp,-32
    80004f04:	00813823          	sd	s0,16(sp)
    80004f08:	00913423          	sd	s1,8(sp)
    80004f0c:	00113c23          	sd	ra,24(sp)
    80004f10:	02010413          	addi	s0,sp,32
    80004f14:	00002797          	auipc	a5,0x2
    80004f18:	51c78793          	addi	a5,a5,1308 # 80007430 <kmem>
    80004f1c:	0007b483          	ld	s1,0(a5)
    80004f20:	02048063          	beqz	s1,80004f40 <kalloc+0x40>
    80004f24:	0004b703          	ld	a4,0(s1)
    80004f28:	00001637          	lui	a2,0x1
    80004f2c:	00500593          	li	a1,5
    80004f30:	00048513          	mv	a0,s1
    80004f34:	00e7b023          	sd	a4,0(a5)
    80004f38:	00000097          	auipc	ra,0x0
    80004f3c:	400080e7          	jalr	1024(ra) # 80005338 <__memset>
    80004f40:	01813083          	ld	ra,24(sp)
    80004f44:	01013403          	ld	s0,16(sp)
    80004f48:	00048513          	mv	a0,s1
    80004f4c:	00813483          	ld	s1,8(sp)
    80004f50:	02010113          	addi	sp,sp,32
    80004f54:	00008067          	ret

0000000080004f58 <initlock>:
    80004f58:	ff010113          	addi	sp,sp,-16
    80004f5c:	00813423          	sd	s0,8(sp)
    80004f60:	01010413          	addi	s0,sp,16
    80004f64:	00813403          	ld	s0,8(sp)
    80004f68:	00b53423          	sd	a1,8(a0)
    80004f6c:	00052023          	sw	zero,0(a0)
    80004f70:	00053823          	sd	zero,16(a0)
    80004f74:	01010113          	addi	sp,sp,16
    80004f78:	00008067          	ret

0000000080004f7c <acquire>:
    80004f7c:	fe010113          	addi	sp,sp,-32
    80004f80:	00813823          	sd	s0,16(sp)
    80004f84:	00913423          	sd	s1,8(sp)
    80004f88:	00113c23          	sd	ra,24(sp)
    80004f8c:	01213023          	sd	s2,0(sp)
    80004f90:	02010413          	addi	s0,sp,32
    80004f94:	00050493          	mv	s1,a0
    80004f98:	10002973          	csrr	s2,sstatus
    80004f9c:	100027f3          	csrr	a5,sstatus
    80004fa0:	ffd7f793          	andi	a5,a5,-3
    80004fa4:	10079073          	csrw	sstatus,a5
    80004fa8:	fffff097          	auipc	ra,0xfffff
    80004fac:	8e8080e7          	jalr	-1816(ra) # 80003890 <mycpu>
    80004fb0:	07852783          	lw	a5,120(a0)
    80004fb4:	06078e63          	beqz	a5,80005030 <acquire+0xb4>
    80004fb8:	fffff097          	auipc	ra,0xfffff
    80004fbc:	8d8080e7          	jalr	-1832(ra) # 80003890 <mycpu>
    80004fc0:	07852783          	lw	a5,120(a0)
    80004fc4:	0004a703          	lw	a4,0(s1)
    80004fc8:	0017879b          	addiw	a5,a5,1
    80004fcc:	06f52c23          	sw	a5,120(a0)
    80004fd0:	04071063          	bnez	a4,80005010 <acquire+0x94>
    80004fd4:	00100713          	li	a4,1
    80004fd8:	00070793          	mv	a5,a4
    80004fdc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004fe0:	0007879b          	sext.w	a5,a5
    80004fe4:	fe079ae3          	bnez	a5,80004fd8 <acquire+0x5c>
    80004fe8:	0ff0000f          	fence
    80004fec:	fffff097          	auipc	ra,0xfffff
    80004ff0:	8a4080e7          	jalr	-1884(ra) # 80003890 <mycpu>
    80004ff4:	01813083          	ld	ra,24(sp)
    80004ff8:	01013403          	ld	s0,16(sp)
    80004ffc:	00a4b823          	sd	a0,16(s1)
    80005000:	00013903          	ld	s2,0(sp)
    80005004:	00813483          	ld	s1,8(sp)
    80005008:	02010113          	addi	sp,sp,32
    8000500c:	00008067          	ret
    80005010:	0104b903          	ld	s2,16(s1)
    80005014:	fffff097          	auipc	ra,0xfffff
    80005018:	87c080e7          	jalr	-1924(ra) # 80003890 <mycpu>
    8000501c:	faa91ce3          	bne	s2,a0,80004fd4 <acquire+0x58>
    80005020:	00001517          	auipc	a0,0x1
    80005024:	43850513          	addi	a0,a0,1080 # 80006458 <digits+0x20>
    80005028:	fffff097          	auipc	ra,0xfffff
    8000502c:	224080e7          	jalr	548(ra) # 8000424c <panic>
    80005030:	00195913          	srli	s2,s2,0x1
    80005034:	fffff097          	auipc	ra,0xfffff
    80005038:	85c080e7          	jalr	-1956(ra) # 80003890 <mycpu>
    8000503c:	00197913          	andi	s2,s2,1
    80005040:	07252e23          	sw	s2,124(a0)
    80005044:	f75ff06f          	j	80004fb8 <acquire+0x3c>

0000000080005048 <release>:
    80005048:	fe010113          	addi	sp,sp,-32
    8000504c:	00813823          	sd	s0,16(sp)
    80005050:	00113c23          	sd	ra,24(sp)
    80005054:	00913423          	sd	s1,8(sp)
    80005058:	01213023          	sd	s2,0(sp)
    8000505c:	02010413          	addi	s0,sp,32
    80005060:	00052783          	lw	a5,0(a0)
    80005064:	00079a63          	bnez	a5,80005078 <release+0x30>
    80005068:	00001517          	auipc	a0,0x1
    8000506c:	3f850513          	addi	a0,a0,1016 # 80006460 <digits+0x28>
    80005070:	fffff097          	auipc	ra,0xfffff
    80005074:	1dc080e7          	jalr	476(ra) # 8000424c <panic>
    80005078:	01053903          	ld	s2,16(a0)
    8000507c:	00050493          	mv	s1,a0
    80005080:	fffff097          	auipc	ra,0xfffff
    80005084:	810080e7          	jalr	-2032(ra) # 80003890 <mycpu>
    80005088:	fea910e3          	bne	s2,a0,80005068 <release+0x20>
    8000508c:	0004b823          	sd	zero,16(s1)
    80005090:	0ff0000f          	fence
    80005094:	0f50000f          	fence	iorw,ow
    80005098:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000509c:	ffffe097          	auipc	ra,0xffffe
    800050a0:	7f4080e7          	jalr	2036(ra) # 80003890 <mycpu>
    800050a4:	100027f3          	csrr	a5,sstatus
    800050a8:	0027f793          	andi	a5,a5,2
    800050ac:	04079a63          	bnez	a5,80005100 <release+0xb8>
    800050b0:	07852783          	lw	a5,120(a0)
    800050b4:	02f05e63          	blez	a5,800050f0 <release+0xa8>
    800050b8:	fff7871b          	addiw	a4,a5,-1
    800050bc:	06e52c23          	sw	a4,120(a0)
    800050c0:	00071c63          	bnez	a4,800050d8 <release+0x90>
    800050c4:	07c52783          	lw	a5,124(a0)
    800050c8:	00078863          	beqz	a5,800050d8 <release+0x90>
    800050cc:	100027f3          	csrr	a5,sstatus
    800050d0:	0027e793          	ori	a5,a5,2
    800050d4:	10079073          	csrw	sstatus,a5
    800050d8:	01813083          	ld	ra,24(sp)
    800050dc:	01013403          	ld	s0,16(sp)
    800050e0:	00813483          	ld	s1,8(sp)
    800050e4:	00013903          	ld	s2,0(sp)
    800050e8:	02010113          	addi	sp,sp,32
    800050ec:	00008067          	ret
    800050f0:	00001517          	auipc	a0,0x1
    800050f4:	39050513          	addi	a0,a0,912 # 80006480 <digits+0x48>
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	154080e7          	jalr	340(ra) # 8000424c <panic>
    80005100:	00001517          	auipc	a0,0x1
    80005104:	36850513          	addi	a0,a0,872 # 80006468 <digits+0x30>
    80005108:	fffff097          	auipc	ra,0xfffff
    8000510c:	144080e7          	jalr	324(ra) # 8000424c <panic>

0000000080005110 <holding>:
    80005110:	00052783          	lw	a5,0(a0)
    80005114:	00079663          	bnez	a5,80005120 <holding+0x10>
    80005118:	00000513          	li	a0,0
    8000511c:	00008067          	ret
    80005120:	fe010113          	addi	sp,sp,-32
    80005124:	00813823          	sd	s0,16(sp)
    80005128:	00913423          	sd	s1,8(sp)
    8000512c:	00113c23          	sd	ra,24(sp)
    80005130:	02010413          	addi	s0,sp,32
    80005134:	01053483          	ld	s1,16(a0)
    80005138:	ffffe097          	auipc	ra,0xffffe
    8000513c:	758080e7          	jalr	1880(ra) # 80003890 <mycpu>
    80005140:	01813083          	ld	ra,24(sp)
    80005144:	01013403          	ld	s0,16(sp)
    80005148:	40a48533          	sub	a0,s1,a0
    8000514c:	00153513          	seqz	a0,a0
    80005150:	00813483          	ld	s1,8(sp)
    80005154:	02010113          	addi	sp,sp,32
    80005158:	00008067          	ret

000000008000515c <push_off>:
    8000515c:	fe010113          	addi	sp,sp,-32
    80005160:	00813823          	sd	s0,16(sp)
    80005164:	00113c23          	sd	ra,24(sp)
    80005168:	00913423          	sd	s1,8(sp)
    8000516c:	02010413          	addi	s0,sp,32
    80005170:	100024f3          	csrr	s1,sstatus
    80005174:	100027f3          	csrr	a5,sstatus
    80005178:	ffd7f793          	andi	a5,a5,-3
    8000517c:	10079073          	csrw	sstatus,a5
    80005180:	ffffe097          	auipc	ra,0xffffe
    80005184:	710080e7          	jalr	1808(ra) # 80003890 <mycpu>
    80005188:	07852783          	lw	a5,120(a0)
    8000518c:	02078663          	beqz	a5,800051b8 <push_off+0x5c>
    80005190:	ffffe097          	auipc	ra,0xffffe
    80005194:	700080e7          	jalr	1792(ra) # 80003890 <mycpu>
    80005198:	07852783          	lw	a5,120(a0)
    8000519c:	01813083          	ld	ra,24(sp)
    800051a0:	01013403          	ld	s0,16(sp)
    800051a4:	0017879b          	addiw	a5,a5,1
    800051a8:	06f52c23          	sw	a5,120(a0)
    800051ac:	00813483          	ld	s1,8(sp)
    800051b0:	02010113          	addi	sp,sp,32
    800051b4:	00008067          	ret
    800051b8:	0014d493          	srli	s1,s1,0x1
    800051bc:	ffffe097          	auipc	ra,0xffffe
    800051c0:	6d4080e7          	jalr	1748(ra) # 80003890 <mycpu>
    800051c4:	0014f493          	andi	s1,s1,1
    800051c8:	06952e23          	sw	s1,124(a0)
    800051cc:	fc5ff06f          	j	80005190 <push_off+0x34>

00000000800051d0 <pop_off>:
    800051d0:	ff010113          	addi	sp,sp,-16
    800051d4:	00813023          	sd	s0,0(sp)
    800051d8:	00113423          	sd	ra,8(sp)
    800051dc:	01010413          	addi	s0,sp,16
    800051e0:	ffffe097          	auipc	ra,0xffffe
    800051e4:	6b0080e7          	jalr	1712(ra) # 80003890 <mycpu>
    800051e8:	100027f3          	csrr	a5,sstatus
    800051ec:	0027f793          	andi	a5,a5,2
    800051f0:	04079663          	bnez	a5,8000523c <pop_off+0x6c>
    800051f4:	07852783          	lw	a5,120(a0)
    800051f8:	02f05a63          	blez	a5,8000522c <pop_off+0x5c>
    800051fc:	fff7871b          	addiw	a4,a5,-1
    80005200:	06e52c23          	sw	a4,120(a0)
    80005204:	00071c63          	bnez	a4,8000521c <pop_off+0x4c>
    80005208:	07c52783          	lw	a5,124(a0)
    8000520c:	00078863          	beqz	a5,8000521c <pop_off+0x4c>
    80005210:	100027f3          	csrr	a5,sstatus
    80005214:	0027e793          	ori	a5,a5,2
    80005218:	10079073          	csrw	sstatus,a5
    8000521c:	00813083          	ld	ra,8(sp)
    80005220:	00013403          	ld	s0,0(sp)
    80005224:	01010113          	addi	sp,sp,16
    80005228:	00008067          	ret
    8000522c:	00001517          	auipc	a0,0x1
    80005230:	25450513          	addi	a0,a0,596 # 80006480 <digits+0x48>
    80005234:	fffff097          	auipc	ra,0xfffff
    80005238:	018080e7          	jalr	24(ra) # 8000424c <panic>
    8000523c:	00001517          	auipc	a0,0x1
    80005240:	22c50513          	addi	a0,a0,556 # 80006468 <digits+0x30>
    80005244:	fffff097          	auipc	ra,0xfffff
    80005248:	008080e7          	jalr	8(ra) # 8000424c <panic>

000000008000524c <push_on>:
    8000524c:	fe010113          	addi	sp,sp,-32
    80005250:	00813823          	sd	s0,16(sp)
    80005254:	00113c23          	sd	ra,24(sp)
    80005258:	00913423          	sd	s1,8(sp)
    8000525c:	02010413          	addi	s0,sp,32
    80005260:	100024f3          	csrr	s1,sstatus
    80005264:	100027f3          	csrr	a5,sstatus
    80005268:	0027e793          	ori	a5,a5,2
    8000526c:	10079073          	csrw	sstatus,a5
    80005270:	ffffe097          	auipc	ra,0xffffe
    80005274:	620080e7          	jalr	1568(ra) # 80003890 <mycpu>
    80005278:	07852783          	lw	a5,120(a0)
    8000527c:	02078663          	beqz	a5,800052a8 <push_on+0x5c>
    80005280:	ffffe097          	auipc	ra,0xffffe
    80005284:	610080e7          	jalr	1552(ra) # 80003890 <mycpu>
    80005288:	07852783          	lw	a5,120(a0)
    8000528c:	01813083          	ld	ra,24(sp)
    80005290:	01013403          	ld	s0,16(sp)
    80005294:	0017879b          	addiw	a5,a5,1
    80005298:	06f52c23          	sw	a5,120(a0)
    8000529c:	00813483          	ld	s1,8(sp)
    800052a0:	02010113          	addi	sp,sp,32
    800052a4:	00008067          	ret
    800052a8:	0014d493          	srli	s1,s1,0x1
    800052ac:	ffffe097          	auipc	ra,0xffffe
    800052b0:	5e4080e7          	jalr	1508(ra) # 80003890 <mycpu>
    800052b4:	0014f493          	andi	s1,s1,1
    800052b8:	06952e23          	sw	s1,124(a0)
    800052bc:	fc5ff06f          	j	80005280 <push_on+0x34>

00000000800052c0 <pop_on>:
    800052c0:	ff010113          	addi	sp,sp,-16
    800052c4:	00813023          	sd	s0,0(sp)
    800052c8:	00113423          	sd	ra,8(sp)
    800052cc:	01010413          	addi	s0,sp,16
    800052d0:	ffffe097          	auipc	ra,0xffffe
    800052d4:	5c0080e7          	jalr	1472(ra) # 80003890 <mycpu>
    800052d8:	100027f3          	csrr	a5,sstatus
    800052dc:	0027f793          	andi	a5,a5,2
    800052e0:	04078463          	beqz	a5,80005328 <pop_on+0x68>
    800052e4:	07852783          	lw	a5,120(a0)
    800052e8:	02f05863          	blez	a5,80005318 <pop_on+0x58>
    800052ec:	fff7879b          	addiw	a5,a5,-1
    800052f0:	06f52c23          	sw	a5,120(a0)
    800052f4:	07853783          	ld	a5,120(a0)
    800052f8:	00079863          	bnez	a5,80005308 <pop_on+0x48>
    800052fc:	100027f3          	csrr	a5,sstatus
    80005300:	ffd7f793          	andi	a5,a5,-3
    80005304:	10079073          	csrw	sstatus,a5
    80005308:	00813083          	ld	ra,8(sp)
    8000530c:	00013403          	ld	s0,0(sp)
    80005310:	01010113          	addi	sp,sp,16
    80005314:	00008067          	ret
    80005318:	00001517          	auipc	a0,0x1
    8000531c:	19050513          	addi	a0,a0,400 # 800064a8 <digits+0x70>
    80005320:	fffff097          	auipc	ra,0xfffff
    80005324:	f2c080e7          	jalr	-212(ra) # 8000424c <panic>
    80005328:	00001517          	auipc	a0,0x1
    8000532c:	16050513          	addi	a0,a0,352 # 80006488 <digits+0x50>
    80005330:	fffff097          	auipc	ra,0xfffff
    80005334:	f1c080e7          	jalr	-228(ra) # 8000424c <panic>

0000000080005338 <__memset>:
    80005338:	ff010113          	addi	sp,sp,-16
    8000533c:	00813423          	sd	s0,8(sp)
    80005340:	01010413          	addi	s0,sp,16
    80005344:	1a060e63          	beqz	a2,80005500 <__memset+0x1c8>
    80005348:	40a007b3          	neg	a5,a0
    8000534c:	0077f793          	andi	a5,a5,7
    80005350:	00778693          	addi	a3,a5,7
    80005354:	00b00813          	li	a6,11
    80005358:	0ff5f593          	andi	a1,a1,255
    8000535c:	fff6071b          	addiw	a4,a2,-1
    80005360:	1b06e663          	bltu	a3,a6,8000550c <__memset+0x1d4>
    80005364:	1cd76463          	bltu	a4,a3,8000552c <__memset+0x1f4>
    80005368:	1a078e63          	beqz	a5,80005524 <__memset+0x1ec>
    8000536c:	00b50023          	sb	a1,0(a0)
    80005370:	00100713          	li	a4,1
    80005374:	1ae78463          	beq	a5,a4,8000551c <__memset+0x1e4>
    80005378:	00b500a3          	sb	a1,1(a0)
    8000537c:	00200713          	li	a4,2
    80005380:	1ae78a63          	beq	a5,a4,80005534 <__memset+0x1fc>
    80005384:	00b50123          	sb	a1,2(a0)
    80005388:	00300713          	li	a4,3
    8000538c:	18e78463          	beq	a5,a4,80005514 <__memset+0x1dc>
    80005390:	00b501a3          	sb	a1,3(a0)
    80005394:	00400713          	li	a4,4
    80005398:	1ae78263          	beq	a5,a4,8000553c <__memset+0x204>
    8000539c:	00b50223          	sb	a1,4(a0)
    800053a0:	00500713          	li	a4,5
    800053a4:	1ae78063          	beq	a5,a4,80005544 <__memset+0x20c>
    800053a8:	00b502a3          	sb	a1,5(a0)
    800053ac:	00700713          	li	a4,7
    800053b0:	18e79e63          	bne	a5,a4,8000554c <__memset+0x214>
    800053b4:	00b50323          	sb	a1,6(a0)
    800053b8:	00700e93          	li	t4,7
    800053bc:	00859713          	slli	a4,a1,0x8
    800053c0:	00e5e733          	or	a4,a1,a4
    800053c4:	01059e13          	slli	t3,a1,0x10
    800053c8:	01c76e33          	or	t3,a4,t3
    800053cc:	01859313          	slli	t1,a1,0x18
    800053d0:	006e6333          	or	t1,t3,t1
    800053d4:	02059893          	slli	a7,a1,0x20
    800053d8:	40f60e3b          	subw	t3,a2,a5
    800053dc:	011368b3          	or	a7,t1,a7
    800053e0:	02859813          	slli	a6,a1,0x28
    800053e4:	0108e833          	or	a6,a7,a6
    800053e8:	03059693          	slli	a3,a1,0x30
    800053ec:	003e589b          	srliw	a7,t3,0x3
    800053f0:	00d866b3          	or	a3,a6,a3
    800053f4:	03859713          	slli	a4,a1,0x38
    800053f8:	00389813          	slli	a6,a7,0x3
    800053fc:	00f507b3          	add	a5,a0,a5
    80005400:	00e6e733          	or	a4,a3,a4
    80005404:	000e089b          	sext.w	a7,t3
    80005408:	00f806b3          	add	a3,a6,a5
    8000540c:	00e7b023          	sd	a4,0(a5)
    80005410:	00878793          	addi	a5,a5,8
    80005414:	fed79ce3          	bne	a5,a3,8000540c <__memset+0xd4>
    80005418:	ff8e7793          	andi	a5,t3,-8
    8000541c:	0007871b          	sext.w	a4,a5
    80005420:	01d787bb          	addw	a5,a5,t4
    80005424:	0ce88e63          	beq	a7,a4,80005500 <__memset+0x1c8>
    80005428:	00f50733          	add	a4,a0,a5
    8000542c:	00b70023          	sb	a1,0(a4)
    80005430:	0017871b          	addiw	a4,a5,1
    80005434:	0cc77663          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    80005438:	00e50733          	add	a4,a0,a4
    8000543c:	00b70023          	sb	a1,0(a4)
    80005440:	0027871b          	addiw	a4,a5,2
    80005444:	0ac77e63          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    80005448:	00e50733          	add	a4,a0,a4
    8000544c:	00b70023          	sb	a1,0(a4)
    80005450:	0037871b          	addiw	a4,a5,3
    80005454:	0ac77663          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    80005458:	00e50733          	add	a4,a0,a4
    8000545c:	00b70023          	sb	a1,0(a4)
    80005460:	0047871b          	addiw	a4,a5,4
    80005464:	08c77e63          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    80005468:	00e50733          	add	a4,a0,a4
    8000546c:	00b70023          	sb	a1,0(a4)
    80005470:	0057871b          	addiw	a4,a5,5
    80005474:	08c77663          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    80005478:	00e50733          	add	a4,a0,a4
    8000547c:	00b70023          	sb	a1,0(a4)
    80005480:	0067871b          	addiw	a4,a5,6
    80005484:	06c77e63          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    80005488:	00e50733          	add	a4,a0,a4
    8000548c:	00b70023          	sb	a1,0(a4)
    80005490:	0077871b          	addiw	a4,a5,7
    80005494:	06c77663          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    80005498:	00e50733          	add	a4,a0,a4
    8000549c:	00b70023          	sb	a1,0(a4)
    800054a0:	0087871b          	addiw	a4,a5,8
    800054a4:	04c77e63          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    800054a8:	00e50733          	add	a4,a0,a4
    800054ac:	00b70023          	sb	a1,0(a4)
    800054b0:	0097871b          	addiw	a4,a5,9
    800054b4:	04c77663          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    800054b8:	00e50733          	add	a4,a0,a4
    800054bc:	00b70023          	sb	a1,0(a4)
    800054c0:	00a7871b          	addiw	a4,a5,10
    800054c4:	02c77e63          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    800054c8:	00e50733          	add	a4,a0,a4
    800054cc:	00b70023          	sb	a1,0(a4)
    800054d0:	00b7871b          	addiw	a4,a5,11
    800054d4:	02c77663          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    800054d8:	00e50733          	add	a4,a0,a4
    800054dc:	00b70023          	sb	a1,0(a4)
    800054e0:	00c7871b          	addiw	a4,a5,12
    800054e4:	00c77e63          	bgeu	a4,a2,80005500 <__memset+0x1c8>
    800054e8:	00e50733          	add	a4,a0,a4
    800054ec:	00b70023          	sb	a1,0(a4)
    800054f0:	00d7879b          	addiw	a5,a5,13
    800054f4:	00c7f663          	bgeu	a5,a2,80005500 <__memset+0x1c8>
    800054f8:	00f507b3          	add	a5,a0,a5
    800054fc:	00b78023          	sb	a1,0(a5)
    80005500:	00813403          	ld	s0,8(sp)
    80005504:	01010113          	addi	sp,sp,16
    80005508:	00008067          	ret
    8000550c:	00b00693          	li	a3,11
    80005510:	e55ff06f          	j	80005364 <__memset+0x2c>
    80005514:	00300e93          	li	t4,3
    80005518:	ea5ff06f          	j	800053bc <__memset+0x84>
    8000551c:	00100e93          	li	t4,1
    80005520:	e9dff06f          	j	800053bc <__memset+0x84>
    80005524:	00000e93          	li	t4,0
    80005528:	e95ff06f          	j	800053bc <__memset+0x84>
    8000552c:	00000793          	li	a5,0
    80005530:	ef9ff06f          	j	80005428 <__memset+0xf0>
    80005534:	00200e93          	li	t4,2
    80005538:	e85ff06f          	j	800053bc <__memset+0x84>
    8000553c:	00400e93          	li	t4,4
    80005540:	e7dff06f          	j	800053bc <__memset+0x84>
    80005544:	00500e93          	li	t4,5
    80005548:	e75ff06f          	j	800053bc <__memset+0x84>
    8000554c:	00600e93          	li	t4,6
    80005550:	e6dff06f          	j	800053bc <__memset+0x84>

0000000080005554 <__memmove>:
    80005554:	ff010113          	addi	sp,sp,-16
    80005558:	00813423          	sd	s0,8(sp)
    8000555c:	01010413          	addi	s0,sp,16
    80005560:	0e060863          	beqz	a2,80005650 <__memmove+0xfc>
    80005564:	fff6069b          	addiw	a3,a2,-1
    80005568:	0006881b          	sext.w	a6,a3
    8000556c:	0ea5e863          	bltu	a1,a0,8000565c <__memmove+0x108>
    80005570:	00758713          	addi	a4,a1,7
    80005574:	00a5e7b3          	or	a5,a1,a0
    80005578:	40a70733          	sub	a4,a4,a0
    8000557c:	0077f793          	andi	a5,a5,7
    80005580:	00f73713          	sltiu	a4,a4,15
    80005584:	00174713          	xori	a4,a4,1
    80005588:	0017b793          	seqz	a5,a5
    8000558c:	00e7f7b3          	and	a5,a5,a4
    80005590:	10078863          	beqz	a5,800056a0 <__memmove+0x14c>
    80005594:	00900793          	li	a5,9
    80005598:	1107f463          	bgeu	a5,a6,800056a0 <__memmove+0x14c>
    8000559c:	0036581b          	srliw	a6,a2,0x3
    800055a0:	fff8081b          	addiw	a6,a6,-1
    800055a4:	02081813          	slli	a6,a6,0x20
    800055a8:	01d85893          	srli	a7,a6,0x1d
    800055ac:	00858813          	addi	a6,a1,8
    800055b0:	00058793          	mv	a5,a1
    800055b4:	00050713          	mv	a4,a0
    800055b8:	01088833          	add	a6,a7,a6
    800055bc:	0007b883          	ld	a7,0(a5)
    800055c0:	00878793          	addi	a5,a5,8
    800055c4:	00870713          	addi	a4,a4,8
    800055c8:	ff173c23          	sd	a7,-8(a4)
    800055cc:	ff0798e3          	bne	a5,a6,800055bc <__memmove+0x68>
    800055d0:	ff867713          	andi	a4,a2,-8
    800055d4:	02071793          	slli	a5,a4,0x20
    800055d8:	0207d793          	srli	a5,a5,0x20
    800055dc:	00f585b3          	add	a1,a1,a5
    800055e0:	40e686bb          	subw	a3,a3,a4
    800055e4:	00f507b3          	add	a5,a0,a5
    800055e8:	06e60463          	beq	a2,a4,80005650 <__memmove+0xfc>
    800055ec:	0005c703          	lbu	a4,0(a1)
    800055f0:	00e78023          	sb	a4,0(a5)
    800055f4:	04068e63          	beqz	a3,80005650 <__memmove+0xfc>
    800055f8:	0015c603          	lbu	a2,1(a1)
    800055fc:	00100713          	li	a4,1
    80005600:	00c780a3          	sb	a2,1(a5)
    80005604:	04e68663          	beq	a3,a4,80005650 <__memmove+0xfc>
    80005608:	0025c603          	lbu	a2,2(a1)
    8000560c:	00200713          	li	a4,2
    80005610:	00c78123          	sb	a2,2(a5)
    80005614:	02e68e63          	beq	a3,a4,80005650 <__memmove+0xfc>
    80005618:	0035c603          	lbu	a2,3(a1)
    8000561c:	00300713          	li	a4,3
    80005620:	00c781a3          	sb	a2,3(a5)
    80005624:	02e68663          	beq	a3,a4,80005650 <__memmove+0xfc>
    80005628:	0045c603          	lbu	a2,4(a1)
    8000562c:	00400713          	li	a4,4
    80005630:	00c78223          	sb	a2,4(a5)
    80005634:	00e68e63          	beq	a3,a4,80005650 <__memmove+0xfc>
    80005638:	0055c603          	lbu	a2,5(a1)
    8000563c:	00500713          	li	a4,5
    80005640:	00c782a3          	sb	a2,5(a5)
    80005644:	00e68663          	beq	a3,a4,80005650 <__memmove+0xfc>
    80005648:	0065c703          	lbu	a4,6(a1)
    8000564c:	00e78323          	sb	a4,6(a5)
    80005650:	00813403          	ld	s0,8(sp)
    80005654:	01010113          	addi	sp,sp,16
    80005658:	00008067          	ret
    8000565c:	02061713          	slli	a4,a2,0x20
    80005660:	02075713          	srli	a4,a4,0x20
    80005664:	00e587b3          	add	a5,a1,a4
    80005668:	f0f574e3          	bgeu	a0,a5,80005570 <__memmove+0x1c>
    8000566c:	02069613          	slli	a2,a3,0x20
    80005670:	02065613          	srli	a2,a2,0x20
    80005674:	fff64613          	not	a2,a2
    80005678:	00e50733          	add	a4,a0,a4
    8000567c:	00c78633          	add	a2,a5,a2
    80005680:	fff7c683          	lbu	a3,-1(a5)
    80005684:	fff78793          	addi	a5,a5,-1
    80005688:	fff70713          	addi	a4,a4,-1
    8000568c:	00d70023          	sb	a3,0(a4)
    80005690:	fec798e3          	bne	a5,a2,80005680 <__memmove+0x12c>
    80005694:	00813403          	ld	s0,8(sp)
    80005698:	01010113          	addi	sp,sp,16
    8000569c:	00008067          	ret
    800056a0:	02069713          	slli	a4,a3,0x20
    800056a4:	02075713          	srli	a4,a4,0x20
    800056a8:	00170713          	addi	a4,a4,1
    800056ac:	00e50733          	add	a4,a0,a4
    800056b0:	00050793          	mv	a5,a0
    800056b4:	0005c683          	lbu	a3,0(a1)
    800056b8:	00178793          	addi	a5,a5,1
    800056bc:	00158593          	addi	a1,a1,1
    800056c0:	fed78fa3          	sb	a3,-1(a5)
    800056c4:	fee798e3          	bne	a5,a4,800056b4 <__memmove+0x160>
    800056c8:	f89ff06f          	j	80005650 <__memmove+0xfc>

00000000800056cc <__putc>:
    800056cc:	fe010113          	addi	sp,sp,-32
    800056d0:	00813823          	sd	s0,16(sp)
    800056d4:	00113c23          	sd	ra,24(sp)
    800056d8:	02010413          	addi	s0,sp,32
    800056dc:	00050793          	mv	a5,a0
    800056e0:	fef40593          	addi	a1,s0,-17
    800056e4:	00100613          	li	a2,1
    800056e8:	00000513          	li	a0,0
    800056ec:	fef407a3          	sb	a5,-17(s0)
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	b3c080e7          	jalr	-1220(ra) # 8000422c <console_write>
    800056f8:	01813083          	ld	ra,24(sp)
    800056fc:	01013403          	ld	s0,16(sp)
    80005700:	02010113          	addi	sp,sp,32
    80005704:	00008067          	ret

0000000080005708 <__getc>:
    80005708:	fe010113          	addi	sp,sp,-32
    8000570c:	00813823          	sd	s0,16(sp)
    80005710:	00113c23          	sd	ra,24(sp)
    80005714:	02010413          	addi	s0,sp,32
    80005718:	fe840593          	addi	a1,s0,-24
    8000571c:	00100613          	li	a2,1
    80005720:	00000513          	li	a0,0
    80005724:	fffff097          	auipc	ra,0xfffff
    80005728:	ae8080e7          	jalr	-1304(ra) # 8000420c <console_read>
    8000572c:	fe844503          	lbu	a0,-24(s0)
    80005730:	01813083          	ld	ra,24(sp)
    80005734:	01013403          	ld	s0,16(sp)
    80005738:	02010113          	addi	sp,sp,32
    8000573c:	00008067          	ret

0000000080005740 <console_handler>:
    80005740:	fe010113          	addi	sp,sp,-32
    80005744:	00813823          	sd	s0,16(sp)
    80005748:	00113c23          	sd	ra,24(sp)
    8000574c:	00913423          	sd	s1,8(sp)
    80005750:	02010413          	addi	s0,sp,32
    80005754:	14202773          	csrr	a4,scause
    80005758:	100027f3          	csrr	a5,sstatus
    8000575c:	0027f793          	andi	a5,a5,2
    80005760:	06079e63          	bnez	a5,800057dc <console_handler+0x9c>
    80005764:	00074c63          	bltz	a4,8000577c <console_handler+0x3c>
    80005768:	01813083          	ld	ra,24(sp)
    8000576c:	01013403          	ld	s0,16(sp)
    80005770:	00813483          	ld	s1,8(sp)
    80005774:	02010113          	addi	sp,sp,32
    80005778:	00008067          	ret
    8000577c:	0ff77713          	andi	a4,a4,255
    80005780:	00900793          	li	a5,9
    80005784:	fef712e3          	bne	a4,a5,80005768 <console_handler+0x28>
    80005788:	ffffe097          	auipc	ra,0xffffe
    8000578c:	6dc080e7          	jalr	1756(ra) # 80003e64 <plic_claim>
    80005790:	00a00793          	li	a5,10
    80005794:	00050493          	mv	s1,a0
    80005798:	02f50c63          	beq	a0,a5,800057d0 <console_handler+0x90>
    8000579c:	fc0506e3          	beqz	a0,80005768 <console_handler+0x28>
    800057a0:	00050593          	mv	a1,a0
    800057a4:	00001517          	auipc	a0,0x1
    800057a8:	c0c50513          	addi	a0,a0,-1012 # 800063b0 <_ZZ14__print_uint64mE6digits+0x218>
    800057ac:	fffff097          	auipc	ra,0xfffff
    800057b0:	afc080e7          	jalr	-1284(ra) # 800042a8 <__printf>
    800057b4:	01013403          	ld	s0,16(sp)
    800057b8:	01813083          	ld	ra,24(sp)
    800057bc:	00048513          	mv	a0,s1
    800057c0:	00813483          	ld	s1,8(sp)
    800057c4:	02010113          	addi	sp,sp,32
    800057c8:	ffffe317          	auipc	t1,0xffffe
    800057cc:	6d430067          	jr	1748(t1) # 80003e9c <plic_complete>
    800057d0:	fffff097          	auipc	ra,0xfffff
    800057d4:	3e0080e7          	jalr	992(ra) # 80004bb0 <uartintr>
    800057d8:	fddff06f          	j	800057b4 <console_handler+0x74>
    800057dc:	00001517          	auipc	a0,0x1
    800057e0:	cd450513          	addi	a0,a0,-812 # 800064b0 <digits+0x78>
    800057e4:	fffff097          	auipc	ra,0xfffff
    800057e8:	a68080e7          	jalr	-1432(ra) # 8000424c <panic>
	...
