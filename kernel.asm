
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	3c013103          	ld	sp,960(sp) # 800073c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5b0030ef          	jal	ra,800035cc <start>

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

0000000080001078 <_ZN5RiscV13pushRegistersEv>:
.global _ZN5RiscV13pushRegistersEv
.type _ZN5RiscV13pushRegistersEv, @function

_ZN5RiscV13pushRegistersEv:
    addi sp, sp, -256
    80001078:	f0010113          	addi	sp,sp,-256
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8 (sp)
    .endr
    8000107c:	00313c23          	sd	gp,24(sp)
    80001080:	02413023          	sd	tp,32(sp)
    80001084:	02513423          	sd	t0,40(sp)
    80001088:	02613823          	sd	t1,48(sp)
    8000108c:	02713c23          	sd	t2,56(sp)
    80001090:	04813023          	sd	s0,64(sp)
    80001094:	04913423          	sd	s1,72(sp)
    80001098:	04a13823          	sd	a0,80(sp)
    8000109c:	04b13c23          	sd	a1,88(sp)
    800010a0:	06c13023          	sd	a2,96(sp)
    800010a4:	06d13423          	sd	a3,104(sp)
    800010a8:	06e13823          	sd	a4,112(sp)
    800010ac:	06f13c23          	sd	a5,120(sp)
    800010b0:	09013023          	sd	a6,128(sp)
    800010b4:	09113423          	sd	a7,136(sp)
    800010b8:	09213823          	sd	s2,144(sp)
    800010bc:	09313c23          	sd	s3,152(sp)
    800010c0:	0b413023          	sd	s4,160(sp)
    800010c4:	0b513423          	sd	s5,168(sp)
    800010c8:	0b613823          	sd	s6,176(sp)
    800010cc:	0b713c23          	sd	s7,184(sp)
    800010d0:	0d813023          	sd	s8,192(sp)
    800010d4:	0d913423          	sd	s9,200(sp)
    800010d8:	0da13823          	sd	s10,208(sp)
    800010dc:	0db13c23          	sd	s11,216(sp)
    800010e0:	0fc13023          	sd	t3,224(sp)
    800010e4:	0fd13423          	sd	t4,232(sp)
    800010e8:	0fe13823          	sd	t5,240(sp)
    800010ec:	0ff13c23          	sd	t6,248(sp)
    ret
    800010f0:	00008067          	ret

00000000800010f4 <_ZN5RiscV12popRegistersEv>:
.type _ZN5RiscV12popRegistersEv, @function

_ZN5RiscV12popRegistersEv:
    .irp i, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8 (sp)
    .endr
    800010f4:	01813183          	ld	gp,24(sp)
    800010f8:	02013203          	ld	tp,32(sp)
    800010fc:	02813283          	ld	t0,40(sp)
    80001100:	03013303          	ld	t1,48(sp)
    80001104:	03813383          	ld	t2,56(sp)
    80001108:	04013403          	ld	s0,64(sp)
    8000110c:	04813483          	ld	s1,72(sp)
    80001110:	05013503          	ld	a0,80(sp)
    80001114:	05813583          	ld	a1,88(sp)
    80001118:	06013603          	ld	a2,96(sp)
    8000111c:	06813683          	ld	a3,104(sp)
    80001120:	07013703          	ld	a4,112(sp)
    80001124:	07813783          	ld	a5,120(sp)
    80001128:	08013803          	ld	a6,128(sp)
    8000112c:	08813883          	ld	a7,136(sp)
    80001130:	09013903          	ld	s2,144(sp)
    80001134:	09813983          	ld	s3,152(sp)
    80001138:	0a013a03          	ld	s4,160(sp)
    8000113c:	0a813a83          	ld	s5,168(sp)
    80001140:	0b013b03          	ld	s6,176(sp)
    80001144:	0b813b83          	ld	s7,184(sp)
    80001148:	0c013c03          	ld	s8,192(sp)
    8000114c:	0c813c83          	ld	s9,200(sp)
    80001150:	0d013d03          	ld	s10,208(sp)
    80001154:	0d813d83          	ld	s11,216(sp)
    80001158:	0e013e03          	ld	t3,224(sp)
    8000115c:	0e813e83          	ld	t4,232(sp)
    80001160:	0f013f03          	ld	t5,240(sp)
    80001164:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001168:	10010113          	addi	sp,sp,256
    8000116c:	00008067          	ret

0000000080001170 <_ZN6Kernel14supervisorTrapEv>:

.align 4
.global _ZN6Kernel14supervisorTrapEv
.type _ZN6Kernel14supervisorTrapEv, @function
_ZN6Kernel14supervisorTrapEv:
    addi sp, sp, -256
    80001170:	f0010113          	addi	sp,sp,-256
    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\i, \i * 8(sp)
    .endr
    80001174:	00013023          	sd	zero,0(sp)
    80001178:	00113423          	sd	ra,8(sp)
    8000117c:	00213823          	sd	sp,16(sp)
    80001180:	00313c23          	sd	gp,24(sp)
    80001184:	02413023          	sd	tp,32(sp)
    80001188:	02513423          	sd	t0,40(sp)
    8000118c:	02613823          	sd	t1,48(sp)
    80001190:	02713c23          	sd	t2,56(sp)
    80001194:	04813023          	sd	s0,64(sp)
    80001198:	04913423          	sd	s1,72(sp)
    8000119c:	04a13823          	sd	a0,80(sp)
    800011a0:	04b13c23          	sd	a1,88(sp)
    800011a4:	06c13023          	sd	a2,96(sp)
    800011a8:	06d13423          	sd	a3,104(sp)
    800011ac:	06e13823          	sd	a4,112(sp)
    800011b0:	06f13c23          	sd	a5,120(sp)
    800011b4:	09013023          	sd	a6,128(sp)
    800011b8:	09113423          	sd	a7,136(sp)
    800011bc:	09213823          	sd	s2,144(sp)
    800011c0:	09313c23          	sd	s3,152(sp)
    800011c4:	0b413023          	sd	s4,160(sp)
    800011c8:	0b513423          	sd	s5,168(sp)
    800011cc:	0b613823          	sd	s6,176(sp)
    800011d0:	0b713c23          	sd	s7,184(sp)
    800011d4:	0d813023          	sd	s8,192(sp)
    800011d8:	0d913423          	sd	s9,200(sp)
    800011dc:	0da13823          	sd	s10,208(sp)
    800011e0:	0db13c23          	sd	s11,216(sp)
    800011e4:	0fc13023          	sd	t3,224(sp)
    800011e8:	0fd13423          	sd	t4,232(sp)
    800011ec:	0fe13823          	sd	t5,240(sp)
    800011f0:	0ff13c23          	sd	t6,248(sp)

    call _ZN6Kernel21supervisorTrapHandlerEv
    800011f4:	370000ef          	jal	ra,80001564 <_ZN6Kernel21supervisorTrapHandlerEv>



    .irp i, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\i, \i * 8(sp)
    .endr
    800011f8:	00013003          	ld	zero,0(sp)
    800011fc:	00813083          	ld	ra,8(sp)
    80001200:	01013103          	ld	sp,16(sp)
    80001204:	01813183          	ld	gp,24(sp)
    80001208:	02013203          	ld	tp,32(sp)
    8000120c:	02813283          	ld	t0,40(sp)
    80001210:	03013303          	ld	t1,48(sp)
    80001214:	03813383          	ld	t2,56(sp)
    80001218:	04013403          	ld	s0,64(sp)
    8000121c:	04813483          	ld	s1,72(sp)
    80001220:	05013503          	ld	a0,80(sp)
    80001224:	05813583          	ld	a1,88(sp)
    80001228:	06013603          	ld	a2,96(sp)
    8000122c:	06813683          	ld	a3,104(sp)
    80001230:	07013703          	ld	a4,112(sp)
    80001234:	07813783          	ld	a5,120(sp)
    80001238:	08013803          	ld	a6,128(sp)
    8000123c:	08813883          	ld	a7,136(sp)
    80001240:	09013903          	ld	s2,144(sp)
    80001244:	09813983          	ld	s3,152(sp)
    80001248:	0a013a03          	ld	s4,160(sp)
    8000124c:	0a813a83          	ld	s5,168(sp)
    80001250:	0b013b03          	ld	s6,176(sp)
    80001254:	0b813b83          	ld	s7,184(sp)
    80001258:	0c013c03          	ld	s8,192(sp)
    8000125c:	0c813c83          	ld	s9,200(sp)
    80001260:	0d013d03          	ld	s10,208(sp)
    80001264:	0d813d83          	ld	s11,216(sp)
    80001268:	0e013e03          	ld	t3,224(sp)
    8000126c:	0e813e83          	ld	t4,232(sp)
    80001270:	0f013f03          	ld	t5,240(sp)
    80001274:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001278:	10010113          	addi	sp,sp,256

    sret
    8000127c:	10200073          	sret

0000000080001280 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001280:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001284:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001288:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000128c:	0085b103          	ld	sp,8(a1)

    80001290:	00008067          	ret

0000000080001294 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001294:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001298:	00b29a63          	bne	t0,a1,800012ac <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000129c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800012a0:	fe029ae3          	bnez	t0,80001294 <copy_and_swap>
    li a0, 0               # Set return to success.
    800012a4:	00000513          	li	a0,0
    jr ra                  # Return.
    800012a8:	00008067          	ret

00000000800012ac <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800012ac:	00100513          	li	a0,1
    800012b0:	00008067          	ret

00000000800012b4 <time_sleep>:

int sem_signal(sem_t id){
    return 0;
}*/

int time_sleep(time_t){
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00813423          	sd	s0,8(sp)
    800012bc:	01010413          	addi	s0,sp,16
    return 0;
}
    800012c0:	00000513          	li	a0,0
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_Z4getcv>:

char getc(){
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00113423          	sd	ra,8(sp)
    800012d8:	00813023          	sd	s0,0(sp)
    800012dc:	01010413          	addi	s0,sp,16
    return __getc();
    800012e0:	00004097          	auipc	ra,0x4
    800012e4:	3e8080e7          	jalr	1000(ra) # 800056c8 <__getc>
}
    800012e8:	00813083          	ld	ra,8(sp)
    800012ec:	00013403          	ld	s0,0(sp)
    800012f0:	01010113          	addi	sp,sp,16
    800012f4:	00008067          	ret

00000000800012f8 <_Z4putcc>:

void putc(char c) {
    800012f8:	ff010113          	addi	sp,sp,-16
    800012fc:	00113423          	sd	ra,8(sp)
    80001300:	00813023          	sd	s0,0(sp)
    80001304:	01010413          	addi	s0,sp,16
    __putc(c);
    80001308:	00004097          	auipc	ra,0x4
    8000130c:	384080e7          	jalr	900(ra) # 8000568c <__putc>
    80001310:	00813083          	ld	ra,8(sp)
    80001314:	00013403          	ld	s0,0(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_ZN6Kernel10initKernelEv>:
#include "../h/memory_allocator.hpp"
#include "../h/riscv.hpp"

extern void userMain();

void Kernel::initKernel() {
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00113423          	sd	ra,8(sp)
    80001328:	00813023          	sd	s0,0(sp)
    8000132c:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMem();
    80001330:	00001097          	auipc	ra,0x1
    80001334:	9b4080e7          	jalr	-1612(ra) # 80001ce4 <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    80001338:	00006797          	auipc	a5,0x6
    8000133c:	0907b783          	ld	a5,144(a5) # 800073c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    80001340:	10579073          	csrw	stvec,a5
}

inline void RiscV::setSstatus(uint64 mask) {
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001344:	00200793          	li	a5,2
    80001348:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(RiscV::SIE);
}
    8000134c:	00813083          	ld	ra,8(sp)
    80001350:	00013403          	ld	s0,0(sp)
    80001354:	01010113          	addi	sp,sp,16
    80001358:	00008067          	ret

000000008000135c <_ZN6Kernel15syscall_handlerEv>:
    //console_handler();*/
    //RiscV::writeSepc(sepc);
    return;
}

void Kernel::syscall_handler() {
    8000135c:	f7010113          	addi	sp,sp,-144
    80001360:	08113423          	sd	ra,136(sp)
    80001364:	08813023          	sd	s0,128(sp)
    80001368:	06913c23          	sd	s1,120(sp)
    8000136c:	09010413          	addi	s0,sp,144
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));
    80001370:	00088793          	mv	a5,a7
    80001374:	fcf43c23          	sd	a5,-40(s0)

    //volatile uint64 arg0, arg1, arg2, temp;
    switch(syscall_id) {
    80001378:	fd843783          	ld	a5,-40(s0)
    8000137c:	02400713          	li	a4,36
    80001380:	1cf76663          	bltu	a4,a5,8000154c <_ZN6Kernel15syscall_handlerEv+0x1f0>
    80001384:	00279793          	slli	a5,a5,0x2
    80001388:	00005717          	auipc	a4,0x5
    8000138c:	d0070713          	addi	a4,a4,-768 # 80006088 <CONSOLE_STATUS+0x78>
    80001390:	00e787b3          	add	a5,a5,a4
    80001394:	0007a783          	lw	a5,0(a5)
    80001398:	00e787b3          	add	a5,a5,a4
    8000139c:	00078067          	jr	a5


//0x01
inline void Kernel::mem_alloc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800013a0:	00050793          	mv	a5,a0
    800013a4:	f6f43823          	sd	a5,-144(s0)
    MemoryAllocator::allocate((size_t)arg0);
    800013a8:	f7043503          	ld	a0,-144(s0)
    800013ac:	00001097          	auipc	ra,0x1
    800013b0:	ad8080e7          	jalr	-1320(ra) # 80001e84 <_ZN15MemoryAllocator8allocateEm>
            asm volatile ("addi a0, zero, -1");
            __print_string("Error: Invalid syscall id!");
            break;
    }
    //RiscV::writeSepc(sepc);
}
    800013b4:	08813083          	ld	ra,136(sp)
    800013b8:	08013403          	ld	s0,128(sp)
    800013bc:	07813483          	ld	s1,120(sp)
    800013c0:	09010113          	addi	sp,sp,144
    800013c4:	00008067          	ret


//0x02
inline void Kernel::mem_free_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800013c8:	00050793          	mv	a5,a0
    800013cc:	f6f43c23          	sd	a5,-136(s0)
    MemoryAllocator::free((void*)arg0);
    800013d0:	f7843503          	ld	a0,-136(s0)
    800013d4:	00001097          	auipc	ra,0x1
    800013d8:	b3c080e7          	jalr	-1220(ra) # 80001f10 <_ZN15MemoryAllocator4freeEPv>
}
    800013dc:	fd9ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x11
inline void Kernel::thread_create_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800013e0:	00050793          	mv	a5,a0
    800013e4:	f8f43823          	sd	a5,-112(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    800013e8:	00058793          	mv	a5,a1
    800013ec:	f8f43c23          	sd	a5,-104(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    800013f0:	00060793          	mv	a5,a2
    800013f4:	faf43023          	sd	a5,-96(s0)

    *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);
    800013f8:	f9843503          	ld	a0,-104(s0)
    800013fc:	fa043583          	ld	a1,-96(s0)
    80001400:	f9043483          	ld	s1,-112(s0)
    80001404:	00000097          	auipc	ra,0x0
    80001408:	580080e7          	jalr	1408(ra) # 80001984 <_ZN3TCB9createTCBEPFvPvES0_>
    8000140c:	00a4b023          	sd	a0,0(s1)

    asm volatile("mv a0, zero");
    80001410:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    80001414:	f9043783          	ld	a5,-112(s0)
    80001418:	0007b783          	ld	a5,0(a5)
    8000141c:	f8079ce3          	bnez	a5,800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>
    80001420:	fff50513          	addi	a0,a0,-1
}
    80001424:	f91ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>



//0x12
inline void Kernel::thread_exit_handler() {
    TCB::running->setFinished(true);
    80001428:	00006797          	auipc	a5,0x6
    8000142c:	fa87b783          	ld	a5,-88(a5) # 800073d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001430:	0007b783          	ld	a5,0(a5)

    static TCB* createDeactivatedTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    80001434:	00100713          	li	a4,1
    80001438:	00e78c23          	sb	a4,24(a5)
    asm volatile ("addi a0, zero, 0");
    8000143c:	00000513          	li	a0,0
    //TCB::yield();
    TCB::dispatch();
    80001440:	00000097          	auipc	ra,0x0
    80001444:	65c080e7          	jalr	1628(ra) # 80001a9c <_ZN3TCB8dispatchEv>
}
    80001448:	f6dff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	650080e7          	jalr	1616(ra) # 80001a9c <_ZN3TCB8dispatchEv>
}
    80001454:	f61ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x14
inline void Kernel::thread_create_deactivated_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001458:	00050793          	mv	a5,a0
    8000145c:	faf43423          	sd	a5,-88(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001460:	00058793          	mv	a5,a1
    80001464:	faf43823          	sd	a5,-80(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    80001468:	00060793          	mv	a5,a2
    8000146c:	faf43c23          	sd	a5,-72(s0)

    *(TCB**)arg0 = TCB::createDeactivatedTCB((TCB::Body)arg1, (void*)arg2);
    80001470:	fb043503          	ld	a0,-80(s0)
    80001474:	fb843583          	ld	a1,-72(s0)
    80001478:	fa843483          	ld	s1,-88(s0)
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	594080e7          	jalr	1428(ra) # 80001a10 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
    80001484:	00a4b023          	sd	a0,0(s1)

    asm volatile("mv a0, zero");
    80001488:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    8000148c:	fa843783          	ld	a5,-88(s0)
    80001490:	0007b783          	ld	a5,0(a5)
    80001494:	f20790e3          	bnez	a5,800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>
    80001498:	fff50513          	addi	a0,a0,-1
}
    8000149c:	f19ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x021
inline void Kernel::sem_open_handler() {
    volatile uint64 arg0, arg1;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800014a0:	00050793          	mv	a5,a0
    800014a4:	fcf43023          	sd	a5,-64(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    800014a8:	00058793          	mv	a5,a1
    800014ac:	fcf43423          	sd	a5,-56(s0)

    *(Sem**)arg0 = Sem::createSem((unsigned)arg1);
    800014b0:	fc843503          	ld	a0,-56(s0)
    800014b4:	fc043483          	ld	s1,-64(s0)
    800014b8:	0005051b          	sext.w	a0,a0
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	b18080e7          	jalr	-1256(ra) # 80001fd4 <_ZN3Sem9createSemEj>
    800014c4:	00a4b023          	sd	a0,0(s1)

    asm volatile("mv a0, zero");
    800014c8:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    800014cc:	fc043783          	ld	a5,-64(s0)
    800014d0:	0007b783          	ld	a5,0(a5)
    800014d4:	ee0790e3          	bnez	a5,800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>
    800014d8:	fff50513          	addi	a0,a0,-1
}
    800014dc:	ed9ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x22
inline void Kernel::sem_close_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800014e0:	00050793          	mv	a5,a0
    800014e4:	fcf43823          	sd	a5,-48(s0)
    delete *(Sem**)arg0;
    800014e8:	fd043783          	ld	a5,-48(s0)
    800014ec:	0007b483          	ld	s1,0(a5)
    800014f0:	00048e63          	beqz	s1,8000150c <_ZN6Kernel15syscall_handlerEv+0x1b0>
    800014f4:	00048513          	mv	a0,s1
    800014f8:	00001097          	auipc	ra,0x1
    800014fc:	b24080e7          	jalr	-1244(ra) # 8000201c <_ZN3SemD1Ev>
    80001500:	00048513          	mv	a0,s1
    80001504:	00000097          	auipc	ra,0x0
    80001508:	668080e7          	jalr	1640(ra) # 80001b6c <_ZdlPv>

    asm volatile("mv a0, zero");
    8000150c:	00000513          	li	a0,0
}
    80001510:	ea5ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x23
inline void Kernel::sem_wait_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001514:	00050793          	mv	a5,a0
    80001518:	f8f43023          	sd	a5,-128(s0)
    (*((Sem**)arg0))->semWait();
    8000151c:	f8043783          	ld	a5,-128(s0)
    80001520:	0007b503          	ld	a0,0(a5)
    80001524:	00001097          	auipc	ra,0x1
    80001528:	b10080e7          	jalr	-1264(ra) # 80002034 <_ZN3Sem7semWaitEv>

    //asm volatile("mv a0, zero");
}
    8000152c:	e89ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>


//0x24
inline void Kernel::sem_signal_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001530:	00050793          	mv	a5,a0
    80001534:	f8f43423          	sd	a5,-120(s0)
    (*((Sem**)arg0))->semSignal();
    80001538:	f8843783          	ld	a5,-120(s0)
    8000153c:	0007b503          	ld	a0,0(a5)
    80001540:	00001097          	auipc	ra,0x1
    80001544:	b3c080e7          	jalr	-1220(ra) # 8000207c <_ZN3Sem9semSignalEv>
}
    80001548:	e6dff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>
            asm volatile ("addi a0, zero, -1");
    8000154c:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    80001550:	00005517          	auipc	a0,0x5
    80001554:	ad050513          	addi	a0,a0,-1328 # 80006020 <CONSOLE_STATUS+0x10>
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	f90080e7          	jalr	-112(ra) # 800024e8 <_Z14__print_stringPKc>
}
    80001560:	e55ff06f          	j	800013b4 <_ZN6Kernel15syscall_handlerEv+0x58>

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
    80001590:	06e7fe63          	bgeu	a5,a4,8000160c <_ZN6Kernel21supervisorTrapHandlerEv+0xa8>
    if (scause == 0x0000000000000007UL) {
    80001594:	00700793          	li	a5,7
    80001598:	0af48463          	beq	s1,a5,80001640 <_ZN6Kernel21supervisorTrapHandlerEv+0xdc>
    if (scause == 0x8000000000000001UL) {
    8000159c:	fff00793          	li	a5,-1
    800015a0:	03f79793          	slli	a5,a5,0x3f
    800015a4:	00178793          	addi	a5,a5,1
    800015a8:	0ef48463          	beq	s1,a5,80001690 <_ZN6Kernel21supervisorTrapHandlerEv+0x12c>
    if (scause == 0x8000000000000009UL) {
    800015ac:	fff00793          	li	a5,-1
    800015b0:	03f79793          	slli	a5,a5,0x3f
    800015b4:	00978793          	addi	a5,a5,9
    800015b8:	14f48263          	beq	s1,a5,800016fc <_ZN6Kernel21supervisorTrapHandlerEv+0x198>
    __print_string("Neobradjen izuzetak.\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	ab450513          	addi	a0,a0,-1356 # 80006070 <CONSOLE_STATUS+0x60>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	f24080e7          	jalr	-220(ra) # 800024e8 <_Z14__print_stringPKc>
    __print_string("scause: ");
    800015cc:	00005517          	auipc	a0,0x5
    800015d0:	a9450513          	addi	a0,a0,-1388 # 80006060 <CONSOLE_STATUS+0x50>
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	f14080e7          	jalr	-236(ra) # 800024e8 <_Z14__print_stringPKc>
    __print_uint64(scause);
    800015dc:	00048513          	mv	a0,s1
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	f4c080e7          	jalr	-180(ra) # 8000252c <_Z14__print_uint64m>
    __putc('\n');
    800015e8:	00a00513          	li	a0,10
    800015ec:	00004097          	auipc	ra,0x4
    800015f0:	0a0080e7          	jalr	160(ra) # 8000568c <__putc>
}
    800015f4:	04813083          	ld	ra,72(sp)
    800015f8:	04013403          	ld	s0,64(sp)
    800015fc:	03813483          	ld	s1,56(sp)
    80001600:	03013903          	ld	s2,48(sp)
    80001604:	05010113          	addi	sp,sp,80
    80001608:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000160c:	141027f3          	csrr	a5,sepc
    80001610:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001614:	fc043483          	ld	s1,-64(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    80001618:	00448493          	addi	s1,s1,4
    asm volatile("csrc sstatus, %[mask]":: [mask] "r" (mask));
}

inline uint64 RiscV::readSstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    8000161c:	100027f3          	csrr	a5,sstatus
    80001620:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001624:	fb843903          	ld	s2,-72(s0)
        syscall_handler();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	d34080e7          	jalr	-716(ra) # 8000135c <_ZN6Kernel15syscall_handlerEv>
        asm volatile ("sd a0, 80(s0)");
    80001630:	04a43823          	sd	a0,80(s0)
}

inline void RiscV::writeSstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001634:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001638:	14149073          	csrw	sepc,s1
        return;
    8000163c:	fb9ff06f          	j	800015f4 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001640:	141027f3          	csrr	a5,sepc
    80001644:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001648:	fc843903          	ld	s2,-56(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    8000164c:	00490913          	addi	s2,s2,4
        __print_string("Nedozvoljena adresa upisa.\n");
    80001650:	00005517          	auipc	a0,0x5
    80001654:	9f050513          	addi	a0,a0,-1552 # 80006040 <CONSOLE_STATUS+0x30>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	e90080e7          	jalr	-368(ra) # 800024e8 <_Z14__print_stringPKc>
        __print_string("scause: ");
    80001660:	00005517          	auipc	a0,0x5
    80001664:	a0050513          	addi	a0,a0,-1536 # 80006060 <CONSOLE_STATUS+0x50>
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	e80080e7          	jalr	-384(ra) # 800024e8 <_Z14__print_stringPKc>
        __print_uint64(scause);
    80001670:	00048513          	mv	a0,s1
    80001674:	00001097          	auipc	ra,0x1
    80001678:	eb8080e7          	jalr	-328(ra) # 8000252c <_Z14__print_uint64m>
        __putc('\n');
    8000167c:	00a00513          	li	a0,10
    80001680:	00004097          	auipc	ra,0x4
    80001684:	00c080e7          	jalr	12(ra) # 8000568c <__putc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001688:	14191073          	csrw	sepc,s2
        return;
    8000168c:	f69ff06f          	j	800015f4 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    80001690:	00006717          	auipc	a4,0x6
    80001694:	d2873703          	ld	a4,-728(a4) # 800073b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001698:	00073783          	ld	a5,0(a4)
    8000169c:	00178793          	addi	a5,a5,1
    800016a0:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    800016a4:	00006717          	auipc	a4,0x6
    800016a8:	d2c73703          	ld	a4,-724(a4) # 800073d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016ac:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800016b0:	02073703          	ld	a4,32(a4)
    800016b4:	00e7f863          	bgeu	a5,a4,800016c4 <_ZN6Kernel21supervisorTrapHandlerEv+0x160>
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    800016b8:	00200793          	li	a5,2
    800016bc:	1447b073          	csrc	sip,a5
        return;
    800016c0:	f35ff06f          	j	800015f4 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800016c4:	141027f3          	csrr	a5,sepc
    800016c8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800016cc:	fd843483          	ld	s1,-40(s0)
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    800016d0:	100027f3          	csrr	a5,sstatus
    800016d4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800016d8:	fd043903          	ld	s2,-48(s0)
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }
    800016dc:	00006797          	auipc	a5,0x6
    800016e0:	cdc7b783          	ld	a5,-804(a5) # 800073b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016e4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	3b4080e7          	jalr	948(ra) # 80001a9c <_ZN3TCB8dispatchEv>
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    800016f0:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800016f4:	14149073          	csrw	sepc,s1
}
    800016f8:	fc1ff06f          	j	800016b8 <_ZN6Kernel21supervisorTrapHandlerEv+0x154>
        console_handler();
    800016fc:	00004097          	auipc	ra,0x4
    80001700:	004080e7          	jalr	4(ra) # 80005700 <console_handler>
        return;
    80001704:	ef1ff06f          	j	800015f4 <_ZN6Kernel21supervisorTrapHandlerEv+0x90>

0000000080001708 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return 0;
}

Semaphore::~Semaphore() {
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00813423          	sd	s0,8(sp)
    80001710:	01010413          	addi	s0,sp,16

}
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00113423          	sd	ra,8(sp)
    80001728:	00813023          	sd	s0,0(sp)
    8000172c:	01010413          	addi	s0,sp,16
}
    80001730:	00000097          	auipc	ra,0x0
    80001734:	43c080e7          	jalr	1084(ra) # 80001b6c <_ZdlPv>
    80001738:	00813083          	ld	ra,8(sp)
    8000173c:	00013403          	ld	s0,0(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret

0000000080001748 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    80001754:	00006797          	auipc	a5,0x6
    80001758:	bbc78793          	addi	a5,a5,-1092 # 80007310 <_ZTV9Semaphore+0x10>
    8000175c:	00f53023          	sd	a5,0(a0)
}
    80001760:	00813403          	ld	s0,8(sp)
    80001764:	01010113          	addi	sp,sp,16
    80001768:	00008067          	ret

000000008000176c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000176c:	ff010113          	addi	sp,sp,-16
    80001770:	00813423          	sd	s0,8(sp)
    80001774:	01010413          	addi	s0,sp,16
}
    80001778:	00000513          	li	a0,0
    8000177c:	00813403          	ld	s0,8(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00813423          	sd	s0,8(sp)
    80001790:	01010413          	addi	s0,sp,16
}
    80001794:	00000513          	li	a0,0
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <main>:
#include "../h/tcb.hpp"
//#include "../test/userMain.cpp"

void userMain();

void main() {
    800017a4:	fe010113          	addi	sp,sp,-32
    800017a8:	00113c23          	sd	ra,24(sp)
    800017ac:	00813823          	sd	s0,16(sp)
    800017b0:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	b6c080e7          	jalr	-1172(ra) # 80001320 <_ZN6Kernel10initKernelEv>





    TCB* threads[2] = {nullptr, nullptr};
    800017bc:	fe043023          	sd	zero,-32(s0)
    800017c0:	fe043423          	sd	zero,-24(s0)
    thread_create(&threads[0], nullptr, nullptr);
    800017c4:	00000613          	li	a2,0
    800017c8:	00000593          	li	a1,0
    800017cc:	fe040513          	addi	a0,s0,-32
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	848080e7          	jalr	-1976(ra) # 80001018 <thread_create>
    //__putc('?'); __putc('\n');
    thread_create(&threads[1], (void(*)(void*))userMain, nullptr);
    800017d8:	00000613          	li	a2,0
    800017dc:	00006597          	auipc	a1,0x6
    800017e0:	bc45b583          	ld	a1,-1084(a1) # 800073a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017e4:	fe840513          	addi	a0,s0,-24
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	830080e7          	jalr	-2000(ra) # 80001018 <thread_create>
    //thread_create(&threads[2], (void(*)(void*))userMain, nullptr);
    TCB::running = threads[0];
    800017f0:	fe043703          	ld	a4,-32(s0)
    800017f4:	00006797          	auipc	a5,0x6
    800017f8:	bdc7b783          	ld	a5,-1060(a5) # 800073d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017fc:	00e7b023          	sd	a4,0(a5)

    //thread_dispatch();
    __print_string("hey!\n");
    80001800:	00005517          	auipc	a0,0x5
    80001804:	92050513          	addi	a0,a0,-1760 # 80006120 <CONSOLE_STATUS+0x110>
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	ce0080e7          	jalr	-800(ra) # 800024e8 <_Z14__print_stringPKc>
    while(!threads[1]->isFinished()) { thread_dispatch(); }
    80001810:	fe843783          	ld	a5,-24(s0)
    bool isFinished() const { return finished; }
    80001814:	0187c783          	lbu	a5,24(a5)
    80001818:	00079863          	bnez	a5,80001828 <main+0x84>
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	814080e7          	jalr	-2028(ra) # 80001030 <thread_dispatch>
    80001824:	fedff06f          	j	80001810 <main+0x6c>

    __print_string("Finished\n");
    80001828:	00005517          	auipc	a0,0x5
    8000182c:	90050513          	addi	a0,a0,-1792 # 80006128 <CONSOLE_STATUS+0x118>
    80001830:	00001097          	auipc	ra,0x1
    80001834:	cb8080e7          	jalr	-840(ra) # 800024e8 <_Z14__print_stringPKc>

    //thread_exit();


    80001838:	01813083          	ld	ra,24(sp)
    8000183c:	01013403          	ld	s0,16(sp)
    80001840:	02010113          	addi	sp,sp,32
    80001844:	00008067          	ret

0000000080001848 <_ZN7Console4getcEv>:
//

#include "../h/syscall_cpp.hpp"


char Console::getc() {
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813423          	sd	s0,8(sp)
    80001850:	01010413          	addi	s0,sp,16
    return 0;
}
    80001854:	00000513          	li	a0,0
    80001858:	00813403          	ld	s0,8(sp)
    8000185c:	01010113          	addi	sp,sp,16
    80001860:	00008067          	ret

0000000080001864 <_ZN7Console4putcEc>:

void Console::putc(char) {
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00813423          	sd	s0,8(sp)
    8000186c:	01010413          	addi	s0,sp,16

    80001870:	00813403          	ld	s0,8(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret

000000008000187c <_ZN3TCB13threadWrapperEv>:
    __print_uint64((uint64)running); __putc('\n');*/

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00113423          	sd	ra,8(sp)
    80001884:	00813023          	sd	s0,0(sp)
    80001888:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	728080e7          	jalr	1832(ra) # 80001fb4 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001894:	00006797          	auipc	a5,0x6
    80001898:	b9c7b783          	ld	a5,-1124(a5) # 80007430 <_ZN3TCB7runningE>
    8000189c:	0007b703          	ld	a4,0(a5)
    800018a0:	0087b503          	ld	a0,8(a5)
    800018a4:	000700e7          	jalr	a4
    thread_exit();
    800018a8:	fffff097          	auipc	ra,0xfffff
    800018ac:	77c080e7          	jalr	1916(ra) # 80001024 <thread_exit>
}
    800018b0:	00813083          	ld	ra,8(sp)
    800018b4:	00013403          	ld	s0,0(sp)
    800018b8:	01010113          	addi	sp,sp,16
    800018bc:	00008067          	ret

00000000800018c0 <_ZN3TCBC1EPFvPvES0_mb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready)
    800018c0:	fd010113          	addi	sp,sp,-48
    800018c4:	02113423          	sd	ra,40(sp)
    800018c8:	02813023          	sd	s0,32(sp)
    800018cc:	00913c23          	sd	s1,24(sp)
    800018d0:	01213823          	sd	s2,16(sp)
    800018d4:	01313423          	sd	s3,8(sp)
    800018d8:	01413023          	sd	s4,0(sp)
    800018dc:	03010413          	addi	s0,sp,48
    800018e0:	00050493          	mv	s1,a0
    800018e4:	00058913          	mv	s2,a1
    800018e8:	00068993          	mv	s3,a3
    800018ec:	00070a13          	mv	s4,a4
        })
    800018f0:	00b53023          	sd	a1,0(a0)
    800018f4:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    800018f8:	06058263          	beqz	a1,8000195c <_ZN3TCBC1EPFvPvES0_mb+0x9c>
    800018fc:	00008537          	lui	a0,0x8
    80001900:	00000097          	auipc	ra,0x0
    80001904:	244080e7          	jalr	580(ra) # 80001b44 <_Znam>
        })
    80001908:	00a4b823          	sd	a0,16(s1)
    8000190c:	00048c23          	sb	zero,24(s1)
    80001910:	0334b023          	sd	s3,32(s1)
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001914:	04090863          	beqz	s2,80001964 <_ZN3TCBC1EPFvPvES0_mb+0xa4>
    80001918:	00000797          	auipc	a5,0x0
    8000191c:	f6478793          	addi	a5,a5,-156 # 8000187c <_ZN3TCB13threadWrapperEv>
        })
    80001920:	02f4b423          	sd	a5,40(s1)
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001924:	04050463          	beqz	a0,8000196c <_ZN3TCBC1EPFvPvES0_mb+0xac>
    80001928:	000087b7          	lui	a5,0x8
    8000192c:	00f50533          	add	a0,a0,a5
        })
    80001930:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001934:	00090463          	beqz	s2,8000193c <_ZN3TCBC1EPFvPvES0_mb+0x7c>
    80001938:	020a1e63          	bnez	s4,80001974 <_ZN3TCBC1EPFvPvES0_mb+0xb4>
}
    8000193c:	02813083          	ld	ra,40(sp)
    80001940:	02013403          	ld	s0,32(sp)
    80001944:	01813483          	ld	s1,24(sp)
    80001948:	01013903          	ld	s2,16(sp)
    8000194c:	00813983          	ld	s3,8(sp)
    80001950:	00013a03          	ld	s4,0(sp)
    80001954:	03010113          	addi	sp,sp,48
    80001958:	00008067          	ret
stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    8000195c:	00000513          	li	a0,0
    80001960:	fa9ff06f          	j	80001908 <_ZN3TCBC1EPFvPvES0_mb+0x48>
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001964:	00000793          	li	a5,0
    80001968:	fb9ff06f          	j	80001920 <_ZN3TCBC1EPFvPvES0_mb+0x60>
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    8000196c:	00000513          	li	a0,0
    80001970:	fc1ff06f          	j	80001930 <_ZN3TCBC1EPFvPvES0_mb+0x70>
    if (body != nullptr && ready) Scheduler::put(this);
    80001974:	00048513          	mv	a0,s1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	840080e7          	jalr	-1984(ra) # 800021b8 <_ZN9Scheduler3putEP3TCB>
}
    80001980:	fbdff06f          	j	8000193c <_ZN3TCBC1EPFvPvES0_mb+0x7c>

0000000080001984 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001984:	fd010113          	addi	sp,sp,-48
    80001988:	02113423          	sd	ra,40(sp)
    8000198c:	02813023          	sd	s0,32(sp)
    80001990:	00913c23          	sd	s1,24(sp)
    80001994:	01213823          	sd	s2,16(sp)
    80001998:	01313423          	sd	s3,8(sp)
    8000199c:	03010413          	addi	s0,sp,48
    800019a0:	00050913          	mv	s2,a0
    800019a4:	00058993          	mv	s3,a1
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1);
    800019a8:	03800513          	li	a0,56
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	170080e7          	jalr	368(ra) # 80001b1c <_Znwm>
    800019b4:	00050493          	mv	s1,a0
    800019b8:	00100713          	li	a4,1
    800019bc:	00200693          	li	a3,2
    800019c0:	00098613          	mv	a2,s3
    800019c4:	00090593          	mv	a1,s2
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	ef8080e7          	jalr	-264(ra) # 800018c0 <_ZN3TCBC1EPFvPvES0_mb>
    800019d0:	0200006f          	j	800019f0 <_ZN3TCB9createTCBEPFvPvES0_+0x6c>
    800019d4:	00050913          	mv	s2,a0
    800019d8:	00048513          	mv	a0,s1
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	190080e7          	jalr	400(ra) # 80001b6c <_ZdlPv>
    800019e4:	00090513          	mv	a0,s2
    800019e8:	00007097          	auipc	ra,0x7
    800019ec:	b60080e7          	jalr	-1184(ra) # 80008548 <_Unwind_Resume>
}
    800019f0:	00048513          	mv	a0,s1
    800019f4:	02813083          	ld	ra,40(sp)
    800019f8:	02013403          	ld	s0,32(sp)
    800019fc:	01813483          	ld	s1,24(sp)
    80001a00:	01013903          	ld	s2,16(sp)
    80001a04:	00813983          	ld	s3,8(sp)
    80001a08:	03010113          	addi	sp,sp,48
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    80001a10:	fd010113          	addi	sp,sp,-48
    80001a14:	02113423          	sd	ra,40(sp)
    80001a18:	02813023          	sd	s0,32(sp)
    80001a1c:	00913c23          	sd	s1,24(sp)
    80001a20:	01213823          	sd	s2,16(sp)
    80001a24:	01313423          	sd	s3,8(sp)
    80001a28:	03010413          	addi	s0,sp,48
    80001a2c:	00050913          	mv	s2,a0
    80001a30:	00058993          	mv	s3,a1
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0);
    80001a34:	03800513          	li	a0,56
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	0e4080e7          	jalr	228(ra) # 80001b1c <_Znwm>
    80001a40:	00050493          	mv	s1,a0
    80001a44:	00000713          	li	a4,0
    80001a48:	00200693          	li	a3,2
    80001a4c:	00098613          	mv	a2,s3
    80001a50:	00090593          	mv	a1,s2
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	e6c080e7          	jalr	-404(ra) # 800018c0 <_ZN3TCBC1EPFvPvES0_mb>
    80001a5c:	0200006f          	j	80001a7c <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x6c>
    80001a60:	00050913          	mv	s2,a0
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	104080e7          	jalr	260(ra) # 80001b6c <_ZdlPv>
    80001a70:	00090513          	mv	a0,s2
    80001a74:	00007097          	auipc	ra,0x7
    80001a78:	ad4080e7          	jalr	-1324(ra) # 80008548 <_Unwind_Resume>
}
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	02813083          	ld	ra,40(sp)
    80001a84:	02013403          	ld	s0,32(sp)
    80001a88:	01813483          	ld	s1,24(sp)
    80001a8c:	01013903          	ld	s2,16(sp)
    80001a90:	00813983          	ld	s3,8(sp)
    80001a94:	03010113          	addi	sp,sp,48
    80001a98:	00008067          	ret

0000000080001a9c <_ZN3TCB8dispatchEv>:
{
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001ab0:	00006497          	auipc	s1,0x6
    80001ab4:	9804b483          	ld	s1,-1664(s1) # 80007430 <_ZN3TCB7runningE>
    80001ab8:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001abc:	02078663          	beqz	a5,80001ae8 <_ZN3TCB8dispatchEv+0x4c>
    running = Scheduler::get();
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	690080e7          	jalr	1680(ra) # 80002150 <_ZN9Scheduler3getEv>
    80001ac8:	00006797          	auipc	a5,0x6
    80001acc:	96a7b423          	sd	a0,-1688(a5) # 80007430 <_ZN3TCB7runningE>
    while (!running) { Scheduler::get(); }
    80001ad0:	00006597          	auipc	a1,0x6
    80001ad4:	9605b583          	ld	a1,-1696(a1) # 80007430 <_ZN3TCB7runningE>
    80001ad8:	02059063          	bnez	a1,80001af8 <_ZN3TCB8dispatchEv+0x5c>
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	674080e7          	jalr	1652(ra) # 80002150 <_ZN9Scheduler3getEv>
    80001ae4:	fedff06f          	j	80001ad0 <_ZN3TCB8dispatchEv+0x34>
    if (!old->isFinished()) { Scheduler::put(old); }
    80001ae8:	00048513          	mv	a0,s1
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	6cc080e7          	jalr	1740(ra) # 800021b8 <_ZN9Scheduler3putEP3TCB>
    80001af4:	fcdff06f          	j	80001ac0 <_ZN3TCB8dispatchEv+0x24>
    TCB::contextSwitch(&old->context, &running->context);
    80001af8:	02858593          	addi	a1,a1,40
    80001afc:	02848513          	addi	a0,s1,40
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	780080e7          	jalr	1920(ra) # 80001280 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001b08:	01813083          	ld	ra,24(sp)
    80001b0c:	01013403          	ld	s0,16(sp)
    80001b10:	00813483          	ld	s1,8(sp)
    80001b14:	02010113          	addi	sp,sp,32
    80001b18:	00008067          	ret

0000000080001b1c <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001b2c:	fffff097          	auipc	ra,0xfffff
    80001b30:	4d4080e7          	jalr	1236(ra) # 80001000 <mem_alloc>
}
    80001b34:	00813083          	ld	ra,8(sp)
    80001b38:	00013403          	ld	s0,0(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_Znam>:

void* operator new[](size_t size) {
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00113423          	sd	ra,8(sp)
    80001b4c:	00813023          	sd	s0,0(sp)
    80001b50:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001b54:	fffff097          	auipc	ra,0xfffff
    80001b58:	4ac080e7          	jalr	1196(ra) # 80001000 <mem_alloc>
}
    80001b5c:	00813083          	ld	ra,8(sp)
    80001b60:	00013403          	ld	s0,0(sp)
    80001b64:	01010113          	addi	sp,sp,16
    80001b68:	00008067          	ret

0000000080001b6c <_ZdlPv>:

void operator delete(void* ptr) {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001b7c:	fffff097          	auipc	ra,0xfffff
    80001b80:	490080e7          	jalr	1168(ra) # 8000100c <mem_free>
}
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001ba4:	fffff097          	auipc	ra,0xfffff
    80001ba8:	468080e7          	jalr	1128(ra) # 8000100c <mem_free>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00813423          	sd	s0,8(sp)
    80001bc4:	01010413          	addi	s0,sp,16
    80001bc8:	00813403          	ld	s0,8(sp)
    80001bcc:	01010113          	addi	sp,sp,16
    80001bd0:	00008067          	ret

0000000080001bd4 <_ZN6ThreadD0Ev>:
    80001bd4:	ff010113          	addi	sp,sp,-16
    80001bd8:	00113423          	sd	ra,8(sp)
    80001bdc:	00813023          	sd	s0,0(sp)
    80001be0:	01010413          	addi	s0,sp,16
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	f88080e7          	jalr	-120(ra) # 80001b6c <_ZdlPv>
    80001bec:	00813083          	ld	ra,8(sp)
    80001bf0:	00013403          	ld	s0,0(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00113423          	sd	ra,8(sp)
    80001c04:	00813023          	sd	s0,0(sp)
    80001c08:	01010413          	addi	s0,sp,16
    80001c0c:	00005797          	auipc	a5,0x5
    80001c10:	72c78793          	addi	a5,a5,1836 # 80007338 <_ZTV6Thread+0x10>
    80001c14:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    thread_create_deactivated(&myHandle, body, arg);
    80001c18:	00850513          	addi	a0,a0,8
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	420080e7          	jalr	1056(ra) # 8000103c <thread_create_deactivated>
}
    80001c24:	00813083          	ld	ra,8(sp)
    80001c28:	00013403          	ld	s0,0(sp)
    80001c2c:	01010113          	addi	sp,sp,16
    80001c30:	00008067          	ret

0000000080001c34 <_ZN6Thread5startEv>:

int Thread::start() {
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00113423          	sd	ra,8(sp)
    80001c3c:	00813023          	sd	s0,0(sp)
    80001c40:	01010413          	addi	s0,sp,16
    Scheduler::put(myHandle);
    80001c44:	00853503          	ld	a0,8(a0)
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	570080e7          	jalr	1392(ra) # 800021b8 <_ZN9Scheduler3putEP3TCB>
    return 0;
}
    80001c50:	00000513          	li	a0,0
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret

0000000080001c64 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00113423          	sd	ra,8(sp)
    80001c6c:	00813023          	sd	s0,0(sp)
    80001c70:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001c74:	fffff097          	auipc	ra,0xfffff
    80001c78:	3bc080e7          	jalr	956(ra) # 80001030 <thread_dispatch>
}
    80001c7c:	00813083          	ld	ra,8(sp)
    80001c80:	00013403          	ld	s0,0(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00813423          	sd	s0,8(sp)
    80001c94:	01010413          	addi	s0,sp,16
    return 0;
}
    80001c98:	00000513          	li	a0,0
    80001c9c:	00813403          	ld	s0,8(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    80001cb4:	00005797          	auipc	a5,0x5
    80001cb8:	68478793          	addi	a5,a5,1668 # 80007338 <_ZTV6Thread+0x10>
    80001cbc:	00f53023          	sd	a5,0(a0)

    80001cc0:	00813403          	ld	s0,8(sp)
    80001cc4:	01010113          	addi	sp,sp,16
    80001cc8:	00008067          	ret

0000000080001ccc <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00813423          	sd	s0,8(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    80001cd8:	00813403          	ld	s0,8(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    80001cf0:	00005797          	auipc	a5,0x5
    80001cf4:	6b87b783          	ld	a5,1720(a5) # 800073a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001cf8:	0007b783          	ld	a5,0(a5)
    80001cfc:	00005697          	auipc	a3,0x5
    80001d00:	74468693          	addi	a3,a3,1860 # 80007440 <_ZN15MemoryAllocator8fMemHeadE>
    80001d04:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    80001d08:	00005717          	auipc	a4,0x5
    80001d0c:	6d073703          	ld	a4,1744(a4) # 800073d8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d10:	00073703          	ld	a4,0(a4)
    80001d14:	40f70733          	sub	a4,a4,a5
    80001d18:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80001d1c:	0006b783          	ld	a5,0(a3)
    80001d20:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    80001d24:	0007b823          	sd	zero,16(a5)
}
    80001d28:	00813403          	ld	s0,8(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00813423          	sd	s0,8(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    80001d40:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    80001d44:	00005517          	auipc	a0,0x5
    80001d48:	6fc53503          	ld	a0,1788(a0) # 80007440 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80001d4c:	02050063          	beqz	a0,80001d6c <_ZN15MemoryAllocator8firstFitEm+0x38>
    80001d50:	01053703          	ld	a4,16(a0)
    80001d54:	00070c63          	beqz	a4,80001d6c <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80001d58:	00860793          	addi	a5,a2,8
    80001d5c:	00053683          	ld	a3,0(a0)
    80001d60:	00f6fe63          	bgeu	a3,a5,80001d7c <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80001d64:	00070513          	mv	a0,a4
    80001d68:	fe5ff06f          	j	80001d4c <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80001d6c:	00050863          	beqz	a0,80001d7c <_ZN15MemoryAllocator8firstFitEm+0x48>
    80001d70:	00860613          	addi	a2,a2,8
    80001d74:	00053783          	ld	a5,0(a0)
    80001d78:	00c7e863          	bltu	a5,a2,80001d88 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret
    return nullptr;
    80001d88:	00000513          	li	a0,0
    80001d8c:	ff1ff06f          	j	80001d7c <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080001d90 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00813423          	sd	s0,8(sp)
    80001d98:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80001d9c:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80001da0:	03f57793          	andi	a5,a0,63
    80001da4:	00078863          	beqz	a5,80001db4 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80001da8:	04000713          	li	a4,64
    80001dac:	40f707b3          	sub	a5,a4,a5
    80001db0:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80001db4:	00813403          	ld	s0,8(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    80001dd4:	00050493          	mv	s1,a0
    if (node) {
    80001dd8:	04050c63          	beqz	a0,80001e30 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80001ddc:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	fb0080e7          	jalr	-80(ra) # 80001d90 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80001de8:	0004b783          	ld	a5,0(s1)
    80001dec:	40a787b3          	sub	a5,a5,a0
    80001df0:	03f00713          	li	a4,63
    80001df4:	04f77e63          	bgeu	a4,a5,80001e50 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80001df8:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80001dfc:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80001e00:	0084b783          	ld	a5,8(s1)
    80001e04:	04078063          	beqz	a5,80001e44 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80001e08:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80001e0c:	0104b783          	ld	a5,16(s1)
    80001e10:	00078463          	beqz	a5,80001e18 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80001e14:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80001e18:	0104b783          	ld	a5,16(s1)
    80001e1c:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80001e20:	0084b783          	ld	a5,8(s1)
    80001e24:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80001e28:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80001e2c:	00848513          	addi	a0,s1,8
}
    80001e30:	01813083          	ld	ra,24(sp)
    80001e34:	01013403          	ld	s0,16(sp)
    80001e38:	00813483          	ld	s1,8(sp)
    80001e3c:	02010113          	addi	sp,sp,32
    80001e40:	00008067          	ret
            else fMemHead = newNode;
    80001e44:	00005797          	auipc	a5,0x5
    80001e48:	5ee7be23          	sd	a4,1532(a5) # 80007440 <_ZN15MemoryAllocator8fMemHeadE>
    80001e4c:	fc1ff06f          	j	80001e0c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80001e50:	0084b783          	ld	a5,8(s1)
    80001e54:	02078063          	beqz	a5,80001e74 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80001e58:	0104b703          	ld	a4,16(s1)
    80001e5c:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80001e60:	0104b783          	ld	a5,16(s1)
    80001e64:	fc0782e3          	beqz	a5,80001e28 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80001e68:	0084b703          	ld	a4,8(s1)
    80001e6c:	00e7b423          	sd	a4,8(a5)
    80001e70:	fb9ff06f          	j	80001e28 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    80001e74:	0104b783          	ld	a5,16(s1)
    80001e78:	00005717          	auipc	a4,0x5
    80001e7c:	5cf73423          	sd	a5,1480(a4) # 80007440 <_ZN15MemoryAllocator8fMemHeadE>
    80001e80:	fe1ff06f          	j	80001e60 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080001e84 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80001e84:	fe010113          	addi	sp,sp,-32
    80001e88:	00113c23          	sd	ra,24(sp)
    80001e8c:	00813823          	sd	s0,16(sp)
    80001e90:	00913423          	sd	s1,8(sp)
    80001e94:	02010413          	addi	s0,sp,32
    80001e98:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	e98080e7          	jalr	-360(ra) # 80001d34 <_ZN15MemoryAllocator8firstFitEm>
    80001ea4:	00048593          	mv	a1,s1
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	f18080e7          	jalr	-232(ra) # 80001dc0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00813423          	sd	s0,8(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    if(!node) return;
    80001ed0:	02050a63          	beqz	a0,80001f04 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    80001ed4:	01053783          	ld	a5,16(a0)
    80001ed8:	02078663          	beqz	a5,80001f04 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80001edc:	00053703          	ld	a4,0(a0)
    80001ee0:	00e506b3          	add	a3,a0,a4
    80001ee4:	02f69063          	bne	a3,a5,80001f04 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    80001ee8:	0007b683          	ld	a3,0(a5)
    80001eec:	00d70733          	add	a4,a4,a3
    80001ef0:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80001ef4:	0107b783          	ld	a5,16(a5)
    80001ef8:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80001efc:	00078463          	beqz	a5,80001f04 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80001f00:	00a7b423          	sd	a0,8(a5)
}
    80001f04:	00813403          	ld	s0,8(sp)
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00008067          	ret

0000000080001f10 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80001f10:	fe010113          	addi	sp,sp,-32
    80001f14:	00113c23          	sd	ra,24(sp)
    80001f18:	00813823          	sd	s0,16(sp)
    80001f1c:	00913423          	sd	s1,8(sp)
    80001f20:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80001f24:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    80001f28:	00005717          	auipc	a4,0x5
    80001f2c:	51873703          	ld	a4,1304(a4) # 80007440 <_ZN15MemoryAllocator8fMemHeadE>
    80001f30:	02070063          	beqz	a4,80001f50 <_ZN15MemoryAllocator4freeEPv+0x40>
    80001f34:	02a77263          	bgeu	a4,a0,80001f58 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80001f38:	00070793          	mv	a5,a4
    80001f3c:	00078493          	mv	s1,a5
    80001f40:	0107b783          	ld	a5,16(a5)
    80001f44:	00078c63          	beqz	a5,80001f5c <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001f48:	fea7eae3          	bltu	a5,a0,80001f3c <_ZN15MemoryAllocator4freeEPv+0x2c>
    80001f4c:	0100006f          	j	80001f5c <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80001f50:	00070493          	mv	s1,a4
    80001f54:	0080006f          	j	80001f5c <_ZN15MemoryAllocator4freeEPv+0x4c>
    80001f58:	00000493          	li	s1,0
    newNode->prev = curr;
    80001f5c:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80001f60:	04048263          	beqz	s1,80001fa4 <_ZN15MemoryAllocator4freeEPv+0x94>
    80001f64:	0104b783          	ld	a5,16(s1)
    80001f68:	00f53823          	sd	a5,16(a0)
    80001f6c:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80001f70:	01053783          	ld	a5,16(a0)
    80001f74:	00078463          	beqz	a5,80001f7c <_ZN15MemoryAllocator4freeEPv+0x6c>
    80001f78:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	f48080e7          	jalr	-184(ra) # 80001ec4 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80001f84:	00048513          	mv	a0,s1
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	f3c080e7          	jalr	-196(ra) # 80001ec4 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80001f90:	01813083          	ld	ra,24(sp)
    80001f94:	01013403          	ld	s0,16(sp)
    80001f98:	00813483          	ld	s1,8(sp)
    80001f9c:	02010113          	addi	sp,sp,32
    80001fa0:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80001fa4:	00e53823          	sd	a4,16(a0)
    80001fa8:	00005797          	auipc	a5,0x5
    80001fac:	48a7bc23          	sd	a0,1176(a5) # 80007440 <_ZN15MemoryAllocator8fMemHeadE>
    80001fb0:	fc1ff06f          	j	80001f70 <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080001fb4 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00813423          	sd	s0,8(sp)
    80001fbc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001fc0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001fc4:	10200073          	sret
    80001fc8:	00813403          	ld	s0,8(sp)
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00008067          	ret

0000000080001fd4 <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    80001fd4:	fe010113          	addi	sp,sp,-32
    80001fd8:	00113c23          	sd	ra,24(sp)
    80001fdc:	00813823          	sd	s0,16(sp)
    80001fe0:	00913423          	sd	s1,8(sp)
    80001fe4:	02010413          	addi	s0,sp,32
    80001fe8:	00050493          	mv	s1,a0
    return new Sem(init);
    80001fec:	01800513          	li	a0,24
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	b2c080e7          	jalr	-1236(ra) # 80001b1c <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80001ff8:	00053023          	sd	zero,0(a0)
    80001ffc:	00053423          	sd	zero,8(a0)
    int semWait();

    int semSignal();

private:
    Sem(unsigned init) : init(init), val(init) {}
    80002000:	00952823          	sw	s1,16(a0)
    80002004:	00952a23          	sw	s1,20(a0)
}
    80002008:	01813083          	ld	ra,24(sp)
    8000200c:	01013403          	ld	s0,16(sp)
    80002010:	00813483          	ld	s1,8(sp)
    80002014:	02010113          	addi	sp,sp,32
    80002018:	00008067          	ret

000000008000201c <_ZN3SemD1Ev>:

Sem::~Sem() {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    while (val < 0) {
        Scheduler::put(list.takeFirst());
        val++;
    }
}
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00813423          	sd	s0,8(sp)
    8000203c:	01010413          	addi	s0,sp,16

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002040:	00005797          	auipc	a5,0x5
    80002044:	3707b783          	ld	a5,880(a5) # 800073b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002048:	0007b783          	ld	a5,0(a5)
    8000204c:	00078663          	beqz	a5,80002058 <_ZN3Sem7semWaitEv+0x24>
        return head->data;
    80002050:	0007b783          	ld	a5,0(a5)
    if (Scheduler::readyQueueEmpty()) return -1;
    80002054:	02079063          	bnez	a5,80002074 <_ZN3Sem7semWaitEv+0x40>
    if (--val < 0) {
    80002058:	01452783          	lw	a5,20(a0)
    8000205c:	fff7879b          	addiw	a5,a5,-1
    80002060:	00f52a23          	sw	a5,20(a0)
        TCB *old = TCB::running;
        old->setFinished(true);
        list.putLast(old);
        thread_dispatch();
    }
    return 0;
    80002064:	00000513          	li	a0,0
}
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret
    if (Scheduler::readyQueueEmpty()) return -1;
    80002074:	fff00513          	li	a0,-1
    80002078:	ff1ff06f          	j	80002068 <_ZN3Sem7semWaitEv+0x34>

000000008000207c <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    8000207c:	01452703          	lw	a4,20(a0)
    80002080:	0017071b          	addiw	a4,a4,1
    80002084:	0007069b          	sext.w	a3,a4
    80002088:	00e52a23          	sw	a4,20(a0)
    8000208c:	06069a63          	bnez	a3,80002100 <_ZN3Sem9semSignalEv+0x84>
int Sem::semSignal() {
    80002090:	fe010113          	addi	sp,sp,-32
    80002094:	00113c23          	sd	ra,24(sp)
    80002098:	00813823          	sd	s0,16(sp)
    8000209c:	00913423          	sd	s1,8(sp)
    800020a0:	02010413          	addi	s0,sp,32
    800020a4:	00050793          	mv	a5,a0
        if (!head) return 0;
    800020a8:	00053503          	ld	a0,0(a0)
    800020ac:	04050663          	beqz	a0,800020f8 <_ZN3Sem9semSignalEv+0x7c>
        T* ret = head->data;
    800020b0:	00053483          	ld	s1,0(a0)
        head = head->next;
    800020b4:	00853703          	ld	a4,8(a0)
    800020b8:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    800020bc:	02070a63          	beqz	a4,800020f0 <_ZN3Sem9semSignalEv+0x74>
        delete old;
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	aac080e7          	jalr	-1364(ra) # 80001b6c <_ZdlPv>
    void setFinished(bool val) { finished = val; }
    800020c8:	00048c23          	sb	zero,24(s1)
        TCB* ready = list.takeFirst();
        ready->setFinished(false);
        Scheduler::put(ready);
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	0e8080e7          	jalr	232(ra) # 800021b8 <_ZN9Scheduler3putEP3TCB>
    }
    return 0;
    800020d8:	00000513          	li	a0,0
    800020dc:	01813083          	ld	ra,24(sp)
    800020e0:	01013403          	ld	s0,16(sp)
    800020e4:	00813483          	ld	s1,8(sp)
    800020e8:	02010113          	addi	sp,sp,32
    800020ec:	00008067          	ret
        if (!head) tail = 0;
    800020f0:	0007b423          	sd	zero,8(a5)
    800020f4:	fcdff06f          	j	800020c0 <_ZN3Sem9semSignalEv+0x44>
        if (!head) return 0;
    800020f8:	00050493          	mv	s1,a0
    800020fc:	fcdff06f          	j	800020c8 <_ZN3Sem9semSignalEv+0x4c>
    80002100:	00000513          	li	a0,0
    80002104:	00008067          	ret

0000000080002108 <_Z41__static_initialization_and_destruction_0ii>:
    TCB* old = TCB::running;
    old->setFinished(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    thread_dispatch();
}
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00813423          	sd	s0,8(sp)
    80002110:	01010413          	addi	s0,sp,16
    80002114:	00100793          	li	a5,1
    80002118:	00f50863          	beq	a0,a5,80002128 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret
    80002128:	000107b7          	lui	a5,0x10
    8000212c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002130:	fef596e3          	bne	a1,a5,8000211c <_Z41__static_initialization_and_destruction_0ii+0x14>
        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80002134:	00005797          	auipc	a5,0x5
    80002138:	31478793          	addi	a5,a5,788 # 80007448 <_ZN9Scheduler10readyQueueE>
    8000213c:	0007b023          	sd	zero,0(a5)
    80002140:	0007b423          	sd	zero,8(a5)
    80002144:	0007b823          	sd	zero,16(a5)
    80002148:	0007bc23          	sd	zero,24(a5)
    8000214c:	fd1ff06f          	j	8000211c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002150 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002150:	fe010113          	addi	sp,sp,-32
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	00813823          	sd	s0,16(sp)
    8000215c:	00913423          	sd	s1,8(sp)
    80002160:	02010413          	addi	s0,sp,32
        else head = newNode;
        if(!curr) tail = newNode;
    }

    T* takeFirst() {
        if (!head) return 0;
    80002164:	00005517          	auipc	a0,0x5
    80002168:	2e453503          	ld	a0,740(a0) # 80007448 <_ZN9Scheduler10readyQueueE>
    8000216c:	04050263          	beqz	a0,800021b0 <_ZN9Scheduler3getEv+0x60>

        T* ret = head->data;
    80002170:	00053483          	ld	s1,0(a0)
        Node* old = head;
        head = head->next;
    80002174:	00853783          	ld	a5,8(a0)
    80002178:	00005717          	auipc	a4,0x5
    8000217c:	2cf73823          	sd	a5,720(a4) # 80007448 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80002180:	02078263          	beqz	a5,800021a4 <_ZN9Scheduler3getEv+0x54>
        delete old;
    80002184:	00000097          	auipc	ra,0x0
    80002188:	9e8080e7          	jalr	-1560(ra) # 80001b6c <_ZdlPv>
}
    8000218c:	00048513          	mv	a0,s1
    80002190:	01813083          	ld	ra,24(sp)
    80002194:	01013403          	ld	s0,16(sp)
    80002198:	00813483          	ld	s1,8(sp)
    8000219c:	02010113          	addi	sp,sp,32
    800021a0:	00008067          	ret
        if (!head) tail = 0;
    800021a4:	00005797          	auipc	a5,0x5
    800021a8:	2a07b623          	sd	zero,684(a5) # 80007450 <_ZN9Scheduler10readyQueueE+0x8>
    800021ac:	fd9ff06f          	j	80002184 <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    800021b0:	00050493          	mv	s1,a0
    return ret;
    800021b4:	fd9ff06f          	j	8000218c <_ZN9Scheduler3getEv+0x3c>

00000000800021b8 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    800021b8:	fe010113          	addi	sp,sp,-32
    800021bc:	00113c23          	sd	ra,24(sp)
    800021c0:	00813823          	sd	s0,16(sp)
    800021c4:	00913423          	sd	s1,8(sp)
    800021c8:	02010413          	addi	s0,sp,32
    800021cc:	00050493          	mv	s1,a0
        Node *newNode = new Node(data, 0);
    800021d0:	01000513          	li	a0,16
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	948080e7          	jalr	-1720(ra) # 80001b1c <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    800021dc:	00953023          	sd	s1,0(a0)
    800021e0:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    800021e4:	00005797          	auipc	a5,0x5
    800021e8:	26c7b783          	ld	a5,620(a5) # 80007450 <_ZN9Scheduler10readyQueueE+0x8>
    800021ec:	02078263          	beqz	a5,80002210 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    800021f0:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    800021f4:	00005797          	auipc	a5,0x5
    800021f8:	24a7be23          	sd	a0,604(a5) # 80007450 <_ZN9Scheduler10readyQueueE+0x8>
}
    800021fc:	01813083          	ld	ra,24(sp)
    80002200:	01013403          	ld	s0,16(sp)
    80002204:	00813483          	ld	s1,8(sp)
    80002208:	02010113          	addi	sp,sp,32
    8000220c:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002210:	00005797          	auipc	a5,0x5
    80002214:	23878793          	addi	a5,a5,568 # 80007448 <_ZN9Scheduler10readyQueueE>
    80002218:	00a7b423          	sd	a0,8(a5)
    8000221c:	00a7b023          	sd	a0,0(a5)
    80002220:	fddff06f          	j	800021fc <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002224 <_ZN9Scheduler14timerInterruptEv>:
void Scheduler::timerInterrupt() {
    80002224:	fe010113          	addi	sp,sp,-32
    80002228:	00113c23          	sd	ra,24(sp)
    8000222c:	00813823          	sd	s0,16(sp)
    80002230:	00913423          	sd	s1,8(sp)
    80002234:	02010413          	addi	s0,sp,32

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002238:	00005497          	auipc	s1,0x5
    8000223c:	2204b483          	ld	s1,544(s1) # 80007458 <_ZN9Scheduler10sleepQueueE>
    80002240:	00048463          	beqz	s1,80002248 <_ZN9Scheduler14timerInterruptEv+0x24>
        return head->data;
    80002244:	0004b483          	ld	s1,0(s1)
    first->time--;
    80002248:	0004b783          	ld	a5,0(s1)
    8000224c:	fff78793          	addi	a5,a5,-1
    80002250:	00f4b023          	sd	a5,0(s1)
    80002254:	02c0006f          	j	80002280 <_ZN9Scheduler14timerInterruptEv+0x5c>
        if (!head) tail = 0;
    80002258:	00005797          	auipc	a5,0x5
    8000225c:	2007b423          	sd	zero,520(a5) # 80007460 <_ZN9Scheduler10sleepQueueE+0x8>
    80002260:	0440006f          	j	800022a4 <_ZN9Scheduler14timerInterruptEv+0x80>
        delete first;
    80002264:	00048513          	mv	a0,s1
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	904080e7          	jalr	-1788(ra) # 80001b6c <_ZdlPv>
        if(!head) return 0;
    80002270:	00005497          	auipc	s1,0x5
    80002274:	1e84b483          	ld	s1,488(s1) # 80007458 <_ZN9Scheduler10sleepQueueE>
    80002278:	00048463          	beqz	s1,80002280 <_ZN9Scheduler14timerInterruptEv+0x5c>
        return head->data;
    8000227c:	0004b483          	ld	s1,0(s1)
    while(first->time == 0) {
    80002280:	0004b783          	ld	a5,0(s1)
    80002284:	04079263          	bnez	a5,800022c8 <_ZN9Scheduler14timerInterruptEv+0xa4>
        if (!head) return 0;
    80002288:	00005517          	auipc	a0,0x5
    8000228c:	1d053503          	ld	a0,464(a0) # 80007458 <_ZN9Scheduler10sleepQueueE>
    80002290:	00050e63          	beqz	a0,800022ac <_ZN9Scheduler14timerInterruptEv+0x88>
        head = head->next;
    80002294:	00853783          	ld	a5,8(a0)
    80002298:	00005717          	auipc	a4,0x5
    8000229c:	1cf73023          	sd	a5,448(a4) # 80007458 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    800022a0:	fa078ce3          	beqz	a5,80002258 <_ZN9Scheduler14timerInterruptEv+0x34>
        delete old;
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	8c8080e7          	jalr	-1848(ra) # 80001b6c <_ZdlPv>
        first->thread->setFinished(false);
    800022ac:	0084b783          	ld	a5,8(s1)
    800022b0:	00078c23          	sb	zero,24(a5)
        Scheduler::put(first->thread);
    800022b4:	0084b503          	ld	a0,8(s1)
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	f00080e7          	jalr	-256(ra) # 800021b8 <_ZN9Scheduler3putEP3TCB>
        delete first;
    800022c0:	fa0492e3          	bnez	s1,80002264 <_ZN9Scheduler14timerInterruptEv+0x40>
    800022c4:	fadff06f          	j	80002270 <_ZN9Scheduler14timerInterruptEv+0x4c>
}
    800022c8:	01813083          	ld	ra,24(sp)
    800022cc:	01013403          	ld	s0,16(sp)
    800022d0:	00813483          	ld	s1,8(sp)
    800022d4:	02010113          	addi	sp,sp,32
    800022d8:	00008067          	ret

00000000800022dc <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    800022dc:	fd010113          	addi	sp,sp,-48
    800022e0:	02113423          	sd	ra,40(sp)
    800022e4:	02813023          	sd	s0,32(sp)
    800022e8:	00913c23          	sd	s1,24(sp)
    800022ec:	01213823          	sd	s2,16(sp)
    800022f0:	01313423          	sd	s3,8(sp)
    800022f4:	03010413          	addi	s0,sp,48
    800022f8:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    800022fc:	00005797          	auipc	a5,0x5
    80002300:	0d47b783          	ld	a5,212(a5) # 800073d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002304:	0007b983          	ld	s3,0(a5)
    80002308:	00100793          	li	a5,1
    8000230c:	00f98c23          	sb	a5,24(s3)
    sleepNode* sn = new sleepNode(time, old);
    80002310:	01000513          	li	a0,16
    80002314:	00000097          	auipc	ra,0x0
    80002318:	808080e7          	jalr	-2040(ra) # 80001b1c <_Znwm>
    8000231c:	00050493          	mv	s1,a0

    struct sleepNode {
        time_t time;
        TCB* thread;

        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    80002320:	01253023          	sd	s2,0(a0)
    80002324:	01353423          	sd	s3,8(a0)
        Node *newNode = new Node(data, 0);
    80002328:	01000513          	li	a0,16
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	7f0080e7          	jalr	2032(ra) # 80001b1c <_Znwm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002334:	00953023          	sd	s1,0(a0)
    80002338:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    8000233c:	00005797          	auipc	a5,0x5
    80002340:	11c7b783          	ld	a5,284(a5) # 80007458 <_ZN9Scheduler10sleepQueueE>
    80002344:	02078c63          	beqz	a5,8000237c <_ZN9Scheduler9timeSleepEm+0xa0>
        Node* curr = head, *prev = nullptr;
    80002348:	00000693          	li	a3,0
        while (curr && *(uint64*)data > *(uint64*)(curr->data)) {
    8000234c:	04078263          	beqz	a5,80002390 <_ZN9Scheduler9timeSleepEm+0xb4>
    80002350:	0004b703          	ld	a4,0(s1)
    80002354:	0007b603          	ld	a2,0(a5)
    80002358:	00063603          	ld	a2,0(a2)
    8000235c:	02e67a63          	bgeu	a2,a4,80002390 <_ZN9Scheduler9timeSleepEm+0xb4>
            curr = curr->next;
    80002360:	0087b603          	ld	a2,8(a5)
            *(uint64*)data -= *(uint64*)curr;
    80002364:	00063683          	ld	a3,0(a2)
    80002368:	40d70733          	sub	a4,a4,a3
    8000236c:	00e4b023          	sd	a4,0(s1)
            prev = curr;
    80002370:	00078693          	mv	a3,a5
            curr = curr->next;
    80002374:	00060793          	mv	a5,a2
        while (curr && *(uint64*)data > *(uint64*)(curr->data)) {
    80002378:	fd5ff06f          	j	8000234c <_ZN9Scheduler9timeSleepEm+0x70>
        if (!head) { head = tail = newNode; return; }
    8000237c:	00005797          	auipc	a5,0x5
    80002380:	0cc78793          	addi	a5,a5,204 # 80007448 <_ZN9Scheduler10readyQueueE>
    80002384:	00a7bc23          	sd	a0,24(a5)
    80002388:	00a7b823          	sd	a0,16(a5)
    8000238c:	0140006f          	j	800023a0 <_ZN9Scheduler9timeSleepEm+0xc4>
        newNode->next = curr;
    80002390:	00f53423          	sd	a5,8(a0)
        if (prev) prev->next = newNode;
    80002394:	02068863          	beqz	a3,800023c4 <_ZN9Scheduler9timeSleepEm+0xe8>
    80002398:	00a6b423          	sd	a0,8(a3)
        if(!curr) tail = newNode;
    8000239c:	02078a63          	beqz	a5,800023d0 <_ZN9Scheduler9timeSleepEm+0xf4>
    thread_dispatch();
    800023a0:	fffff097          	auipc	ra,0xfffff
    800023a4:	c90080e7          	jalr	-880(ra) # 80001030 <thread_dispatch>
}
    800023a8:	02813083          	ld	ra,40(sp)
    800023ac:	02013403          	ld	s0,32(sp)
    800023b0:	01813483          	ld	s1,24(sp)
    800023b4:	01013903          	ld	s2,16(sp)
    800023b8:	00813983          	ld	s3,8(sp)
    800023bc:	03010113          	addi	sp,sp,48
    800023c0:	00008067          	ret
        else head = newNode;
    800023c4:	00005717          	auipc	a4,0x5
    800023c8:	08a73a23          	sd	a0,148(a4) # 80007458 <_ZN9Scheduler10sleepQueueE>
    800023cc:	fd1ff06f          	j	8000239c <_ZN9Scheduler9timeSleepEm+0xc0>
        if(!curr) tail = newNode;
    800023d0:	00005797          	auipc	a5,0x5
    800023d4:	08a7b823          	sd	a0,144(a5) # 80007460 <_ZN9Scheduler10sleepQueueE+0x8>
    800023d8:	fc9ff06f          	j	800023a0 <_ZN9Scheduler9timeSleepEm+0xc4>

00000000800023dc <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	01010413          	addi	s0,sp,16
    800023ec:	000105b7          	lui	a1,0x10
    800023f0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800023f4:	00100513          	li	a0,1
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	d10080e7          	jalr	-752(ra) # 80002108 <_Z41__static_initialization_and_destruction_0ii>
    80002400:	00813083          	ld	ra,8(sp)
    80002404:	00013403          	ld	s0,0(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <_ZN14PeriodicThreadC1Em>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

PeriodicThread::PeriodicThread(time_t period) {
    80002410:	fe010113          	addi	sp,sp,-32
    80002414:	00113c23          	sd	ra,24(sp)
    80002418:	00813823          	sd	s0,16(sp)
    8000241c:	00913423          	sd	s1,8(sp)
    80002420:	02010413          	addi	s0,sp,32
    80002424:	00050493          	mv	s1,a0
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	880080e7          	jalr	-1920(ra) # 80001ca8 <_ZN6ThreadC1Ev>
    80002430:	00005797          	auipc	a5,0x5
    80002434:	f3078793          	addi	a5,a5,-208 # 80007360 <_ZTV14PeriodicThread+0x10>
    80002438:	00f4b023          	sd	a5,0(s1)

    8000243c:	01813083          	ld	ra,24(sp)
    80002440:	01013403          	ld	s0,16(sp)
    80002444:	00813483          	ld	s1,8(sp)
    80002448:	02010113          	addi	sp,sp,32
    8000244c:	00008067          	ret

0000000080002450 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret

0000000080002468 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002468:	ff010113          	addi	sp,sp,-16
    8000246c:	00113423          	sd	ra,8(sp)
    80002470:	00813023          	sd	s0,0(sp)
    80002474:	01010413          	addi	s0,sp,16
    80002478:	00005797          	auipc	a5,0x5
    8000247c:	ee878793          	addi	a5,a5,-280 # 80007360 <_ZTV14PeriodicThread+0x10>
    80002480:	00f53023          	sd	a5,0(a0)
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	738080e7          	jalr	1848(ra) # 80001bbc <_ZN6ThreadD1Ev>
    8000248c:	00813083          	ld	ra,8(sp)
    80002490:	00013403          	ld	s0,0(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <_ZN14PeriodicThreadD0Ev>:
    8000249c:	fe010113          	addi	sp,sp,-32
    800024a0:	00113c23          	sd	ra,24(sp)
    800024a4:	00813823          	sd	s0,16(sp)
    800024a8:	00913423          	sd	s1,8(sp)
    800024ac:	02010413          	addi	s0,sp,32
    800024b0:	00050493          	mv	s1,a0
    800024b4:	00005797          	auipc	a5,0x5
    800024b8:	eac78793          	addi	a5,a5,-340 # 80007360 <_ZTV14PeriodicThread+0x10>
    800024bc:	00f53023          	sd	a5,0(a0)
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	6fc080e7          	jalr	1788(ra) # 80001bbc <_ZN6ThreadD1Ev>
    800024c8:	00048513          	mv	a0,s1
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	6a0080e7          	jalr	1696(ra) # 80001b6c <_ZdlPv>
    800024d4:	01813083          	ld	ra,24(sp)
    800024d8:	01013403          	ld	s0,16(sp)
    800024dc:	00813483          	ld	s1,8(sp)
    800024e0:	02010113          	addi	sp,sp,32
    800024e4:	00008067          	ret

00000000800024e8 <_Z14__print_stringPKc>:

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void __print_string(char const *string) {
    800024e8:	fe010113          	addi	sp,sp,-32
    800024ec:	00113c23          	sd	ra,24(sp)
    800024f0:	00813823          	sd	s0,16(sp)
    800024f4:	00913423          	sd	s1,8(sp)
    800024f8:	02010413          	addi	s0,sp,32
    800024fc:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) __putc(*c);
    80002500:	0004c503          	lbu	a0,0(s1)
    80002504:	00050a63          	beqz	a0,80002518 <_Z14__print_stringPKc+0x30>
    80002508:	00003097          	auipc	ra,0x3
    8000250c:	184080e7          	jalr	388(ra) # 8000568c <__putc>
    80002510:	00148493          	addi	s1,s1,1
    80002514:	fedff06f          	j	80002500 <_Z14__print_stringPKc+0x18>
}
    80002518:	01813083          	ld	ra,24(sp)
    8000251c:	01013403          	ld	s0,16(sp)
    80002520:	00813483          	ld	s1,8(sp)
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00008067          	ret

000000008000252c <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    8000252c:	fc010113          	addi	sp,sp,-64
    80002530:	02113c23          	sd	ra,56(sp)
    80002534:	02813823          	sd	s0,48(sp)
    80002538:	02913423          	sd	s1,40(sp)
    8000253c:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80002540:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80002544:	00a00693          	li	a3,10
    80002548:	02d57633          	remu	a2,a0,a3
    8000254c:	00004717          	auipc	a4,0x4
    80002550:	bec70713          	addi	a4,a4,-1044 # 80006138 <_ZZ14__print_uint64mE6digits>
    80002554:	00c70733          	add	a4,a4,a2
    80002558:	00074703          	lbu	a4,0(a4)
    8000255c:	fe040613          	addi	a2,s0,-32
    80002560:	009607b3          	add	a5,a2,s1
    80002564:	0014849b          	addiw	s1,s1,1
    80002568:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    8000256c:	00050713          	mv	a4,a0
    80002570:	02d55533          	divu	a0,a0,a3
    80002574:	00900793          	li	a5,9
    80002578:	fce7e6e3          	bltu	a5,a4,80002544 <_Z14__print_uint64m+0x18>
    while(--i >= 0) __putc(output[i]);
    8000257c:	fff4849b          	addiw	s1,s1,-1
    80002580:	0004ce63          	bltz	s1,8000259c <_Z14__print_uint64m+0x70>
    80002584:	fe040793          	addi	a5,s0,-32
    80002588:	009787b3          	add	a5,a5,s1
    8000258c:	fe87c503          	lbu	a0,-24(a5)
    80002590:	00003097          	auipc	ra,0x3
    80002594:	0fc080e7          	jalr	252(ra) # 8000568c <__putc>
    80002598:	fe5ff06f          	j	8000257c <_Z14__print_uint64m+0x50>
}
    8000259c:	03813083          	ld	ra,56(sp)
    800025a0:	03013403          	ld	s0,48(sp)
    800025a4:	02813483          	ld	s1,40(sp)
    800025a8:	04010113          	addi	sp,sp,64
    800025ac:	00008067          	ret

00000000800025b0 <_Z11__print_intx>:

void __print_int(long long int integer) {
    800025b0:	fe010113          	addi	sp,sp,-32
    800025b4:	00113c23          	sd	ra,24(sp)
    800025b8:	00813823          	sd	s0,16(sp)
    800025bc:	00913423          	sd	s1,8(sp)
    800025c0:	02010413          	addi	s0,sp,32
    800025c4:	00050493          	mv	s1,a0
    if (integer < 0) __putc('-'), integer *= -1;
    800025c8:	02054263          	bltz	a0,800025ec <_Z11__print_intx+0x3c>
    __print_uint64(integer);
    800025cc:	00048513          	mv	a0,s1
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	f5c080e7          	jalr	-164(ra) # 8000252c <_Z14__print_uint64m>
}
    800025d8:	01813083          	ld	ra,24(sp)
    800025dc:	01013403          	ld	s0,16(sp)
    800025e0:	00813483          	ld	s1,8(sp)
    800025e4:	02010113          	addi	sp,sp,32
    800025e8:	00008067          	ret
    if (integer < 0) __putc('-'), integer *= -1;
    800025ec:	02d00513          	li	a0,45
    800025f0:	00003097          	auipc	ra,0x3
    800025f4:	09c080e7          	jalr	156(ra) # 8000568c <__putc>
    800025f8:	409004b3          	neg	s1,s1
    800025fc:	fd1ff06f          	j	800025cc <_Z11__print_intx+0x1c>

0000000080002600 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002600:	fe010113          	addi	sp,sp,-32
    80002604:	00113c23          	sd	ra,24(sp)
    80002608:	00813823          	sd	s0,16(sp)
    8000260c:	00913423          	sd	s1,8(sp)
    80002610:	02010413          	addi	s0,sp,32
    80002614:	00050493          	mv	s1,a0
    LOCK();
    80002618:	00100613          	li	a2,1
    8000261c:	00000593          	li	a1,0
    80002620:	00005517          	auipc	a0,0x5
    80002624:	e4850513          	addi	a0,a0,-440 # 80007468 <lockPrint>
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	c6c080e7          	jalr	-916(ra) # 80001294 <copy_and_swap>
    80002630:	fe0514e3          	bnez	a0,80002618 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002634:	0004c503          	lbu	a0,0(s1)
    80002638:	00050a63          	beqz	a0,8000264c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	cbc080e7          	jalr	-836(ra) # 800012f8 <_Z4putcc>
        string++;
    80002644:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002648:	fedff06f          	j	80002634 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000264c:	00000613          	li	a2,0
    80002650:	00100593          	li	a1,1
    80002654:	00005517          	auipc	a0,0x5
    80002658:	e1450513          	addi	a0,a0,-492 # 80007468 <lockPrint>
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	c38080e7          	jalr	-968(ra) # 80001294 <copy_and_swap>
    80002664:	fe0514e3          	bnez	a0,8000264c <_Z11printStringPKc+0x4c>
}
    80002668:	01813083          	ld	ra,24(sp)
    8000266c:	01013403          	ld	s0,16(sp)
    80002670:	00813483          	ld	s1,8(sp)
    80002674:	02010113          	addi	sp,sp,32
    80002678:	00008067          	ret

000000008000267c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000267c:	fd010113          	addi	sp,sp,-48
    80002680:	02113423          	sd	ra,40(sp)
    80002684:	02813023          	sd	s0,32(sp)
    80002688:	00913c23          	sd	s1,24(sp)
    8000268c:	01213823          	sd	s2,16(sp)
    80002690:	01313423          	sd	s3,8(sp)
    80002694:	01413023          	sd	s4,0(sp)
    80002698:	03010413          	addi	s0,sp,48
    8000269c:	00050993          	mv	s3,a0
    800026a0:	00058a13          	mv	s4,a1
    LOCK();
    800026a4:	00100613          	li	a2,1
    800026a8:	00000593          	li	a1,0
    800026ac:	00005517          	auipc	a0,0x5
    800026b0:	dbc50513          	addi	a0,a0,-580 # 80007468 <lockPrint>
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	be0080e7          	jalr	-1056(ra) # 80001294 <copy_and_swap>
    800026bc:	fe0514e3          	bnez	a0,800026a4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800026c0:	00000913          	li	s2,0
    800026c4:	00090493          	mv	s1,s2
    800026c8:	0019091b          	addiw	s2,s2,1
    800026cc:	03495a63          	bge	s2,s4,80002700 <_Z9getStringPci+0x84>
        cc = getc();
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	c00080e7          	jalr	-1024(ra) # 800012d0 <_Z4getcv>
        if(cc < 1)
    800026d8:	02050463          	beqz	a0,80002700 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800026dc:	009984b3          	add	s1,s3,s1
    800026e0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800026e4:	00a00793          	li	a5,10
    800026e8:	00f50a63          	beq	a0,a5,800026fc <_Z9getStringPci+0x80>
    800026ec:	00d00793          	li	a5,13
    800026f0:	fcf51ae3          	bne	a0,a5,800026c4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800026f4:	00090493          	mv	s1,s2
    800026f8:	0080006f          	j	80002700 <_Z9getStringPci+0x84>
    800026fc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002700:	009984b3          	add	s1,s3,s1
    80002704:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002708:	00000613          	li	a2,0
    8000270c:	00100593          	li	a1,1
    80002710:	00005517          	auipc	a0,0x5
    80002714:	d5850513          	addi	a0,a0,-680 # 80007468 <lockPrint>
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	b7c080e7          	jalr	-1156(ra) # 80001294 <copy_and_swap>
    80002720:	fe0514e3          	bnez	a0,80002708 <_Z9getStringPci+0x8c>
    return buf;
}
    80002724:	00098513          	mv	a0,s3
    80002728:	02813083          	ld	ra,40(sp)
    8000272c:	02013403          	ld	s0,32(sp)
    80002730:	01813483          	ld	s1,24(sp)
    80002734:	01013903          	ld	s2,16(sp)
    80002738:	00813983          	ld	s3,8(sp)
    8000273c:	00013a03          	ld	s4,0(sp)
    80002740:	03010113          	addi	sp,sp,48
    80002744:	00008067          	ret

0000000080002748 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813423          	sd	s0,8(sp)
    80002750:	01010413          	addi	s0,sp,16
    80002754:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002758:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000275c:	0006c603          	lbu	a2,0(a3)
    80002760:	fd06071b          	addiw	a4,a2,-48
    80002764:	0ff77713          	andi	a4,a4,255
    80002768:	00900793          	li	a5,9
    8000276c:	02e7e063          	bltu	a5,a4,8000278c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002770:	0025179b          	slliw	a5,a0,0x2
    80002774:	00a787bb          	addw	a5,a5,a0
    80002778:	0017979b          	slliw	a5,a5,0x1
    8000277c:	00168693          	addi	a3,a3,1
    80002780:	00c787bb          	addw	a5,a5,a2
    80002784:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002788:	fd5ff06f          	j	8000275c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000278c:	00813403          	ld	s0,8(sp)
    80002790:	01010113          	addi	sp,sp,16
    80002794:	00008067          	ret

0000000080002798 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002798:	fc010113          	addi	sp,sp,-64
    8000279c:	02113c23          	sd	ra,56(sp)
    800027a0:	02813823          	sd	s0,48(sp)
    800027a4:	02913423          	sd	s1,40(sp)
    800027a8:	03213023          	sd	s2,32(sp)
    800027ac:	01313c23          	sd	s3,24(sp)
    800027b0:	04010413          	addi	s0,sp,64
    800027b4:	00050493          	mv	s1,a0
    800027b8:	00058913          	mv	s2,a1
    800027bc:	00060993          	mv	s3,a2
    LOCK();
    800027c0:	00100613          	li	a2,1
    800027c4:	00000593          	li	a1,0
    800027c8:	00005517          	auipc	a0,0x5
    800027cc:	ca050513          	addi	a0,a0,-864 # 80007468 <lockPrint>
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	ac4080e7          	jalr	-1340(ra) # 80001294 <copy_and_swap>
    800027d8:	fe0514e3          	bnez	a0,800027c0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800027dc:	00098463          	beqz	s3,800027e4 <_Z8printIntiii+0x4c>
    800027e0:	0804c463          	bltz	s1,80002868 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800027e4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800027e8:	00000593          	li	a1,0
    }

    i = 0;
    800027ec:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800027f0:	0009079b          	sext.w	a5,s2
    800027f4:	0325773b          	remuw	a4,a0,s2
    800027f8:	00048613          	mv	a2,s1
    800027fc:	0014849b          	addiw	s1,s1,1
    80002800:	02071693          	slli	a3,a4,0x20
    80002804:	0206d693          	srli	a3,a3,0x20
    80002808:	00005717          	auipc	a4,0x5
    8000280c:	b7870713          	addi	a4,a4,-1160 # 80007380 <digits>
    80002810:	00d70733          	add	a4,a4,a3
    80002814:	00074683          	lbu	a3,0(a4)
    80002818:	fd040713          	addi	a4,s0,-48
    8000281c:	00c70733          	add	a4,a4,a2
    80002820:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002824:	0005071b          	sext.w	a4,a0
    80002828:	0325553b          	divuw	a0,a0,s2
    8000282c:	fcf772e3          	bgeu	a4,a5,800027f0 <_Z8printIntiii+0x58>
    if(neg)
    80002830:	00058c63          	beqz	a1,80002848 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002834:	fd040793          	addi	a5,s0,-48
    80002838:	009784b3          	add	s1,a5,s1
    8000283c:	02d00793          	li	a5,45
    80002840:	fef48823          	sb	a5,-16(s1)
    80002844:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002848:	fff4849b          	addiw	s1,s1,-1
    8000284c:	0204c463          	bltz	s1,80002874 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002850:	fd040793          	addi	a5,s0,-48
    80002854:	009787b3          	add	a5,a5,s1
    80002858:	ff07c503          	lbu	a0,-16(a5)
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	a9c080e7          	jalr	-1380(ra) # 800012f8 <_Z4putcc>
    80002864:	fe5ff06f          	j	80002848 <_Z8printIntiii+0xb0>
        x = -xx;
    80002868:	4090053b          	negw	a0,s1
        neg = 1;
    8000286c:	00100593          	li	a1,1
        x = -xx;
    80002870:	f7dff06f          	j	800027ec <_Z8printIntiii+0x54>

    UNLOCK();
    80002874:	00000613          	li	a2,0
    80002878:	00100593          	li	a1,1
    8000287c:	00005517          	auipc	a0,0x5
    80002880:	bec50513          	addi	a0,a0,-1044 # 80007468 <lockPrint>
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	a10080e7          	jalr	-1520(ra) # 80001294 <copy_and_swap>
    8000288c:	fe0514e3          	bnez	a0,80002874 <_Z8printIntiii+0xdc>
    80002890:	03813083          	ld	ra,56(sp)
    80002894:	03013403          	ld	s0,48(sp)
    80002898:	02813483          	ld	s1,40(sp)
    8000289c:	02013903          	ld	s2,32(sp)
    800028a0:	01813983          	ld	s3,24(sp)
    800028a4:	04010113          	addi	sp,sp,64
    800028a8:	00008067          	ret

00000000800028ac <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800028ac:	fd010113          	addi	sp,sp,-48
    800028b0:	02113423          	sd	ra,40(sp)
    800028b4:	02813023          	sd	s0,32(sp)
    800028b8:	00913c23          	sd	s1,24(sp)
    800028bc:	01213823          	sd	s2,16(sp)
    800028c0:	01313423          	sd	s3,8(sp)
    800028c4:	03010413          	addi	s0,sp,48
    800028c8:	00050493          	mv	s1,a0
    800028cc:	00058913          	mv	s2,a1
    800028d0:	0015879b          	addiw	a5,a1,1
    800028d4:	0007851b          	sext.w	a0,a5
    800028d8:	00f4a023          	sw	a5,0(s1)
    800028dc:	0004a823          	sw	zero,16(s1)
    800028e0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800028e4:	00251513          	slli	a0,a0,0x2
    800028e8:	ffffe097          	auipc	ra,0xffffe
    800028ec:	718080e7          	jalr	1816(ra) # 80001000 <mem_alloc>
    800028f0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800028f4:	01000513          	li	a0,16
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	224080e7          	jalr	548(ra) # 80001b1c <_Znwm>
    80002900:	00050993          	mv	s3,a0
    80002904:	00000593          	li	a1,0
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	e40080e7          	jalr	-448(ra) # 80001748 <_ZN9SemaphoreC1Ej>
    80002910:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002914:	01000513          	li	a0,16
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	204080e7          	jalr	516(ra) # 80001b1c <_Znwm>
    80002920:	00050993          	mv	s3,a0
    80002924:	00090593          	mv	a1,s2
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	e20080e7          	jalr	-480(ra) # 80001748 <_ZN9SemaphoreC1Ej>
    80002930:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002934:	01000513          	li	a0,16
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	1e4080e7          	jalr	484(ra) # 80001b1c <_Znwm>
    80002940:	00050913          	mv	s2,a0
    80002944:	00100593          	li	a1,1
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	e00080e7          	jalr	-512(ra) # 80001748 <_ZN9SemaphoreC1Ej>
    80002950:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002954:	01000513          	li	a0,16
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	1c4080e7          	jalr	452(ra) # 80001b1c <_Znwm>
    80002960:	00050913          	mv	s2,a0
    80002964:	00100593          	li	a1,1
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	de0080e7          	jalr	-544(ra) # 80001748 <_ZN9SemaphoreC1Ej>
    80002970:	0324b823          	sd	s2,48(s1)
}
    80002974:	02813083          	ld	ra,40(sp)
    80002978:	02013403          	ld	s0,32(sp)
    8000297c:	01813483          	ld	s1,24(sp)
    80002980:	01013903          	ld	s2,16(sp)
    80002984:	00813983          	ld	s3,8(sp)
    80002988:	03010113          	addi	sp,sp,48
    8000298c:	00008067          	ret
    80002990:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002994:	00098513          	mv	a0,s3
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	1d4080e7          	jalr	468(ra) # 80001b6c <_ZdlPv>
    800029a0:	00048513          	mv	a0,s1
    800029a4:	00006097          	auipc	ra,0x6
    800029a8:	ba4080e7          	jalr	-1116(ra) # 80008548 <_Unwind_Resume>
    800029ac:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800029b0:	00098513          	mv	a0,s3
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	1b8080e7          	jalr	440(ra) # 80001b6c <_ZdlPv>
    800029bc:	00048513          	mv	a0,s1
    800029c0:	00006097          	auipc	ra,0x6
    800029c4:	b88080e7          	jalr	-1144(ra) # 80008548 <_Unwind_Resume>
    800029c8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800029cc:	00090513          	mv	a0,s2
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	19c080e7          	jalr	412(ra) # 80001b6c <_ZdlPv>
    800029d8:	00048513          	mv	a0,s1
    800029dc:	00006097          	auipc	ra,0x6
    800029e0:	b6c080e7          	jalr	-1172(ra) # 80008548 <_Unwind_Resume>
    800029e4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800029e8:	00090513          	mv	a0,s2
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	180080e7          	jalr	384(ra) # 80001b6c <_ZdlPv>
    800029f4:	00048513          	mv	a0,s1
    800029f8:	00006097          	auipc	ra,0x6
    800029fc:	b50080e7          	jalr	-1200(ra) # 80008548 <_Unwind_Resume>

0000000080002a00 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002a00:	fe010113          	addi	sp,sp,-32
    80002a04:	00113c23          	sd	ra,24(sp)
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	01213023          	sd	s2,0(sp)
    80002a14:	02010413          	addi	s0,sp,32
    80002a18:	00050493          	mv	s1,a0
    80002a1c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002a20:	01853503          	ld	a0,24(a0)
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	d48080e7          	jalr	-696(ra) # 8000176c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002a2c:	0304b503          	ld	a0,48(s1)
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	d3c080e7          	jalr	-708(ra) # 8000176c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002a38:	0084b783          	ld	a5,8(s1)
    80002a3c:	0144a703          	lw	a4,20(s1)
    80002a40:	00271713          	slli	a4,a4,0x2
    80002a44:	00e787b3          	add	a5,a5,a4
    80002a48:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002a4c:	0144a783          	lw	a5,20(s1)
    80002a50:	0017879b          	addiw	a5,a5,1
    80002a54:	0004a703          	lw	a4,0(s1)
    80002a58:	02e7e7bb          	remw	a5,a5,a4
    80002a5c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002a60:	0304b503          	ld	a0,48(s1)
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	d24080e7          	jalr	-732(ra) # 80001788 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002a6c:	0204b503          	ld	a0,32(s1)
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	d18080e7          	jalr	-744(ra) # 80001788 <_ZN9Semaphore6signalEv>

}
    80002a78:	01813083          	ld	ra,24(sp)
    80002a7c:	01013403          	ld	s0,16(sp)
    80002a80:	00813483          	ld	s1,8(sp)
    80002a84:	00013903          	ld	s2,0(sp)
    80002a88:	02010113          	addi	sp,sp,32
    80002a8c:	00008067          	ret

0000000080002a90 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002a90:	fe010113          	addi	sp,sp,-32
    80002a94:	00113c23          	sd	ra,24(sp)
    80002a98:	00813823          	sd	s0,16(sp)
    80002a9c:	00913423          	sd	s1,8(sp)
    80002aa0:	01213023          	sd	s2,0(sp)
    80002aa4:	02010413          	addi	s0,sp,32
    80002aa8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002aac:	02053503          	ld	a0,32(a0)
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	cbc080e7          	jalr	-836(ra) # 8000176c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002ab8:	0284b503          	ld	a0,40(s1)
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	cb0080e7          	jalr	-848(ra) # 8000176c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002ac4:	0084b703          	ld	a4,8(s1)
    80002ac8:	0104a783          	lw	a5,16(s1)
    80002acc:	00279693          	slli	a3,a5,0x2
    80002ad0:	00d70733          	add	a4,a4,a3
    80002ad4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002ad8:	0017879b          	addiw	a5,a5,1
    80002adc:	0004a703          	lw	a4,0(s1)
    80002ae0:	02e7e7bb          	remw	a5,a5,a4
    80002ae4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002ae8:	0284b503          	ld	a0,40(s1)
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	c9c080e7          	jalr	-868(ra) # 80001788 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002af4:	0184b503          	ld	a0,24(s1)
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	c90080e7          	jalr	-880(ra) # 80001788 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002b00:	00090513          	mv	a0,s2
    80002b04:	01813083          	ld	ra,24(sp)
    80002b08:	01013403          	ld	s0,16(sp)
    80002b0c:	00813483          	ld	s1,8(sp)
    80002b10:	00013903          	ld	s2,0(sp)
    80002b14:	02010113          	addi	sp,sp,32
    80002b18:	00008067          	ret

0000000080002b1c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002b1c:	fe010113          	addi	sp,sp,-32
    80002b20:	00113c23          	sd	ra,24(sp)
    80002b24:	00813823          	sd	s0,16(sp)
    80002b28:	00913423          	sd	s1,8(sp)
    80002b2c:	01213023          	sd	s2,0(sp)
    80002b30:	02010413          	addi	s0,sp,32
    80002b34:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002b38:	02853503          	ld	a0,40(a0)
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	c30080e7          	jalr	-976(ra) # 8000176c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002b44:	0304b503          	ld	a0,48(s1)
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	c24080e7          	jalr	-988(ra) # 8000176c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002b50:	0144a783          	lw	a5,20(s1)
    80002b54:	0104a903          	lw	s2,16(s1)
    80002b58:	0327ce63          	blt	a5,s2,80002b94 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002b5c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002b60:	0304b503          	ld	a0,48(s1)
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	c24080e7          	jalr	-988(ra) # 80001788 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002b6c:	0284b503          	ld	a0,40(s1)
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	c18080e7          	jalr	-1000(ra) # 80001788 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002b78:	00090513          	mv	a0,s2
    80002b7c:	01813083          	ld	ra,24(sp)
    80002b80:	01013403          	ld	s0,16(sp)
    80002b84:	00813483          	ld	s1,8(sp)
    80002b88:	00013903          	ld	s2,0(sp)
    80002b8c:	02010113          	addi	sp,sp,32
    80002b90:	00008067          	ret
        ret = cap - head + tail;
    80002b94:	0004a703          	lw	a4,0(s1)
    80002b98:	4127093b          	subw	s2,a4,s2
    80002b9c:	00f9093b          	addw	s2,s2,a5
    80002ba0:	fc1ff06f          	j	80002b60 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002ba4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002ba4:	fe010113          	addi	sp,sp,-32
    80002ba8:	00113c23          	sd	ra,24(sp)
    80002bac:	00813823          	sd	s0,16(sp)
    80002bb0:	00913423          	sd	s1,8(sp)
    80002bb4:	02010413          	addi	s0,sp,32
    80002bb8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002bbc:	00a00513          	li	a0,10
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	ca4080e7          	jalr	-860(ra) # 80001864 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002bc8:	00003517          	auipc	a0,0x3
    80002bcc:	58050513          	addi	a0,a0,1408 # 80006148 <_ZZ14__print_uint64mE6digits+0x10>
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	a30080e7          	jalr	-1488(ra) # 80002600 <_Z11printStringPKc>
    while (getCnt()) {
    80002bd8:	00048513          	mv	a0,s1
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	f40080e7          	jalr	-192(ra) # 80002b1c <_ZN9BufferCPP6getCntEv>
    80002be4:	02050c63          	beqz	a0,80002c1c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002be8:	0084b783          	ld	a5,8(s1)
    80002bec:	0104a703          	lw	a4,16(s1)
    80002bf0:	00271713          	slli	a4,a4,0x2
    80002bf4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002bf8:	0007c503          	lbu	a0,0(a5)
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	c68080e7          	jalr	-920(ra) # 80001864 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002c04:	0104a783          	lw	a5,16(s1)
    80002c08:	0017879b          	addiw	a5,a5,1
    80002c0c:	0004a703          	lw	a4,0(s1)
    80002c10:	02e7e7bb          	remw	a5,a5,a4
    80002c14:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002c18:	fc1ff06f          	j	80002bd8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002c1c:	02100513          	li	a0,33
    80002c20:	fffff097          	auipc	ra,0xfffff
    80002c24:	c44080e7          	jalr	-956(ra) # 80001864 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002c28:	00a00513          	li	a0,10
    80002c2c:	fffff097          	auipc	ra,0xfffff
    80002c30:	c38080e7          	jalr	-968(ra) # 80001864 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002c34:	0084b503          	ld	a0,8(s1)
    80002c38:	ffffe097          	auipc	ra,0xffffe
    80002c3c:	3d4080e7          	jalr	980(ra) # 8000100c <mem_free>
    delete itemAvailable;
    80002c40:	0204b503          	ld	a0,32(s1)
    80002c44:	00050863          	beqz	a0,80002c54 <_ZN9BufferCPPD1Ev+0xb0>
    80002c48:	00053783          	ld	a5,0(a0)
    80002c4c:	0087b783          	ld	a5,8(a5)
    80002c50:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002c54:	0184b503          	ld	a0,24(s1)
    80002c58:	00050863          	beqz	a0,80002c68 <_ZN9BufferCPPD1Ev+0xc4>
    80002c5c:	00053783          	ld	a5,0(a0)
    80002c60:	0087b783          	ld	a5,8(a5)
    80002c64:	000780e7          	jalr	a5
    delete mutexTail;
    80002c68:	0304b503          	ld	a0,48(s1)
    80002c6c:	00050863          	beqz	a0,80002c7c <_ZN9BufferCPPD1Ev+0xd8>
    80002c70:	00053783          	ld	a5,0(a0)
    80002c74:	0087b783          	ld	a5,8(a5)
    80002c78:	000780e7          	jalr	a5
    delete mutexHead;
    80002c7c:	0284b503          	ld	a0,40(s1)
    80002c80:	00050863          	beqz	a0,80002c90 <_ZN9BufferCPPD1Ev+0xec>
    80002c84:	00053783          	ld	a5,0(a0)
    80002c88:	0087b783          	ld	a5,8(a5)
    80002c8c:	000780e7          	jalr	a5
}
    80002c90:	01813083          	ld	ra,24(sp)
    80002c94:	01013403          	ld	s0,16(sp)
    80002c98:	00813483          	ld	s1,8(sp)
    80002c9c:	02010113          	addi	sp,sp,32
    80002ca0:	00008067          	ret

0000000080002ca4 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80002ca4:	fe010113          	addi	sp,sp,-32
    80002ca8:	00113c23          	sd	ra,24(sp)
    80002cac:	00813823          	sd	s0,16(sp)
    80002cb0:	00913423          	sd	s1,8(sp)
    80002cb4:	01213023          	sd	s2,0(sp)
    80002cb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002cbc:	00000913          	li	s2,0
    80002cc0:	0380006f          	j	80002cf8 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002cc4:	ffffe097          	auipc	ra,0xffffe
    80002cc8:	36c080e7          	jalr	876(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80002ccc:	00148493          	addi	s1,s1,1
    80002cd0:	000027b7          	lui	a5,0x2
    80002cd4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cd8:	0097ee63          	bltu	a5,s1,80002cf4 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002cdc:	00000713          	li	a4,0
    80002ce0:	000077b7          	lui	a5,0x7
    80002ce4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ce8:	fce7eee3          	bltu	a5,a4,80002cc4 <_Z11workerBodyAPv+0x20>
    80002cec:	00170713          	addi	a4,a4,1
    80002cf0:	ff1ff06f          	j	80002ce0 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002cf4:	00190913          	addi	s2,s2,1
    80002cf8:	00900793          	li	a5,9
    80002cfc:	0527e063          	bltu	a5,s2,80002d3c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d00:	00003517          	auipc	a0,0x3
    80002d04:	46050513          	addi	a0,a0,1120 # 80006160 <_ZZ14__print_uint64mE6digits+0x28>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	8f8080e7          	jalr	-1800(ra) # 80002600 <_Z11printStringPKc>
    80002d10:	00000613          	li	a2,0
    80002d14:	00a00593          	li	a1,10
    80002d18:	0009051b          	sext.w	a0,s2
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	a7c080e7          	jalr	-1412(ra) # 80002798 <_Z8printIntiii>
    80002d24:	00003517          	auipc	a0,0x3
    80002d28:	55450513          	addi	a0,a0,1364 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	8d4080e7          	jalr	-1836(ra) # 80002600 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d34:	00000493          	li	s1,0
    80002d38:	f99ff06f          	j	80002cd0 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002d3c:	00003517          	auipc	a0,0x3
    80002d40:	42c50513          	addi	a0,a0,1068 # 80006168 <_ZZ14__print_uint64mE6digits+0x30>
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	8bc080e7          	jalr	-1860(ra) # 80002600 <_Z11printStringPKc>
    finishedA = true;
    80002d4c:	00100793          	li	a5,1
    80002d50:	00004717          	auipc	a4,0x4
    80002d54:	72f70023          	sb	a5,1824(a4) # 80007470 <finishedA>
    //thread_exit();
}
    80002d58:	01813083          	ld	ra,24(sp)
    80002d5c:	01013403          	ld	s0,16(sp)
    80002d60:	00813483          	ld	s1,8(sp)
    80002d64:	00013903          	ld	s2,0(sp)
    80002d68:	02010113          	addi	sp,sp,32
    80002d6c:	00008067          	ret

0000000080002d70 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80002d70:	fe010113          	addi	sp,sp,-32
    80002d74:	00113c23          	sd	ra,24(sp)
    80002d78:	00813823          	sd	s0,16(sp)
    80002d7c:	00913423          	sd	s1,8(sp)
    80002d80:	01213023          	sd	s2,0(sp)
    80002d84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002d88:	00000913          	li	s2,0
    80002d8c:	0380006f          	j	80002dc4 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002d90:	ffffe097          	auipc	ra,0xffffe
    80002d94:	2a0080e7          	jalr	672(ra) # 80001030 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80002d98:	00148493          	addi	s1,s1,1
    80002d9c:	000027b7          	lui	a5,0x2
    80002da0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002da4:	0097ee63          	bltu	a5,s1,80002dc0 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002da8:	00000713          	li	a4,0
    80002dac:	000077b7          	lui	a5,0x7
    80002db0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002db4:	fce7eee3          	bltu	a5,a4,80002d90 <_Z11workerBodyBPv+0x20>
    80002db8:	00170713          	addi	a4,a4,1
    80002dbc:	ff1ff06f          	j	80002dac <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002dc0:	00190913          	addi	s2,s2,1
    80002dc4:	00f00793          	li	a5,15
    80002dc8:	0527e063          	bltu	a5,s2,80002e08 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002dcc:	00003517          	auipc	a0,0x3
    80002dd0:	3ac50513          	addi	a0,a0,940 # 80006178 <_ZZ14__print_uint64mE6digits+0x40>
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	82c080e7          	jalr	-2004(ra) # 80002600 <_Z11printStringPKc>
    80002ddc:	00000613          	li	a2,0
    80002de0:	00a00593          	li	a1,10
    80002de4:	0009051b          	sext.w	a0,s2
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	9b0080e7          	jalr	-1616(ra) # 80002798 <_Z8printIntiii>
    80002df0:	00003517          	auipc	a0,0x3
    80002df4:	48850513          	addi	a0,a0,1160 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	808080e7          	jalr	-2040(ra) # 80002600 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002e00:	00000493          	li	s1,0
    80002e04:	f99ff06f          	j	80002d9c <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002e08:	00003517          	auipc	a0,0x3
    80002e0c:	37850513          	addi	a0,a0,888 # 80006180 <_ZZ14__print_uint64mE6digits+0x48>
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	7f0080e7          	jalr	2032(ra) # 80002600 <_Z11printStringPKc>
    finishedB = true;
    80002e18:	00100793          	li	a5,1
    80002e1c:	00004717          	auipc	a4,0x4
    80002e20:	64f70aa3          	sb	a5,1621(a4) # 80007471 <finishedB>
    //thread_dispatch();
    //thread_exit();
}
    80002e24:	01813083          	ld	ra,24(sp)
    80002e28:	01013403          	ld	s0,16(sp)
    80002e2c:	00813483          	ld	s1,8(sp)
    80002e30:	00013903          	ld	s2,0(sp)
    80002e34:	02010113          	addi	sp,sp,32
    80002e38:	00008067          	ret

0000000080002e3c <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80002e3c:	fe010113          	addi	sp,sp,-32
    80002e40:	00113c23          	sd	ra,24(sp)
    80002e44:	00813823          	sd	s0,16(sp)
    80002e48:	00913423          	sd	s1,8(sp)
    80002e4c:	01213023          	sd	s2,0(sp)
    80002e50:	02010413          	addi	s0,sp,32
    80002e54:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002e58:	00100793          	li	a5,1
    80002e5c:	02a7f863          	bgeu	a5,a0,80002e8c <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002e60:	00a00793          	li	a5,10
    80002e64:	02f577b3          	remu	a5,a0,a5
    80002e68:	02078e63          	beqz	a5,80002ea4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002e6c:	fff48513          	addi	a0,s1,-1
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	fcc080e7          	jalr	-52(ra) # 80002e3c <_Z9fibonaccim>
    80002e78:	00050913          	mv	s2,a0
    80002e7c:	ffe48513          	addi	a0,s1,-2
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	fbc080e7          	jalr	-68(ra) # 80002e3c <_Z9fibonaccim>
    80002e88:	00a90533          	add	a0,s2,a0
}
    80002e8c:	01813083          	ld	ra,24(sp)
    80002e90:	01013403          	ld	s0,16(sp)
    80002e94:	00813483          	ld	s1,8(sp)
    80002e98:	00013903          	ld	s2,0(sp)
    80002e9c:	02010113          	addi	sp,sp,32
    80002ea0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002ea4:	ffffe097          	auipc	ra,0xffffe
    80002ea8:	18c080e7          	jalr	396(ra) # 80001030 <thread_dispatch>
    80002eac:	fc1ff06f          	j	80002e6c <_Z9fibonaccim+0x30>

0000000080002eb0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80002eb0:	fe010113          	addi	sp,sp,-32
    80002eb4:	00113c23          	sd	ra,24(sp)
    80002eb8:	00813823          	sd	s0,16(sp)
    80002ebc:	00913423          	sd	s1,8(sp)
    80002ec0:	01213023          	sd	s2,0(sp)
    80002ec4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ec8:	00000493          	li	s1,0
    80002ecc:	0400006f          	j	80002f0c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002ed0:	00003517          	auipc	a0,0x3
    80002ed4:	2c050513          	addi	a0,a0,704 # 80006190 <_ZZ14__print_uint64mE6digits+0x58>
    80002ed8:	fffff097          	auipc	ra,0xfffff
    80002edc:	728080e7          	jalr	1832(ra) # 80002600 <_Z11printStringPKc>
    80002ee0:	00000613          	li	a2,0
    80002ee4:	00a00593          	li	a1,10
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	8ac080e7          	jalr	-1876(ra) # 80002798 <_Z8printIntiii>
    80002ef4:	00003517          	auipc	a0,0x3
    80002ef8:	38450513          	addi	a0,a0,900 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	704080e7          	jalr	1796(ra) # 80002600 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002f04:	0014849b          	addiw	s1,s1,1
    80002f08:	0ff4f493          	andi	s1,s1,255
    80002f0c:	00200793          	li	a5,2
    80002f10:	fc97f0e3          	bgeu	a5,s1,80002ed0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80002f14:	00003517          	auipc	a0,0x3
    80002f18:	28450513          	addi	a0,a0,644 # 80006198 <_ZZ14__print_uint64mE6digits+0x60>
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	6e4080e7          	jalr	1764(ra) # 80002600 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002f24:	00700313          	li	t1,7
    thread_dispatch();
    80002f28:	ffffe097          	auipc	ra,0xffffe
    80002f2c:	108080e7          	jalr	264(ra) # 80001030 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002f30:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002f34:	00003517          	auipc	a0,0x3
    80002f38:	27450513          	addi	a0,a0,628 # 800061a8 <_ZZ14__print_uint64mE6digits+0x70>
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	6c4080e7          	jalr	1732(ra) # 80002600 <_Z11printStringPKc>
    80002f44:	00000613          	li	a2,0
    80002f48:	00a00593          	li	a1,10
    80002f4c:	0009051b          	sext.w	a0,s2
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	848080e7          	jalr	-1976(ra) # 80002798 <_Z8printIntiii>
    80002f58:	00003517          	auipc	a0,0x3
    80002f5c:	32050513          	addi	a0,a0,800 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80002f60:	fffff097          	auipc	ra,0xfffff
    80002f64:	6a0080e7          	jalr	1696(ra) # 80002600 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002f68:	00c00513          	li	a0,12
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	ed0080e7          	jalr	-304(ra) # 80002e3c <_Z9fibonaccim>
    80002f74:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002f78:	00003517          	auipc	a0,0x3
    80002f7c:	23850513          	addi	a0,a0,568 # 800061b0 <_ZZ14__print_uint64mE6digits+0x78>
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	680080e7          	jalr	1664(ra) # 80002600 <_Z11printStringPKc>
    80002f88:	00000613          	li	a2,0
    80002f8c:	00a00593          	li	a1,10
    80002f90:	0009051b          	sext.w	a0,s2
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	804080e7          	jalr	-2044(ra) # 80002798 <_Z8printIntiii>
    80002f9c:	00003517          	auipc	a0,0x3
    80002fa0:	2dc50513          	addi	a0,a0,732 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80002fa4:	fffff097          	auipc	ra,0xfffff
    80002fa8:	65c080e7          	jalr	1628(ra) # 80002600 <_Z11printStringPKc>
    80002fac:	0400006f          	j	80002fec <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002fb0:	00003517          	auipc	a0,0x3
    80002fb4:	1e050513          	addi	a0,a0,480 # 80006190 <_ZZ14__print_uint64mE6digits+0x58>
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	648080e7          	jalr	1608(ra) # 80002600 <_Z11printStringPKc>
    80002fc0:	00000613          	li	a2,0
    80002fc4:	00a00593          	li	a1,10
    80002fc8:	00048513          	mv	a0,s1
    80002fcc:	fffff097          	auipc	ra,0xfffff
    80002fd0:	7cc080e7          	jalr	1996(ra) # 80002798 <_Z8printIntiii>
    80002fd4:	00003517          	auipc	a0,0x3
    80002fd8:	2a450513          	addi	a0,a0,676 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	624080e7          	jalr	1572(ra) # 80002600 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002fe4:	0014849b          	addiw	s1,s1,1
    80002fe8:	0ff4f493          	andi	s1,s1,255
    80002fec:	00500793          	li	a5,5
    80002ff0:	fc97f0e3          	bgeu	a5,s1,80002fb0 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80002ff4:	00003517          	auipc	a0,0x3
    80002ff8:	17450513          	addi	a0,a0,372 # 80006168 <_ZZ14__print_uint64mE6digits+0x30>
    80002ffc:	fffff097          	auipc	ra,0xfffff
    80003000:	604080e7          	jalr	1540(ra) # 80002600 <_Z11printStringPKc>
    finishedC = true;
    80003004:	00100793          	li	a5,1
    80003008:	00004717          	auipc	a4,0x4
    8000300c:	46f70523          	sb	a5,1130(a4) # 80007472 <finishedC>
    //thread_dispatch();
    //thread_exit();
}
    80003010:	01813083          	ld	ra,24(sp)
    80003014:	01013403          	ld	s0,16(sp)
    80003018:	00813483          	ld	s1,8(sp)
    8000301c:	00013903          	ld	s2,0(sp)
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret

0000000080003028 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80003028:	fe010113          	addi	sp,sp,-32
    8000302c:	00113c23          	sd	ra,24(sp)
    80003030:	00813823          	sd	s0,16(sp)
    80003034:	00913423          	sd	s1,8(sp)
    80003038:	01213023          	sd	s2,0(sp)
    8000303c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003040:	00a00493          	li	s1,10
    80003044:	0400006f          	j	80003084 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003048:	00003517          	auipc	a0,0x3
    8000304c:	17850513          	addi	a0,a0,376 # 800061c0 <_ZZ14__print_uint64mE6digits+0x88>
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	5b0080e7          	jalr	1456(ra) # 80002600 <_Z11printStringPKc>
    80003058:	00000613          	li	a2,0
    8000305c:	00a00593          	li	a1,10
    80003060:	00048513          	mv	a0,s1
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	734080e7          	jalr	1844(ra) # 80002798 <_Z8printIntiii>
    8000306c:	00003517          	auipc	a0,0x3
    80003070:	20c50513          	addi	a0,a0,524 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	58c080e7          	jalr	1420(ra) # 80002600 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000307c:	0014849b          	addiw	s1,s1,1
    80003080:	0ff4f493          	andi	s1,s1,255
    80003084:	00c00793          	li	a5,12
    80003088:	fc97f0e3          	bgeu	a5,s1,80003048 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000308c:	00003517          	auipc	a0,0x3
    80003090:	13c50513          	addi	a0,a0,316 # 800061c8 <_ZZ14__print_uint64mE6digits+0x90>
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	56c080e7          	jalr	1388(ra) # 80002600 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000309c:	00500313          	li	t1,5
    thread_dispatch();
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	f90080e7          	jalr	-112(ra) # 80001030 <thread_dispatch>

    uint64 result = fibonacci(16);
    800030a8:	01000513          	li	a0,16
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	d90080e7          	jalr	-624(ra) # 80002e3c <_Z9fibonaccim>
    800030b4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800030b8:	00003517          	auipc	a0,0x3
    800030bc:	12050513          	addi	a0,a0,288 # 800061d8 <_ZZ14__print_uint64mE6digits+0xa0>
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	540080e7          	jalr	1344(ra) # 80002600 <_Z11printStringPKc>
    800030c8:	00000613          	li	a2,0
    800030cc:	00a00593          	li	a1,10
    800030d0:	0009051b          	sext.w	a0,s2
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	6c4080e7          	jalr	1732(ra) # 80002798 <_Z8printIntiii>
    800030dc:	00003517          	auipc	a0,0x3
    800030e0:	19c50513          	addi	a0,a0,412 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    800030e4:	fffff097          	auipc	ra,0xfffff
    800030e8:	51c080e7          	jalr	1308(ra) # 80002600 <_Z11printStringPKc>
    800030ec:	0400006f          	j	8000312c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800030f0:	00003517          	auipc	a0,0x3
    800030f4:	0d050513          	addi	a0,a0,208 # 800061c0 <_ZZ14__print_uint64mE6digits+0x88>
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	508080e7          	jalr	1288(ra) # 80002600 <_Z11printStringPKc>
    80003100:	00000613          	li	a2,0
    80003104:	00a00593          	li	a1,10
    80003108:	00048513          	mv	a0,s1
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	68c080e7          	jalr	1676(ra) # 80002798 <_Z8printIntiii>
    80003114:	00003517          	auipc	a0,0x3
    80003118:	16450513          	addi	a0,a0,356 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    8000311c:	fffff097          	auipc	ra,0xfffff
    80003120:	4e4080e7          	jalr	1252(ra) # 80002600 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003124:	0014849b          	addiw	s1,s1,1
    80003128:	0ff4f493          	andi	s1,s1,255
    8000312c:	00f00793          	li	a5,15
    80003130:	fc97f0e3          	bgeu	a5,s1,800030f0 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003134:	00003517          	auipc	a0,0x3
    80003138:	0b450513          	addi	a0,a0,180 # 800061e8 <_ZZ14__print_uint64mE6digits+0xb0>
    8000313c:	fffff097          	auipc	ra,0xfffff
    80003140:	4c4080e7          	jalr	1220(ra) # 80002600 <_Z11printStringPKc>
    finishedD = true;
    80003144:	00100793          	li	a5,1
    80003148:	00004717          	auipc	a4,0x4
    8000314c:	32f705a3          	sb	a5,811(a4) # 80007473 <finishedD>
    //thread_dispatch();
    //thread_exit();
}
    80003150:	01813083          	ld	ra,24(sp)
    80003154:	01013403          	ld	s0,16(sp)
    80003158:	00813483          	ld	s1,8(sp)
    8000315c:	00013903          	ld	s2,0(sp)
    80003160:	02010113          	addi	sp,sp,32
    80003164:	00008067          	ret

0000000080003168 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003168:	fd010113          	addi	sp,sp,-48
    8000316c:	02113423          	sd	ra,40(sp)
    80003170:	02813023          	sd	s0,32(sp)
    80003174:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003178:	00000613          	li	a2,0
    8000317c:	00000597          	auipc	a1,0x0
    80003180:	b2858593          	addi	a1,a1,-1240 # 80002ca4 <_Z11workerBodyAPv>
    80003184:	fd040513          	addi	a0,s0,-48
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	e90080e7          	jalr	-368(ra) # 80001018 <thread_create>
    printString("ThreadA created\n");
    80003190:	00003517          	auipc	a0,0x3
    80003194:	06850513          	addi	a0,a0,104 # 800061f8 <_ZZ14__print_uint64mE6digits+0xc0>
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	468080e7          	jalr	1128(ra) # 80002600 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800031a0:	00000613          	li	a2,0
    800031a4:	00000597          	auipc	a1,0x0
    800031a8:	bcc58593          	addi	a1,a1,-1076 # 80002d70 <_Z11workerBodyBPv>
    800031ac:	fd840513          	addi	a0,s0,-40
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	e68080e7          	jalr	-408(ra) # 80001018 <thread_create>
    printString("ThreadB created\n");
    800031b8:	00003517          	auipc	a0,0x3
    800031bc:	05850513          	addi	a0,a0,88 # 80006210 <_ZZ14__print_uint64mE6digits+0xd8>
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	440080e7          	jalr	1088(ra) # 80002600 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800031c8:	00000613          	li	a2,0
    800031cc:	00000597          	auipc	a1,0x0
    800031d0:	ce458593          	addi	a1,a1,-796 # 80002eb0 <_Z11workerBodyCPv>
    800031d4:	fe040513          	addi	a0,s0,-32
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	e40080e7          	jalr	-448(ra) # 80001018 <thread_create>
    printString("ThreadC created\n");
    800031e0:	00003517          	auipc	a0,0x3
    800031e4:	04850513          	addi	a0,a0,72 # 80006228 <_ZZ14__print_uint64mE6digits+0xf0>
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	418080e7          	jalr	1048(ra) # 80002600 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800031f0:	00000613          	li	a2,0
    800031f4:	00000597          	auipc	a1,0x0
    800031f8:	e3458593          	addi	a1,a1,-460 # 80003028 <_Z11workerBodyDPv>
    800031fc:	fe840513          	addi	a0,s0,-24
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	e18080e7          	jalr	-488(ra) # 80001018 <thread_create>
    printString("ThreadD created\n");
    80003208:	00003517          	auipc	a0,0x3
    8000320c:	03850513          	addi	a0,a0,56 # 80006240 <_ZZ14__print_uint64mE6digits+0x108>
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	3f0080e7          	jalr	1008(ra) # 80002600 <_Z11printStringPKc>
    80003218:	00c0006f          	j	80003224 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	e14080e7          	jalr	-492(ra) # 80001030 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003224:	00004797          	auipc	a5,0x4
    80003228:	24c7c783          	lbu	a5,588(a5) # 80007470 <finishedA>
    8000322c:	fe0788e3          	beqz	a5,8000321c <_Z18Threads_C_API_testv+0xb4>
    80003230:	00004797          	auipc	a5,0x4
    80003234:	2417c783          	lbu	a5,577(a5) # 80007471 <finishedB>
    80003238:	fe0782e3          	beqz	a5,8000321c <_Z18Threads_C_API_testv+0xb4>
    8000323c:	00004797          	auipc	a5,0x4
    80003240:	2367c783          	lbu	a5,566(a5) # 80007472 <finishedC>
    80003244:	fc078ce3          	beqz	a5,8000321c <_Z18Threads_C_API_testv+0xb4>
    80003248:	00004797          	auipc	a5,0x4
    8000324c:	22b7c783          	lbu	a5,555(a5) # 80007473 <finishedD>
    80003250:	fc0786e3          	beqz	a5,8000321c <_Z18Threads_C_API_testv+0xb4>
    }
}
    80003254:	02813083          	ld	ra,40(sp)
    80003258:	02013403          	ld	s0,32(sp)
    8000325c:	03010113          	addi	sp,sp,48
    80003260:	00008067          	ret

0000000080003264 <_Z8userMainv>:

#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"

void userMain() {
    80003264:	ff010113          	addi	sp,sp,-16
    80003268:	00113423          	sd	ra,8(sp)
    8000326c:	00813023          	sd	s0,0(sp)
    80003270:	01010413          	addi	s0,sp,16
    __print_string("I am here!\n");
    80003274:	00003517          	auipc	a0,0x3
    80003278:	fe450513          	addi	a0,a0,-28 # 80006258 <_ZZ14__print_uint64mE6digits+0x120>
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	26c080e7          	jalr	620(ra) # 800024e8 <_Z14__print_stringPKc>
    //printString("I am here!");
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80003284:	00000097          	auipc	ra,0x0
    80003288:	ee4080e7          	jalr	-284(ra) # 80003168 <_Z18Threads_C_API_testv>
    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //__print_string("I am here too!\n");
    //thread_dispatch();
    __print_string("I am here again!\n");
    8000328c:	00003517          	auipc	a0,0x3
    80003290:	fdc50513          	addi	a0,a0,-36 # 80006268 <_ZZ14__print_uint64mE6digits+0x130>
    80003294:	fffff097          	auipc	ra,0xfffff
    80003298:	254080e7          	jalr	596(ra) # 800024e8 <_Z14__print_stringPKc>
    //thread_exit();
    /*TCB::running->setFinished(true);
    thread_dispatch();*/
    8000329c:	00813083          	ld	ra,8(sp)
    800032a0:	00013403          	ld	s0,0(sp)
    800032a4:	01010113          	addi	sp,sp,16
    800032a8:	00008067          	ret

00000000800032ac <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800032ac:	fe010113          	addi	sp,sp,-32
    800032b0:	00113c23          	sd	ra,24(sp)
    800032b4:	00813823          	sd	s0,16(sp)
    800032b8:	00913423          	sd	s1,8(sp)
    800032bc:	01213023          	sd	s2,0(sp)
    800032c0:	02010413          	addi	s0,sp,32
    800032c4:	00050493          	mv	s1,a0
    800032c8:	00058913          	mv	s2,a1
    800032cc:	0015879b          	addiw	a5,a1,1
    800032d0:	0007851b          	sext.w	a0,a5
    800032d4:	00f4a023          	sw	a5,0(s1)
    800032d8:	0004a823          	sw	zero,16(s1)
    800032dc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800032e0:	00251513          	slli	a0,a0,0x2
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	d1c080e7          	jalr	-740(ra) # 80001000 <mem_alloc>
    800032ec:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800032f0:	00000593          	li	a1,0
    800032f4:	02048513          	addi	a0,s1,32
    800032f8:	ffffe097          	auipc	ra,0xffffe
    800032fc:	d50080e7          	jalr	-688(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80003300:	00090593          	mv	a1,s2
    80003304:	01848513          	addi	a0,s1,24
    80003308:	ffffe097          	auipc	ra,0xffffe
    8000330c:	d40080e7          	jalr	-704(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    80003310:	00100593          	li	a1,1
    80003314:	02848513          	addi	a0,s1,40
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	d30080e7          	jalr	-720(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    80003320:	00100593          	li	a1,1
    80003324:	03048513          	addi	a0,s1,48
    80003328:	ffffe097          	auipc	ra,0xffffe
    8000332c:	d20080e7          	jalr	-736(ra) # 80001048 <sem_open>
}
    80003330:	01813083          	ld	ra,24(sp)
    80003334:	01013403          	ld	s0,16(sp)
    80003338:	00813483          	ld	s1,8(sp)
    8000333c:	00013903          	ld	s2,0(sp)
    80003340:	02010113          	addi	sp,sp,32
    80003344:	00008067          	ret

0000000080003348 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003348:	fe010113          	addi	sp,sp,-32
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	00813823          	sd	s0,16(sp)
    80003354:	00913423          	sd	s1,8(sp)
    80003358:	01213023          	sd	s2,0(sp)
    8000335c:	02010413          	addi	s0,sp,32
    80003360:	00050493          	mv	s1,a0
    80003364:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003368:	01853503          	ld	a0,24(a0)
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	cf4080e7          	jalr	-780(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    80003374:	0304b503          	ld	a0,48(s1)
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	ce8080e7          	jalr	-792(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    80003380:	0084b783          	ld	a5,8(s1)
    80003384:	0144a703          	lw	a4,20(s1)
    80003388:	00271713          	slli	a4,a4,0x2
    8000338c:	00e787b3          	add	a5,a5,a4
    80003390:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003394:	0144a783          	lw	a5,20(s1)
    80003398:	0017879b          	addiw	a5,a5,1
    8000339c:	0004a703          	lw	a4,0(s1)
    800033a0:	02e7e7bb          	remw	a5,a5,a4
    800033a4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800033a8:	0304b503          	ld	a0,48(s1)
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	cc0080e7          	jalr	-832(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    800033b4:	0204b503          	ld	a0,32(s1)
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	cb4080e7          	jalr	-844(ra) # 8000106c <sem_signal>

}
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00813483          	ld	s1,8(sp)
    800033cc:	00013903          	ld	s2,0(sp)
    800033d0:	02010113          	addi	sp,sp,32
    800033d4:	00008067          	ret

00000000800033d8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	01213023          	sd	s2,0(sp)
    800033ec:	02010413          	addi	s0,sp,32
    800033f0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800033f4:	02053503          	ld	a0,32(a0)
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	c68080e7          	jalr	-920(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    80003400:	0284b503          	ld	a0,40(s1)
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	c5c080e7          	jalr	-932(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    8000340c:	0084b703          	ld	a4,8(s1)
    80003410:	0104a783          	lw	a5,16(s1)
    80003414:	00279693          	slli	a3,a5,0x2
    80003418:	00d70733          	add	a4,a4,a3
    8000341c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003420:	0017879b          	addiw	a5,a5,1
    80003424:	0004a703          	lw	a4,0(s1)
    80003428:	02e7e7bb          	remw	a5,a5,a4
    8000342c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003430:	0284b503          	ld	a0,40(s1)
    80003434:	ffffe097          	auipc	ra,0xffffe
    80003438:	c38080e7          	jalr	-968(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    8000343c:	0184b503          	ld	a0,24(s1)
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	c2c080e7          	jalr	-980(ra) # 8000106c <sem_signal>

    return ret;
}
    80003448:	00090513          	mv	a0,s2
    8000344c:	01813083          	ld	ra,24(sp)
    80003450:	01013403          	ld	s0,16(sp)
    80003454:	00813483          	ld	s1,8(sp)
    80003458:	00013903          	ld	s2,0(sp)
    8000345c:	02010113          	addi	sp,sp,32
    80003460:	00008067          	ret

0000000080003464 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003464:	fe010113          	addi	sp,sp,-32
    80003468:	00113c23          	sd	ra,24(sp)
    8000346c:	00813823          	sd	s0,16(sp)
    80003470:	00913423          	sd	s1,8(sp)
    80003474:	01213023          	sd	s2,0(sp)
    80003478:	02010413          	addi	s0,sp,32
    8000347c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003480:	02853503          	ld	a0,40(a0)
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	bdc080e7          	jalr	-1060(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    8000348c:	0304b503          	ld	a0,48(s1)
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	bd0080e7          	jalr	-1072(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    80003498:	0144a783          	lw	a5,20(s1)
    8000349c:	0104a903          	lw	s2,16(s1)
    800034a0:	0327ce63          	blt	a5,s2,800034dc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800034a4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800034a8:	0304b503          	ld	a0,48(s1)
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	bc0080e7          	jalr	-1088(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    800034b4:	0284b503          	ld	a0,40(s1)
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	bb4080e7          	jalr	-1100(ra) # 8000106c <sem_signal>

    return ret;
}
    800034c0:	00090513          	mv	a0,s2
    800034c4:	01813083          	ld	ra,24(sp)
    800034c8:	01013403          	ld	s0,16(sp)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	00013903          	ld	s2,0(sp)
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00008067          	ret
        ret = cap - head + tail;
    800034dc:	0004a703          	lw	a4,0(s1)
    800034e0:	4127093b          	subw	s2,a4,s2
    800034e4:	00f9093b          	addw	s2,s2,a5
    800034e8:	fc1ff06f          	j	800034a8 <_ZN6Buffer6getCntEv+0x44>

00000000800034ec <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800034ec:	fe010113          	addi	sp,sp,-32
    800034f0:	00113c23          	sd	ra,24(sp)
    800034f4:	00813823          	sd	s0,16(sp)
    800034f8:	00913423          	sd	s1,8(sp)
    800034fc:	02010413          	addi	s0,sp,32
    80003500:	00050493          	mv	s1,a0
    putc('\n');
    80003504:	00a00513          	li	a0,10
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	df0080e7          	jalr	-528(ra) # 800012f8 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003510:	00003517          	auipc	a0,0x3
    80003514:	c3850513          	addi	a0,a0,-968 # 80006148 <_ZZ14__print_uint64mE6digits+0x10>
    80003518:	fffff097          	auipc	ra,0xfffff
    8000351c:	0e8080e7          	jalr	232(ra) # 80002600 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003520:	00048513          	mv	a0,s1
    80003524:	00000097          	auipc	ra,0x0
    80003528:	f40080e7          	jalr	-192(ra) # 80003464 <_ZN6Buffer6getCntEv>
    8000352c:	02a05c63          	blez	a0,80003564 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003530:	0084b783          	ld	a5,8(s1)
    80003534:	0104a703          	lw	a4,16(s1)
    80003538:	00271713          	slli	a4,a4,0x2
    8000353c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003540:	0007c503          	lbu	a0,0(a5)
    80003544:	ffffe097          	auipc	ra,0xffffe
    80003548:	db4080e7          	jalr	-588(ra) # 800012f8 <_Z4putcc>
        head = (head + 1) % cap;
    8000354c:	0104a783          	lw	a5,16(s1)
    80003550:	0017879b          	addiw	a5,a5,1
    80003554:	0004a703          	lw	a4,0(s1)
    80003558:	02e7e7bb          	remw	a5,a5,a4
    8000355c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003560:	fc1ff06f          	j	80003520 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003564:	02100513          	li	a0,33
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	d90080e7          	jalr	-624(ra) # 800012f8 <_Z4putcc>
    putc('\n');
    80003570:	00a00513          	li	a0,10
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	d84080e7          	jalr	-636(ra) # 800012f8 <_Z4putcc>
    mem_free(buffer);
    8000357c:	0084b503          	ld	a0,8(s1)
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	a8c080e7          	jalr	-1396(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    80003588:	0204b503          	ld	a0,32(s1)
    8000358c:	ffffe097          	auipc	ra,0xffffe
    80003590:	ac8080e7          	jalr	-1336(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    80003594:	0184b503          	ld	a0,24(s1)
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	abc080e7          	jalr	-1348(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    800035a0:	0304b503          	ld	a0,48(s1)
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	ab0080e7          	jalr	-1360(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    800035ac:	0284b503          	ld	a0,40(s1)
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	aa4080e7          	jalr	-1372(ra) # 80001054 <sem_close>
}
    800035b8:	01813083          	ld	ra,24(sp)
    800035bc:	01013403          	ld	s0,16(sp)
    800035c0:	00813483          	ld	s1,8(sp)
    800035c4:	02010113          	addi	sp,sp,32
    800035c8:	00008067          	ret

00000000800035cc <start>:
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00813423          	sd	s0,8(sp)
    800035d4:	01010413          	addi	s0,sp,16
    800035d8:	300027f3          	csrr	a5,mstatus
    800035dc:	ffffe737          	lui	a4,0xffffe
    800035e0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff611f>
    800035e4:	00e7f7b3          	and	a5,a5,a4
    800035e8:	00001737          	lui	a4,0x1
    800035ec:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800035f0:	00e7e7b3          	or	a5,a5,a4
    800035f4:	30079073          	csrw	mstatus,a5
    800035f8:	00000797          	auipc	a5,0x0
    800035fc:	16078793          	addi	a5,a5,352 # 80003758 <system_main>
    80003600:	34179073          	csrw	mepc,a5
    80003604:	00000793          	li	a5,0
    80003608:	18079073          	csrw	satp,a5
    8000360c:	000107b7          	lui	a5,0x10
    80003610:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003614:	30279073          	csrw	medeleg,a5
    80003618:	30379073          	csrw	mideleg,a5
    8000361c:	104027f3          	csrr	a5,sie
    80003620:	2227e793          	ori	a5,a5,546
    80003624:	10479073          	csrw	sie,a5
    80003628:	fff00793          	li	a5,-1
    8000362c:	00a7d793          	srli	a5,a5,0xa
    80003630:	3b079073          	csrw	pmpaddr0,a5
    80003634:	00f00793          	li	a5,15
    80003638:	3a079073          	csrw	pmpcfg0,a5
    8000363c:	f14027f3          	csrr	a5,mhartid
    80003640:	0200c737          	lui	a4,0x200c
    80003644:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003648:	0007869b          	sext.w	a3,a5
    8000364c:	00269713          	slli	a4,a3,0x2
    80003650:	000f4637          	lui	a2,0xf4
    80003654:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003658:	00d70733          	add	a4,a4,a3
    8000365c:	0037979b          	slliw	a5,a5,0x3
    80003660:	020046b7          	lui	a3,0x2004
    80003664:	00d787b3          	add	a5,a5,a3
    80003668:	00c585b3          	add	a1,a1,a2
    8000366c:	00371693          	slli	a3,a4,0x3
    80003670:	00004717          	auipc	a4,0x4
    80003674:	e1070713          	addi	a4,a4,-496 # 80007480 <timer_scratch>
    80003678:	00b7b023          	sd	a1,0(a5)
    8000367c:	00d70733          	add	a4,a4,a3
    80003680:	00f73c23          	sd	a5,24(a4)
    80003684:	02c73023          	sd	a2,32(a4)
    80003688:	34071073          	csrw	mscratch,a4
    8000368c:	00000797          	auipc	a5,0x0
    80003690:	6e478793          	addi	a5,a5,1764 # 80003d70 <timervec>
    80003694:	30579073          	csrw	mtvec,a5
    80003698:	300027f3          	csrr	a5,mstatus
    8000369c:	0087e793          	ori	a5,a5,8
    800036a0:	30079073          	csrw	mstatus,a5
    800036a4:	304027f3          	csrr	a5,mie
    800036a8:	0807e793          	ori	a5,a5,128
    800036ac:	30479073          	csrw	mie,a5
    800036b0:	f14027f3          	csrr	a5,mhartid
    800036b4:	0007879b          	sext.w	a5,a5
    800036b8:	00078213          	mv	tp,a5
    800036bc:	30200073          	mret
    800036c0:	00813403          	ld	s0,8(sp)
    800036c4:	01010113          	addi	sp,sp,16
    800036c8:	00008067          	ret

00000000800036cc <timerinit>:
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00813423          	sd	s0,8(sp)
    800036d4:	01010413          	addi	s0,sp,16
    800036d8:	f14027f3          	csrr	a5,mhartid
    800036dc:	0200c737          	lui	a4,0x200c
    800036e0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800036e4:	0007869b          	sext.w	a3,a5
    800036e8:	00269713          	slli	a4,a3,0x2
    800036ec:	000f4637          	lui	a2,0xf4
    800036f0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800036f4:	00d70733          	add	a4,a4,a3
    800036f8:	0037979b          	slliw	a5,a5,0x3
    800036fc:	020046b7          	lui	a3,0x2004
    80003700:	00d787b3          	add	a5,a5,a3
    80003704:	00c585b3          	add	a1,a1,a2
    80003708:	00371693          	slli	a3,a4,0x3
    8000370c:	00004717          	auipc	a4,0x4
    80003710:	d7470713          	addi	a4,a4,-652 # 80007480 <timer_scratch>
    80003714:	00b7b023          	sd	a1,0(a5)
    80003718:	00d70733          	add	a4,a4,a3
    8000371c:	00f73c23          	sd	a5,24(a4)
    80003720:	02c73023          	sd	a2,32(a4)
    80003724:	34071073          	csrw	mscratch,a4
    80003728:	00000797          	auipc	a5,0x0
    8000372c:	64878793          	addi	a5,a5,1608 # 80003d70 <timervec>
    80003730:	30579073          	csrw	mtvec,a5
    80003734:	300027f3          	csrr	a5,mstatus
    80003738:	0087e793          	ori	a5,a5,8
    8000373c:	30079073          	csrw	mstatus,a5
    80003740:	304027f3          	csrr	a5,mie
    80003744:	0807e793          	ori	a5,a5,128
    80003748:	30479073          	csrw	mie,a5
    8000374c:	00813403          	ld	s0,8(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret

0000000080003758 <system_main>:
    80003758:	fe010113          	addi	sp,sp,-32
    8000375c:	00813823          	sd	s0,16(sp)
    80003760:	00913423          	sd	s1,8(sp)
    80003764:	00113c23          	sd	ra,24(sp)
    80003768:	02010413          	addi	s0,sp,32
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	0c4080e7          	jalr	196(ra) # 80003830 <cpuid>
    80003774:	00004497          	auipc	s1,0x4
    80003778:	c8c48493          	addi	s1,s1,-884 # 80007400 <started>
    8000377c:	02050263          	beqz	a0,800037a0 <system_main+0x48>
    80003780:	0004a783          	lw	a5,0(s1)
    80003784:	0007879b          	sext.w	a5,a5
    80003788:	fe078ce3          	beqz	a5,80003780 <system_main+0x28>
    8000378c:	0ff0000f          	fence
    80003790:	00003517          	auipc	a0,0x3
    80003794:	b2050513          	addi	a0,a0,-1248 # 800062b0 <_ZZ14__print_uint64mE6digits+0x178>
    80003798:	00001097          	auipc	ra,0x1
    8000379c:	a74080e7          	jalr	-1420(ra) # 8000420c <panic>
    800037a0:	00001097          	auipc	ra,0x1
    800037a4:	9c8080e7          	jalr	-1592(ra) # 80004168 <consoleinit>
    800037a8:	00001097          	auipc	ra,0x1
    800037ac:	154080e7          	jalr	340(ra) # 800048fc <printfinit>
    800037b0:	00003517          	auipc	a0,0x3
    800037b4:	ac850513          	addi	a0,a0,-1336 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    800037b8:	00001097          	auipc	ra,0x1
    800037bc:	ab0080e7          	jalr	-1360(ra) # 80004268 <__printf>
    800037c0:	00003517          	auipc	a0,0x3
    800037c4:	ac050513          	addi	a0,a0,-1344 # 80006280 <_ZZ14__print_uint64mE6digits+0x148>
    800037c8:	00001097          	auipc	ra,0x1
    800037cc:	aa0080e7          	jalr	-1376(ra) # 80004268 <__printf>
    800037d0:	00003517          	auipc	a0,0x3
    800037d4:	aa850513          	addi	a0,a0,-1368 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    800037d8:	00001097          	auipc	ra,0x1
    800037dc:	a90080e7          	jalr	-1392(ra) # 80004268 <__printf>
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	4a8080e7          	jalr	1192(ra) # 80004c88 <kinit>
    800037e8:	00000097          	auipc	ra,0x0
    800037ec:	148080e7          	jalr	328(ra) # 80003930 <trapinit>
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	16c080e7          	jalr	364(ra) # 8000395c <trapinithart>
    800037f8:	00000097          	auipc	ra,0x0
    800037fc:	5b8080e7          	jalr	1464(ra) # 80003db0 <plicinit>
    80003800:	00000097          	auipc	ra,0x0
    80003804:	5d8080e7          	jalr	1496(ra) # 80003dd8 <plicinithart>
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	078080e7          	jalr	120(ra) # 80003880 <userinit>
    80003810:	0ff0000f          	fence
    80003814:	00100793          	li	a5,1
    80003818:	00003517          	auipc	a0,0x3
    8000381c:	a8050513          	addi	a0,a0,-1408 # 80006298 <_ZZ14__print_uint64mE6digits+0x160>
    80003820:	00f4a023          	sw	a5,0(s1)
    80003824:	00001097          	auipc	ra,0x1
    80003828:	a44080e7          	jalr	-1468(ra) # 80004268 <__printf>
    8000382c:	0000006f          	j	8000382c <system_main+0xd4>

0000000080003830 <cpuid>:
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00813423          	sd	s0,8(sp)
    80003838:	01010413          	addi	s0,sp,16
    8000383c:	00020513          	mv	a0,tp
    80003840:	00813403          	ld	s0,8(sp)
    80003844:	0005051b          	sext.w	a0,a0
    80003848:	01010113          	addi	sp,sp,16
    8000384c:	00008067          	ret

0000000080003850 <mycpu>:
    80003850:	ff010113          	addi	sp,sp,-16
    80003854:	00813423          	sd	s0,8(sp)
    80003858:	01010413          	addi	s0,sp,16
    8000385c:	00020793          	mv	a5,tp
    80003860:	00813403          	ld	s0,8(sp)
    80003864:	0007879b          	sext.w	a5,a5
    80003868:	00779793          	slli	a5,a5,0x7
    8000386c:	00005517          	auipc	a0,0x5
    80003870:	c4450513          	addi	a0,a0,-956 # 800084b0 <cpus>
    80003874:	00f50533          	add	a0,a0,a5
    80003878:	01010113          	addi	sp,sp,16
    8000387c:	00008067          	ret

0000000080003880 <userinit>:
    80003880:	ff010113          	addi	sp,sp,-16
    80003884:	00813423          	sd	s0,8(sp)
    80003888:	01010413          	addi	s0,sp,16
    8000388c:	00813403          	ld	s0,8(sp)
    80003890:	01010113          	addi	sp,sp,16
    80003894:	ffffe317          	auipc	t1,0xffffe
    80003898:	f1030067          	jr	-240(t1) # 800017a4 <main>

000000008000389c <either_copyout>:
    8000389c:	ff010113          	addi	sp,sp,-16
    800038a0:	00813023          	sd	s0,0(sp)
    800038a4:	00113423          	sd	ra,8(sp)
    800038a8:	01010413          	addi	s0,sp,16
    800038ac:	02051663          	bnez	a0,800038d8 <either_copyout+0x3c>
    800038b0:	00058513          	mv	a0,a1
    800038b4:	00060593          	mv	a1,a2
    800038b8:	0006861b          	sext.w	a2,a3
    800038bc:	00002097          	auipc	ra,0x2
    800038c0:	c58080e7          	jalr	-936(ra) # 80005514 <__memmove>
    800038c4:	00813083          	ld	ra,8(sp)
    800038c8:	00013403          	ld	s0,0(sp)
    800038cc:	00000513          	li	a0,0
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	00008067          	ret
    800038d8:	00003517          	auipc	a0,0x3
    800038dc:	a0050513          	addi	a0,a0,-1536 # 800062d8 <_ZZ14__print_uint64mE6digits+0x1a0>
    800038e0:	00001097          	auipc	ra,0x1
    800038e4:	92c080e7          	jalr	-1748(ra) # 8000420c <panic>

00000000800038e8 <either_copyin>:
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00813023          	sd	s0,0(sp)
    800038f0:	00113423          	sd	ra,8(sp)
    800038f4:	01010413          	addi	s0,sp,16
    800038f8:	02059463          	bnez	a1,80003920 <either_copyin+0x38>
    800038fc:	00060593          	mv	a1,a2
    80003900:	0006861b          	sext.w	a2,a3
    80003904:	00002097          	auipc	ra,0x2
    80003908:	c10080e7          	jalr	-1008(ra) # 80005514 <__memmove>
    8000390c:	00813083          	ld	ra,8(sp)
    80003910:	00013403          	ld	s0,0(sp)
    80003914:	00000513          	li	a0,0
    80003918:	01010113          	addi	sp,sp,16
    8000391c:	00008067          	ret
    80003920:	00003517          	auipc	a0,0x3
    80003924:	9e050513          	addi	a0,a0,-1568 # 80006300 <_ZZ14__print_uint64mE6digits+0x1c8>
    80003928:	00001097          	auipc	ra,0x1
    8000392c:	8e4080e7          	jalr	-1820(ra) # 8000420c <panic>

0000000080003930 <trapinit>:
    80003930:	ff010113          	addi	sp,sp,-16
    80003934:	00813423          	sd	s0,8(sp)
    80003938:	01010413          	addi	s0,sp,16
    8000393c:	00813403          	ld	s0,8(sp)
    80003940:	00003597          	auipc	a1,0x3
    80003944:	9e858593          	addi	a1,a1,-1560 # 80006328 <_ZZ14__print_uint64mE6digits+0x1f0>
    80003948:	00005517          	auipc	a0,0x5
    8000394c:	be850513          	addi	a0,a0,-1048 # 80008530 <tickslock>
    80003950:	01010113          	addi	sp,sp,16
    80003954:	00001317          	auipc	t1,0x1
    80003958:	5c430067          	jr	1476(t1) # 80004f18 <initlock>

000000008000395c <trapinithart>:
    8000395c:	ff010113          	addi	sp,sp,-16
    80003960:	00813423          	sd	s0,8(sp)
    80003964:	01010413          	addi	s0,sp,16
    80003968:	00000797          	auipc	a5,0x0
    8000396c:	2f878793          	addi	a5,a5,760 # 80003c60 <kernelvec>
    80003970:	10579073          	csrw	stvec,a5
    80003974:	00813403          	ld	s0,8(sp)
    80003978:	01010113          	addi	sp,sp,16
    8000397c:	00008067          	ret

0000000080003980 <usertrap>:
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00813423          	sd	s0,8(sp)
    80003988:	01010413          	addi	s0,sp,16
    8000398c:	00813403          	ld	s0,8(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret

0000000080003998 <usertrapret>:
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret

00000000800039b0 <kerneltrap>:
    800039b0:	fe010113          	addi	sp,sp,-32
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	00913423          	sd	s1,8(sp)
    800039c0:	02010413          	addi	s0,sp,32
    800039c4:	142025f3          	csrr	a1,scause
    800039c8:	100027f3          	csrr	a5,sstatus
    800039cc:	0027f793          	andi	a5,a5,2
    800039d0:	10079c63          	bnez	a5,80003ae8 <kerneltrap+0x138>
    800039d4:	142027f3          	csrr	a5,scause
    800039d8:	0207ce63          	bltz	a5,80003a14 <kerneltrap+0x64>
    800039dc:	00003517          	auipc	a0,0x3
    800039e0:	99450513          	addi	a0,a0,-1644 # 80006370 <_ZZ14__print_uint64mE6digits+0x238>
    800039e4:	00001097          	auipc	ra,0x1
    800039e8:	884080e7          	jalr	-1916(ra) # 80004268 <__printf>
    800039ec:	141025f3          	csrr	a1,sepc
    800039f0:	14302673          	csrr	a2,stval
    800039f4:	00003517          	auipc	a0,0x3
    800039f8:	98c50513          	addi	a0,a0,-1652 # 80006380 <_ZZ14__print_uint64mE6digits+0x248>
    800039fc:	00001097          	auipc	ra,0x1
    80003a00:	86c080e7          	jalr	-1940(ra) # 80004268 <__printf>
    80003a04:	00003517          	auipc	a0,0x3
    80003a08:	99450513          	addi	a0,a0,-1644 # 80006398 <_ZZ14__print_uint64mE6digits+0x260>
    80003a0c:	00001097          	auipc	ra,0x1
    80003a10:	800080e7          	jalr	-2048(ra) # 8000420c <panic>
    80003a14:	0ff7f713          	andi	a4,a5,255
    80003a18:	00900693          	li	a3,9
    80003a1c:	04d70063          	beq	a4,a3,80003a5c <kerneltrap+0xac>
    80003a20:	fff00713          	li	a4,-1
    80003a24:	03f71713          	slli	a4,a4,0x3f
    80003a28:	00170713          	addi	a4,a4,1
    80003a2c:	fae798e3          	bne	a5,a4,800039dc <kerneltrap+0x2c>
    80003a30:	00000097          	auipc	ra,0x0
    80003a34:	e00080e7          	jalr	-512(ra) # 80003830 <cpuid>
    80003a38:	06050663          	beqz	a0,80003aa4 <kerneltrap+0xf4>
    80003a3c:	144027f3          	csrr	a5,sip
    80003a40:	ffd7f793          	andi	a5,a5,-3
    80003a44:	14479073          	csrw	sip,a5
    80003a48:	01813083          	ld	ra,24(sp)
    80003a4c:	01013403          	ld	s0,16(sp)
    80003a50:	00813483          	ld	s1,8(sp)
    80003a54:	02010113          	addi	sp,sp,32
    80003a58:	00008067          	ret
    80003a5c:	00000097          	auipc	ra,0x0
    80003a60:	3c8080e7          	jalr	968(ra) # 80003e24 <plic_claim>
    80003a64:	00a00793          	li	a5,10
    80003a68:	00050493          	mv	s1,a0
    80003a6c:	06f50863          	beq	a0,a5,80003adc <kerneltrap+0x12c>
    80003a70:	fc050ce3          	beqz	a0,80003a48 <kerneltrap+0x98>
    80003a74:	00050593          	mv	a1,a0
    80003a78:	00003517          	auipc	a0,0x3
    80003a7c:	8d850513          	addi	a0,a0,-1832 # 80006350 <_ZZ14__print_uint64mE6digits+0x218>
    80003a80:	00000097          	auipc	ra,0x0
    80003a84:	7e8080e7          	jalr	2024(ra) # 80004268 <__printf>
    80003a88:	01013403          	ld	s0,16(sp)
    80003a8c:	01813083          	ld	ra,24(sp)
    80003a90:	00048513          	mv	a0,s1
    80003a94:	00813483          	ld	s1,8(sp)
    80003a98:	02010113          	addi	sp,sp,32
    80003a9c:	00000317          	auipc	t1,0x0
    80003aa0:	3c030067          	jr	960(t1) # 80003e5c <plic_complete>
    80003aa4:	00005517          	auipc	a0,0x5
    80003aa8:	a8c50513          	addi	a0,a0,-1396 # 80008530 <tickslock>
    80003aac:	00001097          	auipc	ra,0x1
    80003ab0:	490080e7          	jalr	1168(ra) # 80004f3c <acquire>
    80003ab4:	00004717          	auipc	a4,0x4
    80003ab8:	95070713          	addi	a4,a4,-1712 # 80007404 <ticks>
    80003abc:	00072783          	lw	a5,0(a4)
    80003ac0:	00005517          	auipc	a0,0x5
    80003ac4:	a7050513          	addi	a0,a0,-1424 # 80008530 <tickslock>
    80003ac8:	0017879b          	addiw	a5,a5,1
    80003acc:	00f72023          	sw	a5,0(a4)
    80003ad0:	00001097          	auipc	ra,0x1
    80003ad4:	538080e7          	jalr	1336(ra) # 80005008 <release>
    80003ad8:	f65ff06f          	j	80003a3c <kerneltrap+0x8c>
    80003adc:	00001097          	auipc	ra,0x1
    80003ae0:	094080e7          	jalr	148(ra) # 80004b70 <uartintr>
    80003ae4:	fa5ff06f          	j	80003a88 <kerneltrap+0xd8>
    80003ae8:	00003517          	auipc	a0,0x3
    80003aec:	84850513          	addi	a0,a0,-1976 # 80006330 <_ZZ14__print_uint64mE6digits+0x1f8>
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	71c080e7          	jalr	1820(ra) # 8000420c <panic>

0000000080003af8 <clockintr>:
    80003af8:	fe010113          	addi	sp,sp,-32
    80003afc:	00813823          	sd	s0,16(sp)
    80003b00:	00913423          	sd	s1,8(sp)
    80003b04:	00113c23          	sd	ra,24(sp)
    80003b08:	02010413          	addi	s0,sp,32
    80003b0c:	00005497          	auipc	s1,0x5
    80003b10:	a2448493          	addi	s1,s1,-1500 # 80008530 <tickslock>
    80003b14:	00048513          	mv	a0,s1
    80003b18:	00001097          	auipc	ra,0x1
    80003b1c:	424080e7          	jalr	1060(ra) # 80004f3c <acquire>
    80003b20:	00004717          	auipc	a4,0x4
    80003b24:	8e470713          	addi	a4,a4,-1820 # 80007404 <ticks>
    80003b28:	00072783          	lw	a5,0(a4)
    80003b2c:	01013403          	ld	s0,16(sp)
    80003b30:	01813083          	ld	ra,24(sp)
    80003b34:	00048513          	mv	a0,s1
    80003b38:	0017879b          	addiw	a5,a5,1
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	00f72023          	sw	a5,0(a4)
    80003b44:	02010113          	addi	sp,sp,32
    80003b48:	00001317          	auipc	t1,0x1
    80003b4c:	4c030067          	jr	1216(t1) # 80005008 <release>

0000000080003b50 <devintr>:
    80003b50:	142027f3          	csrr	a5,scause
    80003b54:	00000513          	li	a0,0
    80003b58:	0007c463          	bltz	a5,80003b60 <devintr+0x10>
    80003b5c:	00008067          	ret
    80003b60:	fe010113          	addi	sp,sp,-32
    80003b64:	00813823          	sd	s0,16(sp)
    80003b68:	00113c23          	sd	ra,24(sp)
    80003b6c:	00913423          	sd	s1,8(sp)
    80003b70:	02010413          	addi	s0,sp,32
    80003b74:	0ff7f713          	andi	a4,a5,255
    80003b78:	00900693          	li	a3,9
    80003b7c:	04d70c63          	beq	a4,a3,80003bd4 <devintr+0x84>
    80003b80:	fff00713          	li	a4,-1
    80003b84:	03f71713          	slli	a4,a4,0x3f
    80003b88:	00170713          	addi	a4,a4,1
    80003b8c:	00e78c63          	beq	a5,a4,80003ba4 <devintr+0x54>
    80003b90:	01813083          	ld	ra,24(sp)
    80003b94:	01013403          	ld	s0,16(sp)
    80003b98:	00813483          	ld	s1,8(sp)
    80003b9c:	02010113          	addi	sp,sp,32
    80003ba0:	00008067          	ret
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	c8c080e7          	jalr	-884(ra) # 80003830 <cpuid>
    80003bac:	06050663          	beqz	a0,80003c18 <devintr+0xc8>
    80003bb0:	144027f3          	csrr	a5,sip
    80003bb4:	ffd7f793          	andi	a5,a5,-3
    80003bb8:	14479073          	csrw	sip,a5
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	00813483          	ld	s1,8(sp)
    80003bc8:	00200513          	li	a0,2
    80003bcc:	02010113          	addi	sp,sp,32
    80003bd0:	00008067          	ret
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	250080e7          	jalr	592(ra) # 80003e24 <plic_claim>
    80003bdc:	00a00793          	li	a5,10
    80003be0:	00050493          	mv	s1,a0
    80003be4:	06f50663          	beq	a0,a5,80003c50 <devintr+0x100>
    80003be8:	00100513          	li	a0,1
    80003bec:	fa0482e3          	beqz	s1,80003b90 <devintr+0x40>
    80003bf0:	00048593          	mv	a1,s1
    80003bf4:	00002517          	auipc	a0,0x2
    80003bf8:	75c50513          	addi	a0,a0,1884 # 80006350 <_ZZ14__print_uint64mE6digits+0x218>
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	66c080e7          	jalr	1644(ra) # 80004268 <__printf>
    80003c04:	00048513          	mv	a0,s1
    80003c08:	00000097          	auipc	ra,0x0
    80003c0c:	254080e7          	jalr	596(ra) # 80003e5c <plic_complete>
    80003c10:	00100513          	li	a0,1
    80003c14:	f7dff06f          	j	80003b90 <devintr+0x40>
    80003c18:	00005517          	auipc	a0,0x5
    80003c1c:	91850513          	addi	a0,a0,-1768 # 80008530 <tickslock>
    80003c20:	00001097          	auipc	ra,0x1
    80003c24:	31c080e7          	jalr	796(ra) # 80004f3c <acquire>
    80003c28:	00003717          	auipc	a4,0x3
    80003c2c:	7dc70713          	addi	a4,a4,2012 # 80007404 <ticks>
    80003c30:	00072783          	lw	a5,0(a4)
    80003c34:	00005517          	auipc	a0,0x5
    80003c38:	8fc50513          	addi	a0,a0,-1796 # 80008530 <tickslock>
    80003c3c:	0017879b          	addiw	a5,a5,1
    80003c40:	00f72023          	sw	a5,0(a4)
    80003c44:	00001097          	auipc	ra,0x1
    80003c48:	3c4080e7          	jalr	964(ra) # 80005008 <release>
    80003c4c:	f65ff06f          	j	80003bb0 <devintr+0x60>
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	f20080e7          	jalr	-224(ra) # 80004b70 <uartintr>
    80003c58:	fadff06f          	j	80003c04 <devintr+0xb4>
    80003c5c:	0000                	unimp
	...

0000000080003c60 <kernelvec>:
    80003c60:	f0010113          	addi	sp,sp,-256
    80003c64:	00113023          	sd	ra,0(sp)
    80003c68:	00213423          	sd	sp,8(sp)
    80003c6c:	00313823          	sd	gp,16(sp)
    80003c70:	00413c23          	sd	tp,24(sp)
    80003c74:	02513023          	sd	t0,32(sp)
    80003c78:	02613423          	sd	t1,40(sp)
    80003c7c:	02713823          	sd	t2,48(sp)
    80003c80:	02813c23          	sd	s0,56(sp)
    80003c84:	04913023          	sd	s1,64(sp)
    80003c88:	04a13423          	sd	a0,72(sp)
    80003c8c:	04b13823          	sd	a1,80(sp)
    80003c90:	04c13c23          	sd	a2,88(sp)
    80003c94:	06d13023          	sd	a3,96(sp)
    80003c98:	06e13423          	sd	a4,104(sp)
    80003c9c:	06f13823          	sd	a5,112(sp)
    80003ca0:	07013c23          	sd	a6,120(sp)
    80003ca4:	09113023          	sd	a7,128(sp)
    80003ca8:	09213423          	sd	s2,136(sp)
    80003cac:	09313823          	sd	s3,144(sp)
    80003cb0:	09413c23          	sd	s4,152(sp)
    80003cb4:	0b513023          	sd	s5,160(sp)
    80003cb8:	0b613423          	sd	s6,168(sp)
    80003cbc:	0b713823          	sd	s7,176(sp)
    80003cc0:	0b813c23          	sd	s8,184(sp)
    80003cc4:	0d913023          	sd	s9,192(sp)
    80003cc8:	0da13423          	sd	s10,200(sp)
    80003ccc:	0db13823          	sd	s11,208(sp)
    80003cd0:	0dc13c23          	sd	t3,216(sp)
    80003cd4:	0fd13023          	sd	t4,224(sp)
    80003cd8:	0fe13423          	sd	t5,232(sp)
    80003cdc:	0ff13823          	sd	t6,240(sp)
    80003ce0:	cd1ff0ef          	jal	ra,800039b0 <kerneltrap>
    80003ce4:	00013083          	ld	ra,0(sp)
    80003ce8:	00813103          	ld	sp,8(sp)
    80003cec:	01013183          	ld	gp,16(sp)
    80003cf0:	02013283          	ld	t0,32(sp)
    80003cf4:	02813303          	ld	t1,40(sp)
    80003cf8:	03013383          	ld	t2,48(sp)
    80003cfc:	03813403          	ld	s0,56(sp)
    80003d00:	04013483          	ld	s1,64(sp)
    80003d04:	04813503          	ld	a0,72(sp)
    80003d08:	05013583          	ld	a1,80(sp)
    80003d0c:	05813603          	ld	a2,88(sp)
    80003d10:	06013683          	ld	a3,96(sp)
    80003d14:	06813703          	ld	a4,104(sp)
    80003d18:	07013783          	ld	a5,112(sp)
    80003d1c:	07813803          	ld	a6,120(sp)
    80003d20:	08013883          	ld	a7,128(sp)
    80003d24:	08813903          	ld	s2,136(sp)
    80003d28:	09013983          	ld	s3,144(sp)
    80003d2c:	09813a03          	ld	s4,152(sp)
    80003d30:	0a013a83          	ld	s5,160(sp)
    80003d34:	0a813b03          	ld	s6,168(sp)
    80003d38:	0b013b83          	ld	s7,176(sp)
    80003d3c:	0b813c03          	ld	s8,184(sp)
    80003d40:	0c013c83          	ld	s9,192(sp)
    80003d44:	0c813d03          	ld	s10,200(sp)
    80003d48:	0d013d83          	ld	s11,208(sp)
    80003d4c:	0d813e03          	ld	t3,216(sp)
    80003d50:	0e013e83          	ld	t4,224(sp)
    80003d54:	0e813f03          	ld	t5,232(sp)
    80003d58:	0f013f83          	ld	t6,240(sp)
    80003d5c:	10010113          	addi	sp,sp,256
    80003d60:	10200073          	sret
    80003d64:	00000013          	nop
    80003d68:	00000013          	nop
    80003d6c:	00000013          	nop

0000000080003d70 <timervec>:
    80003d70:	34051573          	csrrw	a0,mscratch,a0
    80003d74:	00b53023          	sd	a1,0(a0)
    80003d78:	00c53423          	sd	a2,8(a0)
    80003d7c:	00d53823          	sd	a3,16(a0)
    80003d80:	01853583          	ld	a1,24(a0)
    80003d84:	02053603          	ld	a2,32(a0)
    80003d88:	0005b683          	ld	a3,0(a1)
    80003d8c:	00c686b3          	add	a3,a3,a2
    80003d90:	00d5b023          	sd	a3,0(a1)
    80003d94:	00200593          	li	a1,2
    80003d98:	14459073          	csrw	sip,a1
    80003d9c:	01053683          	ld	a3,16(a0)
    80003da0:	00853603          	ld	a2,8(a0)
    80003da4:	00053583          	ld	a1,0(a0)
    80003da8:	34051573          	csrrw	a0,mscratch,a0
    80003dac:	30200073          	mret

0000000080003db0 <plicinit>:
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00813423          	sd	s0,8(sp)
    80003db8:	01010413          	addi	s0,sp,16
    80003dbc:	00813403          	ld	s0,8(sp)
    80003dc0:	0c0007b7          	lui	a5,0xc000
    80003dc4:	00100713          	li	a4,1
    80003dc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003dcc:	00e7a223          	sw	a4,4(a5)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret

0000000080003dd8 <plicinithart>:
    80003dd8:	ff010113          	addi	sp,sp,-16
    80003ddc:	00813023          	sd	s0,0(sp)
    80003de0:	00113423          	sd	ra,8(sp)
    80003de4:	01010413          	addi	s0,sp,16
    80003de8:	00000097          	auipc	ra,0x0
    80003dec:	a48080e7          	jalr	-1464(ra) # 80003830 <cpuid>
    80003df0:	0085171b          	slliw	a4,a0,0x8
    80003df4:	0c0027b7          	lui	a5,0xc002
    80003df8:	00e787b3          	add	a5,a5,a4
    80003dfc:	40200713          	li	a4,1026
    80003e00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003e04:	00813083          	ld	ra,8(sp)
    80003e08:	00013403          	ld	s0,0(sp)
    80003e0c:	00d5151b          	slliw	a0,a0,0xd
    80003e10:	0c2017b7          	lui	a5,0xc201
    80003e14:	00a78533          	add	a0,a5,a0
    80003e18:	00052023          	sw	zero,0(a0)
    80003e1c:	01010113          	addi	sp,sp,16
    80003e20:	00008067          	ret

0000000080003e24 <plic_claim>:
    80003e24:	ff010113          	addi	sp,sp,-16
    80003e28:	00813023          	sd	s0,0(sp)
    80003e2c:	00113423          	sd	ra,8(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	00000097          	auipc	ra,0x0
    80003e38:	9fc080e7          	jalr	-1540(ra) # 80003830 <cpuid>
    80003e3c:	00813083          	ld	ra,8(sp)
    80003e40:	00013403          	ld	s0,0(sp)
    80003e44:	00d5151b          	slliw	a0,a0,0xd
    80003e48:	0c2017b7          	lui	a5,0xc201
    80003e4c:	00a78533          	add	a0,a5,a0
    80003e50:	00452503          	lw	a0,4(a0)
    80003e54:	01010113          	addi	sp,sp,16
    80003e58:	00008067          	ret

0000000080003e5c <plic_complete>:
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	00113c23          	sd	ra,24(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    80003e70:	00050493          	mv	s1,a0
    80003e74:	00000097          	auipc	ra,0x0
    80003e78:	9bc080e7          	jalr	-1604(ra) # 80003830 <cpuid>
    80003e7c:	01813083          	ld	ra,24(sp)
    80003e80:	01013403          	ld	s0,16(sp)
    80003e84:	00d5179b          	slliw	a5,a0,0xd
    80003e88:	0c201737          	lui	a4,0xc201
    80003e8c:	00f707b3          	add	a5,a4,a5
    80003e90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003e94:	00813483          	ld	s1,8(sp)
    80003e98:	02010113          	addi	sp,sp,32
    80003e9c:	00008067          	ret

0000000080003ea0 <consolewrite>:
    80003ea0:	fb010113          	addi	sp,sp,-80
    80003ea4:	04813023          	sd	s0,64(sp)
    80003ea8:	04113423          	sd	ra,72(sp)
    80003eac:	02913c23          	sd	s1,56(sp)
    80003eb0:	03213823          	sd	s2,48(sp)
    80003eb4:	03313423          	sd	s3,40(sp)
    80003eb8:	03413023          	sd	s4,32(sp)
    80003ebc:	01513c23          	sd	s5,24(sp)
    80003ec0:	05010413          	addi	s0,sp,80
    80003ec4:	06c05c63          	blez	a2,80003f3c <consolewrite+0x9c>
    80003ec8:	00060993          	mv	s3,a2
    80003ecc:	00050a13          	mv	s4,a0
    80003ed0:	00058493          	mv	s1,a1
    80003ed4:	00000913          	li	s2,0
    80003ed8:	fff00a93          	li	s5,-1
    80003edc:	01c0006f          	j	80003ef8 <consolewrite+0x58>
    80003ee0:	fbf44503          	lbu	a0,-65(s0)
    80003ee4:	0019091b          	addiw	s2,s2,1
    80003ee8:	00148493          	addi	s1,s1,1
    80003eec:	00001097          	auipc	ra,0x1
    80003ef0:	a9c080e7          	jalr	-1380(ra) # 80004988 <uartputc>
    80003ef4:	03298063          	beq	s3,s2,80003f14 <consolewrite+0x74>
    80003ef8:	00048613          	mv	a2,s1
    80003efc:	00100693          	li	a3,1
    80003f00:	000a0593          	mv	a1,s4
    80003f04:	fbf40513          	addi	a0,s0,-65
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	9e0080e7          	jalr	-1568(ra) # 800038e8 <either_copyin>
    80003f10:	fd5518e3          	bne	a0,s5,80003ee0 <consolewrite+0x40>
    80003f14:	04813083          	ld	ra,72(sp)
    80003f18:	04013403          	ld	s0,64(sp)
    80003f1c:	03813483          	ld	s1,56(sp)
    80003f20:	02813983          	ld	s3,40(sp)
    80003f24:	02013a03          	ld	s4,32(sp)
    80003f28:	01813a83          	ld	s5,24(sp)
    80003f2c:	00090513          	mv	a0,s2
    80003f30:	03013903          	ld	s2,48(sp)
    80003f34:	05010113          	addi	sp,sp,80
    80003f38:	00008067          	ret
    80003f3c:	00000913          	li	s2,0
    80003f40:	fd5ff06f          	j	80003f14 <consolewrite+0x74>

0000000080003f44 <consoleread>:
    80003f44:	f9010113          	addi	sp,sp,-112
    80003f48:	06813023          	sd	s0,96(sp)
    80003f4c:	04913c23          	sd	s1,88(sp)
    80003f50:	05213823          	sd	s2,80(sp)
    80003f54:	05313423          	sd	s3,72(sp)
    80003f58:	05413023          	sd	s4,64(sp)
    80003f5c:	03513c23          	sd	s5,56(sp)
    80003f60:	03613823          	sd	s6,48(sp)
    80003f64:	03713423          	sd	s7,40(sp)
    80003f68:	03813023          	sd	s8,32(sp)
    80003f6c:	06113423          	sd	ra,104(sp)
    80003f70:	01913c23          	sd	s9,24(sp)
    80003f74:	07010413          	addi	s0,sp,112
    80003f78:	00060b93          	mv	s7,a2
    80003f7c:	00050913          	mv	s2,a0
    80003f80:	00058c13          	mv	s8,a1
    80003f84:	00060b1b          	sext.w	s6,a2
    80003f88:	00004497          	auipc	s1,0x4
    80003f8c:	5d048493          	addi	s1,s1,1488 # 80008558 <cons>
    80003f90:	00400993          	li	s3,4
    80003f94:	fff00a13          	li	s4,-1
    80003f98:	00a00a93          	li	s5,10
    80003f9c:	05705e63          	blez	s7,80003ff8 <consoleread+0xb4>
    80003fa0:	09c4a703          	lw	a4,156(s1)
    80003fa4:	0984a783          	lw	a5,152(s1)
    80003fa8:	0007071b          	sext.w	a4,a4
    80003fac:	08e78463          	beq	a5,a4,80004034 <consoleread+0xf0>
    80003fb0:	07f7f713          	andi	a4,a5,127
    80003fb4:	00e48733          	add	a4,s1,a4
    80003fb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003fbc:	0017869b          	addiw	a3,a5,1
    80003fc0:	08d4ac23          	sw	a3,152(s1)
    80003fc4:	00070c9b          	sext.w	s9,a4
    80003fc8:	0b370663          	beq	a4,s3,80004074 <consoleread+0x130>
    80003fcc:	00100693          	li	a3,1
    80003fd0:	f9f40613          	addi	a2,s0,-97
    80003fd4:	000c0593          	mv	a1,s8
    80003fd8:	00090513          	mv	a0,s2
    80003fdc:	f8e40fa3          	sb	a4,-97(s0)
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	8bc080e7          	jalr	-1860(ra) # 8000389c <either_copyout>
    80003fe8:	01450863          	beq	a0,s4,80003ff8 <consoleread+0xb4>
    80003fec:	001c0c13          	addi	s8,s8,1
    80003ff0:	fffb8b9b          	addiw	s7,s7,-1
    80003ff4:	fb5c94e3          	bne	s9,s5,80003f9c <consoleread+0x58>
    80003ff8:	000b851b          	sext.w	a0,s7
    80003ffc:	06813083          	ld	ra,104(sp)
    80004000:	06013403          	ld	s0,96(sp)
    80004004:	05813483          	ld	s1,88(sp)
    80004008:	05013903          	ld	s2,80(sp)
    8000400c:	04813983          	ld	s3,72(sp)
    80004010:	04013a03          	ld	s4,64(sp)
    80004014:	03813a83          	ld	s5,56(sp)
    80004018:	02813b83          	ld	s7,40(sp)
    8000401c:	02013c03          	ld	s8,32(sp)
    80004020:	01813c83          	ld	s9,24(sp)
    80004024:	40ab053b          	subw	a0,s6,a0
    80004028:	03013b03          	ld	s6,48(sp)
    8000402c:	07010113          	addi	sp,sp,112
    80004030:	00008067          	ret
    80004034:	00001097          	auipc	ra,0x1
    80004038:	1d8080e7          	jalr	472(ra) # 8000520c <push_on>
    8000403c:	0984a703          	lw	a4,152(s1)
    80004040:	09c4a783          	lw	a5,156(s1)
    80004044:	0007879b          	sext.w	a5,a5
    80004048:	fef70ce3          	beq	a4,a5,80004040 <consoleread+0xfc>
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	234080e7          	jalr	564(ra) # 80005280 <pop_on>
    80004054:	0984a783          	lw	a5,152(s1)
    80004058:	07f7f713          	andi	a4,a5,127
    8000405c:	00e48733          	add	a4,s1,a4
    80004060:	01874703          	lbu	a4,24(a4)
    80004064:	0017869b          	addiw	a3,a5,1
    80004068:	08d4ac23          	sw	a3,152(s1)
    8000406c:	00070c9b          	sext.w	s9,a4
    80004070:	f5371ee3          	bne	a4,s3,80003fcc <consoleread+0x88>
    80004074:	000b851b          	sext.w	a0,s7
    80004078:	f96bf2e3          	bgeu	s7,s6,80003ffc <consoleread+0xb8>
    8000407c:	08f4ac23          	sw	a5,152(s1)
    80004080:	f7dff06f          	j	80003ffc <consoleread+0xb8>

0000000080004084 <consputc>:
    80004084:	10000793          	li	a5,256
    80004088:	00f50663          	beq	a0,a5,80004094 <consputc+0x10>
    8000408c:	00001317          	auipc	t1,0x1
    80004090:	9f430067          	jr	-1548(t1) # 80004a80 <uartputc_sync>
    80004094:	ff010113          	addi	sp,sp,-16
    80004098:	00113423          	sd	ra,8(sp)
    8000409c:	00813023          	sd	s0,0(sp)
    800040a0:	01010413          	addi	s0,sp,16
    800040a4:	00800513          	li	a0,8
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	9d8080e7          	jalr	-1576(ra) # 80004a80 <uartputc_sync>
    800040b0:	02000513          	li	a0,32
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	9cc080e7          	jalr	-1588(ra) # 80004a80 <uartputc_sync>
    800040bc:	00013403          	ld	s0,0(sp)
    800040c0:	00813083          	ld	ra,8(sp)
    800040c4:	00800513          	li	a0,8
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00001317          	auipc	t1,0x1
    800040d0:	9b430067          	jr	-1612(t1) # 80004a80 <uartputc_sync>

00000000800040d4 <consoleintr>:
    800040d4:	fe010113          	addi	sp,sp,-32
    800040d8:	00813823          	sd	s0,16(sp)
    800040dc:	00913423          	sd	s1,8(sp)
    800040e0:	01213023          	sd	s2,0(sp)
    800040e4:	00113c23          	sd	ra,24(sp)
    800040e8:	02010413          	addi	s0,sp,32
    800040ec:	00004917          	auipc	s2,0x4
    800040f0:	46c90913          	addi	s2,s2,1132 # 80008558 <cons>
    800040f4:	00050493          	mv	s1,a0
    800040f8:	00090513          	mv	a0,s2
    800040fc:	00001097          	auipc	ra,0x1
    80004100:	e40080e7          	jalr	-448(ra) # 80004f3c <acquire>
    80004104:	02048c63          	beqz	s1,8000413c <consoleintr+0x68>
    80004108:	0a092783          	lw	a5,160(s2)
    8000410c:	09892703          	lw	a4,152(s2)
    80004110:	07f00693          	li	a3,127
    80004114:	40e7873b          	subw	a4,a5,a4
    80004118:	02e6e263          	bltu	a3,a4,8000413c <consoleintr+0x68>
    8000411c:	00d00713          	li	a4,13
    80004120:	04e48063          	beq	s1,a4,80004160 <consoleintr+0x8c>
    80004124:	07f7f713          	andi	a4,a5,127
    80004128:	00e90733          	add	a4,s2,a4
    8000412c:	0017879b          	addiw	a5,a5,1
    80004130:	0af92023          	sw	a5,160(s2)
    80004134:	00970c23          	sb	s1,24(a4)
    80004138:	08f92e23          	sw	a5,156(s2)
    8000413c:	01013403          	ld	s0,16(sp)
    80004140:	01813083          	ld	ra,24(sp)
    80004144:	00813483          	ld	s1,8(sp)
    80004148:	00013903          	ld	s2,0(sp)
    8000414c:	00004517          	auipc	a0,0x4
    80004150:	40c50513          	addi	a0,a0,1036 # 80008558 <cons>
    80004154:	02010113          	addi	sp,sp,32
    80004158:	00001317          	auipc	t1,0x1
    8000415c:	eb030067          	jr	-336(t1) # 80005008 <release>
    80004160:	00a00493          	li	s1,10
    80004164:	fc1ff06f          	j	80004124 <consoleintr+0x50>

0000000080004168 <consoleinit>:
    80004168:	fe010113          	addi	sp,sp,-32
    8000416c:	00113c23          	sd	ra,24(sp)
    80004170:	00813823          	sd	s0,16(sp)
    80004174:	00913423          	sd	s1,8(sp)
    80004178:	02010413          	addi	s0,sp,32
    8000417c:	00004497          	auipc	s1,0x4
    80004180:	3dc48493          	addi	s1,s1,988 # 80008558 <cons>
    80004184:	00048513          	mv	a0,s1
    80004188:	00002597          	auipc	a1,0x2
    8000418c:	22058593          	addi	a1,a1,544 # 800063a8 <_ZZ14__print_uint64mE6digits+0x270>
    80004190:	00001097          	auipc	ra,0x1
    80004194:	d88080e7          	jalr	-632(ra) # 80004f18 <initlock>
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	7ac080e7          	jalr	1964(ra) # 80004944 <uartinit>
    800041a0:	01813083          	ld	ra,24(sp)
    800041a4:	01013403          	ld	s0,16(sp)
    800041a8:	00000797          	auipc	a5,0x0
    800041ac:	d9c78793          	addi	a5,a5,-612 # 80003f44 <consoleread>
    800041b0:	0af4bc23          	sd	a5,184(s1)
    800041b4:	00000797          	auipc	a5,0x0
    800041b8:	cec78793          	addi	a5,a5,-788 # 80003ea0 <consolewrite>
    800041bc:	0cf4b023          	sd	a5,192(s1)
    800041c0:	00813483          	ld	s1,8(sp)
    800041c4:	02010113          	addi	sp,sp,32
    800041c8:	00008067          	ret

00000000800041cc <console_read>:
    800041cc:	ff010113          	addi	sp,sp,-16
    800041d0:	00813423          	sd	s0,8(sp)
    800041d4:	01010413          	addi	s0,sp,16
    800041d8:	00813403          	ld	s0,8(sp)
    800041dc:	00004317          	auipc	t1,0x4
    800041e0:	43433303          	ld	t1,1076(t1) # 80008610 <devsw+0x10>
    800041e4:	01010113          	addi	sp,sp,16
    800041e8:	00030067          	jr	t1

00000000800041ec <console_write>:
    800041ec:	ff010113          	addi	sp,sp,-16
    800041f0:	00813423          	sd	s0,8(sp)
    800041f4:	01010413          	addi	s0,sp,16
    800041f8:	00813403          	ld	s0,8(sp)
    800041fc:	00004317          	auipc	t1,0x4
    80004200:	41c33303          	ld	t1,1052(t1) # 80008618 <devsw+0x18>
    80004204:	01010113          	addi	sp,sp,16
    80004208:	00030067          	jr	t1

000000008000420c <panic>:
    8000420c:	fe010113          	addi	sp,sp,-32
    80004210:	00113c23          	sd	ra,24(sp)
    80004214:	00813823          	sd	s0,16(sp)
    80004218:	00913423          	sd	s1,8(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	00050493          	mv	s1,a0
    80004224:	00002517          	auipc	a0,0x2
    80004228:	18c50513          	addi	a0,a0,396 # 800063b0 <_ZZ14__print_uint64mE6digits+0x278>
    8000422c:	00004797          	auipc	a5,0x4
    80004230:	4807a623          	sw	zero,1164(a5) # 800086b8 <pr+0x18>
    80004234:	00000097          	auipc	ra,0x0
    80004238:	034080e7          	jalr	52(ra) # 80004268 <__printf>
    8000423c:	00048513          	mv	a0,s1
    80004240:	00000097          	auipc	ra,0x0
    80004244:	028080e7          	jalr	40(ra) # 80004268 <__printf>
    80004248:	00002517          	auipc	a0,0x2
    8000424c:	03050513          	addi	a0,a0,48 # 80006278 <_ZZ14__print_uint64mE6digits+0x140>
    80004250:	00000097          	auipc	ra,0x0
    80004254:	018080e7          	jalr	24(ra) # 80004268 <__printf>
    80004258:	00100793          	li	a5,1
    8000425c:	00003717          	auipc	a4,0x3
    80004260:	1af72623          	sw	a5,428(a4) # 80007408 <panicked>
    80004264:	0000006f          	j	80004264 <panic+0x58>

0000000080004268 <__printf>:
    80004268:	f3010113          	addi	sp,sp,-208
    8000426c:	08813023          	sd	s0,128(sp)
    80004270:	07313423          	sd	s3,104(sp)
    80004274:	09010413          	addi	s0,sp,144
    80004278:	05813023          	sd	s8,64(sp)
    8000427c:	08113423          	sd	ra,136(sp)
    80004280:	06913c23          	sd	s1,120(sp)
    80004284:	07213823          	sd	s2,112(sp)
    80004288:	07413023          	sd	s4,96(sp)
    8000428c:	05513c23          	sd	s5,88(sp)
    80004290:	05613823          	sd	s6,80(sp)
    80004294:	05713423          	sd	s7,72(sp)
    80004298:	03913c23          	sd	s9,56(sp)
    8000429c:	03a13823          	sd	s10,48(sp)
    800042a0:	03b13423          	sd	s11,40(sp)
    800042a4:	00004317          	auipc	t1,0x4
    800042a8:	3fc30313          	addi	t1,t1,1020 # 800086a0 <pr>
    800042ac:	01832c03          	lw	s8,24(t1)
    800042b0:	00b43423          	sd	a1,8(s0)
    800042b4:	00c43823          	sd	a2,16(s0)
    800042b8:	00d43c23          	sd	a3,24(s0)
    800042bc:	02e43023          	sd	a4,32(s0)
    800042c0:	02f43423          	sd	a5,40(s0)
    800042c4:	03043823          	sd	a6,48(s0)
    800042c8:	03143c23          	sd	a7,56(s0)
    800042cc:	00050993          	mv	s3,a0
    800042d0:	4a0c1663          	bnez	s8,8000477c <__printf+0x514>
    800042d4:	60098c63          	beqz	s3,800048ec <__printf+0x684>
    800042d8:	0009c503          	lbu	a0,0(s3)
    800042dc:	00840793          	addi	a5,s0,8
    800042e0:	f6f43c23          	sd	a5,-136(s0)
    800042e4:	00000493          	li	s1,0
    800042e8:	22050063          	beqz	a0,80004508 <__printf+0x2a0>
    800042ec:	00002a37          	lui	s4,0x2
    800042f0:	00018ab7          	lui	s5,0x18
    800042f4:	000f4b37          	lui	s6,0xf4
    800042f8:	00989bb7          	lui	s7,0x989
    800042fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004300:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004304:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004308:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000430c:	00148c9b          	addiw	s9,s1,1
    80004310:	02500793          	li	a5,37
    80004314:	01998933          	add	s2,s3,s9
    80004318:	38f51263          	bne	a0,a5,8000469c <__printf+0x434>
    8000431c:	00094783          	lbu	a5,0(s2)
    80004320:	00078c9b          	sext.w	s9,a5
    80004324:	1e078263          	beqz	a5,80004508 <__printf+0x2a0>
    80004328:	0024849b          	addiw	s1,s1,2
    8000432c:	07000713          	li	a4,112
    80004330:	00998933          	add	s2,s3,s1
    80004334:	38e78a63          	beq	a5,a4,800046c8 <__printf+0x460>
    80004338:	20f76863          	bltu	a4,a5,80004548 <__printf+0x2e0>
    8000433c:	42a78863          	beq	a5,a0,8000476c <__printf+0x504>
    80004340:	06400713          	li	a4,100
    80004344:	40e79663          	bne	a5,a4,80004750 <__printf+0x4e8>
    80004348:	f7843783          	ld	a5,-136(s0)
    8000434c:	0007a603          	lw	a2,0(a5)
    80004350:	00878793          	addi	a5,a5,8
    80004354:	f6f43c23          	sd	a5,-136(s0)
    80004358:	42064a63          	bltz	a2,8000478c <__printf+0x524>
    8000435c:	00a00713          	li	a4,10
    80004360:	02e677bb          	remuw	a5,a2,a4
    80004364:	00002d97          	auipc	s11,0x2
    80004368:	074d8d93          	addi	s11,s11,116 # 800063d8 <digits>
    8000436c:	00900593          	li	a1,9
    80004370:	0006051b          	sext.w	a0,a2
    80004374:	00000c93          	li	s9,0
    80004378:	02079793          	slli	a5,a5,0x20
    8000437c:	0207d793          	srli	a5,a5,0x20
    80004380:	00fd87b3          	add	a5,s11,a5
    80004384:	0007c783          	lbu	a5,0(a5)
    80004388:	02e656bb          	divuw	a3,a2,a4
    8000438c:	f8f40023          	sb	a5,-128(s0)
    80004390:	14c5d863          	bge	a1,a2,800044e0 <__printf+0x278>
    80004394:	06300593          	li	a1,99
    80004398:	00100c93          	li	s9,1
    8000439c:	02e6f7bb          	remuw	a5,a3,a4
    800043a0:	02079793          	slli	a5,a5,0x20
    800043a4:	0207d793          	srli	a5,a5,0x20
    800043a8:	00fd87b3          	add	a5,s11,a5
    800043ac:	0007c783          	lbu	a5,0(a5)
    800043b0:	02e6d73b          	divuw	a4,a3,a4
    800043b4:	f8f400a3          	sb	a5,-127(s0)
    800043b8:	12a5f463          	bgeu	a1,a0,800044e0 <__printf+0x278>
    800043bc:	00a00693          	li	a3,10
    800043c0:	00900593          	li	a1,9
    800043c4:	02d777bb          	remuw	a5,a4,a3
    800043c8:	02079793          	slli	a5,a5,0x20
    800043cc:	0207d793          	srli	a5,a5,0x20
    800043d0:	00fd87b3          	add	a5,s11,a5
    800043d4:	0007c503          	lbu	a0,0(a5)
    800043d8:	02d757bb          	divuw	a5,a4,a3
    800043dc:	f8a40123          	sb	a0,-126(s0)
    800043e0:	48e5f263          	bgeu	a1,a4,80004864 <__printf+0x5fc>
    800043e4:	06300513          	li	a0,99
    800043e8:	02d7f5bb          	remuw	a1,a5,a3
    800043ec:	02059593          	slli	a1,a1,0x20
    800043f0:	0205d593          	srli	a1,a1,0x20
    800043f4:	00bd85b3          	add	a1,s11,a1
    800043f8:	0005c583          	lbu	a1,0(a1)
    800043fc:	02d7d7bb          	divuw	a5,a5,a3
    80004400:	f8b401a3          	sb	a1,-125(s0)
    80004404:	48e57263          	bgeu	a0,a4,80004888 <__printf+0x620>
    80004408:	3e700513          	li	a0,999
    8000440c:	02d7f5bb          	remuw	a1,a5,a3
    80004410:	02059593          	slli	a1,a1,0x20
    80004414:	0205d593          	srli	a1,a1,0x20
    80004418:	00bd85b3          	add	a1,s11,a1
    8000441c:	0005c583          	lbu	a1,0(a1)
    80004420:	02d7d7bb          	divuw	a5,a5,a3
    80004424:	f8b40223          	sb	a1,-124(s0)
    80004428:	46e57663          	bgeu	a0,a4,80004894 <__printf+0x62c>
    8000442c:	02d7f5bb          	remuw	a1,a5,a3
    80004430:	02059593          	slli	a1,a1,0x20
    80004434:	0205d593          	srli	a1,a1,0x20
    80004438:	00bd85b3          	add	a1,s11,a1
    8000443c:	0005c583          	lbu	a1,0(a1)
    80004440:	02d7d7bb          	divuw	a5,a5,a3
    80004444:	f8b402a3          	sb	a1,-123(s0)
    80004448:	46ea7863          	bgeu	s4,a4,800048b8 <__printf+0x650>
    8000444c:	02d7f5bb          	remuw	a1,a5,a3
    80004450:	02059593          	slli	a1,a1,0x20
    80004454:	0205d593          	srli	a1,a1,0x20
    80004458:	00bd85b3          	add	a1,s11,a1
    8000445c:	0005c583          	lbu	a1,0(a1)
    80004460:	02d7d7bb          	divuw	a5,a5,a3
    80004464:	f8b40323          	sb	a1,-122(s0)
    80004468:	3eeaf863          	bgeu	s5,a4,80004858 <__printf+0x5f0>
    8000446c:	02d7f5bb          	remuw	a1,a5,a3
    80004470:	02059593          	slli	a1,a1,0x20
    80004474:	0205d593          	srli	a1,a1,0x20
    80004478:	00bd85b3          	add	a1,s11,a1
    8000447c:	0005c583          	lbu	a1,0(a1)
    80004480:	02d7d7bb          	divuw	a5,a5,a3
    80004484:	f8b403a3          	sb	a1,-121(s0)
    80004488:	42eb7e63          	bgeu	s6,a4,800048c4 <__printf+0x65c>
    8000448c:	02d7f5bb          	remuw	a1,a5,a3
    80004490:	02059593          	slli	a1,a1,0x20
    80004494:	0205d593          	srli	a1,a1,0x20
    80004498:	00bd85b3          	add	a1,s11,a1
    8000449c:	0005c583          	lbu	a1,0(a1)
    800044a0:	02d7d7bb          	divuw	a5,a5,a3
    800044a4:	f8b40423          	sb	a1,-120(s0)
    800044a8:	42ebfc63          	bgeu	s7,a4,800048e0 <__printf+0x678>
    800044ac:	02079793          	slli	a5,a5,0x20
    800044b0:	0207d793          	srli	a5,a5,0x20
    800044b4:	00fd8db3          	add	s11,s11,a5
    800044b8:	000dc703          	lbu	a4,0(s11)
    800044bc:	00a00793          	li	a5,10
    800044c0:	00900c93          	li	s9,9
    800044c4:	f8e404a3          	sb	a4,-119(s0)
    800044c8:	00065c63          	bgez	a2,800044e0 <__printf+0x278>
    800044cc:	f9040713          	addi	a4,s0,-112
    800044d0:	00f70733          	add	a4,a4,a5
    800044d4:	02d00693          	li	a3,45
    800044d8:	fed70823          	sb	a3,-16(a4)
    800044dc:	00078c93          	mv	s9,a5
    800044e0:	f8040793          	addi	a5,s0,-128
    800044e4:	01978cb3          	add	s9,a5,s9
    800044e8:	f7f40d13          	addi	s10,s0,-129
    800044ec:	000cc503          	lbu	a0,0(s9)
    800044f0:	fffc8c93          	addi	s9,s9,-1
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	b90080e7          	jalr	-1136(ra) # 80004084 <consputc>
    800044fc:	ffac98e3          	bne	s9,s10,800044ec <__printf+0x284>
    80004500:	00094503          	lbu	a0,0(s2)
    80004504:	e00514e3          	bnez	a0,8000430c <__printf+0xa4>
    80004508:	1a0c1663          	bnez	s8,800046b4 <__printf+0x44c>
    8000450c:	08813083          	ld	ra,136(sp)
    80004510:	08013403          	ld	s0,128(sp)
    80004514:	07813483          	ld	s1,120(sp)
    80004518:	07013903          	ld	s2,112(sp)
    8000451c:	06813983          	ld	s3,104(sp)
    80004520:	06013a03          	ld	s4,96(sp)
    80004524:	05813a83          	ld	s5,88(sp)
    80004528:	05013b03          	ld	s6,80(sp)
    8000452c:	04813b83          	ld	s7,72(sp)
    80004530:	04013c03          	ld	s8,64(sp)
    80004534:	03813c83          	ld	s9,56(sp)
    80004538:	03013d03          	ld	s10,48(sp)
    8000453c:	02813d83          	ld	s11,40(sp)
    80004540:	0d010113          	addi	sp,sp,208
    80004544:	00008067          	ret
    80004548:	07300713          	li	a4,115
    8000454c:	1ce78a63          	beq	a5,a4,80004720 <__printf+0x4b8>
    80004550:	07800713          	li	a4,120
    80004554:	1ee79e63          	bne	a5,a4,80004750 <__printf+0x4e8>
    80004558:	f7843783          	ld	a5,-136(s0)
    8000455c:	0007a703          	lw	a4,0(a5)
    80004560:	00878793          	addi	a5,a5,8
    80004564:	f6f43c23          	sd	a5,-136(s0)
    80004568:	28074263          	bltz	a4,800047ec <__printf+0x584>
    8000456c:	00002d97          	auipc	s11,0x2
    80004570:	e6cd8d93          	addi	s11,s11,-404 # 800063d8 <digits>
    80004574:	00f77793          	andi	a5,a4,15
    80004578:	00fd87b3          	add	a5,s11,a5
    8000457c:	0007c683          	lbu	a3,0(a5)
    80004580:	00f00613          	li	a2,15
    80004584:	0007079b          	sext.w	a5,a4
    80004588:	f8d40023          	sb	a3,-128(s0)
    8000458c:	0047559b          	srliw	a1,a4,0x4
    80004590:	0047569b          	srliw	a3,a4,0x4
    80004594:	00000c93          	li	s9,0
    80004598:	0ee65063          	bge	a2,a4,80004678 <__printf+0x410>
    8000459c:	00f6f693          	andi	a3,a3,15
    800045a0:	00dd86b3          	add	a3,s11,a3
    800045a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800045a8:	0087d79b          	srliw	a5,a5,0x8
    800045ac:	00100c93          	li	s9,1
    800045b0:	f8d400a3          	sb	a3,-127(s0)
    800045b4:	0cb67263          	bgeu	a2,a1,80004678 <__printf+0x410>
    800045b8:	00f7f693          	andi	a3,a5,15
    800045bc:	00dd86b3          	add	a3,s11,a3
    800045c0:	0006c583          	lbu	a1,0(a3)
    800045c4:	00f00613          	li	a2,15
    800045c8:	0047d69b          	srliw	a3,a5,0x4
    800045cc:	f8b40123          	sb	a1,-126(s0)
    800045d0:	0047d593          	srli	a1,a5,0x4
    800045d4:	28f67e63          	bgeu	a2,a5,80004870 <__printf+0x608>
    800045d8:	00f6f693          	andi	a3,a3,15
    800045dc:	00dd86b3          	add	a3,s11,a3
    800045e0:	0006c503          	lbu	a0,0(a3)
    800045e4:	0087d813          	srli	a6,a5,0x8
    800045e8:	0087d69b          	srliw	a3,a5,0x8
    800045ec:	f8a401a3          	sb	a0,-125(s0)
    800045f0:	28b67663          	bgeu	a2,a1,8000487c <__printf+0x614>
    800045f4:	00f6f693          	andi	a3,a3,15
    800045f8:	00dd86b3          	add	a3,s11,a3
    800045fc:	0006c583          	lbu	a1,0(a3)
    80004600:	00c7d513          	srli	a0,a5,0xc
    80004604:	00c7d69b          	srliw	a3,a5,0xc
    80004608:	f8b40223          	sb	a1,-124(s0)
    8000460c:	29067a63          	bgeu	a2,a6,800048a0 <__printf+0x638>
    80004610:	00f6f693          	andi	a3,a3,15
    80004614:	00dd86b3          	add	a3,s11,a3
    80004618:	0006c583          	lbu	a1,0(a3)
    8000461c:	0107d813          	srli	a6,a5,0x10
    80004620:	0107d69b          	srliw	a3,a5,0x10
    80004624:	f8b402a3          	sb	a1,-123(s0)
    80004628:	28a67263          	bgeu	a2,a0,800048ac <__printf+0x644>
    8000462c:	00f6f693          	andi	a3,a3,15
    80004630:	00dd86b3          	add	a3,s11,a3
    80004634:	0006c683          	lbu	a3,0(a3)
    80004638:	0147d79b          	srliw	a5,a5,0x14
    8000463c:	f8d40323          	sb	a3,-122(s0)
    80004640:	21067663          	bgeu	a2,a6,8000484c <__printf+0x5e4>
    80004644:	02079793          	slli	a5,a5,0x20
    80004648:	0207d793          	srli	a5,a5,0x20
    8000464c:	00fd8db3          	add	s11,s11,a5
    80004650:	000dc683          	lbu	a3,0(s11)
    80004654:	00800793          	li	a5,8
    80004658:	00700c93          	li	s9,7
    8000465c:	f8d403a3          	sb	a3,-121(s0)
    80004660:	00075c63          	bgez	a4,80004678 <__printf+0x410>
    80004664:	f9040713          	addi	a4,s0,-112
    80004668:	00f70733          	add	a4,a4,a5
    8000466c:	02d00693          	li	a3,45
    80004670:	fed70823          	sb	a3,-16(a4)
    80004674:	00078c93          	mv	s9,a5
    80004678:	f8040793          	addi	a5,s0,-128
    8000467c:	01978cb3          	add	s9,a5,s9
    80004680:	f7f40d13          	addi	s10,s0,-129
    80004684:	000cc503          	lbu	a0,0(s9)
    80004688:	fffc8c93          	addi	s9,s9,-1
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	9f8080e7          	jalr	-1544(ra) # 80004084 <consputc>
    80004694:	ff9d18e3          	bne	s10,s9,80004684 <__printf+0x41c>
    80004698:	0100006f          	j	800046a8 <__printf+0x440>
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	9e8080e7          	jalr	-1560(ra) # 80004084 <consputc>
    800046a4:	000c8493          	mv	s1,s9
    800046a8:	00094503          	lbu	a0,0(s2)
    800046ac:	c60510e3          	bnez	a0,8000430c <__printf+0xa4>
    800046b0:	e40c0ee3          	beqz	s8,8000450c <__printf+0x2a4>
    800046b4:	00004517          	auipc	a0,0x4
    800046b8:	fec50513          	addi	a0,a0,-20 # 800086a0 <pr>
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	94c080e7          	jalr	-1716(ra) # 80005008 <release>
    800046c4:	e49ff06f          	j	8000450c <__printf+0x2a4>
    800046c8:	f7843783          	ld	a5,-136(s0)
    800046cc:	03000513          	li	a0,48
    800046d0:	01000d13          	li	s10,16
    800046d4:	00878713          	addi	a4,a5,8
    800046d8:	0007bc83          	ld	s9,0(a5)
    800046dc:	f6e43c23          	sd	a4,-136(s0)
    800046e0:	00000097          	auipc	ra,0x0
    800046e4:	9a4080e7          	jalr	-1628(ra) # 80004084 <consputc>
    800046e8:	07800513          	li	a0,120
    800046ec:	00000097          	auipc	ra,0x0
    800046f0:	998080e7          	jalr	-1640(ra) # 80004084 <consputc>
    800046f4:	00002d97          	auipc	s11,0x2
    800046f8:	ce4d8d93          	addi	s11,s11,-796 # 800063d8 <digits>
    800046fc:	03ccd793          	srli	a5,s9,0x3c
    80004700:	00fd87b3          	add	a5,s11,a5
    80004704:	0007c503          	lbu	a0,0(a5)
    80004708:	fffd0d1b          	addiw	s10,s10,-1
    8000470c:	004c9c93          	slli	s9,s9,0x4
    80004710:	00000097          	auipc	ra,0x0
    80004714:	974080e7          	jalr	-1676(ra) # 80004084 <consputc>
    80004718:	fe0d12e3          	bnez	s10,800046fc <__printf+0x494>
    8000471c:	f8dff06f          	j	800046a8 <__printf+0x440>
    80004720:	f7843783          	ld	a5,-136(s0)
    80004724:	0007bc83          	ld	s9,0(a5)
    80004728:	00878793          	addi	a5,a5,8
    8000472c:	f6f43c23          	sd	a5,-136(s0)
    80004730:	000c9a63          	bnez	s9,80004744 <__printf+0x4dc>
    80004734:	1080006f          	j	8000483c <__printf+0x5d4>
    80004738:	001c8c93          	addi	s9,s9,1
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	948080e7          	jalr	-1720(ra) # 80004084 <consputc>
    80004744:	000cc503          	lbu	a0,0(s9)
    80004748:	fe0518e3          	bnez	a0,80004738 <__printf+0x4d0>
    8000474c:	f5dff06f          	j	800046a8 <__printf+0x440>
    80004750:	02500513          	li	a0,37
    80004754:	00000097          	auipc	ra,0x0
    80004758:	930080e7          	jalr	-1744(ra) # 80004084 <consputc>
    8000475c:	000c8513          	mv	a0,s9
    80004760:	00000097          	auipc	ra,0x0
    80004764:	924080e7          	jalr	-1756(ra) # 80004084 <consputc>
    80004768:	f41ff06f          	j	800046a8 <__printf+0x440>
    8000476c:	02500513          	li	a0,37
    80004770:	00000097          	auipc	ra,0x0
    80004774:	914080e7          	jalr	-1772(ra) # 80004084 <consputc>
    80004778:	f31ff06f          	j	800046a8 <__printf+0x440>
    8000477c:	00030513          	mv	a0,t1
    80004780:	00000097          	auipc	ra,0x0
    80004784:	7bc080e7          	jalr	1980(ra) # 80004f3c <acquire>
    80004788:	b4dff06f          	j	800042d4 <__printf+0x6c>
    8000478c:	40c0053b          	negw	a0,a2
    80004790:	00a00713          	li	a4,10
    80004794:	02e576bb          	remuw	a3,a0,a4
    80004798:	00002d97          	auipc	s11,0x2
    8000479c:	c40d8d93          	addi	s11,s11,-960 # 800063d8 <digits>
    800047a0:	ff700593          	li	a1,-9
    800047a4:	02069693          	slli	a3,a3,0x20
    800047a8:	0206d693          	srli	a3,a3,0x20
    800047ac:	00dd86b3          	add	a3,s11,a3
    800047b0:	0006c683          	lbu	a3,0(a3)
    800047b4:	02e557bb          	divuw	a5,a0,a4
    800047b8:	f8d40023          	sb	a3,-128(s0)
    800047bc:	10b65e63          	bge	a2,a1,800048d8 <__printf+0x670>
    800047c0:	06300593          	li	a1,99
    800047c4:	02e7f6bb          	remuw	a3,a5,a4
    800047c8:	02069693          	slli	a3,a3,0x20
    800047cc:	0206d693          	srli	a3,a3,0x20
    800047d0:	00dd86b3          	add	a3,s11,a3
    800047d4:	0006c683          	lbu	a3,0(a3)
    800047d8:	02e7d73b          	divuw	a4,a5,a4
    800047dc:	00200793          	li	a5,2
    800047e0:	f8d400a3          	sb	a3,-127(s0)
    800047e4:	bca5ece3          	bltu	a1,a0,800043bc <__printf+0x154>
    800047e8:	ce5ff06f          	j	800044cc <__printf+0x264>
    800047ec:	40e007bb          	negw	a5,a4
    800047f0:	00002d97          	auipc	s11,0x2
    800047f4:	be8d8d93          	addi	s11,s11,-1048 # 800063d8 <digits>
    800047f8:	00f7f693          	andi	a3,a5,15
    800047fc:	00dd86b3          	add	a3,s11,a3
    80004800:	0006c583          	lbu	a1,0(a3)
    80004804:	ff100613          	li	a2,-15
    80004808:	0047d69b          	srliw	a3,a5,0x4
    8000480c:	f8b40023          	sb	a1,-128(s0)
    80004810:	0047d59b          	srliw	a1,a5,0x4
    80004814:	0ac75e63          	bge	a4,a2,800048d0 <__printf+0x668>
    80004818:	00f6f693          	andi	a3,a3,15
    8000481c:	00dd86b3          	add	a3,s11,a3
    80004820:	0006c603          	lbu	a2,0(a3)
    80004824:	00f00693          	li	a3,15
    80004828:	0087d79b          	srliw	a5,a5,0x8
    8000482c:	f8c400a3          	sb	a2,-127(s0)
    80004830:	d8b6e4e3          	bltu	a3,a1,800045b8 <__printf+0x350>
    80004834:	00200793          	li	a5,2
    80004838:	e2dff06f          	j	80004664 <__printf+0x3fc>
    8000483c:	00002c97          	auipc	s9,0x2
    80004840:	b7cc8c93          	addi	s9,s9,-1156 # 800063b8 <_ZZ14__print_uint64mE6digits+0x280>
    80004844:	02800513          	li	a0,40
    80004848:	ef1ff06f          	j	80004738 <__printf+0x4d0>
    8000484c:	00700793          	li	a5,7
    80004850:	00600c93          	li	s9,6
    80004854:	e0dff06f          	j	80004660 <__printf+0x3f8>
    80004858:	00700793          	li	a5,7
    8000485c:	00600c93          	li	s9,6
    80004860:	c69ff06f          	j	800044c8 <__printf+0x260>
    80004864:	00300793          	li	a5,3
    80004868:	00200c93          	li	s9,2
    8000486c:	c5dff06f          	j	800044c8 <__printf+0x260>
    80004870:	00300793          	li	a5,3
    80004874:	00200c93          	li	s9,2
    80004878:	de9ff06f          	j	80004660 <__printf+0x3f8>
    8000487c:	00400793          	li	a5,4
    80004880:	00300c93          	li	s9,3
    80004884:	dddff06f          	j	80004660 <__printf+0x3f8>
    80004888:	00400793          	li	a5,4
    8000488c:	00300c93          	li	s9,3
    80004890:	c39ff06f          	j	800044c8 <__printf+0x260>
    80004894:	00500793          	li	a5,5
    80004898:	00400c93          	li	s9,4
    8000489c:	c2dff06f          	j	800044c8 <__printf+0x260>
    800048a0:	00500793          	li	a5,5
    800048a4:	00400c93          	li	s9,4
    800048a8:	db9ff06f          	j	80004660 <__printf+0x3f8>
    800048ac:	00600793          	li	a5,6
    800048b0:	00500c93          	li	s9,5
    800048b4:	dadff06f          	j	80004660 <__printf+0x3f8>
    800048b8:	00600793          	li	a5,6
    800048bc:	00500c93          	li	s9,5
    800048c0:	c09ff06f          	j	800044c8 <__printf+0x260>
    800048c4:	00800793          	li	a5,8
    800048c8:	00700c93          	li	s9,7
    800048cc:	bfdff06f          	j	800044c8 <__printf+0x260>
    800048d0:	00100793          	li	a5,1
    800048d4:	d91ff06f          	j	80004664 <__printf+0x3fc>
    800048d8:	00100793          	li	a5,1
    800048dc:	bf1ff06f          	j	800044cc <__printf+0x264>
    800048e0:	00900793          	li	a5,9
    800048e4:	00800c93          	li	s9,8
    800048e8:	be1ff06f          	j	800044c8 <__printf+0x260>
    800048ec:	00002517          	auipc	a0,0x2
    800048f0:	ad450513          	addi	a0,a0,-1324 # 800063c0 <_ZZ14__print_uint64mE6digits+0x288>
    800048f4:	00000097          	auipc	ra,0x0
    800048f8:	918080e7          	jalr	-1768(ra) # 8000420c <panic>

00000000800048fc <printfinit>:
    800048fc:	fe010113          	addi	sp,sp,-32
    80004900:	00813823          	sd	s0,16(sp)
    80004904:	00913423          	sd	s1,8(sp)
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	02010413          	addi	s0,sp,32
    80004910:	00004497          	auipc	s1,0x4
    80004914:	d9048493          	addi	s1,s1,-624 # 800086a0 <pr>
    80004918:	00048513          	mv	a0,s1
    8000491c:	00002597          	auipc	a1,0x2
    80004920:	ab458593          	addi	a1,a1,-1356 # 800063d0 <_ZZ14__print_uint64mE6digits+0x298>
    80004924:	00000097          	auipc	ra,0x0
    80004928:	5f4080e7          	jalr	1524(ra) # 80004f18 <initlock>
    8000492c:	01813083          	ld	ra,24(sp)
    80004930:	01013403          	ld	s0,16(sp)
    80004934:	0004ac23          	sw	zero,24(s1)
    80004938:	00813483          	ld	s1,8(sp)
    8000493c:	02010113          	addi	sp,sp,32
    80004940:	00008067          	ret

0000000080004944 <uartinit>:
    80004944:	ff010113          	addi	sp,sp,-16
    80004948:	00813423          	sd	s0,8(sp)
    8000494c:	01010413          	addi	s0,sp,16
    80004950:	100007b7          	lui	a5,0x10000
    80004954:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004958:	f8000713          	li	a4,-128
    8000495c:	00e781a3          	sb	a4,3(a5)
    80004960:	00300713          	li	a4,3
    80004964:	00e78023          	sb	a4,0(a5)
    80004968:	000780a3          	sb	zero,1(a5)
    8000496c:	00e781a3          	sb	a4,3(a5)
    80004970:	00700693          	li	a3,7
    80004974:	00d78123          	sb	a3,2(a5)
    80004978:	00e780a3          	sb	a4,1(a5)
    8000497c:	00813403          	ld	s0,8(sp)
    80004980:	01010113          	addi	sp,sp,16
    80004984:	00008067          	ret

0000000080004988 <uartputc>:
    80004988:	00003797          	auipc	a5,0x3
    8000498c:	a807a783          	lw	a5,-1408(a5) # 80007408 <panicked>
    80004990:	00078463          	beqz	a5,80004998 <uartputc+0x10>
    80004994:	0000006f          	j	80004994 <uartputc+0xc>
    80004998:	fd010113          	addi	sp,sp,-48
    8000499c:	02813023          	sd	s0,32(sp)
    800049a0:	00913c23          	sd	s1,24(sp)
    800049a4:	01213823          	sd	s2,16(sp)
    800049a8:	01313423          	sd	s3,8(sp)
    800049ac:	02113423          	sd	ra,40(sp)
    800049b0:	03010413          	addi	s0,sp,48
    800049b4:	00003917          	auipc	s2,0x3
    800049b8:	a5c90913          	addi	s2,s2,-1444 # 80007410 <uart_tx_r>
    800049bc:	00093783          	ld	a5,0(s2)
    800049c0:	00003497          	auipc	s1,0x3
    800049c4:	a5848493          	addi	s1,s1,-1448 # 80007418 <uart_tx_w>
    800049c8:	0004b703          	ld	a4,0(s1)
    800049cc:	02078693          	addi	a3,a5,32
    800049d0:	00050993          	mv	s3,a0
    800049d4:	02e69c63          	bne	a3,a4,80004a0c <uartputc+0x84>
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	834080e7          	jalr	-1996(ra) # 8000520c <push_on>
    800049e0:	00093783          	ld	a5,0(s2)
    800049e4:	0004b703          	ld	a4,0(s1)
    800049e8:	02078793          	addi	a5,a5,32
    800049ec:	00e79463          	bne	a5,a4,800049f4 <uartputc+0x6c>
    800049f0:	0000006f          	j	800049f0 <uartputc+0x68>
    800049f4:	00001097          	auipc	ra,0x1
    800049f8:	88c080e7          	jalr	-1908(ra) # 80005280 <pop_on>
    800049fc:	00093783          	ld	a5,0(s2)
    80004a00:	0004b703          	ld	a4,0(s1)
    80004a04:	02078693          	addi	a3,a5,32
    80004a08:	fce688e3          	beq	a3,a4,800049d8 <uartputc+0x50>
    80004a0c:	01f77693          	andi	a3,a4,31
    80004a10:	00004597          	auipc	a1,0x4
    80004a14:	cb058593          	addi	a1,a1,-848 # 800086c0 <uart_tx_buf>
    80004a18:	00d586b3          	add	a3,a1,a3
    80004a1c:	00170713          	addi	a4,a4,1
    80004a20:	01368023          	sb	s3,0(a3)
    80004a24:	00e4b023          	sd	a4,0(s1)
    80004a28:	10000637          	lui	a2,0x10000
    80004a2c:	02f71063          	bne	a4,a5,80004a4c <uartputc+0xc4>
    80004a30:	0340006f          	j	80004a64 <uartputc+0xdc>
    80004a34:	00074703          	lbu	a4,0(a4)
    80004a38:	00f93023          	sd	a5,0(s2)
    80004a3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004a40:	00093783          	ld	a5,0(s2)
    80004a44:	0004b703          	ld	a4,0(s1)
    80004a48:	00f70e63          	beq	a4,a5,80004a64 <uartputc+0xdc>
    80004a4c:	00564683          	lbu	a3,5(a2)
    80004a50:	01f7f713          	andi	a4,a5,31
    80004a54:	00e58733          	add	a4,a1,a4
    80004a58:	0206f693          	andi	a3,a3,32
    80004a5c:	00178793          	addi	a5,a5,1
    80004a60:	fc069ae3          	bnez	a3,80004a34 <uartputc+0xac>
    80004a64:	02813083          	ld	ra,40(sp)
    80004a68:	02013403          	ld	s0,32(sp)
    80004a6c:	01813483          	ld	s1,24(sp)
    80004a70:	01013903          	ld	s2,16(sp)
    80004a74:	00813983          	ld	s3,8(sp)
    80004a78:	03010113          	addi	sp,sp,48
    80004a7c:	00008067          	ret

0000000080004a80 <uartputc_sync>:
    80004a80:	ff010113          	addi	sp,sp,-16
    80004a84:	00813423          	sd	s0,8(sp)
    80004a88:	01010413          	addi	s0,sp,16
    80004a8c:	00003717          	auipc	a4,0x3
    80004a90:	97c72703          	lw	a4,-1668(a4) # 80007408 <panicked>
    80004a94:	02071663          	bnez	a4,80004ac0 <uartputc_sync+0x40>
    80004a98:	00050793          	mv	a5,a0
    80004a9c:	100006b7          	lui	a3,0x10000
    80004aa0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004aa4:	02077713          	andi	a4,a4,32
    80004aa8:	fe070ce3          	beqz	a4,80004aa0 <uartputc_sync+0x20>
    80004aac:	0ff7f793          	andi	a5,a5,255
    80004ab0:	00f68023          	sb	a5,0(a3)
    80004ab4:	00813403          	ld	s0,8(sp)
    80004ab8:	01010113          	addi	sp,sp,16
    80004abc:	00008067          	ret
    80004ac0:	0000006f          	j	80004ac0 <uartputc_sync+0x40>

0000000080004ac4 <uartstart>:
    80004ac4:	ff010113          	addi	sp,sp,-16
    80004ac8:	00813423          	sd	s0,8(sp)
    80004acc:	01010413          	addi	s0,sp,16
    80004ad0:	00003617          	auipc	a2,0x3
    80004ad4:	94060613          	addi	a2,a2,-1728 # 80007410 <uart_tx_r>
    80004ad8:	00003517          	auipc	a0,0x3
    80004adc:	94050513          	addi	a0,a0,-1728 # 80007418 <uart_tx_w>
    80004ae0:	00063783          	ld	a5,0(a2)
    80004ae4:	00053703          	ld	a4,0(a0)
    80004ae8:	04f70263          	beq	a4,a5,80004b2c <uartstart+0x68>
    80004aec:	100005b7          	lui	a1,0x10000
    80004af0:	00004817          	auipc	a6,0x4
    80004af4:	bd080813          	addi	a6,a6,-1072 # 800086c0 <uart_tx_buf>
    80004af8:	01c0006f          	j	80004b14 <uartstart+0x50>
    80004afc:	0006c703          	lbu	a4,0(a3)
    80004b00:	00f63023          	sd	a5,0(a2)
    80004b04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004b08:	00063783          	ld	a5,0(a2)
    80004b0c:	00053703          	ld	a4,0(a0)
    80004b10:	00f70e63          	beq	a4,a5,80004b2c <uartstart+0x68>
    80004b14:	01f7f713          	andi	a4,a5,31
    80004b18:	00e806b3          	add	a3,a6,a4
    80004b1c:	0055c703          	lbu	a4,5(a1)
    80004b20:	00178793          	addi	a5,a5,1
    80004b24:	02077713          	andi	a4,a4,32
    80004b28:	fc071ae3          	bnez	a4,80004afc <uartstart+0x38>
    80004b2c:	00813403          	ld	s0,8(sp)
    80004b30:	01010113          	addi	sp,sp,16
    80004b34:	00008067          	ret

0000000080004b38 <uartgetc>:
    80004b38:	ff010113          	addi	sp,sp,-16
    80004b3c:	00813423          	sd	s0,8(sp)
    80004b40:	01010413          	addi	s0,sp,16
    80004b44:	10000737          	lui	a4,0x10000
    80004b48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004b4c:	0017f793          	andi	a5,a5,1
    80004b50:	00078c63          	beqz	a5,80004b68 <uartgetc+0x30>
    80004b54:	00074503          	lbu	a0,0(a4)
    80004b58:	0ff57513          	andi	a0,a0,255
    80004b5c:	00813403          	ld	s0,8(sp)
    80004b60:	01010113          	addi	sp,sp,16
    80004b64:	00008067          	ret
    80004b68:	fff00513          	li	a0,-1
    80004b6c:	ff1ff06f          	j	80004b5c <uartgetc+0x24>

0000000080004b70 <uartintr>:
    80004b70:	100007b7          	lui	a5,0x10000
    80004b74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004b78:	0017f793          	andi	a5,a5,1
    80004b7c:	0a078463          	beqz	a5,80004c24 <uartintr+0xb4>
    80004b80:	fe010113          	addi	sp,sp,-32
    80004b84:	00813823          	sd	s0,16(sp)
    80004b88:	00913423          	sd	s1,8(sp)
    80004b8c:	00113c23          	sd	ra,24(sp)
    80004b90:	02010413          	addi	s0,sp,32
    80004b94:	100004b7          	lui	s1,0x10000
    80004b98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004b9c:	0ff57513          	andi	a0,a0,255
    80004ba0:	fffff097          	auipc	ra,0xfffff
    80004ba4:	534080e7          	jalr	1332(ra) # 800040d4 <consoleintr>
    80004ba8:	0054c783          	lbu	a5,5(s1)
    80004bac:	0017f793          	andi	a5,a5,1
    80004bb0:	fe0794e3          	bnez	a5,80004b98 <uartintr+0x28>
    80004bb4:	00003617          	auipc	a2,0x3
    80004bb8:	85c60613          	addi	a2,a2,-1956 # 80007410 <uart_tx_r>
    80004bbc:	00003517          	auipc	a0,0x3
    80004bc0:	85c50513          	addi	a0,a0,-1956 # 80007418 <uart_tx_w>
    80004bc4:	00063783          	ld	a5,0(a2)
    80004bc8:	00053703          	ld	a4,0(a0)
    80004bcc:	04f70263          	beq	a4,a5,80004c10 <uartintr+0xa0>
    80004bd0:	100005b7          	lui	a1,0x10000
    80004bd4:	00004817          	auipc	a6,0x4
    80004bd8:	aec80813          	addi	a6,a6,-1300 # 800086c0 <uart_tx_buf>
    80004bdc:	01c0006f          	j	80004bf8 <uartintr+0x88>
    80004be0:	0006c703          	lbu	a4,0(a3)
    80004be4:	00f63023          	sd	a5,0(a2)
    80004be8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004bec:	00063783          	ld	a5,0(a2)
    80004bf0:	00053703          	ld	a4,0(a0)
    80004bf4:	00f70e63          	beq	a4,a5,80004c10 <uartintr+0xa0>
    80004bf8:	01f7f713          	andi	a4,a5,31
    80004bfc:	00e806b3          	add	a3,a6,a4
    80004c00:	0055c703          	lbu	a4,5(a1)
    80004c04:	00178793          	addi	a5,a5,1
    80004c08:	02077713          	andi	a4,a4,32
    80004c0c:	fc071ae3          	bnez	a4,80004be0 <uartintr+0x70>
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	00813483          	ld	s1,8(sp)
    80004c1c:	02010113          	addi	sp,sp,32
    80004c20:	00008067          	ret
    80004c24:	00002617          	auipc	a2,0x2
    80004c28:	7ec60613          	addi	a2,a2,2028 # 80007410 <uart_tx_r>
    80004c2c:	00002517          	auipc	a0,0x2
    80004c30:	7ec50513          	addi	a0,a0,2028 # 80007418 <uart_tx_w>
    80004c34:	00063783          	ld	a5,0(a2)
    80004c38:	00053703          	ld	a4,0(a0)
    80004c3c:	04f70263          	beq	a4,a5,80004c80 <uartintr+0x110>
    80004c40:	100005b7          	lui	a1,0x10000
    80004c44:	00004817          	auipc	a6,0x4
    80004c48:	a7c80813          	addi	a6,a6,-1412 # 800086c0 <uart_tx_buf>
    80004c4c:	01c0006f          	j	80004c68 <uartintr+0xf8>
    80004c50:	0006c703          	lbu	a4,0(a3)
    80004c54:	00f63023          	sd	a5,0(a2)
    80004c58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c5c:	00063783          	ld	a5,0(a2)
    80004c60:	00053703          	ld	a4,0(a0)
    80004c64:	02f70063          	beq	a4,a5,80004c84 <uartintr+0x114>
    80004c68:	01f7f713          	andi	a4,a5,31
    80004c6c:	00e806b3          	add	a3,a6,a4
    80004c70:	0055c703          	lbu	a4,5(a1)
    80004c74:	00178793          	addi	a5,a5,1
    80004c78:	02077713          	andi	a4,a4,32
    80004c7c:	fc071ae3          	bnez	a4,80004c50 <uartintr+0xe0>
    80004c80:	00008067          	ret
    80004c84:	00008067          	ret

0000000080004c88 <kinit>:
    80004c88:	fc010113          	addi	sp,sp,-64
    80004c8c:	02913423          	sd	s1,40(sp)
    80004c90:	fffff7b7          	lui	a5,0xfffff
    80004c94:	00005497          	auipc	s1,0x5
    80004c98:	a4b48493          	addi	s1,s1,-1461 # 800096df <end+0xfff>
    80004c9c:	02813823          	sd	s0,48(sp)
    80004ca0:	01313c23          	sd	s3,24(sp)
    80004ca4:	00f4f4b3          	and	s1,s1,a5
    80004ca8:	02113c23          	sd	ra,56(sp)
    80004cac:	03213023          	sd	s2,32(sp)
    80004cb0:	01413823          	sd	s4,16(sp)
    80004cb4:	01513423          	sd	s5,8(sp)
    80004cb8:	04010413          	addi	s0,sp,64
    80004cbc:	000017b7          	lui	a5,0x1
    80004cc0:	01100993          	li	s3,17
    80004cc4:	00f487b3          	add	a5,s1,a5
    80004cc8:	01b99993          	slli	s3,s3,0x1b
    80004ccc:	06f9e063          	bltu	s3,a5,80004d2c <kinit+0xa4>
    80004cd0:	00004a97          	auipc	s5,0x4
    80004cd4:	a10a8a93          	addi	s5,s5,-1520 # 800086e0 <end>
    80004cd8:	0754ec63          	bltu	s1,s5,80004d50 <kinit+0xc8>
    80004cdc:	0734fa63          	bgeu	s1,s3,80004d50 <kinit+0xc8>
    80004ce0:	00088a37          	lui	s4,0x88
    80004ce4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004ce8:	00002917          	auipc	s2,0x2
    80004cec:	73890913          	addi	s2,s2,1848 # 80007420 <kmem>
    80004cf0:	00ca1a13          	slli	s4,s4,0xc
    80004cf4:	0140006f          	j	80004d08 <kinit+0x80>
    80004cf8:	000017b7          	lui	a5,0x1
    80004cfc:	00f484b3          	add	s1,s1,a5
    80004d00:	0554e863          	bltu	s1,s5,80004d50 <kinit+0xc8>
    80004d04:	0534f663          	bgeu	s1,s3,80004d50 <kinit+0xc8>
    80004d08:	00001637          	lui	a2,0x1
    80004d0c:	00100593          	li	a1,1
    80004d10:	00048513          	mv	a0,s1
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	5e4080e7          	jalr	1508(ra) # 800052f8 <__memset>
    80004d1c:	00093783          	ld	a5,0(s2)
    80004d20:	00f4b023          	sd	a5,0(s1)
    80004d24:	00993023          	sd	s1,0(s2)
    80004d28:	fd4498e3          	bne	s1,s4,80004cf8 <kinit+0x70>
    80004d2c:	03813083          	ld	ra,56(sp)
    80004d30:	03013403          	ld	s0,48(sp)
    80004d34:	02813483          	ld	s1,40(sp)
    80004d38:	02013903          	ld	s2,32(sp)
    80004d3c:	01813983          	ld	s3,24(sp)
    80004d40:	01013a03          	ld	s4,16(sp)
    80004d44:	00813a83          	ld	s5,8(sp)
    80004d48:	04010113          	addi	sp,sp,64
    80004d4c:	00008067          	ret
    80004d50:	00001517          	auipc	a0,0x1
    80004d54:	6a050513          	addi	a0,a0,1696 # 800063f0 <digits+0x18>
    80004d58:	fffff097          	auipc	ra,0xfffff
    80004d5c:	4b4080e7          	jalr	1204(ra) # 8000420c <panic>

0000000080004d60 <freerange>:
    80004d60:	fc010113          	addi	sp,sp,-64
    80004d64:	000017b7          	lui	a5,0x1
    80004d68:	02913423          	sd	s1,40(sp)
    80004d6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004d70:	009504b3          	add	s1,a0,s1
    80004d74:	fffff537          	lui	a0,0xfffff
    80004d78:	02813823          	sd	s0,48(sp)
    80004d7c:	02113c23          	sd	ra,56(sp)
    80004d80:	03213023          	sd	s2,32(sp)
    80004d84:	01313c23          	sd	s3,24(sp)
    80004d88:	01413823          	sd	s4,16(sp)
    80004d8c:	01513423          	sd	s5,8(sp)
    80004d90:	01613023          	sd	s6,0(sp)
    80004d94:	04010413          	addi	s0,sp,64
    80004d98:	00a4f4b3          	and	s1,s1,a0
    80004d9c:	00f487b3          	add	a5,s1,a5
    80004da0:	06f5e463          	bltu	a1,a5,80004e08 <freerange+0xa8>
    80004da4:	00004a97          	auipc	s5,0x4
    80004da8:	93ca8a93          	addi	s5,s5,-1732 # 800086e0 <end>
    80004dac:	0954e263          	bltu	s1,s5,80004e30 <freerange+0xd0>
    80004db0:	01100993          	li	s3,17
    80004db4:	01b99993          	slli	s3,s3,0x1b
    80004db8:	0734fc63          	bgeu	s1,s3,80004e30 <freerange+0xd0>
    80004dbc:	00058a13          	mv	s4,a1
    80004dc0:	00002917          	auipc	s2,0x2
    80004dc4:	66090913          	addi	s2,s2,1632 # 80007420 <kmem>
    80004dc8:	00002b37          	lui	s6,0x2
    80004dcc:	0140006f          	j	80004de0 <freerange+0x80>
    80004dd0:	000017b7          	lui	a5,0x1
    80004dd4:	00f484b3          	add	s1,s1,a5
    80004dd8:	0554ec63          	bltu	s1,s5,80004e30 <freerange+0xd0>
    80004ddc:	0534fa63          	bgeu	s1,s3,80004e30 <freerange+0xd0>
    80004de0:	00001637          	lui	a2,0x1
    80004de4:	00100593          	li	a1,1
    80004de8:	00048513          	mv	a0,s1
    80004dec:	00000097          	auipc	ra,0x0
    80004df0:	50c080e7          	jalr	1292(ra) # 800052f8 <__memset>
    80004df4:	00093703          	ld	a4,0(s2)
    80004df8:	016487b3          	add	a5,s1,s6
    80004dfc:	00e4b023          	sd	a4,0(s1)
    80004e00:	00993023          	sd	s1,0(s2)
    80004e04:	fcfa76e3          	bgeu	s4,a5,80004dd0 <freerange+0x70>
    80004e08:	03813083          	ld	ra,56(sp)
    80004e0c:	03013403          	ld	s0,48(sp)
    80004e10:	02813483          	ld	s1,40(sp)
    80004e14:	02013903          	ld	s2,32(sp)
    80004e18:	01813983          	ld	s3,24(sp)
    80004e1c:	01013a03          	ld	s4,16(sp)
    80004e20:	00813a83          	ld	s5,8(sp)
    80004e24:	00013b03          	ld	s6,0(sp)
    80004e28:	04010113          	addi	sp,sp,64
    80004e2c:	00008067          	ret
    80004e30:	00001517          	auipc	a0,0x1
    80004e34:	5c050513          	addi	a0,a0,1472 # 800063f0 <digits+0x18>
    80004e38:	fffff097          	auipc	ra,0xfffff
    80004e3c:	3d4080e7          	jalr	980(ra) # 8000420c <panic>

0000000080004e40 <kfree>:
    80004e40:	fe010113          	addi	sp,sp,-32
    80004e44:	00813823          	sd	s0,16(sp)
    80004e48:	00113c23          	sd	ra,24(sp)
    80004e4c:	00913423          	sd	s1,8(sp)
    80004e50:	02010413          	addi	s0,sp,32
    80004e54:	03451793          	slli	a5,a0,0x34
    80004e58:	04079c63          	bnez	a5,80004eb0 <kfree+0x70>
    80004e5c:	00004797          	auipc	a5,0x4
    80004e60:	88478793          	addi	a5,a5,-1916 # 800086e0 <end>
    80004e64:	00050493          	mv	s1,a0
    80004e68:	04f56463          	bltu	a0,a5,80004eb0 <kfree+0x70>
    80004e6c:	01100793          	li	a5,17
    80004e70:	01b79793          	slli	a5,a5,0x1b
    80004e74:	02f57e63          	bgeu	a0,a5,80004eb0 <kfree+0x70>
    80004e78:	00001637          	lui	a2,0x1
    80004e7c:	00100593          	li	a1,1
    80004e80:	00000097          	auipc	ra,0x0
    80004e84:	478080e7          	jalr	1144(ra) # 800052f8 <__memset>
    80004e88:	00002797          	auipc	a5,0x2
    80004e8c:	59878793          	addi	a5,a5,1432 # 80007420 <kmem>
    80004e90:	0007b703          	ld	a4,0(a5)
    80004e94:	01813083          	ld	ra,24(sp)
    80004e98:	01013403          	ld	s0,16(sp)
    80004e9c:	00e4b023          	sd	a4,0(s1)
    80004ea0:	0097b023          	sd	s1,0(a5)
    80004ea4:	00813483          	ld	s1,8(sp)
    80004ea8:	02010113          	addi	sp,sp,32
    80004eac:	00008067          	ret
    80004eb0:	00001517          	auipc	a0,0x1
    80004eb4:	54050513          	addi	a0,a0,1344 # 800063f0 <digits+0x18>
    80004eb8:	fffff097          	auipc	ra,0xfffff
    80004ebc:	354080e7          	jalr	852(ra) # 8000420c <panic>

0000000080004ec0 <kalloc>:
    80004ec0:	fe010113          	addi	sp,sp,-32
    80004ec4:	00813823          	sd	s0,16(sp)
    80004ec8:	00913423          	sd	s1,8(sp)
    80004ecc:	00113c23          	sd	ra,24(sp)
    80004ed0:	02010413          	addi	s0,sp,32
    80004ed4:	00002797          	auipc	a5,0x2
    80004ed8:	54c78793          	addi	a5,a5,1356 # 80007420 <kmem>
    80004edc:	0007b483          	ld	s1,0(a5)
    80004ee0:	02048063          	beqz	s1,80004f00 <kalloc+0x40>
    80004ee4:	0004b703          	ld	a4,0(s1)
    80004ee8:	00001637          	lui	a2,0x1
    80004eec:	00500593          	li	a1,5
    80004ef0:	00048513          	mv	a0,s1
    80004ef4:	00e7b023          	sd	a4,0(a5)
    80004ef8:	00000097          	auipc	ra,0x0
    80004efc:	400080e7          	jalr	1024(ra) # 800052f8 <__memset>
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00048513          	mv	a0,s1
    80004f0c:	00813483          	ld	s1,8(sp)
    80004f10:	02010113          	addi	sp,sp,32
    80004f14:	00008067          	ret

0000000080004f18 <initlock>:
    80004f18:	ff010113          	addi	sp,sp,-16
    80004f1c:	00813423          	sd	s0,8(sp)
    80004f20:	01010413          	addi	s0,sp,16
    80004f24:	00813403          	ld	s0,8(sp)
    80004f28:	00b53423          	sd	a1,8(a0)
    80004f2c:	00052023          	sw	zero,0(a0)
    80004f30:	00053823          	sd	zero,16(a0)
    80004f34:	01010113          	addi	sp,sp,16
    80004f38:	00008067          	ret

0000000080004f3c <acquire>:
    80004f3c:	fe010113          	addi	sp,sp,-32
    80004f40:	00813823          	sd	s0,16(sp)
    80004f44:	00913423          	sd	s1,8(sp)
    80004f48:	00113c23          	sd	ra,24(sp)
    80004f4c:	01213023          	sd	s2,0(sp)
    80004f50:	02010413          	addi	s0,sp,32
    80004f54:	00050493          	mv	s1,a0
    80004f58:	10002973          	csrr	s2,sstatus
    80004f5c:	100027f3          	csrr	a5,sstatus
    80004f60:	ffd7f793          	andi	a5,a5,-3
    80004f64:	10079073          	csrw	sstatus,a5
    80004f68:	fffff097          	auipc	ra,0xfffff
    80004f6c:	8e8080e7          	jalr	-1816(ra) # 80003850 <mycpu>
    80004f70:	07852783          	lw	a5,120(a0)
    80004f74:	06078e63          	beqz	a5,80004ff0 <acquire+0xb4>
    80004f78:	fffff097          	auipc	ra,0xfffff
    80004f7c:	8d8080e7          	jalr	-1832(ra) # 80003850 <mycpu>
    80004f80:	07852783          	lw	a5,120(a0)
    80004f84:	0004a703          	lw	a4,0(s1)
    80004f88:	0017879b          	addiw	a5,a5,1
    80004f8c:	06f52c23          	sw	a5,120(a0)
    80004f90:	04071063          	bnez	a4,80004fd0 <acquire+0x94>
    80004f94:	00100713          	li	a4,1
    80004f98:	00070793          	mv	a5,a4
    80004f9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004fa0:	0007879b          	sext.w	a5,a5
    80004fa4:	fe079ae3          	bnez	a5,80004f98 <acquire+0x5c>
    80004fa8:	0ff0000f          	fence
    80004fac:	fffff097          	auipc	ra,0xfffff
    80004fb0:	8a4080e7          	jalr	-1884(ra) # 80003850 <mycpu>
    80004fb4:	01813083          	ld	ra,24(sp)
    80004fb8:	01013403          	ld	s0,16(sp)
    80004fbc:	00a4b823          	sd	a0,16(s1)
    80004fc0:	00013903          	ld	s2,0(sp)
    80004fc4:	00813483          	ld	s1,8(sp)
    80004fc8:	02010113          	addi	sp,sp,32
    80004fcc:	00008067          	ret
    80004fd0:	0104b903          	ld	s2,16(s1)
    80004fd4:	fffff097          	auipc	ra,0xfffff
    80004fd8:	87c080e7          	jalr	-1924(ra) # 80003850 <mycpu>
    80004fdc:	faa91ce3          	bne	s2,a0,80004f94 <acquire+0x58>
    80004fe0:	00001517          	auipc	a0,0x1
    80004fe4:	41850513          	addi	a0,a0,1048 # 800063f8 <digits+0x20>
    80004fe8:	fffff097          	auipc	ra,0xfffff
    80004fec:	224080e7          	jalr	548(ra) # 8000420c <panic>
    80004ff0:	00195913          	srli	s2,s2,0x1
    80004ff4:	fffff097          	auipc	ra,0xfffff
    80004ff8:	85c080e7          	jalr	-1956(ra) # 80003850 <mycpu>
    80004ffc:	00197913          	andi	s2,s2,1
    80005000:	07252e23          	sw	s2,124(a0)
    80005004:	f75ff06f          	j	80004f78 <acquire+0x3c>

0000000080005008 <release>:
    80005008:	fe010113          	addi	sp,sp,-32
    8000500c:	00813823          	sd	s0,16(sp)
    80005010:	00113c23          	sd	ra,24(sp)
    80005014:	00913423          	sd	s1,8(sp)
    80005018:	01213023          	sd	s2,0(sp)
    8000501c:	02010413          	addi	s0,sp,32
    80005020:	00052783          	lw	a5,0(a0)
    80005024:	00079a63          	bnez	a5,80005038 <release+0x30>
    80005028:	00001517          	auipc	a0,0x1
    8000502c:	3d850513          	addi	a0,a0,984 # 80006400 <digits+0x28>
    80005030:	fffff097          	auipc	ra,0xfffff
    80005034:	1dc080e7          	jalr	476(ra) # 8000420c <panic>
    80005038:	01053903          	ld	s2,16(a0)
    8000503c:	00050493          	mv	s1,a0
    80005040:	fffff097          	auipc	ra,0xfffff
    80005044:	810080e7          	jalr	-2032(ra) # 80003850 <mycpu>
    80005048:	fea910e3          	bne	s2,a0,80005028 <release+0x20>
    8000504c:	0004b823          	sd	zero,16(s1)
    80005050:	0ff0000f          	fence
    80005054:	0f50000f          	fence	iorw,ow
    80005058:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000505c:	ffffe097          	auipc	ra,0xffffe
    80005060:	7f4080e7          	jalr	2036(ra) # 80003850 <mycpu>
    80005064:	100027f3          	csrr	a5,sstatus
    80005068:	0027f793          	andi	a5,a5,2
    8000506c:	04079a63          	bnez	a5,800050c0 <release+0xb8>
    80005070:	07852783          	lw	a5,120(a0)
    80005074:	02f05e63          	blez	a5,800050b0 <release+0xa8>
    80005078:	fff7871b          	addiw	a4,a5,-1
    8000507c:	06e52c23          	sw	a4,120(a0)
    80005080:	00071c63          	bnez	a4,80005098 <release+0x90>
    80005084:	07c52783          	lw	a5,124(a0)
    80005088:	00078863          	beqz	a5,80005098 <release+0x90>
    8000508c:	100027f3          	csrr	a5,sstatus
    80005090:	0027e793          	ori	a5,a5,2
    80005094:	10079073          	csrw	sstatus,a5
    80005098:	01813083          	ld	ra,24(sp)
    8000509c:	01013403          	ld	s0,16(sp)
    800050a0:	00813483          	ld	s1,8(sp)
    800050a4:	00013903          	ld	s2,0(sp)
    800050a8:	02010113          	addi	sp,sp,32
    800050ac:	00008067          	ret
    800050b0:	00001517          	auipc	a0,0x1
    800050b4:	37050513          	addi	a0,a0,880 # 80006420 <digits+0x48>
    800050b8:	fffff097          	auipc	ra,0xfffff
    800050bc:	154080e7          	jalr	340(ra) # 8000420c <panic>
    800050c0:	00001517          	auipc	a0,0x1
    800050c4:	34850513          	addi	a0,a0,840 # 80006408 <digits+0x30>
    800050c8:	fffff097          	auipc	ra,0xfffff
    800050cc:	144080e7          	jalr	324(ra) # 8000420c <panic>

00000000800050d0 <holding>:
    800050d0:	00052783          	lw	a5,0(a0)
    800050d4:	00079663          	bnez	a5,800050e0 <holding+0x10>
    800050d8:	00000513          	li	a0,0
    800050dc:	00008067          	ret
    800050e0:	fe010113          	addi	sp,sp,-32
    800050e4:	00813823          	sd	s0,16(sp)
    800050e8:	00913423          	sd	s1,8(sp)
    800050ec:	00113c23          	sd	ra,24(sp)
    800050f0:	02010413          	addi	s0,sp,32
    800050f4:	01053483          	ld	s1,16(a0)
    800050f8:	ffffe097          	auipc	ra,0xffffe
    800050fc:	758080e7          	jalr	1880(ra) # 80003850 <mycpu>
    80005100:	01813083          	ld	ra,24(sp)
    80005104:	01013403          	ld	s0,16(sp)
    80005108:	40a48533          	sub	a0,s1,a0
    8000510c:	00153513          	seqz	a0,a0
    80005110:	00813483          	ld	s1,8(sp)
    80005114:	02010113          	addi	sp,sp,32
    80005118:	00008067          	ret

000000008000511c <push_off>:
    8000511c:	fe010113          	addi	sp,sp,-32
    80005120:	00813823          	sd	s0,16(sp)
    80005124:	00113c23          	sd	ra,24(sp)
    80005128:	00913423          	sd	s1,8(sp)
    8000512c:	02010413          	addi	s0,sp,32
    80005130:	100024f3          	csrr	s1,sstatus
    80005134:	100027f3          	csrr	a5,sstatus
    80005138:	ffd7f793          	andi	a5,a5,-3
    8000513c:	10079073          	csrw	sstatus,a5
    80005140:	ffffe097          	auipc	ra,0xffffe
    80005144:	710080e7          	jalr	1808(ra) # 80003850 <mycpu>
    80005148:	07852783          	lw	a5,120(a0)
    8000514c:	02078663          	beqz	a5,80005178 <push_off+0x5c>
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	700080e7          	jalr	1792(ra) # 80003850 <mycpu>
    80005158:	07852783          	lw	a5,120(a0)
    8000515c:	01813083          	ld	ra,24(sp)
    80005160:	01013403          	ld	s0,16(sp)
    80005164:	0017879b          	addiw	a5,a5,1
    80005168:	06f52c23          	sw	a5,120(a0)
    8000516c:	00813483          	ld	s1,8(sp)
    80005170:	02010113          	addi	sp,sp,32
    80005174:	00008067          	ret
    80005178:	0014d493          	srli	s1,s1,0x1
    8000517c:	ffffe097          	auipc	ra,0xffffe
    80005180:	6d4080e7          	jalr	1748(ra) # 80003850 <mycpu>
    80005184:	0014f493          	andi	s1,s1,1
    80005188:	06952e23          	sw	s1,124(a0)
    8000518c:	fc5ff06f          	j	80005150 <push_off+0x34>

0000000080005190 <pop_off>:
    80005190:	ff010113          	addi	sp,sp,-16
    80005194:	00813023          	sd	s0,0(sp)
    80005198:	00113423          	sd	ra,8(sp)
    8000519c:	01010413          	addi	s0,sp,16
    800051a0:	ffffe097          	auipc	ra,0xffffe
    800051a4:	6b0080e7          	jalr	1712(ra) # 80003850 <mycpu>
    800051a8:	100027f3          	csrr	a5,sstatus
    800051ac:	0027f793          	andi	a5,a5,2
    800051b0:	04079663          	bnez	a5,800051fc <pop_off+0x6c>
    800051b4:	07852783          	lw	a5,120(a0)
    800051b8:	02f05a63          	blez	a5,800051ec <pop_off+0x5c>
    800051bc:	fff7871b          	addiw	a4,a5,-1
    800051c0:	06e52c23          	sw	a4,120(a0)
    800051c4:	00071c63          	bnez	a4,800051dc <pop_off+0x4c>
    800051c8:	07c52783          	lw	a5,124(a0)
    800051cc:	00078863          	beqz	a5,800051dc <pop_off+0x4c>
    800051d0:	100027f3          	csrr	a5,sstatus
    800051d4:	0027e793          	ori	a5,a5,2
    800051d8:	10079073          	csrw	sstatus,a5
    800051dc:	00813083          	ld	ra,8(sp)
    800051e0:	00013403          	ld	s0,0(sp)
    800051e4:	01010113          	addi	sp,sp,16
    800051e8:	00008067          	ret
    800051ec:	00001517          	auipc	a0,0x1
    800051f0:	23450513          	addi	a0,a0,564 # 80006420 <digits+0x48>
    800051f4:	fffff097          	auipc	ra,0xfffff
    800051f8:	018080e7          	jalr	24(ra) # 8000420c <panic>
    800051fc:	00001517          	auipc	a0,0x1
    80005200:	20c50513          	addi	a0,a0,524 # 80006408 <digits+0x30>
    80005204:	fffff097          	auipc	ra,0xfffff
    80005208:	008080e7          	jalr	8(ra) # 8000420c <panic>

000000008000520c <push_on>:
    8000520c:	fe010113          	addi	sp,sp,-32
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00113c23          	sd	ra,24(sp)
    80005218:	00913423          	sd	s1,8(sp)
    8000521c:	02010413          	addi	s0,sp,32
    80005220:	100024f3          	csrr	s1,sstatus
    80005224:	100027f3          	csrr	a5,sstatus
    80005228:	0027e793          	ori	a5,a5,2
    8000522c:	10079073          	csrw	sstatus,a5
    80005230:	ffffe097          	auipc	ra,0xffffe
    80005234:	620080e7          	jalr	1568(ra) # 80003850 <mycpu>
    80005238:	07852783          	lw	a5,120(a0)
    8000523c:	02078663          	beqz	a5,80005268 <push_on+0x5c>
    80005240:	ffffe097          	auipc	ra,0xffffe
    80005244:	610080e7          	jalr	1552(ra) # 80003850 <mycpu>
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
    80005270:	5e4080e7          	jalr	1508(ra) # 80003850 <mycpu>
    80005274:	0014f493          	andi	s1,s1,1
    80005278:	06952e23          	sw	s1,124(a0)
    8000527c:	fc5ff06f          	j	80005240 <push_on+0x34>

0000000080005280 <pop_on>:
    80005280:	ff010113          	addi	sp,sp,-16
    80005284:	00813023          	sd	s0,0(sp)
    80005288:	00113423          	sd	ra,8(sp)
    8000528c:	01010413          	addi	s0,sp,16
    80005290:	ffffe097          	auipc	ra,0xffffe
    80005294:	5c0080e7          	jalr	1472(ra) # 80003850 <mycpu>
    80005298:	100027f3          	csrr	a5,sstatus
    8000529c:	0027f793          	andi	a5,a5,2
    800052a0:	04078463          	beqz	a5,800052e8 <pop_on+0x68>
    800052a4:	07852783          	lw	a5,120(a0)
    800052a8:	02f05863          	blez	a5,800052d8 <pop_on+0x58>
    800052ac:	fff7879b          	addiw	a5,a5,-1
    800052b0:	06f52c23          	sw	a5,120(a0)
    800052b4:	07853783          	ld	a5,120(a0)
    800052b8:	00079863          	bnez	a5,800052c8 <pop_on+0x48>
    800052bc:	100027f3          	csrr	a5,sstatus
    800052c0:	ffd7f793          	andi	a5,a5,-3
    800052c4:	10079073          	csrw	sstatus,a5
    800052c8:	00813083          	ld	ra,8(sp)
    800052cc:	00013403          	ld	s0,0(sp)
    800052d0:	01010113          	addi	sp,sp,16
    800052d4:	00008067          	ret
    800052d8:	00001517          	auipc	a0,0x1
    800052dc:	17050513          	addi	a0,a0,368 # 80006448 <digits+0x70>
    800052e0:	fffff097          	auipc	ra,0xfffff
    800052e4:	f2c080e7          	jalr	-212(ra) # 8000420c <panic>
    800052e8:	00001517          	auipc	a0,0x1
    800052ec:	14050513          	addi	a0,a0,320 # 80006428 <digits+0x50>
    800052f0:	fffff097          	auipc	ra,0xfffff
    800052f4:	f1c080e7          	jalr	-228(ra) # 8000420c <panic>

00000000800052f8 <__memset>:
    800052f8:	ff010113          	addi	sp,sp,-16
    800052fc:	00813423          	sd	s0,8(sp)
    80005300:	01010413          	addi	s0,sp,16
    80005304:	1a060e63          	beqz	a2,800054c0 <__memset+0x1c8>
    80005308:	40a007b3          	neg	a5,a0
    8000530c:	0077f793          	andi	a5,a5,7
    80005310:	00778693          	addi	a3,a5,7
    80005314:	00b00813          	li	a6,11
    80005318:	0ff5f593          	andi	a1,a1,255
    8000531c:	fff6071b          	addiw	a4,a2,-1
    80005320:	1b06e663          	bltu	a3,a6,800054cc <__memset+0x1d4>
    80005324:	1cd76463          	bltu	a4,a3,800054ec <__memset+0x1f4>
    80005328:	1a078e63          	beqz	a5,800054e4 <__memset+0x1ec>
    8000532c:	00b50023          	sb	a1,0(a0)
    80005330:	00100713          	li	a4,1
    80005334:	1ae78463          	beq	a5,a4,800054dc <__memset+0x1e4>
    80005338:	00b500a3          	sb	a1,1(a0)
    8000533c:	00200713          	li	a4,2
    80005340:	1ae78a63          	beq	a5,a4,800054f4 <__memset+0x1fc>
    80005344:	00b50123          	sb	a1,2(a0)
    80005348:	00300713          	li	a4,3
    8000534c:	18e78463          	beq	a5,a4,800054d4 <__memset+0x1dc>
    80005350:	00b501a3          	sb	a1,3(a0)
    80005354:	00400713          	li	a4,4
    80005358:	1ae78263          	beq	a5,a4,800054fc <__memset+0x204>
    8000535c:	00b50223          	sb	a1,4(a0)
    80005360:	00500713          	li	a4,5
    80005364:	1ae78063          	beq	a5,a4,80005504 <__memset+0x20c>
    80005368:	00b502a3          	sb	a1,5(a0)
    8000536c:	00700713          	li	a4,7
    80005370:	18e79e63          	bne	a5,a4,8000550c <__memset+0x214>
    80005374:	00b50323          	sb	a1,6(a0)
    80005378:	00700e93          	li	t4,7
    8000537c:	00859713          	slli	a4,a1,0x8
    80005380:	00e5e733          	or	a4,a1,a4
    80005384:	01059e13          	slli	t3,a1,0x10
    80005388:	01c76e33          	or	t3,a4,t3
    8000538c:	01859313          	slli	t1,a1,0x18
    80005390:	006e6333          	or	t1,t3,t1
    80005394:	02059893          	slli	a7,a1,0x20
    80005398:	40f60e3b          	subw	t3,a2,a5
    8000539c:	011368b3          	or	a7,t1,a7
    800053a0:	02859813          	slli	a6,a1,0x28
    800053a4:	0108e833          	or	a6,a7,a6
    800053a8:	03059693          	slli	a3,a1,0x30
    800053ac:	003e589b          	srliw	a7,t3,0x3
    800053b0:	00d866b3          	or	a3,a6,a3
    800053b4:	03859713          	slli	a4,a1,0x38
    800053b8:	00389813          	slli	a6,a7,0x3
    800053bc:	00f507b3          	add	a5,a0,a5
    800053c0:	00e6e733          	or	a4,a3,a4
    800053c4:	000e089b          	sext.w	a7,t3
    800053c8:	00f806b3          	add	a3,a6,a5
    800053cc:	00e7b023          	sd	a4,0(a5)
    800053d0:	00878793          	addi	a5,a5,8
    800053d4:	fed79ce3          	bne	a5,a3,800053cc <__memset+0xd4>
    800053d8:	ff8e7793          	andi	a5,t3,-8
    800053dc:	0007871b          	sext.w	a4,a5
    800053e0:	01d787bb          	addw	a5,a5,t4
    800053e4:	0ce88e63          	beq	a7,a4,800054c0 <__memset+0x1c8>
    800053e8:	00f50733          	add	a4,a0,a5
    800053ec:	00b70023          	sb	a1,0(a4)
    800053f0:	0017871b          	addiw	a4,a5,1
    800053f4:	0cc77663          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    800053f8:	00e50733          	add	a4,a0,a4
    800053fc:	00b70023          	sb	a1,0(a4)
    80005400:	0027871b          	addiw	a4,a5,2
    80005404:	0ac77e63          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005408:	00e50733          	add	a4,a0,a4
    8000540c:	00b70023          	sb	a1,0(a4)
    80005410:	0037871b          	addiw	a4,a5,3
    80005414:	0ac77663          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005418:	00e50733          	add	a4,a0,a4
    8000541c:	00b70023          	sb	a1,0(a4)
    80005420:	0047871b          	addiw	a4,a5,4
    80005424:	08c77e63          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005428:	00e50733          	add	a4,a0,a4
    8000542c:	00b70023          	sb	a1,0(a4)
    80005430:	0057871b          	addiw	a4,a5,5
    80005434:	08c77663          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005438:	00e50733          	add	a4,a0,a4
    8000543c:	00b70023          	sb	a1,0(a4)
    80005440:	0067871b          	addiw	a4,a5,6
    80005444:	06c77e63          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005448:	00e50733          	add	a4,a0,a4
    8000544c:	00b70023          	sb	a1,0(a4)
    80005450:	0077871b          	addiw	a4,a5,7
    80005454:	06c77663          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005458:	00e50733          	add	a4,a0,a4
    8000545c:	00b70023          	sb	a1,0(a4)
    80005460:	0087871b          	addiw	a4,a5,8
    80005464:	04c77e63          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005468:	00e50733          	add	a4,a0,a4
    8000546c:	00b70023          	sb	a1,0(a4)
    80005470:	0097871b          	addiw	a4,a5,9
    80005474:	04c77663          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005478:	00e50733          	add	a4,a0,a4
    8000547c:	00b70023          	sb	a1,0(a4)
    80005480:	00a7871b          	addiw	a4,a5,10
    80005484:	02c77e63          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005488:	00e50733          	add	a4,a0,a4
    8000548c:	00b70023          	sb	a1,0(a4)
    80005490:	00b7871b          	addiw	a4,a5,11
    80005494:	02c77663          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    80005498:	00e50733          	add	a4,a0,a4
    8000549c:	00b70023          	sb	a1,0(a4)
    800054a0:	00c7871b          	addiw	a4,a5,12
    800054a4:	00c77e63          	bgeu	a4,a2,800054c0 <__memset+0x1c8>
    800054a8:	00e50733          	add	a4,a0,a4
    800054ac:	00b70023          	sb	a1,0(a4)
    800054b0:	00d7879b          	addiw	a5,a5,13
    800054b4:	00c7f663          	bgeu	a5,a2,800054c0 <__memset+0x1c8>
    800054b8:	00f507b3          	add	a5,a0,a5
    800054bc:	00b78023          	sb	a1,0(a5)
    800054c0:	00813403          	ld	s0,8(sp)
    800054c4:	01010113          	addi	sp,sp,16
    800054c8:	00008067          	ret
    800054cc:	00b00693          	li	a3,11
    800054d0:	e55ff06f          	j	80005324 <__memset+0x2c>
    800054d4:	00300e93          	li	t4,3
    800054d8:	ea5ff06f          	j	8000537c <__memset+0x84>
    800054dc:	00100e93          	li	t4,1
    800054e0:	e9dff06f          	j	8000537c <__memset+0x84>
    800054e4:	00000e93          	li	t4,0
    800054e8:	e95ff06f          	j	8000537c <__memset+0x84>
    800054ec:	00000793          	li	a5,0
    800054f0:	ef9ff06f          	j	800053e8 <__memset+0xf0>
    800054f4:	00200e93          	li	t4,2
    800054f8:	e85ff06f          	j	8000537c <__memset+0x84>
    800054fc:	00400e93          	li	t4,4
    80005500:	e7dff06f          	j	8000537c <__memset+0x84>
    80005504:	00500e93          	li	t4,5
    80005508:	e75ff06f          	j	8000537c <__memset+0x84>
    8000550c:	00600e93          	li	t4,6
    80005510:	e6dff06f          	j	8000537c <__memset+0x84>

0000000080005514 <__memmove>:
    80005514:	ff010113          	addi	sp,sp,-16
    80005518:	00813423          	sd	s0,8(sp)
    8000551c:	01010413          	addi	s0,sp,16
    80005520:	0e060863          	beqz	a2,80005610 <__memmove+0xfc>
    80005524:	fff6069b          	addiw	a3,a2,-1
    80005528:	0006881b          	sext.w	a6,a3
    8000552c:	0ea5e863          	bltu	a1,a0,8000561c <__memmove+0x108>
    80005530:	00758713          	addi	a4,a1,7
    80005534:	00a5e7b3          	or	a5,a1,a0
    80005538:	40a70733          	sub	a4,a4,a0
    8000553c:	0077f793          	andi	a5,a5,7
    80005540:	00f73713          	sltiu	a4,a4,15
    80005544:	00174713          	xori	a4,a4,1
    80005548:	0017b793          	seqz	a5,a5
    8000554c:	00e7f7b3          	and	a5,a5,a4
    80005550:	10078863          	beqz	a5,80005660 <__memmove+0x14c>
    80005554:	00900793          	li	a5,9
    80005558:	1107f463          	bgeu	a5,a6,80005660 <__memmove+0x14c>
    8000555c:	0036581b          	srliw	a6,a2,0x3
    80005560:	fff8081b          	addiw	a6,a6,-1
    80005564:	02081813          	slli	a6,a6,0x20
    80005568:	01d85893          	srli	a7,a6,0x1d
    8000556c:	00858813          	addi	a6,a1,8
    80005570:	00058793          	mv	a5,a1
    80005574:	00050713          	mv	a4,a0
    80005578:	01088833          	add	a6,a7,a6
    8000557c:	0007b883          	ld	a7,0(a5)
    80005580:	00878793          	addi	a5,a5,8
    80005584:	00870713          	addi	a4,a4,8
    80005588:	ff173c23          	sd	a7,-8(a4)
    8000558c:	ff0798e3          	bne	a5,a6,8000557c <__memmove+0x68>
    80005590:	ff867713          	andi	a4,a2,-8
    80005594:	02071793          	slli	a5,a4,0x20
    80005598:	0207d793          	srli	a5,a5,0x20
    8000559c:	00f585b3          	add	a1,a1,a5
    800055a0:	40e686bb          	subw	a3,a3,a4
    800055a4:	00f507b3          	add	a5,a0,a5
    800055a8:	06e60463          	beq	a2,a4,80005610 <__memmove+0xfc>
    800055ac:	0005c703          	lbu	a4,0(a1)
    800055b0:	00e78023          	sb	a4,0(a5)
    800055b4:	04068e63          	beqz	a3,80005610 <__memmove+0xfc>
    800055b8:	0015c603          	lbu	a2,1(a1)
    800055bc:	00100713          	li	a4,1
    800055c0:	00c780a3          	sb	a2,1(a5)
    800055c4:	04e68663          	beq	a3,a4,80005610 <__memmove+0xfc>
    800055c8:	0025c603          	lbu	a2,2(a1)
    800055cc:	00200713          	li	a4,2
    800055d0:	00c78123          	sb	a2,2(a5)
    800055d4:	02e68e63          	beq	a3,a4,80005610 <__memmove+0xfc>
    800055d8:	0035c603          	lbu	a2,3(a1)
    800055dc:	00300713          	li	a4,3
    800055e0:	00c781a3          	sb	a2,3(a5)
    800055e4:	02e68663          	beq	a3,a4,80005610 <__memmove+0xfc>
    800055e8:	0045c603          	lbu	a2,4(a1)
    800055ec:	00400713          	li	a4,4
    800055f0:	00c78223          	sb	a2,4(a5)
    800055f4:	00e68e63          	beq	a3,a4,80005610 <__memmove+0xfc>
    800055f8:	0055c603          	lbu	a2,5(a1)
    800055fc:	00500713          	li	a4,5
    80005600:	00c782a3          	sb	a2,5(a5)
    80005604:	00e68663          	beq	a3,a4,80005610 <__memmove+0xfc>
    80005608:	0065c703          	lbu	a4,6(a1)
    8000560c:	00e78323          	sb	a4,6(a5)
    80005610:	00813403          	ld	s0,8(sp)
    80005614:	01010113          	addi	sp,sp,16
    80005618:	00008067          	ret
    8000561c:	02061713          	slli	a4,a2,0x20
    80005620:	02075713          	srli	a4,a4,0x20
    80005624:	00e587b3          	add	a5,a1,a4
    80005628:	f0f574e3          	bgeu	a0,a5,80005530 <__memmove+0x1c>
    8000562c:	02069613          	slli	a2,a3,0x20
    80005630:	02065613          	srli	a2,a2,0x20
    80005634:	fff64613          	not	a2,a2
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00c78633          	add	a2,a5,a2
    80005640:	fff7c683          	lbu	a3,-1(a5)
    80005644:	fff78793          	addi	a5,a5,-1
    80005648:	fff70713          	addi	a4,a4,-1
    8000564c:	00d70023          	sb	a3,0(a4)
    80005650:	fec798e3          	bne	a5,a2,80005640 <__memmove+0x12c>
    80005654:	00813403          	ld	s0,8(sp)
    80005658:	01010113          	addi	sp,sp,16
    8000565c:	00008067          	ret
    80005660:	02069713          	slli	a4,a3,0x20
    80005664:	02075713          	srli	a4,a4,0x20
    80005668:	00170713          	addi	a4,a4,1
    8000566c:	00e50733          	add	a4,a0,a4
    80005670:	00050793          	mv	a5,a0
    80005674:	0005c683          	lbu	a3,0(a1)
    80005678:	00178793          	addi	a5,a5,1
    8000567c:	00158593          	addi	a1,a1,1
    80005680:	fed78fa3          	sb	a3,-1(a5)
    80005684:	fee798e3          	bne	a5,a4,80005674 <__memmove+0x160>
    80005688:	f89ff06f          	j	80005610 <__memmove+0xfc>

000000008000568c <__putc>:
    8000568c:	fe010113          	addi	sp,sp,-32
    80005690:	00813823          	sd	s0,16(sp)
    80005694:	00113c23          	sd	ra,24(sp)
    80005698:	02010413          	addi	s0,sp,32
    8000569c:	00050793          	mv	a5,a0
    800056a0:	fef40593          	addi	a1,s0,-17
    800056a4:	00100613          	li	a2,1
    800056a8:	00000513          	li	a0,0
    800056ac:	fef407a3          	sb	a5,-17(s0)
    800056b0:	fffff097          	auipc	ra,0xfffff
    800056b4:	b3c080e7          	jalr	-1220(ra) # 800041ec <console_write>
    800056b8:	01813083          	ld	ra,24(sp)
    800056bc:	01013403          	ld	s0,16(sp)
    800056c0:	02010113          	addi	sp,sp,32
    800056c4:	00008067          	ret

00000000800056c8 <__getc>:
    800056c8:	fe010113          	addi	sp,sp,-32
    800056cc:	00813823          	sd	s0,16(sp)
    800056d0:	00113c23          	sd	ra,24(sp)
    800056d4:	02010413          	addi	s0,sp,32
    800056d8:	fe840593          	addi	a1,s0,-24
    800056dc:	00100613          	li	a2,1
    800056e0:	00000513          	li	a0,0
    800056e4:	fffff097          	auipc	ra,0xfffff
    800056e8:	ae8080e7          	jalr	-1304(ra) # 800041cc <console_read>
    800056ec:	fe844503          	lbu	a0,-24(s0)
    800056f0:	01813083          	ld	ra,24(sp)
    800056f4:	01013403          	ld	s0,16(sp)
    800056f8:	02010113          	addi	sp,sp,32
    800056fc:	00008067          	ret

0000000080005700 <console_handler>:
    80005700:	fe010113          	addi	sp,sp,-32
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00113c23          	sd	ra,24(sp)
    8000570c:	00913423          	sd	s1,8(sp)
    80005710:	02010413          	addi	s0,sp,32
    80005714:	14202773          	csrr	a4,scause
    80005718:	100027f3          	csrr	a5,sstatus
    8000571c:	0027f793          	andi	a5,a5,2
    80005720:	06079e63          	bnez	a5,8000579c <console_handler+0x9c>
    80005724:	00074c63          	bltz	a4,8000573c <console_handler+0x3c>
    80005728:	01813083          	ld	ra,24(sp)
    8000572c:	01013403          	ld	s0,16(sp)
    80005730:	00813483          	ld	s1,8(sp)
    80005734:	02010113          	addi	sp,sp,32
    80005738:	00008067          	ret
    8000573c:	0ff77713          	andi	a4,a4,255
    80005740:	00900793          	li	a5,9
    80005744:	fef712e3          	bne	a4,a5,80005728 <console_handler+0x28>
    80005748:	ffffe097          	auipc	ra,0xffffe
    8000574c:	6dc080e7          	jalr	1756(ra) # 80003e24 <plic_claim>
    80005750:	00a00793          	li	a5,10
    80005754:	00050493          	mv	s1,a0
    80005758:	02f50c63          	beq	a0,a5,80005790 <console_handler+0x90>
    8000575c:	fc0506e3          	beqz	a0,80005728 <console_handler+0x28>
    80005760:	00050593          	mv	a1,a0
    80005764:	00001517          	auipc	a0,0x1
    80005768:	bec50513          	addi	a0,a0,-1044 # 80006350 <_ZZ14__print_uint64mE6digits+0x218>
    8000576c:	fffff097          	auipc	ra,0xfffff
    80005770:	afc080e7          	jalr	-1284(ra) # 80004268 <__printf>
    80005774:	01013403          	ld	s0,16(sp)
    80005778:	01813083          	ld	ra,24(sp)
    8000577c:	00048513          	mv	a0,s1
    80005780:	00813483          	ld	s1,8(sp)
    80005784:	02010113          	addi	sp,sp,32
    80005788:	ffffe317          	auipc	t1,0xffffe
    8000578c:	6d430067          	jr	1748(t1) # 80003e5c <plic_complete>
    80005790:	fffff097          	auipc	ra,0xfffff
    80005794:	3e0080e7          	jalr	992(ra) # 80004b70 <uartintr>
    80005798:	fddff06f          	j	80005774 <console_handler+0x74>
    8000579c:	00001517          	auipc	a0,0x1
    800057a0:	cb450513          	addi	a0,a0,-844 # 80006450 <digits+0x78>
    800057a4:	fffff097          	auipc	ra,0xfffff
    800057a8:	a68080e7          	jalr	-1432(ra) # 8000420c <panic>
	...
