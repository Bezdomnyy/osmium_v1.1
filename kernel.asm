
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	5a013103          	ld	sp,1440(sp) # 800075a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	219030ef          	jal	ra,80003a34 <start>

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
    80001224:	0fc000ef          	jal	ra,80001320 <_ZN6Kernel21supervisorTrapHandlerEv>



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
volatile bool Kernel::finished = false;
volatile int Kernel::sysThread = 0;

extern void userMain();

void Kernel::initKernel() {
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00113423          	sd	ra,8(sp)
    800012ec:	00813023          	sd	s0,0(sp)
    800012f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMem();
    800012f4:	00001097          	auipc	ra,0x1
    800012f8:	2dc080e7          	jalr	732(ra) # 800025d0 <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    800012fc:	00006797          	auipc	a5,0x6
    80001300:	2ac7b783          	ld	a5,684(a5) # 800075a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    80001304:	10579073          	csrw	stvec,a5
    //sysThread = Sem::createSem(0);

    Uart::initUart();
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	4d4080e7          	jalr	1236(ra) # 800017dc <_ZN4Uart8initUartEv>
    //RiscV::setSstatus(RiscV::SIE);
}
    80001310:	00813083          	ld	ra,8(sp)
    80001314:	00013403          	ld	s0,0(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_ZN6Kernel21supervisorTrapHandlerEv>:

void Kernel::supervisorTrapHandler() {
    80001320:	f1010113          	addi	sp,sp,-240
    80001324:	0e113423          	sd	ra,232(sp)
    80001328:	0e813023          	sd	s0,224(sp)
    8000132c:	0c913c23          	sd	s1,216(sp)
    80001330:	0d213823          	sd	s2,208(sp)
    80001334:	0d313423          	sd	s3,200(sp)
    80001338:	0f010413          	addi	s0,sp,240
    asm volatile("csrr %[scause], scause": [scause] "=r" (scause));
    8000133c:	142027f3          	csrr	a5,scause
    80001340:	f0f43c23          	sd	a5,-232(s0)
    return scause;
    80001344:	f1843483          	ld	s1,-232(s0)
    uint64 scause = RiscV::readScause();

    if (scause == USER_SYSCALL || scause == SUPERVISOR_SYSCALL) {
    80001348:	ff848713          	addi	a4,s1,-8
    8000134c:	00100793          	li	a5,1
    80001350:	0ae7f863          	bgeu	a5,a4,80001400 <_ZN6Kernel21supervisorTrapHandlerEv+0xe0>
        RiscV::writeSstatus(sstatus);
        RiscV::writeSepc(sepc);
        RiscV::clearSip(RiscV::SSIP);
        return;
    }
    if (scause == TIMER_IRQ) {
    80001354:	fff00793          	li	a5,-1
    80001358:	03f79793          	slli	a5,a5,0x3f
    8000135c:	00178793          	addi	a5,a5,1
    80001360:	2ef48c63          	beq	s1,a5,80001658 <_ZN6Kernel21supervisorTrapHandlerEv+0x338>
            RiscV::writeSepc(sepc);
        }
        RiscV::clearSip(RiscV::SSIP);
        return;
    }
    if (scause == HARDWARE_IRQ) {
    80001364:	fff00793          	li	a5,-1
    80001368:	03f79793          	slli	a5,a5,0x3f
    8000136c:	00978793          	addi	a5,a5,9
    80001370:	36f48c63          	beq	s1,a5,800016e8 <_ZN6Kernel21supervisorTrapHandlerEv+0x3c8>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001374:	141027f3          	csrr	a5,sepc
    80001378:	f4f43023          	sd	a5,-192(s0)
    return sepc;
    8000137c:	f4043903          	ld	s2,-192(s0)
        RiscV::clearSip(RiscV::SEIP);
        return;
    }

    uint64 sepc = RiscV::readSepc();
    __print_string("Neobradjen izuzetak.\n");
    80001380:	00005517          	auipc	a0,0x5
    80001384:	cc050513          	addi	a0,a0,-832 # 80006040 <CONSOLE_STATUS+0x30>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	538080e7          	jalr	1336(ra) # 800028c0 <_Z14__print_stringPKc>
    __print_string("scause: ");
    80001390:	00005517          	auipc	a0,0x5
    80001394:	cc850513          	addi	a0,a0,-824 # 80006058 <CONSOLE_STATUS+0x48>
    80001398:	00001097          	auipc	ra,0x1
    8000139c:	528080e7          	jalr	1320(ra) # 800028c0 <_Z14__print_stringPKc>
    __print_uint64(scause);
    800013a0:	00048513          	mv	a0,s1
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	560080e7          	jalr	1376(ra) # 80002904 <_Z14__print_uint64m>
    Uart::txPut('\n');
    800013ac:	00a00513          	li	a0,10
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	6d0080e7          	jalr	1744(ra) # 80001a80 <_ZN4Uart5txPutEc>
    __print_string("sepc: ");
    800013b8:	00005517          	auipc	a0,0x5
    800013bc:	cb050513          	addi	a0,a0,-848 # 80006068 <CONSOLE_STATUS+0x58>
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	500080e7          	jalr	1280(ra) # 800028c0 <_Z14__print_stringPKc>
    __print_uint64(sepc);
    800013c8:	00090513          	mv	a0,s2
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	538080e7          	jalr	1336(ra) # 80002904 <_Z14__print_uint64m>
    Uart::txPut('\n');
    800013d4:	00a00513          	li	a0,10
    800013d8:	00000097          	auipc	ra,0x0
    800013dc:	6a8080e7          	jalr	1704(ra) # 80001a80 <_ZN4Uart5txPutEc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800013e0:	14191073          	csrw	sepc,s2
    //riscV::clearSip(RiscV::SSIP);
    RiscV::writeSepc(sepc);
    return;
}
    800013e4:	0e813083          	ld	ra,232(sp)
    800013e8:	0e013403          	ld	s0,224(sp)
    800013ec:	0d813483          	ld	s1,216(sp)
    800013f0:	0d013903          	ld	s2,208(sp)
    800013f4:	0c813983          	ld	s3,200(sp)
    800013f8:	0f010113          	addi	sp,sp,240
    800013fc:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001400:	141027f3          	csrr	a5,sepc
    80001404:	f2f43423          	sd	a5,-216(s0)
    return sepc;
    80001408:	f2843483          	ld	s1,-216(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    8000140c:	00448493          	addi	s1,s1,4
    asm volatile("csrc sstatus, %[mask]":: [mask] "r" (mask));
}

inline uint64 RiscV::readSstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    80001410:	100027f3          	csrr	a5,sstatus
    80001414:	f2f43023          	sd	a5,-224(s0)
    return sstatus;
    80001418:	f2043903          	ld	s2,-224(s0)
};

inline void Kernel::syscall_handler() {
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));
    8000141c:	00088793          	mv	a5,a7
    80001420:	f4f43423          	sd	a5,-184(s0)

    //volatile uint64 arg0, arg1, arg2, temp;
    switch(syscall_id) {
    80001424:	f4843783          	ld	a5,-184(s0)
    80001428:	04200713          	li	a4,66
    8000142c:	20f76a63          	bltu	a4,a5,80001640 <_ZN6Kernel21supervisorTrapHandlerEv+0x320>
    80001430:	00279793          	slli	a5,a5,0x2
    80001434:	00005717          	auipc	a4,0x5
    80001438:	c3c70713          	addi	a4,a4,-964 # 80006070 <CONSOLE_STATUS+0x60>
    8000143c:	00e787b3          	add	a5,a5,a4
    80001440:	0007a783          	lw	a5,0(a5)
    80001444:	00e787b3          	add	a5,a5,a4
    80001448:	00078067          	jr	a5
}

//0x01
inline void Kernel::mem_alloc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000144c:	00050793          	mv	a5,a0
    80001450:	f8f43023          	sd	a5,-128(s0)
    MemoryAllocator::allocate((size_t)arg0);
    80001454:	f8043503          	ld	a0,-128(s0)
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	318080e7          	jalr	792(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
        asm volatile ("sd a0, 80(s0)");
    80001460:	04a43823          	sd	a0,80(s0)
}

inline void RiscV::writeSstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001464:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001468:	14149073          	csrw	sepc,s1
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    8000146c:	00200793          	li	a5,2
    80001470:	1447b073          	csrc	sip,a5
        return;
    80001474:	f71ff06f          	j	800013e4 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
}

//0x02
inline void Kernel::mem_free_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001478:	00050793          	mv	a5,a0
    8000147c:	f6f43c23          	sd	a5,-136(s0)
    MemoryAllocator::free((void*)arg0);
    80001480:	f7843503          	ld	a0,-136(s0)
    80001484:	00001097          	auipc	ra,0x1
    80001488:	378080e7          	jalr	888(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
}
    8000148c:	fd5ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x11
inline void Kernel::thread_create_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001490:	00050793          	mv	a5,a0
    80001494:	f8f43423          	sd	a5,-120(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001498:	00058793          	mv	a5,a1
    8000149c:	f8f43823          	sd	a5,-112(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    800014a0:	00060793          	mv	a5,a2
    800014a4:	f8f43c23          	sd	a5,-104(s0)

    *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);
    800014a8:	f9043503          	ld	a0,-112(s0)
    800014ac:	f9843583          	ld	a1,-104(s0)
    800014b0:	f8843983          	ld	s3,-120(s0)
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	b04080e7          	jalr	-1276(ra) # 80001fb8 <_ZN3TCB9createTCBEPFvPvES0_>
    800014bc:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    800014c0:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    800014c4:	f8843783          	ld	a5,-120(s0)
    800014c8:	0007b783          	ld	a5,0(a5)
    800014cc:	f8079ae3          	bnez	a5,80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    800014d0:	fff50513          	addi	a0,a0,-1
}
    800014d4:	f8dff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x12
inline void Kernel::thread_exit_handler() {
    TCB::running->setFinished(true);
    800014d8:	00006797          	auipc	a5,0x6
    800014dc:	0d87b783          	ld	a5,216(a5) # 800075b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800014e0:	0007b783          	ld	a5,0(a5)

    static TCB* createSupervisorTCB(Body body, void* args);

    bool isFinished() const { bool ret = finished; return ret; }

    void setFinished(bool val) { finished = val; }
    800014e4:	00100713          	li	a4,1
    800014e8:	00e78c23          	sb	a4,24(a5)
    asm volatile ("addi a0, zero, 0");
    800014ec:	00000513          	li	a0,0
    //TCB::yield();
    TCB::dispatch();
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	c78080e7          	jalr	-904(ra) # 80002168 <_ZN3TCB8dispatchEv>
}
    800014f8:	f69ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	c6c080e7          	jalr	-916(ra) # 80002168 <_ZN3TCB8dispatchEv>
}
    80001504:	f5dff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x14
inline void Kernel::thread_create_deactivated_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001508:	00050793          	mv	a5,a0
    8000150c:	faf43023          	sd	a5,-96(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001510:	00058793          	mv	a5,a1
    80001514:	faf43423          	sd	a5,-88(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    80001518:	00060793          	mv	a5,a2
    8000151c:	faf43823          	sd	a5,-80(s0)

    *(TCB**)arg0 = TCB::createDeactivatedTCB((TCB::Body)arg1, (void*)arg2);
    80001520:	fa843503          	ld	a0,-88(s0)
    80001524:	fb043583          	ld	a1,-80(s0)
    80001528:	fa043983          	ld	s3,-96(s0)
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	b1c080e7          	jalr	-1252(ra) # 80002048 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
    80001534:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    80001538:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    8000153c:	fa043783          	ld	a5,-96(s0)
    80001540:	0007b783          	ld	a5,0(a5)
    80001544:	f0079ee3          	bnez	a5,80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    80001548:	fff50513          	addi	a0,a0,-1
}
    8000154c:	f15ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x021
inline void Kernel::sem_open_handler() {
    volatile uint64 arg0, arg1;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001550:	00050793          	mv	a5,a0
    80001554:	faf43c23          	sd	a5,-72(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001558:	00058793          	mv	a5,a1
    8000155c:	fcf43023          	sd	a5,-64(s0)

    *(Sem**)arg0 = Sem::createSem((unsigned)arg1);
    80001560:	fc043503          	ld	a0,-64(s0)
    80001564:	fb843983          	ld	s3,-72(s0)
    80001568:	0005051b          	sext.w	a0,a0
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	41c080e7          	jalr	1052(ra) # 80002988 <_ZN3Sem9createSemEj>
    80001574:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    80001578:	00000513          	li	a0,0
    if (!(*(Sem**)arg0)) asm volatile("addi a0, a0, -1");
    8000157c:	fb843783          	ld	a5,-72(s0)
    80001580:	0007b783          	ld	a5,0(a5)
    80001584:	ec079ee3          	bnez	a5,80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    80001588:	fff50513          	addi	a0,a0,-1
}
    8000158c:	ed5ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x22
inline void Kernel::sem_close_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001590:	00050793          	mv	a5,a0
    80001594:	fcf43423          	sd	a5,-56(s0)
    delete *(Sem**)arg0;
    80001598:	fc843783          	ld	a5,-56(s0)
    8000159c:	0007b983          	ld	s3,0(a5)
    800015a0:	00098e63          	beqz	s3,800015bc <_ZN6Kernel21supervisorTrapHandlerEv+0x29c>
    800015a4:	00098513          	mv	a0,s3
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	430080e7          	jalr	1072(ra) # 800029d8 <_ZN3SemD1Ev>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    800015b0:	00098513          	mv	a0,s3
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	248080e7          	jalr	584(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>

    asm volatile("mv a0, zero");
    800015bc:	00000513          	li	a0,0
}
    800015c0:	ea1ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x23
inline void Kernel::sem_wait_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800015c4:	00050793          	mv	a5,a0
    800015c8:	f6f43823          	sd	a5,-144(s0)
    ((Sem*)arg0)->semWait();
    800015cc:	f7043503          	ld	a0,-144(s0)
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	490080e7          	jalr	1168(ra) # 80002a60 <_ZN3Sem7semWaitEv>

    //asm volatile("mv a0, zero");
}
    800015d8:	e89ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x24
inline void Kernel::sem_signal_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800015dc:	00050793          	mv	a5,a0
    800015e0:	f6f43423          	sd	a5,-152(s0)
    ((Sem*)arg0)->semSignal();
    800015e4:	f6843503          	ld	a0,-152(s0)
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	514080e7          	jalr	1300(ra) # 80002afc <_ZN3Sem9semSignalEv>
}
    800015f0:	e71ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x31
inline void Kernel::time_sleep_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800015f4:	00050793          	mv	a5,a0
    800015f8:	f6f43023          	sd	a5,-160(s0)
    Scheduler::timeSleep((time_t)arg0);
    800015fc:	f6043503          	ld	a0,-160(s0)
    80001600:	00001097          	auipc	ra,0x1
    80001604:	758080e7          	jalr	1880(ra) # 80002d58 <_ZN9Scheduler9timeSleepEm>
}
    80001608:	e59ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
//0x41
inline void Kernel::getc_handler() {
    volatile uint64 arg0;
    //arg0 = __getc();
    //__print_string("getc");
    arg0 = Uart::rxGet();
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	288080e7          	jalr	648(ra) # 80001894 <_ZN4Uart5rxGetEv>
    80001614:	f4a43c23          	sd	a0,-168(s0)
    asm volatile ("mv a0, %[arg0]":: [arg0] "r"(arg0));
    80001618:	f5843783          	ld	a5,-168(s0)
    8000161c:	00078513          	mv	a0,a5
}
    80001620:	e41ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x42
inline void Kernel::putc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001624:	00050793          	mv	a5,a0
    80001628:	f4f43823          	sd	a5,-176(s0)
    //__putc(arg0);
    Uart::txPut(arg0);
    8000162c:	f5043503          	ld	a0,-176(s0)
    80001630:	0ff57513          	andi	a0,a0,255
    80001634:	00000097          	auipc	ra,0x0
    80001638:	44c080e7          	jalr	1100(ra) # 80001a80 <_ZN4Uart5txPutEc>
    //uart->tx
}
    8000163c:	e25ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
            asm volatile ("addi a0, zero, -1");
    80001640:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    80001644:	00005517          	auipc	a0,0x5
    80001648:	9dc50513          	addi	a0,a0,-1572 # 80006020 <CONSOLE_STATUS+0x10>
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	274080e7          	jalr	628(ra) # 800028c0 <_Z14__print_stringPKc>
            break;
    80001654:	e0dff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    80001658:	00006797          	auipc	a5,0x6
    8000165c:	f587b783          	ld	a5,-168(a5) # 800075b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001660:	0007b783          	ld	a5,0(a5)
    80001664:	04078063          	beqz	a5,800016a4 <_ZN6Kernel21supervisorTrapHandlerEv+0x384>
        Scheduler::timerInterrupt();
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	638080e7          	jalr	1592(ra) # 80002ca0 <_ZN9Scheduler14timerInterruptEv>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    80001670:	00006717          	auipc	a4,0x6
    80001674:	f2073703          	ld	a4,-224(a4) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001678:	00073783          	ld	a5,0(a4)
    8000167c:	00178793          	addi	a5,a5,1
    80001680:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    80001684:	00006717          	auipc	a4,0x6
    80001688:	f2c73703          	ld	a4,-212(a4) # 800075b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000168c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001690:	02073703          	ld	a4,32(a4)
    80001694:	00e7fe63          	bgeu	a5,a4,800016b0 <_ZN6Kernel21supervisorTrapHandlerEv+0x390>
    80001698:	00200793          	li	a5,2
    8000169c:	1447b073          	csrc	sip,a5
        return;
    800016a0:	d45ff06f          	j	800013e4 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
    800016a4:	00200793          	li	a5,2
    800016a8:	1447b073          	csrc	sip,a5
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    800016ac:	d39ff06f          	j	800013e4 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    800016b0:	141027f3          	csrr	a5,sepc
    800016b4:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    800016b8:	f3843483          	ld	s1,-200(s0)
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    800016bc:	100027f3          	csrr	a5,sstatus
    800016c0:	f2f43823          	sd	a5,-208(s0)
    return sstatus;
    800016c4:	f3043903          	ld	s2,-208(s0)
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }
    800016c8:	00006797          	auipc	a5,0x6
    800016cc:	ec87b783          	ld	a5,-312(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016d0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	a94080e7          	jalr	-1388(ra) # 80002168 <_ZN3TCB8dispatchEv>
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    800016dc:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800016e0:	14149073          	csrw	sepc,s1
}
    800016e4:	fb5ff06f          	j	80001698 <_ZN6Kernel21supervisorTrapHandlerEv+0x378>

//0x0a - hardware
inline void Kernel::uart_handler() {
    int id = plic_claim();
    800016e8:	00003097          	auipc	ra,0x3
    800016ec:	bac080e7          	jalr	-1108(ra) # 80004294 <plic_claim>
    800016f0:	00050493          	mv	s1,a0
    if (id == 0x0a) {
    800016f4:	00a00793          	li	a5,10
    800016f8:	00f50e63          	beq	a0,a5,80001714 <_ZN6Kernel21supervisorTrapHandlerEv+0x3f4>
        while (Uart::getStatus() & Uart::RX) {
            if(Uart::rxReceive() < 0) break;
        }
    }
    plic_complete(id);
    800016fc:	00048513          	mv	a0,s1
    80001700:	00003097          	auipc	ra,0x3
    80001704:	bcc080e7          	jalr	-1076(ra) # 800042cc <plic_complete>
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    80001708:	20000793          	li	a5,512
    8000170c:	1447b073          	csrc	sip,a5
        return;
    80001710:	cd5ff06f          	j	800013e4 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
        while (Uart::getStatus() & Uart::RX) {
    80001714:	00000097          	auipc	ra,0x0
    80001718:	158080e7          	jalr	344(ra) # 8000186c <_ZN4Uart9getStatusEv>
    8000171c:	00157793          	andi	a5,a0,1
    80001720:	fc078ee3          	beqz	a5,800016fc <_ZN6Kernel21supervisorTrapHandlerEv+0x3dc>
            if(Uart::rxReceive() < 0) break;
    80001724:	00000097          	auipc	ra,0x0
    80001728:	24c080e7          	jalr	588(ra) # 80001970 <_ZN4Uart9rxReceiveEv>
    8000172c:	fe9ff06f          	j	80001714 <_ZN6Kernel21supervisorTrapHandlerEv+0x3f4>

0000000080001730 <_ZN6Kernel12finishKernelEv>:

void Kernel::finishKernel() {
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00813423          	sd	s0,8(sp)
    80001738:	01010413          	addi	s0,sp,16
    finished = true;
    8000173c:	00100793          	li	a5,1
    80001740:	00006717          	auipc	a4,0x6
    80001744:	eef70023          	sb	a5,-288(a4) # 80007620 <_ZN6Kernel8finishedE>
    //Scheduler::finish();
    //Uart::finish();
}
    80001748:	00813403          	ld	s0,8(sp)
    8000174c:	01010113          	addi	sp,sp,16
    80001750:	00008067          	ret

0000000080001754 <_ZN6Kernel10isFinishedEv>:

bool Kernel::isFinished() {
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00813423          	sd	s0,8(sp)
    8000175c:	01010413          	addi	s0,sp,16
    return finished;
    80001760:	00006517          	auipc	a0,0x6
    80001764:	ec054503          	lbu	a0,-320(a0) # 80007620 <_ZN6Kernel8finishedE>
    80001768:	00813403          	ld	s0,8(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_Z41__static_initialization_and_destruction_0ii>:
    rx_request->semWait();
}

void Uart::rxSignal() {
    rx_request->semSignal();
}
    80001774:	ff010113          	addi	sp,sp,-16
    80001778:	00813423          	sd	s0,8(sp)
    8000177c:	01010413          	addi	s0,sp,16
    80001780:	00100793          	li	a5,1
    80001784:	00f50863          	beq	a0,a5,80001794 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001788:	00813403          	ld	s0,8(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret
    80001794:	000107b7          	lui	a5,0x10
    80001798:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000179c:	fef596e3          	bne	a1,a5,80001788 <_Z41__static_initialization_and_destruction_0ii+0x14>
volatile char* Uart::STATUS = (char*) CONSOLE_STATUS;
    800017a0:	00006797          	auipc	a5,0x6
    800017a4:	de07b783          	ld	a5,-544(a5) # 80007580 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017a8:	0007b703          	ld	a4,0(a5)
    800017ac:	00006797          	auipc	a5,0x6
    800017b0:	e7c78793          	addi	a5,a5,-388 # 80007628 <_ZN4Uart6STATUSE>
    800017b4:	00e7b023          	sd	a4,0(a5)
volatile char* Uart::RX_DATA = (char*) CONSOLE_RX_DATA;
    800017b8:	00006717          	auipc	a4,0x6
    800017bc:	dc073703          	ld	a4,-576(a4) # 80007578 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017c0:	00073703          	ld	a4,0(a4)
    800017c4:	00e7b423          	sd	a4,8(a5)
volatile char* Uart::TX_DATA = (char*) CONSOLE_TX_DATA;
    800017c8:	00006717          	auipc	a4,0x6
    800017cc:	dd073703          	ld	a4,-560(a4) # 80007598 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017d0:	00073703          	ld	a4,0(a4)
    800017d4:	00e7b823          	sd	a4,16(a5)
}
    800017d8:	fb1ff06f          	j	80001788 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800017dc <_ZN4Uart8initUartEv>:
void Uart::initUart() {
    800017dc:	fe010113          	addi	sp,sp,-32
    800017e0:	00113c23          	sd	ra,24(sp)
    800017e4:	00813823          	sd	s0,16(sp)
    800017e8:	00913423          	sd	s1,8(sp)
    800017ec:	02010413          	addi	s0,sp,32
    rx_not_empty = Sem::createSem(0);
    800017f0:	00000513          	li	a0,0
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	194080e7          	jalr	404(ra) # 80002988 <_ZN3Sem9createSemEj>
    800017fc:	00006497          	auipc	s1,0x6
    80001800:	e2c48493          	addi	s1,s1,-468 # 80007628 <_ZN4Uart6STATUSE>
    80001804:	00a4bc23          	sd	a0,24(s1)
    rx_not_full = Sem::createSem(BUFFER_SIZE);
    80001808:	40000513          	li	a0,1024
    8000180c:	00001097          	auipc	ra,0x1
    80001810:	17c080e7          	jalr	380(ra) # 80002988 <_ZN3Sem9createSemEj>
    80001814:	02a4b023          	sd	a0,32(s1)
    rx_request = Sem::createSem(0);
    80001818:	00000513          	li	a0,0
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	16c080e7          	jalr	364(ra) # 80002988 <_ZN3Sem9createSemEj>
    80001824:	02a4b423          	sd	a0,40(s1)
    tx_not_empty = Sem::createSem(0);
    80001828:	00000513          	li	a0,0
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	15c080e7          	jalr	348(ra) # 80002988 <_ZN3Sem9createSemEj>
    80001834:	02a4b823          	sd	a0,48(s1)
    tx_not_full = Sem::createSem(BUFFER_SIZE);
    80001838:	40000513          	li	a0,1024
    8000183c:	00001097          	auipc	ra,0x1
    80001840:	14c080e7          	jalr	332(ra) # 80002988 <_ZN3Sem9createSemEj>
    80001844:	02a4bc23          	sd	a0,56(s1)
    tx_request = Sem::createSem(0);
    80001848:	00000513          	li	a0,0
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	13c080e7          	jalr	316(ra) # 80002988 <_ZN3Sem9createSemEj>
    80001854:	04a4b023          	sd	a0,64(s1)
}
    80001858:	01813083          	ld	ra,24(sp)
    8000185c:	01013403          	ld	s0,16(sp)
    80001860:	00813483          	ld	s1,8(sp)
    80001864:	02010113          	addi	sp,sp,32
    80001868:	00008067          	ret

000000008000186c <_ZN4Uart9getStatusEv>:
uint8 Uart::getStatus() {
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00813423          	sd	s0,8(sp)
    80001874:	01010413          	addi	s0,sp,16
    uint8 ret = *((uint8*) CONSOLE_STATUS);
    80001878:	00006797          	auipc	a5,0x6
    8000187c:	d087b783          	ld	a5,-760(a5) # 80007580 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001880:	0007b783          	ld	a5,0(a5)
}
    80001884:	0007c503          	lbu	a0,0(a5)
    80001888:	00813403          	ld	s0,8(sp)
    8000188c:	01010113          	addi	sp,sp,16
    80001890:	00008067          	ret

0000000080001894 <_ZN4Uart5rxGetEv>:
char Uart::rxGet() {
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	02010413          	addi	s0,sp,32
    rx_not_empty->semWait();
    800018a8:	00006497          	auipc	s1,0x6
    800018ac:	d8048493          	addi	s1,s1,-640 # 80007628 <_ZN4Uart6STATUSE>
    800018b0:	0184b503          	ld	a0,24(s1)
    800018b4:	00001097          	auipc	ra,0x1
    800018b8:	1ac080e7          	jalr	428(ra) # 80002a60 <_ZN3Sem7semWaitEv>
    c = rx_buffer[rxFront];
    800018bc:	0484a783          	lw	a5,72(s1)
    800018c0:	00f48733          	add	a4,s1,a5
    rxFront = (rxFront + 1) & (BUFFER_SIZE - 1);
    800018c4:	0017879b          	addiw	a5,a5,1
    800018c8:	3ff7f793          	andi	a5,a5,1023
    800018cc:	04f4a423          	sw	a5,72(s1)
    rxSize--;
    800018d0:	4504a783          	lw	a5,1104(s1)
    800018d4:	fff7879b          	addiw	a5,a5,-1
    800018d8:	44f4a823          	sw	a5,1104(s1)
}
    800018dc:	05074503          	lbu	a0,80(a4)
    800018e0:	01813083          	ld	ra,24(sp)
    800018e4:	01013403          	ld	s0,16(sp)
    800018e8:	00813483          	ld	s1,8(sp)
    800018ec:	02010113          	addi	sp,sp,32
    800018f0:	00008067          	ret

00000000800018f4 <_ZN4Uart5rxPutEc>:
void Uart::rxPut(char c) {
    800018f4:	fe010113          	addi	sp,sp,-32
    800018f8:	00113c23          	sd	ra,24(sp)
    800018fc:	00813823          	sd	s0,16(sp)
    80001900:	00913423          	sd	s1,8(sp)
    80001904:	01213023          	sd	s2,0(sp)
    80001908:	02010413          	addi	s0,sp,32
    8000190c:	00050913          	mv	s2,a0
    rx_not_full->semWait(); // wait producer
    80001910:	00006497          	auipc	s1,0x6
    80001914:	d1848493          	addi	s1,s1,-744 # 80007628 <_ZN4Uart6STATUSE>
    80001918:	0204b503          	ld	a0,32(s1)
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	144080e7          	jalr	324(ra) # 80002a60 <_ZN3Sem7semWaitEv>
    rx_buffer[txRear] = c;
    80001924:	4544a783          	lw	a5,1108(s1)
    80001928:	00f487b3          	add	a5,s1,a5
    8000192c:	05278823          	sb	s2,80(a5)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    80001930:	4584a783          	lw	a5,1112(s1)
    80001934:	0017879b          	addiw	a5,a5,1
    80001938:	3ff7f793          	andi	a5,a5,1023
    8000193c:	44f4ac23          	sw	a5,1112(s1)
    rxSize++;
    80001940:	4504a783          	lw	a5,1104(s1)
    80001944:	0017879b          	addiw	a5,a5,1
    80001948:	44f4a823          	sw	a5,1104(s1)
    rx_not_empty->semSignal(); // signal consumer
    8000194c:	0184b503          	ld	a0,24(s1)
    80001950:	00001097          	auipc	ra,0x1
    80001954:	1ac080e7          	jalr	428(ra) # 80002afc <_ZN3Sem9semSignalEv>
}
    80001958:	01813083          	ld	ra,24(sp)
    8000195c:	01013403          	ld	s0,16(sp)
    80001960:	00813483          	ld	s1,8(sp)
    80001964:	00013903          	ld	s2,0(sp)
    80001968:	02010113          	addi	sp,sp,32
    8000196c:	00008067          	ret

0000000080001970 <_ZN4Uart9rxReceiveEv>:
    if (rxSize >= BUFFER_SIZE) return -1;
    80001970:	00006717          	auipc	a4,0x6
    80001974:	10872703          	lw	a4,264(a4) # 80007a78 <_ZN4Uart6rxSizeE>
    80001978:	3ff00793          	li	a5,1023
    8000197c:	06e7c663          	blt	a5,a4,800019e8 <_ZN4Uart9rxReceiveEv+0x78>
char Uart::rxReceive() {
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00113423          	sd	ra,8(sp)
    80001988:	00813023          	sd	s0,0(sp)
    8000198c:	01010413          	addi	s0,sp,16
    char c = *(char*) CONSOLE_RX_DATA;
    80001990:	00006797          	auipc	a5,0x6
    80001994:	be87b783          	ld	a5,-1048(a5) # 80007578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001998:	0007b783          	ld	a5,0(a5)
    8000199c:	0007c583          	lbu	a1,0(a5)
    rx_buffer[rxRear] = c;
    800019a0:	00006697          	auipc	a3,0x6
    800019a4:	c8868693          	addi	a3,a3,-888 # 80007628 <_ZN4Uart6STATUSE>
    800019a8:	4586a783          	lw	a5,1112(a3)
    800019ac:	00f68633          	add	a2,a3,a5
    800019b0:	04b60823          	sb	a1,80(a2)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    800019b4:	0017879b          	addiw	a5,a5,1
    800019b8:	3ff7f793          	andi	a5,a5,1023
    800019bc:	44f6ac23          	sw	a5,1112(a3)
    rxSize++;
    800019c0:	0017071b          	addiw	a4,a4,1
    800019c4:	44e6a823          	sw	a4,1104(a3)
    rx_not_empty->semSignal();
    800019c8:	0186b503          	ld	a0,24(a3)
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	130080e7          	jalr	304(ra) # 80002afc <_ZN3Sem9semSignalEv>
    return 0;
    800019d4:	00000513          	li	a0,0
}
    800019d8:	00813083          	ld	ra,8(sp)
    800019dc:	00013403          	ld	s0,0(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret
    if (rxSize >= BUFFER_SIZE) return -1;
    800019e8:	0ff00513          	li	a0,255
}
    800019ec:	00008067          	ret

00000000800019f0 <_ZN4Uart5txGetEv>:
char Uart::txGet() {
    800019f0:	fe010113          	addi	sp,sp,-32
    800019f4:	00113c23          	sd	ra,24(sp)
    800019f8:	00813823          	sd	s0,16(sp)
    800019fc:	00913423          	sd	s1,8(sp)
    80001a00:	02010413          	addi	s0,sp,32
    while(txSize == 0) {
    80001a04:	00006797          	auipc	a5,0x6
    80001a08:	0807a783          	lw	a5,128(a5) # 80007a84 <_ZN4Uart6txSizeE>
    80001a0c:	00079e63          	bnez	a5,80001a28 <_ZN4Uart5txGetEv+0x38>
        if (Kernel::isFinished()) return 0;
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	d44080e7          	jalr	-700(ra) # 80001754 <_ZN6Kernel10isFinishedEv>
    80001a18:	06051063          	bnez	a0,80001a78 <_ZN4Uart5txGetEv+0x88>
        thread_dispatch();
    80001a1c:	fffff097          	auipc	ra,0xfffff
    80001a20:	614080e7          	jalr	1556(ra) # 80001030 <thread_dispatch>
    while(txSize == 0) {
    80001a24:	fe1ff06f          	j	80001a04 <_ZN4Uart5txGetEv+0x14>
    c = tx_buffer[txFront];
    80001a28:	00006797          	auipc	a5,0x6
    80001a2c:	c0078793          	addi	a5,a5,-1024 # 80007628 <_ZN4Uart6STATUSE>
    80001a30:	4607a703          	lw	a4,1120(a5)
    80001a34:	00e786b3          	add	a3,a5,a4
    80001a38:	4686c483          	lbu	s1,1128(a3)
    txFront = (txFront + 1) & (BUFFER_SIZE - 1);
    80001a3c:	0017071b          	addiw	a4,a4,1
    80001a40:	3ff77713          	andi	a4,a4,1023
    80001a44:	46e7a023          	sw	a4,1120(a5)
    txSize--;
    80001a48:	45c7a703          	lw	a4,1116(a5)
    80001a4c:	fff7071b          	addiw	a4,a4,-1
    80001a50:	44e7ae23          	sw	a4,1116(a5)
    tx_not_full->semSignal(); // signal producer
    80001a54:	0387b503          	ld	a0,56(a5)
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	0a4080e7          	jalr	164(ra) # 80002afc <_ZN3Sem9semSignalEv>
}
    80001a60:	00048513          	mv	a0,s1
    80001a64:	01813083          	ld	ra,24(sp)
    80001a68:	01013403          	ld	s0,16(sp)
    80001a6c:	00813483          	ld	s1,8(sp)
    80001a70:	02010113          	addi	sp,sp,32
    80001a74:	00008067          	ret
        if (Kernel::isFinished()) return 0;
    80001a78:	00000493          	li	s1,0
    80001a7c:	fe5ff06f          	j	80001a60 <_ZN4Uart5txGetEv+0x70>

0000000080001a80 <_ZN4Uart5txPutEc>:
void Uart::txPut(char c) {
    80001a80:	fe010113          	addi	sp,sp,-32
    80001a84:	00113c23          	sd	ra,24(sp)
    80001a88:	00813823          	sd	s0,16(sp)
    80001a8c:	00913423          	sd	s1,8(sp)
    80001a90:	01213023          	sd	s2,0(sp)
    80001a94:	02010413          	addi	s0,sp,32
    80001a98:	00050913          	mv	s2,a0
    tx_not_full->semWait(); // wait producer
    80001a9c:	00006497          	auipc	s1,0x6
    80001aa0:	b8c48493          	addi	s1,s1,-1140 # 80007628 <_ZN4Uart6STATUSE>
    80001aa4:	0384b503          	ld	a0,56(s1)
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	fb8080e7          	jalr	-72(ra) # 80002a60 <_ZN3Sem7semWaitEv>
    tx_buffer[txRear] = c;
    80001ab0:	4544a783          	lw	a5,1108(s1)
    80001ab4:	00f48733          	add	a4,s1,a5
    80001ab8:	47270423          	sb	s2,1128(a4)
    txRear = (txRear + 1) & (BUFFER_SIZE - 1);
    80001abc:	0017879b          	addiw	a5,a5,1
    80001ac0:	3ff7f793          	andi	a5,a5,1023
    80001ac4:	44f4aa23          	sw	a5,1108(s1)
    txSize++;
    80001ac8:	45c4a783          	lw	a5,1116(s1)
    80001acc:	0017879b          	addiw	a5,a5,1
    80001ad0:	44f4ae23          	sw	a5,1116(s1)
    tx_not_empty->semSignal(); // signal consumer
    80001ad4:	0304b503          	ld	a0,48(s1)
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	024080e7          	jalr	36(ra) # 80002afc <_ZN3Sem9semSignalEv>
}
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	00013903          	ld	s2,0(sp)
    80001af0:	02010113          	addi	sp,sp,32
    80001af4:	00008067          	ret

0000000080001af8 <_ZN4Uart6txSendEc>:
void Uart::txSend(char c) {
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00813423          	sd	s0,8(sp)
    80001b00:	01010413          	addi	s0,sp,16
    *(char*)CONSOLE_TX_DATA = c;
    80001b04:	00006797          	auipc	a5,0x6
    80001b08:	a947b783          	ld	a5,-1388(a5) # 80007598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b0c:	0007b783          	ld	a5,0(a5)
    80001b10:	00a78023          	sb	a0,0(a5)
}
    80001b14:	00813403          	ld	s0,8(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN4Uart6txWaitEv>:
void Uart::txWait() {
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	00813023          	sd	s0,0(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    tx_request->semWait();
    80001b30:	00006517          	auipc	a0,0x6
    80001b34:	b3853503          	ld	a0,-1224(a0) # 80007668 <_ZN4Uart10tx_requestE>
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	f28080e7          	jalr	-216(ra) # 80002a60 <_ZN3Sem7semWaitEv>
}
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN4Uart8txSignalEv>:
void Uart::txSignal() {
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    tx_request->semSignal();
    80001b60:	00006517          	auipc	a0,0x6
    80001b64:	b0853503          	ld	a0,-1272(a0) # 80007668 <_ZN4Uart10tx_requestE>
    80001b68:	00001097          	auipc	ra,0x1
    80001b6c:	f94080e7          	jalr	-108(ra) # 80002afc <_ZN3Sem9semSignalEv>
}
    80001b70:	00813083          	ld	ra,8(sp)
    80001b74:	00013403          	ld	s0,0(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN4Uart6rxWaitEv>:
void Uart::rxWait() {
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00113423          	sd	ra,8(sp)
    80001b88:	00813023          	sd	s0,0(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    rx_request->semWait();
    80001b90:	00006517          	auipc	a0,0x6
    80001b94:	ac053503          	ld	a0,-1344(a0) # 80007650 <_ZN4Uart10rx_requestE>
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	ec8080e7          	jalr	-312(ra) # 80002a60 <_ZN3Sem7semWaitEv>
}
    80001ba0:	00813083          	ld	ra,8(sp)
    80001ba4:	00013403          	ld	s0,0(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN4Uart8rxSignalEv>:
void Uart::rxSignal() {
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00113423          	sd	ra,8(sp)
    80001bb8:	00813023          	sd	s0,0(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    rx_request->semSignal();
    80001bc0:	00006517          	auipc	a0,0x6
    80001bc4:	a9053503          	ld	a0,-1392(a0) # 80007650 <_ZN4Uart10rx_requestE>
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	f34080e7          	jalr	-204(ra) # 80002afc <_ZN3Sem9semSignalEv>
}
    80001bd0:	00813083          	ld	ra,8(sp)
    80001bd4:	00013403          	ld	s0,0(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_GLOBAL__sub_I__ZN4Uart9rx_bufferE>:
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00113423          	sd	ra,8(sp)
    80001be8:	00813023          	sd	s0,0(sp)
    80001bec:	01010413          	addi	s0,sp,16
    80001bf0:	000105b7          	lui	a1,0x10
    80001bf4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001bf8:	00100513          	li	a0,1
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	b78080e7          	jalr	-1160(ra) # 80001774 <_Z41__static_initialization_and_destruction_0ii>
    80001c04:	00813083          	ld	ra,8(sp)
    80001c08:	00013403          	ld	s0,0(sp)
    80001c0c:	01010113          	addi	sp,sp,16
    80001c10:	00008067          	ret

0000000080001c14 <_Z13uart_consumerv>:
#include "../h/uart_consumer.hpp"
#include "../h/uart.hpp"
#include "../h/kernel.hpp"
//#include "../h/tcb.hpp"

void uart_consumer() {
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00113423          	sd	ra,8(sp)
    80001c1c:	00813023          	sd	s0,0(sp)
    80001c20:	01010413          	addi	s0,sp,16
    while(!Kernel::isFinished()) {
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	b30080e7          	jalr	-1232(ra) # 80001754 <_ZN6Kernel10isFinishedEv>
    80001c2c:	02051663          	bnez	a0,80001c58 <_Z13uart_consumerv+0x44>
        while (Uart::getStatus() & Uart::TX) {
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	c3c080e7          	jalr	-964(ra) # 8000186c <_ZN4Uart9getStatusEv>
    80001c38:	02057513          	andi	a0,a0,32
    80001c3c:	fe0504e3          	beqz	a0,80001c24 <_Z13uart_consumerv+0x10>
            //__print_string("h");
            char c = Uart::txGet();
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	db0080e7          	jalr	-592(ra) # 800019f0 <_ZN4Uart5txGetEv>
            if (c == 0) break;
    80001c48:	fc050ee3          	beqz	a0,80001c24 <_Z13uart_consumerv+0x10>

            Uart::txSend(c);
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	eac080e7          	jalr	-340(ra) # 80001af8 <_ZN4Uart6txSendEc>
        while (Uart::getStatus() & Uart::TX) {
    80001c54:	fddff06f          	j	80001c30 <_Z13uart_consumerv+0x1c>
            //TCB::dispatch();
        }
    }
}
    80001c58:	00813083          	ld	ra,8(sp)
    80001c5c:	00013403          	ld	s0,0(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	388080e7          	jalr	904(ra) # 80001000 <mem_alloc>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_Znam>:

void* operator new[](size_t size) {
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00113423          	sd	ra,8(sp)
    80001c98:	00813023          	sd	s0,0(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ca0:	fffff097          	auipc	ra,0xfffff
    80001ca4:	360080e7          	jalr	864(ra) # 80001000 <mem_alloc>
}
    80001ca8:	00813083          	ld	ra,8(sp)
    80001cac:	00013403          	ld	s0,0(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZdlPv>:

void operator delete(void* ptr) {
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00113423          	sd	ra,8(sp)
    80001cc0:	00813023          	sd	s0,0(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001cc8:	fffff097          	auipc	ra,0xfffff
    80001ccc:	344080e7          	jalr	836(ra) # 8000100c <mem_free>
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00113423          	sd	ra,8(sp)
    80001ce8:	00813023          	sd	s0,0(sp)
    80001cec:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001cf0:	fffff097          	auipc	ra,0xfffff
    80001cf4:	31c080e7          	jalr	796(ra) # 8000100c <mem_free>
}
    80001cf8:	00813083          	ld	ra,8(sp)
    80001cfc:	00013403          	ld	s0,0(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_Z10backgroundv>:
#include "../h/kernel.hpp"
#include "../h/uart_consumer.hpp"

void userMain();

void background() {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    while(!Kernel::isFinished()) {
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	a3c080e7          	jalr	-1476(ra) # 80001754 <_ZN6Kernel10isFinishedEv>
    80001d20:	00051863          	bnez	a0,80001d30 <_Z10backgroundv+0x28>
        thread_dispatch();
    80001d24:	fffff097          	auipc	ra,0xfffff
    80001d28:	30c080e7          	jalr	780(ra) # 80001030 <thread_dispatch>
    while(!Kernel::isFinished()) {
    80001d2c:	fedff06f          	j	80001d18 <_Z10backgroundv+0x10>
    }
}
    80001d30:	00813083          	ld	ra,8(sp)
    80001d34:	00013403          	ld	s0,0(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <main>:

void main() {
    80001d40:	fd010113          	addi	sp,sp,-48
    80001d44:	02113423          	sd	ra,40(sp)
    80001d48:	02813023          	sd	s0,32(sp)
    80001d4c:	00913c23          	sd	s1,24(sp)
    80001d50:	01213823          	sd	s2,16(sp)
    80001d54:	01313423          	sd	s3,8(sp)
    80001d58:	03010413          	addi	s0,sp,48
    Kernel::initKernel();
    80001d5c:	fffff097          	auipc	ra,0xfffff
    80001d60:	588080e7          	jalr	1416(ra) # 800012e4 <_ZN6Kernel10initKernelEv>

    TCB* mainTCB = TCB::createTCB(nullptr, nullptr);
    80001d64:	00000593          	li	a1,0
    80001d68:	00000513          	li	a0,0
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	24c080e7          	jalr	588(ra) # 80001fb8 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d74:	00050493          	mv	s1,a0
    TCB* userTCB = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    80001d78:	00000593          	li	a1,0
    80001d7c:	00005517          	auipc	a0,0x5
    80001d80:	7f453503          	ld	a0,2036(a0) # 80007570 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	234080e7          	jalr	564(ra) # 80001fb8 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d8c:	00050993          	mv	s3,a0
    TCB* backgroundTCB = TCB::createTCB((void(*)(void*))&background, nullptr);
    80001d90:	00000593          	li	a1,0
    80001d94:	00000517          	auipc	a0,0x0
    80001d98:	f7450513          	addi	a0,a0,-140 # 80001d08 <_Z10backgroundv>
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	21c080e7          	jalr	540(ra) # 80001fb8 <_ZN3TCB9createTCBEPFvPvES0_>
    80001da4:	00050913          	mv	s2,a0
    TCB::running = mainTCB;
    80001da8:	00006797          	auipc	a5,0x6
    80001dac:	8087b783          	ld	a5,-2040(a5) # 800075b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001db0:	0097b023          	sd	s1,0(a5)

    TCB* uartTX_TCB = TCB::createTCB((void(*)(void*))&uart_consumer, nullptr);
    80001db4:	00000593          	li	a1,0
    80001db8:	00006517          	auipc	a0,0x6
    80001dbc:	80853503          	ld	a0,-2040(a0) # 800075c0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	1f8080e7          	jalr	504(ra) # 80001fb8 <_ZN3TCB9createTCBEPFvPvES0_>
    80001dc8:	00050493          	mv	s1,a0
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001dcc:	00200793          	li	a5,2
    80001dd0:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { bool ret = finished; return ret; }
    80001dd4:	0189c783          	lbu	a5,24(s3)

    /*while(!uartTX_TCB->isFinished()) {
        TCB::dispatch();
    }*/

    while(!userTCB->isFinished()) {
    80001dd8:	00079863          	bnez	a5,80001de8 <main+0xa8>
        thread_dispatch();
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	254080e7          	jalr	596(ra) # 80001030 <thread_dispatch>
    while(!userTCB->isFinished()) {
    80001de4:	ff1ff06f          	j	80001dd4 <main+0x94>
    }

    //delete userTCB;

    Kernel::finishKernel();
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	948080e7          	jalr	-1720(ra) # 80001730 <_ZN6Kernel12finishKernelEv>
    80001df0:	01894783          	lbu	a5,24(s2)

    while(!backgroundTCB->isFinished()) {
    80001df4:	00079863          	bnez	a5,80001e04 <main+0xc4>
        thread_dispatch();
    80001df8:	fffff097          	auipc	ra,0xfffff
    80001dfc:	238080e7          	jalr	568(ra) # 80001030 <thread_dispatch>
    while(!backgroundTCB->isFinished()) {
    80001e00:	ff1ff06f          	j	80001df0 <main+0xb0>
    80001e04:	0184c783          	lbu	a5,24(s1)
    }

    while(!uartTX_TCB->isFinished()) {
    80001e08:	00079863          	bnez	a5,80001e18 <main+0xd8>
        thread_dispatch();
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	224080e7          	jalr	548(ra) # 80001030 <thread_dispatch>
    while(!uartTX_TCB->isFinished()) {
    80001e14:	ff1ff06f          	j	80001e04 <main+0xc4>
    }

    delete userTCB;
    80001e18:	00098e63          	beqz	s3,80001e34 <main+0xf4>

    ~TCB() { MemoryAllocator::free(stack); }
    80001e1c:	0109b503          	ld	a0,16(s3)
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	9dc080e7          	jalr	-1572(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    80001e28:	00098513          	mv	a0,s3
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	9d0080e7          	jalr	-1584(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    delete backgroundTCB;
    80001e34:	00090e63          	beqz	s2,80001e50 <main+0x110>
    ~TCB() { MemoryAllocator::free(stack); }
    80001e38:	01093503          	ld	a0,16(s2)
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	9c0080e7          	jalr	-1600(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
        MemoryAllocator::free(ptr);
    80001e44:	00090513          	mv	a0,s2
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	9b4080e7          	jalr	-1612(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    delete uartTX_TCB;
    80001e50:	00048e63          	beqz	s1,80001e6c <main+0x12c>
    ~TCB() { MemoryAllocator::free(stack); }
    80001e54:	0104b503          	ld	a0,16(s1)
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	9a4080e7          	jalr	-1628(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
        MemoryAllocator::free(ptr);
    80001e60:	00048513          	mv	a0,s1
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	998080e7          	jalr	-1640(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>

    Scheduler::finish();
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	ffc080e7          	jalr	-4(ra) # 80002e68 <_ZN9Scheduler6finishEv>
    80001e74:	02813083          	ld	ra,40(sp)
    80001e78:	02013403          	ld	s0,32(sp)
    80001e7c:	01813483          	ld	s1,24(sp)
    80001e80:	01013903          	ld	s2,16(sp)
    80001e84:	00813983          	ld	s3,8(sp)
    80001e88:	03010113          	addi	sp,sp,48
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00113423          	sd	ra,8(sp)
    80001e98:	00813023          	sd	s0,0(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	a00080e7          	jalr	-1536(ra) # 800028a0 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001ea8:	00006797          	auipc	a5,0x6
    80001eac:	fe87b783          	ld	a5,-24(a5) # 80007e90 <_ZN3TCB7runningE>
    80001eb0:	0007b703          	ld	a4,0(a5)
    80001eb4:	0087b503          	ld	a0,8(a5)
    80001eb8:	000700e7          	jalr	a4
    //running->setFinished(true);
    thread_exit();
    80001ebc:	fffff097          	auipc	ra,0xfffff
    80001ec0:	168080e7          	jalr	360(ra) # 80001024 <thread_exit>
    //thread_dispatch();
}
    80001ec4:	00813083          	ld	ra,8(sp)
    80001ec8:	00013403          	ld	s0,0(sp)
    80001ecc:	01010113          	addi	sp,sp,16
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN3TCBC1EPFvPvES0_mbb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready, bool supervisor)
    80001ed4:	fc010113          	addi	sp,sp,-64
    80001ed8:	02113c23          	sd	ra,56(sp)
    80001edc:	02813823          	sd	s0,48(sp)
    80001ee0:	02913423          	sd	s1,40(sp)
    80001ee4:	03213023          	sd	s2,32(sp)
    80001ee8:	01313c23          	sd	s3,24(sp)
    80001eec:	01413823          	sd	s4,16(sp)
    80001ef0:	01513423          	sd	s5,8(sp)
    80001ef4:	04010413          	addi	s0,sp,64
    80001ef8:	00050493          	mv	s1,a0
    80001efc:	00058913          	mv	s2,a1
    80001f00:	00068993          	mv	s3,a3
    80001f04:	00070a13          	mv	s4,a4
    80001f08:	00078a93          	mv	s5,a5
        })
    80001f0c:	00b53023          	sd	a1,0(a0)
    80001f10:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001f14:	06058863          	beqz	a1,80001f84 <_ZN3TCBC1EPFvPvES0_mbb+0xb0>
    80001f18:	00008537          	lui	a0,0x8
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	854080e7          	jalr	-1964(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
        })
    80001f24:	00a4b823          	sd	a0,16(s1)
    80001f28:	00048c23          	sb	zero,24(s1)
    80001f2c:	00048ca3          	sb	zero,25(s1)
    80001f30:	0334b023          	sd	s3,32(s1)
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001f34:	06090263          	beqz	s2,80001f98 <_ZN3TCBC1EPFvPvES0_mbb+0xc4>
    80001f38:	040a8a63          	beqz	s5,80001f8c <_ZN3TCBC1EPFvPvES0_mbb+0xb8>
    80001f3c:	00000797          	auipc	a5,0x0
    80001f40:	29c78793          	addi	a5,a5,668 # 800021d8 <_ZN3TCB14sThreadWrapperEv>
        })
    80001f44:	02f4b423          	sd	a5,40(s1)
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f48:	04050c63          	beqz	a0,80001fa0 <_ZN3TCBC1EPFvPvES0_mbb+0xcc>
    80001f4c:	000087b7          	lui	a5,0x8
    80001f50:	00f50533          	add	a0,a0,a5
        })
    80001f54:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001f58:	00090463          	beqz	s2,80001f60 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>
    80001f5c:	040a1663          	bnez	s4,80001fa8 <_ZN3TCBC1EPFvPvES0_mbb+0xd4>
}
    80001f60:	03813083          	ld	ra,56(sp)
    80001f64:	03013403          	ld	s0,48(sp)
    80001f68:	02813483          	ld	s1,40(sp)
    80001f6c:	02013903          	ld	s2,32(sp)
    80001f70:	01813983          	ld	s3,24(sp)
    80001f74:	01013a03          	ld	s4,16(sp)
    80001f78:	00813a83          	ld	s5,8(sp)
    80001f7c:	04010113          	addi	sp,sp,64
    80001f80:	00008067          	ret
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001f84:	00000513          	li	a0,0
    80001f88:	f9dff06f          	j	80001f24 <_ZN3TCBC1EPFvPvES0_mbb+0x50>
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001f8c:	00000797          	auipc	a5,0x0
    80001f90:	f0478793          	addi	a5,a5,-252 # 80001e90 <_ZN3TCB13threadWrapperEv>
    80001f94:	fb1ff06f          	j	80001f44 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    80001f98:	00000793          	li	a5,0
    80001f9c:	fa9ff06f          	j	80001f44 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001fa0:	00000513          	li	a0,0
    80001fa4:	fb1ff06f          	j	80001f54 <_ZN3TCBC1EPFvPvES0_mbb+0x80>
    if (body != nullptr && ready) Scheduler::put(this);
    80001fa8:	00048513          	mv	a0,s1
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	c88080e7          	jalr	-888(ra) # 80002c34 <_ZN9Scheduler3putEP3TCB>
}
    80001fb4:	fadff06f          	j	80001f60 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>

0000000080001fb8 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001fb8:	fd010113          	addi	sp,sp,-48
    80001fbc:	02113423          	sd	ra,40(sp)
    80001fc0:	02813023          	sd	s0,32(sp)
    80001fc4:	00913c23          	sd	s1,24(sp)
    80001fc8:	01213823          	sd	s2,16(sp)
    80001fcc:	01313423          	sd	s3,8(sp)
    80001fd0:	03010413          	addi	s0,sp,48
    80001fd4:	00050913          	mv	s2,a0
    80001fd8:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    80001fdc:	03800513          	li	a0,56
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	790080e7          	jalr	1936(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
    80001fe8:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1, 0);
    80001fec:	00000793          	li	a5,0
    80001ff0:	00100713          	li	a4,1
    80001ff4:	00200693          	li	a3,2
    80001ff8:	00098613          	mv	a2,s3
    80001ffc:	00090593          	mv	a1,s2
    80002000:	00000097          	auipc	ra,0x0
    80002004:	ed4080e7          	jalr	-300(ra) # 80001ed4 <_ZN3TCBC1EPFvPvES0_mbb>
    80002008:	0200006f          	j	80002028 <_ZN3TCB9createTCBEPFvPvES0_+0x70>
    8000200c:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    80002010:	00048513          	mv	a0,s1
    80002014:	00000097          	auipc	ra,0x0
    80002018:	7e8080e7          	jalr	2024(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    8000201c:	00090513          	mv	a0,s2
    80002020:	00007097          	auipc	ra,0x7
    80002024:	f88080e7          	jalr	-120(ra) # 80008fa8 <_Unwind_Resume>
}
    80002028:	00048513          	mv	a0,s1
    8000202c:	02813083          	ld	ra,40(sp)
    80002030:	02013403          	ld	s0,32(sp)
    80002034:	01813483          	ld	s1,24(sp)
    80002038:	01013903          	ld	s2,16(sp)
    8000203c:	00813983          	ld	s3,8(sp)
    80002040:	03010113          	addi	sp,sp,48
    80002044:	00008067          	ret

0000000080002048 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    80002048:	fd010113          	addi	sp,sp,-48
    8000204c:	02113423          	sd	ra,40(sp)
    80002050:	02813023          	sd	s0,32(sp)
    80002054:	00913c23          	sd	s1,24(sp)
    80002058:	01213823          	sd	s2,16(sp)
    8000205c:	01313423          	sd	s3,8(sp)
    80002060:	03010413          	addi	s0,sp,48
    80002064:	00050913          	mv	s2,a0
    80002068:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    8000206c:	03800513          	li	a0,56
    80002070:	00000097          	auipc	ra,0x0
    80002074:	700080e7          	jalr	1792(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
    80002078:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0, 0);
    8000207c:	00000793          	li	a5,0
    80002080:	00000713          	li	a4,0
    80002084:	00200693          	li	a3,2
    80002088:	00098613          	mv	a2,s3
    8000208c:	00090593          	mv	a1,s2
    80002090:	00000097          	auipc	ra,0x0
    80002094:	e44080e7          	jalr	-444(ra) # 80001ed4 <_ZN3TCBC1EPFvPvES0_mbb>
    80002098:	0200006f          	j	800020b8 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x70>
    8000209c:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    800020a0:	00048513          	mv	a0,s1
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	758080e7          	jalr	1880(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    800020ac:	00090513          	mv	a0,s2
    800020b0:	00007097          	auipc	ra,0x7
    800020b4:	ef8080e7          	jalr	-264(ra) # 80008fa8 <_Unwind_Resume>
}
    800020b8:	00048513          	mv	a0,s1
    800020bc:	02813083          	ld	ra,40(sp)
    800020c0:	02013403          	ld	s0,32(sp)
    800020c4:	01813483          	ld	s1,24(sp)
    800020c8:	01013903          	ld	s2,16(sp)
    800020cc:	00813983          	ld	s3,8(sp)
    800020d0:	03010113          	addi	sp,sp,48
    800020d4:	00008067          	ret

00000000800020d8 <_ZN3TCB19createSupervisorTCBEPFvPvES0_>:
TCB *TCB::createSupervisorTCB(TCB::Body body, void *args) {
    800020d8:	fd010113          	addi	sp,sp,-48
    800020dc:	02113423          	sd	ra,40(sp)
    800020e0:	02813023          	sd	s0,32(sp)
    800020e4:	00913c23          	sd	s1,24(sp)
    800020e8:	01213823          	sd	s2,16(sp)
    800020ec:	01313423          	sd	s3,8(sp)
    800020f0:	03010413          	addi	s0,sp,48
    800020f4:	00050913          	mv	s2,a0
    800020f8:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    800020fc:	03800513          	li	a0,56
    80002100:	00000097          	auipc	ra,0x0
    80002104:	670080e7          	jalr	1648(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
    80002108:	00050493          	mv	s1,a0
    (body, args,DEFAULT_TIME_SLICE, true, true);
    8000210c:	00100793          	li	a5,1
    80002110:	00100713          	li	a4,1
    80002114:	00200693          	li	a3,2
    80002118:	00098613          	mv	a2,s3
    8000211c:	00090593          	mv	a1,s2
    80002120:	00000097          	auipc	ra,0x0
    80002124:	db4080e7          	jalr	-588(ra) # 80001ed4 <_ZN3TCBC1EPFvPvES0_mbb>
    80002128:	0200006f          	j	80002148 <_ZN3TCB19createSupervisorTCBEPFvPvES0_+0x70>
    8000212c:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    80002130:	00048513          	mv	a0,s1
    80002134:	00000097          	auipc	ra,0x0
    80002138:	6c8080e7          	jalr	1736(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    8000213c:	00090513          	mv	a0,s2
    80002140:	00007097          	auipc	ra,0x7
    80002144:	e68080e7          	jalr	-408(ra) # 80008fa8 <_Unwind_Resume>
}
    80002148:	00048513          	mv	a0,s1
    8000214c:	02813083          	ld	ra,40(sp)
    80002150:	02013403          	ld	s0,32(sp)
    80002154:	01813483          	ld	s1,24(sp)
    80002158:	01013903          	ld	s2,16(sp)
    8000215c:	00813983          	ld	s3,8(sp)
    80002160:	03010113          	addi	sp,sp,48
    80002164:	00008067          	ret

0000000080002168 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002168:	fe010113          	addi	sp,sp,-32
    8000216c:	00113c23          	sd	ra,24(sp)
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000217c:	00006497          	auipc	s1,0x6
    80002180:	d144b483          	ld	s1,-748(s1) # 80007e90 <_ZN3TCB7runningE>
    bool isFinished() const { bool ret = finished; return ret; }
    80002184:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002188:	00079663          	bnez	a5,80002194 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    8000218c:	0194c783          	lbu	a5,25(s1)
    80002190:	02078c63          	beqz	a5,800021c8 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002194:	00001097          	auipc	ra,0x1
    80002198:	a38080e7          	jalr	-1480(ra) # 80002bcc <_ZN9Scheduler3getEv>
    8000219c:	00006797          	auipc	a5,0x6
    800021a0:	cea7ba23          	sd	a0,-780(a5) # 80007e90 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800021a4:	02850593          	addi	a1,a0,40 # 8028 <_entry-0x7fff7fd8>
    800021a8:	02848513          	addi	a0,s1,40
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	104080e7          	jalr	260(ra) # 800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800021b4:	01813083          	ld	ra,24(sp)
    800021b8:	01013403          	ld	s0,16(sp)
    800021bc:	00813483          	ld	s1,8(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800021c8:	00048513          	mv	a0,s1
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	a68080e7          	jalr	-1432(ra) # 80002c34 <_ZN9Scheduler3putEP3TCB>
    800021d4:	fc1ff06f          	j	80002194 <_ZN3TCB8dispatchEv+0x2c>

00000000800021d8 <_ZN3TCB14sThreadWrapperEv>:

void TCB::sThreadWrapper() {
    800021d8:	fe010113          	addi	sp,sp,-32
    800021dc:	00113c23          	sd	ra,24(sp)
    800021e0:	00813823          	sd	s0,16(sp)
    800021e4:	00913423          	sd	s1,8(sp)
    800021e8:	02010413          	addi	s0,sp,32
    800021ec:	10000793          	li	a5,256
    800021f0:	1007a073          	csrs	sstatus,a5
    800021f4:	02000793          	li	a5,32
    800021f8:	1007a073          	csrs	sstatus,a5
    800021fc:	00200793          	li	a5,2
    80002200:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(0x0000000000000001UL << 8);
    RiscV::setSstatus(0x0000000000000001UL << 5);
    RiscV::setSstatus(RiscV::SIE);
    RiscV::popSppSpie();
    80002204:	00000097          	auipc	ra,0x0
    80002208:	69c080e7          	jalr	1692(ra) # 800028a0 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    8000220c:	00006497          	auipc	s1,0x6
    80002210:	c8448493          	addi	s1,s1,-892 # 80007e90 <_ZN3TCB7runningE>
    80002214:	0004b783          	ld	a5,0(s1)
    80002218:	0007b703          	ld	a4,0(a5)
    8000221c:	0087b503          	ld	a0,8(a5)
    80002220:	000700e7          	jalr	a4
    running->setFinished(true);
    80002224:	0004b783          	ld	a5,0(s1)
    void setFinished(bool val) { finished = val; }
    80002228:	00100713          	li	a4,1
    8000222c:	00e78c23          	sb	a4,24(a5)
    //thread_exit();
    //thread_dispatch();
    TCB::dispatch();
    80002230:	00000097          	auipc	ra,0x0
    80002234:	f38080e7          	jalr	-200(ra) # 80002168 <_ZN3TCB8dispatchEv>
}
    80002238:	01813083          	ld	ra,24(sp)
    8000223c:	01013403          	ld	s0,16(sp)
    80002240:	00813483          	ld	s1,8(sp)
    80002244:	02010113          	addi	sp,sp,32
    80002248:	00008067          	ret

000000008000224c <_Z16threadRunWrapperPv>:
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00113423          	sd	ra,8(sp)
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) thread;
    t->run();
    8000225c:	00053783          	ld	a5,0(a0)
    80002260:	0107b783          	ld	a5,16(a5)
    80002264:	000780e7          	jalr	a5
}
    80002268:	00813083          	ld	ra,8(sp)
    8000226c:	00013403          	ld	s0,0(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00813423          	sd	s0,8(sp)
    80002280:	01010413          	addi	s0,sp,16
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <_ZN6ThreadD0Ev>:
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	00813023          	sd	s0,0(sp)
    8000229c:	01010413          	addi	s0,sp,16
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	a18080e7          	jalr	-1512(ra) # 80001cb8 <_ZdlPv>
    800022a8:	00813083          	ld	ra,8(sp)
    800022ac:	00013403          	ld	s0,0(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret

00000000800022b8 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800022b8:	ff010113          	addi	sp,sp,-16
    800022bc:	00113423          	sd	ra,8(sp)
    800022c0:	00813023          	sd	s0,0(sp)
    800022c4:	01010413          	addi	s0,sp,16
    800022c8:	00005797          	auipc	a5,0x5
    800022cc:	27878793          	addi	a5,a5,632 # 80007540 <_ZTV9Semaphore+0x10>
    800022d0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800022d4:	00853503          	ld	a0,8(a0)
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	d7c080e7          	jalr	-644(ra) # 80001054 <sem_close>
}
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800022f0:	fe010113          	addi	sp,sp,-32
    800022f4:	00113c23          	sd	ra,24(sp)
    800022f8:	00813823          	sd	s0,16(sp)
    800022fc:	00913423          	sd	s1,8(sp)
    80002300:	02010413          	addi	s0,sp,32
    80002304:	00050493          	mv	s1,a0
}
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	fb0080e7          	jalr	-80(ra) # 800022b8 <_ZN9SemaphoreD1Ev>
    80002310:	00048513          	mv	a0,s1
    80002314:	00000097          	auipc	ra,0x0
    80002318:	9a4080e7          	jalr	-1628(ra) # 80001cb8 <_ZdlPv>
    8000231c:	01813083          	ld	ra,24(sp)
    80002320:	01013403          	ld	s0,16(sp)
    80002324:	00813483          	ld	s1,8(sp)
    80002328:	02010113          	addi	sp,sp,32
    8000232c:	00008067          	ret

0000000080002330 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    80002340:	00005797          	auipc	a5,0x5
    80002344:	1d878793          	addi	a5,a5,472 # 80007518 <_ZTV6Thread+0x10>
    80002348:	00f53023          	sd	a5,0(a0)
    thread_create_deactivated(&myHandle, body, arg);
    8000234c:	00850513          	addi	a0,a0,8
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	cec080e7          	jalr	-788(ra) # 8000103c <thread_create_deactivated>
}
    80002358:	00813083          	ld	ra,8(sp)
    8000235c:	00013403          	ld	s0,0(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN6Thread5startEv>:
int Thread::start() {
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00113423          	sd	ra,8(sp)
    80002370:	00813023          	sd	s0,0(sp)
    80002374:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,&threadRunWrapper, this);
    80002378:	00050613          	mv	a2,a0
    8000237c:	00000597          	auipc	a1,0x0
    80002380:	ed058593          	addi	a1,a1,-304 # 8000224c <_Z16threadRunWrapperPv>
    80002384:	00850513          	addi	a0,a0,8
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	c90080e7          	jalr	-880(ra) # 80001018 <thread_create>
}
    80002390:	00000513          	li	a0,0
    80002394:	00813083          	ld	ra,8(sp)
    80002398:	00013403          	ld	s0,0(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00113423          	sd	ra,8(sp)
    800023ac:	00813023          	sd	s0,0(sp)
    800023b0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	c7c080e7          	jalr	-900(ra) # 80001030 <thread_dispatch>
}
    800023bc:	00813083          	ld	ra,8(sp)
    800023c0:	00013403          	ld	s0,0(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00113423          	sd	ra,8(sp)
    800023d4:	00813023          	sd	s0,0(sp)
    800023d8:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	c9c080e7          	jalr	-868(ra) # 80001078 <time_sleep>
}
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN6ThreadC1Ev>:
Thread::Thread() {}
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00813423          	sd	s0,8(sp)
    800023fc:	01010413          	addi	s0,sp,16
    80002400:	00005797          	auipc	a5,0x5
    80002404:	11878793          	addi	a5,a5,280 # 80007518 <_ZTV6Thread+0x10>
    80002408:	00f53023          	sd	a5,0(a0)
    8000240c:	00813403          	ld	s0,8(sp)
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00113423          	sd	ra,8(sp)
    80002420:	00813023          	sd	s0,0(sp)
    80002424:	01010413          	addi	s0,sp,16
    80002428:	00005797          	auipc	a5,0x5
    8000242c:	11878793          	addi	a5,a5,280 # 80007540 <_ZTV9Semaphore+0x10>
    80002430:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002434:	00850513          	addi	a0,a0,8
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	c10080e7          	jalr	-1008(ra) # 80001048 <sem_open>
}
    80002440:	00813083          	ld	ra,8(sp)
    80002444:	00013403          	ld	s0,0(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00113423          	sd	ra,8(sp)
    80002458:	00813023          	sd	s0,0(sp)
    8000245c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002460:	00853503          	ld	a0,8(a0)
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	bfc080e7          	jalr	-1028(ra) # 80001060 <sem_wait>
}
    8000246c:	00813083          	ld	ra,8(sp)
    80002470:	00013403          	ld	s0,0(sp)
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret

000000008000247c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00113423          	sd	ra,8(sp)
    80002484:	00813023          	sd	s0,0(sp)
    80002488:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000248c:	00853503          	ld	a0,8(a0)
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	bdc080e7          	jalr	-1060(ra) # 8000106c <sem_signal>
}
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <_ZN14PeriodicThreadC1Em>:


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00113c23          	sd	ra,24(sp)
    800024b0:	00813823          	sd	s0,16(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	01213023          	sd	s2,0(sp)
    800024bc:	02010413          	addi	s0,sp,32
    800024c0:	00050493          	mv	s1,a0
    800024c4:	00058913          	mv	s2,a1
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	f2c080e7          	jalr	-212(ra) # 800023f4 <_ZN6ThreadC1Ev>
    800024d0:	00005797          	auipc	a5,0x5
    800024d4:	01878793          	addi	a5,a5,24 # 800074e8 <_ZTV14PeriodicThread+0x10>
    800024d8:	00f4b023          	sd	a5,0(s1)
    800024dc:	0324b423          	sd	s2,40(s1)
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	00013903          	ld	s2,0(sp)
    800024f0:	02010113          	addi	sp,sp,32
    800024f4:	00008067          	ret

00000000800024f8 <_ZN7Console4getcEv>:


//CONSOLE

char Console::getc() {
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00113423          	sd	ra,8(sp)
    80002500:	00813023          	sd	s0,0(sp)
    80002504:	01010413          	addi	s0,sp,16
    return ::getc();
    80002508:	fffff097          	auipc	ra,0xfffff
    8000250c:	b7c080e7          	jalr	-1156(ra) # 80001084 <getc>
}
    80002510:	00813083          	ld	ra,8(sp)
    80002514:	00013403          	ld	s0,0(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00113423          	sd	ra,8(sp)
    80002528:	00813023          	sd	s0,0(sp)
    8000252c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	b60080e7          	jalr	-1184(ra) # 80001090 <putc>
}
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00813423          	sd	s0,8(sp)
    80002550:	01010413          	addi	s0,sp,16
    80002554:	00813403          	ld	s0,8(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <_ZN14PeriodicThread18periodicActivationEv>:
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00813423          	sd	s0,8(sp)
    80002568:	01010413          	addi	s0,sp,16
    8000256c:	00813403          	ld	s0,8(sp)
    80002570:	01010113          	addi	sp,sp,16
    80002574:	00008067          	ret

0000000080002578 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00813423          	sd	s0,8(sp)
    80002580:	01010413          	addi	s0,sp,16
    80002584:	00005797          	auipc	a5,0x5
    80002588:	f6478793          	addi	a5,a5,-156 # 800074e8 <_ZTV14PeriodicThread+0x10>
    8000258c:	00f53023          	sd	a5,0(a0)
    80002590:	00813403          	ld	s0,8(sp)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret

000000008000259c <_ZN14PeriodicThreadD0Ev>:
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00113423          	sd	ra,8(sp)
    800025a4:	00813023          	sd	s0,0(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	00005797          	auipc	a5,0x5
    800025b0:	f3c78793          	addi	a5,a5,-196 # 800074e8 <_ZTV14PeriodicThread+0x10>
    800025b4:	00f53023          	sd	a5,0(a0)
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	700080e7          	jalr	1792(ra) # 80001cb8 <_ZdlPv>
    800025c0:	00813083          	ld	ra,8(sp)
    800025c4:	00013403          	ld	s0,0(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(curr);
    //printMem();
    return;
}

void MemoryAllocator::initMem()  {
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00813423          	sd	s0,8(sp)
    800025d8:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    800025dc:	00005797          	auipc	a5,0x5
    800025e0:	fac7b783          	ld	a5,-84(a5) # 80007588 <_GLOBAL_OFFSET_TABLE_+0x20>
    800025e4:	0007b783          	ld	a5,0(a5)
    800025e8:	00006697          	auipc	a3,0x6
    800025ec:	8b868693          	addi	a3,a3,-1864 # 80007ea0 <_ZN15MemoryAllocator8fMemHeadE>
    800025f0:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    800025f4:	00005717          	auipc	a4,0x5
    800025f8:	fc473703          	ld	a4,-60(a4) # 800075b8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800025fc:	00073703          	ld	a4,0(a4)
    80002600:	40f70733          	sub	a4,a4,a5
    80002604:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80002608:	0006b783          	ld	a5,0(a3)
    8000260c:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    80002610:	0007b823          	sd	zero,16(a5)
}
    80002614:	00813403          	ld	s0,8(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    8000262c:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    80002630:	00006517          	auipc	a0,0x6
    80002634:	87053503          	ld	a0,-1936(a0) # 80007ea0 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80002638:	02050063          	beqz	a0,80002658 <_ZN15MemoryAllocator8firstFitEm+0x38>
    8000263c:	01053703          	ld	a4,16(a0)
    80002640:	00070c63          	beqz	a4,80002658 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80002644:	00860793          	addi	a5,a2,8
    80002648:	00053683          	ld	a3,0(a0)
    8000264c:	00f6fe63          	bgeu	a3,a5,80002668 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    80002650:	00070513          	mv	a0,a4
    80002654:	fe5ff06f          	j	80002638 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80002658:	00050863          	beqz	a0,80002668 <_ZN15MemoryAllocator8firstFitEm+0x48>
    8000265c:	00860613          	addi	a2,a2,8
    80002660:	00053783          	ld	a5,0(a0)
    80002664:	00c7e863          	bltu	a5,a2,80002674 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret
    return nullptr;
    80002674:	00000513          	li	a0,0
    80002678:	ff1ff06f          	j	80002668 <_ZN15MemoryAllocator8firstFitEm+0x48>

000000008000267c <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00813423          	sd	s0,8(sp)
    80002684:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80002688:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    8000268c:	03f57793          	andi	a5,a0,63
    80002690:	00078863          	beqz	a5,800026a0 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80002694:	04000713          	li	a4,64
    80002698:	40f707b3          	sub	a5,a4,a5
    8000269c:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    800026ac:	fe010113          	addi	sp,sp,-32
    800026b0:	00113c23          	sd	ra,24(sp)
    800026b4:	00813823          	sd	s0,16(sp)
    800026b8:	00913423          	sd	s1,8(sp)
    800026bc:	02010413          	addi	s0,sp,32
    800026c0:	00050493          	mv	s1,a0
    if (node) {
    800026c4:	04050c63          	beqz	a0,8000271c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    800026c8:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	fb0080e7          	jalr	-80(ra) # 8000267c <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    800026d4:	0004b783          	ld	a5,0(s1)
    800026d8:	40a787b3          	sub	a5,a5,a0
    800026dc:	03f00713          	li	a4,63
    800026e0:	04f77e63          	bgeu	a4,a5,8000273c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    800026e4:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    800026e8:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    800026ec:	0084b783          	ld	a5,8(s1)
    800026f0:	04078063          	beqz	a5,80002730 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    800026f4:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    800026f8:	0104b783          	ld	a5,16(s1)
    800026fc:	00078463          	beqz	a5,80002704 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80002700:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80002704:	0104b783          	ld	a5,16(s1)
    80002708:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    8000270c:	0084b783          	ld	a5,8(s1)
    80002710:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80002714:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80002718:	00848513          	addi	a0,s1,8
}
    8000271c:	01813083          	ld	ra,24(sp)
    80002720:	01013403          	ld	s0,16(sp)
    80002724:	00813483          	ld	s1,8(sp)
    80002728:	02010113          	addi	sp,sp,32
    8000272c:	00008067          	ret
            else fMemHead = newNode;
    80002730:	00005797          	auipc	a5,0x5
    80002734:	76e7b823          	sd	a4,1904(a5) # 80007ea0 <_ZN15MemoryAllocator8fMemHeadE>
    80002738:	fc1ff06f          	j	800026f8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    8000273c:	0084b783          	ld	a5,8(s1)
    80002740:	02078063          	beqz	a5,80002760 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80002744:	0104b703          	ld	a4,16(s1)
    80002748:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    8000274c:	0104b783          	ld	a5,16(s1)
    80002750:	fc0782e3          	beqz	a5,80002714 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80002754:	0084b703          	ld	a4,8(s1)
    80002758:	00e7b423          	sd	a4,8(a5)
    8000275c:	fb9ff06f          	j	80002714 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    80002760:	0104b783          	ld	a5,16(s1)
    80002764:	00005717          	auipc	a4,0x5
    80002768:	72f73e23          	sd	a5,1852(a4) # 80007ea0 <_ZN15MemoryAllocator8fMemHeadE>
    8000276c:	fe1ff06f          	j	8000274c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080002770 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80002770:	fe010113          	addi	sp,sp,-32
    80002774:	00113c23          	sd	ra,24(sp)
    80002778:	00813823          	sd	s0,16(sp)
    8000277c:	00913423          	sd	s1,8(sp)
    80002780:	02010413          	addi	s0,sp,32
    80002784:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	e98080e7          	jalr	-360(ra) # 80002620 <_ZN15MemoryAllocator8firstFitEm>
    80002790:	00048593          	mv	a1,s1
    80002794:	00000097          	auipc	ra,0x0
    80002798:	f18080e7          	jalr	-232(ra) # 800026ac <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret

00000000800027b0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00813423          	sd	s0,8(sp)
    800027b8:	01010413          	addi	s0,sp,16
    if(!node) return;
    800027bc:	02050a63          	beqz	a0,800027f0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    800027c0:	01053783          	ld	a5,16(a0)
    800027c4:	02078663          	beqz	a5,800027f0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    800027c8:	00053703          	ld	a4,0(a0)
    800027cc:	00e506b3          	add	a3,a0,a4
    800027d0:	02f69063          	bne	a3,a5,800027f0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    800027d4:	0007b683          	ld	a3,0(a5)
    800027d8:	00d70733          	add	a4,a4,a3
    800027dc:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    800027e0:	0107b783          	ld	a5,16(a5)
    800027e4:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    800027e8:	00078463          	beqz	a5,800027f0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    800027ec:	00a7b423          	sd	a0,8(a5)
}
    800027f0:	00813403          	ld	s0,8(sp)
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00008067          	ret

00000000800027fc <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    800027fc:	fe010113          	addi	sp,sp,-32
    80002800:	00113c23          	sd	ra,24(sp)
    80002804:	00813823          	sd	s0,16(sp)
    80002808:	00913423          	sd	s1,8(sp)
    8000280c:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80002810:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    80002814:	00005717          	auipc	a4,0x5
    80002818:	68c73703          	ld	a4,1676(a4) # 80007ea0 <_ZN15MemoryAllocator8fMemHeadE>
    8000281c:	02070063          	beqz	a4,8000283c <_ZN15MemoryAllocator4freeEPv+0x40>
    80002820:	02a77263          	bgeu	a4,a0,80002844 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80002824:	00070793          	mv	a5,a4
    80002828:	00078493          	mv	s1,a5
    8000282c:	0107b783          	ld	a5,16(a5)
    80002830:	00078c63          	beqz	a5,80002848 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002834:	fea7eae3          	bltu	a5,a0,80002828 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80002838:	0100006f          	j	80002848 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    8000283c:	00070493          	mv	s1,a4
    80002840:	0080006f          	j	80002848 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002844:	00000493          	li	s1,0
    newNode->prev = curr;
    80002848:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    8000284c:	04048263          	beqz	s1,80002890 <_ZN15MemoryAllocator4freeEPv+0x94>
    80002850:	0104b783          	ld	a5,16(s1)
    80002854:	00f53823          	sd	a5,16(a0)
    80002858:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    8000285c:	01053783          	ld	a5,16(a0)
    80002860:	00078463          	beqz	a5,80002868 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80002864:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80002868:	00000097          	auipc	ra,0x0
    8000286c:	f48080e7          	jalr	-184(ra) # 800027b0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80002870:	00048513          	mv	a0,s1
    80002874:	00000097          	auipc	ra,0x0
    80002878:	f3c080e7          	jalr	-196(ra) # 800027b0 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    8000287c:	01813083          	ld	ra,24(sp)
    80002880:	01013403          	ld	s0,16(sp)
    80002884:	00813483          	ld	s1,8(sp)
    80002888:	02010113          	addi	sp,sp,32
    8000288c:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80002890:	00e53823          	sd	a4,16(a0)
    80002894:	00005797          	auipc	a5,0x5
    80002898:	60a7b623          	sd	a0,1548(a5) # 80007ea0 <_ZN15MemoryAllocator8fMemHeadE>
    8000289c:	fc1ff06f          	j	8000285c <_ZN15MemoryAllocator4freeEPv+0x60>

00000000800028a0 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    800028a0:	ff010113          	addi	sp,sp,-16
    800028a4:	00813423          	sd	s0,8(sp)
    800028a8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800028ac:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800028b0:	10200073          	sret
    800028b4:	00813403          	ld	s0,8(sp)
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00008067          	ret

00000000800028c0 <_Z14__print_stringPKc>:

#include "../lib/hw.h"
#include "../h/__print.hpp"
#include "../h/uart.hpp"

void __print_string(char const *string) {
    800028c0:	fe010113          	addi	sp,sp,-32
    800028c4:	00113c23          	sd	ra,24(sp)
    800028c8:	00813823          	sd	s0,16(sp)
    800028cc:	00913423          	sd	s1,8(sp)
    800028d0:	02010413          	addi	s0,sp,32
    800028d4:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) Uart::txPut(*c);
    800028d8:	0004c503          	lbu	a0,0(s1)
    800028dc:	00050a63          	beqz	a0,800028f0 <_Z14__print_stringPKc+0x30>
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	1a0080e7          	jalr	416(ra) # 80001a80 <_ZN4Uart5txPutEc>
    800028e8:	00148493          	addi	s1,s1,1
    800028ec:	fedff06f          	j	800028d8 <_Z14__print_stringPKc+0x18>
}
    800028f0:	01813083          	ld	ra,24(sp)
    800028f4:	01013403          	ld	s0,16(sp)
    800028f8:	00813483          	ld	s1,8(sp)
    800028fc:	02010113          	addi	sp,sp,32
    80002900:	00008067          	ret

0000000080002904 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80002904:	fc010113          	addi	sp,sp,-64
    80002908:	02113c23          	sd	ra,56(sp)
    8000290c:	02813823          	sd	s0,48(sp)
    80002910:	02913423          	sd	s1,40(sp)
    80002914:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80002918:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    8000291c:	00a00693          	li	a3,10
    80002920:	02d57633          	remu	a2,a0,a3
    80002924:	00004717          	auipc	a4,0x4
    80002928:	85c70713          	addi	a4,a4,-1956 # 80006180 <_ZZ14__print_uint64mE6digits>
    8000292c:	00c70733          	add	a4,a4,a2
    80002930:	00074703          	lbu	a4,0(a4)
    80002934:	fe040613          	addi	a2,s0,-32
    80002938:	009607b3          	add	a5,a2,s1
    8000293c:	0014849b          	addiw	s1,s1,1
    80002940:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80002944:	00050713          	mv	a4,a0
    80002948:	02d55533          	divu	a0,a0,a3
    8000294c:	00900793          	li	a5,9
    80002950:	fce7e6e3          	bltu	a5,a4,8000291c <_Z14__print_uint64m+0x18>
    while(--i >= 0) Uart::txPut(output[i]);
    80002954:	fff4849b          	addiw	s1,s1,-1
    80002958:	0004ce63          	bltz	s1,80002974 <_Z14__print_uint64m+0x70>
    8000295c:	fe040793          	addi	a5,s0,-32
    80002960:	009787b3          	add	a5,a5,s1
    80002964:	fe87c503          	lbu	a0,-24(a5)
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	118080e7          	jalr	280(ra) # 80001a80 <_ZN4Uart5txPutEc>
    80002970:	fe5ff06f          	j	80002954 <_Z14__print_uint64m+0x50>
}
    80002974:	03813083          	ld	ra,56(sp)
    80002978:	03013403          	ld	s0,48(sp)
    8000297c:	02813483          	ld	s1,40(sp)
    80002980:	04010113          	addi	sp,sp,64
    80002984:	00008067          	ret

0000000080002988 <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    80002988:	fe010113          	addi	sp,sp,-32
    8000298c:	00113c23          	sd	ra,24(sp)
    80002990:	00813823          	sd	s0,16(sp)
    80002994:	00913423          	sd	s1,8(sp)
    80002998:	02010413          	addi	s0,sp,32
    8000299c:	00050493          	mv	s1,a0
        return MemoryAllocator::allocate(size);
    800029a0:	02000513          	li	a0,32
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	dcc080e7          	jalr	-564(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
        }
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    800029ac:	00053023          	sd	zero,0(a0)
    800029b0:	00053423          	sd	zero,8(a0)
    void operator delete[](void* ptr) {
        MemoryAllocator::free(ptr);
    }

private:
    Sem(unsigned init) : init(init), val(init) {}
    800029b4:	00952823          	sw	s1,16(a0)
    800029b8:	02049493          	slli	s1,s1,0x20
    800029bc:	0204d493          	srli	s1,s1,0x20
    800029c0:	00953c23          	sd	s1,24(a0)
    return new Sem(init);
}
    800029c4:	01813083          	ld	ra,24(sp)
    800029c8:	01013403          	ld	s0,16(sp)
    800029cc:	00813483          	ld	s1,8(sp)
    800029d0:	02010113          	addi	sp,sp,32
    800029d4:	00008067          	ret

00000000800029d8 <_ZN3SemD1Ev>:

Sem::~Sem() {
    800029d8:	fe010113          	addi	sp,sp,-32
    800029dc:	00113c23          	sd	ra,24(sp)
    800029e0:	00813823          	sd	s0,16(sp)
    800029e4:	00913423          	sd	s1,8(sp)
    800029e8:	01213023          	sd	s2,0(sp)
    800029ec:	02010413          	addi	s0,sp,32
    800029f0:	00050493          	mv	s1,a0
    800029f4:	0280006f          	j	80002a1c <_ZN3SemD1Ev+0x44>
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
    800029f8:	0004b423          	sd	zero,8(s1)
            MemoryAllocator::free(ptr);
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	e00080e7          	jalr	-512(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    while (val < 0) {
        Scheduler::put(list.takeFirst());
    80002a04:	00090513          	mv	a0,s2
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	22c080e7          	jalr	556(ra) # 80002c34 <_ZN9Scheduler3putEP3TCB>
        val++;
    80002a10:	0184b783          	ld	a5,24(s1)
    80002a14:	00178793          	addi	a5,a5,1
    80002a18:	00f4bc23          	sd	a5,24(s1)
    while (val < 0) {
    80002a1c:	0184b783          	ld	a5,24(s1)
    80002a20:	0207d463          	bgez	a5,80002a48 <_ZN3SemD1Ev+0x70>
        if (!head) return 0;
    80002a24:	0004b503          	ld	a0,0(s1)
    80002a28:	00050c63          	beqz	a0,80002a40 <_ZN3SemD1Ev+0x68>
        T* ret = head->data;
    80002a2c:	00053903          	ld	s2,0(a0)
        head = head->next;
    80002a30:	00853783          	ld	a5,8(a0)
    80002a34:	00f4b023          	sd	a5,0(s1)
        if (!head) tail = 0;
    80002a38:	fc0792e3          	bnez	a5,800029fc <_ZN3SemD1Ev+0x24>
    80002a3c:	fbdff06f          	j	800029f8 <_ZN3SemD1Ev+0x20>
        if (!head) return 0;
    80002a40:	00050913          	mv	s2,a0
    80002a44:	fc1ff06f          	j	80002a04 <_ZN3SemD1Ev+0x2c>
    }
}
    80002a48:	01813083          	ld	ra,24(sp)
    80002a4c:	01013403          	ld	s0,16(sp)
    80002a50:	00813483          	ld	s1,8(sp)
    80002a54:	00013903          	ld	s2,0(sp)
    80002a58:	02010113          	addi	sp,sp,32
    80002a5c:	00008067          	ret

0000000080002a60 <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    if (--val < 0) {
    80002a60:	01853783          	ld	a5,24(a0)
    80002a64:	fff78793          	addi	a5,a5,-1
    80002a68:	00f53c23          	sd	a5,24(a0)
    80002a6c:	0007c663          	bltz	a5,80002a78 <_ZN3Sem7semWaitEv+0x18>
        old->setBlocked(true);
        list.putLast(old);
        TCB::dispatch();
    }
    return 0;
}
    80002a70:	00000513          	li	a0,0
    80002a74:	00008067          	ret
int Sem::semWait() {
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00113c23          	sd	ra,24(sp)
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	01213023          	sd	s2,0(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00050493          	mv	s1,a0
        TCB *old = TCB::running;
    80002a94:	00005797          	auipc	a5,0x5
    80002a98:	b1c7b783          	ld	a5,-1252(a5) # 800075b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a9c:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool val) { blocked = val; }
    80002aa0:	00100793          	li	a5,1
    80002aa4:	00f90ca3          	sb	a5,25(s2)
            return MemoryAllocator::allocate(size);
    80002aa8:	01000513          	li	a0,16
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	cc4080e7          	jalr	-828(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002ab4:	01253023          	sd	s2,0(a0)
    80002ab8:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002abc:	0084b783          	ld	a5,8(s1)
    80002ac0:	02078863          	beqz	a5,80002af0 <_ZN3Sem7semWaitEv+0x90>
            tail->next = newNode;
    80002ac4:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002ac8:	00a4b423          	sd	a0,8(s1)
        TCB::dispatch();
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	69c080e7          	jalr	1692(ra) # 80002168 <_ZN3TCB8dispatchEv>
}
    80002ad4:	00000513          	li	a0,0
    80002ad8:	01813083          	ld	ra,24(sp)
    80002adc:	01013403          	ld	s0,16(sp)
    80002ae0:	00813483          	ld	s1,8(sp)
    80002ae4:	00013903          	ld	s2,0(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002af0:	00a4b423          	sd	a0,8(s1)
    80002af4:	00a4b023          	sd	a0,0(s1)
    80002af8:	fd5ff06f          	j	80002acc <_ZN3Sem7semWaitEv+0x6c>

0000000080002afc <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    80002afc:	01853703          	ld	a4,24(a0)
    80002b00:	00170713          	addi	a4,a4,1
    80002b04:	00e53c23          	sd	a4,24(a0)
    80002b08:	00e05663          	blez	a4,80002b14 <_ZN3Sem9semSignalEv+0x18>
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
    80002b0c:	00000513          	li	a0,0
    80002b10:	00008067          	ret
int Sem::semSignal() {
    80002b14:	fe010113          	addi	sp,sp,-32
    80002b18:	00113c23          	sd	ra,24(sp)
    80002b1c:	00813823          	sd	s0,16(sp)
    80002b20:	00913423          	sd	s1,8(sp)
    80002b24:	02010413          	addi	s0,sp,32
    80002b28:	00050793          	mv	a5,a0
        if (!head) return 0;
    80002b2c:	00053503          	ld	a0,0(a0)
    80002b30:	04050663          	beqz	a0,80002b7c <_ZN3Sem9semSignalEv+0x80>
        T* ret = head->data;
    80002b34:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002b38:	00853703          	ld	a4,8(a0)
    80002b3c:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    80002b40:	02070a63          	beqz	a4,80002b74 <_ZN3Sem9semSignalEv+0x78>
            MemoryAllocator::free(ptr);
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	cb8080e7          	jalr	-840(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
    80002b4c:	00048ca3          	sb	zero,25(s1)
        Scheduler::put(ready);
    80002b50:	00048513          	mv	a0,s1
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	0e0080e7          	jalr	224(ra) # 80002c34 <_ZN9Scheduler3putEP3TCB>
    80002b5c:	00000513          	li	a0,0
    80002b60:	01813083          	ld	ra,24(sp)
    80002b64:	01013403          	ld	s0,16(sp)
    80002b68:	00813483          	ld	s1,8(sp)
    80002b6c:	02010113          	addi	sp,sp,32
    80002b70:	00008067          	ret
        if (!head) tail = 0;
    80002b74:	0007b423          	sd	zero,8(a5)
    80002b78:	fcdff06f          	j	80002b44 <_ZN3Sem9semSignalEv+0x48>
        if (!head) return 0;
    80002b7c:	00050493          	mv	s1,a0
    80002b80:	fcdff06f          	j	80002b4c <_ZN3Sem9semSignalEv+0x50>

0000000080002b84 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::finish() {
    sleepQueue.deleteList();
    readyQueue.deleteList();
}
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00813423          	sd	s0,8(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    80002b90:	00100793          	li	a5,1
    80002b94:	00f50863          	beq	a0,a5,80002ba4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002b98:	00813403          	ld	s0,8(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret
    80002ba4:	000107b7          	lui	a5,0x10
    80002ba8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002bac:	fef596e3          	bne	a1,a5,80002b98 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002bb0:	00005797          	auipc	a5,0x5
    80002bb4:	2f878793          	addi	a5,a5,760 # 80007ea8 <_ZN9Scheduler10readyQueueE>
    80002bb8:	0007b023          	sd	zero,0(a5)
    80002bbc:	0007b423          	sd	zero,8(a5)
    80002bc0:	0007b823          	sd	zero,16(a5)
    80002bc4:	0007bc23          	sd	zero,24(a5)
    80002bc8:	fd1ff06f          	j	80002b98 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002bcc <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002bcc:	fe010113          	addi	sp,sp,-32
    80002bd0:	00113c23          	sd	ra,24(sp)
    80002bd4:	00813823          	sd	s0,16(sp)
    80002bd8:	00913423          	sd	s1,8(sp)
    80002bdc:	02010413          	addi	s0,sp,32
        if (!head) return 0;
    80002be0:	00005517          	auipc	a0,0x5
    80002be4:	2c853503          	ld	a0,712(a0) # 80007ea8 <_ZN9Scheduler10readyQueueE>
    80002be8:	04050263          	beqz	a0,80002c2c <_ZN9Scheduler3getEv+0x60>
        T* ret = head->data;
    80002bec:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002bf0:	00853783          	ld	a5,8(a0)
    80002bf4:	00005717          	auipc	a4,0x5
    80002bf8:	2af73a23          	sd	a5,692(a4) # 80007ea8 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80002bfc:	02078263          	beqz	a5,80002c20 <_ZN9Scheduler3getEv+0x54>
            MemoryAllocator::free(ptr);
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	bfc080e7          	jalr	-1028(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
}
    80002c08:	00048513          	mv	a0,s1
    80002c0c:	01813083          	ld	ra,24(sp)
    80002c10:	01013403          	ld	s0,16(sp)
    80002c14:	00813483          	ld	s1,8(sp)
    80002c18:	02010113          	addi	sp,sp,32
    80002c1c:	00008067          	ret
        if (!head) tail = 0;
    80002c20:	00005797          	auipc	a5,0x5
    80002c24:	2807b823          	sd	zero,656(a5) # 80007eb0 <_ZN9Scheduler10readyQueueE+0x8>
    80002c28:	fd9ff06f          	j	80002c00 <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80002c2c:	00050493          	mv	s1,a0
    return ret;
    80002c30:	fd9ff06f          	j	80002c08 <_ZN9Scheduler3getEv+0x3c>

0000000080002c34 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002c34:	fe010113          	addi	sp,sp,-32
    80002c38:	00113c23          	sd	ra,24(sp)
    80002c3c:	00813823          	sd	s0,16(sp)
    80002c40:	00913423          	sd	s1,8(sp)
    80002c44:	02010413          	addi	s0,sp,32
    80002c48:	00050493          	mv	s1,a0
            return MemoryAllocator::allocate(size);
    80002c4c:	01000513          	li	a0,16
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	b20080e7          	jalr	-1248(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002c58:	00953023          	sd	s1,0(a0)
    80002c5c:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002c60:	00005797          	auipc	a5,0x5
    80002c64:	2507b783          	ld	a5,592(a5) # 80007eb0 <_ZN9Scheduler10readyQueueE+0x8>
    80002c68:	02078263          	beqz	a5,80002c8c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80002c6c:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002c70:	00005797          	auipc	a5,0x5
    80002c74:	24a7b023          	sd	a0,576(a5) # 80007eb0 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002c78:	01813083          	ld	ra,24(sp)
    80002c7c:	01013403          	ld	s0,16(sp)
    80002c80:	00813483          	ld	s1,8(sp)
    80002c84:	02010113          	addi	sp,sp,32
    80002c88:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002c8c:	00005797          	auipc	a5,0x5
    80002c90:	21c78793          	addi	a5,a5,540 # 80007ea8 <_ZN9Scheduler10readyQueueE>
    80002c94:	00a7b423          	sd	a0,8(a5)
    80002c98:	00a7b023          	sd	a0,0(a5)
    80002c9c:	fddff06f          	j	80002c78 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002ca0 <_ZN9Scheduler14timerInterruptEv>:
void Scheduler::timerInterrupt() {
    80002ca0:	fe010113          	addi	sp,sp,-32
    80002ca4:	00113c23          	sd	ra,24(sp)
    80002ca8:	00813823          	sd	s0,16(sp)
    80002cac:	00913423          	sd	s1,8(sp)
    80002cb0:	02010413          	addi	s0,sp,32

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002cb4:	00005497          	auipc	s1,0x5
    80002cb8:	2044b483          	ld	s1,516(s1) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
    80002cbc:	04048663          	beqz	s1,80002d08 <_ZN9Scheduler14timerInterruptEv+0x68>
        return head->data;
    80002cc0:	0004b483          	ld	s1,0(s1)
    80002cc4:	0440006f          	j	80002d08 <_ZN9Scheduler14timerInterruptEv+0x68>
        if (!head) tail = 0;
    80002cc8:	00005797          	auipc	a5,0x5
    80002ccc:	1e07bc23          	sd	zero,504(a5) # 80007ec0 <_ZN9Scheduler10sleepQueueE+0x8>
            MemoryAllocator::free(ptr);
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	b2c080e7          	jalr	-1236(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
        first->thread->setBlocked(false);
    80002cd8:	0084b783          	ld	a5,8(s1)
    80002cdc:	00078ca3          	sb	zero,25(a5)
        Scheduler::put(first->thread);
    80002ce0:	0084b503          	ld	a0,8(s1)
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	f50080e7          	jalr	-176(ra) # 80002c34 <_ZN9Scheduler3putEP3TCB>
        void* operator new[](size_t size) {
            return MemoryAllocator::allocate(size);
        }

        void operator delete(void* ptr) {
            MemoryAllocator::free(ptr);
    80002cec:	00048513          	mv	a0,s1
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	b0c080e7          	jalr	-1268(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
        if(!head) return 0;
    80002cf8:	00005497          	auipc	s1,0x5
    80002cfc:	1c04b483          	ld	s1,448(s1) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
    80002d00:	02048a63          	beqz	s1,80002d34 <_ZN9Scheduler14timerInterruptEv+0x94>
        return head->data;
    80002d04:	0004b483          	ld	s1,0(s1)
    while(first) {
    80002d08:	02048663          	beqz	s1,80002d34 <_ZN9Scheduler14timerInterruptEv+0x94>
        if (first->time != 0) break;
    80002d0c:	0004b783          	ld	a5,0(s1)
    80002d10:	02079263          	bnez	a5,80002d34 <_ZN9Scheduler14timerInterruptEv+0x94>
        if (!head) return 0;
    80002d14:	00005517          	auipc	a0,0x5
    80002d18:	1a453503          	ld	a0,420(a0) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
    80002d1c:	fa050ee3          	beqz	a0,80002cd8 <_ZN9Scheduler14timerInterruptEv+0x38>
        head = head->next;
    80002d20:	00853783          	ld	a5,8(a0)
    80002d24:	00005717          	auipc	a4,0x5
    80002d28:	18f73a23          	sd	a5,404(a4) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    80002d2c:	fa0792e3          	bnez	a5,80002cd0 <_ZN9Scheduler14timerInterruptEv+0x30>
    80002d30:	f99ff06f          	j	80002cc8 <_ZN9Scheduler14timerInterruptEv+0x28>
    if (!first) return;
    80002d34:	00048863          	beqz	s1,80002d44 <_ZN9Scheduler14timerInterruptEv+0xa4>
    first->time--;
    80002d38:	0004b783          	ld	a5,0(s1)
    80002d3c:	fff78793          	addi	a5,a5,-1
    80002d40:	00f4b023          	sd	a5,0(s1)
}
    80002d44:	01813083          	ld	ra,24(sp)
    80002d48:	01013403          	ld	s0,16(sp)
    80002d4c:	00813483          	ld	s1,8(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    80002d58:	fd010113          	addi	sp,sp,-48
    80002d5c:	02113423          	sd	ra,40(sp)
    80002d60:	02813023          	sd	s0,32(sp)
    80002d64:	00913c23          	sd	s1,24(sp)
    80002d68:	01213823          	sd	s2,16(sp)
    80002d6c:	01313423          	sd	s3,8(sp)
    80002d70:	03010413          	addi	s0,sp,48
    80002d74:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80002d78:	00005797          	auipc	a5,0x5
    80002d7c:	8387b783          	ld	a5,-1992(a5) # 800075b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d80:	0007b983          	ld	s3,0(a5)
    80002d84:	00100793          	li	a5,1
    80002d88:	00f98ca3          	sb	a5,25(s3)
            return MemoryAllocator::allocate(size);
    80002d8c:	01000513          	li	a0,16
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	9e0080e7          	jalr	-1568(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
    80002d98:	00050493          	mv	s1,a0
        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    80002d9c:	01253023          	sd	s2,0(a0)
    80002da0:	01353423          	sd	s3,8(a0)
            return MemoryAllocator::allocate(size);
    80002da4:	01000513          	li	a0,16
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	9c8080e7          	jalr	-1592(ra) # 80002770 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002db0:	00953023          	sd	s1,0(a0)
    80002db4:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    80002db8:	00005797          	auipc	a5,0x5
    80002dbc:	1007b783          	ld	a5,256(a5) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
    80002dc0:	02078a63          	beqz	a5,80002df4 <_ZN9Scheduler9timeSleepEm+0x9c>
        Node* curr = head, *prev = nullptr;
    80002dc4:	00000693          	li	a3,0
        while (curr) {
    80002dc8:	04078063          	beqz	a5,80002e08 <_ZN9Scheduler9timeSleepEm+0xb0>
            if (*(uint64*)(newNode->data) < *(uint64*)(curr->data)) {
    80002dcc:	00053603          	ld	a2,0(a0)
    80002dd0:	00063703          	ld	a4,0(a2)
    80002dd4:	0007b583          	ld	a1,0(a5)
    80002dd8:	0005b583          	ld	a1,0(a1)
    80002ddc:	02b76663          	bltu	a4,a1,80002e08 <_ZN9Scheduler9timeSleepEm+0xb0>
            *(uint64*)(newNode->data) -= *(uint64*)(curr->data);
    80002de0:	40b70733          	sub	a4,a4,a1
    80002de4:	00e63023          	sd	a4,0(a2)
            prev = curr;
    80002de8:	00078693          	mv	a3,a5
            curr = curr->next;
    80002dec:	0087b783          	ld	a5,8(a5)
        while (curr) {
    80002df0:	fd9ff06f          	j	80002dc8 <_ZN9Scheduler9timeSleepEm+0x70>
        if (!head) { head = tail = newNode; return; }
    80002df4:	00005797          	auipc	a5,0x5
    80002df8:	0b478793          	addi	a5,a5,180 # 80007ea8 <_ZN9Scheduler10readyQueueE>
    80002dfc:	00a7bc23          	sd	a0,24(a5)
    80002e00:	00a7b823          	sd	a0,16(a5)
    80002e04:	02c0006f          	j	80002e30 <_ZN9Scheduler9timeSleepEm+0xd8>
        if (prev) prev->next = newNode;
    80002e08:	04068663          	beqz	a3,80002e54 <_ZN9Scheduler9timeSleepEm+0xfc>
    80002e0c:	00a6b423          	sd	a0,8(a3)
        if (curr) {newNode->next = curr; *(uint64*)(curr->data) -= *(uint64*)(newNode->data);}
    80002e10:	04078863          	beqz	a5,80002e60 <_ZN9Scheduler9timeSleepEm+0x108>
    80002e14:	00f53423          	sd	a5,8(a0)
    80002e18:	0007b703          	ld	a4,0(a5)
    80002e1c:	00053683          	ld	a3,0(a0)
    80002e20:	00073783          	ld	a5,0(a4)
    80002e24:	0006b683          	ld	a3,0(a3)
    80002e28:	40d787b3          	sub	a5,a5,a3
    80002e2c:	00f73023          	sd	a5,0(a4)
    TCB::dispatch();
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	338080e7          	jalr	824(ra) # 80002168 <_ZN3TCB8dispatchEv>
}
    80002e38:	02813083          	ld	ra,40(sp)
    80002e3c:	02013403          	ld	s0,32(sp)
    80002e40:	01813483          	ld	s1,24(sp)
    80002e44:	01013903          	ld	s2,16(sp)
    80002e48:	00813983          	ld	s3,8(sp)
    80002e4c:	03010113          	addi	sp,sp,48
    80002e50:	00008067          	ret
        else head = newNode;
    80002e54:	00005717          	auipc	a4,0x5
    80002e58:	06a73223          	sd	a0,100(a4) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
    80002e5c:	fb5ff06f          	j	80002e10 <_ZN9Scheduler9timeSleepEm+0xb8>
        else prev->next = newNode;
    80002e60:	00a6b423          	sd	a0,8(a3)
    80002e64:	fcdff06f          	j	80002e30 <_ZN9Scheduler9timeSleepEm+0xd8>

0000000080002e68 <_ZN9Scheduler6finishEv>:
void Scheduler::finish() {
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00113423          	sd	ra,8(sp)
    80002e70:	00813023          	sd	s0,0(sp)
    80002e74:	01010413          	addi	s0,sp,16

        tail = 0;
    }*/

    void deleteList() {
        while (head) {
    80002e78:	00005517          	auipc	a0,0x5
    80002e7c:	04053503          	ld	a0,64(a0) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
    80002e80:	02050063          	beqz	a0,80002ea0 <_ZN9Scheduler6finishEv+0x38>
            Node *old = head;
            head = head->next;
    80002e84:	00853783          	ld	a5,8(a0)
    80002e88:	00005717          	auipc	a4,0x5
    80002e8c:	02f73823          	sd	a5,48(a4) # 80007eb8 <_ZN9Scheduler10sleepQueueE>
            delete old;
    80002e90:	fe0504e3          	beqz	a0,80002e78 <_ZN9Scheduler6finishEv+0x10>
            MemoryAllocator::free(ptr);
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	968080e7          	jalr	-1688(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
        }
    80002e9c:	fddff06f          	j	80002e78 <_ZN9Scheduler6finishEv+0x10>
        }

        tail = 0;
    80002ea0:	00005797          	auipc	a5,0x5
    80002ea4:	0207b023          	sd	zero,32(a5) # 80007ec0 <_ZN9Scheduler10sleepQueueE+0x8>
        while (head) {
    80002ea8:	00005517          	auipc	a0,0x5
    80002eac:	00053503          	ld	a0,0(a0) # 80007ea8 <_ZN9Scheduler10readyQueueE>
    80002eb0:	02050063          	beqz	a0,80002ed0 <_ZN9Scheduler6finishEv+0x68>
            head = head->next;
    80002eb4:	00853783          	ld	a5,8(a0)
    80002eb8:	00005717          	auipc	a4,0x5
    80002ebc:	fef73823          	sd	a5,-16(a4) # 80007ea8 <_ZN9Scheduler10readyQueueE>
            delete old;
    80002ec0:	fe0504e3          	beqz	a0,80002ea8 <_ZN9Scheduler6finishEv+0x40>
            MemoryAllocator::free(ptr);
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	938080e7          	jalr	-1736(ra) # 800027fc <_ZN15MemoryAllocator4freeEPv>
        }
    80002ecc:	fddff06f          	j	80002ea8 <_ZN9Scheduler6finishEv+0x40>
        tail = 0;
    80002ed0:	00005797          	auipc	a5,0x5
    80002ed4:	fe07b023          	sd	zero,-32(a5) # 80007eb0 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002ed8:	00813083          	ld	ra,8(sp)
    80002edc:	00013403          	ld	s0,0(sp)
    80002ee0:	01010113          	addi	sp,sp,16
    80002ee4:	00008067          	ret

0000000080002ee8 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80002ee8:	ff010113          	addi	sp,sp,-16
    80002eec:	00113423          	sd	ra,8(sp)
    80002ef0:	00813023          	sd	s0,0(sp)
    80002ef4:	01010413          	addi	s0,sp,16
    80002ef8:	000105b7          	lui	a1,0x10
    80002efc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002f00:	00100513          	li	a0,1
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	c80080e7          	jalr	-896(ra) # 80002b84 <_Z41__static_initialization_and_destruction_0ii>
    80002f0c:	00813083          	ld	ra,8(sp)
    80002f10:	00013403          	ld	s0,0(sp)
    80002f14:	01010113          	addi	sp,sp,16
    80002f18:	00008067          	ret

0000000080002f1c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002f1c:	fe010113          	addi	sp,sp,-32
    80002f20:	00113c23          	sd	ra,24(sp)
    80002f24:	00813823          	sd	s0,16(sp)
    80002f28:	00913423          	sd	s1,8(sp)
    80002f2c:	02010413          	addi	s0,sp,32
    80002f30:	00050493          	mv	s1,a0
    LOCK();
    80002f34:	00100613          	li	a2,1
    80002f38:	00000593          	li	a1,0
    80002f3c:	00005517          	auipc	a0,0x5
    80002f40:	f8c50513          	addi	a0,a0,-116 # 80007ec8 <lockPrint>
    80002f44:	ffffe097          	auipc	ra,0xffffe
    80002f48:	380080e7          	jalr	896(ra) # 800012c4 <copy_and_swap>
    80002f4c:	fe0514e3          	bnez	a0,80002f34 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002f50:	0004c503          	lbu	a0,0(s1)
    80002f54:	00050a63          	beqz	a0,80002f68 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002f58:	ffffe097          	auipc	ra,0xffffe
    80002f5c:	138080e7          	jalr	312(ra) # 80001090 <putc>
        string++;
    80002f60:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f64:	fedff06f          	j	80002f50 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002f68:	00000613          	li	a2,0
    80002f6c:	00100593          	li	a1,1
    80002f70:	00005517          	auipc	a0,0x5
    80002f74:	f5850513          	addi	a0,a0,-168 # 80007ec8 <lockPrint>
    80002f78:	ffffe097          	auipc	ra,0xffffe
    80002f7c:	34c080e7          	jalr	844(ra) # 800012c4 <copy_and_swap>
    80002f80:	fe0514e3          	bnez	a0,80002f68 <_Z11printStringPKc+0x4c>
}
    80002f84:	01813083          	ld	ra,24(sp)
    80002f88:	01013403          	ld	s0,16(sp)
    80002f8c:	00813483          	ld	s1,8(sp)
    80002f90:	02010113          	addi	sp,sp,32
    80002f94:	00008067          	ret

0000000080002f98 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f98:	fd010113          	addi	sp,sp,-48
    80002f9c:	02113423          	sd	ra,40(sp)
    80002fa0:	02813023          	sd	s0,32(sp)
    80002fa4:	00913c23          	sd	s1,24(sp)
    80002fa8:	01213823          	sd	s2,16(sp)
    80002fac:	01313423          	sd	s3,8(sp)
    80002fb0:	01413023          	sd	s4,0(sp)
    80002fb4:	03010413          	addi	s0,sp,48
    80002fb8:	00050993          	mv	s3,a0
    80002fbc:	00058a13          	mv	s4,a1
    LOCK();
    80002fc0:	00100613          	li	a2,1
    80002fc4:	00000593          	li	a1,0
    80002fc8:	00005517          	auipc	a0,0x5
    80002fcc:	f0050513          	addi	a0,a0,-256 # 80007ec8 <lockPrint>
    80002fd0:	ffffe097          	auipc	ra,0xffffe
    80002fd4:	2f4080e7          	jalr	756(ra) # 800012c4 <copy_and_swap>
    80002fd8:	fe0514e3          	bnez	a0,80002fc0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002fdc:	00000913          	li	s2,0
    80002fe0:	00090493          	mv	s1,s2
    80002fe4:	0019091b          	addiw	s2,s2,1
    80002fe8:	03495a63          	bge	s2,s4,8000301c <_Z9getStringPci+0x84>
        cc = getc();
    80002fec:	ffffe097          	auipc	ra,0xffffe
    80002ff0:	098080e7          	jalr	152(ra) # 80001084 <getc>
        if(cc < 1)
    80002ff4:	02050463          	beqz	a0,8000301c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002ff8:	009984b3          	add	s1,s3,s1
    80002ffc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003000:	00a00793          	li	a5,10
    80003004:	00f50a63          	beq	a0,a5,80003018 <_Z9getStringPci+0x80>
    80003008:	00d00793          	li	a5,13
    8000300c:	fcf51ae3          	bne	a0,a5,80002fe0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003010:	00090493          	mv	s1,s2
    80003014:	0080006f          	j	8000301c <_Z9getStringPci+0x84>
    80003018:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000301c:	009984b3          	add	s1,s3,s1
    80003020:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003024:	00000613          	li	a2,0
    80003028:	00100593          	li	a1,1
    8000302c:	00005517          	auipc	a0,0x5
    80003030:	e9c50513          	addi	a0,a0,-356 # 80007ec8 <lockPrint>
    80003034:	ffffe097          	auipc	ra,0xffffe
    80003038:	290080e7          	jalr	656(ra) # 800012c4 <copy_and_swap>
    8000303c:	fe0514e3          	bnez	a0,80003024 <_Z9getStringPci+0x8c>
    return buf;
}
    80003040:	00098513          	mv	a0,s3
    80003044:	02813083          	ld	ra,40(sp)
    80003048:	02013403          	ld	s0,32(sp)
    8000304c:	01813483          	ld	s1,24(sp)
    80003050:	01013903          	ld	s2,16(sp)
    80003054:	00813983          	ld	s3,8(sp)
    80003058:	00013a03          	ld	s4,0(sp)
    8000305c:	03010113          	addi	sp,sp,48
    80003060:	00008067          	ret

0000000080003064 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003064:	ff010113          	addi	sp,sp,-16
    80003068:	00813423          	sd	s0,8(sp)
    8000306c:	01010413          	addi	s0,sp,16
    80003070:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003074:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003078:	0006c603          	lbu	a2,0(a3)
    8000307c:	fd06071b          	addiw	a4,a2,-48
    80003080:	0ff77713          	andi	a4,a4,255
    80003084:	00900793          	li	a5,9
    80003088:	02e7e063          	bltu	a5,a4,800030a8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000308c:	0025179b          	slliw	a5,a0,0x2
    80003090:	00a787bb          	addw	a5,a5,a0
    80003094:	0017979b          	slliw	a5,a5,0x1
    80003098:	00168693          	addi	a3,a3,1
    8000309c:	00c787bb          	addw	a5,a5,a2
    800030a0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800030a4:	fd5ff06f          	j	80003078 <_Z11stringToIntPKc+0x14>
    return n;
}
    800030a8:	00813403          	ld	s0,8(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800030b4:	fc010113          	addi	sp,sp,-64
    800030b8:	02113c23          	sd	ra,56(sp)
    800030bc:	02813823          	sd	s0,48(sp)
    800030c0:	02913423          	sd	s1,40(sp)
    800030c4:	03213023          	sd	s2,32(sp)
    800030c8:	01313c23          	sd	s3,24(sp)
    800030cc:	04010413          	addi	s0,sp,64
    800030d0:	00050493          	mv	s1,a0
    800030d4:	00058913          	mv	s2,a1
    800030d8:	00060993          	mv	s3,a2
    LOCK();
    800030dc:	00100613          	li	a2,1
    800030e0:	00000593          	li	a1,0
    800030e4:	00005517          	auipc	a0,0x5
    800030e8:	de450513          	addi	a0,a0,-540 # 80007ec8 <lockPrint>
    800030ec:	ffffe097          	auipc	ra,0xffffe
    800030f0:	1d8080e7          	jalr	472(ra) # 800012c4 <copy_and_swap>
    800030f4:	fe0514e3          	bnez	a0,800030dc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800030f8:	00098463          	beqz	s3,80003100 <_Z8printIntiii+0x4c>
    800030fc:	0804c463          	bltz	s1,80003184 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003100:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003104:	00000593          	li	a1,0
    }

    i = 0;
    80003108:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000310c:	0009079b          	sext.w	a5,s2
    80003110:	0325773b          	remuw	a4,a0,s2
    80003114:	00048613          	mv	a2,s1
    80003118:	0014849b          	addiw	s1,s1,1
    8000311c:	02071693          	slli	a3,a4,0x20
    80003120:	0206d693          	srli	a3,a3,0x20
    80003124:	00004717          	auipc	a4,0x4
    80003128:	42c70713          	addi	a4,a4,1068 # 80007550 <digits>
    8000312c:	00d70733          	add	a4,a4,a3
    80003130:	00074683          	lbu	a3,0(a4)
    80003134:	fd040713          	addi	a4,s0,-48
    80003138:	00c70733          	add	a4,a4,a2
    8000313c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003140:	0005071b          	sext.w	a4,a0
    80003144:	0325553b          	divuw	a0,a0,s2
    80003148:	fcf772e3          	bgeu	a4,a5,8000310c <_Z8printIntiii+0x58>
    if(neg)
    8000314c:	00058c63          	beqz	a1,80003164 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003150:	fd040793          	addi	a5,s0,-48
    80003154:	009784b3          	add	s1,a5,s1
    80003158:	02d00793          	li	a5,45
    8000315c:	fef48823          	sb	a5,-16(s1)
    80003160:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003164:	fff4849b          	addiw	s1,s1,-1
    80003168:	0204c463          	bltz	s1,80003190 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000316c:	fd040793          	addi	a5,s0,-48
    80003170:	009787b3          	add	a5,a5,s1
    80003174:	ff07c503          	lbu	a0,-16(a5)
    80003178:	ffffe097          	auipc	ra,0xffffe
    8000317c:	f18080e7          	jalr	-232(ra) # 80001090 <putc>
    80003180:	fe5ff06f          	j	80003164 <_Z8printIntiii+0xb0>
        x = -xx;
    80003184:	4090053b          	negw	a0,s1
        neg = 1;
    80003188:	00100593          	li	a1,1
        x = -xx;
    8000318c:	f7dff06f          	j	80003108 <_Z8printIntiii+0x54>

    UNLOCK();
    80003190:	00000613          	li	a2,0
    80003194:	00100593          	li	a1,1
    80003198:	00005517          	auipc	a0,0x5
    8000319c:	d3050513          	addi	a0,a0,-720 # 80007ec8 <lockPrint>
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	124080e7          	jalr	292(ra) # 800012c4 <copy_and_swap>
    800031a8:	fe0514e3          	bnez	a0,80003190 <_Z8printIntiii+0xdc>
    800031ac:	03813083          	ld	ra,56(sp)
    800031b0:	03013403          	ld	s0,48(sp)
    800031b4:	02813483          	ld	s1,40(sp)
    800031b8:	02013903          	ld	s2,32(sp)
    800031bc:	01813983          	ld	s3,24(sp)
    800031c0:	04010113          	addi	sp,sp,64
    800031c4:	00008067          	ret

00000000800031c8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800031c8:	fd010113          	addi	sp,sp,-48
    800031cc:	02113423          	sd	ra,40(sp)
    800031d0:	02813023          	sd	s0,32(sp)
    800031d4:	00913c23          	sd	s1,24(sp)
    800031d8:	01213823          	sd	s2,16(sp)
    800031dc:	01313423          	sd	s3,8(sp)
    800031e0:	03010413          	addi	s0,sp,48
    800031e4:	00050493          	mv	s1,a0
    800031e8:	00058913          	mv	s2,a1
    800031ec:	0015879b          	addiw	a5,a1,1
    800031f0:	0007851b          	sext.w	a0,a5
    800031f4:	00f4a023          	sw	a5,0(s1)
    800031f8:	0004a823          	sw	zero,16(s1)
    800031fc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003200:	00251513          	slli	a0,a0,0x2
    80003204:	ffffe097          	auipc	ra,0xffffe
    80003208:	dfc080e7          	jalr	-516(ra) # 80001000 <mem_alloc>
    8000320c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003210:	01000513          	li	a0,16
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	a54080e7          	jalr	-1452(ra) # 80001c68 <_Znwm>
    8000321c:	00050993          	mv	s3,a0
    80003220:	00000593          	li	a1,0
    80003224:	fffff097          	auipc	ra,0xfffff
    80003228:	1f4080e7          	jalr	500(ra) # 80002418 <_ZN9SemaphoreC1Ej>
    8000322c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003230:	01000513          	li	a0,16
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	a34080e7          	jalr	-1484(ra) # 80001c68 <_Znwm>
    8000323c:	00050993          	mv	s3,a0
    80003240:	00090593          	mv	a1,s2
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	1d4080e7          	jalr	468(ra) # 80002418 <_ZN9SemaphoreC1Ej>
    8000324c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003250:	01000513          	li	a0,16
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	a14080e7          	jalr	-1516(ra) # 80001c68 <_Znwm>
    8000325c:	00050913          	mv	s2,a0
    80003260:	00100593          	li	a1,1
    80003264:	fffff097          	auipc	ra,0xfffff
    80003268:	1b4080e7          	jalr	436(ra) # 80002418 <_ZN9SemaphoreC1Ej>
    8000326c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003270:	01000513          	li	a0,16
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	9f4080e7          	jalr	-1548(ra) # 80001c68 <_Znwm>
    8000327c:	00050913          	mv	s2,a0
    80003280:	00100593          	li	a1,1
    80003284:	fffff097          	auipc	ra,0xfffff
    80003288:	194080e7          	jalr	404(ra) # 80002418 <_ZN9SemaphoreC1Ej>
    8000328c:	0324b823          	sd	s2,48(s1)
}
    80003290:	02813083          	ld	ra,40(sp)
    80003294:	02013403          	ld	s0,32(sp)
    80003298:	01813483          	ld	s1,24(sp)
    8000329c:	01013903          	ld	s2,16(sp)
    800032a0:	00813983          	ld	s3,8(sp)
    800032a4:	03010113          	addi	sp,sp,48
    800032a8:	00008067          	ret
    800032ac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800032b0:	00098513          	mv	a0,s3
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	a04080e7          	jalr	-1532(ra) # 80001cb8 <_ZdlPv>
    800032bc:	00048513          	mv	a0,s1
    800032c0:	00006097          	auipc	ra,0x6
    800032c4:	ce8080e7          	jalr	-792(ra) # 80008fa8 <_Unwind_Resume>
    800032c8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800032cc:	00098513          	mv	a0,s3
    800032d0:	fffff097          	auipc	ra,0xfffff
    800032d4:	9e8080e7          	jalr	-1560(ra) # 80001cb8 <_ZdlPv>
    800032d8:	00048513          	mv	a0,s1
    800032dc:	00006097          	auipc	ra,0x6
    800032e0:	ccc080e7          	jalr	-820(ra) # 80008fa8 <_Unwind_Resume>
    800032e4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800032e8:	00090513          	mv	a0,s2
    800032ec:	fffff097          	auipc	ra,0xfffff
    800032f0:	9cc080e7          	jalr	-1588(ra) # 80001cb8 <_ZdlPv>
    800032f4:	00048513          	mv	a0,s1
    800032f8:	00006097          	auipc	ra,0x6
    800032fc:	cb0080e7          	jalr	-848(ra) # 80008fa8 <_Unwind_Resume>
    80003300:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003304:	00090513          	mv	a0,s2
    80003308:	fffff097          	auipc	ra,0xfffff
    8000330c:	9b0080e7          	jalr	-1616(ra) # 80001cb8 <_ZdlPv>
    80003310:	00048513          	mv	a0,s1
    80003314:	00006097          	auipc	ra,0x6
    80003318:	c94080e7          	jalr	-876(ra) # 80008fa8 <_Unwind_Resume>

000000008000331c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000331c:	fe010113          	addi	sp,sp,-32
    80003320:	00113c23          	sd	ra,24(sp)
    80003324:	00813823          	sd	s0,16(sp)
    80003328:	00913423          	sd	s1,8(sp)
    8000332c:	01213023          	sd	s2,0(sp)
    80003330:	02010413          	addi	s0,sp,32
    80003334:	00050493          	mv	s1,a0
    80003338:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000333c:	01853503          	ld	a0,24(a0)
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	110080e7          	jalr	272(ra) # 80002450 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003348:	0304b503          	ld	a0,48(s1)
    8000334c:	fffff097          	auipc	ra,0xfffff
    80003350:	104080e7          	jalr	260(ra) # 80002450 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003354:	0084b783          	ld	a5,8(s1)
    80003358:	0144a703          	lw	a4,20(s1)
    8000335c:	00271713          	slli	a4,a4,0x2
    80003360:	00e787b3          	add	a5,a5,a4
    80003364:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003368:	0144a783          	lw	a5,20(s1)
    8000336c:	0017879b          	addiw	a5,a5,1
    80003370:	0004a703          	lw	a4,0(s1)
    80003374:	02e7e7bb          	remw	a5,a5,a4
    80003378:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000337c:	0304b503          	ld	a0,48(s1)
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	0fc080e7          	jalr	252(ra) # 8000247c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003388:	0204b503          	ld	a0,32(s1)
    8000338c:	fffff097          	auipc	ra,0xfffff
    80003390:	0f0080e7          	jalr	240(ra) # 8000247c <_ZN9Semaphore6signalEv>

}
    80003394:	01813083          	ld	ra,24(sp)
    80003398:	01013403          	ld	s0,16(sp)
    8000339c:	00813483          	ld	s1,8(sp)
    800033a0:	00013903          	ld	s2,0(sp)
    800033a4:	02010113          	addi	sp,sp,32
    800033a8:	00008067          	ret

00000000800033ac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800033ac:	fe010113          	addi	sp,sp,-32
    800033b0:	00113c23          	sd	ra,24(sp)
    800033b4:	00813823          	sd	s0,16(sp)
    800033b8:	00913423          	sd	s1,8(sp)
    800033bc:	01213023          	sd	s2,0(sp)
    800033c0:	02010413          	addi	s0,sp,32
    800033c4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800033c8:	02053503          	ld	a0,32(a0)
    800033cc:	fffff097          	auipc	ra,0xfffff
    800033d0:	084080e7          	jalr	132(ra) # 80002450 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800033d4:	0284b503          	ld	a0,40(s1)
    800033d8:	fffff097          	auipc	ra,0xfffff
    800033dc:	078080e7          	jalr	120(ra) # 80002450 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800033e0:	0084b703          	ld	a4,8(s1)
    800033e4:	0104a783          	lw	a5,16(s1)
    800033e8:	00279693          	slli	a3,a5,0x2
    800033ec:	00d70733          	add	a4,a4,a3
    800033f0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800033f4:	0017879b          	addiw	a5,a5,1
    800033f8:	0004a703          	lw	a4,0(s1)
    800033fc:	02e7e7bb          	remw	a5,a5,a4
    80003400:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003404:	0284b503          	ld	a0,40(s1)
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	074080e7          	jalr	116(ra) # 8000247c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003410:	0184b503          	ld	a0,24(s1)
    80003414:	fffff097          	auipc	ra,0xfffff
    80003418:	068080e7          	jalr	104(ra) # 8000247c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000341c:	00090513          	mv	a0,s2
    80003420:	01813083          	ld	ra,24(sp)
    80003424:	01013403          	ld	s0,16(sp)
    80003428:	00813483          	ld	s1,8(sp)
    8000342c:	00013903          	ld	s2,0(sp)
    80003430:	02010113          	addi	sp,sp,32
    80003434:	00008067          	ret

0000000080003438 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003438:	fe010113          	addi	sp,sp,-32
    8000343c:	00113c23          	sd	ra,24(sp)
    80003440:	00813823          	sd	s0,16(sp)
    80003444:	00913423          	sd	s1,8(sp)
    80003448:	01213023          	sd	s2,0(sp)
    8000344c:	02010413          	addi	s0,sp,32
    80003450:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003454:	02853503          	ld	a0,40(a0)
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	ff8080e7          	jalr	-8(ra) # 80002450 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003460:	0304b503          	ld	a0,48(s1)
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	fec080e7          	jalr	-20(ra) # 80002450 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000346c:	0144a783          	lw	a5,20(s1)
    80003470:	0104a903          	lw	s2,16(s1)
    80003474:	0327ce63          	blt	a5,s2,800034b0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003478:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000347c:	0304b503          	ld	a0,48(s1)
    80003480:	fffff097          	auipc	ra,0xfffff
    80003484:	ffc080e7          	jalr	-4(ra) # 8000247c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003488:	0284b503          	ld	a0,40(s1)
    8000348c:	fffff097          	auipc	ra,0xfffff
    80003490:	ff0080e7          	jalr	-16(ra) # 8000247c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003494:	00090513          	mv	a0,s2
    80003498:	01813083          	ld	ra,24(sp)
    8000349c:	01013403          	ld	s0,16(sp)
    800034a0:	00813483          	ld	s1,8(sp)
    800034a4:	00013903          	ld	s2,0(sp)
    800034a8:	02010113          	addi	sp,sp,32
    800034ac:	00008067          	ret
        ret = cap - head + tail;
    800034b0:	0004a703          	lw	a4,0(s1)
    800034b4:	4127093b          	subw	s2,a4,s2
    800034b8:	00f9093b          	addw	s2,s2,a5
    800034bc:	fc1ff06f          	j	8000347c <_ZN9BufferCPP6getCntEv+0x44>

00000000800034c0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800034c0:	fe010113          	addi	sp,sp,-32
    800034c4:	00113c23          	sd	ra,24(sp)
    800034c8:	00813823          	sd	s0,16(sp)
    800034cc:	00913423          	sd	s1,8(sp)
    800034d0:	02010413          	addi	s0,sp,32
    800034d4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800034d8:	00a00513          	li	a0,10
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	044080e7          	jalr	68(ra) # 80002520 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800034e4:	00003517          	auipc	a0,0x3
    800034e8:	cac50513          	addi	a0,a0,-852 # 80006190 <_ZZ14__print_uint64mE6digits+0x10>
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	a30080e7          	jalr	-1488(ra) # 80002f1c <_Z11printStringPKc>
    while (getCnt()) {
    800034f4:	00048513          	mv	a0,s1
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	f40080e7          	jalr	-192(ra) # 80003438 <_ZN9BufferCPP6getCntEv>
    80003500:	02050c63          	beqz	a0,80003538 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003504:	0084b783          	ld	a5,8(s1)
    80003508:	0104a703          	lw	a4,16(s1)
    8000350c:	00271713          	slli	a4,a4,0x2
    80003510:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003514:	0007c503          	lbu	a0,0(a5)
    80003518:	fffff097          	auipc	ra,0xfffff
    8000351c:	008080e7          	jalr	8(ra) # 80002520 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003520:	0104a783          	lw	a5,16(s1)
    80003524:	0017879b          	addiw	a5,a5,1
    80003528:	0004a703          	lw	a4,0(s1)
    8000352c:	02e7e7bb          	remw	a5,a5,a4
    80003530:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003534:	fc1ff06f          	j	800034f4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003538:	02100513          	li	a0,33
    8000353c:	fffff097          	auipc	ra,0xfffff
    80003540:	fe4080e7          	jalr	-28(ra) # 80002520 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003544:	00a00513          	li	a0,10
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	fd8080e7          	jalr	-40(ra) # 80002520 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003550:	0084b503          	ld	a0,8(s1)
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	ab8080e7          	jalr	-1352(ra) # 8000100c <mem_free>
    delete itemAvailable;
    8000355c:	0204b503          	ld	a0,32(s1)
    80003560:	00050863          	beqz	a0,80003570 <_ZN9BufferCPPD1Ev+0xb0>
    80003564:	00053783          	ld	a5,0(a0)
    80003568:	0087b783          	ld	a5,8(a5)
    8000356c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003570:	0184b503          	ld	a0,24(s1)
    80003574:	00050863          	beqz	a0,80003584 <_ZN9BufferCPPD1Ev+0xc4>
    80003578:	00053783          	ld	a5,0(a0)
    8000357c:	0087b783          	ld	a5,8(a5)
    80003580:	000780e7          	jalr	a5
    delete mutexTail;
    80003584:	0304b503          	ld	a0,48(s1)
    80003588:	00050863          	beqz	a0,80003598 <_ZN9BufferCPPD1Ev+0xd8>
    8000358c:	00053783          	ld	a5,0(a0)
    80003590:	0087b783          	ld	a5,8(a5)
    80003594:	000780e7          	jalr	a5
    delete mutexHead;
    80003598:	0284b503          	ld	a0,40(s1)
    8000359c:	00050863          	beqz	a0,800035ac <_ZN9BufferCPPD1Ev+0xec>
    800035a0:	00053783          	ld	a5,0(a0)
    800035a4:	0087b783          	ld	a5,8(a5)
    800035a8:	000780e7          	jalr	a5
}
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00008067          	ret

00000000800035c0 <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800035c0:	fe010113          	addi	sp,sp,-32
    800035c4:	00113c23          	sd	ra,24(sp)
    800035c8:	00813823          	sd	s0,16(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	01213023          	sd	s2,0(sp)
    800035d4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800035d8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800035dc:	00600493          	li	s1,6
    while (--i > 0) {
    800035e0:	fff4849b          	addiw	s1,s1,-1
    800035e4:	04905463          	blez	s1,8000362c <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800035e8:	00003517          	auipc	a0,0x3
    800035ec:	bc050513          	addi	a0,a0,-1088 # 800061a8 <_ZZ14__print_uint64mE6digits+0x28>
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	92c080e7          	jalr	-1748(ra) # 80002f1c <_Z11printStringPKc>
        printInt(sleep_time);
    800035f8:	00000613          	li	a2,0
    800035fc:	00a00593          	li	a1,10
    80003600:	0009051b          	sext.w	a0,s2
    80003604:	00000097          	auipc	ra,0x0
    80003608:	ab0080e7          	jalr	-1360(ra) # 800030b4 <_Z8printIntiii>
        printString(" !\n");
    8000360c:	00003517          	auipc	a0,0x3
    80003610:	ba450513          	addi	a0,a0,-1116 # 800061b0 <_ZZ14__print_uint64mE6digits+0x30>
    80003614:	00000097          	auipc	ra,0x0
    80003618:	908080e7          	jalr	-1784(ra) # 80002f1c <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000361c:	00090513          	mv	a0,s2
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	a58080e7          	jalr	-1448(ra) # 80001078 <time_sleep>
    while (--i > 0) {
    80003628:	fb9ff06f          	j	800035e0 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000362c:	00a00793          	li	a5,10
    80003630:	02f95933          	divu	s2,s2,a5
    80003634:	fff90913          	addi	s2,s2,-1
    80003638:	00005797          	auipc	a5,0x5
    8000363c:	89878793          	addi	a5,a5,-1896 # 80007ed0 <finished>
    80003640:	01278933          	add	s2,a5,s2
    80003644:	00100793          	li	a5,1
    80003648:	00f90023          	sb	a5,0(s2)
}
    8000364c:	01813083          	ld	ra,24(sp)
    80003650:	01013403          	ld	s0,16(sp)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	00013903          	ld	s2,0(sp)
    8000365c:	02010113          	addi	sp,sp,32
    80003660:	00008067          	ret

0000000080003664 <_Z12testSleepingv>:

void testSleeping() {
    80003664:	fc010113          	addi	sp,sp,-64
    80003668:	02113c23          	sd	ra,56(sp)
    8000366c:	02813823          	sd	s0,48(sp)
    80003670:	02913423          	sd	s1,40(sp)
    80003674:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80003678:	00a00793          	li	a5,10
    8000367c:	fcf43823          	sd	a5,-48(s0)
    80003680:	01400793          	li	a5,20
    80003684:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80003688:	00000493          	li	s1,0
    8000368c:	02c0006f          	j	800036b8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80003690:	00349793          	slli	a5,s1,0x3
    80003694:	fd040613          	addi	a2,s0,-48
    80003698:	00f60633          	add	a2,a2,a5
    8000369c:	00000597          	auipc	a1,0x0
    800036a0:	f2458593          	addi	a1,a1,-220 # 800035c0 <_Z9sleepyRunPv>
    800036a4:	fc040513          	addi	a0,s0,-64
    800036a8:	00f50533          	add	a0,a0,a5
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	96c080e7          	jalr	-1684(ra) # 80001018 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800036b4:	0014849b          	addiw	s1,s1,1
    800036b8:	00100793          	li	a5,1
    800036bc:	fc97dae3          	bge	a5,s1,80003690 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800036c0:	00005797          	auipc	a5,0x5
    800036c4:	8107c783          	lbu	a5,-2032(a5) # 80007ed0 <finished>
    800036c8:	fe078ce3          	beqz	a5,800036c0 <_Z12testSleepingv+0x5c>
    800036cc:	00005797          	auipc	a5,0x5
    800036d0:	8057c783          	lbu	a5,-2043(a5) # 80007ed1 <finished+0x1>
    800036d4:	fe0786e3          	beqz	a5,800036c0 <_Z12testSleepingv+0x5c>
}
    800036d8:	03813083          	ld	ra,56(sp)
    800036dc:	03013403          	ld	s0,48(sp)
    800036e0:	02813483          	ld	s1,40(sp)
    800036e4:	04010113          	addi	sp,sp,64
    800036e8:	00008067          	ret

00000000800036ec <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00113423          	sd	ra,8(sp)
    800036f4:	00813023          	sd	s0,0(sp)
    800036f8:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	f68080e7          	jalr	-152(ra) # 80003664 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80003704:	00813083          	ld	ra,8(sp)
    80003708:	00013403          	ld	s0,0(sp)
    8000370c:	01010113          	addi	sp,sp,16
    80003710:	00008067          	ret

0000000080003714 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003714:	fe010113          	addi	sp,sp,-32
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	00813823          	sd	s0,16(sp)
    80003720:	00913423          	sd	s1,8(sp)
    80003724:	01213023          	sd	s2,0(sp)
    80003728:	02010413          	addi	s0,sp,32
    8000372c:	00050493          	mv	s1,a0
    80003730:	00058913          	mv	s2,a1
    80003734:	0015879b          	addiw	a5,a1,1
    80003738:	0007851b          	sext.w	a0,a5
    8000373c:	00f4a023          	sw	a5,0(s1)
    80003740:	0004a823          	sw	zero,16(s1)
    80003744:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003748:	00251513          	slli	a0,a0,0x2
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	8b4080e7          	jalr	-1868(ra) # 80001000 <mem_alloc>
    80003754:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003758:	00000593          	li	a1,0
    8000375c:	02048513          	addi	a0,s1,32
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	8e8080e7          	jalr	-1816(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80003768:	00090593          	mv	a1,s2
    8000376c:	01848513          	addi	a0,s1,24
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	8d8080e7          	jalr	-1832(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    80003778:	00100593          	li	a1,1
    8000377c:	02848513          	addi	a0,s1,40
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	8c8080e7          	jalr	-1848(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    80003788:	00100593          	li	a1,1
    8000378c:	03048513          	addi	a0,s1,48
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	8b8080e7          	jalr	-1864(ra) # 80001048 <sem_open>
}
    80003798:	01813083          	ld	ra,24(sp)
    8000379c:	01013403          	ld	s0,16(sp)
    800037a0:	00813483          	ld	s1,8(sp)
    800037a4:	00013903          	ld	s2,0(sp)
    800037a8:	02010113          	addi	sp,sp,32
    800037ac:	00008067          	ret

00000000800037b0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800037b0:	fe010113          	addi	sp,sp,-32
    800037b4:	00113c23          	sd	ra,24(sp)
    800037b8:	00813823          	sd	s0,16(sp)
    800037bc:	00913423          	sd	s1,8(sp)
    800037c0:	01213023          	sd	s2,0(sp)
    800037c4:	02010413          	addi	s0,sp,32
    800037c8:	00050493          	mv	s1,a0
    800037cc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800037d0:	01853503          	ld	a0,24(a0)
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	88c080e7          	jalr	-1908(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    800037dc:	0304b503          	ld	a0,48(s1)
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	880080e7          	jalr	-1920(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    800037e8:	0084b783          	ld	a5,8(s1)
    800037ec:	0144a703          	lw	a4,20(s1)
    800037f0:	00271713          	slli	a4,a4,0x2
    800037f4:	00e787b3          	add	a5,a5,a4
    800037f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800037fc:	0144a783          	lw	a5,20(s1)
    80003800:	0017879b          	addiw	a5,a5,1
    80003804:	0004a703          	lw	a4,0(s1)
    80003808:	02e7e7bb          	remw	a5,a5,a4
    8000380c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003810:	0304b503          	ld	a0,48(s1)
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	858080e7          	jalr	-1960(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    8000381c:	0204b503          	ld	a0,32(s1)
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	84c080e7          	jalr	-1972(ra) # 8000106c <sem_signal>

}
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	01013403          	ld	s0,16(sp)
    80003830:	00813483          	ld	s1,8(sp)
    80003834:	00013903          	ld	s2,0(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret

0000000080003840 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003840:	fe010113          	addi	sp,sp,-32
    80003844:	00113c23          	sd	ra,24(sp)
    80003848:	00813823          	sd	s0,16(sp)
    8000384c:	00913423          	sd	s1,8(sp)
    80003850:	01213023          	sd	s2,0(sp)
    80003854:	02010413          	addi	s0,sp,32
    80003858:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000385c:	02053503          	ld	a0,32(a0)
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	800080e7          	jalr	-2048(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    80003868:	0284b503          	ld	a0,40(s1)
    8000386c:	ffffd097          	auipc	ra,0xffffd
    80003870:	7f4080e7          	jalr	2036(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    80003874:	0084b703          	ld	a4,8(s1)
    80003878:	0104a783          	lw	a5,16(s1)
    8000387c:	00279693          	slli	a3,a5,0x2
    80003880:	00d70733          	add	a4,a4,a3
    80003884:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003888:	0017879b          	addiw	a5,a5,1
    8000388c:	0004a703          	lw	a4,0(s1)
    80003890:	02e7e7bb          	remw	a5,a5,a4
    80003894:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003898:	0284b503          	ld	a0,40(s1)
    8000389c:	ffffd097          	auipc	ra,0xffffd
    800038a0:	7d0080e7          	jalr	2000(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    800038a4:	0184b503          	ld	a0,24(s1)
    800038a8:	ffffd097          	auipc	ra,0xffffd
    800038ac:	7c4080e7          	jalr	1988(ra) # 8000106c <sem_signal>

    return ret;
}
    800038b0:	00090513          	mv	a0,s2
    800038b4:	01813083          	ld	ra,24(sp)
    800038b8:	01013403          	ld	s0,16(sp)
    800038bc:	00813483          	ld	s1,8(sp)
    800038c0:	00013903          	ld	s2,0(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret

00000000800038cc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00113c23          	sd	ra,24(sp)
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	01213023          	sd	s2,0(sp)
    800038e0:	02010413          	addi	s0,sp,32
    800038e4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800038e8:	02853503          	ld	a0,40(a0)
    800038ec:	ffffd097          	auipc	ra,0xffffd
    800038f0:	774080e7          	jalr	1908(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    800038f4:	0304b503          	ld	a0,48(s1)
    800038f8:	ffffd097          	auipc	ra,0xffffd
    800038fc:	768080e7          	jalr	1896(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    80003900:	0144a783          	lw	a5,20(s1)
    80003904:	0104a903          	lw	s2,16(s1)
    80003908:	0327ce63          	blt	a5,s2,80003944 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000390c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003910:	0304b503          	ld	a0,48(s1)
    80003914:	ffffd097          	auipc	ra,0xffffd
    80003918:	758080e7          	jalr	1880(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    8000391c:	0284b503          	ld	a0,40(s1)
    80003920:	ffffd097          	auipc	ra,0xffffd
    80003924:	74c080e7          	jalr	1868(ra) # 8000106c <sem_signal>

    return ret;
}
    80003928:	00090513          	mv	a0,s2
    8000392c:	01813083          	ld	ra,24(sp)
    80003930:	01013403          	ld	s0,16(sp)
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	00013903          	ld	s2,0(sp)
    8000393c:	02010113          	addi	sp,sp,32
    80003940:	00008067          	ret
        ret = cap - head + tail;
    80003944:	0004a703          	lw	a4,0(s1)
    80003948:	4127093b          	subw	s2,a4,s2
    8000394c:	00f9093b          	addw	s2,s2,a5
    80003950:	fc1ff06f          	j	80003910 <_ZN6Buffer6getCntEv+0x44>

0000000080003954 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003954:	fe010113          	addi	sp,sp,-32
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00913423          	sd	s1,8(sp)
    80003964:	02010413          	addi	s0,sp,32
    80003968:	00050493          	mv	s1,a0
    putc('\n');
    8000396c:	00a00513          	li	a0,10
    80003970:	ffffd097          	auipc	ra,0xffffd
    80003974:	720080e7          	jalr	1824(ra) # 80001090 <putc>
    printString("Buffer deleted!\n");
    80003978:	00003517          	auipc	a0,0x3
    8000397c:	81850513          	addi	a0,a0,-2024 # 80006190 <_ZZ14__print_uint64mE6digits+0x10>
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	59c080e7          	jalr	1436(ra) # 80002f1c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003988:	00048513          	mv	a0,s1
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	f40080e7          	jalr	-192(ra) # 800038cc <_ZN6Buffer6getCntEv>
    80003994:	02a05c63          	blez	a0,800039cc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003998:	0084b783          	ld	a5,8(s1)
    8000399c:	0104a703          	lw	a4,16(s1)
    800039a0:	00271713          	slli	a4,a4,0x2
    800039a4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800039a8:	0007c503          	lbu	a0,0(a5)
    800039ac:	ffffd097          	auipc	ra,0xffffd
    800039b0:	6e4080e7          	jalr	1764(ra) # 80001090 <putc>
        head = (head + 1) % cap;
    800039b4:	0104a783          	lw	a5,16(s1)
    800039b8:	0017879b          	addiw	a5,a5,1
    800039bc:	0004a703          	lw	a4,0(s1)
    800039c0:	02e7e7bb          	remw	a5,a5,a4
    800039c4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800039c8:	fc1ff06f          	j	80003988 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800039cc:	02100513          	li	a0,33
    800039d0:	ffffd097          	auipc	ra,0xffffd
    800039d4:	6c0080e7          	jalr	1728(ra) # 80001090 <putc>
    putc('\n');
    800039d8:	00a00513          	li	a0,10
    800039dc:	ffffd097          	auipc	ra,0xffffd
    800039e0:	6b4080e7          	jalr	1716(ra) # 80001090 <putc>
    mem_free(buffer);
    800039e4:	0084b503          	ld	a0,8(s1)
    800039e8:	ffffd097          	auipc	ra,0xffffd
    800039ec:	624080e7          	jalr	1572(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    800039f0:	0204b503          	ld	a0,32(s1)
    800039f4:	ffffd097          	auipc	ra,0xffffd
    800039f8:	660080e7          	jalr	1632(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    800039fc:	0184b503          	ld	a0,24(s1)
    80003a00:	ffffd097          	auipc	ra,0xffffd
    80003a04:	654080e7          	jalr	1620(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    80003a08:	0304b503          	ld	a0,48(s1)
    80003a0c:	ffffd097          	auipc	ra,0xffffd
    80003a10:	648080e7          	jalr	1608(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    80003a14:	0284b503          	ld	a0,40(s1)
    80003a18:	ffffd097          	auipc	ra,0xffffd
    80003a1c:	63c080e7          	jalr	1596(ra) # 80001054 <sem_close>
}
    80003a20:	01813083          	ld	ra,24(sp)
    80003a24:	01013403          	ld	s0,16(sp)
    80003a28:	00813483          	ld	s1,8(sp)
    80003a2c:	02010113          	addi	sp,sp,32
    80003a30:	00008067          	ret

0000000080003a34 <start>:
    80003a34:	ff010113          	addi	sp,sp,-16
    80003a38:	00813423          	sd	s0,8(sp)
    80003a3c:	01010413          	addi	s0,sp,16
    80003a40:	300027f3          	csrr	a5,mstatus
    80003a44:	ffffe737          	lui	a4,0xffffe
    80003a48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff56bf>
    80003a4c:	00e7f7b3          	and	a5,a5,a4
    80003a50:	00001737          	lui	a4,0x1
    80003a54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003a58:	00e7e7b3          	or	a5,a5,a4
    80003a5c:	30079073          	csrw	mstatus,a5
    80003a60:	00000797          	auipc	a5,0x0
    80003a64:	16078793          	addi	a5,a5,352 # 80003bc0 <system_main>
    80003a68:	34179073          	csrw	mepc,a5
    80003a6c:	00000793          	li	a5,0
    80003a70:	18079073          	csrw	satp,a5
    80003a74:	000107b7          	lui	a5,0x10
    80003a78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a7c:	30279073          	csrw	medeleg,a5
    80003a80:	30379073          	csrw	mideleg,a5
    80003a84:	104027f3          	csrr	a5,sie
    80003a88:	2227e793          	ori	a5,a5,546
    80003a8c:	10479073          	csrw	sie,a5
    80003a90:	fff00793          	li	a5,-1
    80003a94:	00a7d793          	srli	a5,a5,0xa
    80003a98:	3b079073          	csrw	pmpaddr0,a5
    80003a9c:	00f00793          	li	a5,15
    80003aa0:	3a079073          	csrw	pmpcfg0,a5
    80003aa4:	f14027f3          	csrr	a5,mhartid
    80003aa8:	0200c737          	lui	a4,0x200c
    80003aac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003ab0:	0007869b          	sext.w	a3,a5
    80003ab4:	00269713          	slli	a4,a3,0x2
    80003ab8:	000f4637          	lui	a2,0xf4
    80003abc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003ac0:	00d70733          	add	a4,a4,a3
    80003ac4:	0037979b          	slliw	a5,a5,0x3
    80003ac8:	020046b7          	lui	a3,0x2004
    80003acc:	00d787b3          	add	a5,a5,a3
    80003ad0:	00c585b3          	add	a1,a1,a2
    80003ad4:	00371693          	slli	a3,a4,0x3
    80003ad8:	00004717          	auipc	a4,0x4
    80003adc:	40870713          	addi	a4,a4,1032 # 80007ee0 <timer_scratch>
    80003ae0:	00b7b023          	sd	a1,0(a5)
    80003ae4:	00d70733          	add	a4,a4,a3
    80003ae8:	00f73c23          	sd	a5,24(a4)
    80003aec:	02c73023          	sd	a2,32(a4)
    80003af0:	34071073          	csrw	mscratch,a4
    80003af4:	00000797          	auipc	a5,0x0
    80003af8:	6ec78793          	addi	a5,a5,1772 # 800041e0 <timervec>
    80003afc:	30579073          	csrw	mtvec,a5
    80003b00:	300027f3          	csrr	a5,mstatus
    80003b04:	0087e793          	ori	a5,a5,8
    80003b08:	30079073          	csrw	mstatus,a5
    80003b0c:	304027f3          	csrr	a5,mie
    80003b10:	0807e793          	ori	a5,a5,128
    80003b14:	30479073          	csrw	mie,a5
    80003b18:	f14027f3          	csrr	a5,mhartid
    80003b1c:	0007879b          	sext.w	a5,a5
    80003b20:	00078213          	mv	tp,a5
    80003b24:	30200073          	mret
    80003b28:	00813403          	ld	s0,8(sp)
    80003b2c:	01010113          	addi	sp,sp,16
    80003b30:	00008067          	ret

0000000080003b34 <timerinit>:
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00813423          	sd	s0,8(sp)
    80003b3c:	01010413          	addi	s0,sp,16
    80003b40:	f14027f3          	csrr	a5,mhartid
    80003b44:	0200c737          	lui	a4,0x200c
    80003b48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b4c:	0007869b          	sext.w	a3,a5
    80003b50:	00269713          	slli	a4,a3,0x2
    80003b54:	000f4637          	lui	a2,0xf4
    80003b58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b5c:	00d70733          	add	a4,a4,a3
    80003b60:	0037979b          	slliw	a5,a5,0x3
    80003b64:	020046b7          	lui	a3,0x2004
    80003b68:	00d787b3          	add	a5,a5,a3
    80003b6c:	00c585b3          	add	a1,a1,a2
    80003b70:	00371693          	slli	a3,a4,0x3
    80003b74:	00004717          	auipc	a4,0x4
    80003b78:	36c70713          	addi	a4,a4,876 # 80007ee0 <timer_scratch>
    80003b7c:	00b7b023          	sd	a1,0(a5)
    80003b80:	00d70733          	add	a4,a4,a3
    80003b84:	00f73c23          	sd	a5,24(a4)
    80003b88:	02c73023          	sd	a2,32(a4)
    80003b8c:	34071073          	csrw	mscratch,a4
    80003b90:	00000797          	auipc	a5,0x0
    80003b94:	65078793          	addi	a5,a5,1616 # 800041e0 <timervec>
    80003b98:	30579073          	csrw	mtvec,a5
    80003b9c:	300027f3          	csrr	a5,mstatus
    80003ba0:	0087e793          	ori	a5,a5,8
    80003ba4:	30079073          	csrw	mstatus,a5
    80003ba8:	304027f3          	csrr	a5,mie
    80003bac:	0807e793          	ori	a5,a5,128
    80003bb0:	30479073          	csrw	mie,a5
    80003bb4:	00813403          	ld	s0,8(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret

0000000080003bc0 <system_main>:
    80003bc0:	fe010113          	addi	sp,sp,-32
    80003bc4:	00813823          	sd	s0,16(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	00113c23          	sd	ra,24(sp)
    80003bd0:	02010413          	addi	s0,sp,32
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	0c4080e7          	jalr	196(ra) # 80003c98 <cpuid>
    80003bdc:	00004497          	auipc	s1,0x4
    80003be0:	a1448493          	addi	s1,s1,-1516 # 800075f0 <started>
    80003be4:	02050263          	beqz	a0,80003c08 <system_main+0x48>
    80003be8:	0004a783          	lw	a5,0(s1)
    80003bec:	0007879b          	sext.w	a5,a5
    80003bf0:	fe078ce3          	beqz	a5,80003be8 <system_main+0x28>
    80003bf4:	0ff0000f          	fence
    80003bf8:	00002517          	auipc	a0,0x2
    80003bfc:	5f050513          	addi	a0,a0,1520 # 800061e8 <_ZZ14__print_uint64mE6digits+0x68>
    80003c00:	00001097          	auipc	ra,0x1
    80003c04:	a7c080e7          	jalr	-1412(ra) # 8000467c <panic>
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	9d0080e7          	jalr	-1584(ra) # 800045d8 <consoleinit>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	15c080e7          	jalr	348(ra) # 80004d6c <printfinit>
    80003c18:	00002517          	auipc	a0,0x2
    80003c1c:	6b050513          	addi	a0,a0,1712 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    80003c20:	00001097          	auipc	ra,0x1
    80003c24:	ab8080e7          	jalr	-1352(ra) # 800046d8 <__printf>
    80003c28:	00002517          	auipc	a0,0x2
    80003c2c:	59050513          	addi	a0,a0,1424 # 800061b8 <_ZZ14__print_uint64mE6digits+0x38>
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	aa8080e7          	jalr	-1368(ra) # 800046d8 <__printf>
    80003c38:	00002517          	auipc	a0,0x2
    80003c3c:	69050513          	addi	a0,a0,1680 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	a98080e7          	jalr	-1384(ra) # 800046d8 <__printf>
    80003c48:	00001097          	auipc	ra,0x1
    80003c4c:	4b0080e7          	jalr	1200(ra) # 800050f8 <kinit>
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	148080e7          	jalr	328(ra) # 80003d98 <trapinit>
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	16c080e7          	jalr	364(ra) # 80003dc4 <trapinithart>
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	5c0080e7          	jalr	1472(ra) # 80004220 <plicinit>
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	5e0080e7          	jalr	1504(ra) # 80004248 <plicinithart>
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	078080e7          	jalr	120(ra) # 80003ce8 <userinit>
    80003c78:	0ff0000f          	fence
    80003c7c:	00100793          	li	a5,1
    80003c80:	00002517          	auipc	a0,0x2
    80003c84:	55050513          	addi	a0,a0,1360 # 800061d0 <_ZZ14__print_uint64mE6digits+0x50>
    80003c88:	00f4a023          	sw	a5,0(s1)
    80003c8c:	00001097          	auipc	ra,0x1
    80003c90:	a4c080e7          	jalr	-1460(ra) # 800046d8 <__printf>
    80003c94:	0000006f          	j	80003c94 <system_main+0xd4>

0000000080003c98 <cpuid>:
    80003c98:	ff010113          	addi	sp,sp,-16
    80003c9c:	00813423          	sd	s0,8(sp)
    80003ca0:	01010413          	addi	s0,sp,16
    80003ca4:	00020513          	mv	a0,tp
    80003ca8:	00813403          	ld	s0,8(sp)
    80003cac:	0005051b          	sext.w	a0,a0
    80003cb0:	01010113          	addi	sp,sp,16
    80003cb4:	00008067          	ret

0000000080003cb8 <mycpu>:
    80003cb8:	ff010113          	addi	sp,sp,-16
    80003cbc:	00813423          	sd	s0,8(sp)
    80003cc0:	01010413          	addi	s0,sp,16
    80003cc4:	00020793          	mv	a5,tp
    80003cc8:	00813403          	ld	s0,8(sp)
    80003ccc:	0007879b          	sext.w	a5,a5
    80003cd0:	00779793          	slli	a5,a5,0x7
    80003cd4:	00005517          	auipc	a0,0x5
    80003cd8:	23c50513          	addi	a0,a0,572 # 80008f10 <cpus>
    80003cdc:	00f50533          	add	a0,a0,a5
    80003ce0:	01010113          	addi	sp,sp,16
    80003ce4:	00008067          	ret

0000000080003ce8 <userinit>:
    80003ce8:	ff010113          	addi	sp,sp,-16
    80003cec:	00813423          	sd	s0,8(sp)
    80003cf0:	01010413          	addi	s0,sp,16
    80003cf4:	00813403          	ld	s0,8(sp)
    80003cf8:	01010113          	addi	sp,sp,16
    80003cfc:	ffffe317          	auipc	t1,0xffffe
    80003d00:	04430067          	jr	68(t1) # 80001d40 <main>

0000000080003d04 <either_copyout>:
    80003d04:	ff010113          	addi	sp,sp,-16
    80003d08:	00813023          	sd	s0,0(sp)
    80003d0c:	00113423          	sd	ra,8(sp)
    80003d10:	01010413          	addi	s0,sp,16
    80003d14:	02051663          	bnez	a0,80003d40 <either_copyout+0x3c>
    80003d18:	00058513          	mv	a0,a1
    80003d1c:	00060593          	mv	a1,a2
    80003d20:	0006861b          	sext.w	a2,a3
    80003d24:	00002097          	auipc	ra,0x2
    80003d28:	c60080e7          	jalr	-928(ra) # 80005984 <__memmove>
    80003d2c:	00813083          	ld	ra,8(sp)
    80003d30:	00013403          	ld	s0,0(sp)
    80003d34:	00000513          	li	a0,0
    80003d38:	01010113          	addi	sp,sp,16
    80003d3c:	00008067          	ret
    80003d40:	00002517          	auipc	a0,0x2
    80003d44:	4d050513          	addi	a0,a0,1232 # 80006210 <_ZZ14__print_uint64mE6digits+0x90>
    80003d48:	00001097          	auipc	ra,0x1
    80003d4c:	934080e7          	jalr	-1740(ra) # 8000467c <panic>

0000000080003d50 <either_copyin>:
    80003d50:	ff010113          	addi	sp,sp,-16
    80003d54:	00813023          	sd	s0,0(sp)
    80003d58:	00113423          	sd	ra,8(sp)
    80003d5c:	01010413          	addi	s0,sp,16
    80003d60:	02059463          	bnez	a1,80003d88 <either_copyin+0x38>
    80003d64:	00060593          	mv	a1,a2
    80003d68:	0006861b          	sext.w	a2,a3
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	c18080e7          	jalr	-1000(ra) # 80005984 <__memmove>
    80003d74:	00813083          	ld	ra,8(sp)
    80003d78:	00013403          	ld	s0,0(sp)
    80003d7c:	00000513          	li	a0,0
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret
    80003d88:	00002517          	auipc	a0,0x2
    80003d8c:	4b050513          	addi	a0,a0,1200 # 80006238 <_ZZ14__print_uint64mE6digits+0xb8>
    80003d90:	00001097          	auipc	ra,0x1
    80003d94:	8ec080e7          	jalr	-1812(ra) # 8000467c <panic>

0000000080003d98 <trapinit>:
    80003d98:	ff010113          	addi	sp,sp,-16
    80003d9c:	00813423          	sd	s0,8(sp)
    80003da0:	01010413          	addi	s0,sp,16
    80003da4:	00813403          	ld	s0,8(sp)
    80003da8:	00002597          	auipc	a1,0x2
    80003dac:	4b858593          	addi	a1,a1,1208 # 80006260 <_ZZ14__print_uint64mE6digits+0xe0>
    80003db0:	00005517          	auipc	a0,0x5
    80003db4:	1e050513          	addi	a0,a0,480 # 80008f90 <tickslock>
    80003db8:	01010113          	addi	sp,sp,16
    80003dbc:	00001317          	auipc	t1,0x1
    80003dc0:	5cc30067          	jr	1484(t1) # 80005388 <initlock>

0000000080003dc4 <trapinithart>:
    80003dc4:	ff010113          	addi	sp,sp,-16
    80003dc8:	00813423          	sd	s0,8(sp)
    80003dcc:	01010413          	addi	s0,sp,16
    80003dd0:	00000797          	auipc	a5,0x0
    80003dd4:	30078793          	addi	a5,a5,768 # 800040d0 <kernelvec>
    80003dd8:	10579073          	csrw	stvec,a5
    80003ddc:	00813403          	ld	s0,8(sp)
    80003de0:	01010113          	addi	sp,sp,16
    80003de4:	00008067          	ret

0000000080003de8 <usertrap>:
    80003de8:	ff010113          	addi	sp,sp,-16
    80003dec:	00813423          	sd	s0,8(sp)
    80003df0:	01010413          	addi	s0,sp,16
    80003df4:	00813403          	ld	s0,8(sp)
    80003df8:	01010113          	addi	sp,sp,16
    80003dfc:	00008067          	ret

0000000080003e00 <usertrapret>:
    80003e00:	ff010113          	addi	sp,sp,-16
    80003e04:	00813423          	sd	s0,8(sp)
    80003e08:	01010413          	addi	s0,sp,16
    80003e0c:	00813403          	ld	s0,8(sp)
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <kerneltrap>:
    80003e18:	fe010113          	addi	sp,sp,-32
    80003e1c:	00813823          	sd	s0,16(sp)
    80003e20:	00113c23          	sd	ra,24(sp)
    80003e24:	00913423          	sd	s1,8(sp)
    80003e28:	02010413          	addi	s0,sp,32
    80003e2c:	142025f3          	csrr	a1,scause
    80003e30:	100027f3          	csrr	a5,sstatus
    80003e34:	0027f793          	andi	a5,a5,2
    80003e38:	10079c63          	bnez	a5,80003f50 <kerneltrap+0x138>
    80003e3c:	142027f3          	csrr	a5,scause
    80003e40:	0207ce63          	bltz	a5,80003e7c <kerneltrap+0x64>
    80003e44:	00002517          	auipc	a0,0x2
    80003e48:	46450513          	addi	a0,a0,1124 # 800062a8 <_ZZ14__print_uint64mE6digits+0x128>
    80003e4c:	00001097          	auipc	ra,0x1
    80003e50:	88c080e7          	jalr	-1908(ra) # 800046d8 <__printf>
    80003e54:	141025f3          	csrr	a1,sepc
    80003e58:	14302673          	csrr	a2,stval
    80003e5c:	00002517          	auipc	a0,0x2
    80003e60:	45c50513          	addi	a0,a0,1116 # 800062b8 <_ZZ14__print_uint64mE6digits+0x138>
    80003e64:	00001097          	auipc	ra,0x1
    80003e68:	874080e7          	jalr	-1932(ra) # 800046d8 <__printf>
    80003e6c:	00002517          	auipc	a0,0x2
    80003e70:	46450513          	addi	a0,a0,1124 # 800062d0 <_ZZ14__print_uint64mE6digits+0x150>
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	808080e7          	jalr	-2040(ra) # 8000467c <panic>
    80003e7c:	0ff7f713          	andi	a4,a5,255
    80003e80:	00900693          	li	a3,9
    80003e84:	04d70063          	beq	a4,a3,80003ec4 <kerneltrap+0xac>
    80003e88:	fff00713          	li	a4,-1
    80003e8c:	03f71713          	slli	a4,a4,0x3f
    80003e90:	00170713          	addi	a4,a4,1
    80003e94:	fae798e3          	bne	a5,a4,80003e44 <kerneltrap+0x2c>
    80003e98:	00000097          	auipc	ra,0x0
    80003e9c:	e00080e7          	jalr	-512(ra) # 80003c98 <cpuid>
    80003ea0:	06050663          	beqz	a0,80003f0c <kerneltrap+0xf4>
    80003ea4:	144027f3          	csrr	a5,sip
    80003ea8:	ffd7f793          	andi	a5,a5,-3
    80003eac:	14479073          	csrw	sip,a5
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	00813483          	ld	s1,8(sp)
    80003ebc:	02010113          	addi	sp,sp,32
    80003ec0:	00008067          	ret
    80003ec4:	00000097          	auipc	ra,0x0
    80003ec8:	3d0080e7          	jalr	976(ra) # 80004294 <plic_claim>
    80003ecc:	00a00793          	li	a5,10
    80003ed0:	00050493          	mv	s1,a0
    80003ed4:	06f50863          	beq	a0,a5,80003f44 <kerneltrap+0x12c>
    80003ed8:	fc050ce3          	beqz	a0,80003eb0 <kerneltrap+0x98>
    80003edc:	00050593          	mv	a1,a0
    80003ee0:	00002517          	auipc	a0,0x2
    80003ee4:	3a850513          	addi	a0,a0,936 # 80006288 <_ZZ14__print_uint64mE6digits+0x108>
    80003ee8:	00000097          	auipc	ra,0x0
    80003eec:	7f0080e7          	jalr	2032(ra) # 800046d8 <__printf>
    80003ef0:	01013403          	ld	s0,16(sp)
    80003ef4:	01813083          	ld	ra,24(sp)
    80003ef8:	00048513          	mv	a0,s1
    80003efc:	00813483          	ld	s1,8(sp)
    80003f00:	02010113          	addi	sp,sp,32
    80003f04:	00000317          	auipc	t1,0x0
    80003f08:	3c830067          	jr	968(t1) # 800042cc <plic_complete>
    80003f0c:	00005517          	auipc	a0,0x5
    80003f10:	08450513          	addi	a0,a0,132 # 80008f90 <tickslock>
    80003f14:	00001097          	auipc	ra,0x1
    80003f18:	498080e7          	jalr	1176(ra) # 800053ac <acquire>
    80003f1c:	00003717          	auipc	a4,0x3
    80003f20:	6d870713          	addi	a4,a4,1752 # 800075f4 <ticks>
    80003f24:	00072783          	lw	a5,0(a4)
    80003f28:	00005517          	auipc	a0,0x5
    80003f2c:	06850513          	addi	a0,a0,104 # 80008f90 <tickslock>
    80003f30:	0017879b          	addiw	a5,a5,1
    80003f34:	00f72023          	sw	a5,0(a4)
    80003f38:	00001097          	auipc	ra,0x1
    80003f3c:	540080e7          	jalr	1344(ra) # 80005478 <release>
    80003f40:	f65ff06f          	j	80003ea4 <kerneltrap+0x8c>
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	09c080e7          	jalr	156(ra) # 80004fe0 <uartintr>
    80003f4c:	fa5ff06f          	j	80003ef0 <kerneltrap+0xd8>
    80003f50:	00002517          	auipc	a0,0x2
    80003f54:	31850513          	addi	a0,a0,792 # 80006268 <_ZZ14__print_uint64mE6digits+0xe8>
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	724080e7          	jalr	1828(ra) # 8000467c <panic>

0000000080003f60 <clockintr>:
    80003f60:	fe010113          	addi	sp,sp,-32
    80003f64:	00813823          	sd	s0,16(sp)
    80003f68:	00913423          	sd	s1,8(sp)
    80003f6c:	00113c23          	sd	ra,24(sp)
    80003f70:	02010413          	addi	s0,sp,32
    80003f74:	00005497          	auipc	s1,0x5
    80003f78:	01c48493          	addi	s1,s1,28 # 80008f90 <tickslock>
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	42c080e7          	jalr	1068(ra) # 800053ac <acquire>
    80003f88:	00003717          	auipc	a4,0x3
    80003f8c:	66c70713          	addi	a4,a4,1644 # 800075f4 <ticks>
    80003f90:	00072783          	lw	a5,0(a4)
    80003f94:	01013403          	ld	s0,16(sp)
    80003f98:	01813083          	ld	ra,24(sp)
    80003f9c:	00048513          	mv	a0,s1
    80003fa0:	0017879b          	addiw	a5,a5,1
    80003fa4:	00813483          	ld	s1,8(sp)
    80003fa8:	00f72023          	sw	a5,0(a4)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00001317          	auipc	t1,0x1
    80003fb4:	4c830067          	jr	1224(t1) # 80005478 <release>

0000000080003fb8 <devintr>:
    80003fb8:	142027f3          	csrr	a5,scause
    80003fbc:	00000513          	li	a0,0
    80003fc0:	0007c463          	bltz	a5,80003fc8 <devintr+0x10>
    80003fc4:	00008067          	ret
    80003fc8:	fe010113          	addi	sp,sp,-32
    80003fcc:	00813823          	sd	s0,16(sp)
    80003fd0:	00113c23          	sd	ra,24(sp)
    80003fd4:	00913423          	sd	s1,8(sp)
    80003fd8:	02010413          	addi	s0,sp,32
    80003fdc:	0ff7f713          	andi	a4,a5,255
    80003fe0:	00900693          	li	a3,9
    80003fe4:	04d70c63          	beq	a4,a3,8000403c <devintr+0x84>
    80003fe8:	fff00713          	li	a4,-1
    80003fec:	03f71713          	slli	a4,a4,0x3f
    80003ff0:	00170713          	addi	a4,a4,1
    80003ff4:	00e78c63          	beq	a5,a4,8000400c <devintr+0x54>
    80003ff8:	01813083          	ld	ra,24(sp)
    80003ffc:	01013403          	ld	s0,16(sp)
    80004000:	00813483          	ld	s1,8(sp)
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	c8c080e7          	jalr	-884(ra) # 80003c98 <cpuid>
    80004014:	06050663          	beqz	a0,80004080 <devintr+0xc8>
    80004018:	144027f3          	csrr	a5,sip
    8000401c:	ffd7f793          	andi	a5,a5,-3
    80004020:	14479073          	csrw	sip,a5
    80004024:	01813083          	ld	ra,24(sp)
    80004028:	01013403          	ld	s0,16(sp)
    8000402c:	00813483          	ld	s1,8(sp)
    80004030:	00200513          	li	a0,2
    80004034:	02010113          	addi	sp,sp,32
    80004038:	00008067          	ret
    8000403c:	00000097          	auipc	ra,0x0
    80004040:	258080e7          	jalr	600(ra) # 80004294 <plic_claim>
    80004044:	00a00793          	li	a5,10
    80004048:	00050493          	mv	s1,a0
    8000404c:	06f50663          	beq	a0,a5,800040b8 <devintr+0x100>
    80004050:	00100513          	li	a0,1
    80004054:	fa0482e3          	beqz	s1,80003ff8 <devintr+0x40>
    80004058:	00048593          	mv	a1,s1
    8000405c:	00002517          	auipc	a0,0x2
    80004060:	22c50513          	addi	a0,a0,556 # 80006288 <_ZZ14__print_uint64mE6digits+0x108>
    80004064:	00000097          	auipc	ra,0x0
    80004068:	674080e7          	jalr	1652(ra) # 800046d8 <__printf>
    8000406c:	00048513          	mv	a0,s1
    80004070:	00000097          	auipc	ra,0x0
    80004074:	25c080e7          	jalr	604(ra) # 800042cc <plic_complete>
    80004078:	00100513          	li	a0,1
    8000407c:	f7dff06f          	j	80003ff8 <devintr+0x40>
    80004080:	00005517          	auipc	a0,0x5
    80004084:	f1050513          	addi	a0,a0,-240 # 80008f90 <tickslock>
    80004088:	00001097          	auipc	ra,0x1
    8000408c:	324080e7          	jalr	804(ra) # 800053ac <acquire>
    80004090:	00003717          	auipc	a4,0x3
    80004094:	56470713          	addi	a4,a4,1380 # 800075f4 <ticks>
    80004098:	00072783          	lw	a5,0(a4)
    8000409c:	00005517          	auipc	a0,0x5
    800040a0:	ef450513          	addi	a0,a0,-268 # 80008f90 <tickslock>
    800040a4:	0017879b          	addiw	a5,a5,1
    800040a8:	00f72023          	sw	a5,0(a4)
    800040ac:	00001097          	auipc	ra,0x1
    800040b0:	3cc080e7          	jalr	972(ra) # 80005478 <release>
    800040b4:	f65ff06f          	j	80004018 <devintr+0x60>
    800040b8:	00001097          	auipc	ra,0x1
    800040bc:	f28080e7          	jalr	-216(ra) # 80004fe0 <uartintr>
    800040c0:	fadff06f          	j	8000406c <devintr+0xb4>
	...

00000000800040d0 <kernelvec>:
    800040d0:	f0010113          	addi	sp,sp,-256
    800040d4:	00113023          	sd	ra,0(sp)
    800040d8:	00213423          	sd	sp,8(sp)
    800040dc:	00313823          	sd	gp,16(sp)
    800040e0:	00413c23          	sd	tp,24(sp)
    800040e4:	02513023          	sd	t0,32(sp)
    800040e8:	02613423          	sd	t1,40(sp)
    800040ec:	02713823          	sd	t2,48(sp)
    800040f0:	02813c23          	sd	s0,56(sp)
    800040f4:	04913023          	sd	s1,64(sp)
    800040f8:	04a13423          	sd	a0,72(sp)
    800040fc:	04b13823          	sd	a1,80(sp)
    80004100:	04c13c23          	sd	a2,88(sp)
    80004104:	06d13023          	sd	a3,96(sp)
    80004108:	06e13423          	sd	a4,104(sp)
    8000410c:	06f13823          	sd	a5,112(sp)
    80004110:	07013c23          	sd	a6,120(sp)
    80004114:	09113023          	sd	a7,128(sp)
    80004118:	09213423          	sd	s2,136(sp)
    8000411c:	09313823          	sd	s3,144(sp)
    80004120:	09413c23          	sd	s4,152(sp)
    80004124:	0b513023          	sd	s5,160(sp)
    80004128:	0b613423          	sd	s6,168(sp)
    8000412c:	0b713823          	sd	s7,176(sp)
    80004130:	0b813c23          	sd	s8,184(sp)
    80004134:	0d913023          	sd	s9,192(sp)
    80004138:	0da13423          	sd	s10,200(sp)
    8000413c:	0db13823          	sd	s11,208(sp)
    80004140:	0dc13c23          	sd	t3,216(sp)
    80004144:	0fd13023          	sd	t4,224(sp)
    80004148:	0fe13423          	sd	t5,232(sp)
    8000414c:	0ff13823          	sd	t6,240(sp)
    80004150:	cc9ff0ef          	jal	ra,80003e18 <kerneltrap>
    80004154:	00013083          	ld	ra,0(sp)
    80004158:	00813103          	ld	sp,8(sp)
    8000415c:	01013183          	ld	gp,16(sp)
    80004160:	02013283          	ld	t0,32(sp)
    80004164:	02813303          	ld	t1,40(sp)
    80004168:	03013383          	ld	t2,48(sp)
    8000416c:	03813403          	ld	s0,56(sp)
    80004170:	04013483          	ld	s1,64(sp)
    80004174:	04813503          	ld	a0,72(sp)
    80004178:	05013583          	ld	a1,80(sp)
    8000417c:	05813603          	ld	a2,88(sp)
    80004180:	06013683          	ld	a3,96(sp)
    80004184:	06813703          	ld	a4,104(sp)
    80004188:	07013783          	ld	a5,112(sp)
    8000418c:	07813803          	ld	a6,120(sp)
    80004190:	08013883          	ld	a7,128(sp)
    80004194:	08813903          	ld	s2,136(sp)
    80004198:	09013983          	ld	s3,144(sp)
    8000419c:	09813a03          	ld	s4,152(sp)
    800041a0:	0a013a83          	ld	s5,160(sp)
    800041a4:	0a813b03          	ld	s6,168(sp)
    800041a8:	0b013b83          	ld	s7,176(sp)
    800041ac:	0b813c03          	ld	s8,184(sp)
    800041b0:	0c013c83          	ld	s9,192(sp)
    800041b4:	0c813d03          	ld	s10,200(sp)
    800041b8:	0d013d83          	ld	s11,208(sp)
    800041bc:	0d813e03          	ld	t3,216(sp)
    800041c0:	0e013e83          	ld	t4,224(sp)
    800041c4:	0e813f03          	ld	t5,232(sp)
    800041c8:	0f013f83          	ld	t6,240(sp)
    800041cc:	10010113          	addi	sp,sp,256
    800041d0:	10200073          	sret
    800041d4:	00000013          	nop
    800041d8:	00000013          	nop
    800041dc:	00000013          	nop

00000000800041e0 <timervec>:
    800041e0:	34051573          	csrrw	a0,mscratch,a0
    800041e4:	00b53023          	sd	a1,0(a0)
    800041e8:	00c53423          	sd	a2,8(a0)
    800041ec:	00d53823          	sd	a3,16(a0)
    800041f0:	01853583          	ld	a1,24(a0)
    800041f4:	02053603          	ld	a2,32(a0)
    800041f8:	0005b683          	ld	a3,0(a1)
    800041fc:	00c686b3          	add	a3,a3,a2
    80004200:	00d5b023          	sd	a3,0(a1)
    80004204:	00200593          	li	a1,2
    80004208:	14459073          	csrw	sip,a1
    8000420c:	01053683          	ld	a3,16(a0)
    80004210:	00853603          	ld	a2,8(a0)
    80004214:	00053583          	ld	a1,0(a0)
    80004218:	34051573          	csrrw	a0,mscratch,a0
    8000421c:	30200073          	mret

0000000080004220 <plicinit>:
    80004220:	ff010113          	addi	sp,sp,-16
    80004224:	00813423          	sd	s0,8(sp)
    80004228:	01010413          	addi	s0,sp,16
    8000422c:	00813403          	ld	s0,8(sp)
    80004230:	0c0007b7          	lui	a5,0xc000
    80004234:	00100713          	li	a4,1
    80004238:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000423c:	00e7a223          	sw	a4,4(a5)
    80004240:	01010113          	addi	sp,sp,16
    80004244:	00008067          	ret

0000000080004248 <plicinithart>:
    80004248:	ff010113          	addi	sp,sp,-16
    8000424c:	00813023          	sd	s0,0(sp)
    80004250:	00113423          	sd	ra,8(sp)
    80004254:	01010413          	addi	s0,sp,16
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	a40080e7          	jalr	-1472(ra) # 80003c98 <cpuid>
    80004260:	0085171b          	slliw	a4,a0,0x8
    80004264:	0c0027b7          	lui	a5,0xc002
    80004268:	00e787b3          	add	a5,a5,a4
    8000426c:	40200713          	li	a4,1026
    80004270:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004274:	00813083          	ld	ra,8(sp)
    80004278:	00013403          	ld	s0,0(sp)
    8000427c:	00d5151b          	slliw	a0,a0,0xd
    80004280:	0c2017b7          	lui	a5,0xc201
    80004284:	00a78533          	add	a0,a5,a0
    80004288:	00052023          	sw	zero,0(a0)
    8000428c:	01010113          	addi	sp,sp,16
    80004290:	00008067          	ret

0000000080004294 <plic_claim>:
    80004294:	ff010113          	addi	sp,sp,-16
    80004298:	00813023          	sd	s0,0(sp)
    8000429c:	00113423          	sd	ra,8(sp)
    800042a0:	01010413          	addi	s0,sp,16
    800042a4:	00000097          	auipc	ra,0x0
    800042a8:	9f4080e7          	jalr	-1548(ra) # 80003c98 <cpuid>
    800042ac:	00813083          	ld	ra,8(sp)
    800042b0:	00013403          	ld	s0,0(sp)
    800042b4:	00d5151b          	slliw	a0,a0,0xd
    800042b8:	0c2017b7          	lui	a5,0xc201
    800042bc:	00a78533          	add	a0,a5,a0
    800042c0:	00452503          	lw	a0,4(a0)
    800042c4:	01010113          	addi	sp,sp,16
    800042c8:	00008067          	ret

00000000800042cc <plic_complete>:
    800042cc:	fe010113          	addi	sp,sp,-32
    800042d0:	00813823          	sd	s0,16(sp)
    800042d4:	00913423          	sd	s1,8(sp)
    800042d8:	00113c23          	sd	ra,24(sp)
    800042dc:	02010413          	addi	s0,sp,32
    800042e0:	00050493          	mv	s1,a0
    800042e4:	00000097          	auipc	ra,0x0
    800042e8:	9b4080e7          	jalr	-1612(ra) # 80003c98 <cpuid>
    800042ec:	01813083          	ld	ra,24(sp)
    800042f0:	01013403          	ld	s0,16(sp)
    800042f4:	00d5179b          	slliw	a5,a0,0xd
    800042f8:	0c201737          	lui	a4,0xc201
    800042fc:	00f707b3          	add	a5,a4,a5
    80004300:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004304:	00813483          	ld	s1,8(sp)
    80004308:	02010113          	addi	sp,sp,32
    8000430c:	00008067          	ret

0000000080004310 <consolewrite>:
    80004310:	fb010113          	addi	sp,sp,-80
    80004314:	04813023          	sd	s0,64(sp)
    80004318:	04113423          	sd	ra,72(sp)
    8000431c:	02913c23          	sd	s1,56(sp)
    80004320:	03213823          	sd	s2,48(sp)
    80004324:	03313423          	sd	s3,40(sp)
    80004328:	03413023          	sd	s4,32(sp)
    8000432c:	01513c23          	sd	s5,24(sp)
    80004330:	05010413          	addi	s0,sp,80
    80004334:	06c05c63          	blez	a2,800043ac <consolewrite+0x9c>
    80004338:	00060993          	mv	s3,a2
    8000433c:	00050a13          	mv	s4,a0
    80004340:	00058493          	mv	s1,a1
    80004344:	00000913          	li	s2,0
    80004348:	fff00a93          	li	s5,-1
    8000434c:	01c0006f          	j	80004368 <consolewrite+0x58>
    80004350:	fbf44503          	lbu	a0,-65(s0)
    80004354:	0019091b          	addiw	s2,s2,1
    80004358:	00148493          	addi	s1,s1,1
    8000435c:	00001097          	auipc	ra,0x1
    80004360:	a9c080e7          	jalr	-1380(ra) # 80004df8 <uartputc>
    80004364:	03298063          	beq	s3,s2,80004384 <consolewrite+0x74>
    80004368:	00048613          	mv	a2,s1
    8000436c:	00100693          	li	a3,1
    80004370:	000a0593          	mv	a1,s4
    80004374:	fbf40513          	addi	a0,s0,-65
    80004378:	00000097          	auipc	ra,0x0
    8000437c:	9d8080e7          	jalr	-1576(ra) # 80003d50 <either_copyin>
    80004380:	fd5518e3          	bne	a0,s5,80004350 <consolewrite+0x40>
    80004384:	04813083          	ld	ra,72(sp)
    80004388:	04013403          	ld	s0,64(sp)
    8000438c:	03813483          	ld	s1,56(sp)
    80004390:	02813983          	ld	s3,40(sp)
    80004394:	02013a03          	ld	s4,32(sp)
    80004398:	01813a83          	ld	s5,24(sp)
    8000439c:	00090513          	mv	a0,s2
    800043a0:	03013903          	ld	s2,48(sp)
    800043a4:	05010113          	addi	sp,sp,80
    800043a8:	00008067          	ret
    800043ac:	00000913          	li	s2,0
    800043b0:	fd5ff06f          	j	80004384 <consolewrite+0x74>

00000000800043b4 <consoleread>:
    800043b4:	f9010113          	addi	sp,sp,-112
    800043b8:	06813023          	sd	s0,96(sp)
    800043bc:	04913c23          	sd	s1,88(sp)
    800043c0:	05213823          	sd	s2,80(sp)
    800043c4:	05313423          	sd	s3,72(sp)
    800043c8:	05413023          	sd	s4,64(sp)
    800043cc:	03513c23          	sd	s5,56(sp)
    800043d0:	03613823          	sd	s6,48(sp)
    800043d4:	03713423          	sd	s7,40(sp)
    800043d8:	03813023          	sd	s8,32(sp)
    800043dc:	06113423          	sd	ra,104(sp)
    800043e0:	01913c23          	sd	s9,24(sp)
    800043e4:	07010413          	addi	s0,sp,112
    800043e8:	00060b93          	mv	s7,a2
    800043ec:	00050913          	mv	s2,a0
    800043f0:	00058c13          	mv	s8,a1
    800043f4:	00060b1b          	sext.w	s6,a2
    800043f8:	00005497          	auipc	s1,0x5
    800043fc:	bc048493          	addi	s1,s1,-1088 # 80008fb8 <cons>
    80004400:	00400993          	li	s3,4
    80004404:	fff00a13          	li	s4,-1
    80004408:	00a00a93          	li	s5,10
    8000440c:	05705e63          	blez	s7,80004468 <consoleread+0xb4>
    80004410:	09c4a703          	lw	a4,156(s1)
    80004414:	0984a783          	lw	a5,152(s1)
    80004418:	0007071b          	sext.w	a4,a4
    8000441c:	08e78463          	beq	a5,a4,800044a4 <consoleread+0xf0>
    80004420:	07f7f713          	andi	a4,a5,127
    80004424:	00e48733          	add	a4,s1,a4
    80004428:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000442c:	0017869b          	addiw	a3,a5,1
    80004430:	08d4ac23          	sw	a3,152(s1)
    80004434:	00070c9b          	sext.w	s9,a4
    80004438:	0b370663          	beq	a4,s3,800044e4 <consoleread+0x130>
    8000443c:	00100693          	li	a3,1
    80004440:	f9f40613          	addi	a2,s0,-97
    80004444:	000c0593          	mv	a1,s8
    80004448:	00090513          	mv	a0,s2
    8000444c:	f8e40fa3          	sb	a4,-97(s0)
    80004450:	00000097          	auipc	ra,0x0
    80004454:	8b4080e7          	jalr	-1868(ra) # 80003d04 <either_copyout>
    80004458:	01450863          	beq	a0,s4,80004468 <consoleread+0xb4>
    8000445c:	001c0c13          	addi	s8,s8,1
    80004460:	fffb8b9b          	addiw	s7,s7,-1
    80004464:	fb5c94e3          	bne	s9,s5,8000440c <consoleread+0x58>
    80004468:	000b851b          	sext.w	a0,s7
    8000446c:	06813083          	ld	ra,104(sp)
    80004470:	06013403          	ld	s0,96(sp)
    80004474:	05813483          	ld	s1,88(sp)
    80004478:	05013903          	ld	s2,80(sp)
    8000447c:	04813983          	ld	s3,72(sp)
    80004480:	04013a03          	ld	s4,64(sp)
    80004484:	03813a83          	ld	s5,56(sp)
    80004488:	02813b83          	ld	s7,40(sp)
    8000448c:	02013c03          	ld	s8,32(sp)
    80004490:	01813c83          	ld	s9,24(sp)
    80004494:	40ab053b          	subw	a0,s6,a0
    80004498:	03013b03          	ld	s6,48(sp)
    8000449c:	07010113          	addi	sp,sp,112
    800044a0:	00008067          	ret
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	1d8080e7          	jalr	472(ra) # 8000567c <push_on>
    800044ac:	0984a703          	lw	a4,152(s1)
    800044b0:	09c4a783          	lw	a5,156(s1)
    800044b4:	0007879b          	sext.w	a5,a5
    800044b8:	fef70ce3          	beq	a4,a5,800044b0 <consoleread+0xfc>
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	234080e7          	jalr	564(ra) # 800056f0 <pop_on>
    800044c4:	0984a783          	lw	a5,152(s1)
    800044c8:	07f7f713          	andi	a4,a5,127
    800044cc:	00e48733          	add	a4,s1,a4
    800044d0:	01874703          	lbu	a4,24(a4)
    800044d4:	0017869b          	addiw	a3,a5,1
    800044d8:	08d4ac23          	sw	a3,152(s1)
    800044dc:	00070c9b          	sext.w	s9,a4
    800044e0:	f5371ee3          	bne	a4,s3,8000443c <consoleread+0x88>
    800044e4:	000b851b          	sext.w	a0,s7
    800044e8:	f96bf2e3          	bgeu	s7,s6,8000446c <consoleread+0xb8>
    800044ec:	08f4ac23          	sw	a5,152(s1)
    800044f0:	f7dff06f          	j	8000446c <consoleread+0xb8>

00000000800044f4 <consputc>:
    800044f4:	10000793          	li	a5,256
    800044f8:	00f50663          	beq	a0,a5,80004504 <consputc+0x10>
    800044fc:	00001317          	auipc	t1,0x1
    80004500:	9f430067          	jr	-1548(t1) # 80004ef0 <uartputc_sync>
    80004504:	ff010113          	addi	sp,sp,-16
    80004508:	00113423          	sd	ra,8(sp)
    8000450c:	00813023          	sd	s0,0(sp)
    80004510:	01010413          	addi	s0,sp,16
    80004514:	00800513          	li	a0,8
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	9d8080e7          	jalr	-1576(ra) # 80004ef0 <uartputc_sync>
    80004520:	02000513          	li	a0,32
    80004524:	00001097          	auipc	ra,0x1
    80004528:	9cc080e7          	jalr	-1588(ra) # 80004ef0 <uartputc_sync>
    8000452c:	00013403          	ld	s0,0(sp)
    80004530:	00813083          	ld	ra,8(sp)
    80004534:	00800513          	li	a0,8
    80004538:	01010113          	addi	sp,sp,16
    8000453c:	00001317          	auipc	t1,0x1
    80004540:	9b430067          	jr	-1612(t1) # 80004ef0 <uartputc_sync>

0000000080004544 <consoleintr>:
    80004544:	fe010113          	addi	sp,sp,-32
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	01213023          	sd	s2,0(sp)
    80004554:	00113c23          	sd	ra,24(sp)
    80004558:	02010413          	addi	s0,sp,32
    8000455c:	00005917          	auipc	s2,0x5
    80004560:	a5c90913          	addi	s2,s2,-1444 # 80008fb8 <cons>
    80004564:	00050493          	mv	s1,a0
    80004568:	00090513          	mv	a0,s2
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	e40080e7          	jalr	-448(ra) # 800053ac <acquire>
    80004574:	02048c63          	beqz	s1,800045ac <consoleintr+0x68>
    80004578:	0a092783          	lw	a5,160(s2)
    8000457c:	09892703          	lw	a4,152(s2)
    80004580:	07f00693          	li	a3,127
    80004584:	40e7873b          	subw	a4,a5,a4
    80004588:	02e6e263          	bltu	a3,a4,800045ac <consoleintr+0x68>
    8000458c:	00d00713          	li	a4,13
    80004590:	04e48063          	beq	s1,a4,800045d0 <consoleintr+0x8c>
    80004594:	07f7f713          	andi	a4,a5,127
    80004598:	00e90733          	add	a4,s2,a4
    8000459c:	0017879b          	addiw	a5,a5,1
    800045a0:	0af92023          	sw	a5,160(s2)
    800045a4:	00970c23          	sb	s1,24(a4)
    800045a8:	08f92e23          	sw	a5,156(s2)
    800045ac:	01013403          	ld	s0,16(sp)
    800045b0:	01813083          	ld	ra,24(sp)
    800045b4:	00813483          	ld	s1,8(sp)
    800045b8:	00013903          	ld	s2,0(sp)
    800045bc:	00005517          	auipc	a0,0x5
    800045c0:	9fc50513          	addi	a0,a0,-1540 # 80008fb8 <cons>
    800045c4:	02010113          	addi	sp,sp,32
    800045c8:	00001317          	auipc	t1,0x1
    800045cc:	eb030067          	jr	-336(t1) # 80005478 <release>
    800045d0:	00a00493          	li	s1,10
    800045d4:	fc1ff06f          	j	80004594 <consoleintr+0x50>

00000000800045d8 <consoleinit>:
    800045d8:	fe010113          	addi	sp,sp,-32
    800045dc:	00113c23          	sd	ra,24(sp)
    800045e0:	00813823          	sd	s0,16(sp)
    800045e4:	00913423          	sd	s1,8(sp)
    800045e8:	02010413          	addi	s0,sp,32
    800045ec:	00005497          	auipc	s1,0x5
    800045f0:	9cc48493          	addi	s1,s1,-1588 # 80008fb8 <cons>
    800045f4:	00048513          	mv	a0,s1
    800045f8:	00002597          	auipc	a1,0x2
    800045fc:	ce858593          	addi	a1,a1,-792 # 800062e0 <_ZZ14__print_uint64mE6digits+0x160>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	d88080e7          	jalr	-632(ra) # 80005388 <initlock>
    80004608:	00000097          	auipc	ra,0x0
    8000460c:	7ac080e7          	jalr	1964(ra) # 80004db4 <uartinit>
    80004610:	01813083          	ld	ra,24(sp)
    80004614:	01013403          	ld	s0,16(sp)
    80004618:	00000797          	auipc	a5,0x0
    8000461c:	d9c78793          	addi	a5,a5,-612 # 800043b4 <consoleread>
    80004620:	0af4bc23          	sd	a5,184(s1)
    80004624:	00000797          	auipc	a5,0x0
    80004628:	cec78793          	addi	a5,a5,-788 # 80004310 <consolewrite>
    8000462c:	0cf4b023          	sd	a5,192(s1)
    80004630:	00813483          	ld	s1,8(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	00008067          	ret

000000008000463c <console_read>:
    8000463c:	ff010113          	addi	sp,sp,-16
    80004640:	00813423          	sd	s0,8(sp)
    80004644:	01010413          	addi	s0,sp,16
    80004648:	00813403          	ld	s0,8(sp)
    8000464c:	00005317          	auipc	t1,0x5
    80004650:	a2433303          	ld	t1,-1500(t1) # 80009070 <devsw+0x10>
    80004654:	01010113          	addi	sp,sp,16
    80004658:	00030067          	jr	t1

000000008000465c <console_write>:
    8000465c:	ff010113          	addi	sp,sp,-16
    80004660:	00813423          	sd	s0,8(sp)
    80004664:	01010413          	addi	s0,sp,16
    80004668:	00813403          	ld	s0,8(sp)
    8000466c:	00005317          	auipc	t1,0x5
    80004670:	a0c33303          	ld	t1,-1524(t1) # 80009078 <devsw+0x18>
    80004674:	01010113          	addi	sp,sp,16
    80004678:	00030067          	jr	t1

000000008000467c <panic>:
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	00813823          	sd	s0,16(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	02010413          	addi	s0,sp,32
    80004690:	00050493          	mv	s1,a0
    80004694:	00002517          	auipc	a0,0x2
    80004698:	c5450513          	addi	a0,a0,-940 # 800062e8 <_ZZ14__print_uint64mE6digits+0x168>
    8000469c:	00005797          	auipc	a5,0x5
    800046a0:	a607ae23          	sw	zero,-1412(a5) # 80009118 <pr+0x18>
    800046a4:	00000097          	auipc	ra,0x0
    800046a8:	034080e7          	jalr	52(ra) # 800046d8 <__printf>
    800046ac:	00048513          	mv	a0,s1
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	028080e7          	jalr	40(ra) # 800046d8 <__printf>
    800046b8:	00002517          	auipc	a0,0x2
    800046bc:	c1050513          	addi	a0,a0,-1008 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	018080e7          	jalr	24(ra) # 800046d8 <__printf>
    800046c8:	00100793          	li	a5,1
    800046cc:	00003717          	auipc	a4,0x3
    800046d0:	f2f72623          	sw	a5,-212(a4) # 800075f8 <panicked>
    800046d4:	0000006f          	j	800046d4 <panic+0x58>

00000000800046d8 <__printf>:
    800046d8:	f3010113          	addi	sp,sp,-208
    800046dc:	08813023          	sd	s0,128(sp)
    800046e0:	07313423          	sd	s3,104(sp)
    800046e4:	09010413          	addi	s0,sp,144
    800046e8:	05813023          	sd	s8,64(sp)
    800046ec:	08113423          	sd	ra,136(sp)
    800046f0:	06913c23          	sd	s1,120(sp)
    800046f4:	07213823          	sd	s2,112(sp)
    800046f8:	07413023          	sd	s4,96(sp)
    800046fc:	05513c23          	sd	s5,88(sp)
    80004700:	05613823          	sd	s6,80(sp)
    80004704:	05713423          	sd	s7,72(sp)
    80004708:	03913c23          	sd	s9,56(sp)
    8000470c:	03a13823          	sd	s10,48(sp)
    80004710:	03b13423          	sd	s11,40(sp)
    80004714:	00005317          	auipc	t1,0x5
    80004718:	9ec30313          	addi	t1,t1,-1556 # 80009100 <pr>
    8000471c:	01832c03          	lw	s8,24(t1)
    80004720:	00b43423          	sd	a1,8(s0)
    80004724:	00c43823          	sd	a2,16(s0)
    80004728:	00d43c23          	sd	a3,24(s0)
    8000472c:	02e43023          	sd	a4,32(s0)
    80004730:	02f43423          	sd	a5,40(s0)
    80004734:	03043823          	sd	a6,48(s0)
    80004738:	03143c23          	sd	a7,56(s0)
    8000473c:	00050993          	mv	s3,a0
    80004740:	4a0c1663          	bnez	s8,80004bec <__printf+0x514>
    80004744:	60098c63          	beqz	s3,80004d5c <__printf+0x684>
    80004748:	0009c503          	lbu	a0,0(s3)
    8000474c:	00840793          	addi	a5,s0,8
    80004750:	f6f43c23          	sd	a5,-136(s0)
    80004754:	00000493          	li	s1,0
    80004758:	22050063          	beqz	a0,80004978 <__printf+0x2a0>
    8000475c:	00002a37          	lui	s4,0x2
    80004760:	00018ab7          	lui	s5,0x18
    80004764:	000f4b37          	lui	s6,0xf4
    80004768:	00989bb7          	lui	s7,0x989
    8000476c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004770:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004774:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004778:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000477c:	00148c9b          	addiw	s9,s1,1
    80004780:	02500793          	li	a5,37
    80004784:	01998933          	add	s2,s3,s9
    80004788:	38f51263          	bne	a0,a5,80004b0c <__printf+0x434>
    8000478c:	00094783          	lbu	a5,0(s2)
    80004790:	00078c9b          	sext.w	s9,a5
    80004794:	1e078263          	beqz	a5,80004978 <__printf+0x2a0>
    80004798:	0024849b          	addiw	s1,s1,2
    8000479c:	07000713          	li	a4,112
    800047a0:	00998933          	add	s2,s3,s1
    800047a4:	38e78a63          	beq	a5,a4,80004b38 <__printf+0x460>
    800047a8:	20f76863          	bltu	a4,a5,800049b8 <__printf+0x2e0>
    800047ac:	42a78863          	beq	a5,a0,80004bdc <__printf+0x504>
    800047b0:	06400713          	li	a4,100
    800047b4:	40e79663          	bne	a5,a4,80004bc0 <__printf+0x4e8>
    800047b8:	f7843783          	ld	a5,-136(s0)
    800047bc:	0007a603          	lw	a2,0(a5)
    800047c0:	00878793          	addi	a5,a5,8
    800047c4:	f6f43c23          	sd	a5,-136(s0)
    800047c8:	42064a63          	bltz	a2,80004bfc <__printf+0x524>
    800047cc:	00a00713          	li	a4,10
    800047d0:	02e677bb          	remuw	a5,a2,a4
    800047d4:	00002d97          	auipc	s11,0x2
    800047d8:	b3cd8d93          	addi	s11,s11,-1220 # 80006310 <digits>
    800047dc:	00900593          	li	a1,9
    800047e0:	0006051b          	sext.w	a0,a2
    800047e4:	00000c93          	li	s9,0
    800047e8:	02079793          	slli	a5,a5,0x20
    800047ec:	0207d793          	srli	a5,a5,0x20
    800047f0:	00fd87b3          	add	a5,s11,a5
    800047f4:	0007c783          	lbu	a5,0(a5)
    800047f8:	02e656bb          	divuw	a3,a2,a4
    800047fc:	f8f40023          	sb	a5,-128(s0)
    80004800:	14c5d863          	bge	a1,a2,80004950 <__printf+0x278>
    80004804:	06300593          	li	a1,99
    80004808:	00100c93          	li	s9,1
    8000480c:	02e6f7bb          	remuw	a5,a3,a4
    80004810:	02079793          	slli	a5,a5,0x20
    80004814:	0207d793          	srli	a5,a5,0x20
    80004818:	00fd87b3          	add	a5,s11,a5
    8000481c:	0007c783          	lbu	a5,0(a5)
    80004820:	02e6d73b          	divuw	a4,a3,a4
    80004824:	f8f400a3          	sb	a5,-127(s0)
    80004828:	12a5f463          	bgeu	a1,a0,80004950 <__printf+0x278>
    8000482c:	00a00693          	li	a3,10
    80004830:	00900593          	li	a1,9
    80004834:	02d777bb          	remuw	a5,a4,a3
    80004838:	02079793          	slli	a5,a5,0x20
    8000483c:	0207d793          	srli	a5,a5,0x20
    80004840:	00fd87b3          	add	a5,s11,a5
    80004844:	0007c503          	lbu	a0,0(a5)
    80004848:	02d757bb          	divuw	a5,a4,a3
    8000484c:	f8a40123          	sb	a0,-126(s0)
    80004850:	48e5f263          	bgeu	a1,a4,80004cd4 <__printf+0x5fc>
    80004854:	06300513          	li	a0,99
    80004858:	02d7f5bb          	remuw	a1,a5,a3
    8000485c:	02059593          	slli	a1,a1,0x20
    80004860:	0205d593          	srli	a1,a1,0x20
    80004864:	00bd85b3          	add	a1,s11,a1
    80004868:	0005c583          	lbu	a1,0(a1)
    8000486c:	02d7d7bb          	divuw	a5,a5,a3
    80004870:	f8b401a3          	sb	a1,-125(s0)
    80004874:	48e57263          	bgeu	a0,a4,80004cf8 <__printf+0x620>
    80004878:	3e700513          	li	a0,999
    8000487c:	02d7f5bb          	remuw	a1,a5,a3
    80004880:	02059593          	slli	a1,a1,0x20
    80004884:	0205d593          	srli	a1,a1,0x20
    80004888:	00bd85b3          	add	a1,s11,a1
    8000488c:	0005c583          	lbu	a1,0(a1)
    80004890:	02d7d7bb          	divuw	a5,a5,a3
    80004894:	f8b40223          	sb	a1,-124(s0)
    80004898:	46e57663          	bgeu	a0,a4,80004d04 <__printf+0x62c>
    8000489c:	02d7f5bb          	remuw	a1,a5,a3
    800048a0:	02059593          	slli	a1,a1,0x20
    800048a4:	0205d593          	srli	a1,a1,0x20
    800048a8:	00bd85b3          	add	a1,s11,a1
    800048ac:	0005c583          	lbu	a1,0(a1)
    800048b0:	02d7d7bb          	divuw	a5,a5,a3
    800048b4:	f8b402a3          	sb	a1,-123(s0)
    800048b8:	46ea7863          	bgeu	s4,a4,80004d28 <__printf+0x650>
    800048bc:	02d7f5bb          	remuw	a1,a5,a3
    800048c0:	02059593          	slli	a1,a1,0x20
    800048c4:	0205d593          	srli	a1,a1,0x20
    800048c8:	00bd85b3          	add	a1,s11,a1
    800048cc:	0005c583          	lbu	a1,0(a1)
    800048d0:	02d7d7bb          	divuw	a5,a5,a3
    800048d4:	f8b40323          	sb	a1,-122(s0)
    800048d8:	3eeaf863          	bgeu	s5,a4,80004cc8 <__printf+0x5f0>
    800048dc:	02d7f5bb          	remuw	a1,a5,a3
    800048e0:	02059593          	slli	a1,a1,0x20
    800048e4:	0205d593          	srli	a1,a1,0x20
    800048e8:	00bd85b3          	add	a1,s11,a1
    800048ec:	0005c583          	lbu	a1,0(a1)
    800048f0:	02d7d7bb          	divuw	a5,a5,a3
    800048f4:	f8b403a3          	sb	a1,-121(s0)
    800048f8:	42eb7e63          	bgeu	s6,a4,80004d34 <__printf+0x65c>
    800048fc:	02d7f5bb          	remuw	a1,a5,a3
    80004900:	02059593          	slli	a1,a1,0x20
    80004904:	0205d593          	srli	a1,a1,0x20
    80004908:	00bd85b3          	add	a1,s11,a1
    8000490c:	0005c583          	lbu	a1,0(a1)
    80004910:	02d7d7bb          	divuw	a5,a5,a3
    80004914:	f8b40423          	sb	a1,-120(s0)
    80004918:	42ebfc63          	bgeu	s7,a4,80004d50 <__printf+0x678>
    8000491c:	02079793          	slli	a5,a5,0x20
    80004920:	0207d793          	srli	a5,a5,0x20
    80004924:	00fd8db3          	add	s11,s11,a5
    80004928:	000dc703          	lbu	a4,0(s11)
    8000492c:	00a00793          	li	a5,10
    80004930:	00900c93          	li	s9,9
    80004934:	f8e404a3          	sb	a4,-119(s0)
    80004938:	00065c63          	bgez	a2,80004950 <__printf+0x278>
    8000493c:	f9040713          	addi	a4,s0,-112
    80004940:	00f70733          	add	a4,a4,a5
    80004944:	02d00693          	li	a3,45
    80004948:	fed70823          	sb	a3,-16(a4)
    8000494c:	00078c93          	mv	s9,a5
    80004950:	f8040793          	addi	a5,s0,-128
    80004954:	01978cb3          	add	s9,a5,s9
    80004958:	f7f40d13          	addi	s10,s0,-129
    8000495c:	000cc503          	lbu	a0,0(s9)
    80004960:	fffc8c93          	addi	s9,s9,-1
    80004964:	00000097          	auipc	ra,0x0
    80004968:	b90080e7          	jalr	-1136(ra) # 800044f4 <consputc>
    8000496c:	ffac98e3          	bne	s9,s10,8000495c <__printf+0x284>
    80004970:	00094503          	lbu	a0,0(s2)
    80004974:	e00514e3          	bnez	a0,8000477c <__printf+0xa4>
    80004978:	1a0c1663          	bnez	s8,80004b24 <__printf+0x44c>
    8000497c:	08813083          	ld	ra,136(sp)
    80004980:	08013403          	ld	s0,128(sp)
    80004984:	07813483          	ld	s1,120(sp)
    80004988:	07013903          	ld	s2,112(sp)
    8000498c:	06813983          	ld	s3,104(sp)
    80004990:	06013a03          	ld	s4,96(sp)
    80004994:	05813a83          	ld	s5,88(sp)
    80004998:	05013b03          	ld	s6,80(sp)
    8000499c:	04813b83          	ld	s7,72(sp)
    800049a0:	04013c03          	ld	s8,64(sp)
    800049a4:	03813c83          	ld	s9,56(sp)
    800049a8:	03013d03          	ld	s10,48(sp)
    800049ac:	02813d83          	ld	s11,40(sp)
    800049b0:	0d010113          	addi	sp,sp,208
    800049b4:	00008067          	ret
    800049b8:	07300713          	li	a4,115
    800049bc:	1ce78a63          	beq	a5,a4,80004b90 <__printf+0x4b8>
    800049c0:	07800713          	li	a4,120
    800049c4:	1ee79e63          	bne	a5,a4,80004bc0 <__printf+0x4e8>
    800049c8:	f7843783          	ld	a5,-136(s0)
    800049cc:	0007a703          	lw	a4,0(a5)
    800049d0:	00878793          	addi	a5,a5,8
    800049d4:	f6f43c23          	sd	a5,-136(s0)
    800049d8:	28074263          	bltz	a4,80004c5c <__printf+0x584>
    800049dc:	00002d97          	auipc	s11,0x2
    800049e0:	934d8d93          	addi	s11,s11,-1740 # 80006310 <digits>
    800049e4:	00f77793          	andi	a5,a4,15
    800049e8:	00fd87b3          	add	a5,s11,a5
    800049ec:	0007c683          	lbu	a3,0(a5)
    800049f0:	00f00613          	li	a2,15
    800049f4:	0007079b          	sext.w	a5,a4
    800049f8:	f8d40023          	sb	a3,-128(s0)
    800049fc:	0047559b          	srliw	a1,a4,0x4
    80004a00:	0047569b          	srliw	a3,a4,0x4
    80004a04:	00000c93          	li	s9,0
    80004a08:	0ee65063          	bge	a2,a4,80004ae8 <__printf+0x410>
    80004a0c:	00f6f693          	andi	a3,a3,15
    80004a10:	00dd86b3          	add	a3,s11,a3
    80004a14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004a18:	0087d79b          	srliw	a5,a5,0x8
    80004a1c:	00100c93          	li	s9,1
    80004a20:	f8d400a3          	sb	a3,-127(s0)
    80004a24:	0cb67263          	bgeu	a2,a1,80004ae8 <__printf+0x410>
    80004a28:	00f7f693          	andi	a3,a5,15
    80004a2c:	00dd86b3          	add	a3,s11,a3
    80004a30:	0006c583          	lbu	a1,0(a3)
    80004a34:	00f00613          	li	a2,15
    80004a38:	0047d69b          	srliw	a3,a5,0x4
    80004a3c:	f8b40123          	sb	a1,-126(s0)
    80004a40:	0047d593          	srli	a1,a5,0x4
    80004a44:	28f67e63          	bgeu	a2,a5,80004ce0 <__printf+0x608>
    80004a48:	00f6f693          	andi	a3,a3,15
    80004a4c:	00dd86b3          	add	a3,s11,a3
    80004a50:	0006c503          	lbu	a0,0(a3)
    80004a54:	0087d813          	srli	a6,a5,0x8
    80004a58:	0087d69b          	srliw	a3,a5,0x8
    80004a5c:	f8a401a3          	sb	a0,-125(s0)
    80004a60:	28b67663          	bgeu	a2,a1,80004cec <__printf+0x614>
    80004a64:	00f6f693          	andi	a3,a3,15
    80004a68:	00dd86b3          	add	a3,s11,a3
    80004a6c:	0006c583          	lbu	a1,0(a3)
    80004a70:	00c7d513          	srli	a0,a5,0xc
    80004a74:	00c7d69b          	srliw	a3,a5,0xc
    80004a78:	f8b40223          	sb	a1,-124(s0)
    80004a7c:	29067a63          	bgeu	a2,a6,80004d10 <__printf+0x638>
    80004a80:	00f6f693          	andi	a3,a3,15
    80004a84:	00dd86b3          	add	a3,s11,a3
    80004a88:	0006c583          	lbu	a1,0(a3)
    80004a8c:	0107d813          	srli	a6,a5,0x10
    80004a90:	0107d69b          	srliw	a3,a5,0x10
    80004a94:	f8b402a3          	sb	a1,-123(s0)
    80004a98:	28a67263          	bgeu	a2,a0,80004d1c <__printf+0x644>
    80004a9c:	00f6f693          	andi	a3,a3,15
    80004aa0:	00dd86b3          	add	a3,s11,a3
    80004aa4:	0006c683          	lbu	a3,0(a3)
    80004aa8:	0147d79b          	srliw	a5,a5,0x14
    80004aac:	f8d40323          	sb	a3,-122(s0)
    80004ab0:	21067663          	bgeu	a2,a6,80004cbc <__printf+0x5e4>
    80004ab4:	02079793          	slli	a5,a5,0x20
    80004ab8:	0207d793          	srli	a5,a5,0x20
    80004abc:	00fd8db3          	add	s11,s11,a5
    80004ac0:	000dc683          	lbu	a3,0(s11)
    80004ac4:	00800793          	li	a5,8
    80004ac8:	00700c93          	li	s9,7
    80004acc:	f8d403a3          	sb	a3,-121(s0)
    80004ad0:	00075c63          	bgez	a4,80004ae8 <__printf+0x410>
    80004ad4:	f9040713          	addi	a4,s0,-112
    80004ad8:	00f70733          	add	a4,a4,a5
    80004adc:	02d00693          	li	a3,45
    80004ae0:	fed70823          	sb	a3,-16(a4)
    80004ae4:	00078c93          	mv	s9,a5
    80004ae8:	f8040793          	addi	a5,s0,-128
    80004aec:	01978cb3          	add	s9,a5,s9
    80004af0:	f7f40d13          	addi	s10,s0,-129
    80004af4:	000cc503          	lbu	a0,0(s9)
    80004af8:	fffc8c93          	addi	s9,s9,-1
    80004afc:	00000097          	auipc	ra,0x0
    80004b00:	9f8080e7          	jalr	-1544(ra) # 800044f4 <consputc>
    80004b04:	ff9d18e3          	bne	s10,s9,80004af4 <__printf+0x41c>
    80004b08:	0100006f          	j	80004b18 <__printf+0x440>
    80004b0c:	00000097          	auipc	ra,0x0
    80004b10:	9e8080e7          	jalr	-1560(ra) # 800044f4 <consputc>
    80004b14:	000c8493          	mv	s1,s9
    80004b18:	00094503          	lbu	a0,0(s2)
    80004b1c:	c60510e3          	bnez	a0,8000477c <__printf+0xa4>
    80004b20:	e40c0ee3          	beqz	s8,8000497c <__printf+0x2a4>
    80004b24:	00004517          	auipc	a0,0x4
    80004b28:	5dc50513          	addi	a0,a0,1500 # 80009100 <pr>
    80004b2c:	00001097          	auipc	ra,0x1
    80004b30:	94c080e7          	jalr	-1716(ra) # 80005478 <release>
    80004b34:	e49ff06f          	j	8000497c <__printf+0x2a4>
    80004b38:	f7843783          	ld	a5,-136(s0)
    80004b3c:	03000513          	li	a0,48
    80004b40:	01000d13          	li	s10,16
    80004b44:	00878713          	addi	a4,a5,8
    80004b48:	0007bc83          	ld	s9,0(a5)
    80004b4c:	f6e43c23          	sd	a4,-136(s0)
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	9a4080e7          	jalr	-1628(ra) # 800044f4 <consputc>
    80004b58:	07800513          	li	a0,120
    80004b5c:	00000097          	auipc	ra,0x0
    80004b60:	998080e7          	jalr	-1640(ra) # 800044f4 <consputc>
    80004b64:	00001d97          	auipc	s11,0x1
    80004b68:	7acd8d93          	addi	s11,s11,1964 # 80006310 <digits>
    80004b6c:	03ccd793          	srli	a5,s9,0x3c
    80004b70:	00fd87b3          	add	a5,s11,a5
    80004b74:	0007c503          	lbu	a0,0(a5)
    80004b78:	fffd0d1b          	addiw	s10,s10,-1
    80004b7c:	004c9c93          	slli	s9,s9,0x4
    80004b80:	00000097          	auipc	ra,0x0
    80004b84:	974080e7          	jalr	-1676(ra) # 800044f4 <consputc>
    80004b88:	fe0d12e3          	bnez	s10,80004b6c <__printf+0x494>
    80004b8c:	f8dff06f          	j	80004b18 <__printf+0x440>
    80004b90:	f7843783          	ld	a5,-136(s0)
    80004b94:	0007bc83          	ld	s9,0(a5)
    80004b98:	00878793          	addi	a5,a5,8
    80004b9c:	f6f43c23          	sd	a5,-136(s0)
    80004ba0:	000c9a63          	bnez	s9,80004bb4 <__printf+0x4dc>
    80004ba4:	1080006f          	j	80004cac <__printf+0x5d4>
    80004ba8:	001c8c93          	addi	s9,s9,1
    80004bac:	00000097          	auipc	ra,0x0
    80004bb0:	948080e7          	jalr	-1720(ra) # 800044f4 <consputc>
    80004bb4:	000cc503          	lbu	a0,0(s9)
    80004bb8:	fe0518e3          	bnez	a0,80004ba8 <__printf+0x4d0>
    80004bbc:	f5dff06f          	j	80004b18 <__printf+0x440>
    80004bc0:	02500513          	li	a0,37
    80004bc4:	00000097          	auipc	ra,0x0
    80004bc8:	930080e7          	jalr	-1744(ra) # 800044f4 <consputc>
    80004bcc:	000c8513          	mv	a0,s9
    80004bd0:	00000097          	auipc	ra,0x0
    80004bd4:	924080e7          	jalr	-1756(ra) # 800044f4 <consputc>
    80004bd8:	f41ff06f          	j	80004b18 <__printf+0x440>
    80004bdc:	02500513          	li	a0,37
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	914080e7          	jalr	-1772(ra) # 800044f4 <consputc>
    80004be8:	f31ff06f          	j	80004b18 <__printf+0x440>
    80004bec:	00030513          	mv	a0,t1
    80004bf0:	00000097          	auipc	ra,0x0
    80004bf4:	7bc080e7          	jalr	1980(ra) # 800053ac <acquire>
    80004bf8:	b4dff06f          	j	80004744 <__printf+0x6c>
    80004bfc:	40c0053b          	negw	a0,a2
    80004c00:	00a00713          	li	a4,10
    80004c04:	02e576bb          	remuw	a3,a0,a4
    80004c08:	00001d97          	auipc	s11,0x1
    80004c0c:	708d8d93          	addi	s11,s11,1800 # 80006310 <digits>
    80004c10:	ff700593          	li	a1,-9
    80004c14:	02069693          	slli	a3,a3,0x20
    80004c18:	0206d693          	srli	a3,a3,0x20
    80004c1c:	00dd86b3          	add	a3,s11,a3
    80004c20:	0006c683          	lbu	a3,0(a3)
    80004c24:	02e557bb          	divuw	a5,a0,a4
    80004c28:	f8d40023          	sb	a3,-128(s0)
    80004c2c:	10b65e63          	bge	a2,a1,80004d48 <__printf+0x670>
    80004c30:	06300593          	li	a1,99
    80004c34:	02e7f6bb          	remuw	a3,a5,a4
    80004c38:	02069693          	slli	a3,a3,0x20
    80004c3c:	0206d693          	srli	a3,a3,0x20
    80004c40:	00dd86b3          	add	a3,s11,a3
    80004c44:	0006c683          	lbu	a3,0(a3)
    80004c48:	02e7d73b          	divuw	a4,a5,a4
    80004c4c:	00200793          	li	a5,2
    80004c50:	f8d400a3          	sb	a3,-127(s0)
    80004c54:	bca5ece3          	bltu	a1,a0,8000482c <__printf+0x154>
    80004c58:	ce5ff06f          	j	8000493c <__printf+0x264>
    80004c5c:	40e007bb          	negw	a5,a4
    80004c60:	00001d97          	auipc	s11,0x1
    80004c64:	6b0d8d93          	addi	s11,s11,1712 # 80006310 <digits>
    80004c68:	00f7f693          	andi	a3,a5,15
    80004c6c:	00dd86b3          	add	a3,s11,a3
    80004c70:	0006c583          	lbu	a1,0(a3)
    80004c74:	ff100613          	li	a2,-15
    80004c78:	0047d69b          	srliw	a3,a5,0x4
    80004c7c:	f8b40023          	sb	a1,-128(s0)
    80004c80:	0047d59b          	srliw	a1,a5,0x4
    80004c84:	0ac75e63          	bge	a4,a2,80004d40 <__printf+0x668>
    80004c88:	00f6f693          	andi	a3,a3,15
    80004c8c:	00dd86b3          	add	a3,s11,a3
    80004c90:	0006c603          	lbu	a2,0(a3)
    80004c94:	00f00693          	li	a3,15
    80004c98:	0087d79b          	srliw	a5,a5,0x8
    80004c9c:	f8c400a3          	sb	a2,-127(s0)
    80004ca0:	d8b6e4e3          	bltu	a3,a1,80004a28 <__printf+0x350>
    80004ca4:	00200793          	li	a5,2
    80004ca8:	e2dff06f          	j	80004ad4 <__printf+0x3fc>
    80004cac:	00001c97          	auipc	s9,0x1
    80004cb0:	644c8c93          	addi	s9,s9,1604 # 800062f0 <_ZZ14__print_uint64mE6digits+0x170>
    80004cb4:	02800513          	li	a0,40
    80004cb8:	ef1ff06f          	j	80004ba8 <__printf+0x4d0>
    80004cbc:	00700793          	li	a5,7
    80004cc0:	00600c93          	li	s9,6
    80004cc4:	e0dff06f          	j	80004ad0 <__printf+0x3f8>
    80004cc8:	00700793          	li	a5,7
    80004ccc:	00600c93          	li	s9,6
    80004cd0:	c69ff06f          	j	80004938 <__printf+0x260>
    80004cd4:	00300793          	li	a5,3
    80004cd8:	00200c93          	li	s9,2
    80004cdc:	c5dff06f          	j	80004938 <__printf+0x260>
    80004ce0:	00300793          	li	a5,3
    80004ce4:	00200c93          	li	s9,2
    80004ce8:	de9ff06f          	j	80004ad0 <__printf+0x3f8>
    80004cec:	00400793          	li	a5,4
    80004cf0:	00300c93          	li	s9,3
    80004cf4:	dddff06f          	j	80004ad0 <__printf+0x3f8>
    80004cf8:	00400793          	li	a5,4
    80004cfc:	00300c93          	li	s9,3
    80004d00:	c39ff06f          	j	80004938 <__printf+0x260>
    80004d04:	00500793          	li	a5,5
    80004d08:	00400c93          	li	s9,4
    80004d0c:	c2dff06f          	j	80004938 <__printf+0x260>
    80004d10:	00500793          	li	a5,5
    80004d14:	00400c93          	li	s9,4
    80004d18:	db9ff06f          	j	80004ad0 <__printf+0x3f8>
    80004d1c:	00600793          	li	a5,6
    80004d20:	00500c93          	li	s9,5
    80004d24:	dadff06f          	j	80004ad0 <__printf+0x3f8>
    80004d28:	00600793          	li	a5,6
    80004d2c:	00500c93          	li	s9,5
    80004d30:	c09ff06f          	j	80004938 <__printf+0x260>
    80004d34:	00800793          	li	a5,8
    80004d38:	00700c93          	li	s9,7
    80004d3c:	bfdff06f          	j	80004938 <__printf+0x260>
    80004d40:	00100793          	li	a5,1
    80004d44:	d91ff06f          	j	80004ad4 <__printf+0x3fc>
    80004d48:	00100793          	li	a5,1
    80004d4c:	bf1ff06f          	j	8000493c <__printf+0x264>
    80004d50:	00900793          	li	a5,9
    80004d54:	00800c93          	li	s9,8
    80004d58:	be1ff06f          	j	80004938 <__printf+0x260>
    80004d5c:	00001517          	auipc	a0,0x1
    80004d60:	59c50513          	addi	a0,a0,1436 # 800062f8 <_ZZ14__print_uint64mE6digits+0x178>
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	918080e7          	jalr	-1768(ra) # 8000467c <panic>

0000000080004d6c <printfinit>:
    80004d6c:	fe010113          	addi	sp,sp,-32
    80004d70:	00813823          	sd	s0,16(sp)
    80004d74:	00913423          	sd	s1,8(sp)
    80004d78:	00113c23          	sd	ra,24(sp)
    80004d7c:	02010413          	addi	s0,sp,32
    80004d80:	00004497          	auipc	s1,0x4
    80004d84:	38048493          	addi	s1,s1,896 # 80009100 <pr>
    80004d88:	00048513          	mv	a0,s1
    80004d8c:	00001597          	auipc	a1,0x1
    80004d90:	57c58593          	addi	a1,a1,1404 # 80006308 <_ZZ14__print_uint64mE6digits+0x188>
    80004d94:	00000097          	auipc	ra,0x0
    80004d98:	5f4080e7          	jalr	1524(ra) # 80005388 <initlock>
    80004d9c:	01813083          	ld	ra,24(sp)
    80004da0:	01013403          	ld	s0,16(sp)
    80004da4:	0004ac23          	sw	zero,24(s1)
    80004da8:	00813483          	ld	s1,8(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret

0000000080004db4 <uartinit>:
    80004db4:	ff010113          	addi	sp,sp,-16
    80004db8:	00813423          	sd	s0,8(sp)
    80004dbc:	01010413          	addi	s0,sp,16
    80004dc0:	100007b7          	lui	a5,0x10000
    80004dc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004dc8:	f8000713          	li	a4,-128
    80004dcc:	00e781a3          	sb	a4,3(a5)
    80004dd0:	00300713          	li	a4,3
    80004dd4:	00e78023          	sb	a4,0(a5)
    80004dd8:	000780a3          	sb	zero,1(a5)
    80004ddc:	00e781a3          	sb	a4,3(a5)
    80004de0:	00700693          	li	a3,7
    80004de4:	00d78123          	sb	a3,2(a5)
    80004de8:	00e780a3          	sb	a4,1(a5)
    80004dec:	00813403          	ld	s0,8(sp)
    80004df0:	01010113          	addi	sp,sp,16
    80004df4:	00008067          	ret

0000000080004df8 <uartputc>:
    80004df8:	00003797          	auipc	a5,0x3
    80004dfc:	8007a783          	lw	a5,-2048(a5) # 800075f8 <panicked>
    80004e00:	00078463          	beqz	a5,80004e08 <uartputc+0x10>
    80004e04:	0000006f          	j	80004e04 <uartputc+0xc>
    80004e08:	fd010113          	addi	sp,sp,-48
    80004e0c:	02813023          	sd	s0,32(sp)
    80004e10:	00913c23          	sd	s1,24(sp)
    80004e14:	01213823          	sd	s2,16(sp)
    80004e18:	01313423          	sd	s3,8(sp)
    80004e1c:	02113423          	sd	ra,40(sp)
    80004e20:	03010413          	addi	s0,sp,48
    80004e24:	00002917          	auipc	s2,0x2
    80004e28:	7dc90913          	addi	s2,s2,2012 # 80007600 <uart_tx_r>
    80004e2c:	00093783          	ld	a5,0(s2)
    80004e30:	00002497          	auipc	s1,0x2
    80004e34:	7d848493          	addi	s1,s1,2008 # 80007608 <uart_tx_w>
    80004e38:	0004b703          	ld	a4,0(s1)
    80004e3c:	02078693          	addi	a3,a5,32
    80004e40:	00050993          	mv	s3,a0
    80004e44:	02e69c63          	bne	a3,a4,80004e7c <uartputc+0x84>
    80004e48:	00001097          	auipc	ra,0x1
    80004e4c:	834080e7          	jalr	-1996(ra) # 8000567c <push_on>
    80004e50:	00093783          	ld	a5,0(s2)
    80004e54:	0004b703          	ld	a4,0(s1)
    80004e58:	02078793          	addi	a5,a5,32
    80004e5c:	00e79463          	bne	a5,a4,80004e64 <uartputc+0x6c>
    80004e60:	0000006f          	j	80004e60 <uartputc+0x68>
    80004e64:	00001097          	auipc	ra,0x1
    80004e68:	88c080e7          	jalr	-1908(ra) # 800056f0 <pop_on>
    80004e6c:	00093783          	ld	a5,0(s2)
    80004e70:	0004b703          	ld	a4,0(s1)
    80004e74:	02078693          	addi	a3,a5,32
    80004e78:	fce688e3          	beq	a3,a4,80004e48 <uartputc+0x50>
    80004e7c:	01f77693          	andi	a3,a4,31
    80004e80:	00004597          	auipc	a1,0x4
    80004e84:	2a058593          	addi	a1,a1,672 # 80009120 <uart_tx_buf>
    80004e88:	00d586b3          	add	a3,a1,a3
    80004e8c:	00170713          	addi	a4,a4,1
    80004e90:	01368023          	sb	s3,0(a3)
    80004e94:	00e4b023          	sd	a4,0(s1)
    80004e98:	10000637          	lui	a2,0x10000
    80004e9c:	02f71063          	bne	a4,a5,80004ebc <uartputc+0xc4>
    80004ea0:	0340006f          	j	80004ed4 <uartputc+0xdc>
    80004ea4:	00074703          	lbu	a4,0(a4)
    80004ea8:	00f93023          	sd	a5,0(s2)
    80004eac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004eb0:	00093783          	ld	a5,0(s2)
    80004eb4:	0004b703          	ld	a4,0(s1)
    80004eb8:	00f70e63          	beq	a4,a5,80004ed4 <uartputc+0xdc>
    80004ebc:	00564683          	lbu	a3,5(a2)
    80004ec0:	01f7f713          	andi	a4,a5,31
    80004ec4:	00e58733          	add	a4,a1,a4
    80004ec8:	0206f693          	andi	a3,a3,32
    80004ecc:	00178793          	addi	a5,a5,1
    80004ed0:	fc069ae3          	bnez	a3,80004ea4 <uartputc+0xac>
    80004ed4:	02813083          	ld	ra,40(sp)
    80004ed8:	02013403          	ld	s0,32(sp)
    80004edc:	01813483          	ld	s1,24(sp)
    80004ee0:	01013903          	ld	s2,16(sp)
    80004ee4:	00813983          	ld	s3,8(sp)
    80004ee8:	03010113          	addi	sp,sp,48
    80004eec:	00008067          	ret

0000000080004ef0 <uartputc_sync>:
    80004ef0:	ff010113          	addi	sp,sp,-16
    80004ef4:	00813423          	sd	s0,8(sp)
    80004ef8:	01010413          	addi	s0,sp,16
    80004efc:	00002717          	auipc	a4,0x2
    80004f00:	6fc72703          	lw	a4,1788(a4) # 800075f8 <panicked>
    80004f04:	02071663          	bnez	a4,80004f30 <uartputc_sync+0x40>
    80004f08:	00050793          	mv	a5,a0
    80004f0c:	100006b7          	lui	a3,0x10000
    80004f10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004f14:	02077713          	andi	a4,a4,32
    80004f18:	fe070ce3          	beqz	a4,80004f10 <uartputc_sync+0x20>
    80004f1c:	0ff7f793          	andi	a5,a5,255
    80004f20:	00f68023          	sb	a5,0(a3)
    80004f24:	00813403          	ld	s0,8(sp)
    80004f28:	01010113          	addi	sp,sp,16
    80004f2c:	00008067          	ret
    80004f30:	0000006f          	j	80004f30 <uartputc_sync+0x40>

0000000080004f34 <uartstart>:
    80004f34:	ff010113          	addi	sp,sp,-16
    80004f38:	00813423          	sd	s0,8(sp)
    80004f3c:	01010413          	addi	s0,sp,16
    80004f40:	00002617          	auipc	a2,0x2
    80004f44:	6c060613          	addi	a2,a2,1728 # 80007600 <uart_tx_r>
    80004f48:	00002517          	auipc	a0,0x2
    80004f4c:	6c050513          	addi	a0,a0,1728 # 80007608 <uart_tx_w>
    80004f50:	00063783          	ld	a5,0(a2)
    80004f54:	00053703          	ld	a4,0(a0)
    80004f58:	04f70263          	beq	a4,a5,80004f9c <uartstart+0x68>
    80004f5c:	100005b7          	lui	a1,0x10000
    80004f60:	00004817          	auipc	a6,0x4
    80004f64:	1c080813          	addi	a6,a6,448 # 80009120 <uart_tx_buf>
    80004f68:	01c0006f          	j	80004f84 <uartstart+0x50>
    80004f6c:	0006c703          	lbu	a4,0(a3)
    80004f70:	00f63023          	sd	a5,0(a2)
    80004f74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f78:	00063783          	ld	a5,0(a2)
    80004f7c:	00053703          	ld	a4,0(a0)
    80004f80:	00f70e63          	beq	a4,a5,80004f9c <uartstart+0x68>
    80004f84:	01f7f713          	andi	a4,a5,31
    80004f88:	00e806b3          	add	a3,a6,a4
    80004f8c:	0055c703          	lbu	a4,5(a1)
    80004f90:	00178793          	addi	a5,a5,1
    80004f94:	02077713          	andi	a4,a4,32
    80004f98:	fc071ae3          	bnez	a4,80004f6c <uartstart+0x38>
    80004f9c:	00813403          	ld	s0,8(sp)
    80004fa0:	01010113          	addi	sp,sp,16
    80004fa4:	00008067          	ret

0000000080004fa8 <uartgetc>:
    80004fa8:	ff010113          	addi	sp,sp,-16
    80004fac:	00813423          	sd	s0,8(sp)
    80004fb0:	01010413          	addi	s0,sp,16
    80004fb4:	10000737          	lui	a4,0x10000
    80004fb8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004fbc:	0017f793          	andi	a5,a5,1
    80004fc0:	00078c63          	beqz	a5,80004fd8 <uartgetc+0x30>
    80004fc4:	00074503          	lbu	a0,0(a4)
    80004fc8:	0ff57513          	andi	a0,a0,255
    80004fcc:	00813403          	ld	s0,8(sp)
    80004fd0:	01010113          	addi	sp,sp,16
    80004fd4:	00008067          	ret
    80004fd8:	fff00513          	li	a0,-1
    80004fdc:	ff1ff06f          	j	80004fcc <uartgetc+0x24>

0000000080004fe0 <uartintr>:
    80004fe0:	100007b7          	lui	a5,0x10000
    80004fe4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004fe8:	0017f793          	andi	a5,a5,1
    80004fec:	0a078463          	beqz	a5,80005094 <uartintr+0xb4>
    80004ff0:	fe010113          	addi	sp,sp,-32
    80004ff4:	00813823          	sd	s0,16(sp)
    80004ff8:	00913423          	sd	s1,8(sp)
    80004ffc:	00113c23          	sd	ra,24(sp)
    80005000:	02010413          	addi	s0,sp,32
    80005004:	100004b7          	lui	s1,0x10000
    80005008:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000500c:	0ff57513          	andi	a0,a0,255
    80005010:	fffff097          	auipc	ra,0xfffff
    80005014:	534080e7          	jalr	1332(ra) # 80004544 <consoleintr>
    80005018:	0054c783          	lbu	a5,5(s1)
    8000501c:	0017f793          	andi	a5,a5,1
    80005020:	fe0794e3          	bnez	a5,80005008 <uartintr+0x28>
    80005024:	00002617          	auipc	a2,0x2
    80005028:	5dc60613          	addi	a2,a2,1500 # 80007600 <uart_tx_r>
    8000502c:	00002517          	auipc	a0,0x2
    80005030:	5dc50513          	addi	a0,a0,1500 # 80007608 <uart_tx_w>
    80005034:	00063783          	ld	a5,0(a2)
    80005038:	00053703          	ld	a4,0(a0)
    8000503c:	04f70263          	beq	a4,a5,80005080 <uartintr+0xa0>
    80005040:	100005b7          	lui	a1,0x10000
    80005044:	00004817          	auipc	a6,0x4
    80005048:	0dc80813          	addi	a6,a6,220 # 80009120 <uart_tx_buf>
    8000504c:	01c0006f          	j	80005068 <uartintr+0x88>
    80005050:	0006c703          	lbu	a4,0(a3)
    80005054:	00f63023          	sd	a5,0(a2)
    80005058:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000505c:	00063783          	ld	a5,0(a2)
    80005060:	00053703          	ld	a4,0(a0)
    80005064:	00f70e63          	beq	a4,a5,80005080 <uartintr+0xa0>
    80005068:	01f7f713          	andi	a4,a5,31
    8000506c:	00e806b3          	add	a3,a6,a4
    80005070:	0055c703          	lbu	a4,5(a1)
    80005074:	00178793          	addi	a5,a5,1
    80005078:	02077713          	andi	a4,a4,32
    8000507c:	fc071ae3          	bnez	a4,80005050 <uartintr+0x70>
    80005080:	01813083          	ld	ra,24(sp)
    80005084:	01013403          	ld	s0,16(sp)
    80005088:	00813483          	ld	s1,8(sp)
    8000508c:	02010113          	addi	sp,sp,32
    80005090:	00008067          	ret
    80005094:	00002617          	auipc	a2,0x2
    80005098:	56c60613          	addi	a2,a2,1388 # 80007600 <uart_tx_r>
    8000509c:	00002517          	auipc	a0,0x2
    800050a0:	56c50513          	addi	a0,a0,1388 # 80007608 <uart_tx_w>
    800050a4:	00063783          	ld	a5,0(a2)
    800050a8:	00053703          	ld	a4,0(a0)
    800050ac:	04f70263          	beq	a4,a5,800050f0 <uartintr+0x110>
    800050b0:	100005b7          	lui	a1,0x10000
    800050b4:	00004817          	auipc	a6,0x4
    800050b8:	06c80813          	addi	a6,a6,108 # 80009120 <uart_tx_buf>
    800050bc:	01c0006f          	j	800050d8 <uartintr+0xf8>
    800050c0:	0006c703          	lbu	a4,0(a3)
    800050c4:	00f63023          	sd	a5,0(a2)
    800050c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800050cc:	00063783          	ld	a5,0(a2)
    800050d0:	00053703          	ld	a4,0(a0)
    800050d4:	02f70063          	beq	a4,a5,800050f4 <uartintr+0x114>
    800050d8:	01f7f713          	andi	a4,a5,31
    800050dc:	00e806b3          	add	a3,a6,a4
    800050e0:	0055c703          	lbu	a4,5(a1)
    800050e4:	00178793          	addi	a5,a5,1
    800050e8:	02077713          	andi	a4,a4,32
    800050ec:	fc071ae3          	bnez	a4,800050c0 <uartintr+0xe0>
    800050f0:	00008067          	ret
    800050f4:	00008067          	ret

00000000800050f8 <kinit>:
    800050f8:	fc010113          	addi	sp,sp,-64
    800050fc:	02913423          	sd	s1,40(sp)
    80005100:	fffff7b7          	lui	a5,0xfffff
    80005104:	00005497          	auipc	s1,0x5
    80005108:	03b48493          	addi	s1,s1,59 # 8000a13f <end+0xfff>
    8000510c:	02813823          	sd	s0,48(sp)
    80005110:	01313c23          	sd	s3,24(sp)
    80005114:	00f4f4b3          	and	s1,s1,a5
    80005118:	02113c23          	sd	ra,56(sp)
    8000511c:	03213023          	sd	s2,32(sp)
    80005120:	01413823          	sd	s4,16(sp)
    80005124:	01513423          	sd	s5,8(sp)
    80005128:	04010413          	addi	s0,sp,64
    8000512c:	000017b7          	lui	a5,0x1
    80005130:	01100993          	li	s3,17
    80005134:	00f487b3          	add	a5,s1,a5
    80005138:	01b99993          	slli	s3,s3,0x1b
    8000513c:	06f9e063          	bltu	s3,a5,8000519c <kinit+0xa4>
    80005140:	00004a97          	auipc	s5,0x4
    80005144:	000a8a93          	mv	s5,s5
    80005148:	0754ec63          	bltu	s1,s5,800051c0 <kinit+0xc8>
    8000514c:	0734fa63          	bgeu	s1,s3,800051c0 <kinit+0xc8>
    80005150:	00088a37          	lui	s4,0x88
    80005154:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005158:	00002917          	auipc	s2,0x2
    8000515c:	4b890913          	addi	s2,s2,1208 # 80007610 <kmem>
    80005160:	00ca1a13          	slli	s4,s4,0xc
    80005164:	0140006f          	j	80005178 <kinit+0x80>
    80005168:	000017b7          	lui	a5,0x1
    8000516c:	00f484b3          	add	s1,s1,a5
    80005170:	0554e863          	bltu	s1,s5,800051c0 <kinit+0xc8>
    80005174:	0534f663          	bgeu	s1,s3,800051c0 <kinit+0xc8>
    80005178:	00001637          	lui	a2,0x1
    8000517c:	00100593          	li	a1,1
    80005180:	00048513          	mv	a0,s1
    80005184:	00000097          	auipc	ra,0x0
    80005188:	5e4080e7          	jalr	1508(ra) # 80005768 <__memset>
    8000518c:	00093783          	ld	a5,0(s2)
    80005190:	00f4b023          	sd	a5,0(s1)
    80005194:	00993023          	sd	s1,0(s2)
    80005198:	fd4498e3          	bne	s1,s4,80005168 <kinit+0x70>
    8000519c:	03813083          	ld	ra,56(sp)
    800051a0:	03013403          	ld	s0,48(sp)
    800051a4:	02813483          	ld	s1,40(sp)
    800051a8:	02013903          	ld	s2,32(sp)
    800051ac:	01813983          	ld	s3,24(sp)
    800051b0:	01013a03          	ld	s4,16(sp)
    800051b4:	00813a83          	ld	s5,8(sp)
    800051b8:	04010113          	addi	sp,sp,64
    800051bc:	00008067          	ret
    800051c0:	00001517          	auipc	a0,0x1
    800051c4:	16850513          	addi	a0,a0,360 # 80006328 <digits+0x18>
    800051c8:	fffff097          	auipc	ra,0xfffff
    800051cc:	4b4080e7          	jalr	1204(ra) # 8000467c <panic>

00000000800051d0 <freerange>:
    800051d0:	fc010113          	addi	sp,sp,-64
    800051d4:	000017b7          	lui	a5,0x1
    800051d8:	02913423          	sd	s1,40(sp)
    800051dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800051e0:	009504b3          	add	s1,a0,s1
    800051e4:	fffff537          	lui	a0,0xfffff
    800051e8:	02813823          	sd	s0,48(sp)
    800051ec:	02113c23          	sd	ra,56(sp)
    800051f0:	03213023          	sd	s2,32(sp)
    800051f4:	01313c23          	sd	s3,24(sp)
    800051f8:	01413823          	sd	s4,16(sp)
    800051fc:	01513423          	sd	s5,8(sp)
    80005200:	01613023          	sd	s6,0(sp)
    80005204:	04010413          	addi	s0,sp,64
    80005208:	00a4f4b3          	and	s1,s1,a0
    8000520c:	00f487b3          	add	a5,s1,a5
    80005210:	06f5e463          	bltu	a1,a5,80005278 <freerange+0xa8>
    80005214:	00004a97          	auipc	s5,0x4
    80005218:	f2ca8a93          	addi	s5,s5,-212 # 80009140 <end>
    8000521c:	0954e263          	bltu	s1,s5,800052a0 <freerange+0xd0>
    80005220:	01100993          	li	s3,17
    80005224:	01b99993          	slli	s3,s3,0x1b
    80005228:	0734fc63          	bgeu	s1,s3,800052a0 <freerange+0xd0>
    8000522c:	00058a13          	mv	s4,a1
    80005230:	00002917          	auipc	s2,0x2
    80005234:	3e090913          	addi	s2,s2,992 # 80007610 <kmem>
    80005238:	00002b37          	lui	s6,0x2
    8000523c:	0140006f          	j	80005250 <freerange+0x80>
    80005240:	000017b7          	lui	a5,0x1
    80005244:	00f484b3          	add	s1,s1,a5
    80005248:	0554ec63          	bltu	s1,s5,800052a0 <freerange+0xd0>
    8000524c:	0534fa63          	bgeu	s1,s3,800052a0 <freerange+0xd0>
    80005250:	00001637          	lui	a2,0x1
    80005254:	00100593          	li	a1,1
    80005258:	00048513          	mv	a0,s1
    8000525c:	00000097          	auipc	ra,0x0
    80005260:	50c080e7          	jalr	1292(ra) # 80005768 <__memset>
    80005264:	00093703          	ld	a4,0(s2)
    80005268:	016487b3          	add	a5,s1,s6
    8000526c:	00e4b023          	sd	a4,0(s1)
    80005270:	00993023          	sd	s1,0(s2)
    80005274:	fcfa76e3          	bgeu	s4,a5,80005240 <freerange+0x70>
    80005278:	03813083          	ld	ra,56(sp)
    8000527c:	03013403          	ld	s0,48(sp)
    80005280:	02813483          	ld	s1,40(sp)
    80005284:	02013903          	ld	s2,32(sp)
    80005288:	01813983          	ld	s3,24(sp)
    8000528c:	01013a03          	ld	s4,16(sp)
    80005290:	00813a83          	ld	s5,8(sp)
    80005294:	00013b03          	ld	s6,0(sp)
    80005298:	04010113          	addi	sp,sp,64
    8000529c:	00008067          	ret
    800052a0:	00001517          	auipc	a0,0x1
    800052a4:	08850513          	addi	a0,a0,136 # 80006328 <digits+0x18>
    800052a8:	fffff097          	auipc	ra,0xfffff
    800052ac:	3d4080e7          	jalr	980(ra) # 8000467c <panic>

00000000800052b0 <kfree>:
    800052b0:	fe010113          	addi	sp,sp,-32
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00113c23          	sd	ra,24(sp)
    800052bc:	00913423          	sd	s1,8(sp)
    800052c0:	02010413          	addi	s0,sp,32
    800052c4:	03451793          	slli	a5,a0,0x34
    800052c8:	04079c63          	bnez	a5,80005320 <kfree+0x70>
    800052cc:	00004797          	auipc	a5,0x4
    800052d0:	e7478793          	addi	a5,a5,-396 # 80009140 <end>
    800052d4:	00050493          	mv	s1,a0
    800052d8:	04f56463          	bltu	a0,a5,80005320 <kfree+0x70>
    800052dc:	01100793          	li	a5,17
    800052e0:	01b79793          	slli	a5,a5,0x1b
    800052e4:	02f57e63          	bgeu	a0,a5,80005320 <kfree+0x70>
    800052e8:	00001637          	lui	a2,0x1
    800052ec:	00100593          	li	a1,1
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	478080e7          	jalr	1144(ra) # 80005768 <__memset>
    800052f8:	00002797          	auipc	a5,0x2
    800052fc:	31878793          	addi	a5,a5,792 # 80007610 <kmem>
    80005300:	0007b703          	ld	a4,0(a5)
    80005304:	01813083          	ld	ra,24(sp)
    80005308:	01013403          	ld	s0,16(sp)
    8000530c:	00e4b023          	sd	a4,0(s1)
    80005310:	0097b023          	sd	s1,0(a5)
    80005314:	00813483          	ld	s1,8(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret
    80005320:	00001517          	auipc	a0,0x1
    80005324:	00850513          	addi	a0,a0,8 # 80006328 <digits+0x18>
    80005328:	fffff097          	auipc	ra,0xfffff
    8000532c:	354080e7          	jalr	852(ra) # 8000467c <panic>

0000000080005330 <kalloc>:
    80005330:	fe010113          	addi	sp,sp,-32
    80005334:	00813823          	sd	s0,16(sp)
    80005338:	00913423          	sd	s1,8(sp)
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	02010413          	addi	s0,sp,32
    80005344:	00002797          	auipc	a5,0x2
    80005348:	2cc78793          	addi	a5,a5,716 # 80007610 <kmem>
    8000534c:	0007b483          	ld	s1,0(a5)
    80005350:	02048063          	beqz	s1,80005370 <kalloc+0x40>
    80005354:	0004b703          	ld	a4,0(s1)
    80005358:	00001637          	lui	a2,0x1
    8000535c:	00500593          	li	a1,5
    80005360:	00048513          	mv	a0,s1
    80005364:	00e7b023          	sd	a4,0(a5)
    80005368:	00000097          	auipc	ra,0x0
    8000536c:	400080e7          	jalr	1024(ra) # 80005768 <__memset>
    80005370:	01813083          	ld	ra,24(sp)
    80005374:	01013403          	ld	s0,16(sp)
    80005378:	00048513          	mv	a0,s1
    8000537c:	00813483          	ld	s1,8(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret

0000000080005388 <initlock>:
    80005388:	ff010113          	addi	sp,sp,-16
    8000538c:	00813423          	sd	s0,8(sp)
    80005390:	01010413          	addi	s0,sp,16
    80005394:	00813403          	ld	s0,8(sp)
    80005398:	00b53423          	sd	a1,8(a0)
    8000539c:	00052023          	sw	zero,0(a0)
    800053a0:	00053823          	sd	zero,16(a0)
    800053a4:	01010113          	addi	sp,sp,16
    800053a8:	00008067          	ret

00000000800053ac <acquire>:
    800053ac:	fe010113          	addi	sp,sp,-32
    800053b0:	00813823          	sd	s0,16(sp)
    800053b4:	00913423          	sd	s1,8(sp)
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	01213023          	sd	s2,0(sp)
    800053c0:	02010413          	addi	s0,sp,32
    800053c4:	00050493          	mv	s1,a0
    800053c8:	10002973          	csrr	s2,sstatus
    800053cc:	100027f3          	csrr	a5,sstatus
    800053d0:	ffd7f793          	andi	a5,a5,-3
    800053d4:	10079073          	csrw	sstatus,a5
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	8e0080e7          	jalr	-1824(ra) # 80003cb8 <mycpu>
    800053e0:	07852783          	lw	a5,120(a0)
    800053e4:	06078e63          	beqz	a5,80005460 <acquire+0xb4>
    800053e8:	fffff097          	auipc	ra,0xfffff
    800053ec:	8d0080e7          	jalr	-1840(ra) # 80003cb8 <mycpu>
    800053f0:	07852783          	lw	a5,120(a0)
    800053f4:	0004a703          	lw	a4,0(s1)
    800053f8:	0017879b          	addiw	a5,a5,1
    800053fc:	06f52c23          	sw	a5,120(a0)
    80005400:	04071063          	bnez	a4,80005440 <acquire+0x94>
    80005404:	00100713          	li	a4,1
    80005408:	00070793          	mv	a5,a4
    8000540c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005410:	0007879b          	sext.w	a5,a5
    80005414:	fe079ae3          	bnez	a5,80005408 <acquire+0x5c>
    80005418:	0ff0000f          	fence
    8000541c:	fffff097          	auipc	ra,0xfffff
    80005420:	89c080e7          	jalr	-1892(ra) # 80003cb8 <mycpu>
    80005424:	01813083          	ld	ra,24(sp)
    80005428:	01013403          	ld	s0,16(sp)
    8000542c:	00a4b823          	sd	a0,16(s1)
    80005430:	00013903          	ld	s2,0(sp)
    80005434:	00813483          	ld	s1,8(sp)
    80005438:	02010113          	addi	sp,sp,32
    8000543c:	00008067          	ret
    80005440:	0104b903          	ld	s2,16(s1)
    80005444:	fffff097          	auipc	ra,0xfffff
    80005448:	874080e7          	jalr	-1932(ra) # 80003cb8 <mycpu>
    8000544c:	faa91ce3          	bne	s2,a0,80005404 <acquire+0x58>
    80005450:	00001517          	auipc	a0,0x1
    80005454:	ee050513          	addi	a0,a0,-288 # 80006330 <digits+0x20>
    80005458:	fffff097          	auipc	ra,0xfffff
    8000545c:	224080e7          	jalr	548(ra) # 8000467c <panic>
    80005460:	00195913          	srli	s2,s2,0x1
    80005464:	fffff097          	auipc	ra,0xfffff
    80005468:	854080e7          	jalr	-1964(ra) # 80003cb8 <mycpu>
    8000546c:	00197913          	andi	s2,s2,1
    80005470:	07252e23          	sw	s2,124(a0)
    80005474:	f75ff06f          	j	800053e8 <acquire+0x3c>

0000000080005478 <release>:
    80005478:	fe010113          	addi	sp,sp,-32
    8000547c:	00813823          	sd	s0,16(sp)
    80005480:	00113c23          	sd	ra,24(sp)
    80005484:	00913423          	sd	s1,8(sp)
    80005488:	01213023          	sd	s2,0(sp)
    8000548c:	02010413          	addi	s0,sp,32
    80005490:	00052783          	lw	a5,0(a0)
    80005494:	00079a63          	bnez	a5,800054a8 <release+0x30>
    80005498:	00001517          	auipc	a0,0x1
    8000549c:	ea050513          	addi	a0,a0,-352 # 80006338 <digits+0x28>
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	1dc080e7          	jalr	476(ra) # 8000467c <panic>
    800054a8:	01053903          	ld	s2,16(a0)
    800054ac:	00050493          	mv	s1,a0
    800054b0:	fffff097          	auipc	ra,0xfffff
    800054b4:	808080e7          	jalr	-2040(ra) # 80003cb8 <mycpu>
    800054b8:	fea910e3          	bne	s2,a0,80005498 <release+0x20>
    800054bc:	0004b823          	sd	zero,16(s1)
    800054c0:	0ff0000f          	fence
    800054c4:	0f50000f          	fence	iorw,ow
    800054c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800054cc:	ffffe097          	auipc	ra,0xffffe
    800054d0:	7ec080e7          	jalr	2028(ra) # 80003cb8 <mycpu>
    800054d4:	100027f3          	csrr	a5,sstatus
    800054d8:	0027f793          	andi	a5,a5,2
    800054dc:	04079a63          	bnez	a5,80005530 <release+0xb8>
    800054e0:	07852783          	lw	a5,120(a0)
    800054e4:	02f05e63          	blez	a5,80005520 <release+0xa8>
    800054e8:	fff7871b          	addiw	a4,a5,-1
    800054ec:	06e52c23          	sw	a4,120(a0)
    800054f0:	00071c63          	bnez	a4,80005508 <release+0x90>
    800054f4:	07c52783          	lw	a5,124(a0)
    800054f8:	00078863          	beqz	a5,80005508 <release+0x90>
    800054fc:	100027f3          	csrr	a5,sstatus
    80005500:	0027e793          	ori	a5,a5,2
    80005504:	10079073          	csrw	sstatus,a5
    80005508:	01813083          	ld	ra,24(sp)
    8000550c:	01013403          	ld	s0,16(sp)
    80005510:	00813483          	ld	s1,8(sp)
    80005514:	00013903          	ld	s2,0(sp)
    80005518:	02010113          	addi	sp,sp,32
    8000551c:	00008067          	ret
    80005520:	00001517          	auipc	a0,0x1
    80005524:	e3850513          	addi	a0,a0,-456 # 80006358 <digits+0x48>
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	154080e7          	jalr	340(ra) # 8000467c <panic>
    80005530:	00001517          	auipc	a0,0x1
    80005534:	e1050513          	addi	a0,a0,-496 # 80006340 <digits+0x30>
    80005538:	fffff097          	auipc	ra,0xfffff
    8000553c:	144080e7          	jalr	324(ra) # 8000467c <panic>

0000000080005540 <holding>:
    80005540:	00052783          	lw	a5,0(a0)
    80005544:	00079663          	bnez	a5,80005550 <holding+0x10>
    80005548:	00000513          	li	a0,0
    8000554c:	00008067          	ret
    80005550:	fe010113          	addi	sp,sp,-32
    80005554:	00813823          	sd	s0,16(sp)
    80005558:	00913423          	sd	s1,8(sp)
    8000555c:	00113c23          	sd	ra,24(sp)
    80005560:	02010413          	addi	s0,sp,32
    80005564:	01053483          	ld	s1,16(a0)
    80005568:	ffffe097          	auipc	ra,0xffffe
    8000556c:	750080e7          	jalr	1872(ra) # 80003cb8 <mycpu>
    80005570:	01813083          	ld	ra,24(sp)
    80005574:	01013403          	ld	s0,16(sp)
    80005578:	40a48533          	sub	a0,s1,a0
    8000557c:	00153513          	seqz	a0,a0
    80005580:	00813483          	ld	s1,8(sp)
    80005584:	02010113          	addi	sp,sp,32
    80005588:	00008067          	ret

000000008000558c <push_off>:
    8000558c:	fe010113          	addi	sp,sp,-32
    80005590:	00813823          	sd	s0,16(sp)
    80005594:	00113c23          	sd	ra,24(sp)
    80005598:	00913423          	sd	s1,8(sp)
    8000559c:	02010413          	addi	s0,sp,32
    800055a0:	100024f3          	csrr	s1,sstatus
    800055a4:	100027f3          	csrr	a5,sstatus
    800055a8:	ffd7f793          	andi	a5,a5,-3
    800055ac:	10079073          	csrw	sstatus,a5
    800055b0:	ffffe097          	auipc	ra,0xffffe
    800055b4:	708080e7          	jalr	1800(ra) # 80003cb8 <mycpu>
    800055b8:	07852783          	lw	a5,120(a0)
    800055bc:	02078663          	beqz	a5,800055e8 <push_off+0x5c>
    800055c0:	ffffe097          	auipc	ra,0xffffe
    800055c4:	6f8080e7          	jalr	1784(ra) # 80003cb8 <mycpu>
    800055c8:	07852783          	lw	a5,120(a0)
    800055cc:	01813083          	ld	ra,24(sp)
    800055d0:	01013403          	ld	s0,16(sp)
    800055d4:	0017879b          	addiw	a5,a5,1
    800055d8:	06f52c23          	sw	a5,120(a0)
    800055dc:	00813483          	ld	s1,8(sp)
    800055e0:	02010113          	addi	sp,sp,32
    800055e4:	00008067          	ret
    800055e8:	0014d493          	srli	s1,s1,0x1
    800055ec:	ffffe097          	auipc	ra,0xffffe
    800055f0:	6cc080e7          	jalr	1740(ra) # 80003cb8 <mycpu>
    800055f4:	0014f493          	andi	s1,s1,1
    800055f8:	06952e23          	sw	s1,124(a0)
    800055fc:	fc5ff06f          	j	800055c0 <push_off+0x34>

0000000080005600 <pop_off>:
    80005600:	ff010113          	addi	sp,sp,-16
    80005604:	00813023          	sd	s0,0(sp)
    80005608:	00113423          	sd	ra,8(sp)
    8000560c:	01010413          	addi	s0,sp,16
    80005610:	ffffe097          	auipc	ra,0xffffe
    80005614:	6a8080e7          	jalr	1704(ra) # 80003cb8 <mycpu>
    80005618:	100027f3          	csrr	a5,sstatus
    8000561c:	0027f793          	andi	a5,a5,2
    80005620:	04079663          	bnez	a5,8000566c <pop_off+0x6c>
    80005624:	07852783          	lw	a5,120(a0)
    80005628:	02f05a63          	blez	a5,8000565c <pop_off+0x5c>
    8000562c:	fff7871b          	addiw	a4,a5,-1
    80005630:	06e52c23          	sw	a4,120(a0)
    80005634:	00071c63          	bnez	a4,8000564c <pop_off+0x4c>
    80005638:	07c52783          	lw	a5,124(a0)
    8000563c:	00078863          	beqz	a5,8000564c <pop_off+0x4c>
    80005640:	100027f3          	csrr	a5,sstatus
    80005644:	0027e793          	ori	a5,a5,2
    80005648:	10079073          	csrw	sstatus,a5
    8000564c:	00813083          	ld	ra,8(sp)
    80005650:	00013403          	ld	s0,0(sp)
    80005654:	01010113          	addi	sp,sp,16
    80005658:	00008067          	ret
    8000565c:	00001517          	auipc	a0,0x1
    80005660:	cfc50513          	addi	a0,a0,-772 # 80006358 <digits+0x48>
    80005664:	fffff097          	auipc	ra,0xfffff
    80005668:	018080e7          	jalr	24(ra) # 8000467c <panic>
    8000566c:	00001517          	auipc	a0,0x1
    80005670:	cd450513          	addi	a0,a0,-812 # 80006340 <digits+0x30>
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	008080e7          	jalr	8(ra) # 8000467c <panic>

000000008000567c <push_on>:
    8000567c:	fe010113          	addi	sp,sp,-32
    80005680:	00813823          	sd	s0,16(sp)
    80005684:	00113c23          	sd	ra,24(sp)
    80005688:	00913423          	sd	s1,8(sp)
    8000568c:	02010413          	addi	s0,sp,32
    80005690:	100024f3          	csrr	s1,sstatus
    80005694:	100027f3          	csrr	a5,sstatus
    80005698:	0027e793          	ori	a5,a5,2
    8000569c:	10079073          	csrw	sstatus,a5
    800056a0:	ffffe097          	auipc	ra,0xffffe
    800056a4:	618080e7          	jalr	1560(ra) # 80003cb8 <mycpu>
    800056a8:	07852783          	lw	a5,120(a0)
    800056ac:	02078663          	beqz	a5,800056d8 <push_on+0x5c>
    800056b0:	ffffe097          	auipc	ra,0xffffe
    800056b4:	608080e7          	jalr	1544(ra) # 80003cb8 <mycpu>
    800056b8:	07852783          	lw	a5,120(a0)
    800056bc:	01813083          	ld	ra,24(sp)
    800056c0:	01013403          	ld	s0,16(sp)
    800056c4:	0017879b          	addiw	a5,a5,1
    800056c8:	06f52c23          	sw	a5,120(a0)
    800056cc:	00813483          	ld	s1,8(sp)
    800056d0:	02010113          	addi	sp,sp,32
    800056d4:	00008067          	ret
    800056d8:	0014d493          	srli	s1,s1,0x1
    800056dc:	ffffe097          	auipc	ra,0xffffe
    800056e0:	5dc080e7          	jalr	1500(ra) # 80003cb8 <mycpu>
    800056e4:	0014f493          	andi	s1,s1,1
    800056e8:	06952e23          	sw	s1,124(a0)
    800056ec:	fc5ff06f          	j	800056b0 <push_on+0x34>

00000000800056f0 <pop_on>:
    800056f0:	ff010113          	addi	sp,sp,-16
    800056f4:	00813023          	sd	s0,0(sp)
    800056f8:	00113423          	sd	ra,8(sp)
    800056fc:	01010413          	addi	s0,sp,16
    80005700:	ffffe097          	auipc	ra,0xffffe
    80005704:	5b8080e7          	jalr	1464(ra) # 80003cb8 <mycpu>
    80005708:	100027f3          	csrr	a5,sstatus
    8000570c:	0027f793          	andi	a5,a5,2
    80005710:	04078463          	beqz	a5,80005758 <pop_on+0x68>
    80005714:	07852783          	lw	a5,120(a0)
    80005718:	02f05863          	blez	a5,80005748 <pop_on+0x58>
    8000571c:	fff7879b          	addiw	a5,a5,-1
    80005720:	06f52c23          	sw	a5,120(a0)
    80005724:	07853783          	ld	a5,120(a0)
    80005728:	00079863          	bnez	a5,80005738 <pop_on+0x48>
    8000572c:	100027f3          	csrr	a5,sstatus
    80005730:	ffd7f793          	andi	a5,a5,-3
    80005734:	10079073          	csrw	sstatus,a5
    80005738:	00813083          	ld	ra,8(sp)
    8000573c:	00013403          	ld	s0,0(sp)
    80005740:	01010113          	addi	sp,sp,16
    80005744:	00008067          	ret
    80005748:	00001517          	auipc	a0,0x1
    8000574c:	c3850513          	addi	a0,a0,-968 # 80006380 <digits+0x70>
    80005750:	fffff097          	auipc	ra,0xfffff
    80005754:	f2c080e7          	jalr	-212(ra) # 8000467c <panic>
    80005758:	00001517          	auipc	a0,0x1
    8000575c:	c0850513          	addi	a0,a0,-1016 # 80006360 <digits+0x50>
    80005760:	fffff097          	auipc	ra,0xfffff
    80005764:	f1c080e7          	jalr	-228(ra) # 8000467c <panic>

0000000080005768 <__memset>:
    80005768:	ff010113          	addi	sp,sp,-16
    8000576c:	00813423          	sd	s0,8(sp)
    80005770:	01010413          	addi	s0,sp,16
    80005774:	1a060e63          	beqz	a2,80005930 <__memset+0x1c8>
    80005778:	40a007b3          	neg	a5,a0
    8000577c:	0077f793          	andi	a5,a5,7
    80005780:	00778693          	addi	a3,a5,7
    80005784:	00b00813          	li	a6,11
    80005788:	0ff5f593          	andi	a1,a1,255
    8000578c:	fff6071b          	addiw	a4,a2,-1
    80005790:	1b06e663          	bltu	a3,a6,8000593c <__memset+0x1d4>
    80005794:	1cd76463          	bltu	a4,a3,8000595c <__memset+0x1f4>
    80005798:	1a078e63          	beqz	a5,80005954 <__memset+0x1ec>
    8000579c:	00b50023          	sb	a1,0(a0)
    800057a0:	00100713          	li	a4,1
    800057a4:	1ae78463          	beq	a5,a4,8000594c <__memset+0x1e4>
    800057a8:	00b500a3          	sb	a1,1(a0)
    800057ac:	00200713          	li	a4,2
    800057b0:	1ae78a63          	beq	a5,a4,80005964 <__memset+0x1fc>
    800057b4:	00b50123          	sb	a1,2(a0)
    800057b8:	00300713          	li	a4,3
    800057bc:	18e78463          	beq	a5,a4,80005944 <__memset+0x1dc>
    800057c0:	00b501a3          	sb	a1,3(a0)
    800057c4:	00400713          	li	a4,4
    800057c8:	1ae78263          	beq	a5,a4,8000596c <__memset+0x204>
    800057cc:	00b50223          	sb	a1,4(a0)
    800057d0:	00500713          	li	a4,5
    800057d4:	1ae78063          	beq	a5,a4,80005974 <__memset+0x20c>
    800057d8:	00b502a3          	sb	a1,5(a0)
    800057dc:	00700713          	li	a4,7
    800057e0:	18e79e63          	bne	a5,a4,8000597c <__memset+0x214>
    800057e4:	00b50323          	sb	a1,6(a0)
    800057e8:	00700e93          	li	t4,7
    800057ec:	00859713          	slli	a4,a1,0x8
    800057f0:	00e5e733          	or	a4,a1,a4
    800057f4:	01059e13          	slli	t3,a1,0x10
    800057f8:	01c76e33          	or	t3,a4,t3
    800057fc:	01859313          	slli	t1,a1,0x18
    80005800:	006e6333          	or	t1,t3,t1
    80005804:	02059893          	slli	a7,a1,0x20
    80005808:	40f60e3b          	subw	t3,a2,a5
    8000580c:	011368b3          	or	a7,t1,a7
    80005810:	02859813          	slli	a6,a1,0x28
    80005814:	0108e833          	or	a6,a7,a6
    80005818:	03059693          	slli	a3,a1,0x30
    8000581c:	003e589b          	srliw	a7,t3,0x3
    80005820:	00d866b3          	or	a3,a6,a3
    80005824:	03859713          	slli	a4,a1,0x38
    80005828:	00389813          	slli	a6,a7,0x3
    8000582c:	00f507b3          	add	a5,a0,a5
    80005830:	00e6e733          	or	a4,a3,a4
    80005834:	000e089b          	sext.w	a7,t3
    80005838:	00f806b3          	add	a3,a6,a5
    8000583c:	00e7b023          	sd	a4,0(a5)
    80005840:	00878793          	addi	a5,a5,8
    80005844:	fed79ce3          	bne	a5,a3,8000583c <__memset+0xd4>
    80005848:	ff8e7793          	andi	a5,t3,-8
    8000584c:	0007871b          	sext.w	a4,a5
    80005850:	01d787bb          	addw	a5,a5,t4
    80005854:	0ce88e63          	beq	a7,a4,80005930 <__memset+0x1c8>
    80005858:	00f50733          	add	a4,a0,a5
    8000585c:	00b70023          	sb	a1,0(a4)
    80005860:	0017871b          	addiw	a4,a5,1
    80005864:	0cc77663          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	0027871b          	addiw	a4,a5,2
    80005874:	0ac77e63          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	0037871b          	addiw	a4,a5,3
    80005884:	0ac77663          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	0047871b          	addiw	a4,a5,4
    80005894:	08c77e63          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	0057871b          	addiw	a4,a5,5
    800058a4:	08c77663          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00b70023          	sb	a1,0(a4)
    800058b0:	0067871b          	addiw	a4,a5,6
    800058b4:	06c77e63          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    800058b8:	00e50733          	add	a4,a0,a4
    800058bc:	00b70023          	sb	a1,0(a4)
    800058c0:	0077871b          	addiw	a4,a5,7
    800058c4:	06c77663          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    800058c8:	00e50733          	add	a4,a0,a4
    800058cc:	00b70023          	sb	a1,0(a4)
    800058d0:	0087871b          	addiw	a4,a5,8
    800058d4:	04c77e63          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    800058d8:	00e50733          	add	a4,a0,a4
    800058dc:	00b70023          	sb	a1,0(a4)
    800058e0:	0097871b          	addiw	a4,a5,9
    800058e4:	04c77663          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    800058e8:	00e50733          	add	a4,a0,a4
    800058ec:	00b70023          	sb	a1,0(a4)
    800058f0:	00a7871b          	addiw	a4,a5,10
    800058f4:	02c77e63          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00b70023          	sb	a1,0(a4)
    80005900:	00b7871b          	addiw	a4,a5,11
    80005904:	02c77663          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    80005908:	00e50733          	add	a4,a0,a4
    8000590c:	00b70023          	sb	a1,0(a4)
    80005910:	00c7871b          	addiw	a4,a5,12
    80005914:	00c77e63          	bgeu	a4,a2,80005930 <__memset+0x1c8>
    80005918:	00e50733          	add	a4,a0,a4
    8000591c:	00b70023          	sb	a1,0(a4)
    80005920:	00d7879b          	addiw	a5,a5,13
    80005924:	00c7f663          	bgeu	a5,a2,80005930 <__memset+0x1c8>
    80005928:	00f507b3          	add	a5,a0,a5
    8000592c:	00b78023          	sb	a1,0(a5)
    80005930:	00813403          	ld	s0,8(sp)
    80005934:	01010113          	addi	sp,sp,16
    80005938:	00008067          	ret
    8000593c:	00b00693          	li	a3,11
    80005940:	e55ff06f          	j	80005794 <__memset+0x2c>
    80005944:	00300e93          	li	t4,3
    80005948:	ea5ff06f          	j	800057ec <__memset+0x84>
    8000594c:	00100e93          	li	t4,1
    80005950:	e9dff06f          	j	800057ec <__memset+0x84>
    80005954:	00000e93          	li	t4,0
    80005958:	e95ff06f          	j	800057ec <__memset+0x84>
    8000595c:	00000793          	li	a5,0
    80005960:	ef9ff06f          	j	80005858 <__memset+0xf0>
    80005964:	00200e93          	li	t4,2
    80005968:	e85ff06f          	j	800057ec <__memset+0x84>
    8000596c:	00400e93          	li	t4,4
    80005970:	e7dff06f          	j	800057ec <__memset+0x84>
    80005974:	00500e93          	li	t4,5
    80005978:	e75ff06f          	j	800057ec <__memset+0x84>
    8000597c:	00600e93          	li	t4,6
    80005980:	e6dff06f          	j	800057ec <__memset+0x84>

0000000080005984 <__memmove>:
    80005984:	ff010113          	addi	sp,sp,-16
    80005988:	00813423          	sd	s0,8(sp)
    8000598c:	01010413          	addi	s0,sp,16
    80005990:	0e060863          	beqz	a2,80005a80 <__memmove+0xfc>
    80005994:	fff6069b          	addiw	a3,a2,-1
    80005998:	0006881b          	sext.w	a6,a3
    8000599c:	0ea5e863          	bltu	a1,a0,80005a8c <__memmove+0x108>
    800059a0:	00758713          	addi	a4,a1,7
    800059a4:	00a5e7b3          	or	a5,a1,a0
    800059a8:	40a70733          	sub	a4,a4,a0
    800059ac:	0077f793          	andi	a5,a5,7
    800059b0:	00f73713          	sltiu	a4,a4,15
    800059b4:	00174713          	xori	a4,a4,1
    800059b8:	0017b793          	seqz	a5,a5
    800059bc:	00e7f7b3          	and	a5,a5,a4
    800059c0:	10078863          	beqz	a5,80005ad0 <__memmove+0x14c>
    800059c4:	00900793          	li	a5,9
    800059c8:	1107f463          	bgeu	a5,a6,80005ad0 <__memmove+0x14c>
    800059cc:	0036581b          	srliw	a6,a2,0x3
    800059d0:	fff8081b          	addiw	a6,a6,-1
    800059d4:	02081813          	slli	a6,a6,0x20
    800059d8:	01d85893          	srli	a7,a6,0x1d
    800059dc:	00858813          	addi	a6,a1,8
    800059e0:	00058793          	mv	a5,a1
    800059e4:	00050713          	mv	a4,a0
    800059e8:	01088833          	add	a6,a7,a6
    800059ec:	0007b883          	ld	a7,0(a5)
    800059f0:	00878793          	addi	a5,a5,8
    800059f4:	00870713          	addi	a4,a4,8
    800059f8:	ff173c23          	sd	a7,-8(a4)
    800059fc:	ff0798e3          	bne	a5,a6,800059ec <__memmove+0x68>
    80005a00:	ff867713          	andi	a4,a2,-8
    80005a04:	02071793          	slli	a5,a4,0x20
    80005a08:	0207d793          	srli	a5,a5,0x20
    80005a0c:	00f585b3          	add	a1,a1,a5
    80005a10:	40e686bb          	subw	a3,a3,a4
    80005a14:	00f507b3          	add	a5,a0,a5
    80005a18:	06e60463          	beq	a2,a4,80005a80 <__memmove+0xfc>
    80005a1c:	0005c703          	lbu	a4,0(a1)
    80005a20:	00e78023          	sb	a4,0(a5)
    80005a24:	04068e63          	beqz	a3,80005a80 <__memmove+0xfc>
    80005a28:	0015c603          	lbu	a2,1(a1)
    80005a2c:	00100713          	li	a4,1
    80005a30:	00c780a3          	sb	a2,1(a5)
    80005a34:	04e68663          	beq	a3,a4,80005a80 <__memmove+0xfc>
    80005a38:	0025c603          	lbu	a2,2(a1)
    80005a3c:	00200713          	li	a4,2
    80005a40:	00c78123          	sb	a2,2(a5)
    80005a44:	02e68e63          	beq	a3,a4,80005a80 <__memmove+0xfc>
    80005a48:	0035c603          	lbu	a2,3(a1)
    80005a4c:	00300713          	li	a4,3
    80005a50:	00c781a3          	sb	a2,3(a5)
    80005a54:	02e68663          	beq	a3,a4,80005a80 <__memmove+0xfc>
    80005a58:	0045c603          	lbu	a2,4(a1)
    80005a5c:	00400713          	li	a4,4
    80005a60:	00c78223          	sb	a2,4(a5)
    80005a64:	00e68e63          	beq	a3,a4,80005a80 <__memmove+0xfc>
    80005a68:	0055c603          	lbu	a2,5(a1)
    80005a6c:	00500713          	li	a4,5
    80005a70:	00c782a3          	sb	a2,5(a5)
    80005a74:	00e68663          	beq	a3,a4,80005a80 <__memmove+0xfc>
    80005a78:	0065c703          	lbu	a4,6(a1)
    80005a7c:	00e78323          	sb	a4,6(a5)
    80005a80:	00813403          	ld	s0,8(sp)
    80005a84:	01010113          	addi	sp,sp,16
    80005a88:	00008067          	ret
    80005a8c:	02061713          	slli	a4,a2,0x20
    80005a90:	02075713          	srli	a4,a4,0x20
    80005a94:	00e587b3          	add	a5,a1,a4
    80005a98:	f0f574e3          	bgeu	a0,a5,800059a0 <__memmove+0x1c>
    80005a9c:	02069613          	slli	a2,a3,0x20
    80005aa0:	02065613          	srli	a2,a2,0x20
    80005aa4:	fff64613          	not	a2,a2
    80005aa8:	00e50733          	add	a4,a0,a4
    80005aac:	00c78633          	add	a2,a5,a2
    80005ab0:	fff7c683          	lbu	a3,-1(a5)
    80005ab4:	fff78793          	addi	a5,a5,-1
    80005ab8:	fff70713          	addi	a4,a4,-1
    80005abc:	00d70023          	sb	a3,0(a4)
    80005ac0:	fec798e3          	bne	a5,a2,80005ab0 <__memmove+0x12c>
    80005ac4:	00813403          	ld	s0,8(sp)
    80005ac8:	01010113          	addi	sp,sp,16
    80005acc:	00008067          	ret
    80005ad0:	02069713          	slli	a4,a3,0x20
    80005ad4:	02075713          	srli	a4,a4,0x20
    80005ad8:	00170713          	addi	a4,a4,1
    80005adc:	00e50733          	add	a4,a0,a4
    80005ae0:	00050793          	mv	a5,a0
    80005ae4:	0005c683          	lbu	a3,0(a1)
    80005ae8:	00178793          	addi	a5,a5,1
    80005aec:	00158593          	addi	a1,a1,1
    80005af0:	fed78fa3          	sb	a3,-1(a5)
    80005af4:	fee798e3          	bne	a5,a4,80005ae4 <__memmove+0x160>
    80005af8:	f89ff06f          	j	80005a80 <__memmove+0xfc>
	...
