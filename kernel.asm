
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	58013103          	ld	sp,1408(sp) # 80007580 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	199030ef          	jal	ra,800039b4 <start>

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
    800012f8:	25c080e7          	jalr	604(ra) # 80002550 <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    800012fc:	00006797          	auipc	a5,0x6
    80001300:	28c7b783          	ld	a5,652(a5) # 80007588 <_GLOBAL_OFFSET_TABLE_+0x40>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    80001304:	10579073          	csrw	stvec,a5
    //sysThread = Sem::createSem(0);

    Uart::initUart();
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	4e4080e7          	jalr	1252(ra) # 800017ec <_ZN4Uart8initUartEv>
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
    8000138c:	4b8080e7          	jalr	1208(ra) # 80002840 <_Z14__print_stringPKc>
    __print_string("scause: ");
    80001390:	00005517          	auipc	a0,0x5
    80001394:	cc850513          	addi	a0,a0,-824 # 80006058 <CONSOLE_STATUS+0x48>
    80001398:	00001097          	auipc	ra,0x1
    8000139c:	4a8080e7          	jalr	1192(ra) # 80002840 <_Z14__print_stringPKc>
    __print_uint64(scause);
    800013a0:	00048513          	mv	a0,s1
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	4e0080e7          	jalr	1248(ra) # 80002884 <_Z14__print_uint64m>
    Uart::txPut('\n');
    800013ac:	00a00513          	li	a0,10
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	6cc080e7          	jalr	1740(ra) # 80001a7c <_ZN4Uart5txPutEc>
    __print_string("sepc: ");
    800013b8:	00005517          	auipc	a0,0x5
    800013bc:	cb050513          	addi	a0,a0,-848 # 80006068 <CONSOLE_STATUS+0x58>
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	480080e7          	jalr	1152(ra) # 80002840 <_Z14__print_stringPKc>
    __print_uint64(sepc);
    800013c8:	00090513          	mv	a0,s2
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	4b8080e7          	jalr	1208(ra) # 80002884 <_Z14__print_uint64m>
    Uart::txPut('\n');
    800013d4:	00a00513          	li	a0,10
    800013d8:	00000097          	auipc	ra,0x0
    800013dc:	6a4080e7          	jalr	1700(ra) # 80001a7c <_ZN4Uart5txPutEc>
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
    8000145c:	298080e7          	jalr	664(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
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
    80001488:	2f8080e7          	jalr	760(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
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
    800014b8:	af8080e7          	jalr	-1288(ra) # 80001fac <_ZN3TCB9createTCBEPFvPvES0_>
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
    800014dc:	0b87b783          	ld	a5,184(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x48>
    800014e0:	0007b783          	ld	a5,0(a5)

    static TCB* createSupervisorTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    800014e4:	00100713          	li	a4,1
    800014e8:	00e78c23          	sb	a4,24(a5)
    asm volatile ("addi a0, zero, 0");
    800014ec:	00000513          	li	a0,0
    //TCB::yield();
    TCB::dispatch();
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	c6c080e7          	jalr	-916(ra) # 8000215c <_ZN3TCB8dispatchEv>
}
    800014f8:	f69ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	c60080e7          	jalr	-928(ra) # 8000215c <_ZN3TCB8dispatchEv>
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
    80001530:	b10080e7          	jalr	-1264(ra) # 8000203c <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
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
    80001570:	39c080e7          	jalr	924(ra) # 80002908 <_ZN3Sem9createSemEj>
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
    800015ac:	3b0080e7          	jalr	944(ra) # 80002958 <_ZN3SemD1Ev>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    800015b0:	00098513          	mv	a0,s3
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	1c8080e7          	jalr	456(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>

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
    800015d4:	410080e7          	jalr	1040(ra) # 800029e0 <_ZN3Sem7semWaitEv>

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
    800015ec:	494080e7          	jalr	1172(ra) # 80002a7c <_ZN3Sem9semSignalEv>
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
    80001604:	6d8080e7          	jalr	1752(ra) # 80002cd8 <_ZN9Scheduler9timeSleepEm>
}
    80001608:	e59ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
//0x41
inline void Kernel::getc_handler() {
    volatile uint64 arg0;
    //arg0 = __getc();
    //__print_string("getc");
    arg0 = Uart::rxGet();
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	298080e7          	jalr	664(ra) # 800018a4 <_ZN4Uart5rxGetEv>
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
    80001638:	448080e7          	jalr	1096(ra) # 80001a7c <_ZN4Uart5txPutEc>
    //uart->tx
}
    8000163c:	e25ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
            asm volatile ("addi a0, zero, -1");
    80001640:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    80001644:	00005517          	auipc	a0,0x5
    80001648:	9dc50513          	addi	a0,a0,-1572 # 80006020 <CONSOLE_STATUS+0x10>
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	1f4080e7          	jalr	500(ra) # 80002840 <_Z14__print_stringPKc>
            break;
    80001654:	e0dff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    80001658:	00006797          	auipc	a5,0x6
    8000165c:	f387b783          	ld	a5,-200(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001660:	0007b783          	ld	a5,0(a5)
    80001664:	04078063          	beqz	a5,800016a4 <_ZN6Kernel21supervisorTrapHandlerEv+0x384>
        Scheduler::timerInterrupt();
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	5b8080e7          	jalr	1464(ra) # 80002c20 <_ZN9Scheduler14timerInterruptEv>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    80001670:	00006717          	auipc	a4,0x6
    80001674:	f0073703          	ld	a4,-256(a4) # 80007570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001678:	00073783          	ld	a5,0(a4)
    8000167c:	00178793          	addi	a5,a5,1
    80001680:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    80001684:	00006717          	auipc	a4,0x6
    80001688:	f0c73703          	ld	a4,-244(a4) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800016cc:	ea87b783          	ld	a5,-344(a5) # 80007570 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016d0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	a88080e7          	jalr	-1400(ra) # 8000215c <_ZN3TCB8dispatchEv>
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
    800016ec:	b2c080e7          	jalr	-1236(ra) # 80004214 <plic_claim>
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
    80001704:	b4c080e7          	jalr	-1204(ra) # 8000424c <plic_complete>
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    80001708:	20000793          	li	a5,512
    8000170c:	1447b073          	csrc	sip,a5
        return;
    80001710:	cd5ff06f          	j	800013e4 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
        while (Uart::getStatus() & Uart::RX) {
    80001714:	00000097          	auipc	ra,0x0
    80001718:	168080e7          	jalr	360(ra) # 8000187c <_ZN4Uart9getStatusEv>
    8000171c:	00157793          	andi	a5,a0,1
    80001720:	fc078ee3          	beqz	a5,800016fc <_ZN6Kernel21supervisorTrapHandlerEv+0x3dc>
            if(Uart::rxReceive() < 0) break;
    80001724:	00000097          	auipc	ra,0x0
    80001728:	25c080e7          	jalr	604(ra) # 80001980 <_ZN4Uart9rxReceiveEv>
    8000172c:	fe9ff06f          	j	80001714 <_ZN6Kernel21supervisorTrapHandlerEv+0x3f4>

0000000080001730 <_ZN6Kernel12finishKernelEv>:

void Kernel::finishKernel() {
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00113423          	sd	ra,8(sp)
    80001738:	00813023          	sd	s0,0(sp)
    8000173c:	01010413          	addi	s0,sp,16
    finished = true;
    80001740:	00100793          	li	a5,1
    80001744:	00006717          	auipc	a4,0x6
    80001748:	eaf70e23          	sb	a5,-324(a4) # 80007600 <_ZN6Kernel8finishedE>
    Scheduler::finish();
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	69c080e7          	jalr	1692(ra) # 80002de8 <_ZN9Scheduler6finishEv>
    //Uart::finish();
}
    80001754:	00813083          	ld	ra,8(sp)
    80001758:	00013403          	ld	s0,0(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_ZN6Kernel10isFinishedEv>:

bool Kernel::isFinished() {
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00813423          	sd	s0,8(sp)
    8000176c:	01010413          	addi	s0,sp,16
    return finished;
    80001770:	00006517          	auipc	a0,0x6
    80001774:	e9054503          	lbu	a0,-368(a0) # 80007600 <_ZN6Kernel8finishedE>
    80001778:	00813403          	ld	s0,8(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <_Z41__static_initialization_and_destruction_0ii>:
    rx_request->semWait();
}

void Uart::rxSignal() {
    rx_request->semSignal();
}
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00813423          	sd	s0,8(sp)
    8000178c:	01010413          	addi	s0,sp,16
    80001790:	00100793          	li	a5,1
    80001794:	00f50863          	beq	a0,a5,800017a4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret
    800017a4:	000107b7          	lui	a5,0x10
    800017a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800017ac:	fef596e3          	bne	a1,a5,80001798 <_Z41__static_initialization_and_destruction_0ii+0x14>
volatile char* Uart::STATUS = (char*) CONSOLE_STATUS;
    800017b0:	00006797          	auipc	a5,0x6
    800017b4:	db07b783          	ld	a5,-592(a5) # 80007560 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017b8:	0007b703          	ld	a4,0(a5)
    800017bc:	00006797          	auipc	a5,0x6
    800017c0:	e4c78793          	addi	a5,a5,-436 # 80007608 <_ZN4Uart6STATUSE>
    800017c4:	00e7b023          	sd	a4,0(a5)
volatile char* Uart::RX_DATA = (char*) CONSOLE_RX_DATA;
    800017c8:	00006717          	auipc	a4,0x6
    800017cc:	d9073703          	ld	a4,-624(a4) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017d0:	00073703          	ld	a4,0(a4)
    800017d4:	00e7b423          	sd	a4,8(a5)
volatile char* Uart::TX_DATA = (char*) CONSOLE_TX_DATA;
    800017d8:	00006717          	auipc	a4,0x6
    800017dc:	da073703          	ld	a4,-608(a4) # 80007578 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017e0:	00073703          	ld	a4,0(a4)
    800017e4:	00e7b823          	sd	a4,16(a5)
}
    800017e8:	fb1ff06f          	j	80001798 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800017ec <_ZN4Uart8initUartEv>:
void Uart::initUart() {
    800017ec:	fe010113          	addi	sp,sp,-32
    800017f0:	00113c23          	sd	ra,24(sp)
    800017f4:	00813823          	sd	s0,16(sp)
    800017f8:	00913423          	sd	s1,8(sp)
    800017fc:	02010413          	addi	s0,sp,32
    rx_not_empty = Sem::createSem(0);
    80001800:	00000513          	li	a0,0
    80001804:	00001097          	auipc	ra,0x1
    80001808:	104080e7          	jalr	260(ra) # 80002908 <_ZN3Sem9createSemEj>
    8000180c:	00006497          	auipc	s1,0x6
    80001810:	dfc48493          	addi	s1,s1,-516 # 80007608 <_ZN4Uart6STATUSE>
    80001814:	00a4bc23          	sd	a0,24(s1)
    rx_not_full = Sem::createSem(BUFFER_SIZE);
    80001818:	40000513          	li	a0,1024
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	0ec080e7          	jalr	236(ra) # 80002908 <_ZN3Sem9createSemEj>
    80001824:	02a4b023          	sd	a0,32(s1)
    rx_request = Sem::createSem(0);
    80001828:	00000513          	li	a0,0
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	0dc080e7          	jalr	220(ra) # 80002908 <_ZN3Sem9createSemEj>
    80001834:	02a4b423          	sd	a0,40(s1)
    tx_not_empty = Sem::createSem(0);
    80001838:	00000513          	li	a0,0
    8000183c:	00001097          	auipc	ra,0x1
    80001840:	0cc080e7          	jalr	204(ra) # 80002908 <_ZN3Sem9createSemEj>
    80001844:	02a4b823          	sd	a0,48(s1)
    tx_not_full = Sem::createSem(BUFFER_SIZE);
    80001848:	40000513          	li	a0,1024
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	0bc080e7          	jalr	188(ra) # 80002908 <_ZN3Sem9createSemEj>
    80001854:	02a4bc23          	sd	a0,56(s1)
    tx_request = Sem::createSem(0);
    80001858:	00000513          	li	a0,0
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	0ac080e7          	jalr	172(ra) # 80002908 <_ZN3Sem9createSemEj>
    80001864:	04a4b023          	sd	a0,64(s1)
}
    80001868:	01813083          	ld	ra,24(sp)
    8000186c:	01013403          	ld	s0,16(sp)
    80001870:	00813483          	ld	s1,8(sp)
    80001874:	02010113          	addi	sp,sp,32
    80001878:	00008067          	ret

000000008000187c <_ZN4Uart9getStatusEv>:
uint8 Uart::getStatus() {
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00813423          	sd	s0,8(sp)
    80001884:	01010413          	addi	s0,sp,16
    uint8 ret = *((uint8*) CONSOLE_STATUS);
    80001888:	00006797          	auipc	a5,0x6
    8000188c:	cd87b783          	ld	a5,-808(a5) # 80007560 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001890:	0007b783          	ld	a5,0(a5)
}
    80001894:	0007c503          	lbu	a0,0(a5)
    80001898:	00813403          	ld	s0,8(sp)
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00008067          	ret

00000000800018a4 <_ZN4Uart5rxGetEv>:
char Uart::rxGet() {
    800018a4:	fe010113          	addi	sp,sp,-32
    800018a8:	00113c23          	sd	ra,24(sp)
    800018ac:	00813823          	sd	s0,16(sp)
    800018b0:	00913423          	sd	s1,8(sp)
    800018b4:	02010413          	addi	s0,sp,32
    rx_not_empty->semWait();
    800018b8:	00006497          	auipc	s1,0x6
    800018bc:	d5048493          	addi	s1,s1,-688 # 80007608 <_ZN4Uart6STATUSE>
    800018c0:	0184b503          	ld	a0,24(s1)
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	11c080e7          	jalr	284(ra) # 800029e0 <_ZN3Sem7semWaitEv>
    c = rx_buffer[rxFront];
    800018cc:	0484a783          	lw	a5,72(s1)
    800018d0:	00f48733          	add	a4,s1,a5
    rxFront = (rxFront + 1) & (BUFFER_SIZE - 1);
    800018d4:	0017879b          	addiw	a5,a5,1
    800018d8:	3ff7f793          	andi	a5,a5,1023
    800018dc:	04f4a423          	sw	a5,72(s1)
    rxSize--;
    800018e0:	4504a783          	lw	a5,1104(s1)
    800018e4:	fff7879b          	addiw	a5,a5,-1
    800018e8:	44f4a823          	sw	a5,1104(s1)
}
    800018ec:	05074503          	lbu	a0,80(a4)
    800018f0:	01813083          	ld	ra,24(sp)
    800018f4:	01013403          	ld	s0,16(sp)
    800018f8:	00813483          	ld	s1,8(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret

0000000080001904 <_ZN4Uart5rxPutEc>:
void Uart::rxPut(char c) {
    80001904:	fe010113          	addi	sp,sp,-32
    80001908:	00113c23          	sd	ra,24(sp)
    8000190c:	00813823          	sd	s0,16(sp)
    80001910:	00913423          	sd	s1,8(sp)
    80001914:	01213023          	sd	s2,0(sp)
    80001918:	02010413          	addi	s0,sp,32
    8000191c:	00050913          	mv	s2,a0
    rx_not_full->semWait(); // wait producer
    80001920:	00006497          	auipc	s1,0x6
    80001924:	ce848493          	addi	s1,s1,-792 # 80007608 <_ZN4Uart6STATUSE>
    80001928:	0204b503          	ld	a0,32(s1)
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	0b4080e7          	jalr	180(ra) # 800029e0 <_ZN3Sem7semWaitEv>
    rx_buffer[txRear] = c;
    80001934:	4544a783          	lw	a5,1108(s1)
    80001938:	00f487b3          	add	a5,s1,a5
    8000193c:	05278823          	sb	s2,80(a5)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    80001940:	4584a783          	lw	a5,1112(s1)
    80001944:	0017879b          	addiw	a5,a5,1
    80001948:	3ff7f793          	andi	a5,a5,1023
    8000194c:	44f4ac23          	sw	a5,1112(s1)
    rxSize++;
    80001950:	4504a783          	lw	a5,1104(s1)
    80001954:	0017879b          	addiw	a5,a5,1
    80001958:	44f4a823          	sw	a5,1104(s1)
    rx_not_empty->semSignal(); // signal consumer
    8000195c:	0184b503          	ld	a0,24(s1)
    80001960:	00001097          	auipc	ra,0x1
    80001964:	11c080e7          	jalr	284(ra) # 80002a7c <_ZN3Sem9semSignalEv>
}
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	00013903          	ld	s2,0(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <_ZN4Uart9rxReceiveEv>:
    if (rxSize >= BUFFER_SIZE) return -1;
    80001980:	00006717          	auipc	a4,0x6
    80001984:	0d872703          	lw	a4,216(a4) # 80007a58 <_ZN4Uart6rxSizeE>
    80001988:	3ff00793          	li	a5,1023
    8000198c:	06e7c663          	blt	a5,a4,800019f8 <_ZN4Uart9rxReceiveEv+0x78>
char Uart::rxReceive() {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
    char c = *(char*) CONSOLE_RX_DATA;
    800019a0:	00006797          	auipc	a5,0x6
    800019a4:	bb87b783          	ld	a5,-1096(a5) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019a8:	0007b783          	ld	a5,0(a5)
    800019ac:	0007c583          	lbu	a1,0(a5)
    rx_buffer[rxRear] = c;
    800019b0:	00006697          	auipc	a3,0x6
    800019b4:	c5868693          	addi	a3,a3,-936 # 80007608 <_ZN4Uart6STATUSE>
    800019b8:	4586a783          	lw	a5,1112(a3)
    800019bc:	00f68633          	add	a2,a3,a5
    800019c0:	04b60823          	sb	a1,80(a2)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    800019c4:	0017879b          	addiw	a5,a5,1
    800019c8:	3ff7f793          	andi	a5,a5,1023
    800019cc:	44f6ac23          	sw	a5,1112(a3)
    rxSize++;
    800019d0:	0017071b          	addiw	a4,a4,1
    800019d4:	44e6a823          	sw	a4,1104(a3)
    rx_not_empty->semSignal();
    800019d8:	0186b503          	ld	a0,24(a3)
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	0a0080e7          	jalr	160(ra) # 80002a7c <_ZN3Sem9semSignalEv>
    return 0;
    800019e4:	00000513          	li	a0,0
}
    800019e8:	00813083          	ld	ra,8(sp)
    800019ec:	00013403          	ld	s0,0(sp)
    800019f0:	01010113          	addi	sp,sp,16
    800019f4:	00008067          	ret
    if (rxSize >= BUFFER_SIZE) return -1;
    800019f8:	0ff00513          	li	a0,255
}
    800019fc:	00008067          	ret

0000000080001a00 <_ZN4Uart5txGetEv>:
char Uart::txGet() {
    80001a00:	fe010113          	addi	sp,sp,-32
    80001a04:	00113c23          	sd	ra,24(sp)
    80001a08:	00813823          	sd	s0,16(sp)
    80001a0c:	00913423          	sd	s1,8(sp)
    80001a10:	02010413          	addi	s0,sp,32
    while(txSize == 0) {
    80001a14:	00006797          	auipc	a5,0x6
    80001a18:	0507a783          	lw	a5,80(a5) # 80007a64 <_ZN4Uart6txSizeE>
    80001a1c:	00079863          	bnez	a5,80001a2c <_ZN4Uart5txGetEv+0x2c>
        thread_dispatch();
    80001a20:	fffff097          	auipc	ra,0xfffff
    80001a24:	610080e7          	jalr	1552(ra) # 80001030 <thread_dispatch>
    while(txSize == 0) {
    80001a28:	fedff06f          	j	80001a14 <_ZN4Uart5txGetEv+0x14>
    c = tx_buffer[txFront];
    80001a2c:	00006797          	auipc	a5,0x6
    80001a30:	bdc78793          	addi	a5,a5,-1060 # 80007608 <_ZN4Uart6STATUSE>
    80001a34:	4607a703          	lw	a4,1120(a5)
    80001a38:	00e786b3          	add	a3,a5,a4
    80001a3c:	4686c483          	lbu	s1,1128(a3)
    txFront = (txFront + 1) & (BUFFER_SIZE - 1);
    80001a40:	0017071b          	addiw	a4,a4,1
    80001a44:	3ff77713          	andi	a4,a4,1023
    80001a48:	46e7a023          	sw	a4,1120(a5)
    txSize--;
    80001a4c:	45c7a703          	lw	a4,1116(a5)
    80001a50:	fff7071b          	addiw	a4,a4,-1
    80001a54:	44e7ae23          	sw	a4,1116(a5)
    tx_not_full->semSignal(); // signal producer
    80001a58:	0387b503          	ld	a0,56(a5)
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	020080e7          	jalr	32(ra) # 80002a7c <_ZN3Sem9semSignalEv>
}
    80001a64:	00048513          	mv	a0,s1
    80001a68:	01813083          	ld	ra,24(sp)
    80001a6c:	01013403          	ld	s0,16(sp)
    80001a70:	00813483          	ld	s1,8(sp)
    80001a74:	02010113          	addi	sp,sp,32
    80001a78:	00008067          	ret

0000000080001a7c <_ZN4Uart5txPutEc>:
void Uart::txPut(char c) {
    80001a7c:	fe010113          	addi	sp,sp,-32
    80001a80:	00113c23          	sd	ra,24(sp)
    80001a84:	00813823          	sd	s0,16(sp)
    80001a88:	00913423          	sd	s1,8(sp)
    80001a8c:	01213023          	sd	s2,0(sp)
    80001a90:	02010413          	addi	s0,sp,32
    80001a94:	00050913          	mv	s2,a0
    tx_not_full->semWait(); // wait producer
    80001a98:	00006497          	auipc	s1,0x6
    80001a9c:	b7048493          	addi	s1,s1,-1168 # 80007608 <_ZN4Uart6STATUSE>
    80001aa0:	0384b503          	ld	a0,56(s1)
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	f3c080e7          	jalr	-196(ra) # 800029e0 <_ZN3Sem7semWaitEv>
    tx_buffer[txRear] = c;
    80001aac:	4544a783          	lw	a5,1108(s1)
    80001ab0:	00f48733          	add	a4,s1,a5
    80001ab4:	47270423          	sb	s2,1128(a4)
    txRear = (txRear + 1) & (BUFFER_SIZE - 1);
    80001ab8:	0017879b          	addiw	a5,a5,1
    80001abc:	3ff7f793          	andi	a5,a5,1023
    80001ac0:	44f4aa23          	sw	a5,1108(s1)
    txSize++;
    80001ac4:	45c4a783          	lw	a5,1116(s1)
    80001ac8:	0017879b          	addiw	a5,a5,1
    80001acc:	44f4ae23          	sw	a5,1116(s1)
    tx_not_empty->semSignal(); // signal consumer
    80001ad0:	0304b503          	ld	a0,48(s1)
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	fa8080e7          	jalr	-88(ra) # 80002a7c <_ZN3Sem9semSignalEv>
}
    80001adc:	01813083          	ld	ra,24(sp)
    80001ae0:	01013403          	ld	s0,16(sp)
    80001ae4:	00813483          	ld	s1,8(sp)
    80001ae8:	00013903          	ld	s2,0(sp)
    80001aec:	02010113          	addi	sp,sp,32
    80001af0:	00008067          	ret

0000000080001af4 <_ZN4Uart6txSendEc>:
void Uart::txSend(char c) {
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00813423          	sd	s0,8(sp)
    80001afc:	01010413          	addi	s0,sp,16
    *(char*)CONSOLE_TX_DATA = c;
    80001b00:	00006797          	auipc	a5,0x6
    80001b04:	a787b783          	ld	a5,-1416(a5) # 80007578 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b08:	0007b783          	ld	a5,0(a5)
    80001b0c:	00a78023          	sb	a0,0(a5)
}
    80001b10:	00813403          	ld	s0,8(sp)
    80001b14:	01010113          	addi	sp,sp,16
    80001b18:	00008067          	ret

0000000080001b1c <_ZN4Uart6txWaitEv>:
void Uart::txWait() {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
    tx_request->semWait();
    80001b2c:	00006517          	auipc	a0,0x6
    80001b30:	b1c53503          	ld	a0,-1252(a0) # 80007648 <_ZN4Uart10tx_requestE>
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	eac080e7          	jalr	-340(ra) # 800029e0 <_ZN3Sem7semWaitEv>
}
    80001b3c:	00813083          	ld	ra,8(sp)
    80001b40:	00013403          	ld	s0,0(sp)
    80001b44:	01010113          	addi	sp,sp,16
    80001b48:	00008067          	ret

0000000080001b4c <_ZN4Uart8txSignalEv>:
void Uart::txSignal() {
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00113423          	sd	ra,8(sp)
    80001b54:	00813023          	sd	s0,0(sp)
    80001b58:	01010413          	addi	s0,sp,16
    tx_request->semSignal();
    80001b5c:	00006517          	auipc	a0,0x6
    80001b60:	aec53503          	ld	a0,-1300(a0) # 80007648 <_ZN4Uart10tx_requestE>
    80001b64:	00001097          	auipc	ra,0x1
    80001b68:	f18080e7          	jalr	-232(ra) # 80002a7c <_ZN3Sem9semSignalEv>
}
    80001b6c:	00813083          	ld	ra,8(sp)
    80001b70:	00013403          	ld	s0,0(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret

0000000080001b7c <_ZN4Uart6rxWaitEv>:
void Uart::rxWait() {
    80001b7c:	ff010113          	addi	sp,sp,-16
    80001b80:	00113423          	sd	ra,8(sp)
    80001b84:	00813023          	sd	s0,0(sp)
    80001b88:	01010413          	addi	s0,sp,16
    rx_request->semWait();
    80001b8c:	00006517          	auipc	a0,0x6
    80001b90:	aa453503          	ld	a0,-1372(a0) # 80007630 <_ZN4Uart10rx_requestE>
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	e4c080e7          	jalr	-436(ra) # 800029e0 <_ZN3Sem7semWaitEv>
}
    80001b9c:	00813083          	ld	ra,8(sp)
    80001ba0:	00013403          	ld	s0,0(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret

0000000080001bac <_ZN4Uart8rxSignalEv>:
void Uart::rxSignal() {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00113423          	sd	ra,8(sp)
    80001bb4:	00813023          	sd	s0,0(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    rx_request->semSignal();
    80001bbc:	00006517          	auipc	a0,0x6
    80001bc0:	a7453503          	ld	a0,-1420(a0) # 80007630 <_ZN4Uart10rx_requestE>
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	eb8080e7          	jalr	-328(ra) # 80002a7c <_ZN3Sem9semSignalEv>
}
    80001bcc:	00813083          	ld	ra,8(sp)
    80001bd0:	00013403          	ld	s0,0(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret

0000000080001bdc <_GLOBAL__sub_I__ZN4Uart9rx_bufferE>:
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00113423          	sd	ra,8(sp)
    80001be4:	00813023          	sd	s0,0(sp)
    80001be8:	01010413          	addi	s0,sp,16
    80001bec:	000105b7          	lui	a1,0x10
    80001bf0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001bf4:	00100513          	li	a0,1
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	b8c080e7          	jalr	-1140(ra) # 80001784 <_Z41__static_initialization_and_destruction_0ii>
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_Z13uart_consumerv>:
#include "../h/uart_consumer.hpp"
#include "../h/uart.hpp"
#include "../h/kernel.hpp"
//#include "../h/tcb.hpp"

void uart_consumer() {
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    80001c20:	0140006f          	j	80001c34 <_Z13uart_consumerv+0x24>
    while(1) {
        while (Uart::getStatus() & Uart::TX) {
            //__print_string("h");
            char c = Uart::txGet();
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	ddc080e7          	jalr	-548(ra) # 80001a00 <_ZN4Uart5txGetEv>

            Uart::txSend(c);
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	ec8080e7          	jalr	-312(ra) # 80001af4 <_ZN4Uart6txSendEc>
        while (Uart::getStatus() & Uart::TX) {
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	c48080e7          	jalr	-952(ra) # 8000187c <_ZN4Uart9getStatusEv>
    80001c3c:	02057513          	andi	a0,a0,32
    80001c40:	fe050ae3          	beqz	a0,80001c34 <_Z13uart_consumerv+0x24>
    80001c44:	fe1ff06f          	j	80001c24 <_Z13uart_consumerv+0x14>

0000000080001c48 <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00113423          	sd	ra,8(sp)
    80001c50:	00813023          	sd	s0,0(sp)
    80001c54:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	3a8080e7          	jalr	936(ra) # 80001000 <mem_alloc>
}
    80001c60:	00813083          	ld	ra,8(sp)
    80001c64:	00013403          	ld	s0,0(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_Znam>:

void* operator new[](size_t size) {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c80:	fffff097          	auipc	ra,0xfffff
    80001c84:	380080e7          	jalr	896(ra) # 80001000 <mem_alloc>
}
    80001c88:	00813083          	ld	ra,8(sp)
    80001c8c:	00013403          	ld	s0,0(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZdlPv>:

void operator delete(void* ptr) {
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	364080e7          	jalr	868(ra) # 8000100c <mem_free>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00113423          	sd	ra,8(sp)
    80001cc8:	00813023          	sd	s0,0(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	33c080e7          	jalr	828(ra) # 8000100c <mem_free>
}
    80001cd8:	00813083          	ld	ra,8(sp)
    80001cdc:	00013403          	ld	s0,0(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_Z10backgroundv>:
#include "../h/kernel.hpp"
#include "../h/uart_consumer.hpp"

void userMain();

void background() {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    while(!Kernel::isFinished()) {
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	a6c080e7          	jalr	-1428(ra) # 80001764 <_ZN6Kernel10isFinishedEv>
    80001d00:	00051863          	bnez	a0,80001d10 <_Z10backgroundv+0x28>
        thread_dispatch();
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	32c080e7          	jalr	812(ra) # 80001030 <thread_dispatch>
    while(!Kernel::isFinished()) {
    80001d0c:	fedff06f          	j	80001cf8 <_Z10backgroundv+0x10>
    }
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <main>:

void main() {
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	01213023          	sd	s2,0(sp)
    80001d34:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	5ac080e7          	jalr	1452(ra) # 800012e4 <_ZN6Kernel10initKernelEv>

    TCB* mainTCB = TCB::createTCB(nullptr, nullptr);
    80001d40:	00000593          	li	a1,0
    80001d44:	00000513          	li	a0,0
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	264080e7          	jalr	612(ra) # 80001fac <_ZN3TCB9createTCBEPFvPvES0_>
    80001d50:	00050913          	mv	s2,a0
    TCB* userTCB = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    80001d54:	00000593          	li	a1,0
    80001d58:	00005517          	auipc	a0,0x5
    80001d5c:	7f853503          	ld	a0,2040(a0) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	24c080e7          	jalr	588(ra) # 80001fac <_ZN3TCB9createTCBEPFvPvES0_>
    80001d68:	00050493          	mv	s1,a0
    TCB* backgroundTCB = TCB::createTCB((void(*)(void*))&background, nullptr);
    80001d6c:	00000593          	li	a1,0
    80001d70:	00000517          	auipc	a0,0x0
    80001d74:	f7850513          	addi	a0,a0,-136 # 80001ce8 <_Z10backgroundv>
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	234080e7          	jalr	564(ra) # 80001fac <_ZN3TCB9createTCBEPFvPvES0_>
    TCB::running = mainTCB;
    80001d80:	00006797          	auipc	a5,0x6
    80001d84:	8107b783          	ld	a5,-2032(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d88:	0127b023          	sd	s2,0(a5)

    TCB* uartTX_TCB = TCB::createTCB((void(*)(void*))&uart_consumer, nullptr);
    80001d8c:	00000593          	li	a1,0
    80001d90:	00006517          	auipc	a0,0x6
    80001d94:	81053503          	ld	a0,-2032(a0) # 800075a0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	214080e7          	jalr	532(ra) # 80001fac <_ZN3TCB9createTCBEPFvPvES0_>
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001da0:	00200793          	li	a5,2
    80001da4:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished; }
    80001da8:	0184c783          	lbu	a5,24(s1)

    uartTX_TCB->isFinished();
    backgroundTCB->isFinished();
    RiscV::setSstatus(RiscV::SIE);
    while(!userTCB->isFinished()) {
    80001dac:	00079863          	bnez	a5,80001dbc <main+0x9c>
        TCB::dispatch();
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	3ac080e7          	jalr	940(ra) # 8000215c <_ZN3TCB8dispatchEv>
    while(!userTCB->isFinished()) {
    80001db8:	ff1ff06f          	j	80001da8 <main+0x88>
    }

    Kernel::finishKernel();
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	974080e7          	jalr	-1676(ra) # 80001730 <_ZN6Kernel12finishKernelEv>
    delete userTCB;
    80001dc4:	00048e63          	beqz	s1,80001de0 <main+0xc0>

    ~TCB() { MemoryAllocator::free(stack); }
    80001dc8:	0104b503          	ld	a0,16(s1)
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	9b0080e7          	jalr	-1616(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	9a4080e7          	jalr	-1628(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
    80001de0:	01813083          	ld	ra,24(sp)
    80001de4:	01013403          	ld	s0,16(sp)
    80001de8:	00813483          	ld	s1,8(sp)
    80001dec:	00013903          	ld	s2,0(sp)
    80001df0:	02010113          	addi	sp,sp,32
    80001df4:	00008067          	ret

0000000080001df8 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001df8:	fe010113          	addi	sp,sp,-32
    80001dfc:	00113c23          	sd	ra,24(sp)
    80001e00:	00813823          	sd	s0,16(sp)
    80001e04:	00913423          	sd	s1,8(sp)
    80001e08:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	a14080e7          	jalr	-1516(ra) # 80002820 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001e14:	00006497          	auipc	s1,0x6
    80001e18:	05c48493          	addi	s1,s1,92 # 80007e70 <_ZN3TCB7runningE>
    80001e1c:	0004b783          	ld	a5,0(s1)
    80001e20:	0007b703          	ld	a4,0(a5)
    80001e24:	0087b503          	ld	a0,8(a5)
    80001e28:	000700e7          	jalr	a4
    running->setFinished(true);
    80001e2c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool val) { finished = val; }
    80001e30:	00100713          	li	a4,1
    80001e34:	00e78c23          	sb	a4,24(a5)
    //thread_exit();
    thread_dispatch();
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	1f8080e7          	jalr	504(ra) # 80001030 <thread_dispatch>
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret

0000000080001e54 <_ZN3TCB14sThreadWrapperEv>:

void TCB::sThreadWrapper() {
    80001e54:	fe010113          	addi	sp,sp,-32
    80001e58:	00113c23          	sd	ra,24(sp)
    80001e5c:	00813823          	sd	s0,16(sp)
    80001e60:	00913423          	sd	s1,8(sp)
    80001e64:	02010413          	addi	s0,sp,32
    80001e68:	10000793          	li	a5,256
    80001e6c:	1007a073          	csrs	sstatus,a5
    80001e70:	02000793          	li	a5,32
    80001e74:	1007a073          	csrs	sstatus,a5
    80001e78:	00200793          	li	a5,2
    80001e7c:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(0x0000000000000001UL << 8);
    RiscV::setSstatus(0x0000000000000001UL << 5);
    RiscV::setSstatus(RiscV::SIE);
    RiscV::popSppSpie();
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	9a0080e7          	jalr	-1632(ra) # 80002820 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001e88:	00006497          	auipc	s1,0x6
    80001e8c:	fe848493          	addi	s1,s1,-24 # 80007e70 <_ZN3TCB7runningE>
    80001e90:	0004b783          	ld	a5,0(s1)
    80001e94:	0007b703          	ld	a4,0(a5)
    80001e98:	0087b503          	ld	a0,8(a5)
    80001e9c:	000700e7          	jalr	a4
    running->setFinished(true);
    80001ea0:	0004b783          	ld	a5,0(s1)
    80001ea4:	00100713          	li	a4,1
    80001ea8:	00e78c23          	sb	a4,24(a5)
    //thread_exit();
    thread_dispatch();
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	184080e7          	jalr	388(ra) # 80001030 <thread_dispatch>
}
    80001eb4:	01813083          	ld	ra,24(sp)
    80001eb8:	01013403          	ld	s0,16(sp)
    80001ebc:	00813483          	ld	s1,8(sp)
    80001ec0:	02010113          	addi	sp,sp,32
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN3TCBC1EPFvPvES0_mbb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready, bool supervisor)
    80001ec8:	fc010113          	addi	sp,sp,-64
    80001ecc:	02113c23          	sd	ra,56(sp)
    80001ed0:	02813823          	sd	s0,48(sp)
    80001ed4:	02913423          	sd	s1,40(sp)
    80001ed8:	03213023          	sd	s2,32(sp)
    80001edc:	01313c23          	sd	s3,24(sp)
    80001ee0:	01413823          	sd	s4,16(sp)
    80001ee4:	01513423          	sd	s5,8(sp)
    80001ee8:	04010413          	addi	s0,sp,64
    80001eec:	00050493          	mv	s1,a0
    80001ef0:	00058913          	mv	s2,a1
    80001ef4:	00068993          	mv	s3,a3
    80001ef8:	00070a13          	mv	s4,a4
    80001efc:	00078a93          	mv	s5,a5
        })
    80001f00:	00b53023          	sd	a1,0(a0)
    80001f04:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001f08:	06058863          	beqz	a1,80001f78 <_ZN3TCBC1EPFvPvES0_mbb+0xb0>
    80001f0c:	00008537          	lui	a0,0x8
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	7e0080e7          	jalr	2016(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
        })
    80001f18:	00a4b823          	sd	a0,16(s1)
    80001f1c:	00048c23          	sb	zero,24(s1)
    80001f20:	00048ca3          	sb	zero,25(s1)
    80001f24:	0334b023          	sd	s3,32(s1)
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001f28:	06090263          	beqz	s2,80001f8c <_ZN3TCBC1EPFvPvES0_mbb+0xc4>
    80001f2c:	040a8a63          	beqz	s5,80001f80 <_ZN3TCBC1EPFvPvES0_mbb+0xb8>
    80001f30:	00000797          	auipc	a5,0x0
    80001f34:	f2478793          	addi	a5,a5,-220 # 80001e54 <_ZN3TCB14sThreadWrapperEv>
        })
    80001f38:	02f4b423          	sd	a5,40(s1)
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f3c:	04050c63          	beqz	a0,80001f94 <_ZN3TCBC1EPFvPvES0_mbb+0xcc>
    80001f40:	000087b7          	lui	a5,0x8
    80001f44:	00f50533          	add	a0,a0,a5
        })
    80001f48:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001f4c:	00090463          	beqz	s2,80001f54 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>
    80001f50:	040a1663          	bnez	s4,80001f9c <_ZN3TCBC1EPFvPvES0_mbb+0xd4>
}
    80001f54:	03813083          	ld	ra,56(sp)
    80001f58:	03013403          	ld	s0,48(sp)
    80001f5c:	02813483          	ld	s1,40(sp)
    80001f60:	02013903          	ld	s2,32(sp)
    80001f64:	01813983          	ld	s3,24(sp)
    80001f68:	01013a03          	ld	s4,16(sp)
    80001f6c:	00813a83          	ld	s5,8(sp)
    80001f70:	04010113          	addi	sp,sp,64
    80001f74:	00008067          	ret
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001f78:	00000513          	li	a0,0
    80001f7c:	f9dff06f          	j	80001f18 <_ZN3TCBC1EPFvPvES0_mbb+0x50>
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001f80:	00000797          	auipc	a5,0x0
    80001f84:	e7878793          	addi	a5,a5,-392 # 80001df8 <_ZN3TCB13threadWrapperEv>
    80001f88:	fb1ff06f          	j	80001f38 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    80001f8c:	00000793          	li	a5,0
    80001f90:	fa9ff06f          	j	80001f38 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f94:	00000513          	li	a0,0
    80001f98:	fb1ff06f          	j	80001f48 <_ZN3TCBC1EPFvPvES0_mbb+0x80>
    if (body != nullptr && ready) Scheduler::put(this);
    80001f9c:	00048513          	mv	a0,s1
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	c14080e7          	jalr	-1004(ra) # 80002bb4 <_ZN9Scheduler3putEP3TCB>
}
    80001fa8:	fadff06f          	j	80001f54 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>

0000000080001fac <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001fac:	fd010113          	addi	sp,sp,-48
    80001fb0:	02113423          	sd	ra,40(sp)
    80001fb4:	02813023          	sd	s0,32(sp)
    80001fb8:	00913c23          	sd	s1,24(sp)
    80001fbc:	01213823          	sd	s2,16(sp)
    80001fc0:	01313423          	sd	s3,8(sp)
    80001fc4:	03010413          	addi	s0,sp,48
    80001fc8:	00050913          	mv	s2,a0
    80001fcc:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    80001fd0:	03800513          	li	a0,56
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	71c080e7          	jalr	1820(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
    80001fdc:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1, 0);
    80001fe0:	00000793          	li	a5,0
    80001fe4:	00100713          	li	a4,1
    80001fe8:	00200693          	li	a3,2
    80001fec:	00098613          	mv	a2,s3
    80001ff0:	00090593          	mv	a1,s2
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	ed4080e7          	jalr	-300(ra) # 80001ec8 <_ZN3TCBC1EPFvPvES0_mbb>
    80001ffc:	0200006f          	j	8000201c <_ZN3TCB9createTCBEPFvPvES0_+0x70>
    80002000:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    80002004:	00048513          	mv	a0,s1
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	774080e7          	jalr	1908(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
    80002010:	00090513          	mv	a0,s2
    80002014:	00007097          	auipc	ra,0x7
    80002018:	f74080e7          	jalr	-140(ra) # 80008f88 <_Unwind_Resume>
}
    8000201c:	00048513          	mv	a0,s1
    80002020:	02813083          	ld	ra,40(sp)
    80002024:	02013403          	ld	s0,32(sp)
    80002028:	01813483          	ld	s1,24(sp)
    8000202c:	01013903          	ld	s2,16(sp)
    80002030:	00813983          	ld	s3,8(sp)
    80002034:	03010113          	addi	sp,sp,48
    80002038:	00008067          	ret

000000008000203c <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    8000203c:	fd010113          	addi	sp,sp,-48
    80002040:	02113423          	sd	ra,40(sp)
    80002044:	02813023          	sd	s0,32(sp)
    80002048:	00913c23          	sd	s1,24(sp)
    8000204c:	01213823          	sd	s2,16(sp)
    80002050:	01313423          	sd	s3,8(sp)
    80002054:	03010413          	addi	s0,sp,48
    80002058:	00050913          	mv	s2,a0
    8000205c:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    80002060:	03800513          	li	a0,56
    80002064:	00000097          	auipc	ra,0x0
    80002068:	68c080e7          	jalr	1676(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
    8000206c:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0, 0);
    80002070:	00000793          	li	a5,0
    80002074:	00000713          	li	a4,0
    80002078:	00200693          	li	a3,2
    8000207c:	00098613          	mv	a2,s3
    80002080:	00090593          	mv	a1,s2
    80002084:	00000097          	auipc	ra,0x0
    80002088:	e44080e7          	jalr	-444(ra) # 80001ec8 <_ZN3TCBC1EPFvPvES0_mbb>
    8000208c:	0200006f          	j	800020ac <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x70>
    80002090:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    80002094:	00048513          	mv	a0,s1
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	6e4080e7          	jalr	1764(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
    800020a0:	00090513          	mv	a0,s2
    800020a4:	00007097          	auipc	ra,0x7
    800020a8:	ee4080e7          	jalr	-284(ra) # 80008f88 <_Unwind_Resume>
}
    800020ac:	00048513          	mv	a0,s1
    800020b0:	02813083          	ld	ra,40(sp)
    800020b4:	02013403          	ld	s0,32(sp)
    800020b8:	01813483          	ld	s1,24(sp)
    800020bc:	01013903          	ld	s2,16(sp)
    800020c0:	00813983          	ld	s3,8(sp)
    800020c4:	03010113          	addi	sp,sp,48
    800020c8:	00008067          	ret

00000000800020cc <_ZN3TCB19createSupervisorTCBEPFvPvES0_>:
TCB *TCB::createSupervisorTCB(TCB::Body body, void *args) {
    800020cc:	fd010113          	addi	sp,sp,-48
    800020d0:	02113423          	sd	ra,40(sp)
    800020d4:	02813023          	sd	s0,32(sp)
    800020d8:	00913c23          	sd	s1,24(sp)
    800020dc:	01213823          	sd	s2,16(sp)
    800020e0:	01313423          	sd	s3,8(sp)
    800020e4:	03010413          	addi	s0,sp,48
    800020e8:	00050913          	mv	s2,a0
    800020ec:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    800020f0:	03800513          	li	a0,56
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	5fc080e7          	jalr	1532(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
    800020fc:	00050493          	mv	s1,a0
    (body, args,DEFAULT_TIME_SLICE, true, true);
    80002100:	00100793          	li	a5,1
    80002104:	00100713          	li	a4,1
    80002108:	00200693          	li	a3,2
    8000210c:	00098613          	mv	a2,s3
    80002110:	00090593          	mv	a1,s2
    80002114:	00000097          	auipc	ra,0x0
    80002118:	db4080e7          	jalr	-588(ra) # 80001ec8 <_ZN3TCBC1EPFvPvES0_mbb>
    8000211c:	0200006f          	j	8000213c <_ZN3TCB19createSupervisorTCBEPFvPvES0_+0x70>
    80002120:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    80002124:	00048513          	mv	a0,s1
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	654080e7          	jalr	1620(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
    80002130:	00090513          	mv	a0,s2
    80002134:	00007097          	auipc	ra,0x7
    80002138:	e54080e7          	jalr	-428(ra) # 80008f88 <_Unwind_Resume>
}
    8000213c:	00048513          	mv	a0,s1
    80002140:	02813083          	ld	ra,40(sp)
    80002144:	02013403          	ld	s0,32(sp)
    80002148:	01813483          	ld	s1,24(sp)
    8000214c:	01013903          	ld	s2,16(sp)
    80002150:	00813983          	ld	s3,8(sp)
    80002154:	03010113          	addi	sp,sp,48
    80002158:	00008067          	ret

000000008000215c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002170:	00006497          	auipc	s1,0x6
    80002174:	d004b483          	ld	s1,-768(s1) # 80007e70 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002178:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    8000217c:	00079663          	bnez	a5,80002188 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80002180:	0194c783          	lbu	a5,25(s1)
    80002184:	02078c63          	beqz	a5,800021bc <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	9c4080e7          	jalr	-1596(ra) # 80002b4c <_ZN9Scheduler3getEv>
    80002190:	00006797          	auipc	a5,0x6
    80002194:	cea7b023          	sd	a0,-800(a5) # 80007e70 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002198:	02850593          	addi	a1,a0,40 # 8028 <_entry-0x7fff7fd8>
    8000219c:	02848513          	addi	a0,s1,40
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	110080e7          	jalr	272(ra) # 800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800021a8:	01813083          	ld	ra,24(sp)
    800021ac:	01013403          	ld	s0,16(sp)
    800021b0:	00813483          	ld	s1,8(sp)
    800021b4:	02010113          	addi	sp,sp,32
    800021b8:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	9f4080e7          	jalr	-1548(ra) # 80002bb4 <_ZN9Scheduler3putEP3TCB>
    800021c8:	fc1ff06f          	j	80002188 <_ZN3TCB8dispatchEv+0x2c>

00000000800021cc <_Z16threadRunWrapperPv>:
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	00813023          	sd	s0,0(sp)
    800021d8:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) thread;
    t->run();
    800021dc:	00053783          	ld	a5,0(a0)
    800021e0:	0107b783          	ld	a5,16(a5)
    800021e4:	000780e7          	jalr	a5
}
    800021e8:	00813083          	ld	ra,8(sp)
    800021ec:	00013403          	ld	s0,0(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00813423          	sd	s0,8(sp)
    80002200:	01010413          	addi	s0,sp,16
    80002204:	00813403          	ld	s0,8(sp)
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret

0000000080002210 <_ZN6ThreadD0Ev>:
    80002210:	ff010113          	addi	sp,sp,-16
    80002214:	00113423          	sd	ra,8(sp)
    80002218:	00813023          	sd	s0,0(sp)
    8000221c:	01010413          	addi	s0,sp,16
    80002220:	00000097          	auipc	ra,0x0
    80002224:	a78080e7          	jalr	-1416(ra) # 80001c98 <_ZdlPv>
    80002228:	00813083          	ld	ra,8(sp)
    8000222c:	00013403          	ld	s0,0(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret

0000000080002238 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00113423          	sd	ra,8(sp)
    80002240:	00813023          	sd	s0,0(sp)
    80002244:	01010413          	addi	s0,sp,16
    80002248:	00005797          	auipc	a5,0x5
    8000224c:	2d878793          	addi	a5,a5,728 # 80007520 <_ZTV9Semaphore+0x10>
    80002250:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002254:	00853503          	ld	a0,8(a0)
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	dfc080e7          	jalr	-516(ra) # 80001054 <sem_close>
}
    80002260:	00813083          	ld	ra,8(sp)
    80002264:	00013403          	ld	s0,0(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00913423          	sd	s1,8(sp)
    80002280:	02010413          	addi	s0,sp,32
    80002284:	00050493          	mv	s1,a0
}
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	fb0080e7          	jalr	-80(ra) # 80002238 <_ZN9SemaphoreD1Ev>
    80002290:	00048513          	mv	a0,s1
    80002294:	00000097          	auipc	ra,0x0
    80002298:	a04080e7          	jalr	-1532(ra) # 80001c98 <_ZdlPv>
    8000229c:	01813083          	ld	ra,24(sp)
    800022a0:	01013403          	ld	s0,16(sp)
    800022a4:	00813483          	ld	s1,8(sp)
    800022a8:	02010113          	addi	sp,sp,32
    800022ac:	00008067          	ret

00000000800022b0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    800022c0:	00005797          	auipc	a5,0x5
    800022c4:	23878793          	addi	a5,a5,568 # 800074f8 <_ZTV6Thread+0x10>
    800022c8:	00f53023          	sd	a5,0(a0)
    thread_create_deactivated(&myHandle, body, arg);
    800022cc:	00850513          	addi	a0,a0,8
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	d6c080e7          	jalr	-660(ra) # 8000103c <thread_create_deactivated>
}
    800022d8:	00813083          	ld	ra,8(sp)
    800022dc:	00013403          	ld	s0,0(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN6Thread5startEv>:
int Thread::start() {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,&threadRunWrapper, this);
    800022f8:	00050613          	mv	a2,a0
    800022fc:	00000597          	auipc	a1,0x0
    80002300:	ed058593          	addi	a1,a1,-304 # 800021cc <_Z16threadRunWrapperPv>
    80002304:	00850513          	addi	a0,a0,8
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	d10080e7          	jalr	-752(ra) # 80001018 <thread_create>
}
    80002310:	00000513          	li	a0,0
    80002314:	00813083          	ld	ra,8(sp)
    80002318:	00013403          	ld	s0,0(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00113423          	sd	ra,8(sp)
    8000232c:	00813023          	sd	s0,0(sp)
    80002330:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	cfc080e7          	jalr	-772(ra) # 80001030 <thread_dispatch>
}
    8000233c:	00813083          	ld	ra,8(sp)
    80002340:	00013403          	ld	s0,0(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	00813023          	sd	s0,0(sp)
    80002358:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	d1c080e7          	jalr	-740(ra) # 80001078 <time_sleep>
}
    80002364:	00813083          	ld	ra,8(sp)
    80002368:	00013403          	ld	s0,0(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZN6ThreadC1Ev>:
Thread::Thread() {}
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00813423          	sd	s0,8(sp)
    8000237c:	01010413          	addi	s0,sp,16
    80002380:	00005797          	auipc	a5,0x5
    80002384:	17878793          	addi	a5,a5,376 # 800074f8 <_ZTV6Thread+0x10>
    80002388:	00f53023          	sd	a5,0(a0)
    8000238c:	00813403          	ld	s0,8(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    800023a8:	00005797          	auipc	a5,0x5
    800023ac:	17878793          	addi	a5,a5,376 # 80007520 <_ZTV9Semaphore+0x10>
    800023b0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800023b4:	00850513          	addi	a0,a0,8
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	c90080e7          	jalr	-880(ra) # 80001048 <sem_open>
}
    800023c0:	00813083          	ld	ra,8(sp)
    800023c4:	00013403          	ld	s0,0(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	00813023          	sd	s0,0(sp)
    800023dc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800023e0:	00853503          	ld	a0,8(a0)
    800023e4:	fffff097          	auipc	ra,0xfffff
    800023e8:	c7c080e7          	jalr	-900(ra) # 80001060 <sem_wait>
}
    800023ec:	00813083          	ld	ra,8(sp)
    800023f0:	00013403          	ld	s0,0(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret

00000000800023fc <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00113423          	sd	ra,8(sp)
    80002404:	00813023          	sd	s0,0(sp)
    80002408:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000240c:	00853503          	ld	a0,8(a0)
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	c5c080e7          	jalr	-932(ra) # 8000106c <sem_signal>
}
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN14PeriodicThreadC1Em>:


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    80002428:	fe010113          	addi	sp,sp,-32
    8000242c:	00113c23          	sd	ra,24(sp)
    80002430:	00813823          	sd	s0,16(sp)
    80002434:	00913423          	sd	s1,8(sp)
    80002438:	01213023          	sd	s2,0(sp)
    8000243c:	02010413          	addi	s0,sp,32
    80002440:	00050493          	mv	s1,a0
    80002444:	00058913          	mv	s2,a1
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	f2c080e7          	jalr	-212(ra) # 80002374 <_ZN6ThreadC1Ev>
    80002450:	00005797          	auipc	a5,0x5
    80002454:	07878793          	addi	a5,a5,120 # 800074c8 <_ZTV14PeriodicThread+0x10>
    80002458:	00f4b023          	sd	a5,0(s1)
    8000245c:	0324b423          	sd	s2,40(s1)
    80002460:	01813083          	ld	ra,24(sp)
    80002464:	01013403          	ld	s0,16(sp)
    80002468:	00813483          	ld	s1,8(sp)
    8000246c:	00013903          	ld	s2,0(sp)
    80002470:	02010113          	addi	sp,sp,32
    80002474:	00008067          	ret

0000000080002478 <_ZN7Console4getcEv>:


//CONSOLE

char Console::getc() {
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00113423          	sd	ra,8(sp)
    80002480:	00813023          	sd	s0,0(sp)
    80002484:	01010413          	addi	s0,sp,16
    return ::getc();
    80002488:	fffff097          	auipc	ra,0xfffff
    8000248c:	bfc080e7          	jalr	-1028(ra) # 80001084 <getc>
}
    80002490:	00813083          	ld	ra,8(sp)
    80002494:	00013403          	ld	s0,0(sp)
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00113423          	sd	ra,8(sp)
    800024a8:	00813023          	sd	s0,0(sp)
    800024ac:	01010413          	addi	s0,sp,16
    ::putc(c);
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	be0080e7          	jalr	-1056(ra) # 80001090 <putc>
}
    800024b8:	00813083          	ld	ra,8(sp)
    800024bc:	00013403          	ld	s0,0(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    800024d4:	00813403          	ld	s0,8(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_ZN14PeriodicThread18periodicActivationEv>:
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00813423          	sd	s0,8(sp)
    800024e8:	01010413          	addi	s0,sp,16
    800024ec:	00813403          	ld	s0,8(sp)
    800024f0:	01010113          	addi	sp,sp,16
    800024f4:	00008067          	ret

00000000800024f8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00813423          	sd	s0,8(sp)
    80002500:	01010413          	addi	s0,sp,16
    80002504:	00005797          	auipc	a5,0x5
    80002508:	fc478793          	addi	a5,a5,-60 # 800074c8 <_ZTV14PeriodicThread+0x10>
    8000250c:	00f53023          	sd	a5,0(a0)
    80002510:	00813403          	ld	s0,8(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret

000000008000251c <_ZN14PeriodicThreadD0Ev>:
    8000251c:	ff010113          	addi	sp,sp,-16
    80002520:	00113423          	sd	ra,8(sp)
    80002524:	00813023          	sd	s0,0(sp)
    80002528:	01010413          	addi	s0,sp,16
    8000252c:	00005797          	auipc	a5,0x5
    80002530:	f9c78793          	addi	a5,a5,-100 # 800074c8 <_ZTV14PeriodicThread+0x10>
    80002534:	00f53023          	sd	a5,0(a0)
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	760080e7          	jalr	1888(ra) # 80001c98 <_ZdlPv>
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    8000255c:	00005797          	auipc	a5,0x5
    80002560:	00c7b783          	ld	a5,12(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002564:	0007b783          	ld	a5,0(a5)
    80002568:	00006697          	auipc	a3,0x6
    8000256c:	91868693          	addi	a3,a3,-1768 # 80007e80 <_ZN15MemoryAllocator8fMemHeadE>
    80002570:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    80002574:	00005717          	auipc	a4,0x5
    80002578:	02473703          	ld	a4,36(a4) # 80007598 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000257c:	00073703          	ld	a4,0(a4)
    80002580:	40f70733          	sub	a4,a4,a5
    80002584:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80002588:	0006b783          	ld	a5,0(a3)
    8000258c:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    80002590:	0007b823          	sd	zero,16(a5)
}
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    800025b0:	00006517          	auipc	a0,0x6
    800025b4:	8d053503          	ld	a0,-1840(a0) # 80007e80 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    800025b8:	02050063          	beqz	a0,800025d8 <_ZN15MemoryAllocator8firstFitEm+0x38>
    800025bc:	01053703          	ld	a4,16(a0)
    800025c0:	00070c63          	beqz	a4,800025d8 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    800025c4:	00860793          	addi	a5,a2,8
    800025c8:	00053683          	ld	a3,0(a0)
    800025cc:	00f6fe63          	bgeu	a3,a5,800025e8 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    800025d0:	00070513          	mv	a0,a4
    800025d4:	fe5ff06f          	j	800025b8 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    800025d8:	00050863          	beqz	a0,800025e8 <_ZN15MemoryAllocator8firstFitEm+0x48>
    800025dc:	00860613          	addi	a2,a2,8
    800025e0:	00053783          	ld	a5,0(a0)
    800025e4:	00c7e863          	bltu	a5,a2,800025f4 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    800025e8:	00813403          	ld	s0,8(sp)
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret
    return nullptr;
    800025f4:	00000513          	li	a0,0
    800025f8:	ff1ff06f          	j	800025e8 <_ZN15MemoryAllocator8firstFitEm+0x48>

00000000800025fc <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00813423          	sd	s0,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80002608:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    8000260c:	03f57793          	andi	a5,a0,63
    80002610:	00078863          	beqz	a5,80002620 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80002614:	04000713          	li	a4,64
    80002618:	40f707b3          	sub	a5,a4,a5
    8000261c:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80002620:	00813403          	ld	s0,8(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    8000262c:	fe010113          	addi	sp,sp,-32
    80002630:	00113c23          	sd	ra,24(sp)
    80002634:	00813823          	sd	s0,16(sp)
    80002638:	00913423          	sd	s1,8(sp)
    8000263c:	02010413          	addi	s0,sp,32
    80002640:	00050493          	mv	s1,a0
    if (node) {
    80002644:	04050c63          	beqz	a0,8000269c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80002648:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	fb0080e7          	jalr	-80(ra) # 800025fc <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    80002654:	0004b783          	ld	a5,0(s1)
    80002658:	40a787b3          	sub	a5,a5,a0
    8000265c:	03f00713          	li	a4,63
    80002660:	04f77e63          	bgeu	a4,a5,800026bc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    80002664:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80002668:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    8000266c:	0084b783          	ld	a5,8(s1)
    80002670:	04078063          	beqz	a5,800026b0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80002674:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80002678:	0104b783          	ld	a5,16(s1)
    8000267c:	00078463          	beqz	a5,80002684 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    80002680:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80002684:	0104b783          	ld	a5,16(s1)
    80002688:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    8000268c:	0084b783          	ld	a5,8(s1)
    80002690:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80002694:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80002698:	00848513          	addi	a0,s1,8
}
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret
            else fMemHead = newNode;
    800026b0:	00005797          	auipc	a5,0x5
    800026b4:	7ce7b823          	sd	a4,2000(a5) # 80007e80 <_ZN15MemoryAllocator8fMemHeadE>
    800026b8:	fc1ff06f          	j	80002678 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    800026bc:	0084b783          	ld	a5,8(s1)
    800026c0:	02078063          	beqz	a5,800026e0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    800026c4:	0104b703          	ld	a4,16(s1)
    800026c8:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    800026cc:	0104b783          	ld	a5,16(s1)
    800026d0:	fc0782e3          	beqz	a5,80002694 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    800026d4:	0084b703          	ld	a4,8(s1)
    800026d8:	00e7b423          	sd	a4,8(a5)
    800026dc:	fb9ff06f          	j	80002694 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    800026e0:	0104b783          	ld	a5,16(s1)
    800026e4:	00005717          	auipc	a4,0x5
    800026e8:	78f73e23          	sd	a5,1948(a4) # 80007e80 <_ZN15MemoryAllocator8fMemHeadE>
    800026ec:	fe1ff06f          	j	800026cc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

00000000800026f0 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    800026f0:	fe010113          	addi	sp,sp,-32
    800026f4:	00113c23          	sd	ra,24(sp)
    800026f8:	00813823          	sd	s0,16(sp)
    800026fc:	00913423          	sd	s1,8(sp)
    80002700:	02010413          	addi	s0,sp,32
    80002704:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	e98080e7          	jalr	-360(ra) # 800025a0 <_ZN15MemoryAllocator8firstFitEm>
    80002710:	00048593          	mv	a1,s1
    80002714:	00000097          	auipc	ra,0x0
    80002718:	f18080e7          	jalr	-232(ra) # 8000262c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    8000271c:	01813083          	ld	ra,24(sp)
    80002720:	01013403          	ld	s0,16(sp)
    80002724:	00813483          	ld	s1,8(sp)
    80002728:	02010113          	addi	sp,sp,32
    8000272c:	00008067          	ret

0000000080002730 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00813423          	sd	s0,8(sp)
    80002738:	01010413          	addi	s0,sp,16
    if(!node) return;
    8000273c:	02050a63          	beqz	a0,80002770 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    80002740:	01053783          	ld	a5,16(a0)
    80002744:	02078663          	beqz	a5,80002770 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80002748:	00053703          	ld	a4,0(a0)
    8000274c:	00e506b3          	add	a3,a0,a4
    80002750:	02f69063          	bne	a3,a5,80002770 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    80002754:	0007b683          	ld	a3,0(a5)
    80002758:	00d70733          	add	a4,a4,a3
    8000275c:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80002760:	0107b783          	ld	a5,16(a5)
    80002764:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80002768:	00078463          	beqz	a5,80002770 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    8000276c:	00a7b423          	sd	a0,8(a5)
}
    80002770:	00813403          	ld	s0,8(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    8000277c:	fe010113          	addi	sp,sp,-32
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	00813823          	sd	s0,16(sp)
    80002788:	00913423          	sd	s1,8(sp)
    8000278c:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    80002790:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    80002794:	00005717          	auipc	a4,0x5
    80002798:	6ec73703          	ld	a4,1772(a4) # 80007e80 <_ZN15MemoryAllocator8fMemHeadE>
    8000279c:	02070063          	beqz	a4,800027bc <_ZN15MemoryAllocator4freeEPv+0x40>
    800027a0:	02a77263          	bgeu	a4,a0,800027c4 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    800027a4:	00070793          	mv	a5,a4
    800027a8:	00078493          	mv	s1,a5
    800027ac:	0107b783          	ld	a5,16(a5)
    800027b0:	00078c63          	beqz	a5,800027c8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800027b4:	fea7eae3          	bltu	a5,a0,800027a8 <_ZN15MemoryAllocator4freeEPv+0x2c>
    800027b8:	0100006f          	j	800027c8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    800027bc:	00070493          	mv	s1,a4
    800027c0:	0080006f          	j	800027c8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800027c4:	00000493          	li	s1,0
    newNode->prev = curr;
    800027c8:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    800027cc:	04048263          	beqz	s1,80002810 <_ZN15MemoryAllocator4freeEPv+0x94>
    800027d0:	0104b783          	ld	a5,16(s1)
    800027d4:	00f53823          	sd	a5,16(a0)
    800027d8:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    800027dc:	01053783          	ld	a5,16(a0)
    800027e0:	00078463          	beqz	a5,800027e8 <_ZN15MemoryAllocator4freeEPv+0x6c>
    800027e4:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	f48080e7          	jalr	-184(ra) # 80002730 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    800027f0:	00048513          	mv	a0,s1
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	f3c080e7          	jalr	-196(ra) # 80002730 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    800027fc:	01813083          	ld	ra,24(sp)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80002810:	00e53823          	sd	a4,16(a0)
    80002814:	00005797          	auipc	a5,0x5
    80002818:	66a7b623          	sd	a0,1644(a5) # 80007e80 <_ZN15MemoryAllocator8fMemHeadE>
    8000281c:	fc1ff06f          	j	800027dc <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080002820 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00813423          	sd	s0,8(sp)
    80002828:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000282c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002830:	10200073          	sret
    80002834:	00813403          	ld	s0,8(sp)
    80002838:	01010113          	addi	sp,sp,16
    8000283c:	00008067          	ret

0000000080002840 <_Z14__print_stringPKc>:

#include "../lib/hw.h"
#include "../h/__print.hpp"
#include "../h/uart.hpp"

void __print_string(char const *string) {
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	02010413          	addi	s0,sp,32
    80002854:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) Uart::txPut(*c);
    80002858:	0004c503          	lbu	a0,0(s1)
    8000285c:	00050a63          	beqz	a0,80002870 <_Z14__print_stringPKc+0x30>
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	21c080e7          	jalr	540(ra) # 80001a7c <_ZN4Uart5txPutEc>
    80002868:	00148493          	addi	s1,s1,1
    8000286c:	fedff06f          	j	80002858 <_Z14__print_stringPKc+0x18>
}
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	00813483          	ld	s1,8(sp)
    8000287c:	02010113          	addi	sp,sp,32
    80002880:	00008067          	ret

0000000080002884 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80002884:	fc010113          	addi	sp,sp,-64
    80002888:	02113c23          	sd	ra,56(sp)
    8000288c:	02813823          	sd	s0,48(sp)
    80002890:	02913423          	sd	s1,40(sp)
    80002894:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80002898:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    8000289c:	00a00693          	li	a3,10
    800028a0:	02d57633          	remu	a2,a0,a3
    800028a4:	00004717          	auipc	a4,0x4
    800028a8:	8dc70713          	addi	a4,a4,-1828 # 80006180 <_ZZ14__print_uint64mE6digits>
    800028ac:	00c70733          	add	a4,a4,a2
    800028b0:	00074703          	lbu	a4,0(a4)
    800028b4:	fe040613          	addi	a2,s0,-32
    800028b8:	009607b3          	add	a5,a2,s1
    800028bc:	0014849b          	addiw	s1,s1,1
    800028c0:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    800028c4:	00050713          	mv	a4,a0
    800028c8:	02d55533          	divu	a0,a0,a3
    800028cc:	00900793          	li	a5,9
    800028d0:	fce7e6e3          	bltu	a5,a4,8000289c <_Z14__print_uint64m+0x18>
    while(--i >= 0) Uart::txPut(output[i]);
    800028d4:	fff4849b          	addiw	s1,s1,-1
    800028d8:	0004ce63          	bltz	s1,800028f4 <_Z14__print_uint64m+0x70>
    800028dc:	fe040793          	addi	a5,s0,-32
    800028e0:	009787b3          	add	a5,a5,s1
    800028e4:	fe87c503          	lbu	a0,-24(a5)
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	194080e7          	jalr	404(ra) # 80001a7c <_ZN4Uart5txPutEc>
    800028f0:	fe5ff06f          	j	800028d4 <_Z14__print_uint64m+0x50>
}
    800028f4:	03813083          	ld	ra,56(sp)
    800028f8:	03013403          	ld	s0,48(sp)
    800028fc:	02813483          	ld	s1,40(sp)
    80002900:	04010113          	addi	sp,sp,64
    80002904:	00008067          	ret

0000000080002908 <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    8000291c:	00050493          	mv	s1,a0
        return MemoryAllocator::allocate(size);
    80002920:	02000513          	li	a0,32
    80002924:	00000097          	auipc	ra,0x0
    80002928:	dcc080e7          	jalr	-564(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
        }
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    8000292c:	00053023          	sd	zero,0(a0)
    80002930:	00053423          	sd	zero,8(a0)
    void operator delete[](void* ptr) {
        MemoryAllocator::free(ptr);
    }

private:
    Sem(unsigned init) : init(init), val(init) {}
    80002934:	00952823          	sw	s1,16(a0)
    80002938:	02049493          	slli	s1,s1,0x20
    8000293c:	0204d493          	srli	s1,s1,0x20
    80002940:	00953c23          	sd	s1,24(a0)
    return new Sem(init);
}
    80002944:	01813083          	ld	ra,24(sp)
    80002948:	01013403          	ld	s0,16(sp)
    8000294c:	00813483          	ld	s1,8(sp)
    80002950:	02010113          	addi	sp,sp,32
    80002954:	00008067          	ret

0000000080002958 <_ZN3SemD1Ev>:

Sem::~Sem() {
    80002958:	fe010113          	addi	sp,sp,-32
    8000295c:	00113c23          	sd	ra,24(sp)
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	01213023          	sd	s2,0(sp)
    8000296c:	02010413          	addi	s0,sp,32
    80002970:	00050493          	mv	s1,a0
    80002974:	0280006f          	j	8000299c <_ZN3SemD1Ev+0x44>
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
    80002978:	0004b423          	sd	zero,8(s1)
            MemoryAllocator::free(ptr);
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	e00080e7          	jalr	-512(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
    while (val < 0) {
        Scheduler::put(list.takeFirst());
    80002984:	00090513          	mv	a0,s2
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	22c080e7          	jalr	556(ra) # 80002bb4 <_ZN9Scheduler3putEP3TCB>
        val++;
    80002990:	0184b783          	ld	a5,24(s1)
    80002994:	00178793          	addi	a5,a5,1
    80002998:	00f4bc23          	sd	a5,24(s1)
    while (val < 0) {
    8000299c:	0184b783          	ld	a5,24(s1)
    800029a0:	0207d463          	bgez	a5,800029c8 <_ZN3SemD1Ev+0x70>
        if (!head) return 0;
    800029a4:	0004b503          	ld	a0,0(s1)
    800029a8:	00050c63          	beqz	a0,800029c0 <_ZN3SemD1Ev+0x68>
        T* ret = head->data;
    800029ac:	00053903          	ld	s2,0(a0)
        head = head->next;
    800029b0:	00853783          	ld	a5,8(a0)
    800029b4:	00f4b023          	sd	a5,0(s1)
        if (!head) tail = 0;
    800029b8:	fc0792e3          	bnez	a5,8000297c <_ZN3SemD1Ev+0x24>
    800029bc:	fbdff06f          	j	80002978 <_ZN3SemD1Ev+0x20>
        if (!head) return 0;
    800029c0:	00050913          	mv	s2,a0
    800029c4:	fc1ff06f          	j	80002984 <_ZN3SemD1Ev+0x2c>
    }
}
    800029c8:	01813083          	ld	ra,24(sp)
    800029cc:	01013403          	ld	s0,16(sp)
    800029d0:	00813483          	ld	s1,8(sp)
    800029d4:	00013903          	ld	s2,0(sp)
    800029d8:	02010113          	addi	sp,sp,32
    800029dc:	00008067          	ret

00000000800029e0 <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    if (--val < 0) {
    800029e0:	01853783          	ld	a5,24(a0)
    800029e4:	fff78793          	addi	a5,a5,-1
    800029e8:	00f53c23          	sd	a5,24(a0)
    800029ec:	0007c663          	bltz	a5,800029f8 <_ZN3Sem7semWaitEv+0x18>
        old->setBlocked(true);
        list.putLast(old);
        TCB::dispatch();
    }
    return 0;
}
    800029f0:	00000513          	li	a0,0
    800029f4:	00008067          	ret
int Sem::semWait() {
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00113c23          	sd	ra,24(sp)
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	01213023          	sd	s2,0(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00050493          	mv	s1,a0
        TCB *old = TCB::running;
    80002a14:	00005797          	auipc	a5,0x5
    80002a18:	b7c7b783          	ld	a5,-1156(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a1c:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool val) { blocked = val; }
    80002a20:	00100793          	li	a5,1
    80002a24:	00f90ca3          	sb	a5,25(s2)
            return MemoryAllocator::allocate(size);
    80002a28:	01000513          	li	a0,16
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	cc4080e7          	jalr	-828(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002a34:	01253023          	sd	s2,0(a0)
    80002a38:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002a3c:	0084b783          	ld	a5,8(s1)
    80002a40:	02078863          	beqz	a5,80002a70 <_ZN3Sem7semWaitEv+0x90>
            tail->next = newNode;
    80002a44:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002a48:	00a4b423          	sd	a0,8(s1)
        TCB::dispatch();
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	710080e7          	jalr	1808(ra) # 8000215c <_ZN3TCB8dispatchEv>
}
    80002a54:	00000513          	li	a0,0
    80002a58:	01813083          	ld	ra,24(sp)
    80002a5c:	01013403          	ld	s0,16(sp)
    80002a60:	00813483          	ld	s1,8(sp)
    80002a64:	00013903          	ld	s2,0(sp)
    80002a68:	02010113          	addi	sp,sp,32
    80002a6c:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002a70:	00a4b423          	sd	a0,8(s1)
    80002a74:	00a4b023          	sd	a0,0(s1)
    80002a78:	fd5ff06f          	j	80002a4c <_ZN3Sem7semWaitEv+0x6c>

0000000080002a7c <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    80002a7c:	01853703          	ld	a4,24(a0)
    80002a80:	00170713          	addi	a4,a4,1
    80002a84:	00e53c23          	sd	a4,24(a0)
    80002a88:	00e05663          	blez	a4,80002a94 <_ZN3Sem9semSignalEv+0x18>
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
    80002a8c:	00000513          	li	a0,0
    80002a90:	00008067          	ret
int Sem::semSignal() {
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	02010413          	addi	s0,sp,32
    80002aa8:	00050793          	mv	a5,a0
        if (!head) return 0;
    80002aac:	00053503          	ld	a0,0(a0)
    80002ab0:	04050663          	beqz	a0,80002afc <_ZN3Sem9semSignalEv+0x80>
        T* ret = head->data;
    80002ab4:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002ab8:	00853703          	ld	a4,8(a0)
    80002abc:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    80002ac0:	02070a63          	beqz	a4,80002af4 <_ZN3Sem9semSignalEv+0x78>
            MemoryAllocator::free(ptr);
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	cb8080e7          	jalr	-840(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
    80002acc:	00048ca3          	sb	zero,25(s1)
        Scheduler::put(ready);
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	0e0080e7          	jalr	224(ra) # 80002bb4 <_ZN9Scheduler3putEP3TCB>
    80002adc:	00000513          	li	a0,0
    80002ae0:	01813083          	ld	ra,24(sp)
    80002ae4:	01013403          	ld	s0,16(sp)
    80002ae8:	00813483          	ld	s1,8(sp)
    80002aec:	02010113          	addi	sp,sp,32
    80002af0:	00008067          	ret
        if (!head) tail = 0;
    80002af4:	0007b423          	sd	zero,8(a5)
    80002af8:	fcdff06f          	j	80002ac4 <_ZN3Sem9semSignalEv+0x48>
        if (!head) return 0;
    80002afc:	00050493          	mv	s1,a0
    80002b00:	fcdff06f          	j	80002acc <_ZN3Sem9semSignalEv+0x50>

0000000080002b04 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::finish() {
    sleepQueue.deleteList();
    readyQueue.deleteList();
}
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00813423          	sd	s0,8(sp)
    80002b0c:	01010413          	addi	s0,sp,16
    80002b10:	00100793          	li	a5,1
    80002b14:	00f50863          	beq	a0,a5,80002b24 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002b18:	00813403          	ld	s0,8(sp)
    80002b1c:	01010113          	addi	sp,sp,16
    80002b20:	00008067          	ret
    80002b24:	000107b7          	lui	a5,0x10
    80002b28:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b2c:	fef596e3          	bne	a1,a5,80002b18 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002b30:	00005797          	auipc	a5,0x5
    80002b34:	35878793          	addi	a5,a5,856 # 80007e88 <_ZN9Scheduler10readyQueueE>
    80002b38:	0007b023          	sd	zero,0(a5)
    80002b3c:	0007b423          	sd	zero,8(a5)
    80002b40:	0007b823          	sd	zero,16(a5)
    80002b44:	0007bc23          	sd	zero,24(a5)
    80002b48:	fd1ff06f          	j	80002b18 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002b4c <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	02010413          	addi	s0,sp,32
        if (!head) return 0;
    80002b60:	00005517          	auipc	a0,0x5
    80002b64:	32853503          	ld	a0,808(a0) # 80007e88 <_ZN9Scheduler10readyQueueE>
    80002b68:	04050263          	beqz	a0,80002bac <_ZN9Scheduler3getEv+0x60>
        T* ret = head->data;
    80002b6c:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002b70:	00853783          	ld	a5,8(a0)
    80002b74:	00005717          	auipc	a4,0x5
    80002b78:	30f73a23          	sd	a5,788(a4) # 80007e88 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80002b7c:	02078263          	beqz	a5,80002ba0 <_ZN9Scheduler3getEv+0x54>
            MemoryAllocator::free(ptr);
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	bfc080e7          	jalr	-1028(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
}
    80002b88:	00048513          	mv	a0,s1
    80002b8c:	01813083          	ld	ra,24(sp)
    80002b90:	01013403          	ld	s0,16(sp)
    80002b94:	00813483          	ld	s1,8(sp)
    80002b98:	02010113          	addi	sp,sp,32
    80002b9c:	00008067          	ret
        if (!head) tail = 0;
    80002ba0:	00005797          	auipc	a5,0x5
    80002ba4:	2e07b823          	sd	zero,752(a5) # 80007e90 <_ZN9Scheduler10readyQueueE+0x8>
    80002ba8:	fd9ff06f          	j	80002b80 <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80002bac:	00050493          	mv	s1,a0
    return ret;
    80002bb0:	fd9ff06f          	j	80002b88 <_ZN9Scheduler3getEv+0x3c>

0000000080002bb4 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002bb4:	fe010113          	addi	sp,sp,-32
    80002bb8:	00113c23          	sd	ra,24(sp)
    80002bbc:	00813823          	sd	s0,16(sp)
    80002bc0:	00913423          	sd	s1,8(sp)
    80002bc4:	02010413          	addi	s0,sp,32
    80002bc8:	00050493          	mv	s1,a0
            return MemoryAllocator::allocate(size);
    80002bcc:	01000513          	li	a0,16
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	b20080e7          	jalr	-1248(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002bd8:	00953023          	sd	s1,0(a0)
    80002bdc:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002be0:	00005797          	auipc	a5,0x5
    80002be4:	2b07b783          	ld	a5,688(a5) # 80007e90 <_ZN9Scheduler10readyQueueE+0x8>
    80002be8:	02078263          	beqz	a5,80002c0c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80002bec:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002bf0:	00005797          	auipc	a5,0x5
    80002bf4:	2aa7b023          	sd	a0,672(a5) # 80007e90 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002bf8:	01813083          	ld	ra,24(sp)
    80002bfc:	01013403          	ld	s0,16(sp)
    80002c00:	00813483          	ld	s1,8(sp)
    80002c04:	02010113          	addi	sp,sp,32
    80002c08:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002c0c:	00005797          	auipc	a5,0x5
    80002c10:	27c78793          	addi	a5,a5,636 # 80007e88 <_ZN9Scheduler10readyQueueE>
    80002c14:	00a7b423          	sd	a0,8(a5)
    80002c18:	00a7b023          	sd	a0,0(a5)
    80002c1c:	fddff06f          	j	80002bf8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002c20 <_ZN9Scheduler14timerInterruptEv>:
void Scheduler::timerInterrupt() {
    80002c20:	fe010113          	addi	sp,sp,-32
    80002c24:	00113c23          	sd	ra,24(sp)
    80002c28:	00813823          	sd	s0,16(sp)
    80002c2c:	00913423          	sd	s1,8(sp)
    80002c30:	02010413          	addi	s0,sp,32

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002c34:	00005497          	auipc	s1,0x5
    80002c38:	2644b483          	ld	s1,612(s1) # 80007e98 <_ZN9Scheduler10sleepQueueE>
    80002c3c:	04048663          	beqz	s1,80002c88 <_ZN9Scheduler14timerInterruptEv+0x68>
        return head->data;
    80002c40:	0004b483          	ld	s1,0(s1)
    80002c44:	0440006f          	j	80002c88 <_ZN9Scheduler14timerInterruptEv+0x68>
        if (!head) tail = 0;
    80002c48:	00005797          	auipc	a5,0x5
    80002c4c:	2407bc23          	sd	zero,600(a5) # 80007ea0 <_ZN9Scheduler10sleepQueueE+0x8>
            MemoryAllocator::free(ptr);
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	b2c080e7          	jalr	-1236(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
        first->thread->setBlocked(false);
    80002c58:	0084b783          	ld	a5,8(s1)
    80002c5c:	00078ca3          	sb	zero,25(a5)
        Scheduler::put(first->thread);
    80002c60:	0084b503          	ld	a0,8(s1)
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	f50080e7          	jalr	-176(ra) # 80002bb4 <_ZN9Scheduler3putEP3TCB>
        void* operator new[](size_t size) {
            return MemoryAllocator::allocate(size);
        }

        void operator delete(void* ptr) {
            MemoryAllocator::free(ptr);
    80002c6c:	00048513          	mv	a0,s1
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	b0c080e7          	jalr	-1268(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
        if(!head) return 0;
    80002c78:	00005497          	auipc	s1,0x5
    80002c7c:	2204b483          	ld	s1,544(s1) # 80007e98 <_ZN9Scheduler10sleepQueueE>
    80002c80:	02048a63          	beqz	s1,80002cb4 <_ZN9Scheduler14timerInterruptEv+0x94>
        return head->data;
    80002c84:	0004b483          	ld	s1,0(s1)
    while(first) {
    80002c88:	02048663          	beqz	s1,80002cb4 <_ZN9Scheduler14timerInterruptEv+0x94>
        if (first->time != 0) break;
    80002c8c:	0004b783          	ld	a5,0(s1)
    80002c90:	02079263          	bnez	a5,80002cb4 <_ZN9Scheduler14timerInterruptEv+0x94>
        if (!head) return 0;
    80002c94:	00005517          	auipc	a0,0x5
    80002c98:	20453503          	ld	a0,516(a0) # 80007e98 <_ZN9Scheduler10sleepQueueE>
    80002c9c:	fa050ee3          	beqz	a0,80002c58 <_ZN9Scheduler14timerInterruptEv+0x38>
        head = head->next;
    80002ca0:	00853783          	ld	a5,8(a0)
    80002ca4:	00005717          	auipc	a4,0x5
    80002ca8:	1ef73a23          	sd	a5,500(a4) # 80007e98 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    80002cac:	fa0792e3          	bnez	a5,80002c50 <_ZN9Scheduler14timerInterruptEv+0x30>
    80002cb0:	f99ff06f          	j	80002c48 <_ZN9Scheduler14timerInterruptEv+0x28>
    if (!first) return;
    80002cb4:	00048863          	beqz	s1,80002cc4 <_ZN9Scheduler14timerInterruptEv+0xa4>
    first->time--;
    80002cb8:	0004b783          	ld	a5,0(s1)
    80002cbc:	fff78793          	addi	a5,a5,-1
    80002cc0:	00f4b023          	sd	a5,0(s1)
}
    80002cc4:	01813083          	ld	ra,24(sp)
    80002cc8:	01013403          	ld	s0,16(sp)
    80002ccc:	00813483          	ld	s1,8(sp)
    80002cd0:	02010113          	addi	sp,sp,32
    80002cd4:	00008067          	ret

0000000080002cd8 <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    80002cd8:	fd010113          	addi	sp,sp,-48
    80002cdc:	02113423          	sd	ra,40(sp)
    80002ce0:	02813023          	sd	s0,32(sp)
    80002ce4:	00913c23          	sd	s1,24(sp)
    80002ce8:	01213823          	sd	s2,16(sp)
    80002cec:	01313423          	sd	s3,8(sp)
    80002cf0:	03010413          	addi	s0,sp,48
    80002cf4:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80002cf8:	00005797          	auipc	a5,0x5
    80002cfc:	8987b783          	ld	a5,-1896(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d00:	0007b983          	ld	s3,0(a5)
    80002d04:	00100793          	li	a5,1
    80002d08:	00f98ca3          	sb	a5,25(s3)
            return MemoryAllocator::allocate(size);
    80002d0c:	01000513          	li	a0,16
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	9e0080e7          	jalr	-1568(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
    80002d18:	00050493          	mv	s1,a0
        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    80002d1c:	01253023          	sd	s2,0(a0)
    80002d20:	01353423          	sd	s3,8(a0)
            return MemoryAllocator::allocate(size);
    80002d24:	01000513          	li	a0,16
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	9c8080e7          	jalr	-1592(ra) # 800026f0 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002d30:	00953023          	sd	s1,0(a0)
    80002d34:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    80002d38:	00005797          	auipc	a5,0x5
    80002d3c:	1607b783          	ld	a5,352(a5) # 80007e98 <_ZN9Scheduler10sleepQueueE>
    80002d40:	02078a63          	beqz	a5,80002d74 <_ZN9Scheduler9timeSleepEm+0x9c>
        Node* curr = head, *prev = nullptr;
    80002d44:	00000693          	li	a3,0
        while (curr) {
    80002d48:	04078063          	beqz	a5,80002d88 <_ZN9Scheduler9timeSleepEm+0xb0>
            if (*(uint64*)(newNode->data) < *(uint64*)(curr->data)) {
    80002d4c:	00053603          	ld	a2,0(a0)
    80002d50:	00063703          	ld	a4,0(a2)
    80002d54:	0007b583          	ld	a1,0(a5)
    80002d58:	0005b583          	ld	a1,0(a1)
    80002d5c:	02b76663          	bltu	a4,a1,80002d88 <_ZN9Scheduler9timeSleepEm+0xb0>
            *(uint64*)(newNode->data) -= *(uint64*)(curr->data);
    80002d60:	40b70733          	sub	a4,a4,a1
    80002d64:	00e63023          	sd	a4,0(a2)
            prev = curr;
    80002d68:	00078693          	mv	a3,a5
            curr = curr->next;
    80002d6c:	0087b783          	ld	a5,8(a5)
        while (curr) {
    80002d70:	fd9ff06f          	j	80002d48 <_ZN9Scheduler9timeSleepEm+0x70>
        if (!head) { head = tail = newNode; return; }
    80002d74:	00005797          	auipc	a5,0x5
    80002d78:	11478793          	addi	a5,a5,276 # 80007e88 <_ZN9Scheduler10readyQueueE>
    80002d7c:	00a7bc23          	sd	a0,24(a5)
    80002d80:	00a7b823          	sd	a0,16(a5)
    80002d84:	02c0006f          	j	80002db0 <_ZN9Scheduler9timeSleepEm+0xd8>
        if (prev) prev->next = newNode;
    80002d88:	04068663          	beqz	a3,80002dd4 <_ZN9Scheduler9timeSleepEm+0xfc>
    80002d8c:	00a6b423          	sd	a0,8(a3)
        if (curr) {newNode->next = curr; *(uint64*)(curr->data) -= *(uint64*)(newNode->data);}
    80002d90:	04078863          	beqz	a5,80002de0 <_ZN9Scheduler9timeSleepEm+0x108>
    80002d94:	00f53423          	sd	a5,8(a0)
    80002d98:	0007b703          	ld	a4,0(a5)
    80002d9c:	00053683          	ld	a3,0(a0)
    80002da0:	00073783          	ld	a5,0(a4)
    80002da4:	0006b683          	ld	a3,0(a3)
    80002da8:	40d787b3          	sub	a5,a5,a3
    80002dac:	00f73023          	sd	a5,0(a4)
    TCB::dispatch();
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	3ac080e7          	jalr	940(ra) # 8000215c <_ZN3TCB8dispatchEv>
}
    80002db8:	02813083          	ld	ra,40(sp)
    80002dbc:	02013403          	ld	s0,32(sp)
    80002dc0:	01813483          	ld	s1,24(sp)
    80002dc4:	01013903          	ld	s2,16(sp)
    80002dc8:	00813983          	ld	s3,8(sp)
    80002dcc:	03010113          	addi	sp,sp,48
    80002dd0:	00008067          	ret
        else head = newNode;
    80002dd4:	00005717          	auipc	a4,0x5
    80002dd8:	0ca73223          	sd	a0,196(a4) # 80007e98 <_ZN9Scheduler10sleepQueueE>
    80002ddc:	fb5ff06f          	j	80002d90 <_ZN9Scheduler9timeSleepEm+0xb8>
        else prev->next = newNode;
    80002de0:	00a6b423          	sd	a0,8(a3)
    80002de4:	fcdff06f          	j	80002db0 <_ZN9Scheduler9timeSleepEm+0xd8>

0000000080002de8 <_ZN9Scheduler6finishEv>:
void Scheduler::finish() {
    80002de8:	ff010113          	addi	sp,sp,-16
    80002dec:	00113423          	sd	ra,8(sp)
    80002df0:	00813023          	sd	s0,0(sp)
    80002df4:	01010413          	addi	s0,sp,16

        tail = 0;
    }*/

    void deleteList() {
        while (head) {
    80002df8:	00005517          	auipc	a0,0x5
    80002dfc:	0a053503          	ld	a0,160(a0) # 80007e98 <_ZN9Scheduler10sleepQueueE>
    80002e00:	02050063          	beqz	a0,80002e20 <_ZN9Scheduler6finishEv+0x38>
            Node *old = head;
            head = head->next;
    80002e04:	00853783          	ld	a5,8(a0)
    80002e08:	00005717          	auipc	a4,0x5
    80002e0c:	08f73823          	sd	a5,144(a4) # 80007e98 <_ZN9Scheduler10sleepQueueE>
            delete old;
    80002e10:	fe0504e3          	beqz	a0,80002df8 <_ZN9Scheduler6finishEv+0x10>
            MemoryAllocator::free(ptr);
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	968080e7          	jalr	-1688(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
        }
    80002e1c:	fddff06f          	j	80002df8 <_ZN9Scheduler6finishEv+0x10>
        }

        tail = 0;
    80002e20:	00005797          	auipc	a5,0x5
    80002e24:	0807b023          	sd	zero,128(a5) # 80007ea0 <_ZN9Scheduler10sleepQueueE+0x8>
        while (head) {
    80002e28:	00005517          	auipc	a0,0x5
    80002e2c:	06053503          	ld	a0,96(a0) # 80007e88 <_ZN9Scheduler10readyQueueE>
    80002e30:	02050063          	beqz	a0,80002e50 <_ZN9Scheduler6finishEv+0x68>
            head = head->next;
    80002e34:	00853783          	ld	a5,8(a0)
    80002e38:	00005717          	auipc	a4,0x5
    80002e3c:	04f73823          	sd	a5,80(a4) # 80007e88 <_ZN9Scheduler10readyQueueE>
            delete old;
    80002e40:	fe0504e3          	beqz	a0,80002e28 <_ZN9Scheduler6finishEv+0x40>
            MemoryAllocator::free(ptr);
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	938080e7          	jalr	-1736(ra) # 8000277c <_ZN15MemoryAllocator4freeEPv>
        }
    80002e4c:	fddff06f          	j	80002e28 <_ZN9Scheduler6finishEv+0x40>
        tail = 0;
    80002e50:	00005797          	auipc	a5,0x5
    80002e54:	0407b023          	sd	zero,64(a5) # 80007e90 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002e58:	00813083          	ld	ra,8(sp)
    80002e5c:	00013403          	ld	s0,0(sp)
    80002e60:	01010113          	addi	sp,sp,16
    80002e64:	00008067          	ret

0000000080002e68 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00113423          	sd	ra,8(sp)
    80002e70:	00813023          	sd	s0,0(sp)
    80002e74:	01010413          	addi	s0,sp,16
    80002e78:	000105b7          	lui	a1,0x10
    80002e7c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002e80:	00100513          	li	a0,1
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	c80080e7          	jalr	-896(ra) # 80002b04 <_Z41__static_initialization_and_destruction_0ii>
    80002e8c:	00813083          	ld	ra,8(sp)
    80002e90:	00013403          	ld	s0,0(sp)
    80002e94:	01010113          	addi	sp,sp,16
    80002e98:	00008067          	ret

0000000080002e9c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002e9c:	fe010113          	addi	sp,sp,-32
    80002ea0:	00113c23          	sd	ra,24(sp)
    80002ea4:	00813823          	sd	s0,16(sp)
    80002ea8:	00913423          	sd	s1,8(sp)
    80002eac:	02010413          	addi	s0,sp,32
    80002eb0:	00050493          	mv	s1,a0
    LOCK();
    80002eb4:	00100613          	li	a2,1
    80002eb8:	00000593          	li	a1,0
    80002ebc:	00005517          	auipc	a0,0x5
    80002ec0:	fec50513          	addi	a0,a0,-20 # 80007ea8 <lockPrint>
    80002ec4:	ffffe097          	auipc	ra,0xffffe
    80002ec8:	400080e7          	jalr	1024(ra) # 800012c4 <copy_and_swap>
    80002ecc:	fe0514e3          	bnez	a0,80002eb4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002ed0:	0004c503          	lbu	a0,0(s1)
    80002ed4:	00050a63          	beqz	a0,80002ee8 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	1b8080e7          	jalr	440(ra) # 80001090 <putc>
        string++;
    80002ee0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ee4:	fedff06f          	j	80002ed0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002ee8:	00000613          	li	a2,0
    80002eec:	00100593          	li	a1,1
    80002ef0:	00005517          	auipc	a0,0x5
    80002ef4:	fb850513          	addi	a0,a0,-72 # 80007ea8 <lockPrint>
    80002ef8:	ffffe097          	auipc	ra,0xffffe
    80002efc:	3cc080e7          	jalr	972(ra) # 800012c4 <copy_and_swap>
    80002f00:	fe0514e3          	bnez	a0,80002ee8 <_Z11printStringPKc+0x4c>
}
    80002f04:	01813083          	ld	ra,24(sp)
    80002f08:	01013403          	ld	s0,16(sp)
    80002f0c:	00813483          	ld	s1,8(sp)
    80002f10:	02010113          	addi	sp,sp,32
    80002f14:	00008067          	ret

0000000080002f18 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f18:	fd010113          	addi	sp,sp,-48
    80002f1c:	02113423          	sd	ra,40(sp)
    80002f20:	02813023          	sd	s0,32(sp)
    80002f24:	00913c23          	sd	s1,24(sp)
    80002f28:	01213823          	sd	s2,16(sp)
    80002f2c:	01313423          	sd	s3,8(sp)
    80002f30:	01413023          	sd	s4,0(sp)
    80002f34:	03010413          	addi	s0,sp,48
    80002f38:	00050993          	mv	s3,a0
    80002f3c:	00058a13          	mv	s4,a1
    LOCK();
    80002f40:	00100613          	li	a2,1
    80002f44:	00000593          	li	a1,0
    80002f48:	00005517          	auipc	a0,0x5
    80002f4c:	f6050513          	addi	a0,a0,-160 # 80007ea8 <lockPrint>
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	374080e7          	jalr	884(ra) # 800012c4 <copy_and_swap>
    80002f58:	fe0514e3          	bnez	a0,80002f40 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f5c:	00000913          	li	s2,0
    80002f60:	00090493          	mv	s1,s2
    80002f64:	0019091b          	addiw	s2,s2,1
    80002f68:	03495a63          	bge	s2,s4,80002f9c <_Z9getStringPci+0x84>
        cc = getc();
    80002f6c:	ffffe097          	auipc	ra,0xffffe
    80002f70:	118080e7          	jalr	280(ra) # 80001084 <getc>
        if(cc < 1)
    80002f74:	02050463          	beqz	a0,80002f9c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002f78:	009984b3          	add	s1,s3,s1
    80002f7c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002f80:	00a00793          	li	a5,10
    80002f84:	00f50a63          	beq	a0,a5,80002f98 <_Z9getStringPci+0x80>
    80002f88:	00d00793          	li	a5,13
    80002f8c:	fcf51ae3          	bne	a0,a5,80002f60 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002f90:	00090493          	mv	s1,s2
    80002f94:	0080006f          	j	80002f9c <_Z9getStringPci+0x84>
    80002f98:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002f9c:	009984b3          	add	s1,s3,s1
    80002fa0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002fa4:	00000613          	li	a2,0
    80002fa8:	00100593          	li	a1,1
    80002fac:	00005517          	auipc	a0,0x5
    80002fb0:	efc50513          	addi	a0,a0,-260 # 80007ea8 <lockPrint>
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	310080e7          	jalr	784(ra) # 800012c4 <copy_and_swap>
    80002fbc:	fe0514e3          	bnez	a0,80002fa4 <_Z9getStringPci+0x8c>
    return buf;
}
    80002fc0:	00098513          	mv	a0,s3
    80002fc4:	02813083          	ld	ra,40(sp)
    80002fc8:	02013403          	ld	s0,32(sp)
    80002fcc:	01813483          	ld	s1,24(sp)
    80002fd0:	01013903          	ld	s2,16(sp)
    80002fd4:	00813983          	ld	s3,8(sp)
    80002fd8:	00013a03          	ld	s4,0(sp)
    80002fdc:	03010113          	addi	sp,sp,48
    80002fe0:	00008067          	ret

0000000080002fe4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002fe4:	ff010113          	addi	sp,sp,-16
    80002fe8:	00813423          	sd	s0,8(sp)
    80002fec:	01010413          	addi	s0,sp,16
    80002ff0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002ff4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002ff8:	0006c603          	lbu	a2,0(a3)
    80002ffc:	fd06071b          	addiw	a4,a2,-48
    80003000:	0ff77713          	andi	a4,a4,255
    80003004:	00900793          	li	a5,9
    80003008:	02e7e063          	bltu	a5,a4,80003028 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000300c:	0025179b          	slliw	a5,a0,0x2
    80003010:	00a787bb          	addw	a5,a5,a0
    80003014:	0017979b          	slliw	a5,a5,0x1
    80003018:	00168693          	addi	a3,a3,1
    8000301c:	00c787bb          	addw	a5,a5,a2
    80003020:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003024:	fd5ff06f          	j	80002ff8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003028:	00813403          	ld	s0,8(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003034:	fc010113          	addi	sp,sp,-64
    80003038:	02113c23          	sd	ra,56(sp)
    8000303c:	02813823          	sd	s0,48(sp)
    80003040:	02913423          	sd	s1,40(sp)
    80003044:	03213023          	sd	s2,32(sp)
    80003048:	01313c23          	sd	s3,24(sp)
    8000304c:	04010413          	addi	s0,sp,64
    80003050:	00050493          	mv	s1,a0
    80003054:	00058913          	mv	s2,a1
    80003058:	00060993          	mv	s3,a2
    LOCK();
    8000305c:	00100613          	li	a2,1
    80003060:	00000593          	li	a1,0
    80003064:	00005517          	auipc	a0,0x5
    80003068:	e4450513          	addi	a0,a0,-444 # 80007ea8 <lockPrint>
    8000306c:	ffffe097          	auipc	ra,0xffffe
    80003070:	258080e7          	jalr	600(ra) # 800012c4 <copy_and_swap>
    80003074:	fe0514e3          	bnez	a0,8000305c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003078:	00098463          	beqz	s3,80003080 <_Z8printIntiii+0x4c>
    8000307c:	0804c463          	bltz	s1,80003104 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003080:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003084:	00000593          	li	a1,0
    }

    i = 0;
    80003088:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000308c:	0009079b          	sext.w	a5,s2
    80003090:	0325773b          	remuw	a4,a0,s2
    80003094:	00048613          	mv	a2,s1
    80003098:	0014849b          	addiw	s1,s1,1
    8000309c:	02071693          	slli	a3,a4,0x20
    800030a0:	0206d693          	srli	a3,a3,0x20
    800030a4:	00004717          	auipc	a4,0x4
    800030a8:	48c70713          	addi	a4,a4,1164 # 80007530 <digits>
    800030ac:	00d70733          	add	a4,a4,a3
    800030b0:	00074683          	lbu	a3,0(a4)
    800030b4:	fd040713          	addi	a4,s0,-48
    800030b8:	00c70733          	add	a4,a4,a2
    800030bc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800030c0:	0005071b          	sext.w	a4,a0
    800030c4:	0325553b          	divuw	a0,a0,s2
    800030c8:	fcf772e3          	bgeu	a4,a5,8000308c <_Z8printIntiii+0x58>
    if(neg)
    800030cc:	00058c63          	beqz	a1,800030e4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800030d0:	fd040793          	addi	a5,s0,-48
    800030d4:	009784b3          	add	s1,a5,s1
    800030d8:	02d00793          	li	a5,45
    800030dc:	fef48823          	sb	a5,-16(s1)
    800030e0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800030e4:	fff4849b          	addiw	s1,s1,-1
    800030e8:	0204c463          	bltz	s1,80003110 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800030ec:	fd040793          	addi	a5,s0,-48
    800030f0:	009787b3          	add	a5,a5,s1
    800030f4:	ff07c503          	lbu	a0,-16(a5)
    800030f8:	ffffe097          	auipc	ra,0xffffe
    800030fc:	f98080e7          	jalr	-104(ra) # 80001090 <putc>
    80003100:	fe5ff06f          	j	800030e4 <_Z8printIntiii+0xb0>
        x = -xx;
    80003104:	4090053b          	negw	a0,s1
        neg = 1;
    80003108:	00100593          	li	a1,1
        x = -xx;
    8000310c:	f7dff06f          	j	80003088 <_Z8printIntiii+0x54>

    UNLOCK();
    80003110:	00000613          	li	a2,0
    80003114:	00100593          	li	a1,1
    80003118:	00005517          	auipc	a0,0x5
    8000311c:	d9050513          	addi	a0,a0,-624 # 80007ea8 <lockPrint>
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	1a4080e7          	jalr	420(ra) # 800012c4 <copy_and_swap>
    80003128:	fe0514e3          	bnez	a0,80003110 <_Z8printIntiii+0xdc>
    8000312c:	03813083          	ld	ra,56(sp)
    80003130:	03013403          	ld	s0,48(sp)
    80003134:	02813483          	ld	s1,40(sp)
    80003138:	02013903          	ld	s2,32(sp)
    8000313c:	01813983          	ld	s3,24(sp)
    80003140:	04010113          	addi	sp,sp,64
    80003144:	00008067          	ret

0000000080003148 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003148:	fd010113          	addi	sp,sp,-48
    8000314c:	02113423          	sd	ra,40(sp)
    80003150:	02813023          	sd	s0,32(sp)
    80003154:	00913c23          	sd	s1,24(sp)
    80003158:	01213823          	sd	s2,16(sp)
    8000315c:	01313423          	sd	s3,8(sp)
    80003160:	03010413          	addi	s0,sp,48
    80003164:	00050493          	mv	s1,a0
    80003168:	00058913          	mv	s2,a1
    8000316c:	0015879b          	addiw	a5,a1,1
    80003170:	0007851b          	sext.w	a0,a5
    80003174:	00f4a023          	sw	a5,0(s1)
    80003178:	0004a823          	sw	zero,16(s1)
    8000317c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003180:	00251513          	slli	a0,a0,0x2
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	e7c080e7          	jalr	-388(ra) # 80001000 <mem_alloc>
    8000318c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003190:	01000513          	li	a0,16
    80003194:	fffff097          	auipc	ra,0xfffff
    80003198:	ab4080e7          	jalr	-1356(ra) # 80001c48 <_Znwm>
    8000319c:	00050993          	mv	s3,a0
    800031a0:	00000593          	li	a1,0
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	1f4080e7          	jalr	500(ra) # 80002398 <_ZN9SemaphoreC1Ej>
    800031ac:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800031b0:	01000513          	li	a0,16
    800031b4:	fffff097          	auipc	ra,0xfffff
    800031b8:	a94080e7          	jalr	-1388(ra) # 80001c48 <_Znwm>
    800031bc:	00050993          	mv	s3,a0
    800031c0:	00090593          	mv	a1,s2
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	1d4080e7          	jalr	468(ra) # 80002398 <_ZN9SemaphoreC1Ej>
    800031cc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800031d0:	01000513          	li	a0,16
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	a74080e7          	jalr	-1420(ra) # 80001c48 <_Znwm>
    800031dc:	00050913          	mv	s2,a0
    800031e0:	00100593          	li	a1,1
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	1b4080e7          	jalr	436(ra) # 80002398 <_ZN9SemaphoreC1Ej>
    800031ec:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800031f0:	01000513          	li	a0,16
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	a54080e7          	jalr	-1452(ra) # 80001c48 <_Znwm>
    800031fc:	00050913          	mv	s2,a0
    80003200:	00100593          	li	a1,1
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	194080e7          	jalr	404(ra) # 80002398 <_ZN9SemaphoreC1Ej>
    8000320c:	0324b823          	sd	s2,48(s1)
}
    80003210:	02813083          	ld	ra,40(sp)
    80003214:	02013403          	ld	s0,32(sp)
    80003218:	01813483          	ld	s1,24(sp)
    8000321c:	01013903          	ld	s2,16(sp)
    80003220:	00813983          	ld	s3,8(sp)
    80003224:	03010113          	addi	sp,sp,48
    80003228:	00008067          	ret
    8000322c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003230:	00098513          	mv	a0,s3
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	a64080e7          	jalr	-1436(ra) # 80001c98 <_ZdlPv>
    8000323c:	00048513          	mv	a0,s1
    80003240:	00006097          	auipc	ra,0x6
    80003244:	d48080e7          	jalr	-696(ra) # 80008f88 <_Unwind_Resume>
    80003248:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000324c:	00098513          	mv	a0,s3
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	a48080e7          	jalr	-1464(ra) # 80001c98 <_ZdlPv>
    80003258:	00048513          	mv	a0,s1
    8000325c:	00006097          	auipc	ra,0x6
    80003260:	d2c080e7          	jalr	-724(ra) # 80008f88 <_Unwind_Resume>
    80003264:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003268:	00090513          	mv	a0,s2
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	a2c080e7          	jalr	-1492(ra) # 80001c98 <_ZdlPv>
    80003274:	00048513          	mv	a0,s1
    80003278:	00006097          	auipc	ra,0x6
    8000327c:	d10080e7          	jalr	-752(ra) # 80008f88 <_Unwind_Resume>
    80003280:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003284:	00090513          	mv	a0,s2
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	a10080e7          	jalr	-1520(ra) # 80001c98 <_ZdlPv>
    80003290:	00048513          	mv	a0,s1
    80003294:	00006097          	auipc	ra,0x6
    80003298:	cf4080e7          	jalr	-780(ra) # 80008f88 <_Unwind_Resume>

000000008000329c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	01213023          	sd	s2,0(sp)
    800032b0:	02010413          	addi	s0,sp,32
    800032b4:	00050493          	mv	s1,a0
    800032b8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800032bc:	01853503          	ld	a0,24(a0)
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	110080e7          	jalr	272(ra) # 800023d0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800032c8:	0304b503          	ld	a0,48(s1)
    800032cc:	fffff097          	auipc	ra,0xfffff
    800032d0:	104080e7          	jalr	260(ra) # 800023d0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800032d4:	0084b783          	ld	a5,8(s1)
    800032d8:	0144a703          	lw	a4,20(s1)
    800032dc:	00271713          	slli	a4,a4,0x2
    800032e0:	00e787b3          	add	a5,a5,a4
    800032e4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800032e8:	0144a783          	lw	a5,20(s1)
    800032ec:	0017879b          	addiw	a5,a5,1
    800032f0:	0004a703          	lw	a4,0(s1)
    800032f4:	02e7e7bb          	remw	a5,a5,a4
    800032f8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800032fc:	0304b503          	ld	a0,48(s1)
    80003300:	fffff097          	auipc	ra,0xfffff
    80003304:	0fc080e7          	jalr	252(ra) # 800023fc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003308:	0204b503          	ld	a0,32(s1)
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	0f0080e7          	jalr	240(ra) # 800023fc <_ZN9Semaphore6signalEv>

}
    80003314:	01813083          	ld	ra,24(sp)
    80003318:	01013403          	ld	s0,16(sp)
    8000331c:	00813483          	ld	s1,8(sp)
    80003320:	00013903          	ld	s2,0(sp)
    80003324:	02010113          	addi	sp,sp,32
    80003328:	00008067          	ret

000000008000332c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000332c:	fe010113          	addi	sp,sp,-32
    80003330:	00113c23          	sd	ra,24(sp)
    80003334:	00813823          	sd	s0,16(sp)
    80003338:	00913423          	sd	s1,8(sp)
    8000333c:	01213023          	sd	s2,0(sp)
    80003340:	02010413          	addi	s0,sp,32
    80003344:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003348:	02053503          	ld	a0,32(a0)
    8000334c:	fffff097          	auipc	ra,0xfffff
    80003350:	084080e7          	jalr	132(ra) # 800023d0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003354:	0284b503          	ld	a0,40(s1)
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	078080e7          	jalr	120(ra) # 800023d0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003360:	0084b703          	ld	a4,8(s1)
    80003364:	0104a783          	lw	a5,16(s1)
    80003368:	00279693          	slli	a3,a5,0x2
    8000336c:	00d70733          	add	a4,a4,a3
    80003370:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003374:	0017879b          	addiw	a5,a5,1
    80003378:	0004a703          	lw	a4,0(s1)
    8000337c:	02e7e7bb          	remw	a5,a5,a4
    80003380:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003384:	0284b503          	ld	a0,40(s1)
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	074080e7          	jalr	116(ra) # 800023fc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003390:	0184b503          	ld	a0,24(s1)
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	068080e7          	jalr	104(ra) # 800023fc <_ZN9Semaphore6signalEv>

    return ret;
}
    8000339c:	00090513          	mv	a0,s2
    800033a0:	01813083          	ld	ra,24(sp)
    800033a4:	01013403          	ld	s0,16(sp)
    800033a8:	00813483          	ld	s1,8(sp)
    800033ac:	00013903          	ld	s2,0(sp)
    800033b0:	02010113          	addi	sp,sp,32
    800033b4:	00008067          	ret

00000000800033b8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800033b8:	fe010113          	addi	sp,sp,-32
    800033bc:	00113c23          	sd	ra,24(sp)
    800033c0:	00813823          	sd	s0,16(sp)
    800033c4:	00913423          	sd	s1,8(sp)
    800033c8:	01213023          	sd	s2,0(sp)
    800033cc:	02010413          	addi	s0,sp,32
    800033d0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800033d4:	02853503          	ld	a0,40(a0)
    800033d8:	fffff097          	auipc	ra,0xfffff
    800033dc:	ff8080e7          	jalr	-8(ra) # 800023d0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800033e0:	0304b503          	ld	a0,48(s1)
    800033e4:	fffff097          	auipc	ra,0xfffff
    800033e8:	fec080e7          	jalr	-20(ra) # 800023d0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800033ec:	0144a783          	lw	a5,20(s1)
    800033f0:	0104a903          	lw	s2,16(s1)
    800033f4:	0327ce63          	blt	a5,s2,80003430 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800033f8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800033fc:	0304b503          	ld	a0,48(s1)
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	ffc080e7          	jalr	-4(ra) # 800023fc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003408:	0284b503          	ld	a0,40(s1)
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	ff0080e7          	jalr	-16(ra) # 800023fc <_ZN9Semaphore6signalEv>

    return ret;
}
    80003414:	00090513          	mv	a0,s2
    80003418:	01813083          	ld	ra,24(sp)
    8000341c:	01013403          	ld	s0,16(sp)
    80003420:	00813483          	ld	s1,8(sp)
    80003424:	00013903          	ld	s2,0(sp)
    80003428:	02010113          	addi	sp,sp,32
    8000342c:	00008067          	ret
        ret = cap - head + tail;
    80003430:	0004a703          	lw	a4,0(s1)
    80003434:	4127093b          	subw	s2,a4,s2
    80003438:	00f9093b          	addw	s2,s2,a5
    8000343c:	fc1ff06f          	j	800033fc <_ZN9BufferCPP6getCntEv+0x44>

0000000080003440 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003440:	fe010113          	addi	sp,sp,-32
    80003444:	00113c23          	sd	ra,24(sp)
    80003448:	00813823          	sd	s0,16(sp)
    8000344c:	00913423          	sd	s1,8(sp)
    80003450:	02010413          	addi	s0,sp,32
    80003454:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003458:	00a00513          	li	a0,10
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	044080e7          	jalr	68(ra) # 800024a0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003464:	00003517          	auipc	a0,0x3
    80003468:	d2c50513          	addi	a0,a0,-724 # 80006190 <_ZZ14__print_uint64mE6digits+0x10>
    8000346c:	00000097          	auipc	ra,0x0
    80003470:	a30080e7          	jalr	-1488(ra) # 80002e9c <_Z11printStringPKc>
    while (getCnt()) {
    80003474:	00048513          	mv	a0,s1
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	f40080e7          	jalr	-192(ra) # 800033b8 <_ZN9BufferCPP6getCntEv>
    80003480:	02050c63          	beqz	a0,800034b8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003484:	0084b783          	ld	a5,8(s1)
    80003488:	0104a703          	lw	a4,16(s1)
    8000348c:	00271713          	slli	a4,a4,0x2
    80003490:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003494:	0007c503          	lbu	a0,0(a5)
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	008080e7          	jalr	8(ra) # 800024a0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800034a0:	0104a783          	lw	a5,16(s1)
    800034a4:	0017879b          	addiw	a5,a5,1
    800034a8:	0004a703          	lw	a4,0(s1)
    800034ac:	02e7e7bb          	remw	a5,a5,a4
    800034b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800034b4:	fc1ff06f          	j	80003474 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800034b8:	02100513          	li	a0,33
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	fe4080e7          	jalr	-28(ra) # 800024a0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800034c4:	00a00513          	li	a0,10
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	fd8080e7          	jalr	-40(ra) # 800024a0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800034d0:	0084b503          	ld	a0,8(s1)
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	b38080e7          	jalr	-1224(ra) # 8000100c <mem_free>
    delete itemAvailable;
    800034dc:	0204b503          	ld	a0,32(s1)
    800034e0:	00050863          	beqz	a0,800034f0 <_ZN9BufferCPPD1Ev+0xb0>
    800034e4:	00053783          	ld	a5,0(a0)
    800034e8:	0087b783          	ld	a5,8(a5)
    800034ec:	000780e7          	jalr	a5
    delete spaceAvailable;
    800034f0:	0184b503          	ld	a0,24(s1)
    800034f4:	00050863          	beqz	a0,80003504 <_ZN9BufferCPPD1Ev+0xc4>
    800034f8:	00053783          	ld	a5,0(a0)
    800034fc:	0087b783          	ld	a5,8(a5)
    80003500:	000780e7          	jalr	a5
    delete mutexTail;
    80003504:	0304b503          	ld	a0,48(s1)
    80003508:	00050863          	beqz	a0,80003518 <_ZN9BufferCPPD1Ev+0xd8>
    8000350c:	00053783          	ld	a5,0(a0)
    80003510:	0087b783          	ld	a5,8(a5)
    80003514:	000780e7          	jalr	a5
    delete mutexHead;
    80003518:	0284b503          	ld	a0,40(s1)
    8000351c:	00050863          	beqz	a0,8000352c <_ZN9BufferCPPD1Ev+0xec>
    80003520:	00053783          	ld	a5,0(a0)
    80003524:	0087b783          	ld	a5,8(a5)
    80003528:	000780e7          	jalr	a5
}
    8000352c:	01813083          	ld	ra,24(sp)
    80003530:	01013403          	ld	s0,16(sp)
    80003534:	00813483          	ld	s1,8(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret

0000000080003540 <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80003540:	fe010113          	addi	sp,sp,-32
    80003544:	00113c23          	sd	ra,24(sp)
    80003548:	00813823          	sd	s0,16(sp)
    8000354c:	00913423          	sd	s1,8(sp)
    80003550:	01213023          	sd	s2,0(sp)
    80003554:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80003558:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000355c:	00600493          	li	s1,6
    while (--i > 0) {
    80003560:	fff4849b          	addiw	s1,s1,-1
    80003564:	04905463          	blez	s1,800035ac <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80003568:	00003517          	auipc	a0,0x3
    8000356c:	c4050513          	addi	a0,a0,-960 # 800061a8 <_ZZ14__print_uint64mE6digits+0x28>
    80003570:	00000097          	auipc	ra,0x0
    80003574:	92c080e7          	jalr	-1748(ra) # 80002e9c <_Z11printStringPKc>
        printInt(sleep_time);
    80003578:	00000613          	li	a2,0
    8000357c:	00a00593          	li	a1,10
    80003580:	0009051b          	sext.w	a0,s2
    80003584:	00000097          	auipc	ra,0x0
    80003588:	ab0080e7          	jalr	-1360(ra) # 80003034 <_Z8printIntiii>
        printString(" !\n");
    8000358c:	00003517          	auipc	a0,0x3
    80003590:	c2450513          	addi	a0,a0,-988 # 800061b0 <_ZZ14__print_uint64mE6digits+0x30>
    80003594:	00000097          	auipc	ra,0x0
    80003598:	908080e7          	jalr	-1784(ra) # 80002e9c <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000359c:	00090513          	mv	a0,s2
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	ad8080e7          	jalr	-1320(ra) # 80001078 <time_sleep>
    while (--i > 0) {
    800035a8:	fb9ff06f          	j	80003560 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800035ac:	00a00793          	li	a5,10
    800035b0:	02f95933          	divu	s2,s2,a5
    800035b4:	fff90913          	addi	s2,s2,-1
    800035b8:	00005797          	auipc	a5,0x5
    800035bc:	8f878793          	addi	a5,a5,-1800 # 80007eb0 <finished>
    800035c0:	01278933          	add	s2,a5,s2
    800035c4:	00100793          	li	a5,1
    800035c8:	00f90023          	sb	a5,0(s2)
}
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	00013903          	ld	s2,0(sp)
    800035dc:	02010113          	addi	sp,sp,32
    800035e0:	00008067          	ret

00000000800035e4 <_Z12testSleepingv>:

void testSleeping() {
    800035e4:	fc010113          	addi	sp,sp,-64
    800035e8:	02113c23          	sd	ra,56(sp)
    800035ec:	02813823          	sd	s0,48(sp)
    800035f0:	02913423          	sd	s1,40(sp)
    800035f4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800035f8:	00a00793          	li	a5,10
    800035fc:	fcf43823          	sd	a5,-48(s0)
    80003600:	01400793          	li	a5,20
    80003604:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80003608:	00000493          	li	s1,0
    8000360c:	02c0006f          	j	80003638 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80003610:	00349793          	slli	a5,s1,0x3
    80003614:	fd040613          	addi	a2,s0,-48
    80003618:	00f60633          	add	a2,a2,a5
    8000361c:	00000597          	auipc	a1,0x0
    80003620:	f2458593          	addi	a1,a1,-220 # 80003540 <_Z9sleepyRunPv>
    80003624:	fc040513          	addi	a0,s0,-64
    80003628:	00f50533          	add	a0,a0,a5
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	9ec080e7          	jalr	-1556(ra) # 80001018 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80003634:	0014849b          	addiw	s1,s1,1
    80003638:	00100793          	li	a5,1
    8000363c:	fc97dae3          	bge	a5,s1,80003610 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80003640:	00005797          	auipc	a5,0x5
    80003644:	8707c783          	lbu	a5,-1936(a5) # 80007eb0 <finished>
    80003648:	fe078ce3          	beqz	a5,80003640 <_Z12testSleepingv+0x5c>
    8000364c:	00005797          	auipc	a5,0x5
    80003650:	8657c783          	lbu	a5,-1947(a5) # 80007eb1 <finished+0x1>
    80003654:	fe0786e3          	beqz	a5,80003640 <_Z12testSleepingv+0x5c>
}
    80003658:	03813083          	ld	ra,56(sp)
    8000365c:	03013403          	ld	s0,48(sp)
    80003660:	02813483          	ld	s1,40(sp)
    80003664:	04010113          	addi	sp,sp,64
    80003668:	00008067          	ret

000000008000366c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    8000366c:	ff010113          	addi	sp,sp,-16
    80003670:	00113423          	sd	ra,8(sp)
    80003674:	00813023          	sd	s0,0(sp)
    80003678:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    8000367c:	00000097          	auipc	ra,0x0
    80003680:	f68080e7          	jalr	-152(ra) # 800035e4 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80003684:	00813083          	ld	ra,8(sp)
    80003688:	00013403          	ld	s0,0(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003694:	fe010113          	addi	sp,sp,-32
    80003698:	00113c23          	sd	ra,24(sp)
    8000369c:	00813823          	sd	s0,16(sp)
    800036a0:	00913423          	sd	s1,8(sp)
    800036a4:	01213023          	sd	s2,0(sp)
    800036a8:	02010413          	addi	s0,sp,32
    800036ac:	00050493          	mv	s1,a0
    800036b0:	00058913          	mv	s2,a1
    800036b4:	0015879b          	addiw	a5,a1,1
    800036b8:	0007851b          	sext.w	a0,a5
    800036bc:	00f4a023          	sw	a5,0(s1)
    800036c0:	0004a823          	sw	zero,16(s1)
    800036c4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800036c8:	00251513          	slli	a0,a0,0x2
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	934080e7          	jalr	-1740(ra) # 80001000 <mem_alloc>
    800036d4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800036d8:	00000593          	li	a1,0
    800036dc:	02048513          	addi	a0,s1,32
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	968080e7          	jalr	-1688(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    800036e8:	00090593          	mv	a1,s2
    800036ec:	01848513          	addi	a0,s1,24
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	958080e7          	jalr	-1704(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    800036f8:	00100593          	li	a1,1
    800036fc:	02848513          	addi	a0,s1,40
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	948080e7          	jalr	-1720(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    80003708:	00100593          	li	a1,1
    8000370c:	03048513          	addi	a0,s1,48
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	938080e7          	jalr	-1736(ra) # 80001048 <sem_open>
}
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	00013903          	ld	s2,0(sp)
    80003728:	02010113          	addi	sp,sp,32
    8000372c:	00008067          	ret

0000000080003730 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	00813823          	sd	s0,16(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	01213023          	sd	s2,0(sp)
    80003744:	02010413          	addi	s0,sp,32
    80003748:	00050493          	mv	s1,a0
    8000374c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003750:	01853503          	ld	a0,24(a0)
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	90c080e7          	jalr	-1780(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    8000375c:	0304b503          	ld	a0,48(s1)
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	900080e7          	jalr	-1792(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    80003768:	0084b783          	ld	a5,8(s1)
    8000376c:	0144a703          	lw	a4,20(s1)
    80003770:	00271713          	slli	a4,a4,0x2
    80003774:	00e787b3          	add	a5,a5,a4
    80003778:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000377c:	0144a783          	lw	a5,20(s1)
    80003780:	0017879b          	addiw	a5,a5,1
    80003784:	0004a703          	lw	a4,0(s1)
    80003788:	02e7e7bb          	remw	a5,a5,a4
    8000378c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003790:	0304b503          	ld	a0,48(s1)
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	8d8080e7          	jalr	-1832(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    8000379c:	0204b503          	ld	a0,32(s1)
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	8cc080e7          	jalr	-1844(ra) # 8000106c <sem_signal>

}
    800037a8:	01813083          	ld	ra,24(sp)
    800037ac:	01013403          	ld	s0,16(sp)
    800037b0:	00813483          	ld	s1,8(sp)
    800037b4:	00013903          	ld	s2,0(sp)
    800037b8:	02010113          	addi	sp,sp,32
    800037bc:	00008067          	ret

00000000800037c0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800037c0:	fe010113          	addi	sp,sp,-32
    800037c4:	00113c23          	sd	ra,24(sp)
    800037c8:	00813823          	sd	s0,16(sp)
    800037cc:	00913423          	sd	s1,8(sp)
    800037d0:	01213023          	sd	s2,0(sp)
    800037d4:	02010413          	addi	s0,sp,32
    800037d8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800037dc:	02053503          	ld	a0,32(a0)
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	880080e7          	jalr	-1920(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    800037e8:	0284b503          	ld	a0,40(s1)
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	874080e7          	jalr	-1932(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    800037f4:	0084b703          	ld	a4,8(s1)
    800037f8:	0104a783          	lw	a5,16(s1)
    800037fc:	00279693          	slli	a3,a5,0x2
    80003800:	00d70733          	add	a4,a4,a3
    80003804:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003808:	0017879b          	addiw	a5,a5,1
    8000380c:	0004a703          	lw	a4,0(s1)
    80003810:	02e7e7bb          	remw	a5,a5,a4
    80003814:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003818:	0284b503          	ld	a0,40(s1)
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	850080e7          	jalr	-1968(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    80003824:	0184b503          	ld	a0,24(s1)
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	844080e7          	jalr	-1980(ra) # 8000106c <sem_signal>

    return ret;
}
    80003830:	00090513          	mv	a0,s2
    80003834:	01813083          	ld	ra,24(sp)
    80003838:	01013403          	ld	s0,16(sp)
    8000383c:	00813483          	ld	s1,8(sp)
    80003840:	00013903          	ld	s2,0(sp)
    80003844:	02010113          	addi	sp,sp,32
    80003848:	00008067          	ret

000000008000384c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000384c:	fe010113          	addi	sp,sp,-32
    80003850:	00113c23          	sd	ra,24(sp)
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	01213023          	sd	s2,0(sp)
    80003860:	02010413          	addi	s0,sp,32
    80003864:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003868:	02853503          	ld	a0,40(a0)
    8000386c:	ffffd097          	auipc	ra,0xffffd
    80003870:	7f4080e7          	jalr	2036(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    80003874:	0304b503          	ld	a0,48(s1)
    80003878:	ffffd097          	auipc	ra,0xffffd
    8000387c:	7e8080e7          	jalr	2024(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    80003880:	0144a783          	lw	a5,20(s1)
    80003884:	0104a903          	lw	s2,16(s1)
    80003888:	0327ce63          	blt	a5,s2,800038c4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000388c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003890:	0304b503          	ld	a0,48(s1)
    80003894:	ffffd097          	auipc	ra,0xffffd
    80003898:	7d8080e7          	jalr	2008(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    8000389c:	0284b503          	ld	a0,40(s1)
    800038a0:	ffffd097          	auipc	ra,0xffffd
    800038a4:	7cc080e7          	jalr	1996(ra) # 8000106c <sem_signal>

    return ret;
}
    800038a8:	00090513          	mv	a0,s2
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	00013903          	ld	s2,0(sp)
    800038bc:	02010113          	addi	sp,sp,32
    800038c0:	00008067          	ret
        ret = cap - head + tail;
    800038c4:	0004a703          	lw	a4,0(s1)
    800038c8:	4127093b          	subw	s2,a4,s2
    800038cc:	00f9093b          	addw	s2,s2,a5
    800038d0:	fc1ff06f          	j	80003890 <_ZN6Buffer6getCntEv+0x44>

00000000800038d4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800038d4:	fe010113          	addi	sp,sp,-32
    800038d8:	00113c23          	sd	ra,24(sp)
    800038dc:	00813823          	sd	s0,16(sp)
    800038e0:	00913423          	sd	s1,8(sp)
    800038e4:	02010413          	addi	s0,sp,32
    800038e8:	00050493          	mv	s1,a0
    putc('\n');
    800038ec:	00a00513          	li	a0,10
    800038f0:	ffffd097          	auipc	ra,0xffffd
    800038f4:	7a0080e7          	jalr	1952(ra) # 80001090 <putc>
    printString("Buffer deleted!\n");
    800038f8:	00003517          	auipc	a0,0x3
    800038fc:	89850513          	addi	a0,a0,-1896 # 80006190 <_ZZ14__print_uint64mE6digits+0x10>
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	59c080e7          	jalr	1436(ra) # 80002e9c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003908:	00048513          	mv	a0,s1
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	f40080e7          	jalr	-192(ra) # 8000384c <_ZN6Buffer6getCntEv>
    80003914:	02a05c63          	blez	a0,8000394c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003918:	0084b783          	ld	a5,8(s1)
    8000391c:	0104a703          	lw	a4,16(s1)
    80003920:	00271713          	slli	a4,a4,0x2
    80003924:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003928:	0007c503          	lbu	a0,0(a5)
    8000392c:	ffffd097          	auipc	ra,0xffffd
    80003930:	764080e7          	jalr	1892(ra) # 80001090 <putc>
        head = (head + 1) % cap;
    80003934:	0104a783          	lw	a5,16(s1)
    80003938:	0017879b          	addiw	a5,a5,1
    8000393c:	0004a703          	lw	a4,0(s1)
    80003940:	02e7e7bb          	remw	a5,a5,a4
    80003944:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003948:	fc1ff06f          	j	80003908 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000394c:	02100513          	li	a0,33
    80003950:	ffffd097          	auipc	ra,0xffffd
    80003954:	740080e7          	jalr	1856(ra) # 80001090 <putc>
    putc('\n');
    80003958:	00a00513          	li	a0,10
    8000395c:	ffffd097          	auipc	ra,0xffffd
    80003960:	734080e7          	jalr	1844(ra) # 80001090 <putc>
    mem_free(buffer);
    80003964:	0084b503          	ld	a0,8(s1)
    80003968:	ffffd097          	auipc	ra,0xffffd
    8000396c:	6a4080e7          	jalr	1700(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    80003970:	0204b503          	ld	a0,32(s1)
    80003974:	ffffd097          	auipc	ra,0xffffd
    80003978:	6e0080e7          	jalr	1760(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    8000397c:	0184b503          	ld	a0,24(s1)
    80003980:	ffffd097          	auipc	ra,0xffffd
    80003984:	6d4080e7          	jalr	1748(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    80003988:	0304b503          	ld	a0,48(s1)
    8000398c:	ffffd097          	auipc	ra,0xffffd
    80003990:	6c8080e7          	jalr	1736(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    80003994:	0284b503          	ld	a0,40(s1)
    80003998:	ffffd097          	auipc	ra,0xffffd
    8000399c:	6bc080e7          	jalr	1724(ra) # 80001054 <sem_close>
}
    800039a0:	01813083          	ld	ra,24(sp)
    800039a4:	01013403          	ld	s0,16(sp)
    800039a8:	00813483          	ld	s1,8(sp)
    800039ac:	02010113          	addi	sp,sp,32
    800039b0:	00008067          	ret

00000000800039b4 <start>:
    800039b4:	ff010113          	addi	sp,sp,-16
    800039b8:	00813423          	sd	s0,8(sp)
    800039bc:	01010413          	addi	s0,sp,16
    800039c0:	300027f3          	csrr	a5,mstatus
    800039c4:	ffffe737          	lui	a4,0xffffe
    800039c8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff56df>
    800039cc:	00e7f7b3          	and	a5,a5,a4
    800039d0:	00001737          	lui	a4,0x1
    800039d4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800039d8:	00e7e7b3          	or	a5,a5,a4
    800039dc:	30079073          	csrw	mstatus,a5
    800039e0:	00000797          	auipc	a5,0x0
    800039e4:	16078793          	addi	a5,a5,352 # 80003b40 <system_main>
    800039e8:	34179073          	csrw	mepc,a5
    800039ec:	00000793          	li	a5,0
    800039f0:	18079073          	csrw	satp,a5
    800039f4:	000107b7          	lui	a5,0x10
    800039f8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800039fc:	30279073          	csrw	medeleg,a5
    80003a00:	30379073          	csrw	mideleg,a5
    80003a04:	104027f3          	csrr	a5,sie
    80003a08:	2227e793          	ori	a5,a5,546
    80003a0c:	10479073          	csrw	sie,a5
    80003a10:	fff00793          	li	a5,-1
    80003a14:	00a7d793          	srli	a5,a5,0xa
    80003a18:	3b079073          	csrw	pmpaddr0,a5
    80003a1c:	00f00793          	li	a5,15
    80003a20:	3a079073          	csrw	pmpcfg0,a5
    80003a24:	f14027f3          	csrr	a5,mhartid
    80003a28:	0200c737          	lui	a4,0x200c
    80003a2c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003a30:	0007869b          	sext.w	a3,a5
    80003a34:	00269713          	slli	a4,a3,0x2
    80003a38:	000f4637          	lui	a2,0xf4
    80003a3c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a40:	00d70733          	add	a4,a4,a3
    80003a44:	0037979b          	slliw	a5,a5,0x3
    80003a48:	020046b7          	lui	a3,0x2004
    80003a4c:	00d787b3          	add	a5,a5,a3
    80003a50:	00c585b3          	add	a1,a1,a2
    80003a54:	00371693          	slli	a3,a4,0x3
    80003a58:	00004717          	auipc	a4,0x4
    80003a5c:	46870713          	addi	a4,a4,1128 # 80007ec0 <timer_scratch>
    80003a60:	00b7b023          	sd	a1,0(a5)
    80003a64:	00d70733          	add	a4,a4,a3
    80003a68:	00f73c23          	sd	a5,24(a4)
    80003a6c:	02c73023          	sd	a2,32(a4)
    80003a70:	34071073          	csrw	mscratch,a4
    80003a74:	00000797          	auipc	a5,0x0
    80003a78:	6ec78793          	addi	a5,a5,1772 # 80004160 <timervec>
    80003a7c:	30579073          	csrw	mtvec,a5
    80003a80:	300027f3          	csrr	a5,mstatus
    80003a84:	0087e793          	ori	a5,a5,8
    80003a88:	30079073          	csrw	mstatus,a5
    80003a8c:	304027f3          	csrr	a5,mie
    80003a90:	0807e793          	ori	a5,a5,128
    80003a94:	30479073          	csrw	mie,a5
    80003a98:	f14027f3          	csrr	a5,mhartid
    80003a9c:	0007879b          	sext.w	a5,a5
    80003aa0:	00078213          	mv	tp,a5
    80003aa4:	30200073          	mret
    80003aa8:	00813403          	ld	s0,8(sp)
    80003aac:	01010113          	addi	sp,sp,16
    80003ab0:	00008067          	ret

0000000080003ab4 <timerinit>:
    80003ab4:	ff010113          	addi	sp,sp,-16
    80003ab8:	00813423          	sd	s0,8(sp)
    80003abc:	01010413          	addi	s0,sp,16
    80003ac0:	f14027f3          	csrr	a5,mhartid
    80003ac4:	0200c737          	lui	a4,0x200c
    80003ac8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003acc:	0007869b          	sext.w	a3,a5
    80003ad0:	00269713          	slli	a4,a3,0x2
    80003ad4:	000f4637          	lui	a2,0xf4
    80003ad8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003adc:	00d70733          	add	a4,a4,a3
    80003ae0:	0037979b          	slliw	a5,a5,0x3
    80003ae4:	020046b7          	lui	a3,0x2004
    80003ae8:	00d787b3          	add	a5,a5,a3
    80003aec:	00c585b3          	add	a1,a1,a2
    80003af0:	00371693          	slli	a3,a4,0x3
    80003af4:	00004717          	auipc	a4,0x4
    80003af8:	3cc70713          	addi	a4,a4,972 # 80007ec0 <timer_scratch>
    80003afc:	00b7b023          	sd	a1,0(a5)
    80003b00:	00d70733          	add	a4,a4,a3
    80003b04:	00f73c23          	sd	a5,24(a4)
    80003b08:	02c73023          	sd	a2,32(a4)
    80003b0c:	34071073          	csrw	mscratch,a4
    80003b10:	00000797          	auipc	a5,0x0
    80003b14:	65078793          	addi	a5,a5,1616 # 80004160 <timervec>
    80003b18:	30579073          	csrw	mtvec,a5
    80003b1c:	300027f3          	csrr	a5,mstatus
    80003b20:	0087e793          	ori	a5,a5,8
    80003b24:	30079073          	csrw	mstatus,a5
    80003b28:	304027f3          	csrr	a5,mie
    80003b2c:	0807e793          	ori	a5,a5,128
    80003b30:	30479073          	csrw	mie,a5
    80003b34:	00813403          	ld	s0,8(sp)
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret

0000000080003b40 <system_main>:
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	0c4080e7          	jalr	196(ra) # 80003c18 <cpuid>
    80003b5c:	00004497          	auipc	s1,0x4
    80003b60:	a7448493          	addi	s1,s1,-1420 # 800075d0 <started>
    80003b64:	02050263          	beqz	a0,80003b88 <system_main+0x48>
    80003b68:	0004a783          	lw	a5,0(s1)
    80003b6c:	0007879b          	sext.w	a5,a5
    80003b70:	fe078ce3          	beqz	a5,80003b68 <system_main+0x28>
    80003b74:	0ff0000f          	fence
    80003b78:	00002517          	auipc	a0,0x2
    80003b7c:	67050513          	addi	a0,a0,1648 # 800061e8 <_ZZ14__print_uint64mE6digits+0x68>
    80003b80:	00001097          	auipc	ra,0x1
    80003b84:	a7c080e7          	jalr	-1412(ra) # 800045fc <panic>
    80003b88:	00001097          	auipc	ra,0x1
    80003b8c:	9d0080e7          	jalr	-1584(ra) # 80004558 <consoleinit>
    80003b90:	00001097          	auipc	ra,0x1
    80003b94:	15c080e7          	jalr	348(ra) # 80004cec <printfinit>
    80003b98:	00002517          	auipc	a0,0x2
    80003b9c:	73050513          	addi	a0,a0,1840 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	ab8080e7          	jalr	-1352(ra) # 80004658 <__printf>
    80003ba8:	00002517          	auipc	a0,0x2
    80003bac:	61050513          	addi	a0,a0,1552 # 800061b8 <_ZZ14__print_uint64mE6digits+0x38>
    80003bb0:	00001097          	auipc	ra,0x1
    80003bb4:	aa8080e7          	jalr	-1368(ra) # 80004658 <__printf>
    80003bb8:	00002517          	auipc	a0,0x2
    80003bbc:	71050513          	addi	a0,a0,1808 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    80003bc0:	00001097          	auipc	ra,0x1
    80003bc4:	a98080e7          	jalr	-1384(ra) # 80004658 <__printf>
    80003bc8:	00001097          	auipc	ra,0x1
    80003bcc:	4b0080e7          	jalr	1200(ra) # 80005078 <kinit>
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	148080e7          	jalr	328(ra) # 80003d18 <trapinit>
    80003bd8:	00000097          	auipc	ra,0x0
    80003bdc:	16c080e7          	jalr	364(ra) # 80003d44 <trapinithart>
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	5c0080e7          	jalr	1472(ra) # 800041a0 <plicinit>
    80003be8:	00000097          	auipc	ra,0x0
    80003bec:	5e0080e7          	jalr	1504(ra) # 800041c8 <plicinithart>
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	078080e7          	jalr	120(ra) # 80003c68 <userinit>
    80003bf8:	0ff0000f          	fence
    80003bfc:	00100793          	li	a5,1
    80003c00:	00002517          	auipc	a0,0x2
    80003c04:	5d050513          	addi	a0,a0,1488 # 800061d0 <_ZZ14__print_uint64mE6digits+0x50>
    80003c08:	00f4a023          	sw	a5,0(s1)
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	a4c080e7          	jalr	-1460(ra) # 80004658 <__printf>
    80003c14:	0000006f          	j	80003c14 <system_main+0xd4>

0000000080003c18 <cpuid>:
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00813423          	sd	s0,8(sp)
    80003c20:	01010413          	addi	s0,sp,16
    80003c24:	00020513          	mv	a0,tp
    80003c28:	00813403          	ld	s0,8(sp)
    80003c2c:	0005051b          	sext.w	a0,a0
    80003c30:	01010113          	addi	sp,sp,16
    80003c34:	00008067          	ret

0000000080003c38 <mycpu>:
    80003c38:	ff010113          	addi	sp,sp,-16
    80003c3c:	00813423          	sd	s0,8(sp)
    80003c40:	01010413          	addi	s0,sp,16
    80003c44:	00020793          	mv	a5,tp
    80003c48:	00813403          	ld	s0,8(sp)
    80003c4c:	0007879b          	sext.w	a5,a5
    80003c50:	00779793          	slli	a5,a5,0x7
    80003c54:	00005517          	auipc	a0,0x5
    80003c58:	29c50513          	addi	a0,a0,668 # 80008ef0 <cpus>
    80003c5c:	00f50533          	add	a0,a0,a5
    80003c60:	01010113          	addi	sp,sp,16
    80003c64:	00008067          	ret

0000000080003c68 <userinit>:
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00813423          	sd	s0,8(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	00813403          	ld	s0,8(sp)
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	ffffe317          	auipc	t1,0xffffe
    80003c80:	0a430067          	jr	164(t1) # 80001d20 <main>

0000000080003c84 <either_copyout>:
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00813023          	sd	s0,0(sp)
    80003c8c:	00113423          	sd	ra,8(sp)
    80003c90:	01010413          	addi	s0,sp,16
    80003c94:	02051663          	bnez	a0,80003cc0 <either_copyout+0x3c>
    80003c98:	00058513          	mv	a0,a1
    80003c9c:	00060593          	mv	a1,a2
    80003ca0:	0006861b          	sext.w	a2,a3
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	c60080e7          	jalr	-928(ra) # 80005904 <__memmove>
    80003cac:	00813083          	ld	ra,8(sp)
    80003cb0:	00013403          	ld	s0,0(sp)
    80003cb4:	00000513          	li	a0,0
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret
    80003cc0:	00002517          	auipc	a0,0x2
    80003cc4:	55050513          	addi	a0,a0,1360 # 80006210 <_ZZ14__print_uint64mE6digits+0x90>
    80003cc8:	00001097          	auipc	ra,0x1
    80003ccc:	934080e7          	jalr	-1740(ra) # 800045fc <panic>

0000000080003cd0 <either_copyin>:
    80003cd0:	ff010113          	addi	sp,sp,-16
    80003cd4:	00813023          	sd	s0,0(sp)
    80003cd8:	00113423          	sd	ra,8(sp)
    80003cdc:	01010413          	addi	s0,sp,16
    80003ce0:	02059463          	bnez	a1,80003d08 <either_copyin+0x38>
    80003ce4:	00060593          	mv	a1,a2
    80003ce8:	0006861b          	sext.w	a2,a3
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	c18080e7          	jalr	-1000(ra) # 80005904 <__memmove>
    80003cf4:	00813083          	ld	ra,8(sp)
    80003cf8:	00013403          	ld	s0,0(sp)
    80003cfc:	00000513          	li	a0,0
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret
    80003d08:	00002517          	auipc	a0,0x2
    80003d0c:	53050513          	addi	a0,a0,1328 # 80006238 <_ZZ14__print_uint64mE6digits+0xb8>
    80003d10:	00001097          	auipc	ra,0x1
    80003d14:	8ec080e7          	jalr	-1812(ra) # 800045fc <panic>

0000000080003d18 <trapinit>:
    80003d18:	ff010113          	addi	sp,sp,-16
    80003d1c:	00813423          	sd	s0,8(sp)
    80003d20:	01010413          	addi	s0,sp,16
    80003d24:	00813403          	ld	s0,8(sp)
    80003d28:	00002597          	auipc	a1,0x2
    80003d2c:	53858593          	addi	a1,a1,1336 # 80006260 <_ZZ14__print_uint64mE6digits+0xe0>
    80003d30:	00005517          	auipc	a0,0x5
    80003d34:	24050513          	addi	a0,a0,576 # 80008f70 <tickslock>
    80003d38:	01010113          	addi	sp,sp,16
    80003d3c:	00001317          	auipc	t1,0x1
    80003d40:	5cc30067          	jr	1484(t1) # 80005308 <initlock>

0000000080003d44 <trapinithart>:
    80003d44:	ff010113          	addi	sp,sp,-16
    80003d48:	00813423          	sd	s0,8(sp)
    80003d4c:	01010413          	addi	s0,sp,16
    80003d50:	00000797          	auipc	a5,0x0
    80003d54:	30078793          	addi	a5,a5,768 # 80004050 <kernelvec>
    80003d58:	10579073          	csrw	stvec,a5
    80003d5c:	00813403          	ld	s0,8(sp)
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret

0000000080003d68 <usertrap>:
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00813423          	sd	s0,8(sp)
    80003d70:	01010413          	addi	s0,sp,16
    80003d74:	00813403          	ld	s0,8(sp)
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00008067          	ret

0000000080003d80 <usertrapret>:
    80003d80:	ff010113          	addi	sp,sp,-16
    80003d84:	00813423          	sd	s0,8(sp)
    80003d88:	01010413          	addi	s0,sp,16
    80003d8c:	00813403          	ld	s0,8(sp)
    80003d90:	01010113          	addi	sp,sp,16
    80003d94:	00008067          	ret

0000000080003d98 <kerneltrap>:
    80003d98:	fe010113          	addi	sp,sp,-32
    80003d9c:	00813823          	sd	s0,16(sp)
    80003da0:	00113c23          	sd	ra,24(sp)
    80003da4:	00913423          	sd	s1,8(sp)
    80003da8:	02010413          	addi	s0,sp,32
    80003dac:	142025f3          	csrr	a1,scause
    80003db0:	100027f3          	csrr	a5,sstatus
    80003db4:	0027f793          	andi	a5,a5,2
    80003db8:	10079c63          	bnez	a5,80003ed0 <kerneltrap+0x138>
    80003dbc:	142027f3          	csrr	a5,scause
    80003dc0:	0207ce63          	bltz	a5,80003dfc <kerneltrap+0x64>
    80003dc4:	00002517          	auipc	a0,0x2
    80003dc8:	4e450513          	addi	a0,a0,1252 # 800062a8 <_ZZ14__print_uint64mE6digits+0x128>
    80003dcc:	00001097          	auipc	ra,0x1
    80003dd0:	88c080e7          	jalr	-1908(ra) # 80004658 <__printf>
    80003dd4:	141025f3          	csrr	a1,sepc
    80003dd8:	14302673          	csrr	a2,stval
    80003ddc:	00002517          	auipc	a0,0x2
    80003de0:	4dc50513          	addi	a0,a0,1244 # 800062b8 <_ZZ14__print_uint64mE6digits+0x138>
    80003de4:	00001097          	auipc	ra,0x1
    80003de8:	874080e7          	jalr	-1932(ra) # 80004658 <__printf>
    80003dec:	00002517          	auipc	a0,0x2
    80003df0:	4e450513          	addi	a0,a0,1252 # 800062d0 <_ZZ14__print_uint64mE6digits+0x150>
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	808080e7          	jalr	-2040(ra) # 800045fc <panic>
    80003dfc:	0ff7f713          	andi	a4,a5,255
    80003e00:	00900693          	li	a3,9
    80003e04:	04d70063          	beq	a4,a3,80003e44 <kerneltrap+0xac>
    80003e08:	fff00713          	li	a4,-1
    80003e0c:	03f71713          	slli	a4,a4,0x3f
    80003e10:	00170713          	addi	a4,a4,1
    80003e14:	fae798e3          	bne	a5,a4,80003dc4 <kerneltrap+0x2c>
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	e00080e7          	jalr	-512(ra) # 80003c18 <cpuid>
    80003e20:	06050663          	beqz	a0,80003e8c <kerneltrap+0xf4>
    80003e24:	144027f3          	csrr	a5,sip
    80003e28:	ffd7f793          	andi	a5,a5,-3
    80003e2c:	14479073          	csrw	sip,a5
    80003e30:	01813083          	ld	ra,24(sp)
    80003e34:	01013403          	ld	s0,16(sp)
    80003e38:	00813483          	ld	s1,8(sp)
    80003e3c:	02010113          	addi	sp,sp,32
    80003e40:	00008067          	ret
    80003e44:	00000097          	auipc	ra,0x0
    80003e48:	3d0080e7          	jalr	976(ra) # 80004214 <plic_claim>
    80003e4c:	00a00793          	li	a5,10
    80003e50:	00050493          	mv	s1,a0
    80003e54:	06f50863          	beq	a0,a5,80003ec4 <kerneltrap+0x12c>
    80003e58:	fc050ce3          	beqz	a0,80003e30 <kerneltrap+0x98>
    80003e5c:	00050593          	mv	a1,a0
    80003e60:	00002517          	auipc	a0,0x2
    80003e64:	42850513          	addi	a0,a0,1064 # 80006288 <_ZZ14__print_uint64mE6digits+0x108>
    80003e68:	00000097          	auipc	ra,0x0
    80003e6c:	7f0080e7          	jalr	2032(ra) # 80004658 <__printf>
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	01813083          	ld	ra,24(sp)
    80003e78:	00048513          	mv	a0,s1
    80003e7c:	00813483          	ld	s1,8(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00000317          	auipc	t1,0x0
    80003e88:	3c830067          	jr	968(t1) # 8000424c <plic_complete>
    80003e8c:	00005517          	auipc	a0,0x5
    80003e90:	0e450513          	addi	a0,a0,228 # 80008f70 <tickslock>
    80003e94:	00001097          	auipc	ra,0x1
    80003e98:	498080e7          	jalr	1176(ra) # 8000532c <acquire>
    80003e9c:	00003717          	auipc	a4,0x3
    80003ea0:	73870713          	addi	a4,a4,1848 # 800075d4 <ticks>
    80003ea4:	00072783          	lw	a5,0(a4)
    80003ea8:	00005517          	auipc	a0,0x5
    80003eac:	0c850513          	addi	a0,a0,200 # 80008f70 <tickslock>
    80003eb0:	0017879b          	addiw	a5,a5,1
    80003eb4:	00f72023          	sw	a5,0(a4)
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	540080e7          	jalr	1344(ra) # 800053f8 <release>
    80003ec0:	f65ff06f          	j	80003e24 <kerneltrap+0x8c>
    80003ec4:	00001097          	auipc	ra,0x1
    80003ec8:	09c080e7          	jalr	156(ra) # 80004f60 <uartintr>
    80003ecc:	fa5ff06f          	j	80003e70 <kerneltrap+0xd8>
    80003ed0:	00002517          	auipc	a0,0x2
    80003ed4:	39850513          	addi	a0,a0,920 # 80006268 <_ZZ14__print_uint64mE6digits+0xe8>
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	724080e7          	jalr	1828(ra) # 800045fc <panic>

0000000080003ee0 <clockintr>:
    80003ee0:	fe010113          	addi	sp,sp,-32
    80003ee4:	00813823          	sd	s0,16(sp)
    80003ee8:	00913423          	sd	s1,8(sp)
    80003eec:	00113c23          	sd	ra,24(sp)
    80003ef0:	02010413          	addi	s0,sp,32
    80003ef4:	00005497          	auipc	s1,0x5
    80003ef8:	07c48493          	addi	s1,s1,124 # 80008f70 <tickslock>
    80003efc:	00048513          	mv	a0,s1
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	42c080e7          	jalr	1068(ra) # 8000532c <acquire>
    80003f08:	00003717          	auipc	a4,0x3
    80003f0c:	6cc70713          	addi	a4,a4,1740 # 800075d4 <ticks>
    80003f10:	00072783          	lw	a5,0(a4)
    80003f14:	01013403          	ld	s0,16(sp)
    80003f18:	01813083          	ld	ra,24(sp)
    80003f1c:	00048513          	mv	a0,s1
    80003f20:	0017879b          	addiw	a5,a5,1
    80003f24:	00813483          	ld	s1,8(sp)
    80003f28:	00f72023          	sw	a5,0(a4)
    80003f2c:	02010113          	addi	sp,sp,32
    80003f30:	00001317          	auipc	t1,0x1
    80003f34:	4c830067          	jr	1224(t1) # 800053f8 <release>

0000000080003f38 <devintr>:
    80003f38:	142027f3          	csrr	a5,scause
    80003f3c:	00000513          	li	a0,0
    80003f40:	0007c463          	bltz	a5,80003f48 <devintr+0x10>
    80003f44:	00008067          	ret
    80003f48:	fe010113          	addi	sp,sp,-32
    80003f4c:	00813823          	sd	s0,16(sp)
    80003f50:	00113c23          	sd	ra,24(sp)
    80003f54:	00913423          	sd	s1,8(sp)
    80003f58:	02010413          	addi	s0,sp,32
    80003f5c:	0ff7f713          	andi	a4,a5,255
    80003f60:	00900693          	li	a3,9
    80003f64:	04d70c63          	beq	a4,a3,80003fbc <devintr+0x84>
    80003f68:	fff00713          	li	a4,-1
    80003f6c:	03f71713          	slli	a4,a4,0x3f
    80003f70:	00170713          	addi	a4,a4,1
    80003f74:	00e78c63          	beq	a5,a4,80003f8c <devintr+0x54>
    80003f78:	01813083          	ld	ra,24(sp)
    80003f7c:	01013403          	ld	s0,16(sp)
    80003f80:	00813483          	ld	s1,8(sp)
    80003f84:	02010113          	addi	sp,sp,32
    80003f88:	00008067          	ret
    80003f8c:	00000097          	auipc	ra,0x0
    80003f90:	c8c080e7          	jalr	-884(ra) # 80003c18 <cpuid>
    80003f94:	06050663          	beqz	a0,80004000 <devintr+0xc8>
    80003f98:	144027f3          	csrr	a5,sip
    80003f9c:	ffd7f793          	andi	a5,a5,-3
    80003fa0:	14479073          	csrw	sip,a5
    80003fa4:	01813083          	ld	ra,24(sp)
    80003fa8:	01013403          	ld	s0,16(sp)
    80003fac:	00813483          	ld	s1,8(sp)
    80003fb0:	00200513          	li	a0,2
    80003fb4:	02010113          	addi	sp,sp,32
    80003fb8:	00008067          	ret
    80003fbc:	00000097          	auipc	ra,0x0
    80003fc0:	258080e7          	jalr	600(ra) # 80004214 <plic_claim>
    80003fc4:	00a00793          	li	a5,10
    80003fc8:	00050493          	mv	s1,a0
    80003fcc:	06f50663          	beq	a0,a5,80004038 <devintr+0x100>
    80003fd0:	00100513          	li	a0,1
    80003fd4:	fa0482e3          	beqz	s1,80003f78 <devintr+0x40>
    80003fd8:	00048593          	mv	a1,s1
    80003fdc:	00002517          	auipc	a0,0x2
    80003fe0:	2ac50513          	addi	a0,a0,684 # 80006288 <_ZZ14__print_uint64mE6digits+0x108>
    80003fe4:	00000097          	auipc	ra,0x0
    80003fe8:	674080e7          	jalr	1652(ra) # 80004658 <__printf>
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	25c080e7          	jalr	604(ra) # 8000424c <plic_complete>
    80003ff8:	00100513          	li	a0,1
    80003ffc:	f7dff06f          	j	80003f78 <devintr+0x40>
    80004000:	00005517          	auipc	a0,0x5
    80004004:	f7050513          	addi	a0,a0,-144 # 80008f70 <tickslock>
    80004008:	00001097          	auipc	ra,0x1
    8000400c:	324080e7          	jalr	804(ra) # 8000532c <acquire>
    80004010:	00003717          	auipc	a4,0x3
    80004014:	5c470713          	addi	a4,a4,1476 # 800075d4 <ticks>
    80004018:	00072783          	lw	a5,0(a4)
    8000401c:	00005517          	auipc	a0,0x5
    80004020:	f5450513          	addi	a0,a0,-172 # 80008f70 <tickslock>
    80004024:	0017879b          	addiw	a5,a5,1
    80004028:	00f72023          	sw	a5,0(a4)
    8000402c:	00001097          	auipc	ra,0x1
    80004030:	3cc080e7          	jalr	972(ra) # 800053f8 <release>
    80004034:	f65ff06f          	j	80003f98 <devintr+0x60>
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	f28080e7          	jalr	-216(ra) # 80004f60 <uartintr>
    80004040:	fadff06f          	j	80003fec <devintr+0xb4>
	...

0000000080004050 <kernelvec>:
    80004050:	f0010113          	addi	sp,sp,-256
    80004054:	00113023          	sd	ra,0(sp)
    80004058:	00213423          	sd	sp,8(sp)
    8000405c:	00313823          	sd	gp,16(sp)
    80004060:	00413c23          	sd	tp,24(sp)
    80004064:	02513023          	sd	t0,32(sp)
    80004068:	02613423          	sd	t1,40(sp)
    8000406c:	02713823          	sd	t2,48(sp)
    80004070:	02813c23          	sd	s0,56(sp)
    80004074:	04913023          	sd	s1,64(sp)
    80004078:	04a13423          	sd	a0,72(sp)
    8000407c:	04b13823          	sd	a1,80(sp)
    80004080:	04c13c23          	sd	a2,88(sp)
    80004084:	06d13023          	sd	a3,96(sp)
    80004088:	06e13423          	sd	a4,104(sp)
    8000408c:	06f13823          	sd	a5,112(sp)
    80004090:	07013c23          	sd	a6,120(sp)
    80004094:	09113023          	sd	a7,128(sp)
    80004098:	09213423          	sd	s2,136(sp)
    8000409c:	09313823          	sd	s3,144(sp)
    800040a0:	09413c23          	sd	s4,152(sp)
    800040a4:	0b513023          	sd	s5,160(sp)
    800040a8:	0b613423          	sd	s6,168(sp)
    800040ac:	0b713823          	sd	s7,176(sp)
    800040b0:	0b813c23          	sd	s8,184(sp)
    800040b4:	0d913023          	sd	s9,192(sp)
    800040b8:	0da13423          	sd	s10,200(sp)
    800040bc:	0db13823          	sd	s11,208(sp)
    800040c0:	0dc13c23          	sd	t3,216(sp)
    800040c4:	0fd13023          	sd	t4,224(sp)
    800040c8:	0fe13423          	sd	t5,232(sp)
    800040cc:	0ff13823          	sd	t6,240(sp)
    800040d0:	cc9ff0ef          	jal	ra,80003d98 <kerneltrap>
    800040d4:	00013083          	ld	ra,0(sp)
    800040d8:	00813103          	ld	sp,8(sp)
    800040dc:	01013183          	ld	gp,16(sp)
    800040e0:	02013283          	ld	t0,32(sp)
    800040e4:	02813303          	ld	t1,40(sp)
    800040e8:	03013383          	ld	t2,48(sp)
    800040ec:	03813403          	ld	s0,56(sp)
    800040f0:	04013483          	ld	s1,64(sp)
    800040f4:	04813503          	ld	a0,72(sp)
    800040f8:	05013583          	ld	a1,80(sp)
    800040fc:	05813603          	ld	a2,88(sp)
    80004100:	06013683          	ld	a3,96(sp)
    80004104:	06813703          	ld	a4,104(sp)
    80004108:	07013783          	ld	a5,112(sp)
    8000410c:	07813803          	ld	a6,120(sp)
    80004110:	08013883          	ld	a7,128(sp)
    80004114:	08813903          	ld	s2,136(sp)
    80004118:	09013983          	ld	s3,144(sp)
    8000411c:	09813a03          	ld	s4,152(sp)
    80004120:	0a013a83          	ld	s5,160(sp)
    80004124:	0a813b03          	ld	s6,168(sp)
    80004128:	0b013b83          	ld	s7,176(sp)
    8000412c:	0b813c03          	ld	s8,184(sp)
    80004130:	0c013c83          	ld	s9,192(sp)
    80004134:	0c813d03          	ld	s10,200(sp)
    80004138:	0d013d83          	ld	s11,208(sp)
    8000413c:	0d813e03          	ld	t3,216(sp)
    80004140:	0e013e83          	ld	t4,224(sp)
    80004144:	0e813f03          	ld	t5,232(sp)
    80004148:	0f013f83          	ld	t6,240(sp)
    8000414c:	10010113          	addi	sp,sp,256
    80004150:	10200073          	sret
    80004154:	00000013          	nop
    80004158:	00000013          	nop
    8000415c:	00000013          	nop

0000000080004160 <timervec>:
    80004160:	34051573          	csrrw	a0,mscratch,a0
    80004164:	00b53023          	sd	a1,0(a0)
    80004168:	00c53423          	sd	a2,8(a0)
    8000416c:	00d53823          	sd	a3,16(a0)
    80004170:	01853583          	ld	a1,24(a0)
    80004174:	02053603          	ld	a2,32(a0)
    80004178:	0005b683          	ld	a3,0(a1)
    8000417c:	00c686b3          	add	a3,a3,a2
    80004180:	00d5b023          	sd	a3,0(a1)
    80004184:	00200593          	li	a1,2
    80004188:	14459073          	csrw	sip,a1
    8000418c:	01053683          	ld	a3,16(a0)
    80004190:	00853603          	ld	a2,8(a0)
    80004194:	00053583          	ld	a1,0(a0)
    80004198:	34051573          	csrrw	a0,mscratch,a0
    8000419c:	30200073          	mret

00000000800041a0 <plicinit>:
    800041a0:	ff010113          	addi	sp,sp,-16
    800041a4:	00813423          	sd	s0,8(sp)
    800041a8:	01010413          	addi	s0,sp,16
    800041ac:	00813403          	ld	s0,8(sp)
    800041b0:	0c0007b7          	lui	a5,0xc000
    800041b4:	00100713          	li	a4,1
    800041b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800041bc:	00e7a223          	sw	a4,4(a5)
    800041c0:	01010113          	addi	sp,sp,16
    800041c4:	00008067          	ret

00000000800041c8 <plicinithart>:
    800041c8:	ff010113          	addi	sp,sp,-16
    800041cc:	00813023          	sd	s0,0(sp)
    800041d0:	00113423          	sd	ra,8(sp)
    800041d4:	01010413          	addi	s0,sp,16
    800041d8:	00000097          	auipc	ra,0x0
    800041dc:	a40080e7          	jalr	-1472(ra) # 80003c18 <cpuid>
    800041e0:	0085171b          	slliw	a4,a0,0x8
    800041e4:	0c0027b7          	lui	a5,0xc002
    800041e8:	00e787b3          	add	a5,a5,a4
    800041ec:	40200713          	li	a4,1026
    800041f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800041f4:	00813083          	ld	ra,8(sp)
    800041f8:	00013403          	ld	s0,0(sp)
    800041fc:	00d5151b          	slliw	a0,a0,0xd
    80004200:	0c2017b7          	lui	a5,0xc201
    80004204:	00a78533          	add	a0,a5,a0
    80004208:	00052023          	sw	zero,0(a0)
    8000420c:	01010113          	addi	sp,sp,16
    80004210:	00008067          	ret

0000000080004214 <plic_claim>:
    80004214:	ff010113          	addi	sp,sp,-16
    80004218:	00813023          	sd	s0,0(sp)
    8000421c:	00113423          	sd	ra,8(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	00000097          	auipc	ra,0x0
    80004228:	9f4080e7          	jalr	-1548(ra) # 80003c18 <cpuid>
    8000422c:	00813083          	ld	ra,8(sp)
    80004230:	00013403          	ld	s0,0(sp)
    80004234:	00d5151b          	slliw	a0,a0,0xd
    80004238:	0c2017b7          	lui	a5,0xc201
    8000423c:	00a78533          	add	a0,a5,a0
    80004240:	00452503          	lw	a0,4(a0)
    80004244:	01010113          	addi	sp,sp,16
    80004248:	00008067          	ret

000000008000424c <plic_complete>:
    8000424c:	fe010113          	addi	sp,sp,-32
    80004250:	00813823          	sd	s0,16(sp)
    80004254:	00913423          	sd	s1,8(sp)
    80004258:	00113c23          	sd	ra,24(sp)
    8000425c:	02010413          	addi	s0,sp,32
    80004260:	00050493          	mv	s1,a0
    80004264:	00000097          	auipc	ra,0x0
    80004268:	9b4080e7          	jalr	-1612(ra) # 80003c18 <cpuid>
    8000426c:	01813083          	ld	ra,24(sp)
    80004270:	01013403          	ld	s0,16(sp)
    80004274:	00d5179b          	slliw	a5,a0,0xd
    80004278:	0c201737          	lui	a4,0xc201
    8000427c:	00f707b3          	add	a5,a4,a5
    80004280:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004284:	00813483          	ld	s1,8(sp)
    80004288:	02010113          	addi	sp,sp,32
    8000428c:	00008067          	ret

0000000080004290 <consolewrite>:
    80004290:	fb010113          	addi	sp,sp,-80
    80004294:	04813023          	sd	s0,64(sp)
    80004298:	04113423          	sd	ra,72(sp)
    8000429c:	02913c23          	sd	s1,56(sp)
    800042a0:	03213823          	sd	s2,48(sp)
    800042a4:	03313423          	sd	s3,40(sp)
    800042a8:	03413023          	sd	s4,32(sp)
    800042ac:	01513c23          	sd	s5,24(sp)
    800042b0:	05010413          	addi	s0,sp,80
    800042b4:	06c05c63          	blez	a2,8000432c <consolewrite+0x9c>
    800042b8:	00060993          	mv	s3,a2
    800042bc:	00050a13          	mv	s4,a0
    800042c0:	00058493          	mv	s1,a1
    800042c4:	00000913          	li	s2,0
    800042c8:	fff00a93          	li	s5,-1
    800042cc:	01c0006f          	j	800042e8 <consolewrite+0x58>
    800042d0:	fbf44503          	lbu	a0,-65(s0)
    800042d4:	0019091b          	addiw	s2,s2,1
    800042d8:	00148493          	addi	s1,s1,1
    800042dc:	00001097          	auipc	ra,0x1
    800042e0:	a9c080e7          	jalr	-1380(ra) # 80004d78 <uartputc>
    800042e4:	03298063          	beq	s3,s2,80004304 <consolewrite+0x74>
    800042e8:	00048613          	mv	a2,s1
    800042ec:	00100693          	li	a3,1
    800042f0:	000a0593          	mv	a1,s4
    800042f4:	fbf40513          	addi	a0,s0,-65
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	9d8080e7          	jalr	-1576(ra) # 80003cd0 <either_copyin>
    80004300:	fd5518e3          	bne	a0,s5,800042d0 <consolewrite+0x40>
    80004304:	04813083          	ld	ra,72(sp)
    80004308:	04013403          	ld	s0,64(sp)
    8000430c:	03813483          	ld	s1,56(sp)
    80004310:	02813983          	ld	s3,40(sp)
    80004314:	02013a03          	ld	s4,32(sp)
    80004318:	01813a83          	ld	s5,24(sp)
    8000431c:	00090513          	mv	a0,s2
    80004320:	03013903          	ld	s2,48(sp)
    80004324:	05010113          	addi	sp,sp,80
    80004328:	00008067          	ret
    8000432c:	00000913          	li	s2,0
    80004330:	fd5ff06f          	j	80004304 <consolewrite+0x74>

0000000080004334 <consoleread>:
    80004334:	f9010113          	addi	sp,sp,-112
    80004338:	06813023          	sd	s0,96(sp)
    8000433c:	04913c23          	sd	s1,88(sp)
    80004340:	05213823          	sd	s2,80(sp)
    80004344:	05313423          	sd	s3,72(sp)
    80004348:	05413023          	sd	s4,64(sp)
    8000434c:	03513c23          	sd	s5,56(sp)
    80004350:	03613823          	sd	s6,48(sp)
    80004354:	03713423          	sd	s7,40(sp)
    80004358:	03813023          	sd	s8,32(sp)
    8000435c:	06113423          	sd	ra,104(sp)
    80004360:	01913c23          	sd	s9,24(sp)
    80004364:	07010413          	addi	s0,sp,112
    80004368:	00060b93          	mv	s7,a2
    8000436c:	00050913          	mv	s2,a0
    80004370:	00058c13          	mv	s8,a1
    80004374:	00060b1b          	sext.w	s6,a2
    80004378:	00005497          	auipc	s1,0x5
    8000437c:	c2048493          	addi	s1,s1,-992 # 80008f98 <cons>
    80004380:	00400993          	li	s3,4
    80004384:	fff00a13          	li	s4,-1
    80004388:	00a00a93          	li	s5,10
    8000438c:	05705e63          	blez	s7,800043e8 <consoleread+0xb4>
    80004390:	09c4a703          	lw	a4,156(s1)
    80004394:	0984a783          	lw	a5,152(s1)
    80004398:	0007071b          	sext.w	a4,a4
    8000439c:	08e78463          	beq	a5,a4,80004424 <consoleread+0xf0>
    800043a0:	07f7f713          	andi	a4,a5,127
    800043a4:	00e48733          	add	a4,s1,a4
    800043a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800043ac:	0017869b          	addiw	a3,a5,1
    800043b0:	08d4ac23          	sw	a3,152(s1)
    800043b4:	00070c9b          	sext.w	s9,a4
    800043b8:	0b370663          	beq	a4,s3,80004464 <consoleread+0x130>
    800043bc:	00100693          	li	a3,1
    800043c0:	f9f40613          	addi	a2,s0,-97
    800043c4:	000c0593          	mv	a1,s8
    800043c8:	00090513          	mv	a0,s2
    800043cc:	f8e40fa3          	sb	a4,-97(s0)
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	8b4080e7          	jalr	-1868(ra) # 80003c84 <either_copyout>
    800043d8:	01450863          	beq	a0,s4,800043e8 <consoleread+0xb4>
    800043dc:	001c0c13          	addi	s8,s8,1
    800043e0:	fffb8b9b          	addiw	s7,s7,-1
    800043e4:	fb5c94e3          	bne	s9,s5,8000438c <consoleread+0x58>
    800043e8:	000b851b          	sext.w	a0,s7
    800043ec:	06813083          	ld	ra,104(sp)
    800043f0:	06013403          	ld	s0,96(sp)
    800043f4:	05813483          	ld	s1,88(sp)
    800043f8:	05013903          	ld	s2,80(sp)
    800043fc:	04813983          	ld	s3,72(sp)
    80004400:	04013a03          	ld	s4,64(sp)
    80004404:	03813a83          	ld	s5,56(sp)
    80004408:	02813b83          	ld	s7,40(sp)
    8000440c:	02013c03          	ld	s8,32(sp)
    80004410:	01813c83          	ld	s9,24(sp)
    80004414:	40ab053b          	subw	a0,s6,a0
    80004418:	03013b03          	ld	s6,48(sp)
    8000441c:	07010113          	addi	sp,sp,112
    80004420:	00008067          	ret
    80004424:	00001097          	auipc	ra,0x1
    80004428:	1d8080e7          	jalr	472(ra) # 800055fc <push_on>
    8000442c:	0984a703          	lw	a4,152(s1)
    80004430:	09c4a783          	lw	a5,156(s1)
    80004434:	0007879b          	sext.w	a5,a5
    80004438:	fef70ce3          	beq	a4,a5,80004430 <consoleread+0xfc>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	234080e7          	jalr	564(ra) # 80005670 <pop_on>
    80004444:	0984a783          	lw	a5,152(s1)
    80004448:	07f7f713          	andi	a4,a5,127
    8000444c:	00e48733          	add	a4,s1,a4
    80004450:	01874703          	lbu	a4,24(a4)
    80004454:	0017869b          	addiw	a3,a5,1
    80004458:	08d4ac23          	sw	a3,152(s1)
    8000445c:	00070c9b          	sext.w	s9,a4
    80004460:	f5371ee3          	bne	a4,s3,800043bc <consoleread+0x88>
    80004464:	000b851b          	sext.w	a0,s7
    80004468:	f96bf2e3          	bgeu	s7,s6,800043ec <consoleread+0xb8>
    8000446c:	08f4ac23          	sw	a5,152(s1)
    80004470:	f7dff06f          	j	800043ec <consoleread+0xb8>

0000000080004474 <consputc>:
    80004474:	10000793          	li	a5,256
    80004478:	00f50663          	beq	a0,a5,80004484 <consputc+0x10>
    8000447c:	00001317          	auipc	t1,0x1
    80004480:	9f430067          	jr	-1548(t1) # 80004e70 <uartputc_sync>
    80004484:	ff010113          	addi	sp,sp,-16
    80004488:	00113423          	sd	ra,8(sp)
    8000448c:	00813023          	sd	s0,0(sp)
    80004490:	01010413          	addi	s0,sp,16
    80004494:	00800513          	li	a0,8
    80004498:	00001097          	auipc	ra,0x1
    8000449c:	9d8080e7          	jalr	-1576(ra) # 80004e70 <uartputc_sync>
    800044a0:	02000513          	li	a0,32
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	9cc080e7          	jalr	-1588(ra) # 80004e70 <uartputc_sync>
    800044ac:	00013403          	ld	s0,0(sp)
    800044b0:	00813083          	ld	ra,8(sp)
    800044b4:	00800513          	li	a0,8
    800044b8:	01010113          	addi	sp,sp,16
    800044bc:	00001317          	auipc	t1,0x1
    800044c0:	9b430067          	jr	-1612(t1) # 80004e70 <uartputc_sync>

00000000800044c4 <consoleintr>:
    800044c4:	fe010113          	addi	sp,sp,-32
    800044c8:	00813823          	sd	s0,16(sp)
    800044cc:	00913423          	sd	s1,8(sp)
    800044d0:	01213023          	sd	s2,0(sp)
    800044d4:	00113c23          	sd	ra,24(sp)
    800044d8:	02010413          	addi	s0,sp,32
    800044dc:	00005917          	auipc	s2,0x5
    800044e0:	abc90913          	addi	s2,s2,-1348 # 80008f98 <cons>
    800044e4:	00050493          	mv	s1,a0
    800044e8:	00090513          	mv	a0,s2
    800044ec:	00001097          	auipc	ra,0x1
    800044f0:	e40080e7          	jalr	-448(ra) # 8000532c <acquire>
    800044f4:	02048c63          	beqz	s1,8000452c <consoleintr+0x68>
    800044f8:	0a092783          	lw	a5,160(s2)
    800044fc:	09892703          	lw	a4,152(s2)
    80004500:	07f00693          	li	a3,127
    80004504:	40e7873b          	subw	a4,a5,a4
    80004508:	02e6e263          	bltu	a3,a4,8000452c <consoleintr+0x68>
    8000450c:	00d00713          	li	a4,13
    80004510:	04e48063          	beq	s1,a4,80004550 <consoleintr+0x8c>
    80004514:	07f7f713          	andi	a4,a5,127
    80004518:	00e90733          	add	a4,s2,a4
    8000451c:	0017879b          	addiw	a5,a5,1
    80004520:	0af92023          	sw	a5,160(s2)
    80004524:	00970c23          	sb	s1,24(a4)
    80004528:	08f92e23          	sw	a5,156(s2)
    8000452c:	01013403          	ld	s0,16(sp)
    80004530:	01813083          	ld	ra,24(sp)
    80004534:	00813483          	ld	s1,8(sp)
    80004538:	00013903          	ld	s2,0(sp)
    8000453c:	00005517          	auipc	a0,0x5
    80004540:	a5c50513          	addi	a0,a0,-1444 # 80008f98 <cons>
    80004544:	02010113          	addi	sp,sp,32
    80004548:	00001317          	auipc	t1,0x1
    8000454c:	eb030067          	jr	-336(t1) # 800053f8 <release>
    80004550:	00a00493          	li	s1,10
    80004554:	fc1ff06f          	j	80004514 <consoleintr+0x50>

0000000080004558 <consoleinit>:
    80004558:	fe010113          	addi	sp,sp,-32
    8000455c:	00113c23          	sd	ra,24(sp)
    80004560:	00813823          	sd	s0,16(sp)
    80004564:	00913423          	sd	s1,8(sp)
    80004568:	02010413          	addi	s0,sp,32
    8000456c:	00005497          	auipc	s1,0x5
    80004570:	a2c48493          	addi	s1,s1,-1492 # 80008f98 <cons>
    80004574:	00048513          	mv	a0,s1
    80004578:	00002597          	auipc	a1,0x2
    8000457c:	d6858593          	addi	a1,a1,-664 # 800062e0 <_ZZ14__print_uint64mE6digits+0x160>
    80004580:	00001097          	auipc	ra,0x1
    80004584:	d88080e7          	jalr	-632(ra) # 80005308 <initlock>
    80004588:	00000097          	auipc	ra,0x0
    8000458c:	7ac080e7          	jalr	1964(ra) # 80004d34 <uartinit>
    80004590:	01813083          	ld	ra,24(sp)
    80004594:	01013403          	ld	s0,16(sp)
    80004598:	00000797          	auipc	a5,0x0
    8000459c:	d9c78793          	addi	a5,a5,-612 # 80004334 <consoleread>
    800045a0:	0af4bc23          	sd	a5,184(s1)
    800045a4:	00000797          	auipc	a5,0x0
    800045a8:	cec78793          	addi	a5,a5,-788 # 80004290 <consolewrite>
    800045ac:	0cf4b023          	sd	a5,192(s1)
    800045b0:	00813483          	ld	s1,8(sp)
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00008067          	ret

00000000800045bc <console_read>:
    800045bc:	ff010113          	addi	sp,sp,-16
    800045c0:	00813423          	sd	s0,8(sp)
    800045c4:	01010413          	addi	s0,sp,16
    800045c8:	00813403          	ld	s0,8(sp)
    800045cc:	00005317          	auipc	t1,0x5
    800045d0:	a8433303          	ld	t1,-1404(t1) # 80009050 <devsw+0x10>
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00030067          	jr	t1

00000000800045dc <console_write>:
    800045dc:	ff010113          	addi	sp,sp,-16
    800045e0:	00813423          	sd	s0,8(sp)
    800045e4:	01010413          	addi	s0,sp,16
    800045e8:	00813403          	ld	s0,8(sp)
    800045ec:	00005317          	auipc	t1,0x5
    800045f0:	a6c33303          	ld	t1,-1428(t1) # 80009058 <devsw+0x18>
    800045f4:	01010113          	addi	sp,sp,16
    800045f8:	00030067          	jr	t1

00000000800045fc <panic>:
    800045fc:	fe010113          	addi	sp,sp,-32
    80004600:	00113c23          	sd	ra,24(sp)
    80004604:	00813823          	sd	s0,16(sp)
    80004608:	00913423          	sd	s1,8(sp)
    8000460c:	02010413          	addi	s0,sp,32
    80004610:	00050493          	mv	s1,a0
    80004614:	00002517          	auipc	a0,0x2
    80004618:	cd450513          	addi	a0,a0,-812 # 800062e8 <_ZZ14__print_uint64mE6digits+0x168>
    8000461c:	00005797          	auipc	a5,0x5
    80004620:	ac07ae23          	sw	zero,-1316(a5) # 800090f8 <pr+0x18>
    80004624:	00000097          	auipc	ra,0x0
    80004628:	034080e7          	jalr	52(ra) # 80004658 <__printf>
    8000462c:	00048513          	mv	a0,s1
    80004630:	00000097          	auipc	ra,0x0
    80004634:	028080e7          	jalr	40(ra) # 80004658 <__printf>
    80004638:	00002517          	auipc	a0,0x2
    8000463c:	c9050513          	addi	a0,a0,-880 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    80004640:	00000097          	auipc	ra,0x0
    80004644:	018080e7          	jalr	24(ra) # 80004658 <__printf>
    80004648:	00100793          	li	a5,1
    8000464c:	00003717          	auipc	a4,0x3
    80004650:	f8f72623          	sw	a5,-116(a4) # 800075d8 <panicked>
    80004654:	0000006f          	j	80004654 <panic+0x58>

0000000080004658 <__printf>:
    80004658:	f3010113          	addi	sp,sp,-208
    8000465c:	08813023          	sd	s0,128(sp)
    80004660:	07313423          	sd	s3,104(sp)
    80004664:	09010413          	addi	s0,sp,144
    80004668:	05813023          	sd	s8,64(sp)
    8000466c:	08113423          	sd	ra,136(sp)
    80004670:	06913c23          	sd	s1,120(sp)
    80004674:	07213823          	sd	s2,112(sp)
    80004678:	07413023          	sd	s4,96(sp)
    8000467c:	05513c23          	sd	s5,88(sp)
    80004680:	05613823          	sd	s6,80(sp)
    80004684:	05713423          	sd	s7,72(sp)
    80004688:	03913c23          	sd	s9,56(sp)
    8000468c:	03a13823          	sd	s10,48(sp)
    80004690:	03b13423          	sd	s11,40(sp)
    80004694:	00005317          	auipc	t1,0x5
    80004698:	a4c30313          	addi	t1,t1,-1460 # 800090e0 <pr>
    8000469c:	01832c03          	lw	s8,24(t1)
    800046a0:	00b43423          	sd	a1,8(s0)
    800046a4:	00c43823          	sd	a2,16(s0)
    800046a8:	00d43c23          	sd	a3,24(s0)
    800046ac:	02e43023          	sd	a4,32(s0)
    800046b0:	02f43423          	sd	a5,40(s0)
    800046b4:	03043823          	sd	a6,48(s0)
    800046b8:	03143c23          	sd	a7,56(s0)
    800046bc:	00050993          	mv	s3,a0
    800046c0:	4a0c1663          	bnez	s8,80004b6c <__printf+0x514>
    800046c4:	60098c63          	beqz	s3,80004cdc <__printf+0x684>
    800046c8:	0009c503          	lbu	a0,0(s3)
    800046cc:	00840793          	addi	a5,s0,8
    800046d0:	f6f43c23          	sd	a5,-136(s0)
    800046d4:	00000493          	li	s1,0
    800046d8:	22050063          	beqz	a0,800048f8 <__printf+0x2a0>
    800046dc:	00002a37          	lui	s4,0x2
    800046e0:	00018ab7          	lui	s5,0x18
    800046e4:	000f4b37          	lui	s6,0xf4
    800046e8:	00989bb7          	lui	s7,0x989
    800046ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800046f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800046f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800046f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800046fc:	00148c9b          	addiw	s9,s1,1
    80004700:	02500793          	li	a5,37
    80004704:	01998933          	add	s2,s3,s9
    80004708:	38f51263          	bne	a0,a5,80004a8c <__printf+0x434>
    8000470c:	00094783          	lbu	a5,0(s2)
    80004710:	00078c9b          	sext.w	s9,a5
    80004714:	1e078263          	beqz	a5,800048f8 <__printf+0x2a0>
    80004718:	0024849b          	addiw	s1,s1,2
    8000471c:	07000713          	li	a4,112
    80004720:	00998933          	add	s2,s3,s1
    80004724:	38e78a63          	beq	a5,a4,80004ab8 <__printf+0x460>
    80004728:	20f76863          	bltu	a4,a5,80004938 <__printf+0x2e0>
    8000472c:	42a78863          	beq	a5,a0,80004b5c <__printf+0x504>
    80004730:	06400713          	li	a4,100
    80004734:	40e79663          	bne	a5,a4,80004b40 <__printf+0x4e8>
    80004738:	f7843783          	ld	a5,-136(s0)
    8000473c:	0007a603          	lw	a2,0(a5)
    80004740:	00878793          	addi	a5,a5,8
    80004744:	f6f43c23          	sd	a5,-136(s0)
    80004748:	42064a63          	bltz	a2,80004b7c <__printf+0x524>
    8000474c:	00a00713          	li	a4,10
    80004750:	02e677bb          	remuw	a5,a2,a4
    80004754:	00002d97          	auipc	s11,0x2
    80004758:	bbcd8d93          	addi	s11,s11,-1092 # 80006310 <digits>
    8000475c:	00900593          	li	a1,9
    80004760:	0006051b          	sext.w	a0,a2
    80004764:	00000c93          	li	s9,0
    80004768:	02079793          	slli	a5,a5,0x20
    8000476c:	0207d793          	srli	a5,a5,0x20
    80004770:	00fd87b3          	add	a5,s11,a5
    80004774:	0007c783          	lbu	a5,0(a5)
    80004778:	02e656bb          	divuw	a3,a2,a4
    8000477c:	f8f40023          	sb	a5,-128(s0)
    80004780:	14c5d863          	bge	a1,a2,800048d0 <__printf+0x278>
    80004784:	06300593          	li	a1,99
    80004788:	00100c93          	li	s9,1
    8000478c:	02e6f7bb          	remuw	a5,a3,a4
    80004790:	02079793          	slli	a5,a5,0x20
    80004794:	0207d793          	srli	a5,a5,0x20
    80004798:	00fd87b3          	add	a5,s11,a5
    8000479c:	0007c783          	lbu	a5,0(a5)
    800047a0:	02e6d73b          	divuw	a4,a3,a4
    800047a4:	f8f400a3          	sb	a5,-127(s0)
    800047a8:	12a5f463          	bgeu	a1,a0,800048d0 <__printf+0x278>
    800047ac:	00a00693          	li	a3,10
    800047b0:	00900593          	li	a1,9
    800047b4:	02d777bb          	remuw	a5,a4,a3
    800047b8:	02079793          	slli	a5,a5,0x20
    800047bc:	0207d793          	srli	a5,a5,0x20
    800047c0:	00fd87b3          	add	a5,s11,a5
    800047c4:	0007c503          	lbu	a0,0(a5)
    800047c8:	02d757bb          	divuw	a5,a4,a3
    800047cc:	f8a40123          	sb	a0,-126(s0)
    800047d0:	48e5f263          	bgeu	a1,a4,80004c54 <__printf+0x5fc>
    800047d4:	06300513          	li	a0,99
    800047d8:	02d7f5bb          	remuw	a1,a5,a3
    800047dc:	02059593          	slli	a1,a1,0x20
    800047e0:	0205d593          	srli	a1,a1,0x20
    800047e4:	00bd85b3          	add	a1,s11,a1
    800047e8:	0005c583          	lbu	a1,0(a1)
    800047ec:	02d7d7bb          	divuw	a5,a5,a3
    800047f0:	f8b401a3          	sb	a1,-125(s0)
    800047f4:	48e57263          	bgeu	a0,a4,80004c78 <__printf+0x620>
    800047f8:	3e700513          	li	a0,999
    800047fc:	02d7f5bb          	remuw	a1,a5,a3
    80004800:	02059593          	slli	a1,a1,0x20
    80004804:	0205d593          	srli	a1,a1,0x20
    80004808:	00bd85b3          	add	a1,s11,a1
    8000480c:	0005c583          	lbu	a1,0(a1)
    80004810:	02d7d7bb          	divuw	a5,a5,a3
    80004814:	f8b40223          	sb	a1,-124(s0)
    80004818:	46e57663          	bgeu	a0,a4,80004c84 <__printf+0x62c>
    8000481c:	02d7f5bb          	remuw	a1,a5,a3
    80004820:	02059593          	slli	a1,a1,0x20
    80004824:	0205d593          	srli	a1,a1,0x20
    80004828:	00bd85b3          	add	a1,s11,a1
    8000482c:	0005c583          	lbu	a1,0(a1)
    80004830:	02d7d7bb          	divuw	a5,a5,a3
    80004834:	f8b402a3          	sb	a1,-123(s0)
    80004838:	46ea7863          	bgeu	s4,a4,80004ca8 <__printf+0x650>
    8000483c:	02d7f5bb          	remuw	a1,a5,a3
    80004840:	02059593          	slli	a1,a1,0x20
    80004844:	0205d593          	srli	a1,a1,0x20
    80004848:	00bd85b3          	add	a1,s11,a1
    8000484c:	0005c583          	lbu	a1,0(a1)
    80004850:	02d7d7bb          	divuw	a5,a5,a3
    80004854:	f8b40323          	sb	a1,-122(s0)
    80004858:	3eeaf863          	bgeu	s5,a4,80004c48 <__printf+0x5f0>
    8000485c:	02d7f5bb          	remuw	a1,a5,a3
    80004860:	02059593          	slli	a1,a1,0x20
    80004864:	0205d593          	srli	a1,a1,0x20
    80004868:	00bd85b3          	add	a1,s11,a1
    8000486c:	0005c583          	lbu	a1,0(a1)
    80004870:	02d7d7bb          	divuw	a5,a5,a3
    80004874:	f8b403a3          	sb	a1,-121(s0)
    80004878:	42eb7e63          	bgeu	s6,a4,80004cb4 <__printf+0x65c>
    8000487c:	02d7f5bb          	remuw	a1,a5,a3
    80004880:	02059593          	slli	a1,a1,0x20
    80004884:	0205d593          	srli	a1,a1,0x20
    80004888:	00bd85b3          	add	a1,s11,a1
    8000488c:	0005c583          	lbu	a1,0(a1)
    80004890:	02d7d7bb          	divuw	a5,a5,a3
    80004894:	f8b40423          	sb	a1,-120(s0)
    80004898:	42ebfc63          	bgeu	s7,a4,80004cd0 <__printf+0x678>
    8000489c:	02079793          	slli	a5,a5,0x20
    800048a0:	0207d793          	srli	a5,a5,0x20
    800048a4:	00fd8db3          	add	s11,s11,a5
    800048a8:	000dc703          	lbu	a4,0(s11)
    800048ac:	00a00793          	li	a5,10
    800048b0:	00900c93          	li	s9,9
    800048b4:	f8e404a3          	sb	a4,-119(s0)
    800048b8:	00065c63          	bgez	a2,800048d0 <__printf+0x278>
    800048bc:	f9040713          	addi	a4,s0,-112
    800048c0:	00f70733          	add	a4,a4,a5
    800048c4:	02d00693          	li	a3,45
    800048c8:	fed70823          	sb	a3,-16(a4)
    800048cc:	00078c93          	mv	s9,a5
    800048d0:	f8040793          	addi	a5,s0,-128
    800048d4:	01978cb3          	add	s9,a5,s9
    800048d8:	f7f40d13          	addi	s10,s0,-129
    800048dc:	000cc503          	lbu	a0,0(s9)
    800048e0:	fffc8c93          	addi	s9,s9,-1
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	b90080e7          	jalr	-1136(ra) # 80004474 <consputc>
    800048ec:	ffac98e3          	bne	s9,s10,800048dc <__printf+0x284>
    800048f0:	00094503          	lbu	a0,0(s2)
    800048f4:	e00514e3          	bnez	a0,800046fc <__printf+0xa4>
    800048f8:	1a0c1663          	bnez	s8,80004aa4 <__printf+0x44c>
    800048fc:	08813083          	ld	ra,136(sp)
    80004900:	08013403          	ld	s0,128(sp)
    80004904:	07813483          	ld	s1,120(sp)
    80004908:	07013903          	ld	s2,112(sp)
    8000490c:	06813983          	ld	s3,104(sp)
    80004910:	06013a03          	ld	s4,96(sp)
    80004914:	05813a83          	ld	s5,88(sp)
    80004918:	05013b03          	ld	s6,80(sp)
    8000491c:	04813b83          	ld	s7,72(sp)
    80004920:	04013c03          	ld	s8,64(sp)
    80004924:	03813c83          	ld	s9,56(sp)
    80004928:	03013d03          	ld	s10,48(sp)
    8000492c:	02813d83          	ld	s11,40(sp)
    80004930:	0d010113          	addi	sp,sp,208
    80004934:	00008067          	ret
    80004938:	07300713          	li	a4,115
    8000493c:	1ce78a63          	beq	a5,a4,80004b10 <__printf+0x4b8>
    80004940:	07800713          	li	a4,120
    80004944:	1ee79e63          	bne	a5,a4,80004b40 <__printf+0x4e8>
    80004948:	f7843783          	ld	a5,-136(s0)
    8000494c:	0007a703          	lw	a4,0(a5)
    80004950:	00878793          	addi	a5,a5,8
    80004954:	f6f43c23          	sd	a5,-136(s0)
    80004958:	28074263          	bltz	a4,80004bdc <__printf+0x584>
    8000495c:	00002d97          	auipc	s11,0x2
    80004960:	9b4d8d93          	addi	s11,s11,-1612 # 80006310 <digits>
    80004964:	00f77793          	andi	a5,a4,15
    80004968:	00fd87b3          	add	a5,s11,a5
    8000496c:	0007c683          	lbu	a3,0(a5)
    80004970:	00f00613          	li	a2,15
    80004974:	0007079b          	sext.w	a5,a4
    80004978:	f8d40023          	sb	a3,-128(s0)
    8000497c:	0047559b          	srliw	a1,a4,0x4
    80004980:	0047569b          	srliw	a3,a4,0x4
    80004984:	00000c93          	li	s9,0
    80004988:	0ee65063          	bge	a2,a4,80004a68 <__printf+0x410>
    8000498c:	00f6f693          	andi	a3,a3,15
    80004990:	00dd86b3          	add	a3,s11,a3
    80004994:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004998:	0087d79b          	srliw	a5,a5,0x8
    8000499c:	00100c93          	li	s9,1
    800049a0:	f8d400a3          	sb	a3,-127(s0)
    800049a4:	0cb67263          	bgeu	a2,a1,80004a68 <__printf+0x410>
    800049a8:	00f7f693          	andi	a3,a5,15
    800049ac:	00dd86b3          	add	a3,s11,a3
    800049b0:	0006c583          	lbu	a1,0(a3)
    800049b4:	00f00613          	li	a2,15
    800049b8:	0047d69b          	srliw	a3,a5,0x4
    800049bc:	f8b40123          	sb	a1,-126(s0)
    800049c0:	0047d593          	srli	a1,a5,0x4
    800049c4:	28f67e63          	bgeu	a2,a5,80004c60 <__printf+0x608>
    800049c8:	00f6f693          	andi	a3,a3,15
    800049cc:	00dd86b3          	add	a3,s11,a3
    800049d0:	0006c503          	lbu	a0,0(a3)
    800049d4:	0087d813          	srli	a6,a5,0x8
    800049d8:	0087d69b          	srliw	a3,a5,0x8
    800049dc:	f8a401a3          	sb	a0,-125(s0)
    800049e0:	28b67663          	bgeu	a2,a1,80004c6c <__printf+0x614>
    800049e4:	00f6f693          	andi	a3,a3,15
    800049e8:	00dd86b3          	add	a3,s11,a3
    800049ec:	0006c583          	lbu	a1,0(a3)
    800049f0:	00c7d513          	srli	a0,a5,0xc
    800049f4:	00c7d69b          	srliw	a3,a5,0xc
    800049f8:	f8b40223          	sb	a1,-124(s0)
    800049fc:	29067a63          	bgeu	a2,a6,80004c90 <__printf+0x638>
    80004a00:	00f6f693          	andi	a3,a3,15
    80004a04:	00dd86b3          	add	a3,s11,a3
    80004a08:	0006c583          	lbu	a1,0(a3)
    80004a0c:	0107d813          	srli	a6,a5,0x10
    80004a10:	0107d69b          	srliw	a3,a5,0x10
    80004a14:	f8b402a3          	sb	a1,-123(s0)
    80004a18:	28a67263          	bgeu	a2,a0,80004c9c <__printf+0x644>
    80004a1c:	00f6f693          	andi	a3,a3,15
    80004a20:	00dd86b3          	add	a3,s11,a3
    80004a24:	0006c683          	lbu	a3,0(a3)
    80004a28:	0147d79b          	srliw	a5,a5,0x14
    80004a2c:	f8d40323          	sb	a3,-122(s0)
    80004a30:	21067663          	bgeu	a2,a6,80004c3c <__printf+0x5e4>
    80004a34:	02079793          	slli	a5,a5,0x20
    80004a38:	0207d793          	srli	a5,a5,0x20
    80004a3c:	00fd8db3          	add	s11,s11,a5
    80004a40:	000dc683          	lbu	a3,0(s11)
    80004a44:	00800793          	li	a5,8
    80004a48:	00700c93          	li	s9,7
    80004a4c:	f8d403a3          	sb	a3,-121(s0)
    80004a50:	00075c63          	bgez	a4,80004a68 <__printf+0x410>
    80004a54:	f9040713          	addi	a4,s0,-112
    80004a58:	00f70733          	add	a4,a4,a5
    80004a5c:	02d00693          	li	a3,45
    80004a60:	fed70823          	sb	a3,-16(a4)
    80004a64:	00078c93          	mv	s9,a5
    80004a68:	f8040793          	addi	a5,s0,-128
    80004a6c:	01978cb3          	add	s9,a5,s9
    80004a70:	f7f40d13          	addi	s10,s0,-129
    80004a74:	000cc503          	lbu	a0,0(s9)
    80004a78:	fffc8c93          	addi	s9,s9,-1
    80004a7c:	00000097          	auipc	ra,0x0
    80004a80:	9f8080e7          	jalr	-1544(ra) # 80004474 <consputc>
    80004a84:	ff9d18e3          	bne	s10,s9,80004a74 <__printf+0x41c>
    80004a88:	0100006f          	j	80004a98 <__printf+0x440>
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	9e8080e7          	jalr	-1560(ra) # 80004474 <consputc>
    80004a94:	000c8493          	mv	s1,s9
    80004a98:	00094503          	lbu	a0,0(s2)
    80004a9c:	c60510e3          	bnez	a0,800046fc <__printf+0xa4>
    80004aa0:	e40c0ee3          	beqz	s8,800048fc <__printf+0x2a4>
    80004aa4:	00004517          	auipc	a0,0x4
    80004aa8:	63c50513          	addi	a0,a0,1596 # 800090e0 <pr>
    80004aac:	00001097          	auipc	ra,0x1
    80004ab0:	94c080e7          	jalr	-1716(ra) # 800053f8 <release>
    80004ab4:	e49ff06f          	j	800048fc <__printf+0x2a4>
    80004ab8:	f7843783          	ld	a5,-136(s0)
    80004abc:	03000513          	li	a0,48
    80004ac0:	01000d13          	li	s10,16
    80004ac4:	00878713          	addi	a4,a5,8
    80004ac8:	0007bc83          	ld	s9,0(a5)
    80004acc:	f6e43c23          	sd	a4,-136(s0)
    80004ad0:	00000097          	auipc	ra,0x0
    80004ad4:	9a4080e7          	jalr	-1628(ra) # 80004474 <consputc>
    80004ad8:	07800513          	li	a0,120
    80004adc:	00000097          	auipc	ra,0x0
    80004ae0:	998080e7          	jalr	-1640(ra) # 80004474 <consputc>
    80004ae4:	00002d97          	auipc	s11,0x2
    80004ae8:	82cd8d93          	addi	s11,s11,-2004 # 80006310 <digits>
    80004aec:	03ccd793          	srli	a5,s9,0x3c
    80004af0:	00fd87b3          	add	a5,s11,a5
    80004af4:	0007c503          	lbu	a0,0(a5)
    80004af8:	fffd0d1b          	addiw	s10,s10,-1
    80004afc:	004c9c93          	slli	s9,s9,0x4
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	974080e7          	jalr	-1676(ra) # 80004474 <consputc>
    80004b08:	fe0d12e3          	bnez	s10,80004aec <__printf+0x494>
    80004b0c:	f8dff06f          	j	80004a98 <__printf+0x440>
    80004b10:	f7843783          	ld	a5,-136(s0)
    80004b14:	0007bc83          	ld	s9,0(a5)
    80004b18:	00878793          	addi	a5,a5,8
    80004b1c:	f6f43c23          	sd	a5,-136(s0)
    80004b20:	000c9a63          	bnez	s9,80004b34 <__printf+0x4dc>
    80004b24:	1080006f          	j	80004c2c <__printf+0x5d4>
    80004b28:	001c8c93          	addi	s9,s9,1
    80004b2c:	00000097          	auipc	ra,0x0
    80004b30:	948080e7          	jalr	-1720(ra) # 80004474 <consputc>
    80004b34:	000cc503          	lbu	a0,0(s9)
    80004b38:	fe0518e3          	bnez	a0,80004b28 <__printf+0x4d0>
    80004b3c:	f5dff06f          	j	80004a98 <__printf+0x440>
    80004b40:	02500513          	li	a0,37
    80004b44:	00000097          	auipc	ra,0x0
    80004b48:	930080e7          	jalr	-1744(ra) # 80004474 <consputc>
    80004b4c:	000c8513          	mv	a0,s9
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	924080e7          	jalr	-1756(ra) # 80004474 <consputc>
    80004b58:	f41ff06f          	j	80004a98 <__printf+0x440>
    80004b5c:	02500513          	li	a0,37
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	914080e7          	jalr	-1772(ra) # 80004474 <consputc>
    80004b68:	f31ff06f          	j	80004a98 <__printf+0x440>
    80004b6c:	00030513          	mv	a0,t1
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	7bc080e7          	jalr	1980(ra) # 8000532c <acquire>
    80004b78:	b4dff06f          	j	800046c4 <__printf+0x6c>
    80004b7c:	40c0053b          	negw	a0,a2
    80004b80:	00a00713          	li	a4,10
    80004b84:	02e576bb          	remuw	a3,a0,a4
    80004b88:	00001d97          	auipc	s11,0x1
    80004b8c:	788d8d93          	addi	s11,s11,1928 # 80006310 <digits>
    80004b90:	ff700593          	li	a1,-9
    80004b94:	02069693          	slli	a3,a3,0x20
    80004b98:	0206d693          	srli	a3,a3,0x20
    80004b9c:	00dd86b3          	add	a3,s11,a3
    80004ba0:	0006c683          	lbu	a3,0(a3)
    80004ba4:	02e557bb          	divuw	a5,a0,a4
    80004ba8:	f8d40023          	sb	a3,-128(s0)
    80004bac:	10b65e63          	bge	a2,a1,80004cc8 <__printf+0x670>
    80004bb0:	06300593          	li	a1,99
    80004bb4:	02e7f6bb          	remuw	a3,a5,a4
    80004bb8:	02069693          	slli	a3,a3,0x20
    80004bbc:	0206d693          	srli	a3,a3,0x20
    80004bc0:	00dd86b3          	add	a3,s11,a3
    80004bc4:	0006c683          	lbu	a3,0(a3)
    80004bc8:	02e7d73b          	divuw	a4,a5,a4
    80004bcc:	00200793          	li	a5,2
    80004bd0:	f8d400a3          	sb	a3,-127(s0)
    80004bd4:	bca5ece3          	bltu	a1,a0,800047ac <__printf+0x154>
    80004bd8:	ce5ff06f          	j	800048bc <__printf+0x264>
    80004bdc:	40e007bb          	negw	a5,a4
    80004be0:	00001d97          	auipc	s11,0x1
    80004be4:	730d8d93          	addi	s11,s11,1840 # 80006310 <digits>
    80004be8:	00f7f693          	andi	a3,a5,15
    80004bec:	00dd86b3          	add	a3,s11,a3
    80004bf0:	0006c583          	lbu	a1,0(a3)
    80004bf4:	ff100613          	li	a2,-15
    80004bf8:	0047d69b          	srliw	a3,a5,0x4
    80004bfc:	f8b40023          	sb	a1,-128(s0)
    80004c00:	0047d59b          	srliw	a1,a5,0x4
    80004c04:	0ac75e63          	bge	a4,a2,80004cc0 <__printf+0x668>
    80004c08:	00f6f693          	andi	a3,a3,15
    80004c0c:	00dd86b3          	add	a3,s11,a3
    80004c10:	0006c603          	lbu	a2,0(a3)
    80004c14:	00f00693          	li	a3,15
    80004c18:	0087d79b          	srliw	a5,a5,0x8
    80004c1c:	f8c400a3          	sb	a2,-127(s0)
    80004c20:	d8b6e4e3          	bltu	a3,a1,800049a8 <__printf+0x350>
    80004c24:	00200793          	li	a5,2
    80004c28:	e2dff06f          	j	80004a54 <__printf+0x3fc>
    80004c2c:	00001c97          	auipc	s9,0x1
    80004c30:	6c4c8c93          	addi	s9,s9,1732 # 800062f0 <_ZZ14__print_uint64mE6digits+0x170>
    80004c34:	02800513          	li	a0,40
    80004c38:	ef1ff06f          	j	80004b28 <__printf+0x4d0>
    80004c3c:	00700793          	li	a5,7
    80004c40:	00600c93          	li	s9,6
    80004c44:	e0dff06f          	j	80004a50 <__printf+0x3f8>
    80004c48:	00700793          	li	a5,7
    80004c4c:	00600c93          	li	s9,6
    80004c50:	c69ff06f          	j	800048b8 <__printf+0x260>
    80004c54:	00300793          	li	a5,3
    80004c58:	00200c93          	li	s9,2
    80004c5c:	c5dff06f          	j	800048b8 <__printf+0x260>
    80004c60:	00300793          	li	a5,3
    80004c64:	00200c93          	li	s9,2
    80004c68:	de9ff06f          	j	80004a50 <__printf+0x3f8>
    80004c6c:	00400793          	li	a5,4
    80004c70:	00300c93          	li	s9,3
    80004c74:	dddff06f          	j	80004a50 <__printf+0x3f8>
    80004c78:	00400793          	li	a5,4
    80004c7c:	00300c93          	li	s9,3
    80004c80:	c39ff06f          	j	800048b8 <__printf+0x260>
    80004c84:	00500793          	li	a5,5
    80004c88:	00400c93          	li	s9,4
    80004c8c:	c2dff06f          	j	800048b8 <__printf+0x260>
    80004c90:	00500793          	li	a5,5
    80004c94:	00400c93          	li	s9,4
    80004c98:	db9ff06f          	j	80004a50 <__printf+0x3f8>
    80004c9c:	00600793          	li	a5,6
    80004ca0:	00500c93          	li	s9,5
    80004ca4:	dadff06f          	j	80004a50 <__printf+0x3f8>
    80004ca8:	00600793          	li	a5,6
    80004cac:	00500c93          	li	s9,5
    80004cb0:	c09ff06f          	j	800048b8 <__printf+0x260>
    80004cb4:	00800793          	li	a5,8
    80004cb8:	00700c93          	li	s9,7
    80004cbc:	bfdff06f          	j	800048b8 <__printf+0x260>
    80004cc0:	00100793          	li	a5,1
    80004cc4:	d91ff06f          	j	80004a54 <__printf+0x3fc>
    80004cc8:	00100793          	li	a5,1
    80004ccc:	bf1ff06f          	j	800048bc <__printf+0x264>
    80004cd0:	00900793          	li	a5,9
    80004cd4:	00800c93          	li	s9,8
    80004cd8:	be1ff06f          	j	800048b8 <__printf+0x260>
    80004cdc:	00001517          	auipc	a0,0x1
    80004ce0:	61c50513          	addi	a0,a0,1564 # 800062f8 <_ZZ14__print_uint64mE6digits+0x178>
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	918080e7          	jalr	-1768(ra) # 800045fc <panic>

0000000080004cec <printfinit>:
    80004cec:	fe010113          	addi	sp,sp,-32
    80004cf0:	00813823          	sd	s0,16(sp)
    80004cf4:	00913423          	sd	s1,8(sp)
    80004cf8:	00113c23          	sd	ra,24(sp)
    80004cfc:	02010413          	addi	s0,sp,32
    80004d00:	00004497          	auipc	s1,0x4
    80004d04:	3e048493          	addi	s1,s1,992 # 800090e0 <pr>
    80004d08:	00048513          	mv	a0,s1
    80004d0c:	00001597          	auipc	a1,0x1
    80004d10:	5fc58593          	addi	a1,a1,1532 # 80006308 <_ZZ14__print_uint64mE6digits+0x188>
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	5f4080e7          	jalr	1524(ra) # 80005308 <initlock>
    80004d1c:	01813083          	ld	ra,24(sp)
    80004d20:	01013403          	ld	s0,16(sp)
    80004d24:	0004ac23          	sw	zero,24(s1)
    80004d28:	00813483          	ld	s1,8(sp)
    80004d2c:	02010113          	addi	sp,sp,32
    80004d30:	00008067          	ret

0000000080004d34 <uartinit>:
    80004d34:	ff010113          	addi	sp,sp,-16
    80004d38:	00813423          	sd	s0,8(sp)
    80004d3c:	01010413          	addi	s0,sp,16
    80004d40:	100007b7          	lui	a5,0x10000
    80004d44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004d48:	f8000713          	li	a4,-128
    80004d4c:	00e781a3          	sb	a4,3(a5)
    80004d50:	00300713          	li	a4,3
    80004d54:	00e78023          	sb	a4,0(a5)
    80004d58:	000780a3          	sb	zero,1(a5)
    80004d5c:	00e781a3          	sb	a4,3(a5)
    80004d60:	00700693          	li	a3,7
    80004d64:	00d78123          	sb	a3,2(a5)
    80004d68:	00e780a3          	sb	a4,1(a5)
    80004d6c:	00813403          	ld	s0,8(sp)
    80004d70:	01010113          	addi	sp,sp,16
    80004d74:	00008067          	ret

0000000080004d78 <uartputc>:
    80004d78:	00003797          	auipc	a5,0x3
    80004d7c:	8607a783          	lw	a5,-1952(a5) # 800075d8 <panicked>
    80004d80:	00078463          	beqz	a5,80004d88 <uartputc+0x10>
    80004d84:	0000006f          	j	80004d84 <uartputc+0xc>
    80004d88:	fd010113          	addi	sp,sp,-48
    80004d8c:	02813023          	sd	s0,32(sp)
    80004d90:	00913c23          	sd	s1,24(sp)
    80004d94:	01213823          	sd	s2,16(sp)
    80004d98:	01313423          	sd	s3,8(sp)
    80004d9c:	02113423          	sd	ra,40(sp)
    80004da0:	03010413          	addi	s0,sp,48
    80004da4:	00003917          	auipc	s2,0x3
    80004da8:	83c90913          	addi	s2,s2,-1988 # 800075e0 <uart_tx_r>
    80004dac:	00093783          	ld	a5,0(s2)
    80004db0:	00003497          	auipc	s1,0x3
    80004db4:	83848493          	addi	s1,s1,-1992 # 800075e8 <uart_tx_w>
    80004db8:	0004b703          	ld	a4,0(s1)
    80004dbc:	02078693          	addi	a3,a5,32
    80004dc0:	00050993          	mv	s3,a0
    80004dc4:	02e69c63          	bne	a3,a4,80004dfc <uartputc+0x84>
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	834080e7          	jalr	-1996(ra) # 800055fc <push_on>
    80004dd0:	00093783          	ld	a5,0(s2)
    80004dd4:	0004b703          	ld	a4,0(s1)
    80004dd8:	02078793          	addi	a5,a5,32
    80004ddc:	00e79463          	bne	a5,a4,80004de4 <uartputc+0x6c>
    80004de0:	0000006f          	j	80004de0 <uartputc+0x68>
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	88c080e7          	jalr	-1908(ra) # 80005670 <pop_on>
    80004dec:	00093783          	ld	a5,0(s2)
    80004df0:	0004b703          	ld	a4,0(s1)
    80004df4:	02078693          	addi	a3,a5,32
    80004df8:	fce688e3          	beq	a3,a4,80004dc8 <uartputc+0x50>
    80004dfc:	01f77693          	andi	a3,a4,31
    80004e00:	00004597          	auipc	a1,0x4
    80004e04:	30058593          	addi	a1,a1,768 # 80009100 <uart_tx_buf>
    80004e08:	00d586b3          	add	a3,a1,a3
    80004e0c:	00170713          	addi	a4,a4,1
    80004e10:	01368023          	sb	s3,0(a3)
    80004e14:	00e4b023          	sd	a4,0(s1)
    80004e18:	10000637          	lui	a2,0x10000
    80004e1c:	02f71063          	bne	a4,a5,80004e3c <uartputc+0xc4>
    80004e20:	0340006f          	j	80004e54 <uartputc+0xdc>
    80004e24:	00074703          	lbu	a4,0(a4)
    80004e28:	00f93023          	sd	a5,0(s2)
    80004e2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004e30:	00093783          	ld	a5,0(s2)
    80004e34:	0004b703          	ld	a4,0(s1)
    80004e38:	00f70e63          	beq	a4,a5,80004e54 <uartputc+0xdc>
    80004e3c:	00564683          	lbu	a3,5(a2)
    80004e40:	01f7f713          	andi	a4,a5,31
    80004e44:	00e58733          	add	a4,a1,a4
    80004e48:	0206f693          	andi	a3,a3,32
    80004e4c:	00178793          	addi	a5,a5,1
    80004e50:	fc069ae3          	bnez	a3,80004e24 <uartputc+0xac>
    80004e54:	02813083          	ld	ra,40(sp)
    80004e58:	02013403          	ld	s0,32(sp)
    80004e5c:	01813483          	ld	s1,24(sp)
    80004e60:	01013903          	ld	s2,16(sp)
    80004e64:	00813983          	ld	s3,8(sp)
    80004e68:	03010113          	addi	sp,sp,48
    80004e6c:	00008067          	ret

0000000080004e70 <uartputc_sync>:
    80004e70:	ff010113          	addi	sp,sp,-16
    80004e74:	00813423          	sd	s0,8(sp)
    80004e78:	01010413          	addi	s0,sp,16
    80004e7c:	00002717          	auipc	a4,0x2
    80004e80:	75c72703          	lw	a4,1884(a4) # 800075d8 <panicked>
    80004e84:	02071663          	bnez	a4,80004eb0 <uartputc_sync+0x40>
    80004e88:	00050793          	mv	a5,a0
    80004e8c:	100006b7          	lui	a3,0x10000
    80004e90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004e94:	02077713          	andi	a4,a4,32
    80004e98:	fe070ce3          	beqz	a4,80004e90 <uartputc_sync+0x20>
    80004e9c:	0ff7f793          	andi	a5,a5,255
    80004ea0:	00f68023          	sb	a5,0(a3)
    80004ea4:	00813403          	ld	s0,8(sp)
    80004ea8:	01010113          	addi	sp,sp,16
    80004eac:	00008067          	ret
    80004eb0:	0000006f          	j	80004eb0 <uartputc_sync+0x40>

0000000080004eb4 <uartstart>:
    80004eb4:	ff010113          	addi	sp,sp,-16
    80004eb8:	00813423          	sd	s0,8(sp)
    80004ebc:	01010413          	addi	s0,sp,16
    80004ec0:	00002617          	auipc	a2,0x2
    80004ec4:	72060613          	addi	a2,a2,1824 # 800075e0 <uart_tx_r>
    80004ec8:	00002517          	auipc	a0,0x2
    80004ecc:	72050513          	addi	a0,a0,1824 # 800075e8 <uart_tx_w>
    80004ed0:	00063783          	ld	a5,0(a2)
    80004ed4:	00053703          	ld	a4,0(a0)
    80004ed8:	04f70263          	beq	a4,a5,80004f1c <uartstart+0x68>
    80004edc:	100005b7          	lui	a1,0x10000
    80004ee0:	00004817          	auipc	a6,0x4
    80004ee4:	22080813          	addi	a6,a6,544 # 80009100 <uart_tx_buf>
    80004ee8:	01c0006f          	j	80004f04 <uartstart+0x50>
    80004eec:	0006c703          	lbu	a4,0(a3)
    80004ef0:	00f63023          	sd	a5,0(a2)
    80004ef4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ef8:	00063783          	ld	a5,0(a2)
    80004efc:	00053703          	ld	a4,0(a0)
    80004f00:	00f70e63          	beq	a4,a5,80004f1c <uartstart+0x68>
    80004f04:	01f7f713          	andi	a4,a5,31
    80004f08:	00e806b3          	add	a3,a6,a4
    80004f0c:	0055c703          	lbu	a4,5(a1)
    80004f10:	00178793          	addi	a5,a5,1
    80004f14:	02077713          	andi	a4,a4,32
    80004f18:	fc071ae3          	bnez	a4,80004eec <uartstart+0x38>
    80004f1c:	00813403          	ld	s0,8(sp)
    80004f20:	01010113          	addi	sp,sp,16
    80004f24:	00008067          	ret

0000000080004f28 <uartgetc>:
    80004f28:	ff010113          	addi	sp,sp,-16
    80004f2c:	00813423          	sd	s0,8(sp)
    80004f30:	01010413          	addi	s0,sp,16
    80004f34:	10000737          	lui	a4,0x10000
    80004f38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004f3c:	0017f793          	andi	a5,a5,1
    80004f40:	00078c63          	beqz	a5,80004f58 <uartgetc+0x30>
    80004f44:	00074503          	lbu	a0,0(a4)
    80004f48:	0ff57513          	andi	a0,a0,255
    80004f4c:	00813403          	ld	s0,8(sp)
    80004f50:	01010113          	addi	sp,sp,16
    80004f54:	00008067          	ret
    80004f58:	fff00513          	li	a0,-1
    80004f5c:	ff1ff06f          	j	80004f4c <uartgetc+0x24>

0000000080004f60 <uartintr>:
    80004f60:	100007b7          	lui	a5,0x10000
    80004f64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004f68:	0017f793          	andi	a5,a5,1
    80004f6c:	0a078463          	beqz	a5,80005014 <uartintr+0xb4>
    80004f70:	fe010113          	addi	sp,sp,-32
    80004f74:	00813823          	sd	s0,16(sp)
    80004f78:	00913423          	sd	s1,8(sp)
    80004f7c:	00113c23          	sd	ra,24(sp)
    80004f80:	02010413          	addi	s0,sp,32
    80004f84:	100004b7          	lui	s1,0x10000
    80004f88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004f8c:	0ff57513          	andi	a0,a0,255
    80004f90:	fffff097          	auipc	ra,0xfffff
    80004f94:	534080e7          	jalr	1332(ra) # 800044c4 <consoleintr>
    80004f98:	0054c783          	lbu	a5,5(s1)
    80004f9c:	0017f793          	andi	a5,a5,1
    80004fa0:	fe0794e3          	bnez	a5,80004f88 <uartintr+0x28>
    80004fa4:	00002617          	auipc	a2,0x2
    80004fa8:	63c60613          	addi	a2,a2,1596 # 800075e0 <uart_tx_r>
    80004fac:	00002517          	auipc	a0,0x2
    80004fb0:	63c50513          	addi	a0,a0,1596 # 800075e8 <uart_tx_w>
    80004fb4:	00063783          	ld	a5,0(a2)
    80004fb8:	00053703          	ld	a4,0(a0)
    80004fbc:	04f70263          	beq	a4,a5,80005000 <uartintr+0xa0>
    80004fc0:	100005b7          	lui	a1,0x10000
    80004fc4:	00004817          	auipc	a6,0x4
    80004fc8:	13c80813          	addi	a6,a6,316 # 80009100 <uart_tx_buf>
    80004fcc:	01c0006f          	j	80004fe8 <uartintr+0x88>
    80004fd0:	0006c703          	lbu	a4,0(a3)
    80004fd4:	00f63023          	sd	a5,0(a2)
    80004fd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004fdc:	00063783          	ld	a5,0(a2)
    80004fe0:	00053703          	ld	a4,0(a0)
    80004fe4:	00f70e63          	beq	a4,a5,80005000 <uartintr+0xa0>
    80004fe8:	01f7f713          	andi	a4,a5,31
    80004fec:	00e806b3          	add	a3,a6,a4
    80004ff0:	0055c703          	lbu	a4,5(a1)
    80004ff4:	00178793          	addi	a5,a5,1
    80004ff8:	02077713          	andi	a4,a4,32
    80004ffc:	fc071ae3          	bnez	a4,80004fd0 <uartintr+0x70>
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret
    80005014:	00002617          	auipc	a2,0x2
    80005018:	5cc60613          	addi	a2,a2,1484 # 800075e0 <uart_tx_r>
    8000501c:	00002517          	auipc	a0,0x2
    80005020:	5cc50513          	addi	a0,a0,1484 # 800075e8 <uart_tx_w>
    80005024:	00063783          	ld	a5,0(a2)
    80005028:	00053703          	ld	a4,0(a0)
    8000502c:	04f70263          	beq	a4,a5,80005070 <uartintr+0x110>
    80005030:	100005b7          	lui	a1,0x10000
    80005034:	00004817          	auipc	a6,0x4
    80005038:	0cc80813          	addi	a6,a6,204 # 80009100 <uart_tx_buf>
    8000503c:	01c0006f          	j	80005058 <uartintr+0xf8>
    80005040:	0006c703          	lbu	a4,0(a3)
    80005044:	00f63023          	sd	a5,0(a2)
    80005048:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000504c:	00063783          	ld	a5,0(a2)
    80005050:	00053703          	ld	a4,0(a0)
    80005054:	02f70063          	beq	a4,a5,80005074 <uartintr+0x114>
    80005058:	01f7f713          	andi	a4,a5,31
    8000505c:	00e806b3          	add	a3,a6,a4
    80005060:	0055c703          	lbu	a4,5(a1)
    80005064:	00178793          	addi	a5,a5,1
    80005068:	02077713          	andi	a4,a4,32
    8000506c:	fc071ae3          	bnez	a4,80005040 <uartintr+0xe0>
    80005070:	00008067          	ret
    80005074:	00008067          	ret

0000000080005078 <kinit>:
    80005078:	fc010113          	addi	sp,sp,-64
    8000507c:	02913423          	sd	s1,40(sp)
    80005080:	fffff7b7          	lui	a5,0xfffff
    80005084:	00005497          	auipc	s1,0x5
    80005088:	09b48493          	addi	s1,s1,155 # 8000a11f <end+0xfff>
    8000508c:	02813823          	sd	s0,48(sp)
    80005090:	01313c23          	sd	s3,24(sp)
    80005094:	00f4f4b3          	and	s1,s1,a5
    80005098:	02113c23          	sd	ra,56(sp)
    8000509c:	03213023          	sd	s2,32(sp)
    800050a0:	01413823          	sd	s4,16(sp)
    800050a4:	01513423          	sd	s5,8(sp)
    800050a8:	04010413          	addi	s0,sp,64
    800050ac:	000017b7          	lui	a5,0x1
    800050b0:	01100993          	li	s3,17
    800050b4:	00f487b3          	add	a5,s1,a5
    800050b8:	01b99993          	slli	s3,s3,0x1b
    800050bc:	06f9e063          	bltu	s3,a5,8000511c <kinit+0xa4>
    800050c0:	00004a97          	auipc	s5,0x4
    800050c4:	060a8a93          	addi	s5,s5,96 # 80009120 <end>
    800050c8:	0754ec63          	bltu	s1,s5,80005140 <kinit+0xc8>
    800050cc:	0734fa63          	bgeu	s1,s3,80005140 <kinit+0xc8>
    800050d0:	00088a37          	lui	s4,0x88
    800050d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800050d8:	00002917          	auipc	s2,0x2
    800050dc:	51890913          	addi	s2,s2,1304 # 800075f0 <kmem>
    800050e0:	00ca1a13          	slli	s4,s4,0xc
    800050e4:	0140006f          	j	800050f8 <kinit+0x80>
    800050e8:	000017b7          	lui	a5,0x1
    800050ec:	00f484b3          	add	s1,s1,a5
    800050f0:	0554e863          	bltu	s1,s5,80005140 <kinit+0xc8>
    800050f4:	0534f663          	bgeu	s1,s3,80005140 <kinit+0xc8>
    800050f8:	00001637          	lui	a2,0x1
    800050fc:	00100593          	li	a1,1
    80005100:	00048513          	mv	a0,s1
    80005104:	00000097          	auipc	ra,0x0
    80005108:	5e4080e7          	jalr	1508(ra) # 800056e8 <__memset>
    8000510c:	00093783          	ld	a5,0(s2)
    80005110:	00f4b023          	sd	a5,0(s1)
    80005114:	00993023          	sd	s1,0(s2)
    80005118:	fd4498e3          	bne	s1,s4,800050e8 <kinit+0x70>
    8000511c:	03813083          	ld	ra,56(sp)
    80005120:	03013403          	ld	s0,48(sp)
    80005124:	02813483          	ld	s1,40(sp)
    80005128:	02013903          	ld	s2,32(sp)
    8000512c:	01813983          	ld	s3,24(sp)
    80005130:	01013a03          	ld	s4,16(sp)
    80005134:	00813a83          	ld	s5,8(sp)
    80005138:	04010113          	addi	sp,sp,64
    8000513c:	00008067          	ret
    80005140:	00001517          	auipc	a0,0x1
    80005144:	1e850513          	addi	a0,a0,488 # 80006328 <digits+0x18>
    80005148:	fffff097          	auipc	ra,0xfffff
    8000514c:	4b4080e7          	jalr	1204(ra) # 800045fc <panic>

0000000080005150 <freerange>:
    80005150:	fc010113          	addi	sp,sp,-64
    80005154:	000017b7          	lui	a5,0x1
    80005158:	02913423          	sd	s1,40(sp)
    8000515c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005160:	009504b3          	add	s1,a0,s1
    80005164:	fffff537          	lui	a0,0xfffff
    80005168:	02813823          	sd	s0,48(sp)
    8000516c:	02113c23          	sd	ra,56(sp)
    80005170:	03213023          	sd	s2,32(sp)
    80005174:	01313c23          	sd	s3,24(sp)
    80005178:	01413823          	sd	s4,16(sp)
    8000517c:	01513423          	sd	s5,8(sp)
    80005180:	01613023          	sd	s6,0(sp)
    80005184:	04010413          	addi	s0,sp,64
    80005188:	00a4f4b3          	and	s1,s1,a0
    8000518c:	00f487b3          	add	a5,s1,a5
    80005190:	06f5e463          	bltu	a1,a5,800051f8 <freerange+0xa8>
    80005194:	00004a97          	auipc	s5,0x4
    80005198:	f8ca8a93          	addi	s5,s5,-116 # 80009120 <end>
    8000519c:	0954e263          	bltu	s1,s5,80005220 <freerange+0xd0>
    800051a0:	01100993          	li	s3,17
    800051a4:	01b99993          	slli	s3,s3,0x1b
    800051a8:	0734fc63          	bgeu	s1,s3,80005220 <freerange+0xd0>
    800051ac:	00058a13          	mv	s4,a1
    800051b0:	00002917          	auipc	s2,0x2
    800051b4:	44090913          	addi	s2,s2,1088 # 800075f0 <kmem>
    800051b8:	00002b37          	lui	s6,0x2
    800051bc:	0140006f          	j	800051d0 <freerange+0x80>
    800051c0:	000017b7          	lui	a5,0x1
    800051c4:	00f484b3          	add	s1,s1,a5
    800051c8:	0554ec63          	bltu	s1,s5,80005220 <freerange+0xd0>
    800051cc:	0534fa63          	bgeu	s1,s3,80005220 <freerange+0xd0>
    800051d0:	00001637          	lui	a2,0x1
    800051d4:	00100593          	li	a1,1
    800051d8:	00048513          	mv	a0,s1
    800051dc:	00000097          	auipc	ra,0x0
    800051e0:	50c080e7          	jalr	1292(ra) # 800056e8 <__memset>
    800051e4:	00093703          	ld	a4,0(s2)
    800051e8:	016487b3          	add	a5,s1,s6
    800051ec:	00e4b023          	sd	a4,0(s1)
    800051f0:	00993023          	sd	s1,0(s2)
    800051f4:	fcfa76e3          	bgeu	s4,a5,800051c0 <freerange+0x70>
    800051f8:	03813083          	ld	ra,56(sp)
    800051fc:	03013403          	ld	s0,48(sp)
    80005200:	02813483          	ld	s1,40(sp)
    80005204:	02013903          	ld	s2,32(sp)
    80005208:	01813983          	ld	s3,24(sp)
    8000520c:	01013a03          	ld	s4,16(sp)
    80005210:	00813a83          	ld	s5,8(sp)
    80005214:	00013b03          	ld	s6,0(sp)
    80005218:	04010113          	addi	sp,sp,64
    8000521c:	00008067          	ret
    80005220:	00001517          	auipc	a0,0x1
    80005224:	10850513          	addi	a0,a0,264 # 80006328 <digits+0x18>
    80005228:	fffff097          	auipc	ra,0xfffff
    8000522c:	3d4080e7          	jalr	980(ra) # 800045fc <panic>

0000000080005230 <kfree>:
    80005230:	fe010113          	addi	sp,sp,-32
    80005234:	00813823          	sd	s0,16(sp)
    80005238:	00113c23          	sd	ra,24(sp)
    8000523c:	00913423          	sd	s1,8(sp)
    80005240:	02010413          	addi	s0,sp,32
    80005244:	03451793          	slli	a5,a0,0x34
    80005248:	04079c63          	bnez	a5,800052a0 <kfree+0x70>
    8000524c:	00004797          	auipc	a5,0x4
    80005250:	ed478793          	addi	a5,a5,-300 # 80009120 <end>
    80005254:	00050493          	mv	s1,a0
    80005258:	04f56463          	bltu	a0,a5,800052a0 <kfree+0x70>
    8000525c:	01100793          	li	a5,17
    80005260:	01b79793          	slli	a5,a5,0x1b
    80005264:	02f57e63          	bgeu	a0,a5,800052a0 <kfree+0x70>
    80005268:	00001637          	lui	a2,0x1
    8000526c:	00100593          	li	a1,1
    80005270:	00000097          	auipc	ra,0x0
    80005274:	478080e7          	jalr	1144(ra) # 800056e8 <__memset>
    80005278:	00002797          	auipc	a5,0x2
    8000527c:	37878793          	addi	a5,a5,888 # 800075f0 <kmem>
    80005280:	0007b703          	ld	a4,0(a5)
    80005284:	01813083          	ld	ra,24(sp)
    80005288:	01013403          	ld	s0,16(sp)
    8000528c:	00e4b023          	sd	a4,0(s1)
    80005290:	0097b023          	sd	s1,0(a5)
    80005294:	00813483          	ld	s1,8(sp)
    80005298:	02010113          	addi	sp,sp,32
    8000529c:	00008067          	ret
    800052a0:	00001517          	auipc	a0,0x1
    800052a4:	08850513          	addi	a0,a0,136 # 80006328 <digits+0x18>
    800052a8:	fffff097          	auipc	ra,0xfffff
    800052ac:	354080e7          	jalr	852(ra) # 800045fc <panic>

00000000800052b0 <kalloc>:
    800052b0:	fe010113          	addi	sp,sp,-32
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	00113c23          	sd	ra,24(sp)
    800052c0:	02010413          	addi	s0,sp,32
    800052c4:	00002797          	auipc	a5,0x2
    800052c8:	32c78793          	addi	a5,a5,812 # 800075f0 <kmem>
    800052cc:	0007b483          	ld	s1,0(a5)
    800052d0:	02048063          	beqz	s1,800052f0 <kalloc+0x40>
    800052d4:	0004b703          	ld	a4,0(s1)
    800052d8:	00001637          	lui	a2,0x1
    800052dc:	00500593          	li	a1,5
    800052e0:	00048513          	mv	a0,s1
    800052e4:	00e7b023          	sd	a4,0(a5)
    800052e8:	00000097          	auipc	ra,0x0
    800052ec:	400080e7          	jalr	1024(ra) # 800056e8 <__memset>
    800052f0:	01813083          	ld	ra,24(sp)
    800052f4:	01013403          	ld	s0,16(sp)
    800052f8:	00048513          	mv	a0,s1
    800052fc:	00813483          	ld	s1,8(sp)
    80005300:	02010113          	addi	sp,sp,32
    80005304:	00008067          	ret

0000000080005308 <initlock>:
    80005308:	ff010113          	addi	sp,sp,-16
    8000530c:	00813423          	sd	s0,8(sp)
    80005310:	01010413          	addi	s0,sp,16
    80005314:	00813403          	ld	s0,8(sp)
    80005318:	00b53423          	sd	a1,8(a0)
    8000531c:	00052023          	sw	zero,0(a0)
    80005320:	00053823          	sd	zero,16(a0)
    80005324:	01010113          	addi	sp,sp,16
    80005328:	00008067          	ret

000000008000532c <acquire>:
    8000532c:	fe010113          	addi	sp,sp,-32
    80005330:	00813823          	sd	s0,16(sp)
    80005334:	00913423          	sd	s1,8(sp)
    80005338:	00113c23          	sd	ra,24(sp)
    8000533c:	01213023          	sd	s2,0(sp)
    80005340:	02010413          	addi	s0,sp,32
    80005344:	00050493          	mv	s1,a0
    80005348:	10002973          	csrr	s2,sstatus
    8000534c:	100027f3          	csrr	a5,sstatus
    80005350:	ffd7f793          	andi	a5,a5,-3
    80005354:	10079073          	csrw	sstatus,a5
    80005358:	fffff097          	auipc	ra,0xfffff
    8000535c:	8e0080e7          	jalr	-1824(ra) # 80003c38 <mycpu>
    80005360:	07852783          	lw	a5,120(a0)
    80005364:	06078e63          	beqz	a5,800053e0 <acquire+0xb4>
    80005368:	fffff097          	auipc	ra,0xfffff
    8000536c:	8d0080e7          	jalr	-1840(ra) # 80003c38 <mycpu>
    80005370:	07852783          	lw	a5,120(a0)
    80005374:	0004a703          	lw	a4,0(s1)
    80005378:	0017879b          	addiw	a5,a5,1
    8000537c:	06f52c23          	sw	a5,120(a0)
    80005380:	04071063          	bnez	a4,800053c0 <acquire+0x94>
    80005384:	00100713          	li	a4,1
    80005388:	00070793          	mv	a5,a4
    8000538c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005390:	0007879b          	sext.w	a5,a5
    80005394:	fe079ae3          	bnez	a5,80005388 <acquire+0x5c>
    80005398:	0ff0000f          	fence
    8000539c:	fffff097          	auipc	ra,0xfffff
    800053a0:	89c080e7          	jalr	-1892(ra) # 80003c38 <mycpu>
    800053a4:	01813083          	ld	ra,24(sp)
    800053a8:	01013403          	ld	s0,16(sp)
    800053ac:	00a4b823          	sd	a0,16(s1)
    800053b0:	00013903          	ld	s2,0(sp)
    800053b4:	00813483          	ld	s1,8(sp)
    800053b8:	02010113          	addi	sp,sp,32
    800053bc:	00008067          	ret
    800053c0:	0104b903          	ld	s2,16(s1)
    800053c4:	fffff097          	auipc	ra,0xfffff
    800053c8:	874080e7          	jalr	-1932(ra) # 80003c38 <mycpu>
    800053cc:	faa91ce3          	bne	s2,a0,80005384 <acquire+0x58>
    800053d0:	00001517          	auipc	a0,0x1
    800053d4:	f6050513          	addi	a0,a0,-160 # 80006330 <digits+0x20>
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	224080e7          	jalr	548(ra) # 800045fc <panic>
    800053e0:	00195913          	srli	s2,s2,0x1
    800053e4:	fffff097          	auipc	ra,0xfffff
    800053e8:	854080e7          	jalr	-1964(ra) # 80003c38 <mycpu>
    800053ec:	00197913          	andi	s2,s2,1
    800053f0:	07252e23          	sw	s2,124(a0)
    800053f4:	f75ff06f          	j	80005368 <acquire+0x3c>

00000000800053f8 <release>:
    800053f8:	fe010113          	addi	sp,sp,-32
    800053fc:	00813823          	sd	s0,16(sp)
    80005400:	00113c23          	sd	ra,24(sp)
    80005404:	00913423          	sd	s1,8(sp)
    80005408:	01213023          	sd	s2,0(sp)
    8000540c:	02010413          	addi	s0,sp,32
    80005410:	00052783          	lw	a5,0(a0)
    80005414:	00079a63          	bnez	a5,80005428 <release+0x30>
    80005418:	00001517          	auipc	a0,0x1
    8000541c:	f2050513          	addi	a0,a0,-224 # 80006338 <digits+0x28>
    80005420:	fffff097          	auipc	ra,0xfffff
    80005424:	1dc080e7          	jalr	476(ra) # 800045fc <panic>
    80005428:	01053903          	ld	s2,16(a0)
    8000542c:	00050493          	mv	s1,a0
    80005430:	fffff097          	auipc	ra,0xfffff
    80005434:	808080e7          	jalr	-2040(ra) # 80003c38 <mycpu>
    80005438:	fea910e3          	bne	s2,a0,80005418 <release+0x20>
    8000543c:	0004b823          	sd	zero,16(s1)
    80005440:	0ff0000f          	fence
    80005444:	0f50000f          	fence	iorw,ow
    80005448:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000544c:	ffffe097          	auipc	ra,0xffffe
    80005450:	7ec080e7          	jalr	2028(ra) # 80003c38 <mycpu>
    80005454:	100027f3          	csrr	a5,sstatus
    80005458:	0027f793          	andi	a5,a5,2
    8000545c:	04079a63          	bnez	a5,800054b0 <release+0xb8>
    80005460:	07852783          	lw	a5,120(a0)
    80005464:	02f05e63          	blez	a5,800054a0 <release+0xa8>
    80005468:	fff7871b          	addiw	a4,a5,-1
    8000546c:	06e52c23          	sw	a4,120(a0)
    80005470:	00071c63          	bnez	a4,80005488 <release+0x90>
    80005474:	07c52783          	lw	a5,124(a0)
    80005478:	00078863          	beqz	a5,80005488 <release+0x90>
    8000547c:	100027f3          	csrr	a5,sstatus
    80005480:	0027e793          	ori	a5,a5,2
    80005484:	10079073          	csrw	sstatus,a5
    80005488:	01813083          	ld	ra,24(sp)
    8000548c:	01013403          	ld	s0,16(sp)
    80005490:	00813483          	ld	s1,8(sp)
    80005494:	00013903          	ld	s2,0(sp)
    80005498:	02010113          	addi	sp,sp,32
    8000549c:	00008067          	ret
    800054a0:	00001517          	auipc	a0,0x1
    800054a4:	eb850513          	addi	a0,a0,-328 # 80006358 <digits+0x48>
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	154080e7          	jalr	340(ra) # 800045fc <panic>
    800054b0:	00001517          	auipc	a0,0x1
    800054b4:	e9050513          	addi	a0,a0,-368 # 80006340 <digits+0x30>
    800054b8:	fffff097          	auipc	ra,0xfffff
    800054bc:	144080e7          	jalr	324(ra) # 800045fc <panic>

00000000800054c0 <holding>:
    800054c0:	00052783          	lw	a5,0(a0)
    800054c4:	00079663          	bnez	a5,800054d0 <holding+0x10>
    800054c8:	00000513          	li	a0,0
    800054cc:	00008067          	ret
    800054d0:	fe010113          	addi	sp,sp,-32
    800054d4:	00813823          	sd	s0,16(sp)
    800054d8:	00913423          	sd	s1,8(sp)
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	02010413          	addi	s0,sp,32
    800054e4:	01053483          	ld	s1,16(a0)
    800054e8:	ffffe097          	auipc	ra,0xffffe
    800054ec:	750080e7          	jalr	1872(ra) # 80003c38 <mycpu>
    800054f0:	01813083          	ld	ra,24(sp)
    800054f4:	01013403          	ld	s0,16(sp)
    800054f8:	40a48533          	sub	a0,s1,a0
    800054fc:	00153513          	seqz	a0,a0
    80005500:	00813483          	ld	s1,8(sp)
    80005504:	02010113          	addi	sp,sp,32
    80005508:	00008067          	ret

000000008000550c <push_off>:
    8000550c:	fe010113          	addi	sp,sp,-32
    80005510:	00813823          	sd	s0,16(sp)
    80005514:	00113c23          	sd	ra,24(sp)
    80005518:	00913423          	sd	s1,8(sp)
    8000551c:	02010413          	addi	s0,sp,32
    80005520:	100024f3          	csrr	s1,sstatus
    80005524:	100027f3          	csrr	a5,sstatus
    80005528:	ffd7f793          	andi	a5,a5,-3
    8000552c:	10079073          	csrw	sstatus,a5
    80005530:	ffffe097          	auipc	ra,0xffffe
    80005534:	708080e7          	jalr	1800(ra) # 80003c38 <mycpu>
    80005538:	07852783          	lw	a5,120(a0)
    8000553c:	02078663          	beqz	a5,80005568 <push_off+0x5c>
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	6f8080e7          	jalr	1784(ra) # 80003c38 <mycpu>
    80005548:	07852783          	lw	a5,120(a0)
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	0017879b          	addiw	a5,a5,1
    80005558:	06f52c23          	sw	a5,120(a0)
    8000555c:	00813483          	ld	s1,8(sp)
    80005560:	02010113          	addi	sp,sp,32
    80005564:	00008067          	ret
    80005568:	0014d493          	srli	s1,s1,0x1
    8000556c:	ffffe097          	auipc	ra,0xffffe
    80005570:	6cc080e7          	jalr	1740(ra) # 80003c38 <mycpu>
    80005574:	0014f493          	andi	s1,s1,1
    80005578:	06952e23          	sw	s1,124(a0)
    8000557c:	fc5ff06f          	j	80005540 <push_off+0x34>

0000000080005580 <pop_off>:
    80005580:	ff010113          	addi	sp,sp,-16
    80005584:	00813023          	sd	s0,0(sp)
    80005588:	00113423          	sd	ra,8(sp)
    8000558c:	01010413          	addi	s0,sp,16
    80005590:	ffffe097          	auipc	ra,0xffffe
    80005594:	6a8080e7          	jalr	1704(ra) # 80003c38 <mycpu>
    80005598:	100027f3          	csrr	a5,sstatus
    8000559c:	0027f793          	andi	a5,a5,2
    800055a0:	04079663          	bnez	a5,800055ec <pop_off+0x6c>
    800055a4:	07852783          	lw	a5,120(a0)
    800055a8:	02f05a63          	blez	a5,800055dc <pop_off+0x5c>
    800055ac:	fff7871b          	addiw	a4,a5,-1
    800055b0:	06e52c23          	sw	a4,120(a0)
    800055b4:	00071c63          	bnez	a4,800055cc <pop_off+0x4c>
    800055b8:	07c52783          	lw	a5,124(a0)
    800055bc:	00078863          	beqz	a5,800055cc <pop_off+0x4c>
    800055c0:	100027f3          	csrr	a5,sstatus
    800055c4:	0027e793          	ori	a5,a5,2
    800055c8:	10079073          	csrw	sstatus,a5
    800055cc:	00813083          	ld	ra,8(sp)
    800055d0:	00013403          	ld	s0,0(sp)
    800055d4:	01010113          	addi	sp,sp,16
    800055d8:	00008067          	ret
    800055dc:	00001517          	auipc	a0,0x1
    800055e0:	d7c50513          	addi	a0,a0,-644 # 80006358 <digits+0x48>
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	018080e7          	jalr	24(ra) # 800045fc <panic>
    800055ec:	00001517          	auipc	a0,0x1
    800055f0:	d5450513          	addi	a0,a0,-684 # 80006340 <digits+0x30>
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	008080e7          	jalr	8(ra) # 800045fc <panic>

00000000800055fc <push_on>:
    800055fc:	fe010113          	addi	sp,sp,-32
    80005600:	00813823          	sd	s0,16(sp)
    80005604:	00113c23          	sd	ra,24(sp)
    80005608:	00913423          	sd	s1,8(sp)
    8000560c:	02010413          	addi	s0,sp,32
    80005610:	100024f3          	csrr	s1,sstatus
    80005614:	100027f3          	csrr	a5,sstatus
    80005618:	0027e793          	ori	a5,a5,2
    8000561c:	10079073          	csrw	sstatus,a5
    80005620:	ffffe097          	auipc	ra,0xffffe
    80005624:	618080e7          	jalr	1560(ra) # 80003c38 <mycpu>
    80005628:	07852783          	lw	a5,120(a0)
    8000562c:	02078663          	beqz	a5,80005658 <push_on+0x5c>
    80005630:	ffffe097          	auipc	ra,0xffffe
    80005634:	608080e7          	jalr	1544(ra) # 80003c38 <mycpu>
    80005638:	07852783          	lw	a5,120(a0)
    8000563c:	01813083          	ld	ra,24(sp)
    80005640:	01013403          	ld	s0,16(sp)
    80005644:	0017879b          	addiw	a5,a5,1
    80005648:	06f52c23          	sw	a5,120(a0)
    8000564c:	00813483          	ld	s1,8(sp)
    80005650:	02010113          	addi	sp,sp,32
    80005654:	00008067          	ret
    80005658:	0014d493          	srli	s1,s1,0x1
    8000565c:	ffffe097          	auipc	ra,0xffffe
    80005660:	5dc080e7          	jalr	1500(ra) # 80003c38 <mycpu>
    80005664:	0014f493          	andi	s1,s1,1
    80005668:	06952e23          	sw	s1,124(a0)
    8000566c:	fc5ff06f          	j	80005630 <push_on+0x34>

0000000080005670 <pop_on>:
    80005670:	ff010113          	addi	sp,sp,-16
    80005674:	00813023          	sd	s0,0(sp)
    80005678:	00113423          	sd	ra,8(sp)
    8000567c:	01010413          	addi	s0,sp,16
    80005680:	ffffe097          	auipc	ra,0xffffe
    80005684:	5b8080e7          	jalr	1464(ra) # 80003c38 <mycpu>
    80005688:	100027f3          	csrr	a5,sstatus
    8000568c:	0027f793          	andi	a5,a5,2
    80005690:	04078463          	beqz	a5,800056d8 <pop_on+0x68>
    80005694:	07852783          	lw	a5,120(a0)
    80005698:	02f05863          	blez	a5,800056c8 <pop_on+0x58>
    8000569c:	fff7879b          	addiw	a5,a5,-1
    800056a0:	06f52c23          	sw	a5,120(a0)
    800056a4:	07853783          	ld	a5,120(a0)
    800056a8:	00079863          	bnez	a5,800056b8 <pop_on+0x48>
    800056ac:	100027f3          	csrr	a5,sstatus
    800056b0:	ffd7f793          	andi	a5,a5,-3
    800056b4:	10079073          	csrw	sstatus,a5
    800056b8:	00813083          	ld	ra,8(sp)
    800056bc:	00013403          	ld	s0,0(sp)
    800056c0:	01010113          	addi	sp,sp,16
    800056c4:	00008067          	ret
    800056c8:	00001517          	auipc	a0,0x1
    800056cc:	cb850513          	addi	a0,a0,-840 # 80006380 <digits+0x70>
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	f2c080e7          	jalr	-212(ra) # 800045fc <panic>
    800056d8:	00001517          	auipc	a0,0x1
    800056dc:	c8850513          	addi	a0,a0,-888 # 80006360 <digits+0x50>
    800056e0:	fffff097          	auipc	ra,0xfffff
    800056e4:	f1c080e7          	jalr	-228(ra) # 800045fc <panic>

00000000800056e8 <__memset>:
    800056e8:	ff010113          	addi	sp,sp,-16
    800056ec:	00813423          	sd	s0,8(sp)
    800056f0:	01010413          	addi	s0,sp,16
    800056f4:	1a060e63          	beqz	a2,800058b0 <__memset+0x1c8>
    800056f8:	40a007b3          	neg	a5,a0
    800056fc:	0077f793          	andi	a5,a5,7
    80005700:	00778693          	addi	a3,a5,7
    80005704:	00b00813          	li	a6,11
    80005708:	0ff5f593          	andi	a1,a1,255
    8000570c:	fff6071b          	addiw	a4,a2,-1
    80005710:	1b06e663          	bltu	a3,a6,800058bc <__memset+0x1d4>
    80005714:	1cd76463          	bltu	a4,a3,800058dc <__memset+0x1f4>
    80005718:	1a078e63          	beqz	a5,800058d4 <__memset+0x1ec>
    8000571c:	00b50023          	sb	a1,0(a0)
    80005720:	00100713          	li	a4,1
    80005724:	1ae78463          	beq	a5,a4,800058cc <__memset+0x1e4>
    80005728:	00b500a3          	sb	a1,1(a0)
    8000572c:	00200713          	li	a4,2
    80005730:	1ae78a63          	beq	a5,a4,800058e4 <__memset+0x1fc>
    80005734:	00b50123          	sb	a1,2(a0)
    80005738:	00300713          	li	a4,3
    8000573c:	18e78463          	beq	a5,a4,800058c4 <__memset+0x1dc>
    80005740:	00b501a3          	sb	a1,3(a0)
    80005744:	00400713          	li	a4,4
    80005748:	1ae78263          	beq	a5,a4,800058ec <__memset+0x204>
    8000574c:	00b50223          	sb	a1,4(a0)
    80005750:	00500713          	li	a4,5
    80005754:	1ae78063          	beq	a5,a4,800058f4 <__memset+0x20c>
    80005758:	00b502a3          	sb	a1,5(a0)
    8000575c:	00700713          	li	a4,7
    80005760:	18e79e63          	bne	a5,a4,800058fc <__memset+0x214>
    80005764:	00b50323          	sb	a1,6(a0)
    80005768:	00700e93          	li	t4,7
    8000576c:	00859713          	slli	a4,a1,0x8
    80005770:	00e5e733          	or	a4,a1,a4
    80005774:	01059e13          	slli	t3,a1,0x10
    80005778:	01c76e33          	or	t3,a4,t3
    8000577c:	01859313          	slli	t1,a1,0x18
    80005780:	006e6333          	or	t1,t3,t1
    80005784:	02059893          	slli	a7,a1,0x20
    80005788:	40f60e3b          	subw	t3,a2,a5
    8000578c:	011368b3          	or	a7,t1,a7
    80005790:	02859813          	slli	a6,a1,0x28
    80005794:	0108e833          	or	a6,a7,a6
    80005798:	03059693          	slli	a3,a1,0x30
    8000579c:	003e589b          	srliw	a7,t3,0x3
    800057a0:	00d866b3          	or	a3,a6,a3
    800057a4:	03859713          	slli	a4,a1,0x38
    800057a8:	00389813          	slli	a6,a7,0x3
    800057ac:	00f507b3          	add	a5,a0,a5
    800057b0:	00e6e733          	or	a4,a3,a4
    800057b4:	000e089b          	sext.w	a7,t3
    800057b8:	00f806b3          	add	a3,a6,a5
    800057bc:	00e7b023          	sd	a4,0(a5)
    800057c0:	00878793          	addi	a5,a5,8
    800057c4:	fed79ce3          	bne	a5,a3,800057bc <__memset+0xd4>
    800057c8:	ff8e7793          	andi	a5,t3,-8
    800057cc:	0007871b          	sext.w	a4,a5
    800057d0:	01d787bb          	addw	a5,a5,t4
    800057d4:	0ce88e63          	beq	a7,a4,800058b0 <__memset+0x1c8>
    800057d8:	00f50733          	add	a4,a0,a5
    800057dc:	00b70023          	sb	a1,0(a4)
    800057e0:	0017871b          	addiw	a4,a5,1
    800057e4:	0cc77663          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    800057e8:	00e50733          	add	a4,a0,a4
    800057ec:	00b70023          	sb	a1,0(a4)
    800057f0:	0027871b          	addiw	a4,a5,2
    800057f4:	0ac77e63          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    800057f8:	00e50733          	add	a4,a0,a4
    800057fc:	00b70023          	sb	a1,0(a4)
    80005800:	0037871b          	addiw	a4,a5,3
    80005804:	0ac77663          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005808:	00e50733          	add	a4,a0,a4
    8000580c:	00b70023          	sb	a1,0(a4)
    80005810:	0047871b          	addiw	a4,a5,4
    80005814:	08c77e63          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005818:	00e50733          	add	a4,a0,a4
    8000581c:	00b70023          	sb	a1,0(a4)
    80005820:	0057871b          	addiw	a4,a5,5
    80005824:	08c77663          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005828:	00e50733          	add	a4,a0,a4
    8000582c:	00b70023          	sb	a1,0(a4)
    80005830:	0067871b          	addiw	a4,a5,6
    80005834:	06c77e63          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005838:	00e50733          	add	a4,a0,a4
    8000583c:	00b70023          	sb	a1,0(a4)
    80005840:	0077871b          	addiw	a4,a5,7
    80005844:	06c77663          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005848:	00e50733          	add	a4,a0,a4
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	0087871b          	addiw	a4,a5,8
    80005854:	04c77e63          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005858:	00e50733          	add	a4,a0,a4
    8000585c:	00b70023          	sb	a1,0(a4)
    80005860:	0097871b          	addiw	a4,a5,9
    80005864:	04c77663          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	00a7871b          	addiw	a4,a5,10
    80005874:	02c77e63          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	00b7871b          	addiw	a4,a5,11
    80005884:	02c77663          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	00c7871b          	addiw	a4,a5,12
    80005894:	00c77e63          	bgeu	a4,a2,800058b0 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	00d7879b          	addiw	a5,a5,13
    800058a4:	00c7f663          	bgeu	a5,a2,800058b0 <__memset+0x1c8>
    800058a8:	00f507b3          	add	a5,a0,a5
    800058ac:	00b78023          	sb	a1,0(a5)
    800058b0:	00813403          	ld	s0,8(sp)
    800058b4:	01010113          	addi	sp,sp,16
    800058b8:	00008067          	ret
    800058bc:	00b00693          	li	a3,11
    800058c0:	e55ff06f          	j	80005714 <__memset+0x2c>
    800058c4:	00300e93          	li	t4,3
    800058c8:	ea5ff06f          	j	8000576c <__memset+0x84>
    800058cc:	00100e93          	li	t4,1
    800058d0:	e9dff06f          	j	8000576c <__memset+0x84>
    800058d4:	00000e93          	li	t4,0
    800058d8:	e95ff06f          	j	8000576c <__memset+0x84>
    800058dc:	00000793          	li	a5,0
    800058e0:	ef9ff06f          	j	800057d8 <__memset+0xf0>
    800058e4:	00200e93          	li	t4,2
    800058e8:	e85ff06f          	j	8000576c <__memset+0x84>
    800058ec:	00400e93          	li	t4,4
    800058f0:	e7dff06f          	j	8000576c <__memset+0x84>
    800058f4:	00500e93          	li	t4,5
    800058f8:	e75ff06f          	j	8000576c <__memset+0x84>
    800058fc:	00600e93          	li	t4,6
    80005900:	e6dff06f          	j	8000576c <__memset+0x84>

0000000080005904 <__memmove>:
    80005904:	ff010113          	addi	sp,sp,-16
    80005908:	00813423          	sd	s0,8(sp)
    8000590c:	01010413          	addi	s0,sp,16
    80005910:	0e060863          	beqz	a2,80005a00 <__memmove+0xfc>
    80005914:	fff6069b          	addiw	a3,a2,-1
    80005918:	0006881b          	sext.w	a6,a3
    8000591c:	0ea5e863          	bltu	a1,a0,80005a0c <__memmove+0x108>
    80005920:	00758713          	addi	a4,a1,7
    80005924:	00a5e7b3          	or	a5,a1,a0
    80005928:	40a70733          	sub	a4,a4,a0
    8000592c:	0077f793          	andi	a5,a5,7
    80005930:	00f73713          	sltiu	a4,a4,15
    80005934:	00174713          	xori	a4,a4,1
    80005938:	0017b793          	seqz	a5,a5
    8000593c:	00e7f7b3          	and	a5,a5,a4
    80005940:	10078863          	beqz	a5,80005a50 <__memmove+0x14c>
    80005944:	00900793          	li	a5,9
    80005948:	1107f463          	bgeu	a5,a6,80005a50 <__memmove+0x14c>
    8000594c:	0036581b          	srliw	a6,a2,0x3
    80005950:	fff8081b          	addiw	a6,a6,-1
    80005954:	02081813          	slli	a6,a6,0x20
    80005958:	01d85893          	srli	a7,a6,0x1d
    8000595c:	00858813          	addi	a6,a1,8
    80005960:	00058793          	mv	a5,a1
    80005964:	00050713          	mv	a4,a0
    80005968:	01088833          	add	a6,a7,a6
    8000596c:	0007b883          	ld	a7,0(a5)
    80005970:	00878793          	addi	a5,a5,8
    80005974:	00870713          	addi	a4,a4,8
    80005978:	ff173c23          	sd	a7,-8(a4)
    8000597c:	ff0798e3          	bne	a5,a6,8000596c <__memmove+0x68>
    80005980:	ff867713          	andi	a4,a2,-8
    80005984:	02071793          	slli	a5,a4,0x20
    80005988:	0207d793          	srli	a5,a5,0x20
    8000598c:	00f585b3          	add	a1,a1,a5
    80005990:	40e686bb          	subw	a3,a3,a4
    80005994:	00f507b3          	add	a5,a0,a5
    80005998:	06e60463          	beq	a2,a4,80005a00 <__memmove+0xfc>
    8000599c:	0005c703          	lbu	a4,0(a1)
    800059a0:	00e78023          	sb	a4,0(a5)
    800059a4:	04068e63          	beqz	a3,80005a00 <__memmove+0xfc>
    800059a8:	0015c603          	lbu	a2,1(a1)
    800059ac:	00100713          	li	a4,1
    800059b0:	00c780a3          	sb	a2,1(a5)
    800059b4:	04e68663          	beq	a3,a4,80005a00 <__memmove+0xfc>
    800059b8:	0025c603          	lbu	a2,2(a1)
    800059bc:	00200713          	li	a4,2
    800059c0:	00c78123          	sb	a2,2(a5)
    800059c4:	02e68e63          	beq	a3,a4,80005a00 <__memmove+0xfc>
    800059c8:	0035c603          	lbu	a2,3(a1)
    800059cc:	00300713          	li	a4,3
    800059d0:	00c781a3          	sb	a2,3(a5)
    800059d4:	02e68663          	beq	a3,a4,80005a00 <__memmove+0xfc>
    800059d8:	0045c603          	lbu	a2,4(a1)
    800059dc:	00400713          	li	a4,4
    800059e0:	00c78223          	sb	a2,4(a5)
    800059e4:	00e68e63          	beq	a3,a4,80005a00 <__memmove+0xfc>
    800059e8:	0055c603          	lbu	a2,5(a1)
    800059ec:	00500713          	li	a4,5
    800059f0:	00c782a3          	sb	a2,5(a5)
    800059f4:	00e68663          	beq	a3,a4,80005a00 <__memmove+0xfc>
    800059f8:	0065c703          	lbu	a4,6(a1)
    800059fc:	00e78323          	sb	a4,6(a5)
    80005a00:	00813403          	ld	s0,8(sp)
    80005a04:	01010113          	addi	sp,sp,16
    80005a08:	00008067          	ret
    80005a0c:	02061713          	slli	a4,a2,0x20
    80005a10:	02075713          	srli	a4,a4,0x20
    80005a14:	00e587b3          	add	a5,a1,a4
    80005a18:	f0f574e3          	bgeu	a0,a5,80005920 <__memmove+0x1c>
    80005a1c:	02069613          	slli	a2,a3,0x20
    80005a20:	02065613          	srli	a2,a2,0x20
    80005a24:	fff64613          	not	a2,a2
    80005a28:	00e50733          	add	a4,a0,a4
    80005a2c:	00c78633          	add	a2,a5,a2
    80005a30:	fff7c683          	lbu	a3,-1(a5)
    80005a34:	fff78793          	addi	a5,a5,-1
    80005a38:	fff70713          	addi	a4,a4,-1
    80005a3c:	00d70023          	sb	a3,0(a4)
    80005a40:	fec798e3          	bne	a5,a2,80005a30 <__memmove+0x12c>
    80005a44:	00813403          	ld	s0,8(sp)
    80005a48:	01010113          	addi	sp,sp,16
    80005a4c:	00008067          	ret
    80005a50:	02069713          	slli	a4,a3,0x20
    80005a54:	02075713          	srli	a4,a4,0x20
    80005a58:	00170713          	addi	a4,a4,1
    80005a5c:	00e50733          	add	a4,a0,a4
    80005a60:	00050793          	mv	a5,a0
    80005a64:	0005c683          	lbu	a3,0(a1)
    80005a68:	00178793          	addi	a5,a5,1
    80005a6c:	00158593          	addi	a1,a1,1
    80005a70:	fed78fa3          	sb	a3,-1(a5)
    80005a74:	fee798e3          	bne	a5,a4,80005a64 <__memmove+0x160>
    80005a78:	f89ff06f          	j	80005a00 <__memmove+0xfc>
	...
