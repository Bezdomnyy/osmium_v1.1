
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	93813103          	ld	sp,-1736(sp) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	020040ef          	jal	ra,8000403c <start>

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
    800012f8:	284080e7          	jalr	644(ra) # 80002578 <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    800012fc:	00007797          	auipc	a5,0x7
    80001300:	6447b783          	ld	a5,1604(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001380:	00006517          	auipc	a0,0x6
    80001384:	cc050513          	addi	a0,a0,-832 # 80007040 <CONSOLE_STATUS+0x30>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	4e0080e7          	jalr	1248(ra) # 80002868 <_Z14__print_stringPKc>
    __print_string("scause: ");
    80001390:	00006517          	auipc	a0,0x6
    80001394:	cc850513          	addi	a0,a0,-824 # 80007058 <CONSOLE_STATUS+0x48>
    80001398:	00001097          	auipc	ra,0x1
    8000139c:	4d0080e7          	jalr	1232(ra) # 80002868 <_Z14__print_stringPKc>
    __print_uint64(scause);
    800013a0:	00048513          	mv	a0,s1
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	508080e7          	jalr	1288(ra) # 800028ac <_Z14__print_uint64m>
    Uart::txPut('\n');
    800013ac:	00a00513          	li	a0,10
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	6cc080e7          	jalr	1740(ra) # 80001a7c <_ZN4Uart5txPutEc>
    __print_string("sepc: ");
    800013b8:	00006517          	auipc	a0,0x6
    800013bc:	cb050513          	addi	a0,a0,-848 # 80007068 <CONSOLE_STATUS+0x58>
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	4a8080e7          	jalr	1192(ra) # 80002868 <_Z14__print_stringPKc>
    __print_uint64(sepc);
    800013c8:	00090513          	mv	a0,s2
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	4e0080e7          	jalr	1248(ra) # 800028ac <_Z14__print_uint64m>
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
    80001434:	00006717          	auipc	a4,0x6
    80001438:	c3c70713          	addi	a4,a4,-964 # 80007070 <CONSOLE_STATUS+0x60>
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
    8000145c:	2c0080e7          	jalr	704(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
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
    80001488:	320080e7          	jalr	800(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
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
    800014b8:	b20080e7          	jalr	-1248(ra) # 80001fd4 <_ZN3TCB9createTCBEPFvPvES0_>
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
    800014d8:	00007797          	auipc	a5,0x7
    800014dc:	4707b783          	ld	a5,1136(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800014f4:	c94080e7          	jalr	-876(ra) # 80002184 <_ZN3TCB8dispatchEv>
}
    800014f8:	f69ff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	c88080e7          	jalr	-888(ra) # 80002184 <_ZN3TCB8dispatchEv>
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
    80001530:	b38080e7          	jalr	-1224(ra) # 80002064 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
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
    80001570:	3c4080e7          	jalr	964(ra) # 80002930 <_ZN3Sem9createSemEj>
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
    800015ac:	3d8080e7          	jalr	984(ra) # 80002980 <_ZN3SemD1Ev>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    800015b0:	00098513          	mv	a0,s3
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	1f0080e7          	jalr	496(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>

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
    800015d4:	438080e7          	jalr	1080(ra) # 80002a08 <_ZN3Sem7semWaitEv>

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
    800015ec:	4bc080e7          	jalr	1212(ra) # 80002aa4 <_ZN3Sem9semSignalEv>
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
    80001604:	700080e7          	jalr	1792(ra) # 80002d00 <_ZN9Scheduler9timeSleepEm>
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
    80001644:	00006517          	auipc	a0,0x6
    80001648:	9dc50513          	addi	a0,a0,-1572 # 80007020 <CONSOLE_STATUS+0x10>
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	21c080e7          	jalr	540(ra) # 80002868 <_Z14__print_stringPKc>
            break;
    80001654:	e0dff06f          	j	80001460 <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    80001658:	00007797          	auipc	a5,0x7
    8000165c:	2f07b783          	ld	a5,752(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001660:	0007b783          	ld	a5,0(a5)
    80001664:	04078063          	beqz	a5,800016a4 <_ZN6Kernel21supervisorTrapHandlerEv+0x384>
        Scheduler::timerInterrupt();
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	5e0080e7          	jalr	1504(ra) # 80002c48 <_ZN9Scheduler14timerInterruptEv>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    80001670:	00007717          	auipc	a4,0x7
    80001674:	2b873703          	ld	a4,696(a4) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001678:	00073783          	ld	a5,0(a4)
    8000167c:	00178793          	addi	a5,a5,1
    80001680:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    80001684:	00007717          	auipc	a4,0x7
    80001688:	2c473703          	ld	a4,708(a4) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800016c8:	00007797          	auipc	a5,0x7
    800016cc:	2607b783          	ld	a5,608(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016d0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	ab0080e7          	jalr	-1360(ra) # 80002184 <_ZN3TCB8dispatchEv>
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
    800016ec:	1ac080e7          	jalr	428(ra) # 80004894 <plic_claim>
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
    80001704:	1cc080e7          	jalr	460(ra) # 800048cc <plic_complete>
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
    80001744:	00007717          	auipc	a4,0x7
    80001748:	26f70623          	sb	a5,620(a4) # 800089b0 <_ZN6Kernel8finishedE>
    Scheduler::finish();
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	6c4080e7          	jalr	1732(ra) # 80002e10 <_ZN9Scheduler6finishEv>
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
    80001770:	00007517          	auipc	a0,0x7
    80001774:	24054503          	lbu	a0,576(a0) # 800089b0 <_ZN6Kernel8finishedE>
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
    800017b0:	00007797          	auipc	a5,0x7
    800017b4:	1687b783          	ld	a5,360(a5) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017b8:	0007b703          	ld	a4,0(a5)
    800017bc:	00007797          	auipc	a5,0x7
    800017c0:	1fc78793          	addi	a5,a5,508 # 800089b8 <_ZN4Uart6STATUSE>
    800017c4:	00e7b023          	sd	a4,0(a5)
volatile char* Uart::RX_DATA = (char*) CONSOLE_RX_DATA;
    800017c8:	00007717          	auipc	a4,0x7
    800017cc:	14873703          	ld	a4,328(a4) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017d0:	00073703          	ld	a4,0(a4)
    800017d4:	00e7b423          	sd	a4,8(a5)
volatile char* Uart::TX_DATA = (char*) CONSOLE_TX_DATA;
    800017d8:	00007717          	auipc	a4,0x7
    800017dc:	15873703          	ld	a4,344(a4) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001808:	12c080e7          	jalr	300(ra) # 80002930 <_ZN3Sem9createSemEj>
    8000180c:	00007497          	auipc	s1,0x7
    80001810:	1ac48493          	addi	s1,s1,428 # 800089b8 <_ZN4Uart6STATUSE>
    80001814:	00a4bc23          	sd	a0,24(s1)
    rx_not_full = Sem::createSem(BUFFER_SIZE);
    80001818:	40000513          	li	a0,1024
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	114080e7          	jalr	276(ra) # 80002930 <_ZN3Sem9createSemEj>
    80001824:	02a4b023          	sd	a0,32(s1)
    rx_request = Sem::createSem(0);
    80001828:	00000513          	li	a0,0
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	104080e7          	jalr	260(ra) # 80002930 <_ZN3Sem9createSemEj>
    80001834:	02a4b423          	sd	a0,40(s1)
    tx_not_empty = Sem::createSem(0);
    80001838:	00000513          	li	a0,0
    8000183c:	00001097          	auipc	ra,0x1
    80001840:	0f4080e7          	jalr	244(ra) # 80002930 <_ZN3Sem9createSemEj>
    80001844:	02a4b823          	sd	a0,48(s1)
    tx_not_full = Sem::createSem(BUFFER_SIZE);
    80001848:	40000513          	li	a0,1024
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	0e4080e7          	jalr	228(ra) # 80002930 <_ZN3Sem9createSemEj>
    80001854:	02a4bc23          	sd	a0,56(s1)
    tx_request = Sem::createSem(0);
    80001858:	00000513          	li	a0,0
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	0d4080e7          	jalr	212(ra) # 80002930 <_ZN3Sem9createSemEj>
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
    80001888:	00007797          	auipc	a5,0x7
    8000188c:	0907b783          	ld	a5,144(a5) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    800018b8:	00007497          	auipc	s1,0x7
    800018bc:	10048493          	addi	s1,s1,256 # 800089b8 <_ZN4Uart6STATUSE>
    800018c0:	0184b503          	ld	a0,24(s1)
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	144080e7          	jalr	324(ra) # 80002a08 <_ZN3Sem7semWaitEv>
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
    80001920:	00007497          	auipc	s1,0x7
    80001924:	09848493          	addi	s1,s1,152 # 800089b8 <_ZN4Uart6STATUSE>
    80001928:	0204b503          	ld	a0,32(s1)
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	0dc080e7          	jalr	220(ra) # 80002a08 <_ZN3Sem7semWaitEv>
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
    80001964:	144080e7          	jalr	324(ra) # 80002aa4 <_ZN3Sem9semSignalEv>
}
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	00013903          	ld	s2,0(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <_ZN4Uart9rxReceiveEv>:
    if (rxSize >= BUFFER_SIZE) return -1;
    80001980:	00007717          	auipc	a4,0x7
    80001984:	48872703          	lw	a4,1160(a4) # 80008e08 <_ZN4Uart6rxSizeE>
    80001988:	3ff00793          	li	a5,1023
    8000198c:	06e7c663          	blt	a5,a4,800019f8 <_ZN4Uart9rxReceiveEv+0x78>
char Uart::rxReceive() {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
    char c = *(char*) CONSOLE_RX_DATA;
    800019a0:	00007797          	auipc	a5,0x7
    800019a4:	f707b783          	ld	a5,-144(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019a8:	0007b783          	ld	a5,0(a5)
    800019ac:	0007c583          	lbu	a1,0(a5)
    rx_buffer[rxRear] = c;
    800019b0:	00007697          	auipc	a3,0x7
    800019b4:	00868693          	addi	a3,a3,8 # 800089b8 <_ZN4Uart6STATUSE>
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
    800019e0:	0c8080e7          	jalr	200(ra) # 80002aa4 <_ZN3Sem9semSignalEv>
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
    80001a14:	00007797          	auipc	a5,0x7
    80001a18:	4007a783          	lw	a5,1024(a5) # 80008e14 <_ZN4Uart6txSizeE>
    80001a1c:	00079863          	bnez	a5,80001a2c <_ZN4Uart5txGetEv+0x2c>
        thread_dispatch();
    80001a20:	fffff097          	auipc	ra,0xfffff
    80001a24:	610080e7          	jalr	1552(ra) # 80001030 <thread_dispatch>
    while(txSize == 0) {
    80001a28:	fedff06f          	j	80001a14 <_ZN4Uart5txGetEv+0x14>
    c = tx_buffer[txFront];
    80001a2c:	00007797          	auipc	a5,0x7
    80001a30:	f8c78793          	addi	a5,a5,-116 # 800089b8 <_ZN4Uart6STATUSE>
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
    80001a60:	048080e7          	jalr	72(ra) # 80002aa4 <_ZN3Sem9semSignalEv>
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
    80001a98:	00007497          	auipc	s1,0x7
    80001a9c:	f2048493          	addi	s1,s1,-224 # 800089b8 <_ZN4Uart6STATUSE>
    80001aa0:	0384b503          	ld	a0,56(s1)
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	f64080e7          	jalr	-156(ra) # 80002a08 <_ZN3Sem7semWaitEv>
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
    80001ad8:	fd0080e7          	jalr	-48(ra) # 80002aa4 <_ZN3Sem9semSignalEv>
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
    80001b00:	00007797          	auipc	a5,0x7
    80001b04:	e307b783          	ld	a5,-464(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001b2c:	00007517          	auipc	a0,0x7
    80001b30:	ecc53503          	ld	a0,-308(a0) # 800089f8 <_ZN4Uart10tx_requestE>
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	ed4080e7          	jalr	-300(ra) # 80002a08 <_ZN3Sem7semWaitEv>
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
    80001b5c:	00007517          	auipc	a0,0x7
    80001b60:	e9c53503          	ld	a0,-356(a0) # 800089f8 <_ZN4Uart10tx_requestE>
    80001b64:	00001097          	auipc	ra,0x1
    80001b68:	f40080e7          	jalr	-192(ra) # 80002aa4 <_ZN3Sem9semSignalEv>
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
    80001b8c:	00007517          	auipc	a0,0x7
    80001b90:	e5453503          	ld	a0,-428(a0) # 800089e0 <_ZN4Uart10rx_requestE>
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	e74080e7          	jalr	-396(ra) # 80002a08 <_ZN3Sem7semWaitEv>
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
    80001bbc:	00007517          	auipc	a0,0x7
    80001bc0:	e2453503          	ld	a0,-476(a0) # 800089e0 <_ZN4Uart10rx_requestE>
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	ee0080e7          	jalr	-288(ra) # 80002aa4 <_ZN3Sem9semSignalEv>
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
    80001d20:	fd010113          	addi	sp,sp,-48
    80001d24:	02113423          	sd	ra,40(sp)
    80001d28:	02813023          	sd	s0,32(sp)
    80001d2c:	00913c23          	sd	s1,24(sp)
    80001d30:	01213823          	sd	s2,16(sp)
    80001d34:	01313423          	sd	s3,8(sp)
    80001d38:	03010413          	addi	s0,sp,48
    Kernel::initKernel();
    80001d3c:	fffff097          	auipc	ra,0xfffff
    80001d40:	5a8080e7          	jalr	1448(ra) # 800012e4 <_ZN6Kernel10initKernelEv>

    TCB* mainTCB = TCB::createTCB(nullptr, nullptr);
    80001d44:	00000593          	li	a1,0
    80001d48:	00000513          	li	a0,0
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	288080e7          	jalr	648(ra) # 80001fd4 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d54:	00050993          	mv	s3,a0
    TCB* userTCB = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    80001d58:	00000593          	li	a1,0
    80001d5c:	00007517          	auipc	a0,0x7
    80001d60:	bac53503          	ld	a0,-1108(a0) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	270080e7          	jalr	624(ra) # 80001fd4 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d6c:	00050493          	mv	s1,a0
    TCB* backgroundTCB = TCB::createTCB((void(*)(void*))&background, nullptr);
    80001d70:	00000593          	li	a1,0
    80001d74:	00000517          	auipc	a0,0x0
    80001d78:	f7450513          	addi	a0,a0,-140 # 80001ce8 <_Z10backgroundv>
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	258080e7          	jalr	600(ra) # 80001fd4 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d84:	00050913          	mv	s2,a0
    TCB::running = mainTCB;
    80001d88:	00007797          	auipc	a5,0x7
    80001d8c:	bc07b783          	ld	a5,-1088(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d90:	0137b023          	sd	s3,0(a5)

    TCB* uartTX_TCB = TCB::createTCB((void(*)(void*))&uart_consumer, nullptr);
    80001d94:	00000593          	li	a1,0
    80001d98:	00007517          	auipc	a0,0x7
    80001d9c:	bc053503          	ld	a0,-1088(a0) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	234080e7          	jalr	564(ra) # 80001fd4 <_ZN3TCB9createTCBEPFvPvES0_>
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001da8:	00200793          	li	a5,2
    80001dac:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished; }
    80001db0:	0184c783          	lbu	a5,24(s1)

    uartTX_TCB->isFinished();
    backgroundTCB->isFinished();
    RiscV::setSstatus(RiscV::SIE);
    while(!userTCB->isFinished()) {
    80001db4:	00079863          	bnez	a5,80001dc4 <main+0xa4>
        TCB::dispatch();
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	3cc080e7          	jalr	972(ra) # 80002184 <_ZN3TCB8dispatchEv>
    while(!userTCB->isFinished()) {
    80001dc0:	ff1ff06f          	j	80001db0 <main+0x90>
    }

    Kernel::finishKernel();
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	96c080e7          	jalr	-1684(ra) # 80001730 <_ZN6Kernel12finishKernelEv>
    delete userTCB;
    80001dcc:	00048e63          	beqz	s1,80001de8 <main+0xc8>

    ~TCB() { MemoryAllocator::free(stack); }
    80001dd0:	0104b503          	ld	a0,16(s1)
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	9d0080e7          	jalr	-1584(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    80001ddc:	00048513          	mv	a0,s1
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	9c4080e7          	jalr	-1596(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    //while(!backgroundTCB->isFinished()) TCB::dispatch();
    delete backgroundTCB;
    80001de8:	00090e63          	beqz	s2,80001e04 <main+0xe4>
    ~TCB() { MemoryAllocator::free(stack); }
    80001dec:	01093503          	ld	a0,16(s2)
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	9b4080e7          	jalr	-1612(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
        MemoryAllocator::free(ptr);
    80001df8:	00090513          	mv	a0,s2
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	9a8080e7          	jalr	-1624(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    80001e04:	02813083          	ld	ra,40(sp)
    80001e08:	02013403          	ld	s0,32(sp)
    80001e0c:	01813483          	ld	s1,24(sp)
    80001e10:	01013903          	ld	s2,16(sp)
    80001e14:	00813983          	ld	s3,8(sp)
    80001e18:	03010113          	addi	sp,sp,48
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001e20:	fe010113          	addi	sp,sp,-32
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	00813823          	sd	s0,16(sp)
    80001e2c:	00913423          	sd	s1,8(sp)
    80001e30:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	a14080e7          	jalr	-1516(ra) # 80002848 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001e3c:	00007497          	auipc	s1,0x7
    80001e40:	3e448493          	addi	s1,s1,996 # 80009220 <_ZN3TCB7runningE>
    80001e44:	0004b783          	ld	a5,0(s1)
    80001e48:	0007b703          	ld	a4,0(a5)
    80001e4c:	0087b503          	ld	a0,8(a5)
    80001e50:	000700e7          	jalr	a4
    running->setFinished(true);
    80001e54:	0004b783          	ld	a5,0(s1)
    void setFinished(bool val) { finished = val; }
    80001e58:	00100713          	li	a4,1
    80001e5c:	00e78c23          	sb	a4,24(a5)
    //thread_exit();
    thread_dispatch();
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	1d0080e7          	jalr	464(ra) # 80001030 <thread_dispatch>
}
    80001e68:	01813083          	ld	ra,24(sp)
    80001e6c:	01013403          	ld	s0,16(sp)
    80001e70:	00813483          	ld	s1,8(sp)
    80001e74:	02010113          	addi	sp,sp,32
    80001e78:	00008067          	ret

0000000080001e7c <_ZN3TCB14sThreadWrapperEv>:

void TCB::sThreadWrapper() {
    80001e7c:	fe010113          	addi	sp,sp,-32
    80001e80:	00113c23          	sd	ra,24(sp)
    80001e84:	00813823          	sd	s0,16(sp)
    80001e88:	00913423          	sd	s1,8(sp)
    80001e8c:	02010413          	addi	s0,sp,32
    80001e90:	10000793          	li	a5,256
    80001e94:	1007a073          	csrs	sstatus,a5
    80001e98:	02000793          	li	a5,32
    80001e9c:	1007a073          	csrs	sstatus,a5
    80001ea0:	00200793          	li	a5,2
    80001ea4:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(0x0000000000000001UL << 8);
    RiscV::setSstatus(0x0000000000000001UL << 5);
    RiscV::setSstatus(RiscV::SIE);
    RiscV::popSppSpie();
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	9a0080e7          	jalr	-1632(ra) # 80002848 <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001eb0:	00007497          	auipc	s1,0x7
    80001eb4:	37048493          	addi	s1,s1,880 # 80009220 <_ZN3TCB7runningE>
    80001eb8:	0004b783          	ld	a5,0(s1)
    80001ebc:	0007b703          	ld	a4,0(a5)
    80001ec0:	0087b503          	ld	a0,8(a5)
    80001ec4:	000700e7          	jalr	a4
    running->setFinished(true);
    80001ec8:	0004b783          	ld	a5,0(s1)
    80001ecc:	00100713          	li	a4,1
    80001ed0:	00e78c23          	sb	a4,24(a5)
    //thread_exit();
    thread_dispatch();
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	15c080e7          	jalr	348(ra) # 80001030 <thread_dispatch>
}
    80001edc:	01813083          	ld	ra,24(sp)
    80001ee0:	01013403          	ld	s0,16(sp)
    80001ee4:	00813483          	ld	s1,8(sp)
    80001ee8:	02010113          	addi	sp,sp,32
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN3TCBC1EPFvPvES0_mbb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready, bool supervisor)
    80001ef0:	fc010113          	addi	sp,sp,-64
    80001ef4:	02113c23          	sd	ra,56(sp)
    80001ef8:	02813823          	sd	s0,48(sp)
    80001efc:	02913423          	sd	s1,40(sp)
    80001f00:	03213023          	sd	s2,32(sp)
    80001f04:	01313c23          	sd	s3,24(sp)
    80001f08:	01413823          	sd	s4,16(sp)
    80001f0c:	01513423          	sd	s5,8(sp)
    80001f10:	04010413          	addi	s0,sp,64
    80001f14:	00050493          	mv	s1,a0
    80001f18:	00058913          	mv	s2,a1
    80001f1c:	00068993          	mv	s3,a3
    80001f20:	00070a13          	mv	s4,a4
    80001f24:	00078a93          	mv	s5,a5
        })
    80001f28:	00b53023          	sd	a1,0(a0)
    80001f2c:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001f30:	06058863          	beqz	a1,80001fa0 <_ZN3TCBC1EPFvPvES0_mbb+0xb0>
    80001f34:	00008537          	lui	a0,0x8
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	7e0080e7          	jalr	2016(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
        })
    80001f40:	00a4b823          	sd	a0,16(s1)
    80001f44:	00048c23          	sb	zero,24(s1)
    80001f48:	00048ca3          	sb	zero,25(s1)
    80001f4c:	0334b023          	sd	s3,32(s1)
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001f50:	06090263          	beqz	s2,80001fb4 <_ZN3TCBC1EPFvPvES0_mbb+0xc4>
    80001f54:	040a8a63          	beqz	s5,80001fa8 <_ZN3TCBC1EPFvPvES0_mbb+0xb8>
    80001f58:	00000797          	auipc	a5,0x0
    80001f5c:	f2478793          	addi	a5,a5,-220 # 80001e7c <_ZN3TCB14sThreadWrapperEv>
        })
    80001f60:	02f4b423          	sd	a5,40(s1)
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f64:	04050c63          	beqz	a0,80001fbc <_ZN3TCBC1EPFvPvES0_mbb+0xcc>
    80001f68:	000087b7          	lui	a5,0x8
    80001f6c:	00f50533          	add	a0,a0,a5
        })
    80001f70:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001f74:	00090463          	beqz	s2,80001f7c <_ZN3TCBC1EPFvPvES0_mbb+0x8c>
    80001f78:	040a1663          	bnez	s4,80001fc4 <_ZN3TCBC1EPFvPvES0_mbb+0xd4>
}
    80001f7c:	03813083          	ld	ra,56(sp)
    80001f80:	03013403          	ld	s0,48(sp)
    80001f84:	02813483          	ld	s1,40(sp)
    80001f88:	02013903          	ld	s2,32(sp)
    80001f8c:	01813983          	ld	s3,24(sp)
    80001f90:	01013a03          	ld	s4,16(sp)
    80001f94:	00813a83          	ld	s5,8(sp)
    80001f98:	04010113          	addi	sp,sp,64
    80001f9c:	00008067          	ret
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001fa0:	00000513          	li	a0,0
    80001fa4:	f9dff06f          	j	80001f40 <_ZN3TCBC1EPFvPvES0_mbb+0x50>
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001fa8:	00000797          	auipc	a5,0x0
    80001fac:	e7878793          	addi	a5,a5,-392 # 80001e20 <_ZN3TCB13threadWrapperEv>
    80001fb0:	fb1ff06f          	j	80001f60 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    80001fb4:	00000793          	li	a5,0
    80001fb8:	fa9ff06f          	j	80001f60 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001fbc:	00000513          	li	a0,0
    80001fc0:	fb1ff06f          	j	80001f70 <_ZN3TCBC1EPFvPvES0_mbb+0x80>
    if (body != nullptr && ready) Scheduler::put(this);
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	c14080e7          	jalr	-1004(ra) # 80002bdc <_ZN9Scheduler3putEP3TCB>
}
    80001fd0:	fadff06f          	j	80001f7c <_ZN3TCBC1EPFvPvES0_mbb+0x8c>

0000000080001fd4 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001fd4:	fd010113          	addi	sp,sp,-48
    80001fd8:	02113423          	sd	ra,40(sp)
    80001fdc:	02813023          	sd	s0,32(sp)
    80001fe0:	00913c23          	sd	s1,24(sp)
    80001fe4:	01213823          	sd	s2,16(sp)
    80001fe8:	01313423          	sd	s3,8(sp)
    80001fec:	03010413          	addi	s0,sp,48
    80001ff0:	00050913          	mv	s2,a0
    80001ff4:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    80001ff8:	03800513          	li	a0,56
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	71c080e7          	jalr	1820(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
    80002004:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1, 0);
    80002008:	00000793          	li	a5,0
    8000200c:	00100713          	li	a4,1
    80002010:	00200693          	li	a3,2
    80002014:	00098613          	mv	a2,s3
    80002018:	00090593          	mv	a1,s2
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	ed4080e7          	jalr	-300(ra) # 80001ef0 <_ZN3TCBC1EPFvPvES0_mbb>
    80002024:	0200006f          	j	80002044 <_ZN3TCB9createTCBEPFvPvES0_+0x70>
    80002028:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    8000202c:	00048513          	mv	a0,s1
    80002030:	00000097          	auipc	ra,0x0
    80002034:	774080e7          	jalr	1908(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    80002038:	00090513          	mv	a0,s2
    8000203c:	00008097          	auipc	ra,0x8
    80002040:	2fc080e7          	jalr	764(ra) # 8000a338 <_Unwind_Resume>
}
    80002044:	00048513          	mv	a0,s1
    80002048:	02813083          	ld	ra,40(sp)
    8000204c:	02013403          	ld	s0,32(sp)
    80002050:	01813483          	ld	s1,24(sp)
    80002054:	01013903          	ld	s2,16(sp)
    80002058:	00813983          	ld	s3,8(sp)
    8000205c:	03010113          	addi	sp,sp,48
    80002060:	00008067          	ret

0000000080002064 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    80002064:	fd010113          	addi	sp,sp,-48
    80002068:	02113423          	sd	ra,40(sp)
    8000206c:	02813023          	sd	s0,32(sp)
    80002070:	00913c23          	sd	s1,24(sp)
    80002074:	01213823          	sd	s2,16(sp)
    80002078:	01313423          	sd	s3,8(sp)
    8000207c:	03010413          	addi	s0,sp,48
    80002080:	00050913          	mv	s2,a0
    80002084:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    80002088:	03800513          	li	a0,56
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	68c080e7          	jalr	1676(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
    80002094:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0, 0);
    80002098:	00000793          	li	a5,0
    8000209c:	00000713          	li	a4,0
    800020a0:	00200693          	li	a3,2
    800020a4:	00098613          	mv	a2,s3
    800020a8:	00090593          	mv	a1,s2
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	e44080e7          	jalr	-444(ra) # 80001ef0 <_ZN3TCBC1EPFvPvES0_mbb>
    800020b4:	0200006f          	j	800020d4 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x70>
    800020b8:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    800020bc:	00048513          	mv	a0,s1
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	6e4080e7          	jalr	1764(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    800020c8:	00090513          	mv	a0,s2
    800020cc:	00008097          	auipc	ra,0x8
    800020d0:	26c080e7          	jalr	620(ra) # 8000a338 <_Unwind_Resume>
}
    800020d4:	00048513          	mv	a0,s1
    800020d8:	02813083          	ld	ra,40(sp)
    800020dc:	02013403          	ld	s0,32(sp)
    800020e0:	01813483          	ld	s1,24(sp)
    800020e4:	01013903          	ld	s2,16(sp)
    800020e8:	00813983          	ld	s3,8(sp)
    800020ec:	03010113          	addi	sp,sp,48
    800020f0:	00008067          	ret

00000000800020f4 <_ZN3TCB19createSupervisorTCBEPFvPvES0_>:
TCB *TCB::createSupervisorTCB(TCB::Body body, void *args) {
    800020f4:	fd010113          	addi	sp,sp,-48
    800020f8:	02113423          	sd	ra,40(sp)
    800020fc:	02813023          	sd	s0,32(sp)
    80002100:	00913c23          	sd	s1,24(sp)
    80002104:	01213823          	sd	s2,16(sp)
    80002108:	01313423          	sd	s3,8(sp)
    8000210c:	03010413          	addi	s0,sp,48
    80002110:	00050913          	mv	s2,a0
    80002114:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    80002118:	03800513          	li	a0,56
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	5fc080e7          	jalr	1532(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
    80002124:	00050493          	mv	s1,a0
    (body, args,DEFAULT_TIME_SLICE, true, true);
    80002128:	00100793          	li	a5,1
    8000212c:	00100713          	li	a4,1
    80002130:	00200693          	li	a3,2
    80002134:	00098613          	mv	a2,s3
    80002138:	00090593          	mv	a1,s2
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	db4080e7          	jalr	-588(ra) # 80001ef0 <_ZN3TCBC1EPFvPvES0_mbb>
    80002144:	0200006f          	j	80002164 <_ZN3TCB19createSupervisorTCBEPFvPvES0_+0x70>
    80002148:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    8000214c:	00048513          	mv	a0,s1
    80002150:	00000097          	auipc	ra,0x0
    80002154:	654080e7          	jalr	1620(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    80002158:	00090513          	mv	a0,s2
    8000215c:	00008097          	auipc	ra,0x8
    80002160:	1dc080e7          	jalr	476(ra) # 8000a338 <_Unwind_Resume>
}
    80002164:	00048513          	mv	a0,s1
    80002168:	02813083          	ld	ra,40(sp)
    8000216c:	02013403          	ld	s0,32(sp)
    80002170:	01813483          	ld	s1,24(sp)
    80002174:	01013903          	ld	s2,16(sp)
    80002178:	00813983          	ld	s3,8(sp)
    8000217c:	03010113          	addi	sp,sp,48
    80002180:	00008067          	ret

0000000080002184 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002184:	fe010113          	addi	sp,sp,-32
    80002188:	00113c23          	sd	ra,24(sp)
    8000218c:	00813823          	sd	s0,16(sp)
    80002190:	00913423          	sd	s1,8(sp)
    80002194:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002198:	00007497          	auipc	s1,0x7
    8000219c:	0884b483          	ld	s1,136(s1) # 80009220 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800021a0:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800021a4:	00079663          	bnez	a5,800021b0 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    800021a8:	0194c783          	lbu	a5,25(s1)
    800021ac:	02078c63          	beqz	a5,800021e4 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	9c4080e7          	jalr	-1596(ra) # 80002b74 <_ZN9Scheduler3getEv>
    800021b8:	00007797          	auipc	a5,0x7
    800021bc:	06a7b423          	sd	a0,104(a5) # 80009220 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800021c0:	02850593          	addi	a1,a0,40 # 8028 <_entry-0x7fff7fd8>
    800021c4:	02848513          	addi	a0,s1,40
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	0e8080e7          	jalr	232(ra) # 800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800021d0:	01813083          	ld	ra,24(sp)
    800021d4:	01013403          	ld	s0,16(sp)
    800021d8:	00813483          	ld	s1,8(sp)
    800021dc:	02010113          	addi	sp,sp,32
    800021e0:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800021e4:	00048513          	mv	a0,s1
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	9f4080e7          	jalr	-1548(ra) # 80002bdc <_ZN9Scheduler3putEP3TCB>
    800021f0:	fc1ff06f          	j	800021b0 <_ZN3TCB8dispatchEv+0x2c>

00000000800021f4 <_Z16threadRunWrapperPv>:
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00113423          	sd	ra,8(sp)
    800021fc:	00813023          	sd	s0,0(sp)
    80002200:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) thread;
    t->run();
    80002204:	00053783          	ld	a5,0(a0)
    80002208:	0107b783          	ld	a5,16(a5)
    8000220c:	000780e7          	jalr	a5
}
    80002210:	00813083          	ld	ra,8(sp)
    80002214:	00013403          	ld	s0,0(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00813423          	sd	s0,8(sp)
    80002228:	01010413          	addi	s0,sp,16
    8000222c:	00813403          	ld	s0,8(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret

0000000080002238 <_ZN6ThreadD0Ev>:
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00113423          	sd	ra,8(sp)
    80002240:	00813023          	sd	s0,0(sp)
    80002244:	01010413          	addi	s0,sp,16
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	a50080e7          	jalr	-1456(ra) # 80001c98 <_ZdlPv>
    80002250:	00813083          	ld	ra,8(sp)
    80002254:	00013403          	ld	s0,0(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00113423          	sd	ra,8(sp)
    80002268:	00813023          	sd	s0,0(sp)
    8000226c:	01010413          	addi	s0,sp,16
    80002270:	00006797          	auipc	a5,0x6
    80002274:	5f078793          	addi	a5,a5,1520 # 80008860 <_ZTV9Semaphore+0x10>
    80002278:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000227c:	00853503          	ld	a0,8(a0)
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	dd4080e7          	jalr	-556(ra) # 80001054 <sem_close>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002298:	fe010113          	addi	sp,sp,-32
    8000229c:	00113c23          	sd	ra,24(sp)
    800022a0:	00813823          	sd	s0,16(sp)
    800022a4:	00913423          	sd	s1,8(sp)
    800022a8:	02010413          	addi	s0,sp,32
    800022ac:	00050493          	mv	s1,a0
}
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	fb0080e7          	jalr	-80(ra) # 80002260 <_ZN9SemaphoreD1Ev>
    800022b8:	00048513          	mv	a0,s1
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	9dc080e7          	jalr	-1572(ra) # 80001c98 <_ZdlPv>
    800022c4:	01813083          	ld	ra,24(sp)
    800022c8:	01013403          	ld	s0,16(sp)
    800022cc:	00813483          	ld	s1,8(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00008067          	ret

00000000800022d8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
    800022e8:	00006797          	auipc	a5,0x6
    800022ec:	55078793          	addi	a5,a5,1360 # 80008838 <_ZTV6Thread+0x10>
    800022f0:	00f53023          	sd	a5,0(a0)
    thread_create_deactivated(&myHandle, body, arg);
    800022f4:	00850513          	addi	a0,a0,8
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	d44080e7          	jalr	-700(ra) # 8000103c <thread_create_deactivated>
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret

0000000080002310 <_ZN6Thread5startEv>:
int Thread::start() {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,&threadRunWrapper, this);
    80002320:	00050613          	mv	a2,a0
    80002324:	00000597          	auipc	a1,0x0
    80002328:	ed058593          	addi	a1,a1,-304 # 800021f4 <_Z16threadRunWrapperPv>
    8000232c:	00850513          	addi	a0,a0,8
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	ce8080e7          	jalr	-792(ra) # 80001018 <thread_create>
}
    80002338:	00000513          	li	a0,0
    8000233c:	00813083          	ld	ra,8(sp)
    80002340:	00013403          	ld	s0,0(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	00813023          	sd	s0,0(sp)
    80002358:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	cd4080e7          	jalr	-812(ra) # 80001030 <thread_dispatch>
}
    80002364:	00813083          	ld	ra,8(sp)
    80002368:	00013403          	ld	s0,0(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	00813023          	sd	s0,0(sp)
    80002380:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002384:	fffff097          	auipc	ra,0xfffff
    80002388:	cf4080e7          	jalr	-780(ra) # 80001078 <time_sleep>
}
    8000238c:	00813083          	ld	ra,8(sp)
    80002390:	00013403          	ld	s0,0(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_ZN6ThreadC1Ev>:
Thread::Thread() {}
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00813423          	sd	s0,8(sp)
    800023a4:	01010413          	addi	s0,sp,16
    800023a8:	00006797          	auipc	a5,0x6
    800023ac:	49078793          	addi	a5,a5,1168 # 80008838 <_ZTV6Thread+0x10>
    800023b0:	00f53023          	sd	a5,0(a0)
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00006797          	auipc	a5,0x6
    800023d4:	49078793          	addi	a5,a5,1168 # 80008860 <_ZTV9Semaphore+0x10>
    800023d8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800023dc:	00850513          	addi	a0,a0,8
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	c68080e7          	jalr	-920(ra) # 80001048 <sem_open>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002408:	00853503          	ld	a0,8(a0)
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	c54080e7          	jalr	-940(ra) # 80001060 <sem_wait>
}
    80002414:	00813083          	ld	ra,8(sp)
    80002418:	00013403          	ld	s0,0(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00113423          	sd	ra,8(sp)
    8000242c:	00813023          	sd	s0,0(sp)
    80002430:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002434:	00853503          	ld	a0,8(a0)
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	c34080e7          	jalr	-972(ra) # 8000106c <sem_signal>
}
    80002440:	00813083          	ld	ra,8(sp)
    80002444:	00013403          	ld	s0,0(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN14PeriodicThreadC1Em>:


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    80002450:	fe010113          	addi	sp,sp,-32
    80002454:	00113c23          	sd	ra,24(sp)
    80002458:	00813823          	sd	s0,16(sp)
    8000245c:	00913423          	sd	s1,8(sp)
    80002460:	01213023          	sd	s2,0(sp)
    80002464:	02010413          	addi	s0,sp,32
    80002468:	00050493          	mv	s1,a0
    8000246c:	00058913          	mv	s2,a1
    80002470:	00000097          	auipc	ra,0x0
    80002474:	f2c080e7          	jalr	-212(ra) # 8000239c <_ZN6ThreadC1Ev>
    80002478:	00006797          	auipc	a5,0x6
    8000247c:	39078793          	addi	a5,a5,912 # 80008808 <_ZTV14PeriodicThread+0x10>
    80002480:	00f4b023          	sd	a5,0(s1)
    80002484:	0324b423          	sd	s2,40(s1)
    80002488:	01813083          	ld	ra,24(sp)
    8000248c:	01013403          	ld	s0,16(sp)
    80002490:	00813483          	ld	s1,8(sp)
    80002494:	00013903          	ld	s2,0(sp)
    80002498:	02010113          	addi	sp,sp,32
    8000249c:	00008067          	ret

00000000800024a0 <_ZN7Console4getcEv>:


//CONSOLE

char Console::getc() {
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00113423          	sd	ra,8(sp)
    800024a8:	00813023          	sd	s0,0(sp)
    800024ac:	01010413          	addi	s0,sp,16
    return ::getc();
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	bd4080e7          	jalr	-1068(ra) # 80001084 <getc>
}
    800024b8:	00813083          	ld	ra,8(sp)
    800024bc:	00013403          	ld	s0,0(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16
    ::putc(c);
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	bb8080e7          	jalr	-1096(ra) # 80001090 <putc>
}
    800024e0:	00813083          	ld	ra,8(sp)
    800024e4:	00013403          	ld	s0,0(sp)
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00008067          	ret

00000000800024f0 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00813423          	sd	s0,8(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	00813403          	ld	s0,8(sp)
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00008067          	ret

0000000080002508 <_ZN14PeriodicThread18periodicActivationEv>:
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00813423          	sd	s0,8(sp)
    80002510:	01010413          	addi	s0,sp,16
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    8000252c:	00006797          	auipc	a5,0x6
    80002530:	2dc78793          	addi	a5,a5,732 # 80008808 <_ZTV14PeriodicThread+0x10>
    80002534:	00f53023          	sd	a5,0(a0)
    80002538:	00813403          	ld	s0,8(sp)
    8000253c:	01010113          	addi	sp,sp,16
    80002540:	00008067          	ret

0000000080002544 <_ZN14PeriodicThreadD0Ev>:
    80002544:	ff010113          	addi	sp,sp,-16
    80002548:	00113423          	sd	ra,8(sp)
    8000254c:	00813023          	sd	s0,0(sp)
    80002550:	01010413          	addi	s0,sp,16
    80002554:	00006797          	auipc	a5,0x6
    80002558:	2b478793          	addi	a5,a5,692 # 80008808 <_ZTV14PeriodicThread+0x10>
    8000255c:	00f53023          	sd	a5,0(a0)
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	738080e7          	jalr	1848(ra) # 80001c98 <_ZdlPv>
    80002568:	00813083          	ld	ra,8(sp)
    8000256c:	00013403          	ld	s0,0(sp)
    80002570:	01010113          	addi	sp,sp,16
    80002574:	00008067          	ret

0000000080002578 <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00813423          	sd	s0,8(sp)
    80002580:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    80002584:	00006797          	auipc	a5,0x6
    80002588:	39c7b783          	ld	a5,924(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000258c:	0007b783          	ld	a5,0(a5)
    80002590:	00007697          	auipc	a3,0x7
    80002594:	ca068693          	addi	a3,a3,-864 # 80009230 <_ZN15MemoryAllocator8fMemHeadE>
    80002598:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    8000259c:	00006717          	auipc	a4,0x6
    800025a0:	3b473703          	ld	a4,948(a4) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x50>
    800025a4:	00073703          	ld	a4,0(a4)
    800025a8:	40f70733          	sub	a4,a4,a5
    800025ac:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    800025b0:	0006b783          	ld	a5,0(a3)
    800025b4:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    800025b8:	0007b823          	sd	zero,16(a5)
}
    800025bc:	00813403          	ld	s0,8(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    800025d4:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    800025d8:	00007517          	auipc	a0,0x7
    800025dc:	c5853503          	ld	a0,-936(a0) # 80009230 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    800025e0:	02050063          	beqz	a0,80002600 <_ZN15MemoryAllocator8firstFitEm+0x38>
    800025e4:	01053703          	ld	a4,16(a0)
    800025e8:	00070c63          	beqz	a4,80002600 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    800025ec:	00860793          	addi	a5,a2,8
    800025f0:	00053683          	ld	a3,0(a0)
    800025f4:	00f6fe63          	bgeu	a3,a5,80002610 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    800025f8:	00070513          	mv	a0,a4
    800025fc:	fe5ff06f          	j	800025e0 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80002600:	00050863          	beqz	a0,80002610 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80002604:	00860613          	addi	a2,a2,8
    80002608:	00053783          	ld	a5,0(a0)
    8000260c:	00c7e863          	bltu	a5,a2,8000261c <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80002610:	00813403          	ld	s0,8(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret
    return nullptr;
    8000261c:	00000513          	li	a0,0
    80002620:	ff1ff06f          	j	80002610 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080002624 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00813423          	sd	s0,8(sp)
    8000262c:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80002630:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80002634:	03f57793          	andi	a5,a0,63
    80002638:	00078863          	beqz	a5,80002648 <_ZN15MemoryAllocator8calcSizeEm+0x24>
    8000263c:	04000713          	li	a4,64
    80002640:	40f707b3          	sub	a5,a4,a5
    80002644:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    80002648:	00813403          	ld	s0,8(sp)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret

0000000080002654 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    80002654:	fe010113          	addi	sp,sp,-32
    80002658:	00113c23          	sd	ra,24(sp)
    8000265c:	00813823          	sd	s0,16(sp)
    80002660:	00913423          	sd	s1,8(sp)
    80002664:	02010413          	addi	s0,sp,32
    80002668:	00050493          	mv	s1,a0
    if (node) {
    8000266c:	04050c63          	beqz	a0,800026c4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    80002670:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    80002674:	00000097          	auipc	ra,0x0
    80002678:	fb0080e7          	jalr	-80(ra) # 80002624 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    8000267c:	0004b783          	ld	a5,0(s1)
    80002680:	40a787b3          	sub	a5,a5,a0
    80002684:	03f00713          	li	a4,63
    80002688:	04f77e63          	bgeu	a4,a5,800026e4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    8000268c:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    80002690:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    80002694:	0084b783          	ld	a5,8(s1)
    80002698:	04078063          	beqz	a5,800026d8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    8000269c:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    800026a0:	0104b783          	ld	a5,16(s1)
    800026a4:	00078463          	beqz	a5,800026ac <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    800026a8:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    800026ac:	0104b783          	ld	a5,16(s1)
    800026b0:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    800026b4:	0084b783          	ld	a5,8(s1)
    800026b8:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    800026bc:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    800026c0:	00848513          	addi	a0,s1,8
}
    800026c4:	01813083          	ld	ra,24(sp)
    800026c8:	01013403          	ld	s0,16(sp)
    800026cc:	00813483          	ld	s1,8(sp)
    800026d0:	02010113          	addi	sp,sp,32
    800026d4:	00008067          	ret
            else fMemHead = newNode;
    800026d8:	00007797          	auipc	a5,0x7
    800026dc:	b4e7bc23          	sd	a4,-1192(a5) # 80009230 <_ZN15MemoryAllocator8fMemHeadE>
    800026e0:	fc1ff06f          	j	800026a0 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    800026e4:	0084b783          	ld	a5,8(s1)
    800026e8:	02078063          	beqz	a5,80002708 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    800026ec:	0104b703          	ld	a4,16(s1)
    800026f0:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    800026f4:	0104b783          	ld	a5,16(s1)
    800026f8:	fc0782e3          	beqz	a5,800026bc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    800026fc:	0084b703          	ld	a4,8(s1)
    80002700:	00e7b423          	sd	a4,8(a5)
    80002704:	fb9ff06f          	j	800026bc <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    80002708:	0104b783          	ld	a5,16(s1)
    8000270c:	00007717          	auipc	a4,0x7
    80002710:	b2f73223          	sd	a5,-1244(a4) # 80009230 <_ZN15MemoryAllocator8fMemHeadE>
    80002714:	fe1ff06f          	j	800026f4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

0000000080002718 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    80002718:	fe010113          	addi	sp,sp,-32
    8000271c:	00113c23          	sd	ra,24(sp)
    80002720:	00813823          	sd	s0,16(sp)
    80002724:	00913423          	sd	s1,8(sp)
    80002728:	02010413          	addi	s0,sp,32
    8000272c:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80002730:	00000097          	auipc	ra,0x0
    80002734:	e98080e7          	jalr	-360(ra) # 800025c8 <_ZN15MemoryAllocator8firstFitEm>
    80002738:	00048593          	mv	a1,s1
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	f18080e7          	jalr	-232(ra) # 80002654 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80002744:	01813083          	ld	ra,24(sp)
    80002748:	01013403          	ld	s0,16(sp)
    8000274c:	00813483          	ld	s1,8(sp)
    80002750:	02010113          	addi	sp,sp,32
    80002754:	00008067          	ret

0000000080002758 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00813423          	sd	s0,8(sp)
    80002760:	01010413          	addi	s0,sp,16
    if(!node) return;
    80002764:	02050a63          	beqz	a0,80002798 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    80002768:	01053783          	ld	a5,16(a0)
    8000276c:	02078663          	beqz	a5,80002798 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80002770:	00053703          	ld	a4,0(a0)
    80002774:	00e506b3          	add	a3,a0,a4
    80002778:	02f69063          	bne	a3,a5,80002798 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    8000277c:	0007b683          	ld	a3,0(a5)
    80002780:	00d70733          	add	a4,a4,a3
    80002784:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    80002788:	0107b783          	ld	a5,16(a5)
    8000278c:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    80002790:	00078463          	beqz	a5,80002798 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    80002794:	00a7b423          	sd	a0,8(a5)
}
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    800027a4:	fe010113          	addi	sp,sp,-32
    800027a8:	00113c23          	sd	ra,24(sp)
    800027ac:	00813823          	sd	s0,16(sp)
    800027b0:	00913423          	sd	s1,8(sp)
    800027b4:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    800027b8:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    800027bc:	00007717          	auipc	a4,0x7
    800027c0:	a7473703          	ld	a4,-1420(a4) # 80009230 <_ZN15MemoryAllocator8fMemHeadE>
    800027c4:	02070063          	beqz	a4,800027e4 <_ZN15MemoryAllocator4freeEPv+0x40>
    800027c8:	02a77263          	bgeu	a4,a0,800027ec <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    800027cc:	00070793          	mv	a5,a4
    800027d0:	00078493          	mv	s1,a5
    800027d4:	0107b783          	ld	a5,16(a5)
    800027d8:	00078c63          	beqz	a5,800027f0 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800027dc:	fea7eae3          	bltu	a5,a0,800027d0 <_ZN15MemoryAllocator4freeEPv+0x2c>
    800027e0:	0100006f          	j	800027f0 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    800027e4:	00070493          	mv	s1,a4
    800027e8:	0080006f          	j	800027f0 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800027ec:	00000493          	li	s1,0
    newNode->prev = curr;
    800027f0:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    800027f4:	04048263          	beqz	s1,80002838 <_ZN15MemoryAllocator4freeEPv+0x94>
    800027f8:	0104b783          	ld	a5,16(s1)
    800027fc:	00f53823          	sd	a5,16(a0)
    80002800:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80002804:	01053783          	ld	a5,16(a0)
    80002808:	00078463          	beqz	a5,80002810 <_ZN15MemoryAllocator4freeEPv+0x6c>
    8000280c:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80002810:	00000097          	auipc	ra,0x0
    80002814:	f48080e7          	jalr	-184(ra) # 80002758 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    80002818:	00048513          	mv	a0,s1
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	f3c080e7          	jalr	-196(ra) # 80002758 <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80002824:	01813083          	ld	ra,24(sp)
    80002828:	01013403          	ld	s0,16(sp)
    8000282c:	00813483          	ld	s1,8(sp)
    80002830:	02010113          	addi	sp,sp,32
    80002834:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    80002838:	00e53823          	sd	a4,16(a0)
    8000283c:	00007797          	auipc	a5,0x7
    80002840:	9ea7ba23          	sd	a0,-1548(a5) # 80009230 <_ZN15MemoryAllocator8fMemHeadE>
    80002844:	fc1ff06f          	j	80002804 <_ZN15MemoryAllocator4freeEPv+0x60>

0000000080002848 <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813423          	sd	s0,8(sp)
    80002850:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002854:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002858:	10200073          	sret
    8000285c:	00813403          	ld	s0,8(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <_Z14__print_stringPKc>:

#include "../lib/hw.h"
#include "../h/__print.hpp"
#include "../h/uart.hpp"

void __print_string(char const *string) {
    80002868:	fe010113          	addi	sp,sp,-32
    8000286c:	00113c23          	sd	ra,24(sp)
    80002870:	00813823          	sd	s0,16(sp)
    80002874:	00913423          	sd	s1,8(sp)
    80002878:	02010413          	addi	s0,sp,32
    8000287c:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) Uart::txPut(*c);
    80002880:	0004c503          	lbu	a0,0(s1)
    80002884:	00050a63          	beqz	a0,80002898 <_Z14__print_stringPKc+0x30>
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	1f4080e7          	jalr	500(ra) # 80001a7c <_ZN4Uart5txPutEc>
    80002890:	00148493          	addi	s1,s1,1
    80002894:	fedff06f          	j	80002880 <_Z14__print_stringPKc+0x18>
}
    80002898:	01813083          	ld	ra,24(sp)
    8000289c:	01013403          	ld	s0,16(sp)
    800028a0:	00813483          	ld	s1,8(sp)
    800028a4:	02010113          	addi	sp,sp,32
    800028a8:	00008067          	ret

00000000800028ac <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    800028ac:	fc010113          	addi	sp,sp,-64
    800028b0:	02113c23          	sd	ra,56(sp)
    800028b4:	02813823          	sd	s0,48(sp)
    800028b8:	02913423          	sd	s1,40(sp)
    800028bc:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    800028c0:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    800028c4:	00a00693          	li	a3,10
    800028c8:	02d57633          	remu	a2,a0,a3
    800028cc:	00005717          	auipc	a4,0x5
    800028d0:	8b470713          	addi	a4,a4,-1868 # 80007180 <_ZZ14__print_uint64mE6digits>
    800028d4:	00c70733          	add	a4,a4,a2
    800028d8:	00074703          	lbu	a4,0(a4)
    800028dc:	fe040613          	addi	a2,s0,-32
    800028e0:	009607b3          	add	a5,a2,s1
    800028e4:	0014849b          	addiw	s1,s1,1
    800028e8:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    800028ec:	00050713          	mv	a4,a0
    800028f0:	02d55533          	divu	a0,a0,a3
    800028f4:	00900793          	li	a5,9
    800028f8:	fce7e6e3          	bltu	a5,a4,800028c4 <_Z14__print_uint64m+0x18>
    while(--i >= 0) Uart::txPut(output[i]);
    800028fc:	fff4849b          	addiw	s1,s1,-1
    80002900:	0004ce63          	bltz	s1,8000291c <_Z14__print_uint64m+0x70>
    80002904:	fe040793          	addi	a5,s0,-32
    80002908:	009787b3          	add	a5,a5,s1
    8000290c:	fe87c503          	lbu	a0,-24(a5)
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	16c080e7          	jalr	364(ra) # 80001a7c <_ZN4Uart5txPutEc>
    80002918:	fe5ff06f          	j	800028fc <_Z14__print_uint64m+0x50>
}
    8000291c:	03813083          	ld	ra,56(sp)
    80002920:	03013403          	ld	s0,48(sp)
    80002924:	02813483          	ld	s1,40(sp)
    80002928:	04010113          	addi	sp,sp,64
    8000292c:	00008067          	ret

0000000080002930 <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    80002930:	fe010113          	addi	sp,sp,-32
    80002934:	00113c23          	sd	ra,24(sp)
    80002938:	00813823          	sd	s0,16(sp)
    8000293c:	00913423          	sd	s1,8(sp)
    80002940:	02010413          	addi	s0,sp,32
    80002944:	00050493          	mv	s1,a0
        return MemoryAllocator::allocate(size);
    80002948:	02000513          	li	a0,32
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	dcc080e7          	jalr	-564(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
        }
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80002954:	00053023          	sd	zero,0(a0)
    80002958:	00053423          	sd	zero,8(a0)
    void operator delete[](void* ptr) {
        MemoryAllocator::free(ptr);
    }

private:
    Sem(unsigned init) : init(init), val(init) {}
    8000295c:	00952823          	sw	s1,16(a0)
    80002960:	02049493          	slli	s1,s1,0x20
    80002964:	0204d493          	srli	s1,s1,0x20
    80002968:	00953c23          	sd	s1,24(a0)
    return new Sem(init);
}
    8000296c:	01813083          	ld	ra,24(sp)
    80002970:	01013403          	ld	s0,16(sp)
    80002974:	00813483          	ld	s1,8(sp)
    80002978:	02010113          	addi	sp,sp,32
    8000297c:	00008067          	ret

0000000080002980 <_ZN3SemD1Ev>:

Sem::~Sem() {
    80002980:	fe010113          	addi	sp,sp,-32
    80002984:	00113c23          	sd	ra,24(sp)
    80002988:	00813823          	sd	s0,16(sp)
    8000298c:	00913423          	sd	s1,8(sp)
    80002990:	01213023          	sd	s2,0(sp)
    80002994:	02010413          	addi	s0,sp,32
    80002998:	00050493          	mv	s1,a0
    8000299c:	0280006f          	j	800029c4 <_ZN3SemD1Ev+0x44>
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
    800029a0:	0004b423          	sd	zero,8(s1)
            MemoryAllocator::free(ptr);
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	e00080e7          	jalr	-512(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    while (val < 0) {
        Scheduler::put(list.takeFirst());
    800029ac:	00090513          	mv	a0,s2
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	22c080e7          	jalr	556(ra) # 80002bdc <_ZN9Scheduler3putEP3TCB>
        val++;
    800029b8:	0184b783          	ld	a5,24(s1)
    800029bc:	00178793          	addi	a5,a5,1
    800029c0:	00f4bc23          	sd	a5,24(s1)
    while (val < 0) {
    800029c4:	0184b783          	ld	a5,24(s1)
    800029c8:	0207d463          	bgez	a5,800029f0 <_ZN3SemD1Ev+0x70>
        if (!head) return 0;
    800029cc:	0004b503          	ld	a0,0(s1)
    800029d0:	00050c63          	beqz	a0,800029e8 <_ZN3SemD1Ev+0x68>
        T* ret = head->data;
    800029d4:	00053903          	ld	s2,0(a0)
        head = head->next;
    800029d8:	00853783          	ld	a5,8(a0)
    800029dc:	00f4b023          	sd	a5,0(s1)
        if (!head) tail = 0;
    800029e0:	fc0792e3          	bnez	a5,800029a4 <_ZN3SemD1Ev+0x24>
    800029e4:	fbdff06f          	j	800029a0 <_ZN3SemD1Ev+0x20>
        if (!head) return 0;
    800029e8:	00050913          	mv	s2,a0
    800029ec:	fc1ff06f          	j	800029ac <_ZN3SemD1Ev+0x2c>
    }
}
    800029f0:	01813083          	ld	ra,24(sp)
    800029f4:	01013403          	ld	s0,16(sp)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	00013903          	ld	s2,0(sp)
    80002a00:	02010113          	addi	sp,sp,32
    80002a04:	00008067          	ret

0000000080002a08 <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    if (--val < 0) {
    80002a08:	01853783          	ld	a5,24(a0)
    80002a0c:	fff78793          	addi	a5,a5,-1
    80002a10:	00f53c23          	sd	a5,24(a0)
    80002a14:	0007c663          	bltz	a5,80002a20 <_ZN3Sem7semWaitEv+0x18>
        old->setBlocked(true);
        list.putLast(old);
        TCB::dispatch();
    }
    return 0;
}
    80002a18:	00000513          	li	a0,0
    80002a1c:	00008067          	ret
int Sem::semWait() {
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	01213023          	sd	s2,0(sp)
    80002a34:	02010413          	addi	s0,sp,32
    80002a38:	00050493          	mv	s1,a0
        TCB *old = TCB::running;
    80002a3c:	00006797          	auipc	a5,0x6
    80002a40:	f0c7b783          	ld	a5,-244(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a44:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool val) { blocked = val; }
    80002a48:	00100793          	li	a5,1
    80002a4c:	00f90ca3          	sb	a5,25(s2)
            return MemoryAllocator::allocate(size);
    80002a50:	01000513          	li	a0,16
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	cc4080e7          	jalr	-828(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002a5c:	01253023          	sd	s2,0(a0)
    80002a60:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002a64:	0084b783          	ld	a5,8(s1)
    80002a68:	02078863          	beqz	a5,80002a98 <_ZN3Sem7semWaitEv+0x90>
            tail->next = newNode;
    80002a6c:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002a70:	00a4b423          	sd	a0,8(s1)
        TCB::dispatch();
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	710080e7          	jalr	1808(ra) # 80002184 <_ZN3TCB8dispatchEv>
}
    80002a7c:	00000513          	li	a0,0
    80002a80:	01813083          	ld	ra,24(sp)
    80002a84:	01013403          	ld	s0,16(sp)
    80002a88:	00813483          	ld	s1,8(sp)
    80002a8c:	00013903          	ld	s2,0(sp)
    80002a90:	02010113          	addi	sp,sp,32
    80002a94:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002a98:	00a4b423          	sd	a0,8(s1)
    80002a9c:	00a4b023          	sd	a0,0(s1)
    80002aa0:	fd5ff06f          	j	80002a74 <_ZN3Sem7semWaitEv+0x6c>

0000000080002aa4 <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    80002aa4:	01853703          	ld	a4,24(a0)
    80002aa8:	00170713          	addi	a4,a4,1
    80002aac:	00e53c23          	sd	a4,24(a0)
    80002ab0:	00e05663          	blez	a4,80002abc <_ZN3Sem9semSignalEv+0x18>
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
    80002ab4:	00000513          	li	a0,0
    80002ab8:	00008067          	ret
int Sem::semSignal() {
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00113c23          	sd	ra,24(sp)
    80002ac4:	00813823          	sd	s0,16(sp)
    80002ac8:	00913423          	sd	s1,8(sp)
    80002acc:	02010413          	addi	s0,sp,32
    80002ad0:	00050793          	mv	a5,a0
        if (!head) return 0;
    80002ad4:	00053503          	ld	a0,0(a0)
    80002ad8:	04050663          	beqz	a0,80002b24 <_ZN3Sem9semSignalEv+0x80>
        T* ret = head->data;
    80002adc:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002ae0:	00853703          	ld	a4,8(a0)
    80002ae4:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    80002ae8:	02070a63          	beqz	a4,80002b1c <_ZN3Sem9semSignalEv+0x78>
            MemoryAllocator::free(ptr);
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	cb8080e7          	jalr	-840(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
    80002af4:	00048ca3          	sb	zero,25(s1)
        Scheduler::put(ready);
    80002af8:	00048513          	mv	a0,s1
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	0e0080e7          	jalr	224(ra) # 80002bdc <_ZN9Scheduler3putEP3TCB>
    80002b04:	00000513          	li	a0,0
    80002b08:	01813083          	ld	ra,24(sp)
    80002b0c:	01013403          	ld	s0,16(sp)
    80002b10:	00813483          	ld	s1,8(sp)
    80002b14:	02010113          	addi	sp,sp,32
    80002b18:	00008067          	ret
        if (!head) tail = 0;
    80002b1c:	0007b423          	sd	zero,8(a5)
    80002b20:	fcdff06f          	j	80002aec <_ZN3Sem9semSignalEv+0x48>
        if (!head) return 0;
    80002b24:	00050493          	mv	s1,a0
    80002b28:	fcdff06f          	j	80002af4 <_ZN3Sem9semSignalEv+0x50>

0000000080002b2c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::finish() {
    sleepQueue.deleteList();
    readyQueue.deleteList();
}
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    80002b38:	00100793          	li	a5,1
    80002b3c:	00f50863          	beq	a0,a5,80002b4c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002b40:	00813403          	ld	s0,8(sp)
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret
    80002b4c:	000107b7          	lui	a5,0x10
    80002b50:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b54:	fef596e3          	bne	a1,a5,80002b40 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002b58:	00006797          	auipc	a5,0x6
    80002b5c:	6e078793          	addi	a5,a5,1760 # 80009238 <_ZN9Scheduler10readyQueueE>
    80002b60:	0007b023          	sd	zero,0(a5)
    80002b64:	0007b423          	sd	zero,8(a5)
    80002b68:	0007b823          	sd	zero,16(a5)
    80002b6c:	0007bc23          	sd	zero,24(a5)
    80002b70:	fd1ff06f          	j	80002b40 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002b74 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002b74:	fe010113          	addi	sp,sp,-32
    80002b78:	00113c23          	sd	ra,24(sp)
    80002b7c:	00813823          	sd	s0,16(sp)
    80002b80:	00913423          	sd	s1,8(sp)
    80002b84:	02010413          	addi	s0,sp,32
        if (!head) return 0;
    80002b88:	00006517          	auipc	a0,0x6
    80002b8c:	6b053503          	ld	a0,1712(a0) # 80009238 <_ZN9Scheduler10readyQueueE>
    80002b90:	04050263          	beqz	a0,80002bd4 <_ZN9Scheduler3getEv+0x60>
        T* ret = head->data;
    80002b94:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002b98:	00853783          	ld	a5,8(a0)
    80002b9c:	00006717          	auipc	a4,0x6
    80002ba0:	68f73e23          	sd	a5,1692(a4) # 80009238 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80002ba4:	02078263          	beqz	a5,80002bc8 <_ZN9Scheduler3getEv+0x54>
            MemoryAllocator::free(ptr);
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	bfc080e7          	jalr	-1028(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
}
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	01813083          	ld	ra,24(sp)
    80002bb8:	01013403          	ld	s0,16(sp)
    80002bbc:	00813483          	ld	s1,8(sp)
    80002bc0:	02010113          	addi	sp,sp,32
    80002bc4:	00008067          	ret
        if (!head) tail = 0;
    80002bc8:	00006797          	auipc	a5,0x6
    80002bcc:	6607bc23          	sd	zero,1656(a5) # 80009240 <_ZN9Scheduler10readyQueueE+0x8>
    80002bd0:	fd9ff06f          	j	80002ba8 <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80002bd4:	00050493          	mv	s1,a0
    return ret;
    80002bd8:	fd9ff06f          	j	80002bb0 <_ZN9Scheduler3getEv+0x3c>

0000000080002bdc <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002bdc:	fe010113          	addi	sp,sp,-32
    80002be0:	00113c23          	sd	ra,24(sp)
    80002be4:	00813823          	sd	s0,16(sp)
    80002be8:	00913423          	sd	s1,8(sp)
    80002bec:	02010413          	addi	s0,sp,32
    80002bf0:	00050493          	mv	s1,a0
            return MemoryAllocator::allocate(size);
    80002bf4:	01000513          	li	a0,16
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	b20080e7          	jalr	-1248(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002c00:	00953023          	sd	s1,0(a0)
    80002c04:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002c08:	00006797          	auipc	a5,0x6
    80002c0c:	6387b783          	ld	a5,1592(a5) # 80009240 <_ZN9Scheduler10readyQueueE+0x8>
    80002c10:	02078263          	beqz	a5,80002c34 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80002c14:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002c18:	00006797          	auipc	a5,0x6
    80002c1c:	62a7b423          	sd	a0,1576(a5) # 80009240 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00813483          	ld	s1,8(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002c34:	00006797          	auipc	a5,0x6
    80002c38:	60478793          	addi	a5,a5,1540 # 80009238 <_ZN9Scheduler10readyQueueE>
    80002c3c:	00a7b423          	sd	a0,8(a5)
    80002c40:	00a7b023          	sd	a0,0(a5)
    80002c44:	fddff06f          	j	80002c20 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002c48 <_ZN9Scheduler14timerInterruptEv>:
void Scheduler::timerInterrupt() {
    80002c48:	fe010113          	addi	sp,sp,-32
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	02010413          	addi	s0,sp,32

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002c5c:	00006497          	auipc	s1,0x6
    80002c60:	5ec4b483          	ld	s1,1516(s1) # 80009248 <_ZN9Scheduler10sleepQueueE>
    80002c64:	04048663          	beqz	s1,80002cb0 <_ZN9Scheduler14timerInterruptEv+0x68>
        return head->data;
    80002c68:	0004b483          	ld	s1,0(s1)
    80002c6c:	0440006f          	j	80002cb0 <_ZN9Scheduler14timerInterruptEv+0x68>
        if (!head) tail = 0;
    80002c70:	00006797          	auipc	a5,0x6
    80002c74:	5e07b023          	sd	zero,1504(a5) # 80009250 <_ZN9Scheduler10sleepQueueE+0x8>
            MemoryAllocator::free(ptr);
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	b2c080e7          	jalr	-1236(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
        first->thread->setBlocked(false);
    80002c80:	0084b783          	ld	a5,8(s1)
    80002c84:	00078ca3          	sb	zero,25(a5)
        Scheduler::put(first->thread);
    80002c88:	0084b503          	ld	a0,8(s1)
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	f50080e7          	jalr	-176(ra) # 80002bdc <_ZN9Scheduler3putEP3TCB>
        void* operator new[](size_t size) {
            return MemoryAllocator::allocate(size);
        }

        void operator delete(void* ptr) {
            MemoryAllocator::free(ptr);
    80002c94:	00048513          	mv	a0,s1
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	b0c080e7          	jalr	-1268(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
        if(!head) return 0;
    80002ca0:	00006497          	auipc	s1,0x6
    80002ca4:	5a84b483          	ld	s1,1448(s1) # 80009248 <_ZN9Scheduler10sleepQueueE>
    80002ca8:	02048a63          	beqz	s1,80002cdc <_ZN9Scheduler14timerInterruptEv+0x94>
        return head->data;
    80002cac:	0004b483          	ld	s1,0(s1)
    while(first) {
    80002cb0:	02048663          	beqz	s1,80002cdc <_ZN9Scheduler14timerInterruptEv+0x94>
        if (first->time != 0) break;
    80002cb4:	0004b783          	ld	a5,0(s1)
    80002cb8:	02079263          	bnez	a5,80002cdc <_ZN9Scheduler14timerInterruptEv+0x94>
        if (!head) return 0;
    80002cbc:	00006517          	auipc	a0,0x6
    80002cc0:	58c53503          	ld	a0,1420(a0) # 80009248 <_ZN9Scheduler10sleepQueueE>
    80002cc4:	fa050ee3          	beqz	a0,80002c80 <_ZN9Scheduler14timerInterruptEv+0x38>
        head = head->next;
    80002cc8:	00853783          	ld	a5,8(a0)
    80002ccc:	00006717          	auipc	a4,0x6
    80002cd0:	56f73e23          	sd	a5,1404(a4) # 80009248 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    80002cd4:	fa0792e3          	bnez	a5,80002c78 <_ZN9Scheduler14timerInterruptEv+0x30>
    80002cd8:	f99ff06f          	j	80002c70 <_ZN9Scheduler14timerInterruptEv+0x28>
    if (!first) return;
    80002cdc:	00048863          	beqz	s1,80002cec <_ZN9Scheduler14timerInterruptEv+0xa4>
    first->time--;
    80002ce0:	0004b783          	ld	a5,0(s1)
    80002ce4:	fff78793          	addi	a5,a5,-1
    80002ce8:	00f4b023          	sd	a5,0(s1)
}
    80002cec:	01813083          	ld	ra,24(sp)
    80002cf0:	01013403          	ld	s0,16(sp)
    80002cf4:	00813483          	ld	s1,8(sp)
    80002cf8:	02010113          	addi	sp,sp,32
    80002cfc:	00008067          	ret

0000000080002d00 <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    80002d00:	fd010113          	addi	sp,sp,-48
    80002d04:	02113423          	sd	ra,40(sp)
    80002d08:	02813023          	sd	s0,32(sp)
    80002d0c:	00913c23          	sd	s1,24(sp)
    80002d10:	01213823          	sd	s2,16(sp)
    80002d14:	01313423          	sd	s3,8(sp)
    80002d18:	03010413          	addi	s0,sp,48
    80002d1c:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80002d20:	00006797          	auipc	a5,0x6
    80002d24:	c287b783          	ld	a5,-984(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d28:	0007b983          	ld	s3,0(a5)
    80002d2c:	00100793          	li	a5,1
    80002d30:	00f98ca3          	sb	a5,25(s3)
            return MemoryAllocator::allocate(size);
    80002d34:	01000513          	li	a0,16
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	9e0080e7          	jalr	-1568(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
    80002d40:	00050493          	mv	s1,a0
        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    80002d44:	01253023          	sd	s2,0(a0)
    80002d48:	01353423          	sd	s3,8(a0)
            return MemoryAllocator::allocate(size);
    80002d4c:	01000513          	li	a0,16
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	9c8080e7          	jalr	-1592(ra) # 80002718 <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002d58:	00953023          	sd	s1,0(a0)
    80002d5c:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    80002d60:	00006797          	auipc	a5,0x6
    80002d64:	4e87b783          	ld	a5,1256(a5) # 80009248 <_ZN9Scheduler10sleepQueueE>
    80002d68:	02078a63          	beqz	a5,80002d9c <_ZN9Scheduler9timeSleepEm+0x9c>
        Node* curr = head, *prev = nullptr;
    80002d6c:	00000693          	li	a3,0
        while (curr) {
    80002d70:	04078063          	beqz	a5,80002db0 <_ZN9Scheduler9timeSleepEm+0xb0>
            if (*(uint64*)(newNode->data) < *(uint64*)(curr->data)) {
    80002d74:	00053603          	ld	a2,0(a0)
    80002d78:	00063703          	ld	a4,0(a2)
    80002d7c:	0007b583          	ld	a1,0(a5)
    80002d80:	0005b583          	ld	a1,0(a1)
    80002d84:	02b76663          	bltu	a4,a1,80002db0 <_ZN9Scheduler9timeSleepEm+0xb0>
            *(uint64*)(newNode->data) -= *(uint64*)(curr->data);
    80002d88:	40b70733          	sub	a4,a4,a1
    80002d8c:	00e63023          	sd	a4,0(a2)
            prev = curr;
    80002d90:	00078693          	mv	a3,a5
            curr = curr->next;
    80002d94:	0087b783          	ld	a5,8(a5)
        while (curr) {
    80002d98:	fd9ff06f          	j	80002d70 <_ZN9Scheduler9timeSleepEm+0x70>
        if (!head) { head = tail = newNode; return; }
    80002d9c:	00006797          	auipc	a5,0x6
    80002da0:	49c78793          	addi	a5,a5,1180 # 80009238 <_ZN9Scheduler10readyQueueE>
    80002da4:	00a7bc23          	sd	a0,24(a5)
    80002da8:	00a7b823          	sd	a0,16(a5)
    80002dac:	02c0006f          	j	80002dd8 <_ZN9Scheduler9timeSleepEm+0xd8>
        if (prev) prev->next = newNode;
    80002db0:	04068663          	beqz	a3,80002dfc <_ZN9Scheduler9timeSleepEm+0xfc>
    80002db4:	00a6b423          	sd	a0,8(a3)
        if (curr) {newNode->next = curr; *(uint64*)(curr->data) -= *(uint64*)(newNode->data);}
    80002db8:	04078863          	beqz	a5,80002e08 <_ZN9Scheduler9timeSleepEm+0x108>
    80002dbc:	00f53423          	sd	a5,8(a0)
    80002dc0:	0007b703          	ld	a4,0(a5)
    80002dc4:	00053683          	ld	a3,0(a0)
    80002dc8:	00073783          	ld	a5,0(a4)
    80002dcc:	0006b683          	ld	a3,0(a3)
    80002dd0:	40d787b3          	sub	a5,a5,a3
    80002dd4:	00f73023          	sd	a5,0(a4)
    TCB::dispatch();
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	3ac080e7          	jalr	940(ra) # 80002184 <_ZN3TCB8dispatchEv>
}
    80002de0:	02813083          	ld	ra,40(sp)
    80002de4:	02013403          	ld	s0,32(sp)
    80002de8:	01813483          	ld	s1,24(sp)
    80002dec:	01013903          	ld	s2,16(sp)
    80002df0:	00813983          	ld	s3,8(sp)
    80002df4:	03010113          	addi	sp,sp,48
    80002df8:	00008067          	ret
        else head = newNode;
    80002dfc:	00006717          	auipc	a4,0x6
    80002e00:	44a73623          	sd	a0,1100(a4) # 80009248 <_ZN9Scheduler10sleepQueueE>
    80002e04:	fb5ff06f          	j	80002db8 <_ZN9Scheduler9timeSleepEm+0xb8>
        else prev->next = newNode;
    80002e08:	00a6b423          	sd	a0,8(a3)
    80002e0c:	fcdff06f          	j	80002dd8 <_ZN9Scheduler9timeSleepEm+0xd8>

0000000080002e10 <_ZN9Scheduler6finishEv>:
void Scheduler::finish() {
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00113423          	sd	ra,8(sp)
    80002e18:	00813023          	sd	s0,0(sp)
    80002e1c:	01010413          	addi	s0,sp,16

        tail = 0;
    }*/

    void deleteList() {
        while (head) {
    80002e20:	00006517          	auipc	a0,0x6
    80002e24:	42853503          	ld	a0,1064(a0) # 80009248 <_ZN9Scheduler10sleepQueueE>
    80002e28:	02050063          	beqz	a0,80002e48 <_ZN9Scheduler6finishEv+0x38>
            Node *old = head;
            head = head->next;
    80002e2c:	00853783          	ld	a5,8(a0)
    80002e30:	00006717          	auipc	a4,0x6
    80002e34:	40f73c23          	sd	a5,1048(a4) # 80009248 <_ZN9Scheduler10sleepQueueE>
            delete old;
    80002e38:	fe0504e3          	beqz	a0,80002e20 <_ZN9Scheduler6finishEv+0x10>
            MemoryAllocator::free(ptr);
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	968080e7          	jalr	-1688(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
        }
    80002e44:	fddff06f          	j	80002e20 <_ZN9Scheduler6finishEv+0x10>
        }

        tail = 0;
    80002e48:	00006797          	auipc	a5,0x6
    80002e4c:	4007b423          	sd	zero,1032(a5) # 80009250 <_ZN9Scheduler10sleepQueueE+0x8>
        while (head) {
    80002e50:	00006517          	auipc	a0,0x6
    80002e54:	3e853503          	ld	a0,1000(a0) # 80009238 <_ZN9Scheduler10readyQueueE>
    80002e58:	02050063          	beqz	a0,80002e78 <_ZN9Scheduler6finishEv+0x68>
            head = head->next;
    80002e5c:	00853783          	ld	a5,8(a0)
    80002e60:	00006717          	auipc	a4,0x6
    80002e64:	3cf73c23          	sd	a5,984(a4) # 80009238 <_ZN9Scheduler10readyQueueE>
            delete old;
    80002e68:	fe0504e3          	beqz	a0,80002e50 <_ZN9Scheduler6finishEv+0x40>
            MemoryAllocator::free(ptr);
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	938080e7          	jalr	-1736(ra) # 800027a4 <_ZN15MemoryAllocator4freeEPv>
        }
    80002e74:	fddff06f          	j	80002e50 <_ZN9Scheduler6finishEv+0x40>
        tail = 0;
    80002e78:	00006797          	auipc	a5,0x6
    80002e7c:	3c07b423          	sd	zero,968(a5) # 80009240 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002e80:	00813083          	ld	ra,8(sp)
    80002e84:	00013403          	ld	s0,0(sp)
    80002e88:	01010113          	addi	sp,sp,16
    80002e8c:	00008067          	ret

0000000080002e90 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80002e90:	ff010113          	addi	sp,sp,-16
    80002e94:	00113423          	sd	ra,8(sp)
    80002e98:	00813023          	sd	s0,0(sp)
    80002e9c:	01010413          	addi	s0,sp,16
    80002ea0:	000105b7          	lui	a1,0x10
    80002ea4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ea8:	00100513          	li	a0,1
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	c80080e7          	jalr	-896(ra) # 80002b2c <_Z41__static_initialization_and_destruction_0ii>
    80002eb4:	00813083          	ld	ra,8(sp)
    80002eb8:	00013403          	ld	s0,0(sp)
    80002ebc:	01010113          	addi	sp,sp,16
    80002ec0:	00008067          	ret

0000000080002ec4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ec4:	fe010113          	addi	sp,sp,-32
    80002ec8:	00113c23          	sd	ra,24(sp)
    80002ecc:	00813823          	sd	s0,16(sp)
    80002ed0:	00913423          	sd	s1,8(sp)
    80002ed4:	02010413          	addi	s0,sp,32
    80002ed8:	00050493          	mv	s1,a0
    LOCK();
    80002edc:	00100613          	li	a2,1
    80002ee0:	00000593          	li	a1,0
    80002ee4:	00006517          	auipc	a0,0x6
    80002ee8:	37450513          	addi	a0,a0,884 # 80009258 <lockPrint>
    80002eec:	ffffe097          	auipc	ra,0xffffe
    80002ef0:	3d8080e7          	jalr	984(ra) # 800012c4 <copy_and_swap>
    80002ef4:	fe0514e3          	bnez	a0,80002edc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002ef8:	0004c503          	lbu	a0,0(s1)
    80002efc:	00050a63          	beqz	a0,80002f10 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002f00:	ffffe097          	auipc	ra,0xffffe
    80002f04:	190080e7          	jalr	400(ra) # 80001090 <putc>
        string++;
    80002f08:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f0c:	fedff06f          	j	80002ef8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002f10:	00000613          	li	a2,0
    80002f14:	00100593          	li	a1,1
    80002f18:	00006517          	auipc	a0,0x6
    80002f1c:	34050513          	addi	a0,a0,832 # 80009258 <lockPrint>
    80002f20:	ffffe097          	auipc	ra,0xffffe
    80002f24:	3a4080e7          	jalr	932(ra) # 800012c4 <copy_and_swap>
    80002f28:	fe0514e3          	bnez	a0,80002f10 <_Z11printStringPKc+0x4c>
}
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	00813483          	ld	s1,8(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret

0000000080002f40 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f40:	fd010113          	addi	sp,sp,-48
    80002f44:	02113423          	sd	ra,40(sp)
    80002f48:	02813023          	sd	s0,32(sp)
    80002f4c:	00913c23          	sd	s1,24(sp)
    80002f50:	01213823          	sd	s2,16(sp)
    80002f54:	01313423          	sd	s3,8(sp)
    80002f58:	01413023          	sd	s4,0(sp)
    80002f5c:	03010413          	addi	s0,sp,48
    80002f60:	00050993          	mv	s3,a0
    80002f64:	00058a13          	mv	s4,a1
    LOCK();
    80002f68:	00100613          	li	a2,1
    80002f6c:	00000593          	li	a1,0
    80002f70:	00006517          	auipc	a0,0x6
    80002f74:	2e850513          	addi	a0,a0,744 # 80009258 <lockPrint>
    80002f78:	ffffe097          	auipc	ra,0xffffe
    80002f7c:	34c080e7          	jalr	844(ra) # 800012c4 <copy_and_swap>
    80002f80:	fe0514e3          	bnez	a0,80002f68 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f84:	00000913          	li	s2,0
    80002f88:	00090493          	mv	s1,s2
    80002f8c:	0019091b          	addiw	s2,s2,1
    80002f90:	03495a63          	bge	s2,s4,80002fc4 <_Z9getStringPci+0x84>
        cc = getc();
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	0f0080e7          	jalr	240(ra) # 80001084 <getc>
        if(cc < 1)
    80002f9c:	02050463          	beqz	a0,80002fc4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002fa0:	009984b3          	add	s1,s3,s1
    80002fa4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002fa8:	00a00793          	li	a5,10
    80002fac:	00f50a63          	beq	a0,a5,80002fc0 <_Z9getStringPci+0x80>
    80002fb0:	00d00793          	li	a5,13
    80002fb4:	fcf51ae3          	bne	a0,a5,80002f88 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002fb8:	00090493          	mv	s1,s2
    80002fbc:	0080006f          	j	80002fc4 <_Z9getStringPci+0x84>
    80002fc0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002fc4:	009984b3          	add	s1,s3,s1
    80002fc8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002fcc:	00000613          	li	a2,0
    80002fd0:	00100593          	li	a1,1
    80002fd4:	00006517          	auipc	a0,0x6
    80002fd8:	28450513          	addi	a0,a0,644 # 80009258 <lockPrint>
    80002fdc:	ffffe097          	auipc	ra,0xffffe
    80002fe0:	2e8080e7          	jalr	744(ra) # 800012c4 <copy_and_swap>
    80002fe4:	fe0514e3          	bnez	a0,80002fcc <_Z9getStringPci+0x8c>
    return buf;
}
    80002fe8:	00098513          	mv	a0,s3
    80002fec:	02813083          	ld	ra,40(sp)
    80002ff0:	02013403          	ld	s0,32(sp)
    80002ff4:	01813483          	ld	s1,24(sp)
    80002ff8:	01013903          	ld	s2,16(sp)
    80002ffc:	00813983          	ld	s3,8(sp)
    80003000:	00013a03          	ld	s4,0(sp)
    80003004:	03010113          	addi	sp,sp,48
    80003008:	00008067          	ret

000000008000300c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00813423          	sd	s0,8(sp)
    80003014:	01010413          	addi	s0,sp,16
    80003018:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000301c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003020:	0006c603          	lbu	a2,0(a3)
    80003024:	fd06071b          	addiw	a4,a2,-48
    80003028:	0ff77713          	andi	a4,a4,255
    8000302c:	00900793          	li	a5,9
    80003030:	02e7e063          	bltu	a5,a4,80003050 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003034:	0025179b          	slliw	a5,a0,0x2
    80003038:	00a787bb          	addw	a5,a5,a0
    8000303c:	0017979b          	slliw	a5,a5,0x1
    80003040:	00168693          	addi	a3,a3,1
    80003044:	00c787bb          	addw	a5,a5,a2
    80003048:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000304c:	fd5ff06f          	j	80003020 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003050:	00813403          	ld	s0,8(sp)
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00008067          	ret

000000008000305c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000305c:	fc010113          	addi	sp,sp,-64
    80003060:	02113c23          	sd	ra,56(sp)
    80003064:	02813823          	sd	s0,48(sp)
    80003068:	02913423          	sd	s1,40(sp)
    8000306c:	03213023          	sd	s2,32(sp)
    80003070:	01313c23          	sd	s3,24(sp)
    80003074:	04010413          	addi	s0,sp,64
    80003078:	00050493          	mv	s1,a0
    8000307c:	00058913          	mv	s2,a1
    80003080:	00060993          	mv	s3,a2
    LOCK();
    80003084:	00100613          	li	a2,1
    80003088:	00000593          	li	a1,0
    8000308c:	00006517          	auipc	a0,0x6
    80003090:	1cc50513          	addi	a0,a0,460 # 80009258 <lockPrint>
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	230080e7          	jalr	560(ra) # 800012c4 <copy_and_swap>
    8000309c:	fe0514e3          	bnez	a0,80003084 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800030a0:	00098463          	beqz	s3,800030a8 <_Z8printIntiii+0x4c>
    800030a4:	0804c463          	bltz	s1,8000312c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800030a8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800030ac:	00000593          	li	a1,0
    }

    i = 0;
    800030b0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030b4:	0009079b          	sext.w	a5,s2
    800030b8:	0325773b          	remuw	a4,a0,s2
    800030bc:	00048613          	mv	a2,s1
    800030c0:	0014849b          	addiw	s1,s1,1
    800030c4:	02071693          	slli	a3,a4,0x20
    800030c8:	0206d693          	srli	a3,a3,0x20
    800030cc:	00005717          	auipc	a4,0x5
    800030d0:	7a470713          	addi	a4,a4,1956 # 80008870 <digits>
    800030d4:	00d70733          	add	a4,a4,a3
    800030d8:	00074683          	lbu	a3,0(a4)
    800030dc:	fd040713          	addi	a4,s0,-48
    800030e0:	00c70733          	add	a4,a4,a2
    800030e4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800030e8:	0005071b          	sext.w	a4,a0
    800030ec:	0325553b          	divuw	a0,a0,s2
    800030f0:	fcf772e3          	bgeu	a4,a5,800030b4 <_Z8printIntiii+0x58>
    if(neg)
    800030f4:	00058c63          	beqz	a1,8000310c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800030f8:	fd040793          	addi	a5,s0,-48
    800030fc:	009784b3          	add	s1,a5,s1
    80003100:	02d00793          	li	a5,45
    80003104:	fef48823          	sb	a5,-16(s1)
    80003108:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000310c:	fff4849b          	addiw	s1,s1,-1
    80003110:	0204c463          	bltz	s1,80003138 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003114:	fd040793          	addi	a5,s0,-48
    80003118:	009787b3          	add	a5,a5,s1
    8000311c:	ff07c503          	lbu	a0,-16(a5)
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	f70080e7          	jalr	-144(ra) # 80001090 <putc>
    80003128:	fe5ff06f          	j	8000310c <_Z8printIntiii+0xb0>
        x = -xx;
    8000312c:	4090053b          	negw	a0,s1
        neg = 1;
    80003130:	00100593          	li	a1,1
        x = -xx;
    80003134:	f7dff06f          	j	800030b0 <_Z8printIntiii+0x54>

    UNLOCK();
    80003138:	00000613          	li	a2,0
    8000313c:	00100593          	li	a1,1
    80003140:	00006517          	auipc	a0,0x6
    80003144:	11850513          	addi	a0,a0,280 # 80009258 <lockPrint>
    80003148:	ffffe097          	auipc	ra,0xffffe
    8000314c:	17c080e7          	jalr	380(ra) # 800012c4 <copy_and_swap>
    80003150:	fe0514e3          	bnez	a0,80003138 <_Z8printIntiii+0xdc>
    80003154:	03813083          	ld	ra,56(sp)
    80003158:	03013403          	ld	s0,48(sp)
    8000315c:	02813483          	ld	s1,40(sp)
    80003160:	02013903          	ld	s2,32(sp)
    80003164:	01813983          	ld	s3,24(sp)
    80003168:	04010113          	addi	sp,sp,64
    8000316c:	00008067          	ret

0000000080003170 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003170:	fd010113          	addi	sp,sp,-48
    80003174:	02113423          	sd	ra,40(sp)
    80003178:	02813023          	sd	s0,32(sp)
    8000317c:	00913c23          	sd	s1,24(sp)
    80003180:	01213823          	sd	s2,16(sp)
    80003184:	01313423          	sd	s3,8(sp)
    80003188:	03010413          	addi	s0,sp,48
    8000318c:	00050493          	mv	s1,a0
    80003190:	00058913          	mv	s2,a1
    80003194:	0015879b          	addiw	a5,a1,1
    80003198:	0007851b          	sext.w	a0,a5
    8000319c:	00f4a023          	sw	a5,0(s1)
    800031a0:	0004a823          	sw	zero,16(s1)
    800031a4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800031a8:	00251513          	slli	a0,a0,0x2
    800031ac:	ffffe097          	auipc	ra,0xffffe
    800031b0:	e54080e7          	jalr	-428(ra) # 80001000 <mem_alloc>
    800031b4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800031b8:	01000513          	li	a0,16
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	a8c080e7          	jalr	-1396(ra) # 80001c48 <_Znwm>
    800031c4:	00050993          	mv	s3,a0
    800031c8:	00000593          	li	a1,0
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	1f4080e7          	jalr	500(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    800031d4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800031d8:	01000513          	li	a0,16
    800031dc:	fffff097          	auipc	ra,0xfffff
    800031e0:	a6c080e7          	jalr	-1428(ra) # 80001c48 <_Znwm>
    800031e4:	00050993          	mv	s3,a0
    800031e8:	00090593          	mv	a1,s2
    800031ec:	fffff097          	auipc	ra,0xfffff
    800031f0:	1d4080e7          	jalr	468(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    800031f4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800031f8:	01000513          	li	a0,16
    800031fc:	fffff097          	auipc	ra,0xfffff
    80003200:	a4c080e7          	jalr	-1460(ra) # 80001c48 <_Znwm>
    80003204:	00050913          	mv	s2,a0
    80003208:	00100593          	li	a1,1
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	1b4080e7          	jalr	436(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    80003214:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003218:	01000513          	li	a0,16
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	a2c080e7          	jalr	-1492(ra) # 80001c48 <_Znwm>
    80003224:	00050913          	mv	s2,a0
    80003228:	00100593          	li	a1,1
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	194080e7          	jalr	404(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    80003234:	0324b823          	sd	s2,48(s1)
}
    80003238:	02813083          	ld	ra,40(sp)
    8000323c:	02013403          	ld	s0,32(sp)
    80003240:	01813483          	ld	s1,24(sp)
    80003244:	01013903          	ld	s2,16(sp)
    80003248:	00813983          	ld	s3,8(sp)
    8000324c:	03010113          	addi	sp,sp,48
    80003250:	00008067          	ret
    80003254:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003258:	00098513          	mv	a0,s3
    8000325c:	fffff097          	auipc	ra,0xfffff
    80003260:	a3c080e7          	jalr	-1476(ra) # 80001c98 <_ZdlPv>
    80003264:	00048513          	mv	a0,s1
    80003268:	00007097          	auipc	ra,0x7
    8000326c:	0d0080e7          	jalr	208(ra) # 8000a338 <_Unwind_Resume>
    80003270:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003274:	00098513          	mv	a0,s3
    80003278:	fffff097          	auipc	ra,0xfffff
    8000327c:	a20080e7          	jalr	-1504(ra) # 80001c98 <_ZdlPv>
    80003280:	00048513          	mv	a0,s1
    80003284:	00007097          	auipc	ra,0x7
    80003288:	0b4080e7          	jalr	180(ra) # 8000a338 <_Unwind_Resume>
    8000328c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003290:	00090513          	mv	a0,s2
    80003294:	fffff097          	auipc	ra,0xfffff
    80003298:	a04080e7          	jalr	-1532(ra) # 80001c98 <_ZdlPv>
    8000329c:	00048513          	mv	a0,s1
    800032a0:	00007097          	auipc	ra,0x7
    800032a4:	098080e7          	jalr	152(ra) # 8000a338 <_Unwind_Resume>
    800032a8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800032ac:	00090513          	mv	a0,s2
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	9e8080e7          	jalr	-1560(ra) # 80001c98 <_ZdlPv>
    800032b8:	00048513          	mv	a0,s1
    800032bc:	00007097          	auipc	ra,0x7
    800032c0:	07c080e7          	jalr	124(ra) # 8000a338 <_Unwind_Resume>

00000000800032c4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	01213023          	sd	s2,0(sp)
    800032d8:	02010413          	addi	s0,sp,32
    800032dc:	00050493          	mv	s1,a0
    800032e0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800032e4:	01853503          	ld	a0,24(a0)
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	110080e7          	jalr	272(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800032f0:	0304b503          	ld	a0,48(s1)
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	104080e7          	jalr	260(ra) # 800023f8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800032fc:	0084b783          	ld	a5,8(s1)
    80003300:	0144a703          	lw	a4,20(s1)
    80003304:	00271713          	slli	a4,a4,0x2
    80003308:	00e787b3          	add	a5,a5,a4
    8000330c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003310:	0144a783          	lw	a5,20(s1)
    80003314:	0017879b          	addiw	a5,a5,1
    80003318:	0004a703          	lw	a4,0(s1)
    8000331c:	02e7e7bb          	remw	a5,a5,a4
    80003320:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003324:	0304b503          	ld	a0,48(s1)
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	0fc080e7          	jalr	252(ra) # 80002424 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003330:	0204b503          	ld	a0,32(s1)
    80003334:	fffff097          	auipc	ra,0xfffff
    80003338:	0f0080e7          	jalr	240(ra) # 80002424 <_ZN9Semaphore6signalEv>

}
    8000333c:	01813083          	ld	ra,24(sp)
    80003340:	01013403          	ld	s0,16(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	00013903          	ld	s2,0(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret

0000000080003354 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003354:	fe010113          	addi	sp,sp,-32
    80003358:	00113c23          	sd	ra,24(sp)
    8000335c:	00813823          	sd	s0,16(sp)
    80003360:	00913423          	sd	s1,8(sp)
    80003364:	01213023          	sd	s2,0(sp)
    80003368:	02010413          	addi	s0,sp,32
    8000336c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003370:	02053503          	ld	a0,32(a0)
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	084080e7          	jalr	132(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000337c:	0284b503          	ld	a0,40(s1)
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	078080e7          	jalr	120(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003388:	0084b703          	ld	a4,8(s1)
    8000338c:	0104a783          	lw	a5,16(s1)
    80003390:	00279693          	slli	a3,a5,0x2
    80003394:	00d70733          	add	a4,a4,a3
    80003398:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000339c:	0017879b          	addiw	a5,a5,1
    800033a0:	0004a703          	lw	a4,0(s1)
    800033a4:	02e7e7bb          	remw	a5,a5,a4
    800033a8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800033ac:	0284b503          	ld	a0,40(s1)
    800033b0:	fffff097          	auipc	ra,0xfffff
    800033b4:	074080e7          	jalr	116(ra) # 80002424 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800033b8:	0184b503          	ld	a0,24(s1)
    800033bc:	fffff097          	auipc	ra,0xfffff
    800033c0:	068080e7          	jalr	104(ra) # 80002424 <_ZN9Semaphore6signalEv>

    return ret;
}
    800033c4:	00090513          	mv	a0,s2
    800033c8:	01813083          	ld	ra,24(sp)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	00813483          	ld	s1,8(sp)
    800033d4:	00013903          	ld	s2,0(sp)
    800033d8:	02010113          	addi	sp,sp,32
    800033dc:	00008067          	ret

00000000800033e0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800033e0:	fe010113          	addi	sp,sp,-32
    800033e4:	00113c23          	sd	ra,24(sp)
    800033e8:	00813823          	sd	s0,16(sp)
    800033ec:	00913423          	sd	s1,8(sp)
    800033f0:	01213023          	sd	s2,0(sp)
    800033f4:	02010413          	addi	s0,sp,32
    800033f8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800033fc:	02853503          	ld	a0,40(a0)
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	ff8080e7          	jalr	-8(ra) # 800023f8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003408:	0304b503          	ld	a0,48(s1)
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	fec080e7          	jalr	-20(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003414:	0144a783          	lw	a5,20(s1)
    80003418:	0104a903          	lw	s2,16(s1)
    8000341c:	0327ce63          	blt	a5,s2,80003458 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003420:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003424:	0304b503          	ld	a0,48(s1)
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	ffc080e7          	jalr	-4(ra) # 80002424 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003430:	0284b503          	ld	a0,40(s1)
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	ff0080e7          	jalr	-16(ra) # 80002424 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000343c:	00090513          	mv	a0,s2
    80003440:	01813083          	ld	ra,24(sp)
    80003444:	01013403          	ld	s0,16(sp)
    80003448:	00813483          	ld	s1,8(sp)
    8000344c:	00013903          	ld	s2,0(sp)
    80003450:	02010113          	addi	sp,sp,32
    80003454:	00008067          	ret
        ret = cap - head + tail;
    80003458:	0004a703          	lw	a4,0(s1)
    8000345c:	4127093b          	subw	s2,a4,s2
    80003460:	00f9093b          	addw	s2,s2,a5
    80003464:	fc1ff06f          	j	80003424 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003468 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	02010413          	addi	s0,sp,32
    8000347c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003480:	00a00513          	li	a0,10
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	044080e7          	jalr	68(ra) # 800024c8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000348c:	00004517          	auipc	a0,0x4
    80003490:	d0450513          	addi	a0,a0,-764 # 80007190 <_ZZ14__print_uint64mE6digits+0x10>
    80003494:	00000097          	auipc	ra,0x0
    80003498:	a30080e7          	jalr	-1488(ra) # 80002ec4 <_Z11printStringPKc>
    while (getCnt()) {
    8000349c:	00048513          	mv	a0,s1
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	f40080e7          	jalr	-192(ra) # 800033e0 <_ZN9BufferCPP6getCntEv>
    800034a8:	02050c63          	beqz	a0,800034e0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800034ac:	0084b783          	ld	a5,8(s1)
    800034b0:	0104a703          	lw	a4,16(s1)
    800034b4:	00271713          	slli	a4,a4,0x2
    800034b8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800034bc:	0007c503          	lbu	a0,0(a5)
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	008080e7          	jalr	8(ra) # 800024c8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800034c8:	0104a783          	lw	a5,16(s1)
    800034cc:	0017879b          	addiw	a5,a5,1
    800034d0:	0004a703          	lw	a4,0(s1)
    800034d4:	02e7e7bb          	remw	a5,a5,a4
    800034d8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800034dc:	fc1ff06f          	j	8000349c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800034e0:	02100513          	li	a0,33
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	fe4080e7          	jalr	-28(ra) # 800024c8 <_ZN7Console4putcEc>
    Console::putc('\n');
    800034ec:	00a00513          	li	a0,10
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	fd8080e7          	jalr	-40(ra) # 800024c8 <_ZN7Console4putcEc>
    mem_free(buffer);
    800034f8:	0084b503          	ld	a0,8(s1)
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	b10080e7          	jalr	-1264(ra) # 8000100c <mem_free>
    delete itemAvailable;
    80003504:	0204b503          	ld	a0,32(s1)
    80003508:	00050863          	beqz	a0,80003518 <_ZN9BufferCPPD1Ev+0xb0>
    8000350c:	00053783          	ld	a5,0(a0)
    80003510:	0087b783          	ld	a5,8(a5)
    80003514:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003518:	0184b503          	ld	a0,24(s1)
    8000351c:	00050863          	beqz	a0,8000352c <_ZN9BufferCPPD1Ev+0xc4>
    80003520:	00053783          	ld	a5,0(a0)
    80003524:	0087b783          	ld	a5,8(a5)
    80003528:	000780e7          	jalr	a5
    delete mutexTail;
    8000352c:	0304b503          	ld	a0,48(s1)
    80003530:	00050863          	beqz	a0,80003540 <_ZN9BufferCPPD1Ev+0xd8>
    80003534:	00053783          	ld	a5,0(a0)
    80003538:	0087b783          	ld	a5,8(a5)
    8000353c:	000780e7          	jalr	a5
    delete mutexHead;
    80003540:	0284b503          	ld	a0,40(s1)
    80003544:	00050863          	beqz	a0,80003554 <_ZN9BufferCPPD1Ev+0xec>
    80003548:	00053783          	ld	a5,0(a0)
    8000354c:	0087b783          	ld	a5,8(a5)
    80003550:	000780e7          	jalr	a5
}
    80003554:	01813083          	ld	ra,24(sp)
    80003558:	01013403          	ld	s0,16(sp)
    8000355c:	00813483          	ld	s1,8(sp)
    80003560:	02010113          	addi	sp,sp,32
    80003564:	00008067          	ret

0000000080003568 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80003568:	f8010113          	addi	sp,sp,-128
    8000356c:	06113c23          	sd	ra,120(sp)
    80003570:	06813823          	sd	s0,112(sp)
    80003574:	06913423          	sd	s1,104(sp)
    80003578:	07213023          	sd	s2,96(sp)
    8000357c:	05313c23          	sd	s3,88(sp)
    80003580:	05413823          	sd	s4,80(sp)
    80003584:	05513423          	sd	s5,72(sp)
    80003588:	05613023          	sd	s6,64(sp)
    8000358c:	03713c23          	sd	s7,56(sp)
    80003590:	03813823          	sd	s8,48(sp)
    80003594:	03913423          	sd	s9,40(sp)
    80003598:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    8000359c:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    800035a0:	00004517          	auipc	a0,0x4
    800035a4:	c0850513          	addi	a0,a0,-1016 # 800071a8 <_ZZ14__print_uint64mE6digits+0x28>
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	91c080e7          	jalr	-1764(ra) # 80002ec4 <_Z11printStringPKc>
        getString(input, 30);
    800035b0:	01e00593          	li	a1,30
    800035b4:	f8040493          	addi	s1,s0,-128
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	984080e7          	jalr	-1660(ra) # 80002f40 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	a44080e7          	jalr	-1468(ra) # 8000300c <_Z11stringToIntPKc>
    800035d0:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    800035d4:	00004517          	auipc	a0,0x4
    800035d8:	bf450513          	addi	a0,a0,-1036 # 800071c8 <_ZZ14__print_uint64mE6digits+0x48>
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	8e8080e7          	jalr	-1816(ra) # 80002ec4 <_Z11printStringPKc>
        getString(input, 30);
    800035e4:	01e00593          	li	a1,30
    800035e8:	00048513          	mv	a0,s1
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	954080e7          	jalr	-1708(ra) # 80002f40 <_Z9getStringPci>
        n = stringToInt(input);
    800035f4:	00048513          	mv	a0,s1
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	a14080e7          	jalr	-1516(ra) # 8000300c <_Z11stringToIntPKc>
    80003600:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80003604:	00004517          	auipc	a0,0x4
    80003608:	be450513          	addi	a0,a0,-1052 # 800071e8 <_ZZ14__print_uint64mE6digits+0x68>
    8000360c:	00000097          	auipc	ra,0x0
    80003610:	8b8080e7          	jalr	-1864(ra) # 80002ec4 <_Z11printStringPKc>
    80003614:	00000613          	li	a2,0
    80003618:	00a00593          	li	a1,10
    8000361c:	00098513          	mv	a0,s3
    80003620:	00000097          	auipc	ra,0x0
    80003624:	a3c080e7          	jalr	-1476(ra) # 8000305c <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80003628:	00004517          	auipc	a0,0x4
    8000362c:	bd850513          	addi	a0,a0,-1064 # 80007200 <_ZZ14__print_uint64mE6digits+0x80>
    80003630:	00000097          	auipc	ra,0x0
    80003634:	894080e7          	jalr	-1900(ra) # 80002ec4 <_Z11printStringPKc>
    80003638:	00000613          	li	a2,0
    8000363c:	00a00593          	li	a1,10
    80003640:	00048513          	mv	a0,s1
    80003644:	00000097          	auipc	ra,0x0
    80003648:	a18080e7          	jalr	-1512(ra) # 8000305c <_Z8printIntiii>
        printString(".\n");
    8000364c:	00004517          	auipc	a0,0x4
    80003650:	bcc50513          	addi	a0,a0,-1076 # 80007218 <_ZZ14__print_uint64mE6digits+0x98>
    80003654:	00000097          	auipc	ra,0x0
    80003658:	870080e7          	jalr	-1936(ra) # 80002ec4 <_Z11printStringPKc>
        if(threadNum > n) {
    8000365c:	0334c463          	blt	s1,s3,80003684 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80003660:	03305c63          	blez	s3,80003698 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80003664:	03800513          	li	a0,56
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	5e0080e7          	jalr	1504(ra) # 80001c48 <_Znwm>
    80003670:	00050a93          	mv	s5,a0
    80003674:	00048593          	mv	a1,s1
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	af8080e7          	jalr	-1288(ra) # 80003170 <_ZN9BufferCPPC1Ei>
    80003680:	0300006f          	j	800036b0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003684:	00004517          	auipc	a0,0x4
    80003688:	b9c50513          	addi	a0,a0,-1124 # 80007220 <_ZZ14__print_uint64mE6digits+0xa0>
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	838080e7          	jalr	-1992(ra) # 80002ec4 <_Z11printStringPKc>
            return;
    80003694:	0140006f          	j	800036a8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003698:	00004517          	auipc	a0,0x4
    8000369c:	bc850513          	addi	a0,a0,-1080 # 80007260 <_ZZ14__print_uint64mE6digits+0xe0>
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	824080e7          	jalr	-2012(ra) # 80002ec4 <_Z11printStringPKc>
            return;
    800036a8:	000c0113          	mv	sp,s8
    800036ac:	21c0006f          	j	800038c8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    800036b0:	01000513          	li	a0,16
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	594080e7          	jalr	1428(ra) # 80001c48 <_Znwm>
    800036bc:	00050493          	mv	s1,a0
    800036c0:	00000593          	li	a1,0
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	cfc080e7          	jalr	-772(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    800036cc:	00006717          	auipc	a4,0x6
    800036d0:	b9470713          	addi	a4,a4,-1132 # 80009260 <_ZN19ConsumerProducerCPP9threadEndE>
    800036d4:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    800036d8:	00399793          	slli	a5,s3,0x3
    800036dc:	00f78793          	addi	a5,a5,15
    800036e0:	ff07f793          	andi	a5,a5,-16
    800036e4:	40f10133          	sub	sp,sp,a5
    800036e8:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    800036ec:	0019869b          	addiw	a3,s3,1
    800036f0:	00169793          	slli	a5,a3,0x1
    800036f4:	00d787b3          	add	a5,a5,a3
    800036f8:	00379793          	slli	a5,a5,0x3
    800036fc:	00f78793          	addi	a5,a5,15
    80003700:	ff07f793          	andi	a5,a5,-16
    80003704:	40f10133          	sub	sp,sp,a5
    80003708:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    8000370c:	00199493          	slli	s1,s3,0x1
    80003710:	013484b3          	add	s1,s1,s3
    80003714:	00349493          	slli	s1,s1,0x3
    80003718:	009b04b3          	add	s1,s6,s1
    8000371c:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80003720:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80003724:	00873783          	ld	a5,8(a4)
    80003728:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000372c:	03000513          	li	a0,48
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	518080e7          	jalr	1304(ra) # 80001c48 <_Znwm>
    80003738:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000373c:	fffff097          	auipc	ra,0xfffff
    80003740:	c60080e7          	jalr	-928(ra) # 8000239c <_ZN6ThreadC1Ev>
    80003744:	00005797          	auipc	a5,0x5
    80003748:	1a478793          	addi	a5,a5,420 # 800088e8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    8000374c:	00fbb023          	sd	a5,0(s7)
    80003750:	029bb423          	sd	s1,40(s7)
        consumer->start();
    80003754:	000b8513          	mv	a0,s7
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	bb8080e7          	jalr	-1096(ra) # 80002310 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80003760:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80003764:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80003768:	00006797          	auipc	a5,0x6
    8000376c:	b007b783          	ld	a5,-1280(a5) # 80009268 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003770:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003774:	03000513          	li	a0,48
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	4d0080e7          	jalr	1232(ra) # 80001c48 <_Znwm>
    80003780:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	c18080e7          	jalr	-1000(ra) # 8000239c <_ZN6ThreadC1Ev>
    8000378c:	00005797          	auipc	a5,0x5
    80003790:	10c78793          	addi	a5,a5,268 # 80008898 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003794:	00f4b023          	sd	a5,0(s1)
    80003798:	0364b423          	sd	s6,40(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    8000379c:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    800037a0:	00048513          	mv	a0,s1
    800037a4:	fffff097          	auipc	ra,0xfffff
    800037a8:	b6c080e7          	jalr	-1172(ra) # 80002310 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800037ac:	00100913          	li	s2,1
    800037b0:	0300006f          	j	800037e0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    800037b4:	00005797          	auipc	a5,0x5
    800037b8:	10c78793          	addi	a5,a5,268 # 800088c0 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800037bc:	00fcb023          	sd	a5,0(s9)
    800037c0:	029cb423          	sd	s1,40(s9)
            producers[i] = new Producer(&threadData[i]);
    800037c4:	00391793          	slli	a5,s2,0x3
    800037c8:	00fa07b3          	add	a5,s4,a5
    800037cc:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    800037d0:	000c8513          	mv	a0,s9
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	b3c080e7          	jalr	-1220(ra) # 80002310 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800037dc:	0019091b          	addiw	s2,s2,1
    800037e0:	05395263          	bge	s2,s3,80003824 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    800037e4:	00191493          	slli	s1,s2,0x1
    800037e8:	012484b3          	add	s1,s1,s2
    800037ec:	00349493          	slli	s1,s1,0x3
    800037f0:	009b04b3          	add	s1,s6,s1
    800037f4:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    800037f8:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    800037fc:	00006797          	auipc	a5,0x6
    80003800:	a6c7b783          	ld	a5,-1428(a5) # 80009268 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003804:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80003808:	03000513          	li	a0,48
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	43c080e7          	jalr	1084(ra) # 80001c48 <_Znwm>
    80003814:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003818:	fffff097          	auipc	ra,0xfffff
    8000381c:	b84080e7          	jalr	-1148(ra) # 8000239c <_ZN6ThreadC1Ev>
    80003820:	f95ff06f          	j	800037b4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80003824:	fffff097          	auipc	ra,0xfffff
    80003828:	b28080e7          	jalr	-1240(ra) # 8000234c <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    8000382c:	00000493          	li	s1,0
    80003830:	0099ce63          	blt	s3,s1,8000384c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80003834:	00006517          	auipc	a0,0x6
    80003838:	a3453503          	ld	a0,-1484(a0) # 80009268 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000383c:	fffff097          	auipc	ra,0xfffff
    80003840:	bbc080e7          	jalr	-1092(ra) # 800023f8 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80003844:	0014849b          	addiw	s1,s1,1
    80003848:	fe9ff06f          	j	80003830 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    8000384c:	00006517          	auipc	a0,0x6
    80003850:	a1c53503          	ld	a0,-1508(a0) # 80009268 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003854:	00050863          	beqz	a0,80003864 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80003858:	00053783          	ld	a5,0(a0)
    8000385c:	0087b783          	ld	a5,8(a5)
    80003860:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80003864:	00000493          	li	s1,0
    80003868:	0080006f          	j	80003870 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    8000386c:	0014849b          	addiw	s1,s1,1
    80003870:	0334d263          	bge	s1,s3,80003894 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80003874:	00349793          	slli	a5,s1,0x3
    80003878:	00fa07b3          	add	a5,s4,a5
    8000387c:	0007b503          	ld	a0,0(a5)
    80003880:	fe0506e3          	beqz	a0,8000386c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80003884:	00053783          	ld	a5,0(a0)
    80003888:	0087b783          	ld	a5,8(a5)
    8000388c:	000780e7          	jalr	a5
    80003890:	fddff06f          	j	8000386c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80003894:	000b8a63          	beqz	s7,800038a8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80003898:	000bb783          	ld	a5,0(s7)
    8000389c:	0087b783          	ld	a5,8(a5)
    800038a0:	000b8513          	mv	a0,s7
    800038a4:	000780e7          	jalr	a5
        delete buffer;
    800038a8:	000a8e63          	beqz	s5,800038c4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    800038ac:	000a8513          	mv	a0,s5
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	bb8080e7          	jalr	-1096(ra) # 80003468 <_ZN9BufferCPPD1Ev>
    800038b8:	000a8513          	mv	a0,s5
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	3dc080e7          	jalr	988(ra) # 80001c98 <_ZdlPv>
    800038c4:	000c0113          	mv	sp,s8
    }
    800038c8:	f8040113          	addi	sp,s0,-128
    800038cc:	07813083          	ld	ra,120(sp)
    800038d0:	07013403          	ld	s0,112(sp)
    800038d4:	06813483          	ld	s1,104(sp)
    800038d8:	06013903          	ld	s2,96(sp)
    800038dc:	05813983          	ld	s3,88(sp)
    800038e0:	05013a03          	ld	s4,80(sp)
    800038e4:	04813a83          	ld	s5,72(sp)
    800038e8:	04013b03          	ld	s6,64(sp)
    800038ec:	03813b83          	ld	s7,56(sp)
    800038f0:	03013c03          	ld	s8,48(sp)
    800038f4:	02813c83          	ld	s9,40(sp)
    800038f8:	08010113          	addi	sp,sp,128
    800038fc:	00008067          	ret
    80003900:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80003904:	000a8513          	mv	a0,s5
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	390080e7          	jalr	912(ra) # 80001c98 <_ZdlPv>
    80003910:	00048513          	mv	a0,s1
    80003914:	00007097          	auipc	ra,0x7
    80003918:	a24080e7          	jalr	-1500(ra) # 8000a338 <_Unwind_Resume>
    8000391c:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80003920:	00048513          	mv	a0,s1
    80003924:	ffffe097          	auipc	ra,0xffffe
    80003928:	374080e7          	jalr	884(ra) # 80001c98 <_ZdlPv>
    8000392c:	00090513          	mv	a0,s2
    80003930:	00007097          	auipc	ra,0x7
    80003934:	a08080e7          	jalr	-1528(ra) # 8000a338 <_Unwind_Resume>
    80003938:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000393c:	000b8513          	mv	a0,s7
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	358080e7          	jalr	856(ra) # 80001c98 <_ZdlPv>
    80003948:	00048513          	mv	a0,s1
    8000394c:	00007097          	auipc	ra,0x7
    80003950:	9ec080e7          	jalr	-1556(ra) # 8000a338 <_Unwind_Resume>
    80003954:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003958:	00048513          	mv	a0,s1
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	33c080e7          	jalr	828(ra) # 80001c98 <_ZdlPv>
    80003964:	00090513          	mv	a0,s2
    80003968:	00007097          	auipc	ra,0x7
    8000396c:	9d0080e7          	jalr	-1584(ra) # 8000a338 <_Unwind_Resume>
    80003970:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80003974:	000c8513          	mv	a0,s9
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	320080e7          	jalr	800(ra) # 80001c98 <_ZdlPv>
    80003980:	00048513          	mv	a0,s1
    80003984:	00007097          	auipc	ra,0x7
    80003988:	9b4080e7          	jalr	-1612(ra) # 8000a338 <_Unwind_Resume>

000000008000398c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    8000398c:	ff010113          	addi	sp,sp,-16
    80003990:	00113423          	sd	ra,8(sp)
    80003994:	00813023          	sd	s0,0(sp)
    80003998:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    8000399c:	00000097          	auipc	ra,0x0
    800039a0:	bcc080e7          	jalr	-1076(ra) # 80003568 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>

    800039a4:	00813083          	ld	ra,8(sp)
    800039a8:	00013403          	ld	s0,0(sp)
    800039ac:	01010113          	addi	sp,sp,16
    800039b0:	00008067          	ret

00000000800039b4 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    800039b4:	fd010113          	addi	sp,sp,-48
    800039b8:	02113423          	sd	ra,40(sp)
    800039bc:	02813023          	sd	s0,32(sp)
    800039c0:	00913c23          	sd	s1,24(sp)
    800039c4:	01213823          	sd	s2,16(sp)
    800039c8:	01313423          	sd	s3,8(sp)
    800039cc:	03010413          	addi	s0,sp,48
    800039d0:	00050913          	mv	s2,a0
            int i = 0;
    800039d4:	00000993          	li	s3,0
    800039d8:	0100006f          	j	800039e8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    800039dc:	00a00513          	li	a0,10
    800039e0:	fffff097          	auipc	ra,0xfffff
    800039e4:	ae8080e7          	jalr	-1304(ra) # 800024c8 <_ZN7Console4putcEc>
            while (!threadEnd) {
    800039e8:	00006797          	auipc	a5,0x6
    800039ec:	8787a783          	lw	a5,-1928(a5) # 80009260 <_ZN19ConsumerProducerCPP9threadEndE>
    800039f0:	04079a63          	bnez	a5,80003a44 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    800039f4:	02893783          	ld	a5,40(s2)
    800039f8:	0087b503          	ld	a0,8(a5)
    800039fc:	00000097          	auipc	ra,0x0
    80003a00:	958080e7          	jalr	-1704(ra) # 80003354 <_ZN9BufferCPP3getEv>
                i++;
    80003a04:	0019849b          	addiw	s1,s3,1
    80003a08:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80003a0c:	0ff57513          	andi	a0,a0,255
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	ab8080e7          	jalr	-1352(ra) # 800024c8 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80003a18:	05000793          	li	a5,80
    80003a1c:	02f4e4bb          	remw	s1,s1,a5
    80003a20:	fc0494e3          	bnez	s1,800039e8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80003a24:	fb9ff06f          	j	800039dc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80003a28:	02893783          	ld	a5,40(s2)
    80003a2c:	0087b503          	ld	a0,8(a5)
    80003a30:	00000097          	auipc	ra,0x0
    80003a34:	924080e7          	jalr	-1756(ra) # 80003354 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80003a38:	0ff57513          	andi	a0,a0,255
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	a8c080e7          	jalr	-1396(ra) # 800024c8 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80003a44:	02893783          	ld	a5,40(s2)
    80003a48:	0087b503          	ld	a0,8(a5)
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	994080e7          	jalr	-1644(ra) # 800033e0 <_ZN9BufferCPP6getCntEv>
    80003a54:	fca04ae3          	bgtz	a0,80003a28 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80003a58:	02893783          	ld	a5,40(s2)
    80003a5c:	0107b503          	ld	a0,16(a5)
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	9c4080e7          	jalr	-1596(ra) # 80002424 <_ZN9Semaphore6signalEv>
        }
    80003a68:	02813083          	ld	ra,40(sp)
    80003a6c:	02013403          	ld	s0,32(sp)
    80003a70:	01813483          	ld	s1,24(sp)
    80003a74:	01013903          	ld	s2,16(sp)
    80003a78:	00813983          	ld	s3,8(sp)
    80003a7c:	03010113          	addi	sp,sp,48
    80003a80:	00008067          	ret

0000000080003a84 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00113423          	sd	ra,8(sp)
    80003a8c:	00813023          	sd	s0,0(sp)
    80003a90:	01010413          	addi	s0,sp,16
    80003a94:	00005797          	auipc	a5,0x5
    80003a98:	e5478793          	addi	a5,a5,-428 # 800088e8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003a9c:	00f53023          	sd	a5,0(a0)
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	780080e7          	jalr	1920(ra) # 80002220 <_ZN6ThreadD1Ev>
    80003aa8:	00813083          	ld	ra,8(sp)
    80003aac:	00013403          	ld	s0,0(sp)
    80003ab0:	01010113          	addi	sp,sp,16
    80003ab4:	00008067          	ret

0000000080003ab8 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80003ab8:	fe010113          	addi	sp,sp,-32
    80003abc:	00113c23          	sd	ra,24(sp)
    80003ac0:	00813823          	sd	s0,16(sp)
    80003ac4:	00913423          	sd	s1,8(sp)
    80003ac8:	02010413          	addi	s0,sp,32
    80003acc:	00050493          	mv	s1,a0
    80003ad0:	00005797          	auipc	a5,0x5
    80003ad4:	e1878793          	addi	a5,a5,-488 # 800088e8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003ad8:	00f53023          	sd	a5,0(a0)
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	744080e7          	jalr	1860(ra) # 80002220 <_ZN6ThreadD1Ev>
    80003ae4:	00048513          	mv	a0,s1
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	1b0080e7          	jalr	432(ra) # 80001c98 <_ZdlPv>
    80003af0:	01813083          	ld	ra,24(sp)
    80003af4:	01013403          	ld	s0,16(sp)
    80003af8:	00813483          	ld	s1,8(sp)
    80003afc:	02010113          	addi	sp,sp,32
    80003b00:	00008067          	ret

0000000080003b04 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00113423          	sd	ra,8(sp)
    80003b0c:	00813023          	sd	s0,0(sp)
    80003b10:	01010413          	addi	s0,sp,16
    80003b14:	00005797          	auipc	a5,0x5
    80003b18:	d8478793          	addi	a5,a5,-636 # 80008898 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003b1c:	00f53023          	sd	a5,0(a0)
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	700080e7          	jalr	1792(ra) # 80002220 <_ZN6ThreadD1Ev>
    80003b28:	00813083          	ld	ra,8(sp)
    80003b2c:	00013403          	ld	s0,0(sp)
    80003b30:	01010113          	addi	sp,sp,16
    80003b34:	00008067          	ret

0000000080003b38 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80003b38:	fe010113          	addi	sp,sp,-32
    80003b3c:	00113c23          	sd	ra,24(sp)
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00913423          	sd	s1,8(sp)
    80003b48:	02010413          	addi	s0,sp,32
    80003b4c:	00050493          	mv	s1,a0
    80003b50:	00005797          	auipc	a5,0x5
    80003b54:	d4878793          	addi	a5,a5,-696 # 80008898 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003b58:	00f53023          	sd	a5,0(a0)
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	6c4080e7          	jalr	1732(ra) # 80002220 <_ZN6ThreadD1Ev>
    80003b64:	00048513          	mv	a0,s1
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	130080e7          	jalr	304(ra) # 80001c98 <_ZdlPv>
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	00813483          	ld	s1,8(sp)
    80003b7c:	02010113          	addi	sp,sp,32
    80003b80:	00008067          	ret

0000000080003b84 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00113423          	sd	ra,8(sp)
    80003b8c:	00813023          	sd	s0,0(sp)
    80003b90:	01010413          	addi	s0,sp,16
    80003b94:	00005797          	auipc	a5,0x5
    80003b98:	d2c78793          	addi	a5,a5,-724 # 800088c0 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003b9c:	00f53023          	sd	a5,0(a0)
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	680080e7          	jalr	1664(ra) # 80002220 <_ZN6ThreadD1Ev>
    80003ba8:	00813083          	ld	ra,8(sp)
    80003bac:	00013403          	ld	s0,0(sp)
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret

0000000080003bb8 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80003bb8:	fe010113          	addi	sp,sp,-32
    80003bbc:	00113c23          	sd	ra,24(sp)
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00913423          	sd	s1,8(sp)
    80003bc8:	02010413          	addi	s0,sp,32
    80003bcc:	00050493          	mv	s1,a0
    80003bd0:	00005797          	auipc	a5,0x5
    80003bd4:	cf078793          	addi	a5,a5,-784 # 800088c0 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003bd8:	00f53023          	sd	a5,0(a0)
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	644080e7          	jalr	1604(ra) # 80002220 <_ZN6ThreadD1Ev>
    80003be4:	00048513          	mv	a0,s1
    80003be8:	ffffe097          	auipc	ra,0xffffe
    80003bec:	0b0080e7          	jalr	176(ra) # 80001c98 <_ZdlPv>
    80003bf0:	01813083          	ld	ra,24(sp)
    80003bf4:	01013403          	ld	s0,16(sp)
    80003bf8:	00813483          	ld	s1,8(sp)
    80003bfc:	02010113          	addi	sp,sp,32
    80003c00:	00008067          	ret

0000000080003c04 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80003c04:	fe010113          	addi	sp,sp,-32
    80003c08:	00113c23          	sd	ra,24(sp)
    80003c0c:	00813823          	sd	s0,16(sp)
    80003c10:	00913423          	sd	s1,8(sp)
    80003c14:	02010413          	addi	s0,sp,32
    80003c18:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80003c1c:	ffffd097          	auipc	ra,0xffffd
    80003c20:	468080e7          	jalr	1128(ra) # 80001084 <getc>
    80003c24:	0005059b          	sext.w	a1,a0
    80003c28:	01b00793          	li	a5,27
    80003c2c:	00f58c63          	beq	a1,a5,80003c44 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80003c30:	0284b783          	ld	a5,40(s1)
    80003c34:	0087b503          	ld	a0,8(a5)
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	68c080e7          	jalr	1676(ra) # 800032c4 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80003c40:	fddff06f          	j	80003c1c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80003c44:	00100793          	li	a5,1
    80003c48:	00005717          	auipc	a4,0x5
    80003c4c:	60f72c23          	sw	a5,1560(a4) # 80009260 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80003c50:	0284b783          	ld	a5,40(s1)
    80003c54:	02100593          	li	a1,33
    80003c58:	0087b503          	ld	a0,8(a5)
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	668080e7          	jalr	1640(ra) # 800032c4 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80003c64:	0284b783          	ld	a5,40(s1)
    80003c68:	0107b503          	ld	a0,16(a5)
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	7b8080e7          	jalr	1976(ra) # 80002424 <_ZN9Semaphore6signalEv>
        }
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	00813483          	ld	s1,8(sp)
    80003c80:	02010113          	addi	sp,sp,32
    80003c84:	00008067          	ret

0000000080003c88 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	01213023          	sd	s2,0(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    80003ca0:	00050493          	mv	s1,a0
            int i = 0;
    80003ca4:	00000913          	li	s2,0
            while (!threadEnd) {
    80003ca8:	00005797          	auipc	a5,0x5
    80003cac:	5b87a783          	lw	a5,1464(a5) # 80009260 <_ZN19ConsumerProducerCPP9threadEndE>
    80003cb0:	04079263          	bnez	a5,80003cf4 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80003cb4:	0284b783          	ld	a5,40(s1)
    80003cb8:	0007a583          	lw	a1,0(a5)
    80003cbc:	0305859b          	addiw	a1,a1,48
    80003cc0:	0087b503          	ld	a0,8(a5)
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	600080e7          	jalr	1536(ra) # 800032c4 <_ZN9BufferCPP3putEi>
                i++;
    80003ccc:	0019071b          	addiw	a4,s2,1
    80003cd0:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80003cd4:	0284b783          	ld	a5,40(s1)
    80003cd8:	0007a783          	lw	a5,0(a5)
    80003cdc:	00e787bb          	addw	a5,a5,a4
    80003ce0:	00500513          	li	a0,5
    80003ce4:	02a7e53b          	remw	a0,a5,a0
    80003ce8:	ffffe097          	auipc	ra,0xffffe
    80003cec:	68c080e7          	jalr	1676(ra) # 80002374 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80003cf0:	fb9ff06f          	j	80003ca8 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80003cf4:	0284b783          	ld	a5,40(s1)
    80003cf8:	0107b503          	ld	a0,16(a5)
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	728080e7          	jalr	1832(ra) # 80002424 <_ZN9Semaphore6signalEv>
        }
    80003d04:	01813083          	ld	ra,24(sp)
    80003d08:	01013403          	ld	s0,16(sp)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	00013903          	ld	s2,0(sp)
    80003d14:	02010113          	addi	sp,sp,32
    80003d18:	00008067          	ret

0000000080003d1c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003d1c:	fe010113          	addi	sp,sp,-32
    80003d20:	00113c23          	sd	ra,24(sp)
    80003d24:	00813823          	sd	s0,16(sp)
    80003d28:	00913423          	sd	s1,8(sp)
    80003d2c:	01213023          	sd	s2,0(sp)
    80003d30:	02010413          	addi	s0,sp,32
    80003d34:	00050493          	mv	s1,a0
    80003d38:	00058913          	mv	s2,a1
    80003d3c:	0015879b          	addiw	a5,a1,1
    80003d40:	0007851b          	sext.w	a0,a5
    80003d44:	00f4a023          	sw	a5,0(s1)
    80003d48:	0004a823          	sw	zero,16(s1)
    80003d4c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003d50:	00251513          	slli	a0,a0,0x2
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	2ac080e7          	jalr	684(ra) # 80001000 <mem_alloc>
    80003d5c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003d60:	00000593          	li	a1,0
    80003d64:	02048513          	addi	a0,s1,32
    80003d68:	ffffd097          	auipc	ra,0xffffd
    80003d6c:	2e0080e7          	jalr	736(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80003d70:	00090593          	mv	a1,s2
    80003d74:	01848513          	addi	a0,s1,24
    80003d78:	ffffd097          	auipc	ra,0xffffd
    80003d7c:	2d0080e7          	jalr	720(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    80003d80:	00100593          	li	a1,1
    80003d84:	02848513          	addi	a0,s1,40
    80003d88:	ffffd097          	auipc	ra,0xffffd
    80003d8c:	2c0080e7          	jalr	704(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    80003d90:	00100593          	li	a1,1
    80003d94:	03048513          	addi	a0,s1,48
    80003d98:	ffffd097          	auipc	ra,0xffffd
    80003d9c:	2b0080e7          	jalr	688(ra) # 80001048 <sem_open>
}
    80003da0:	01813083          	ld	ra,24(sp)
    80003da4:	01013403          	ld	s0,16(sp)
    80003da8:	00813483          	ld	s1,8(sp)
    80003dac:	00013903          	ld	s2,0(sp)
    80003db0:	02010113          	addi	sp,sp,32
    80003db4:	00008067          	ret

0000000080003db8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	01213023          	sd	s2,0(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00050493          	mv	s1,a0
    80003dd4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003dd8:	01853503          	ld	a0,24(a0)
    80003ddc:	ffffd097          	auipc	ra,0xffffd
    80003de0:	284080e7          	jalr	644(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    80003de4:	0304b503          	ld	a0,48(s1)
    80003de8:	ffffd097          	auipc	ra,0xffffd
    80003dec:	278080e7          	jalr	632(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    80003df0:	0084b783          	ld	a5,8(s1)
    80003df4:	0144a703          	lw	a4,20(s1)
    80003df8:	00271713          	slli	a4,a4,0x2
    80003dfc:	00e787b3          	add	a5,a5,a4
    80003e00:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003e04:	0144a783          	lw	a5,20(s1)
    80003e08:	0017879b          	addiw	a5,a5,1
    80003e0c:	0004a703          	lw	a4,0(s1)
    80003e10:	02e7e7bb          	remw	a5,a5,a4
    80003e14:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003e18:	0304b503          	ld	a0,48(s1)
    80003e1c:	ffffd097          	auipc	ra,0xffffd
    80003e20:	250080e7          	jalr	592(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    80003e24:	0204b503          	ld	a0,32(s1)
    80003e28:	ffffd097          	auipc	ra,0xffffd
    80003e2c:	244080e7          	jalr	580(ra) # 8000106c <sem_signal>

}
    80003e30:	01813083          	ld	ra,24(sp)
    80003e34:	01013403          	ld	s0,16(sp)
    80003e38:	00813483          	ld	s1,8(sp)
    80003e3c:	00013903          	ld	s2,0(sp)
    80003e40:	02010113          	addi	sp,sp,32
    80003e44:	00008067          	ret

0000000080003e48 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003e48:	fe010113          	addi	sp,sp,-32
    80003e4c:	00113c23          	sd	ra,24(sp)
    80003e50:	00813823          	sd	s0,16(sp)
    80003e54:	00913423          	sd	s1,8(sp)
    80003e58:	01213023          	sd	s2,0(sp)
    80003e5c:	02010413          	addi	s0,sp,32
    80003e60:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003e64:	02053503          	ld	a0,32(a0)
    80003e68:	ffffd097          	auipc	ra,0xffffd
    80003e6c:	1f8080e7          	jalr	504(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    80003e70:	0284b503          	ld	a0,40(s1)
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	1ec080e7          	jalr	492(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    80003e7c:	0084b703          	ld	a4,8(s1)
    80003e80:	0104a783          	lw	a5,16(s1)
    80003e84:	00279693          	slli	a3,a5,0x2
    80003e88:	00d70733          	add	a4,a4,a3
    80003e8c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003e90:	0017879b          	addiw	a5,a5,1
    80003e94:	0004a703          	lw	a4,0(s1)
    80003e98:	02e7e7bb          	remw	a5,a5,a4
    80003e9c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003ea0:	0284b503          	ld	a0,40(s1)
    80003ea4:	ffffd097          	auipc	ra,0xffffd
    80003ea8:	1c8080e7          	jalr	456(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    80003eac:	0184b503          	ld	a0,24(s1)
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	1bc080e7          	jalr	444(ra) # 8000106c <sem_signal>

    return ret;
}
    80003eb8:	00090513          	mv	a0,s2
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00013903          	ld	s2,0(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003ed4:	fe010113          	addi	sp,sp,-32
    80003ed8:	00113c23          	sd	ra,24(sp)
    80003edc:	00813823          	sd	s0,16(sp)
    80003ee0:	00913423          	sd	s1,8(sp)
    80003ee4:	01213023          	sd	s2,0(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    80003eec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003ef0:	02853503          	ld	a0,40(a0)
    80003ef4:	ffffd097          	auipc	ra,0xffffd
    80003ef8:	16c080e7          	jalr	364(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    80003efc:	0304b503          	ld	a0,48(s1)
    80003f00:	ffffd097          	auipc	ra,0xffffd
    80003f04:	160080e7          	jalr	352(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    80003f08:	0144a783          	lw	a5,20(s1)
    80003f0c:	0104a903          	lw	s2,16(s1)
    80003f10:	0327ce63          	blt	a5,s2,80003f4c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003f14:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003f18:	0304b503          	ld	a0,48(s1)
    80003f1c:	ffffd097          	auipc	ra,0xffffd
    80003f20:	150080e7          	jalr	336(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    80003f24:	0284b503          	ld	a0,40(s1)
    80003f28:	ffffd097          	auipc	ra,0xffffd
    80003f2c:	144080e7          	jalr	324(ra) # 8000106c <sem_signal>

    return ret;
}
    80003f30:	00090513          	mv	a0,s2
    80003f34:	01813083          	ld	ra,24(sp)
    80003f38:	01013403          	ld	s0,16(sp)
    80003f3c:	00813483          	ld	s1,8(sp)
    80003f40:	00013903          	ld	s2,0(sp)
    80003f44:	02010113          	addi	sp,sp,32
    80003f48:	00008067          	ret
        ret = cap - head + tail;
    80003f4c:	0004a703          	lw	a4,0(s1)
    80003f50:	4127093b          	subw	s2,a4,s2
    80003f54:	00f9093b          	addw	s2,s2,a5
    80003f58:	fc1ff06f          	j	80003f18 <_ZN6Buffer6getCntEv+0x44>

0000000080003f5c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00113c23          	sd	ra,24(sp)
    80003f64:	00813823          	sd	s0,16(sp)
    80003f68:	00913423          	sd	s1,8(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    80003f70:	00050493          	mv	s1,a0
    putc('\n');
    80003f74:	00a00513          	li	a0,10
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	118080e7          	jalr	280(ra) # 80001090 <putc>
    printString("Buffer deleted!\n");
    80003f80:	00003517          	auipc	a0,0x3
    80003f84:	21050513          	addi	a0,a0,528 # 80007190 <_ZZ14__print_uint64mE6digits+0x10>
    80003f88:	fffff097          	auipc	ra,0xfffff
    80003f8c:	f3c080e7          	jalr	-196(ra) # 80002ec4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003f90:	00048513          	mv	a0,s1
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	f40080e7          	jalr	-192(ra) # 80003ed4 <_ZN6Buffer6getCntEv>
    80003f9c:	02a05c63          	blez	a0,80003fd4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003fa0:	0084b783          	ld	a5,8(s1)
    80003fa4:	0104a703          	lw	a4,16(s1)
    80003fa8:	00271713          	slli	a4,a4,0x2
    80003fac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003fb0:	0007c503          	lbu	a0,0(a5)
    80003fb4:	ffffd097          	auipc	ra,0xffffd
    80003fb8:	0dc080e7          	jalr	220(ra) # 80001090 <putc>
        head = (head + 1) % cap;
    80003fbc:	0104a783          	lw	a5,16(s1)
    80003fc0:	0017879b          	addiw	a5,a5,1
    80003fc4:	0004a703          	lw	a4,0(s1)
    80003fc8:	02e7e7bb          	remw	a5,a5,a4
    80003fcc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003fd0:	fc1ff06f          	j	80003f90 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003fd4:	02100513          	li	a0,33
    80003fd8:	ffffd097          	auipc	ra,0xffffd
    80003fdc:	0b8080e7          	jalr	184(ra) # 80001090 <putc>
    putc('\n');
    80003fe0:	00a00513          	li	a0,10
    80003fe4:	ffffd097          	auipc	ra,0xffffd
    80003fe8:	0ac080e7          	jalr	172(ra) # 80001090 <putc>
    mem_free(buffer);
    80003fec:	0084b503          	ld	a0,8(s1)
    80003ff0:	ffffd097          	auipc	ra,0xffffd
    80003ff4:	01c080e7          	jalr	28(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    80003ff8:	0204b503          	ld	a0,32(s1)
    80003ffc:	ffffd097          	auipc	ra,0xffffd
    80004000:	058080e7          	jalr	88(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    80004004:	0184b503          	ld	a0,24(s1)
    80004008:	ffffd097          	auipc	ra,0xffffd
    8000400c:	04c080e7          	jalr	76(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    80004010:	0304b503          	ld	a0,48(s1)
    80004014:	ffffd097          	auipc	ra,0xffffd
    80004018:	040080e7          	jalr	64(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    8000401c:	0284b503          	ld	a0,40(s1)
    80004020:	ffffd097          	auipc	ra,0xffffd
    80004024:	034080e7          	jalr	52(ra) # 80001054 <sem_close>
}
    80004028:	01813083          	ld	ra,24(sp)
    8000402c:	01013403          	ld	s0,16(sp)
    80004030:	00813483          	ld	s1,8(sp)
    80004034:	02010113          	addi	sp,sp,32
    80004038:	00008067          	ret

000000008000403c <start>:
    8000403c:	ff010113          	addi	sp,sp,-16
    80004040:	00813423          	sd	s0,8(sp)
    80004044:	01010413          	addi	s0,sp,16
    80004048:	300027f3          	csrr	a5,mstatus
    8000404c:	ffffe737          	lui	a4,0xffffe
    80004050:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff432f>
    80004054:	00e7f7b3          	and	a5,a5,a4
    80004058:	00001737          	lui	a4,0x1
    8000405c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004060:	00e7e7b3          	or	a5,a5,a4
    80004064:	30079073          	csrw	mstatus,a5
    80004068:	00000797          	auipc	a5,0x0
    8000406c:	16078793          	addi	a5,a5,352 # 800041c8 <system_main>
    80004070:	34179073          	csrw	mepc,a5
    80004074:	00000793          	li	a5,0
    80004078:	18079073          	csrw	satp,a5
    8000407c:	000107b7          	lui	a5,0x10
    80004080:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004084:	30279073          	csrw	medeleg,a5
    80004088:	30379073          	csrw	mideleg,a5
    8000408c:	104027f3          	csrr	a5,sie
    80004090:	2227e793          	ori	a5,a5,546
    80004094:	10479073          	csrw	sie,a5
    80004098:	fff00793          	li	a5,-1
    8000409c:	00a7d793          	srli	a5,a5,0xa
    800040a0:	3b079073          	csrw	pmpaddr0,a5
    800040a4:	00f00793          	li	a5,15
    800040a8:	3a079073          	csrw	pmpcfg0,a5
    800040ac:	f14027f3          	csrr	a5,mhartid
    800040b0:	0200c737          	lui	a4,0x200c
    800040b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800040b8:	0007869b          	sext.w	a3,a5
    800040bc:	00269713          	slli	a4,a3,0x2
    800040c0:	000f4637          	lui	a2,0xf4
    800040c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800040c8:	00d70733          	add	a4,a4,a3
    800040cc:	0037979b          	slliw	a5,a5,0x3
    800040d0:	020046b7          	lui	a3,0x2004
    800040d4:	00d787b3          	add	a5,a5,a3
    800040d8:	00c585b3          	add	a1,a1,a2
    800040dc:	00371693          	slli	a3,a4,0x3
    800040e0:	00005717          	auipc	a4,0x5
    800040e4:	19070713          	addi	a4,a4,400 # 80009270 <timer_scratch>
    800040e8:	00b7b023          	sd	a1,0(a5)
    800040ec:	00d70733          	add	a4,a4,a3
    800040f0:	00f73c23          	sd	a5,24(a4)
    800040f4:	02c73023          	sd	a2,32(a4)
    800040f8:	34071073          	csrw	mscratch,a4
    800040fc:	00000797          	auipc	a5,0x0
    80004100:	6e478793          	addi	a5,a5,1764 # 800047e0 <timervec>
    80004104:	30579073          	csrw	mtvec,a5
    80004108:	300027f3          	csrr	a5,mstatus
    8000410c:	0087e793          	ori	a5,a5,8
    80004110:	30079073          	csrw	mstatus,a5
    80004114:	304027f3          	csrr	a5,mie
    80004118:	0807e793          	ori	a5,a5,128
    8000411c:	30479073          	csrw	mie,a5
    80004120:	f14027f3          	csrr	a5,mhartid
    80004124:	0007879b          	sext.w	a5,a5
    80004128:	00078213          	mv	tp,a5
    8000412c:	30200073          	mret
    80004130:	00813403          	ld	s0,8(sp)
    80004134:	01010113          	addi	sp,sp,16
    80004138:	00008067          	ret

000000008000413c <timerinit>:
    8000413c:	ff010113          	addi	sp,sp,-16
    80004140:	00813423          	sd	s0,8(sp)
    80004144:	01010413          	addi	s0,sp,16
    80004148:	f14027f3          	csrr	a5,mhartid
    8000414c:	0200c737          	lui	a4,0x200c
    80004150:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004154:	0007869b          	sext.w	a3,a5
    80004158:	00269713          	slli	a4,a3,0x2
    8000415c:	000f4637          	lui	a2,0xf4
    80004160:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004164:	00d70733          	add	a4,a4,a3
    80004168:	0037979b          	slliw	a5,a5,0x3
    8000416c:	020046b7          	lui	a3,0x2004
    80004170:	00d787b3          	add	a5,a5,a3
    80004174:	00c585b3          	add	a1,a1,a2
    80004178:	00371693          	slli	a3,a4,0x3
    8000417c:	00005717          	auipc	a4,0x5
    80004180:	0f470713          	addi	a4,a4,244 # 80009270 <timer_scratch>
    80004184:	00b7b023          	sd	a1,0(a5)
    80004188:	00d70733          	add	a4,a4,a3
    8000418c:	00f73c23          	sd	a5,24(a4)
    80004190:	02c73023          	sd	a2,32(a4)
    80004194:	34071073          	csrw	mscratch,a4
    80004198:	00000797          	auipc	a5,0x0
    8000419c:	64878793          	addi	a5,a5,1608 # 800047e0 <timervec>
    800041a0:	30579073          	csrw	mtvec,a5
    800041a4:	300027f3          	csrr	a5,mstatus
    800041a8:	0087e793          	ori	a5,a5,8
    800041ac:	30079073          	csrw	mstatus,a5
    800041b0:	304027f3          	csrr	a5,mie
    800041b4:	0807e793          	ori	a5,a5,128
    800041b8:	30479073          	csrw	mie,a5
    800041bc:	00813403          	ld	s0,8(sp)
    800041c0:	01010113          	addi	sp,sp,16
    800041c4:	00008067          	ret

00000000800041c8 <system_main>:
    800041c8:	fe010113          	addi	sp,sp,-32
    800041cc:	00813823          	sd	s0,16(sp)
    800041d0:	00913423          	sd	s1,8(sp)
    800041d4:	00113c23          	sd	ra,24(sp)
    800041d8:	02010413          	addi	s0,sp,32
    800041dc:	00000097          	auipc	ra,0x0
    800041e0:	0c4080e7          	jalr	196(ra) # 800042a0 <cpuid>
    800041e4:	00004497          	auipc	s1,0x4
    800041e8:	79c48493          	addi	s1,s1,1948 # 80008980 <started>
    800041ec:	02050263          	beqz	a0,80004210 <system_main+0x48>
    800041f0:	0004a783          	lw	a5,0(s1)
    800041f4:	0007879b          	sext.w	a5,a5
    800041f8:	fe078ce3          	beqz	a5,800041f0 <system_main+0x28>
    800041fc:	0ff0000f          	fence
    80004200:	00003517          	auipc	a0,0x3
    80004204:	0c050513          	addi	a0,a0,192 # 800072c0 <_ZZ14__print_uint64mE6digits+0x140>
    80004208:	00001097          	auipc	ra,0x1
    8000420c:	a74080e7          	jalr	-1420(ra) # 80004c7c <panic>
    80004210:	00001097          	auipc	ra,0x1
    80004214:	9c8080e7          	jalr	-1592(ra) # 80004bd8 <consoleinit>
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	154080e7          	jalr	340(ra) # 8000536c <printfinit>
    80004220:	00003517          	auipc	a0,0x3
    80004224:	fc050513          	addi	a0,a0,-64 # 800071e0 <_ZZ14__print_uint64mE6digits+0x60>
    80004228:	00001097          	auipc	ra,0x1
    8000422c:	ab0080e7          	jalr	-1360(ra) # 80004cd8 <__printf>
    80004230:	00003517          	auipc	a0,0x3
    80004234:	06050513          	addi	a0,a0,96 # 80007290 <_ZZ14__print_uint64mE6digits+0x110>
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	aa0080e7          	jalr	-1376(ra) # 80004cd8 <__printf>
    80004240:	00003517          	auipc	a0,0x3
    80004244:	fa050513          	addi	a0,a0,-96 # 800071e0 <_ZZ14__print_uint64mE6digits+0x60>
    80004248:	00001097          	auipc	ra,0x1
    8000424c:	a90080e7          	jalr	-1392(ra) # 80004cd8 <__printf>
    80004250:	00001097          	auipc	ra,0x1
    80004254:	4a8080e7          	jalr	1192(ra) # 800056f8 <kinit>
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	148080e7          	jalr	328(ra) # 800043a0 <trapinit>
    80004260:	00000097          	auipc	ra,0x0
    80004264:	16c080e7          	jalr	364(ra) # 800043cc <trapinithart>
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	5b8080e7          	jalr	1464(ra) # 80004820 <plicinit>
    80004270:	00000097          	auipc	ra,0x0
    80004274:	5d8080e7          	jalr	1496(ra) # 80004848 <plicinithart>
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	078080e7          	jalr	120(ra) # 800042f0 <userinit>
    80004280:	0ff0000f          	fence
    80004284:	00100793          	li	a5,1
    80004288:	00003517          	auipc	a0,0x3
    8000428c:	02050513          	addi	a0,a0,32 # 800072a8 <_ZZ14__print_uint64mE6digits+0x128>
    80004290:	00f4a023          	sw	a5,0(s1)
    80004294:	00001097          	auipc	ra,0x1
    80004298:	a44080e7          	jalr	-1468(ra) # 80004cd8 <__printf>
    8000429c:	0000006f          	j	8000429c <system_main+0xd4>

00000000800042a0 <cpuid>:
    800042a0:	ff010113          	addi	sp,sp,-16
    800042a4:	00813423          	sd	s0,8(sp)
    800042a8:	01010413          	addi	s0,sp,16
    800042ac:	00020513          	mv	a0,tp
    800042b0:	00813403          	ld	s0,8(sp)
    800042b4:	0005051b          	sext.w	a0,a0
    800042b8:	01010113          	addi	sp,sp,16
    800042bc:	00008067          	ret

00000000800042c0 <mycpu>:
    800042c0:	ff010113          	addi	sp,sp,-16
    800042c4:	00813423          	sd	s0,8(sp)
    800042c8:	01010413          	addi	s0,sp,16
    800042cc:	00020793          	mv	a5,tp
    800042d0:	00813403          	ld	s0,8(sp)
    800042d4:	0007879b          	sext.w	a5,a5
    800042d8:	00779793          	slli	a5,a5,0x7
    800042dc:	00006517          	auipc	a0,0x6
    800042e0:	fc450513          	addi	a0,a0,-60 # 8000a2a0 <cpus>
    800042e4:	00f50533          	add	a0,a0,a5
    800042e8:	01010113          	addi	sp,sp,16
    800042ec:	00008067          	ret

00000000800042f0 <userinit>:
    800042f0:	ff010113          	addi	sp,sp,-16
    800042f4:	00813423          	sd	s0,8(sp)
    800042f8:	01010413          	addi	s0,sp,16
    800042fc:	00813403          	ld	s0,8(sp)
    80004300:	01010113          	addi	sp,sp,16
    80004304:	ffffe317          	auipc	t1,0xffffe
    80004308:	a1c30067          	jr	-1508(t1) # 80001d20 <main>

000000008000430c <either_copyout>:
    8000430c:	ff010113          	addi	sp,sp,-16
    80004310:	00813023          	sd	s0,0(sp)
    80004314:	00113423          	sd	ra,8(sp)
    80004318:	01010413          	addi	s0,sp,16
    8000431c:	02051663          	bnez	a0,80004348 <either_copyout+0x3c>
    80004320:	00058513          	mv	a0,a1
    80004324:	00060593          	mv	a1,a2
    80004328:	0006861b          	sext.w	a2,a3
    8000432c:	00002097          	auipc	ra,0x2
    80004330:	c58080e7          	jalr	-936(ra) # 80005f84 <__memmove>
    80004334:	00813083          	ld	ra,8(sp)
    80004338:	00013403          	ld	s0,0(sp)
    8000433c:	00000513          	li	a0,0
    80004340:	01010113          	addi	sp,sp,16
    80004344:	00008067          	ret
    80004348:	00003517          	auipc	a0,0x3
    8000434c:	fa050513          	addi	a0,a0,-96 # 800072e8 <_ZZ14__print_uint64mE6digits+0x168>
    80004350:	00001097          	auipc	ra,0x1
    80004354:	92c080e7          	jalr	-1748(ra) # 80004c7c <panic>

0000000080004358 <either_copyin>:
    80004358:	ff010113          	addi	sp,sp,-16
    8000435c:	00813023          	sd	s0,0(sp)
    80004360:	00113423          	sd	ra,8(sp)
    80004364:	01010413          	addi	s0,sp,16
    80004368:	02059463          	bnez	a1,80004390 <either_copyin+0x38>
    8000436c:	00060593          	mv	a1,a2
    80004370:	0006861b          	sext.w	a2,a3
    80004374:	00002097          	auipc	ra,0x2
    80004378:	c10080e7          	jalr	-1008(ra) # 80005f84 <__memmove>
    8000437c:	00813083          	ld	ra,8(sp)
    80004380:	00013403          	ld	s0,0(sp)
    80004384:	00000513          	li	a0,0
    80004388:	01010113          	addi	sp,sp,16
    8000438c:	00008067          	ret
    80004390:	00003517          	auipc	a0,0x3
    80004394:	f8050513          	addi	a0,a0,-128 # 80007310 <_ZZ14__print_uint64mE6digits+0x190>
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	8e4080e7          	jalr	-1820(ra) # 80004c7c <panic>

00000000800043a0 <trapinit>:
    800043a0:	ff010113          	addi	sp,sp,-16
    800043a4:	00813423          	sd	s0,8(sp)
    800043a8:	01010413          	addi	s0,sp,16
    800043ac:	00813403          	ld	s0,8(sp)
    800043b0:	00003597          	auipc	a1,0x3
    800043b4:	f8858593          	addi	a1,a1,-120 # 80007338 <_ZZ14__print_uint64mE6digits+0x1b8>
    800043b8:	00006517          	auipc	a0,0x6
    800043bc:	f6850513          	addi	a0,a0,-152 # 8000a320 <tickslock>
    800043c0:	01010113          	addi	sp,sp,16
    800043c4:	00001317          	auipc	t1,0x1
    800043c8:	5c430067          	jr	1476(t1) # 80005988 <initlock>

00000000800043cc <trapinithart>:
    800043cc:	ff010113          	addi	sp,sp,-16
    800043d0:	00813423          	sd	s0,8(sp)
    800043d4:	01010413          	addi	s0,sp,16
    800043d8:	00000797          	auipc	a5,0x0
    800043dc:	2f878793          	addi	a5,a5,760 # 800046d0 <kernelvec>
    800043e0:	10579073          	csrw	stvec,a5
    800043e4:	00813403          	ld	s0,8(sp)
    800043e8:	01010113          	addi	sp,sp,16
    800043ec:	00008067          	ret

00000000800043f0 <usertrap>:
    800043f0:	ff010113          	addi	sp,sp,-16
    800043f4:	00813423          	sd	s0,8(sp)
    800043f8:	01010413          	addi	s0,sp,16
    800043fc:	00813403          	ld	s0,8(sp)
    80004400:	01010113          	addi	sp,sp,16
    80004404:	00008067          	ret

0000000080004408 <usertrapret>:
    80004408:	ff010113          	addi	sp,sp,-16
    8000440c:	00813423          	sd	s0,8(sp)
    80004410:	01010413          	addi	s0,sp,16
    80004414:	00813403          	ld	s0,8(sp)
    80004418:	01010113          	addi	sp,sp,16
    8000441c:	00008067          	ret

0000000080004420 <kerneltrap>:
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00113c23          	sd	ra,24(sp)
    8000442c:	00913423          	sd	s1,8(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	142025f3          	csrr	a1,scause
    80004438:	100027f3          	csrr	a5,sstatus
    8000443c:	0027f793          	andi	a5,a5,2
    80004440:	10079c63          	bnez	a5,80004558 <kerneltrap+0x138>
    80004444:	142027f3          	csrr	a5,scause
    80004448:	0207ce63          	bltz	a5,80004484 <kerneltrap+0x64>
    8000444c:	00003517          	auipc	a0,0x3
    80004450:	f3450513          	addi	a0,a0,-204 # 80007380 <_ZZ14__print_uint64mE6digits+0x200>
    80004454:	00001097          	auipc	ra,0x1
    80004458:	884080e7          	jalr	-1916(ra) # 80004cd8 <__printf>
    8000445c:	141025f3          	csrr	a1,sepc
    80004460:	14302673          	csrr	a2,stval
    80004464:	00003517          	auipc	a0,0x3
    80004468:	f2c50513          	addi	a0,a0,-212 # 80007390 <_ZZ14__print_uint64mE6digits+0x210>
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	86c080e7          	jalr	-1940(ra) # 80004cd8 <__printf>
    80004474:	00003517          	auipc	a0,0x3
    80004478:	f3450513          	addi	a0,a0,-204 # 800073a8 <_ZZ14__print_uint64mE6digits+0x228>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	800080e7          	jalr	-2048(ra) # 80004c7c <panic>
    80004484:	0ff7f713          	andi	a4,a5,255
    80004488:	00900693          	li	a3,9
    8000448c:	04d70063          	beq	a4,a3,800044cc <kerneltrap+0xac>
    80004490:	fff00713          	li	a4,-1
    80004494:	03f71713          	slli	a4,a4,0x3f
    80004498:	00170713          	addi	a4,a4,1
    8000449c:	fae798e3          	bne	a5,a4,8000444c <kerneltrap+0x2c>
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	e00080e7          	jalr	-512(ra) # 800042a0 <cpuid>
    800044a8:	06050663          	beqz	a0,80004514 <kerneltrap+0xf4>
    800044ac:	144027f3          	csrr	a5,sip
    800044b0:	ffd7f793          	andi	a5,a5,-3
    800044b4:	14479073          	csrw	sip,a5
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	01013403          	ld	s0,16(sp)
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	02010113          	addi	sp,sp,32
    800044c8:	00008067          	ret
    800044cc:	00000097          	auipc	ra,0x0
    800044d0:	3c8080e7          	jalr	968(ra) # 80004894 <plic_claim>
    800044d4:	00a00793          	li	a5,10
    800044d8:	00050493          	mv	s1,a0
    800044dc:	06f50863          	beq	a0,a5,8000454c <kerneltrap+0x12c>
    800044e0:	fc050ce3          	beqz	a0,800044b8 <kerneltrap+0x98>
    800044e4:	00050593          	mv	a1,a0
    800044e8:	00003517          	auipc	a0,0x3
    800044ec:	e7850513          	addi	a0,a0,-392 # 80007360 <_ZZ14__print_uint64mE6digits+0x1e0>
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	7e8080e7          	jalr	2024(ra) # 80004cd8 <__printf>
    800044f8:	01013403          	ld	s0,16(sp)
    800044fc:	01813083          	ld	ra,24(sp)
    80004500:	00048513          	mv	a0,s1
    80004504:	00813483          	ld	s1,8(sp)
    80004508:	02010113          	addi	sp,sp,32
    8000450c:	00000317          	auipc	t1,0x0
    80004510:	3c030067          	jr	960(t1) # 800048cc <plic_complete>
    80004514:	00006517          	auipc	a0,0x6
    80004518:	e0c50513          	addi	a0,a0,-500 # 8000a320 <tickslock>
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	490080e7          	jalr	1168(ra) # 800059ac <acquire>
    80004524:	00004717          	auipc	a4,0x4
    80004528:	46070713          	addi	a4,a4,1120 # 80008984 <ticks>
    8000452c:	00072783          	lw	a5,0(a4)
    80004530:	00006517          	auipc	a0,0x6
    80004534:	df050513          	addi	a0,a0,-528 # 8000a320 <tickslock>
    80004538:	0017879b          	addiw	a5,a5,1
    8000453c:	00f72023          	sw	a5,0(a4)
    80004540:	00001097          	auipc	ra,0x1
    80004544:	538080e7          	jalr	1336(ra) # 80005a78 <release>
    80004548:	f65ff06f          	j	800044ac <kerneltrap+0x8c>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	094080e7          	jalr	148(ra) # 800055e0 <uartintr>
    80004554:	fa5ff06f          	j	800044f8 <kerneltrap+0xd8>
    80004558:	00003517          	auipc	a0,0x3
    8000455c:	de850513          	addi	a0,a0,-536 # 80007340 <_ZZ14__print_uint64mE6digits+0x1c0>
    80004560:	00000097          	auipc	ra,0x0
    80004564:	71c080e7          	jalr	1820(ra) # 80004c7c <panic>

0000000080004568 <clockintr>:
    80004568:	fe010113          	addi	sp,sp,-32
    8000456c:	00813823          	sd	s0,16(sp)
    80004570:	00913423          	sd	s1,8(sp)
    80004574:	00113c23          	sd	ra,24(sp)
    80004578:	02010413          	addi	s0,sp,32
    8000457c:	00006497          	auipc	s1,0x6
    80004580:	da448493          	addi	s1,s1,-604 # 8000a320 <tickslock>
    80004584:	00048513          	mv	a0,s1
    80004588:	00001097          	auipc	ra,0x1
    8000458c:	424080e7          	jalr	1060(ra) # 800059ac <acquire>
    80004590:	00004717          	auipc	a4,0x4
    80004594:	3f470713          	addi	a4,a4,1012 # 80008984 <ticks>
    80004598:	00072783          	lw	a5,0(a4)
    8000459c:	01013403          	ld	s0,16(sp)
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	00048513          	mv	a0,s1
    800045a8:	0017879b          	addiw	a5,a5,1
    800045ac:	00813483          	ld	s1,8(sp)
    800045b0:	00f72023          	sw	a5,0(a4)
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00001317          	auipc	t1,0x1
    800045bc:	4c030067          	jr	1216(t1) # 80005a78 <release>

00000000800045c0 <devintr>:
    800045c0:	142027f3          	csrr	a5,scause
    800045c4:	00000513          	li	a0,0
    800045c8:	0007c463          	bltz	a5,800045d0 <devintr+0x10>
    800045cc:	00008067          	ret
    800045d0:	fe010113          	addi	sp,sp,-32
    800045d4:	00813823          	sd	s0,16(sp)
    800045d8:	00113c23          	sd	ra,24(sp)
    800045dc:	00913423          	sd	s1,8(sp)
    800045e0:	02010413          	addi	s0,sp,32
    800045e4:	0ff7f713          	andi	a4,a5,255
    800045e8:	00900693          	li	a3,9
    800045ec:	04d70c63          	beq	a4,a3,80004644 <devintr+0x84>
    800045f0:	fff00713          	li	a4,-1
    800045f4:	03f71713          	slli	a4,a4,0x3f
    800045f8:	00170713          	addi	a4,a4,1
    800045fc:	00e78c63          	beq	a5,a4,80004614 <devintr+0x54>
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	00813483          	ld	s1,8(sp)
    8000460c:	02010113          	addi	sp,sp,32
    80004610:	00008067          	ret
    80004614:	00000097          	auipc	ra,0x0
    80004618:	c8c080e7          	jalr	-884(ra) # 800042a0 <cpuid>
    8000461c:	06050663          	beqz	a0,80004688 <devintr+0xc8>
    80004620:	144027f3          	csrr	a5,sip
    80004624:	ffd7f793          	andi	a5,a5,-3
    80004628:	14479073          	csrw	sip,a5
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	00200513          	li	a0,2
    8000463c:	02010113          	addi	sp,sp,32
    80004640:	00008067          	ret
    80004644:	00000097          	auipc	ra,0x0
    80004648:	250080e7          	jalr	592(ra) # 80004894 <plic_claim>
    8000464c:	00a00793          	li	a5,10
    80004650:	00050493          	mv	s1,a0
    80004654:	06f50663          	beq	a0,a5,800046c0 <devintr+0x100>
    80004658:	00100513          	li	a0,1
    8000465c:	fa0482e3          	beqz	s1,80004600 <devintr+0x40>
    80004660:	00048593          	mv	a1,s1
    80004664:	00003517          	auipc	a0,0x3
    80004668:	cfc50513          	addi	a0,a0,-772 # 80007360 <_ZZ14__print_uint64mE6digits+0x1e0>
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	66c080e7          	jalr	1644(ra) # 80004cd8 <__printf>
    80004674:	00048513          	mv	a0,s1
    80004678:	00000097          	auipc	ra,0x0
    8000467c:	254080e7          	jalr	596(ra) # 800048cc <plic_complete>
    80004680:	00100513          	li	a0,1
    80004684:	f7dff06f          	j	80004600 <devintr+0x40>
    80004688:	00006517          	auipc	a0,0x6
    8000468c:	c9850513          	addi	a0,a0,-872 # 8000a320 <tickslock>
    80004690:	00001097          	auipc	ra,0x1
    80004694:	31c080e7          	jalr	796(ra) # 800059ac <acquire>
    80004698:	00004717          	auipc	a4,0x4
    8000469c:	2ec70713          	addi	a4,a4,748 # 80008984 <ticks>
    800046a0:	00072783          	lw	a5,0(a4)
    800046a4:	00006517          	auipc	a0,0x6
    800046a8:	c7c50513          	addi	a0,a0,-900 # 8000a320 <tickslock>
    800046ac:	0017879b          	addiw	a5,a5,1
    800046b0:	00f72023          	sw	a5,0(a4)
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	3c4080e7          	jalr	964(ra) # 80005a78 <release>
    800046bc:	f65ff06f          	j	80004620 <devintr+0x60>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	f20080e7          	jalr	-224(ra) # 800055e0 <uartintr>
    800046c8:	fadff06f          	j	80004674 <devintr+0xb4>
    800046cc:	0000                	unimp
	...

00000000800046d0 <kernelvec>:
    800046d0:	f0010113          	addi	sp,sp,-256
    800046d4:	00113023          	sd	ra,0(sp)
    800046d8:	00213423          	sd	sp,8(sp)
    800046dc:	00313823          	sd	gp,16(sp)
    800046e0:	00413c23          	sd	tp,24(sp)
    800046e4:	02513023          	sd	t0,32(sp)
    800046e8:	02613423          	sd	t1,40(sp)
    800046ec:	02713823          	sd	t2,48(sp)
    800046f0:	02813c23          	sd	s0,56(sp)
    800046f4:	04913023          	sd	s1,64(sp)
    800046f8:	04a13423          	sd	a0,72(sp)
    800046fc:	04b13823          	sd	a1,80(sp)
    80004700:	04c13c23          	sd	a2,88(sp)
    80004704:	06d13023          	sd	a3,96(sp)
    80004708:	06e13423          	sd	a4,104(sp)
    8000470c:	06f13823          	sd	a5,112(sp)
    80004710:	07013c23          	sd	a6,120(sp)
    80004714:	09113023          	sd	a7,128(sp)
    80004718:	09213423          	sd	s2,136(sp)
    8000471c:	09313823          	sd	s3,144(sp)
    80004720:	09413c23          	sd	s4,152(sp)
    80004724:	0b513023          	sd	s5,160(sp)
    80004728:	0b613423          	sd	s6,168(sp)
    8000472c:	0b713823          	sd	s7,176(sp)
    80004730:	0b813c23          	sd	s8,184(sp)
    80004734:	0d913023          	sd	s9,192(sp)
    80004738:	0da13423          	sd	s10,200(sp)
    8000473c:	0db13823          	sd	s11,208(sp)
    80004740:	0dc13c23          	sd	t3,216(sp)
    80004744:	0fd13023          	sd	t4,224(sp)
    80004748:	0fe13423          	sd	t5,232(sp)
    8000474c:	0ff13823          	sd	t6,240(sp)
    80004750:	cd1ff0ef          	jal	ra,80004420 <kerneltrap>
    80004754:	00013083          	ld	ra,0(sp)
    80004758:	00813103          	ld	sp,8(sp)
    8000475c:	01013183          	ld	gp,16(sp)
    80004760:	02013283          	ld	t0,32(sp)
    80004764:	02813303          	ld	t1,40(sp)
    80004768:	03013383          	ld	t2,48(sp)
    8000476c:	03813403          	ld	s0,56(sp)
    80004770:	04013483          	ld	s1,64(sp)
    80004774:	04813503          	ld	a0,72(sp)
    80004778:	05013583          	ld	a1,80(sp)
    8000477c:	05813603          	ld	a2,88(sp)
    80004780:	06013683          	ld	a3,96(sp)
    80004784:	06813703          	ld	a4,104(sp)
    80004788:	07013783          	ld	a5,112(sp)
    8000478c:	07813803          	ld	a6,120(sp)
    80004790:	08013883          	ld	a7,128(sp)
    80004794:	08813903          	ld	s2,136(sp)
    80004798:	09013983          	ld	s3,144(sp)
    8000479c:	09813a03          	ld	s4,152(sp)
    800047a0:	0a013a83          	ld	s5,160(sp)
    800047a4:	0a813b03          	ld	s6,168(sp)
    800047a8:	0b013b83          	ld	s7,176(sp)
    800047ac:	0b813c03          	ld	s8,184(sp)
    800047b0:	0c013c83          	ld	s9,192(sp)
    800047b4:	0c813d03          	ld	s10,200(sp)
    800047b8:	0d013d83          	ld	s11,208(sp)
    800047bc:	0d813e03          	ld	t3,216(sp)
    800047c0:	0e013e83          	ld	t4,224(sp)
    800047c4:	0e813f03          	ld	t5,232(sp)
    800047c8:	0f013f83          	ld	t6,240(sp)
    800047cc:	10010113          	addi	sp,sp,256
    800047d0:	10200073          	sret
    800047d4:	00000013          	nop
    800047d8:	00000013          	nop
    800047dc:	00000013          	nop

00000000800047e0 <timervec>:
    800047e0:	34051573          	csrrw	a0,mscratch,a0
    800047e4:	00b53023          	sd	a1,0(a0)
    800047e8:	00c53423          	sd	a2,8(a0)
    800047ec:	00d53823          	sd	a3,16(a0)
    800047f0:	01853583          	ld	a1,24(a0)
    800047f4:	02053603          	ld	a2,32(a0)
    800047f8:	0005b683          	ld	a3,0(a1)
    800047fc:	00c686b3          	add	a3,a3,a2
    80004800:	00d5b023          	sd	a3,0(a1)
    80004804:	00200593          	li	a1,2
    80004808:	14459073          	csrw	sip,a1
    8000480c:	01053683          	ld	a3,16(a0)
    80004810:	00853603          	ld	a2,8(a0)
    80004814:	00053583          	ld	a1,0(a0)
    80004818:	34051573          	csrrw	a0,mscratch,a0
    8000481c:	30200073          	mret

0000000080004820 <plicinit>:
    80004820:	ff010113          	addi	sp,sp,-16
    80004824:	00813423          	sd	s0,8(sp)
    80004828:	01010413          	addi	s0,sp,16
    8000482c:	00813403          	ld	s0,8(sp)
    80004830:	0c0007b7          	lui	a5,0xc000
    80004834:	00100713          	li	a4,1
    80004838:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000483c:	00e7a223          	sw	a4,4(a5)
    80004840:	01010113          	addi	sp,sp,16
    80004844:	00008067          	ret

0000000080004848 <plicinithart>:
    80004848:	ff010113          	addi	sp,sp,-16
    8000484c:	00813023          	sd	s0,0(sp)
    80004850:	00113423          	sd	ra,8(sp)
    80004854:	01010413          	addi	s0,sp,16
    80004858:	00000097          	auipc	ra,0x0
    8000485c:	a48080e7          	jalr	-1464(ra) # 800042a0 <cpuid>
    80004860:	0085171b          	slliw	a4,a0,0x8
    80004864:	0c0027b7          	lui	a5,0xc002
    80004868:	00e787b3          	add	a5,a5,a4
    8000486c:	40200713          	li	a4,1026
    80004870:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004874:	00813083          	ld	ra,8(sp)
    80004878:	00013403          	ld	s0,0(sp)
    8000487c:	00d5151b          	slliw	a0,a0,0xd
    80004880:	0c2017b7          	lui	a5,0xc201
    80004884:	00a78533          	add	a0,a5,a0
    80004888:	00052023          	sw	zero,0(a0)
    8000488c:	01010113          	addi	sp,sp,16
    80004890:	00008067          	ret

0000000080004894 <plic_claim>:
    80004894:	ff010113          	addi	sp,sp,-16
    80004898:	00813023          	sd	s0,0(sp)
    8000489c:	00113423          	sd	ra,8(sp)
    800048a0:	01010413          	addi	s0,sp,16
    800048a4:	00000097          	auipc	ra,0x0
    800048a8:	9fc080e7          	jalr	-1540(ra) # 800042a0 <cpuid>
    800048ac:	00813083          	ld	ra,8(sp)
    800048b0:	00013403          	ld	s0,0(sp)
    800048b4:	00d5151b          	slliw	a0,a0,0xd
    800048b8:	0c2017b7          	lui	a5,0xc201
    800048bc:	00a78533          	add	a0,a5,a0
    800048c0:	00452503          	lw	a0,4(a0)
    800048c4:	01010113          	addi	sp,sp,16
    800048c8:	00008067          	ret

00000000800048cc <plic_complete>:
    800048cc:	fe010113          	addi	sp,sp,-32
    800048d0:	00813823          	sd	s0,16(sp)
    800048d4:	00913423          	sd	s1,8(sp)
    800048d8:	00113c23          	sd	ra,24(sp)
    800048dc:	02010413          	addi	s0,sp,32
    800048e0:	00050493          	mv	s1,a0
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	9bc080e7          	jalr	-1604(ra) # 800042a0 <cpuid>
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	00d5179b          	slliw	a5,a0,0xd
    800048f8:	0c201737          	lui	a4,0xc201
    800048fc:	00f707b3          	add	a5,a4,a5
    80004900:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004904:	00813483          	ld	s1,8(sp)
    80004908:	02010113          	addi	sp,sp,32
    8000490c:	00008067          	ret

0000000080004910 <consolewrite>:
    80004910:	fb010113          	addi	sp,sp,-80
    80004914:	04813023          	sd	s0,64(sp)
    80004918:	04113423          	sd	ra,72(sp)
    8000491c:	02913c23          	sd	s1,56(sp)
    80004920:	03213823          	sd	s2,48(sp)
    80004924:	03313423          	sd	s3,40(sp)
    80004928:	03413023          	sd	s4,32(sp)
    8000492c:	01513c23          	sd	s5,24(sp)
    80004930:	05010413          	addi	s0,sp,80
    80004934:	06c05c63          	blez	a2,800049ac <consolewrite+0x9c>
    80004938:	00060993          	mv	s3,a2
    8000493c:	00050a13          	mv	s4,a0
    80004940:	00058493          	mv	s1,a1
    80004944:	00000913          	li	s2,0
    80004948:	fff00a93          	li	s5,-1
    8000494c:	01c0006f          	j	80004968 <consolewrite+0x58>
    80004950:	fbf44503          	lbu	a0,-65(s0)
    80004954:	0019091b          	addiw	s2,s2,1
    80004958:	00148493          	addi	s1,s1,1
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	a9c080e7          	jalr	-1380(ra) # 800053f8 <uartputc>
    80004964:	03298063          	beq	s3,s2,80004984 <consolewrite+0x74>
    80004968:	00048613          	mv	a2,s1
    8000496c:	00100693          	li	a3,1
    80004970:	000a0593          	mv	a1,s4
    80004974:	fbf40513          	addi	a0,s0,-65
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	9e0080e7          	jalr	-1568(ra) # 80004358 <either_copyin>
    80004980:	fd5518e3          	bne	a0,s5,80004950 <consolewrite+0x40>
    80004984:	04813083          	ld	ra,72(sp)
    80004988:	04013403          	ld	s0,64(sp)
    8000498c:	03813483          	ld	s1,56(sp)
    80004990:	02813983          	ld	s3,40(sp)
    80004994:	02013a03          	ld	s4,32(sp)
    80004998:	01813a83          	ld	s5,24(sp)
    8000499c:	00090513          	mv	a0,s2
    800049a0:	03013903          	ld	s2,48(sp)
    800049a4:	05010113          	addi	sp,sp,80
    800049a8:	00008067          	ret
    800049ac:	00000913          	li	s2,0
    800049b0:	fd5ff06f          	j	80004984 <consolewrite+0x74>

00000000800049b4 <consoleread>:
    800049b4:	f9010113          	addi	sp,sp,-112
    800049b8:	06813023          	sd	s0,96(sp)
    800049bc:	04913c23          	sd	s1,88(sp)
    800049c0:	05213823          	sd	s2,80(sp)
    800049c4:	05313423          	sd	s3,72(sp)
    800049c8:	05413023          	sd	s4,64(sp)
    800049cc:	03513c23          	sd	s5,56(sp)
    800049d0:	03613823          	sd	s6,48(sp)
    800049d4:	03713423          	sd	s7,40(sp)
    800049d8:	03813023          	sd	s8,32(sp)
    800049dc:	06113423          	sd	ra,104(sp)
    800049e0:	01913c23          	sd	s9,24(sp)
    800049e4:	07010413          	addi	s0,sp,112
    800049e8:	00060b93          	mv	s7,a2
    800049ec:	00050913          	mv	s2,a0
    800049f0:	00058c13          	mv	s8,a1
    800049f4:	00060b1b          	sext.w	s6,a2
    800049f8:	00006497          	auipc	s1,0x6
    800049fc:	95048493          	addi	s1,s1,-1712 # 8000a348 <cons>
    80004a00:	00400993          	li	s3,4
    80004a04:	fff00a13          	li	s4,-1
    80004a08:	00a00a93          	li	s5,10
    80004a0c:	05705e63          	blez	s7,80004a68 <consoleread+0xb4>
    80004a10:	09c4a703          	lw	a4,156(s1)
    80004a14:	0984a783          	lw	a5,152(s1)
    80004a18:	0007071b          	sext.w	a4,a4
    80004a1c:	08e78463          	beq	a5,a4,80004aa4 <consoleread+0xf0>
    80004a20:	07f7f713          	andi	a4,a5,127
    80004a24:	00e48733          	add	a4,s1,a4
    80004a28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004a2c:	0017869b          	addiw	a3,a5,1
    80004a30:	08d4ac23          	sw	a3,152(s1)
    80004a34:	00070c9b          	sext.w	s9,a4
    80004a38:	0b370663          	beq	a4,s3,80004ae4 <consoleread+0x130>
    80004a3c:	00100693          	li	a3,1
    80004a40:	f9f40613          	addi	a2,s0,-97
    80004a44:	000c0593          	mv	a1,s8
    80004a48:	00090513          	mv	a0,s2
    80004a4c:	f8e40fa3          	sb	a4,-97(s0)
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	8bc080e7          	jalr	-1860(ra) # 8000430c <either_copyout>
    80004a58:	01450863          	beq	a0,s4,80004a68 <consoleread+0xb4>
    80004a5c:	001c0c13          	addi	s8,s8,1
    80004a60:	fffb8b9b          	addiw	s7,s7,-1
    80004a64:	fb5c94e3          	bne	s9,s5,80004a0c <consoleread+0x58>
    80004a68:	000b851b          	sext.w	a0,s7
    80004a6c:	06813083          	ld	ra,104(sp)
    80004a70:	06013403          	ld	s0,96(sp)
    80004a74:	05813483          	ld	s1,88(sp)
    80004a78:	05013903          	ld	s2,80(sp)
    80004a7c:	04813983          	ld	s3,72(sp)
    80004a80:	04013a03          	ld	s4,64(sp)
    80004a84:	03813a83          	ld	s5,56(sp)
    80004a88:	02813b83          	ld	s7,40(sp)
    80004a8c:	02013c03          	ld	s8,32(sp)
    80004a90:	01813c83          	ld	s9,24(sp)
    80004a94:	40ab053b          	subw	a0,s6,a0
    80004a98:	03013b03          	ld	s6,48(sp)
    80004a9c:	07010113          	addi	sp,sp,112
    80004aa0:	00008067          	ret
    80004aa4:	00001097          	auipc	ra,0x1
    80004aa8:	1d8080e7          	jalr	472(ra) # 80005c7c <push_on>
    80004aac:	0984a703          	lw	a4,152(s1)
    80004ab0:	09c4a783          	lw	a5,156(s1)
    80004ab4:	0007879b          	sext.w	a5,a5
    80004ab8:	fef70ce3          	beq	a4,a5,80004ab0 <consoleread+0xfc>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	234080e7          	jalr	564(ra) # 80005cf0 <pop_on>
    80004ac4:	0984a783          	lw	a5,152(s1)
    80004ac8:	07f7f713          	andi	a4,a5,127
    80004acc:	00e48733          	add	a4,s1,a4
    80004ad0:	01874703          	lbu	a4,24(a4)
    80004ad4:	0017869b          	addiw	a3,a5,1
    80004ad8:	08d4ac23          	sw	a3,152(s1)
    80004adc:	00070c9b          	sext.w	s9,a4
    80004ae0:	f5371ee3          	bne	a4,s3,80004a3c <consoleread+0x88>
    80004ae4:	000b851b          	sext.w	a0,s7
    80004ae8:	f96bf2e3          	bgeu	s7,s6,80004a6c <consoleread+0xb8>
    80004aec:	08f4ac23          	sw	a5,152(s1)
    80004af0:	f7dff06f          	j	80004a6c <consoleread+0xb8>

0000000080004af4 <consputc>:
    80004af4:	10000793          	li	a5,256
    80004af8:	00f50663          	beq	a0,a5,80004b04 <consputc+0x10>
    80004afc:	00001317          	auipc	t1,0x1
    80004b00:	9f430067          	jr	-1548(t1) # 800054f0 <uartputc_sync>
    80004b04:	ff010113          	addi	sp,sp,-16
    80004b08:	00113423          	sd	ra,8(sp)
    80004b0c:	00813023          	sd	s0,0(sp)
    80004b10:	01010413          	addi	s0,sp,16
    80004b14:	00800513          	li	a0,8
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	9d8080e7          	jalr	-1576(ra) # 800054f0 <uartputc_sync>
    80004b20:	02000513          	li	a0,32
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	9cc080e7          	jalr	-1588(ra) # 800054f0 <uartputc_sync>
    80004b2c:	00013403          	ld	s0,0(sp)
    80004b30:	00813083          	ld	ra,8(sp)
    80004b34:	00800513          	li	a0,8
    80004b38:	01010113          	addi	sp,sp,16
    80004b3c:	00001317          	auipc	t1,0x1
    80004b40:	9b430067          	jr	-1612(t1) # 800054f0 <uartputc_sync>

0000000080004b44 <consoleintr>:
    80004b44:	fe010113          	addi	sp,sp,-32
    80004b48:	00813823          	sd	s0,16(sp)
    80004b4c:	00913423          	sd	s1,8(sp)
    80004b50:	01213023          	sd	s2,0(sp)
    80004b54:	00113c23          	sd	ra,24(sp)
    80004b58:	02010413          	addi	s0,sp,32
    80004b5c:	00005917          	auipc	s2,0x5
    80004b60:	7ec90913          	addi	s2,s2,2028 # 8000a348 <cons>
    80004b64:	00050493          	mv	s1,a0
    80004b68:	00090513          	mv	a0,s2
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	e40080e7          	jalr	-448(ra) # 800059ac <acquire>
    80004b74:	02048c63          	beqz	s1,80004bac <consoleintr+0x68>
    80004b78:	0a092783          	lw	a5,160(s2)
    80004b7c:	09892703          	lw	a4,152(s2)
    80004b80:	07f00693          	li	a3,127
    80004b84:	40e7873b          	subw	a4,a5,a4
    80004b88:	02e6e263          	bltu	a3,a4,80004bac <consoleintr+0x68>
    80004b8c:	00d00713          	li	a4,13
    80004b90:	04e48063          	beq	s1,a4,80004bd0 <consoleintr+0x8c>
    80004b94:	07f7f713          	andi	a4,a5,127
    80004b98:	00e90733          	add	a4,s2,a4
    80004b9c:	0017879b          	addiw	a5,a5,1
    80004ba0:	0af92023          	sw	a5,160(s2)
    80004ba4:	00970c23          	sb	s1,24(a4)
    80004ba8:	08f92e23          	sw	a5,156(s2)
    80004bac:	01013403          	ld	s0,16(sp)
    80004bb0:	01813083          	ld	ra,24(sp)
    80004bb4:	00813483          	ld	s1,8(sp)
    80004bb8:	00013903          	ld	s2,0(sp)
    80004bbc:	00005517          	auipc	a0,0x5
    80004bc0:	78c50513          	addi	a0,a0,1932 # 8000a348 <cons>
    80004bc4:	02010113          	addi	sp,sp,32
    80004bc8:	00001317          	auipc	t1,0x1
    80004bcc:	eb030067          	jr	-336(t1) # 80005a78 <release>
    80004bd0:	00a00493          	li	s1,10
    80004bd4:	fc1ff06f          	j	80004b94 <consoleintr+0x50>

0000000080004bd8 <consoleinit>:
    80004bd8:	fe010113          	addi	sp,sp,-32
    80004bdc:	00113c23          	sd	ra,24(sp)
    80004be0:	00813823          	sd	s0,16(sp)
    80004be4:	00913423          	sd	s1,8(sp)
    80004be8:	02010413          	addi	s0,sp,32
    80004bec:	00005497          	auipc	s1,0x5
    80004bf0:	75c48493          	addi	s1,s1,1884 # 8000a348 <cons>
    80004bf4:	00048513          	mv	a0,s1
    80004bf8:	00002597          	auipc	a1,0x2
    80004bfc:	7c058593          	addi	a1,a1,1984 # 800073b8 <_ZZ14__print_uint64mE6digits+0x238>
    80004c00:	00001097          	auipc	ra,0x1
    80004c04:	d88080e7          	jalr	-632(ra) # 80005988 <initlock>
    80004c08:	00000097          	auipc	ra,0x0
    80004c0c:	7ac080e7          	jalr	1964(ra) # 800053b4 <uartinit>
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	00000797          	auipc	a5,0x0
    80004c1c:	d9c78793          	addi	a5,a5,-612 # 800049b4 <consoleread>
    80004c20:	0af4bc23          	sd	a5,184(s1)
    80004c24:	00000797          	auipc	a5,0x0
    80004c28:	cec78793          	addi	a5,a5,-788 # 80004910 <consolewrite>
    80004c2c:	0cf4b023          	sd	a5,192(s1)
    80004c30:	00813483          	ld	s1,8(sp)
    80004c34:	02010113          	addi	sp,sp,32
    80004c38:	00008067          	ret

0000000080004c3c <console_read>:
    80004c3c:	ff010113          	addi	sp,sp,-16
    80004c40:	00813423          	sd	s0,8(sp)
    80004c44:	01010413          	addi	s0,sp,16
    80004c48:	00813403          	ld	s0,8(sp)
    80004c4c:	00005317          	auipc	t1,0x5
    80004c50:	7b433303          	ld	t1,1972(t1) # 8000a400 <devsw+0x10>
    80004c54:	01010113          	addi	sp,sp,16
    80004c58:	00030067          	jr	t1

0000000080004c5c <console_write>:
    80004c5c:	ff010113          	addi	sp,sp,-16
    80004c60:	00813423          	sd	s0,8(sp)
    80004c64:	01010413          	addi	s0,sp,16
    80004c68:	00813403          	ld	s0,8(sp)
    80004c6c:	00005317          	auipc	t1,0x5
    80004c70:	79c33303          	ld	t1,1948(t1) # 8000a408 <devsw+0x18>
    80004c74:	01010113          	addi	sp,sp,16
    80004c78:	00030067          	jr	t1

0000000080004c7c <panic>:
    80004c7c:	fe010113          	addi	sp,sp,-32
    80004c80:	00113c23          	sd	ra,24(sp)
    80004c84:	00813823          	sd	s0,16(sp)
    80004c88:	00913423          	sd	s1,8(sp)
    80004c8c:	02010413          	addi	s0,sp,32
    80004c90:	00050493          	mv	s1,a0
    80004c94:	00002517          	auipc	a0,0x2
    80004c98:	72c50513          	addi	a0,a0,1836 # 800073c0 <_ZZ14__print_uint64mE6digits+0x240>
    80004c9c:	00006797          	auipc	a5,0x6
    80004ca0:	8007a623          	sw	zero,-2036(a5) # 8000a4a8 <pr+0x18>
    80004ca4:	00000097          	auipc	ra,0x0
    80004ca8:	034080e7          	jalr	52(ra) # 80004cd8 <__printf>
    80004cac:	00048513          	mv	a0,s1
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	028080e7          	jalr	40(ra) # 80004cd8 <__printf>
    80004cb8:	00002517          	auipc	a0,0x2
    80004cbc:	52850513          	addi	a0,a0,1320 # 800071e0 <_ZZ14__print_uint64mE6digits+0x60>
    80004cc0:	00000097          	auipc	ra,0x0
    80004cc4:	018080e7          	jalr	24(ra) # 80004cd8 <__printf>
    80004cc8:	00100793          	li	a5,1
    80004ccc:	00004717          	auipc	a4,0x4
    80004cd0:	caf72e23          	sw	a5,-836(a4) # 80008988 <panicked>
    80004cd4:	0000006f          	j	80004cd4 <panic+0x58>

0000000080004cd8 <__printf>:
    80004cd8:	f3010113          	addi	sp,sp,-208
    80004cdc:	08813023          	sd	s0,128(sp)
    80004ce0:	07313423          	sd	s3,104(sp)
    80004ce4:	09010413          	addi	s0,sp,144
    80004ce8:	05813023          	sd	s8,64(sp)
    80004cec:	08113423          	sd	ra,136(sp)
    80004cf0:	06913c23          	sd	s1,120(sp)
    80004cf4:	07213823          	sd	s2,112(sp)
    80004cf8:	07413023          	sd	s4,96(sp)
    80004cfc:	05513c23          	sd	s5,88(sp)
    80004d00:	05613823          	sd	s6,80(sp)
    80004d04:	05713423          	sd	s7,72(sp)
    80004d08:	03913c23          	sd	s9,56(sp)
    80004d0c:	03a13823          	sd	s10,48(sp)
    80004d10:	03b13423          	sd	s11,40(sp)
    80004d14:	00005317          	auipc	t1,0x5
    80004d18:	77c30313          	addi	t1,t1,1916 # 8000a490 <pr>
    80004d1c:	01832c03          	lw	s8,24(t1)
    80004d20:	00b43423          	sd	a1,8(s0)
    80004d24:	00c43823          	sd	a2,16(s0)
    80004d28:	00d43c23          	sd	a3,24(s0)
    80004d2c:	02e43023          	sd	a4,32(s0)
    80004d30:	02f43423          	sd	a5,40(s0)
    80004d34:	03043823          	sd	a6,48(s0)
    80004d38:	03143c23          	sd	a7,56(s0)
    80004d3c:	00050993          	mv	s3,a0
    80004d40:	4a0c1663          	bnez	s8,800051ec <__printf+0x514>
    80004d44:	60098c63          	beqz	s3,8000535c <__printf+0x684>
    80004d48:	0009c503          	lbu	a0,0(s3)
    80004d4c:	00840793          	addi	a5,s0,8
    80004d50:	f6f43c23          	sd	a5,-136(s0)
    80004d54:	00000493          	li	s1,0
    80004d58:	22050063          	beqz	a0,80004f78 <__printf+0x2a0>
    80004d5c:	00002a37          	lui	s4,0x2
    80004d60:	00018ab7          	lui	s5,0x18
    80004d64:	000f4b37          	lui	s6,0xf4
    80004d68:	00989bb7          	lui	s7,0x989
    80004d6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004d70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004d74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004d78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004d7c:	00148c9b          	addiw	s9,s1,1
    80004d80:	02500793          	li	a5,37
    80004d84:	01998933          	add	s2,s3,s9
    80004d88:	38f51263          	bne	a0,a5,8000510c <__printf+0x434>
    80004d8c:	00094783          	lbu	a5,0(s2)
    80004d90:	00078c9b          	sext.w	s9,a5
    80004d94:	1e078263          	beqz	a5,80004f78 <__printf+0x2a0>
    80004d98:	0024849b          	addiw	s1,s1,2
    80004d9c:	07000713          	li	a4,112
    80004da0:	00998933          	add	s2,s3,s1
    80004da4:	38e78a63          	beq	a5,a4,80005138 <__printf+0x460>
    80004da8:	20f76863          	bltu	a4,a5,80004fb8 <__printf+0x2e0>
    80004dac:	42a78863          	beq	a5,a0,800051dc <__printf+0x504>
    80004db0:	06400713          	li	a4,100
    80004db4:	40e79663          	bne	a5,a4,800051c0 <__printf+0x4e8>
    80004db8:	f7843783          	ld	a5,-136(s0)
    80004dbc:	0007a603          	lw	a2,0(a5)
    80004dc0:	00878793          	addi	a5,a5,8
    80004dc4:	f6f43c23          	sd	a5,-136(s0)
    80004dc8:	42064a63          	bltz	a2,800051fc <__printf+0x524>
    80004dcc:	00a00713          	li	a4,10
    80004dd0:	02e677bb          	remuw	a5,a2,a4
    80004dd4:	00002d97          	auipc	s11,0x2
    80004dd8:	614d8d93          	addi	s11,s11,1556 # 800073e8 <digits>
    80004ddc:	00900593          	li	a1,9
    80004de0:	0006051b          	sext.w	a0,a2
    80004de4:	00000c93          	li	s9,0
    80004de8:	02079793          	slli	a5,a5,0x20
    80004dec:	0207d793          	srli	a5,a5,0x20
    80004df0:	00fd87b3          	add	a5,s11,a5
    80004df4:	0007c783          	lbu	a5,0(a5)
    80004df8:	02e656bb          	divuw	a3,a2,a4
    80004dfc:	f8f40023          	sb	a5,-128(s0)
    80004e00:	14c5d863          	bge	a1,a2,80004f50 <__printf+0x278>
    80004e04:	06300593          	li	a1,99
    80004e08:	00100c93          	li	s9,1
    80004e0c:	02e6f7bb          	remuw	a5,a3,a4
    80004e10:	02079793          	slli	a5,a5,0x20
    80004e14:	0207d793          	srli	a5,a5,0x20
    80004e18:	00fd87b3          	add	a5,s11,a5
    80004e1c:	0007c783          	lbu	a5,0(a5)
    80004e20:	02e6d73b          	divuw	a4,a3,a4
    80004e24:	f8f400a3          	sb	a5,-127(s0)
    80004e28:	12a5f463          	bgeu	a1,a0,80004f50 <__printf+0x278>
    80004e2c:	00a00693          	li	a3,10
    80004e30:	00900593          	li	a1,9
    80004e34:	02d777bb          	remuw	a5,a4,a3
    80004e38:	02079793          	slli	a5,a5,0x20
    80004e3c:	0207d793          	srli	a5,a5,0x20
    80004e40:	00fd87b3          	add	a5,s11,a5
    80004e44:	0007c503          	lbu	a0,0(a5)
    80004e48:	02d757bb          	divuw	a5,a4,a3
    80004e4c:	f8a40123          	sb	a0,-126(s0)
    80004e50:	48e5f263          	bgeu	a1,a4,800052d4 <__printf+0x5fc>
    80004e54:	06300513          	li	a0,99
    80004e58:	02d7f5bb          	remuw	a1,a5,a3
    80004e5c:	02059593          	slli	a1,a1,0x20
    80004e60:	0205d593          	srli	a1,a1,0x20
    80004e64:	00bd85b3          	add	a1,s11,a1
    80004e68:	0005c583          	lbu	a1,0(a1)
    80004e6c:	02d7d7bb          	divuw	a5,a5,a3
    80004e70:	f8b401a3          	sb	a1,-125(s0)
    80004e74:	48e57263          	bgeu	a0,a4,800052f8 <__printf+0x620>
    80004e78:	3e700513          	li	a0,999
    80004e7c:	02d7f5bb          	remuw	a1,a5,a3
    80004e80:	02059593          	slli	a1,a1,0x20
    80004e84:	0205d593          	srli	a1,a1,0x20
    80004e88:	00bd85b3          	add	a1,s11,a1
    80004e8c:	0005c583          	lbu	a1,0(a1)
    80004e90:	02d7d7bb          	divuw	a5,a5,a3
    80004e94:	f8b40223          	sb	a1,-124(s0)
    80004e98:	46e57663          	bgeu	a0,a4,80005304 <__printf+0x62c>
    80004e9c:	02d7f5bb          	remuw	a1,a5,a3
    80004ea0:	02059593          	slli	a1,a1,0x20
    80004ea4:	0205d593          	srli	a1,a1,0x20
    80004ea8:	00bd85b3          	add	a1,s11,a1
    80004eac:	0005c583          	lbu	a1,0(a1)
    80004eb0:	02d7d7bb          	divuw	a5,a5,a3
    80004eb4:	f8b402a3          	sb	a1,-123(s0)
    80004eb8:	46ea7863          	bgeu	s4,a4,80005328 <__printf+0x650>
    80004ebc:	02d7f5bb          	remuw	a1,a5,a3
    80004ec0:	02059593          	slli	a1,a1,0x20
    80004ec4:	0205d593          	srli	a1,a1,0x20
    80004ec8:	00bd85b3          	add	a1,s11,a1
    80004ecc:	0005c583          	lbu	a1,0(a1)
    80004ed0:	02d7d7bb          	divuw	a5,a5,a3
    80004ed4:	f8b40323          	sb	a1,-122(s0)
    80004ed8:	3eeaf863          	bgeu	s5,a4,800052c8 <__printf+0x5f0>
    80004edc:	02d7f5bb          	remuw	a1,a5,a3
    80004ee0:	02059593          	slli	a1,a1,0x20
    80004ee4:	0205d593          	srli	a1,a1,0x20
    80004ee8:	00bd85b3          	add	a1,s11,a1
    80004eec:	0005c583          	lbu	a1,0(a1)
    80004ef0:	02d7d7bb          	divuw	a5,a5,a3
    80004ef4:	f8b403a3          	sb	a1,-121(s0)
    80004ef8:	42eb7e63          	bgeu	s6,a4,80005334 <__printf+0x65c>
    80004efc:	02d7f5bb          	remuw	a1,a5,a3
    80004f00:	02059593          	slli	a1,a1,0x20
    80004f04:	0205d593          	srli	a1,a1,0x20
    80004f08:	00bd85b3          	add	a1,s11,a1
    80004f0c:	0005c583          	lbu	a1,0(a1)
    80004f10:	02d7d7bb          	divuw	a5,a5,a3
    80004f14:	f8b40423          	sb	a1,-120(s0)
    80004f18:	42ebfc63          	bgeu	s7,a4,80005350 <__printf+0x678>
    80004f1c:	02079793          	slli	a5,a5,0x20
    80004f20:	0207d793          	srli	a5,a5,0x20
    80004f24:	00fd8db3          	add	s11,s11,a5
    80004f28:	000dc703          	lbu	a4,0(s11)
    80004f2c:	00a00793          	li	a5,10
    80004f30:	00900c93          	li	s9,9
    80004f34:	f8e404a3          	sb	a4,-119(s0)
    80004f38:	00065c63          	bgez	a2,80004f50 <__printf+0x278>
    80004f3c:	f9040713          	addi	a4,s0,-112
    80004f40:	00f70733          	add	a4,a4,a5
    80004f44:	02d00693          	li	a3,45
    80004f48:	fed70823          	sb	a3,-16(a4)
    80004f4c:	00078c93          	mv	s9,a5
    80004f50:	f8040793          	addi	a5,s0,-128
    80004f54:	01978cb3          	add	s9,a5,s9
    80004f58:	f7f40d13          	addi	s10,s0,-129
    80004f5c:	000cc503          	lbu	a0,0(s9)
    80004f60:	fffc8c93          	addi	s9,s9,-1
    80004f64:	00000097          	auipc	ra,0x0
    80004f68:	b90080e7          	jalr	-1136(ra) # 80004af4 <consputc>
    80004f6c:	ffac98e3          	bne	s9,s10,80004f5c <__printf+0x284>
    80004f70:	00094503          	lbu	a0,0(s2)
    80004f74:	e00514e3          	bnez	a0,80004d7c <__printf+0xa4>
    80004f78:	1a0c1663          	bnez	s8,80005124 <__printf+0x44c>
    80004f7c:	08813083          	ld	ra,136(sp)
    80004f80:	08013403          	ld	s0,128(sp)
    80004f84:	07813483          	ld	s1,120(sp)
    80004f88:	07013903          	ld	s2,112(sp)
    80004f8c:	06813983          	ld	s3,104(sp)
    80004f90:	06013a03          	ld	s4,96(sp)
    80004f94:	05813a83          	ld	s5,88(sp)
    80004f98:	05013b03          	ld	s6,80(sp)
    80004f9c:	04813b83          	ld	s7,72(sp)
    80004fa0:	04013c03          	ld	s8,64(sp)
    80004fa4:	03813c83          	ld	s9,56(sp)
    80004fa8:	03013d03          	ld	s10,48(sp)
    80004fac:	02813d83          	ld	s11,40(sp)
    80004fb0:	0d010113          	addi	sp,sp,208
    80004fb4:	00008067          	ret
    80004fb8:	07300713          	li	a4,115
    80004fbc:	1ce78a63          	beq	a5,a4,80005190 <__printf+0x4b8>
    80004fc0:	07800713          	li	a4,120
    80004fc4:	1ee79e63          	bne	a5,a4,800051c0 <__printf+0x4e8>
    80004fc8:	f7843783          	ld	a5,-136(s0)
    80004fcc:	0007a703          	lw	a4,0(a5)
    80004fd0:	00878793          	addi	a5,a5,8
    80004fd4:	f6f43c23          	sd	a5,-136(s0)
    80004fd8:	28074263          	bltz	a4,8000525c <__printf+0x584>
    80004fdc:	00002d97          	auipc	s11,0x2
    80004fe0:	40cd8d93          	addi	s11,s11,1036 # 800073e8 <digits>
    80004fe4:	00f77793          	andi	a5,a4,15
    80004fe8:	00fd87b3          	add	a5,s11,a5
    80004fec:	0007c683          	lbu	a3,0(a5)
    80004ff0:	00f00613          	li	a2,15
    80004ff4:	0007079b          	sext.w	a5,a4
    80004ff8:	f8d40023          	sb	a3,-128(s0)
    80004ffc:	0047559b          	srliw	a1,a4,0x4
    80005000:	0047569b          	srliw	a3,a4,0x4
    80005004:	00000c93          	li	s9,0
    80005008:	0ee65063          	bge	a2,a4,800050e8 <__printf+0x410>
    8000500c:	00f6f693          	andi	a3,a3,15
    80005010:	00dd86b3          	add	a3,s11,a3
    80005014:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005018:	0087d79b          	srliw	a5,a5,0x8
    8000501c:	00100c93          	li	s9,1
    80005020:	f8d400a3          	sb	a3,-127(s0)
    80005024:	0cb67263          	bgeu	a2,a1,800050e8 <__printf+0x410>
    80005028:	00f7f693          	andi	a3,a5,15
    8000502c:	00dd86b3          	add	a3,s11,a3
    80005030:	0006c583          	lbu	a1,0(a3)
    80005034:	00f00613          	li	a2,15
    80005038:	0047d69b          	srliw	a3,a5,0x4
    8000503c:	f8b40123          	sb	a1,-126(s0)
    80005040:	0047d593          	srli	a1,a5,0x4
    80005044:	28f67e63          	bgeu	a2,a5,800052e0 <__printf+0x608>
    80005048:	00f6f693          	andi	a3,a3,15
    8000504c:	00dd86b3          	add	a3,s11,a3
    80005050:	0006c503          	lbu	a0,0(a3)
    80005054:	0087d813          	srli	a6,a5,0x8
    80005058:	0087d69b          	srliw	a3,a5,0x8
    8000505c:	f8a401a3          	sb	a0,-125(s0)
    80005060:	28b67663          	bgeu	a2,a1,800052ec <__printf+0x614>
    80005064:	00f6f693          	andi	a3,a3,15
    80005068:	00dd86b3          	add	a3,s11,a3
    8000506c:	0006c583          	lbu	a1,0(a3)
    80005070:	00c7d513          	srli	a0,a5,0xc
    80005074:	00c7d69b          	srliw	a3,a5,0xc
    80005078:	f8b40223          	sb	a1,-124(s0)
    8000507c:	29067a63          	bgeu	a2,a6,80005310 <__printf+0x638>
    80005080:	00f6f693          	andi	a3,a3,15
    80005084:	00dd86b3          	add	a3,s11,a3
    80005088:	0006c583          	lbu	a1,0(a3)
    8000508c:	0107d813          	srli	a6,a5,0x10
    80005090:	0107d69b          	srliw	a3,a5,0x10
    80005094:	f8b402a3          	sb	a1,-123(s0)
    80005098:	28a67263          	bgeu	a2,a0,8000531c <__printf+0x644>
    8000509c:	00f6f693          	andi	a3,a3,15
    800050a0:	00dd86b3          	add	a3,s11,a3
    800050a4:	0006c683          	lbu	a3,0(a3)
    800050a8:	0147d79b          	srliw	a5,a5,0x14
    800050ac:	f8d40323          	sb	a3,-122(s0)
    800050b0:	21067663          	bgeu	a2,a6,800052bc <__printf+0x5e4>
    800050b4:	02079793          	slli	a5,a5,0x20
    800050b8:	0207d793          	srli	a5,a5,0x20
    800050bc:	00fd8db3          	add	s11,s11,a5
    800050c0:	000dc683          	lbu	a3,0(s11)
    800050c4:	00800793          	li	a5,8
    800050c8:	00700c93          	li	s9,7
    800050cc:	f8d403a3          	sb	a3,-121(s0)
    800050d0:	00075c63          	bgez	a4,800050e8 <__printf+0x410>
    800050d4:	f9040713          	addi	a4,s0,-112
    800050d8:	00f70733          	add	a4,a4,a5
    800050dc:	02d00693          	li	a3,45
    800050e0:	fed70823          	sb	a3,-16(a4)
    800050e4:	00078c93          	mv	s9,a5
    800050e8:	f8040793          	addi	a5,s0,-128
    800050ec:	01978cb3          	add	s9,a5,s9
    800050f0:	f7f40d13          	addi	s10,s0,-129
    800050f4:	000cc503          	lbu	a0,0(s9)
    800050f8:	fffc8c93          	addi	s9,s9,-1
    800050fc:	00000097          	auipc	ra,0x0
    80005100:	9f8080e7          	jalr	-1544(ra) # 80004af4 <consputc>
    80005104:	ff9d18e3          	bne	s10,s9,800050f4 <__printf+0x41c>
    80005108:	0100006f          	j	80005118 <__printf+0x440>
    8000510c:	00000097          	auipc	ra,0x0
    80005110:	9e8080e7          	jalr	-1560(ra) # 80004af4 <consputc>
    80005114:	000c8493          	mv	s1,s9
    80005118:	00094503          	lbu	a0,0(s2)
    8000511c:	c60510e3          	bnez	a0,80004d7c <__printf+0xa4>
    80005120:	e40c0ee3          	beqz	s8,80004f7c <__printf+0x2a4>
    80005124:	00005517          	auipc	a0,0x5
    80005128:	36c50513          	addi	a0,a0,876 # 8000a490 <pr>
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	94c080e7          	jalr	-1716(ra) # 80005a78 <release>
    80005134:	e49ff06f          	j	80004f7c <__printf+0x2a4>
    80005138:	f7843783          	ld	a5,-136(s0)
    8000513c:	03000513          	li	a0,48
    80005140:	01000d13          	li	s10,16
    80005144:	00878713          	addi	a4,a5,8
    80005148:	0007bc83          	ld	s9,0(a5)
    8000514c:	f6e43c23          	sd	a4,-136(s0)
    80005150:	00000097          	auipc	ra,0x0
    80005154:	9a4080e7          	jalr	-1628(ra) # 80004af4 <consputc>
    80005158:	07800513          	li	a0,120
    8000515c:	00000097          	auipc	ra,0x0
    80005160:	998080e7          	jalr	-1640(ra) # 80004af4 <consputc>
    80005164:	00002d97          	auipc	s11,0x2
    80005168:	284d8d93          	addi	s11,s11,644 # 800073e8 <digits>
    8000516c:	03ccd793          	srli	a5,s9,0x3c
    80005170:	00fd87b3          	add	a5,s11,a5
    80005174:	0007c503          	lbu	a0,0(a5)
    80005178:	fffd0d1b          	addiw	s10,s10,-1
    8000517c:	004c9c93          	slli	s9,s9,0x4
    80005180:	00000097          	auipc	ra,0x0
    80005184:	974080e7          	jalr	-1676(ra) # 80004af4 <consputc>
    80005188:	fe0d12e3          	bnez	s10,8000516c <__printf+0x494>
    8000518c:	f8dff06f          	j	80005118 <__printf+0x440>
    80005190:	f7843783          	ld	a5,-136(s0)
    80005194:	0007bc83          	ld	s9,0(a5)
    80005198:	00878793          	addi	a5,a5,8
    8000519c:	f6f43c23          	sd	a5,-136(s0)
    800051a0:	000c9a63          	bnez	s9,800051b4 <__printf+0x4dc>
    800051a4:	1080006f          	j	800052ac <__printf+0x5d4>
    800051a8:	001c8c93          	addi	s9,s9,1
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	948080e7          	jalr	-1720(ra) # 80004af4 <consputc>
    800051b4:	000cc503          	lbu	a0,0(s9)
    800051b8:	fe0518e3          	bnez	a0,800051a8 <__printf+0x4d0>
    800051bc:	f5dff06f          	j	80005118 <__printf+0x440>
    800051c0:	02500513          	li	a0,37
    800051c4:	00000097          	auipc	ra,0x0
    800051c8:	930080e7          	jalr	-1744(ra) # 80004af4 <consputc>
    800051cc:	000c8513          	mv	a0,s9
    800051d0:	00000097          	auipc	ra,0x0
    800051d4:	924080e7          	jalr	-1756(ra) # 80004af4 <consputc>
    800051d8:	f41ff06f          	j	80005118 <__printf+0x440>
    800051dc:	02500513          	li	a0,37
    800051e0:	00000097          	auipc	ra,0x0
    800051e4:	914080e7          	jalr	-1772(ra) # 80004af4 <consputc>
    800051e8:	f31ff06f          	j	80005118 <__printf+0x440>
    800051ec:	00030513          	mv	a0,t1
    800051f0:	00000097          	auipc	ra,0x0
    800051f4:	7bc080e7          	jalr	1980(ra) # 800059ac <acquire>
    800051f8:	b4dff06f          	j	80004d44 <__printf+0x6c>
    800051fc:	40c0053b          	negw	a0,a2
    80005200:	00a00713          	li	a4,10
    80005204:	02e576bb          	remuw	a3,a0,a4
    80005208:	00002d97          	auipc	s11,0x2
    8000520c:	1e0d8d93          	addi	s11,s11,480 # 800073e8 <digits>
    80005210:	ff700593          	li	a1,-9
    80005214:	02069693          	slli	a3,a3,0x20
    80005218:	0206d693          	srli	a3,a3,0x20
    8000521c:	00dd86b3          	add	a3,s11,a3
    80005220:	0006c683          	lbu	a3,0(a3)
    80005224:	02e557bb          	divuw	a5,a0,a4
    80005228:	f8d40023          	sb	a3,-128(s0)
    8000522c:	10b65e63          	bge	a2,a1,80005348 <__printf+0x670>
    80005230:	06300593          	li	a1,99
    80005234:	02e7f6bb          	remuw	a3,a5,a4
    80005238:	02069693          	slli	a3,a3,0x20
    8000523c:	0206d693          	srli	a3,a3,0x20
    80005240:	00dd86b3          	add	a3,s11,a3
    80005244:	0006c683          	lbu	a3,0(a3)
    80005248:	02e7d73b          	divuw	a4,a5,a4
    8000524c:	00200793          	li	a5,2
    80005250:	f8d400a3          	sb	a3,-127(s0)
    80005254:	bca5ece3          	bltu	a1,a0,80004e2c <__printf+0x154>
    80005258:	ce5ff06f          	j	80004f3c <__printf+0x264>
    8000525c:	40e007bb          	negw	a5,a4
    80005260:	00002d97          	auipc	s11,0x2
    80005264:	188d8d93          	addi	s11,s11,392 # 800073e8 <digits>
    80005268:	00f7f693          	andi	a3,a5,15
    8000526c:	00dd86b3          	add	a3,s11,a3
    80005270:	0006c583          	lbu	a1,0(a3)
    80005274:	ff100613          	li	a2,-15
    80005278:	0047d69b          	srliw	a3,a5,0x4
    8000527c:	f8b40023          	sb	a1,-128(s0)
    80005280:	0047d59b          	srliw	a1,a5,0x4
    80005284:	0ac75e63          	bge	a4,a2,80005340 <__printf+0x668>
    80005288:	00f6f693          	andi	a3,a3,15
    8000528c:	00dd86b3          	add	a3,s11,a3
    80005290:	0006c603          	lbu	a2,0(a3)
    80005294:	00f00693          	li	a3,15
    80005298:	0087d79b          	srliw	a5,a5,0x8
    8000529c:	f8c400a3          	sb	a2,-127(s0)
    800052a0:	d8b6e4e3          	bltu	a3,a1,80005028 <__printf+0x350>
    800052a4:	00200793          	li	a5,2
    800052a8:	e2dff06f          	j	800050d4 <__printf+0x3fc>
    800052ac:	00002c97          	auipc	s9,0x2
    800052b0:	11cc8c93          	addi	s9,s9,284 # 800073c8 <_ZZ14__print_uint64mE6digits+0x248>
    800052b4:	02800513          	li	a0,40
    800052b8:	ef1ff06f          	j	800051a8 <__printf+0x4d0>
    800052bc:	00700793          	li	a5,7
    800052c0:	00600c93          	li	s9,6
    800052c4:	e0dff06f          	j	800050d0 <__printf+0x3f8>
    800052c8:	00700793          	li	a5,7
    800052cc:	00600c93          	li	s9,6
    800052d0:	c69ff06f          	j	80004f38 <__printf+0x260>
    800052d4:	00300793          	li	a5,3
    800052d8:	00200c93          	li	s9,2
    800052dc:	c5dff06f          	j	80004f38 <__printf+0x260>
    800052e0:	00300793          	li	a5,3
    800052e4:	00200c93          	li	s9,2
    800052e8:	de9ff06f          	j	800050d0 <__printf+0x3f8>
    800052ec:	00400793          	li	a5,4
    800052f0:	00300c93          	li	s9,3
    800052f4:	dddff06f          	j	800050d0 <__printf+0x3f8>
    800052f8:	00400793          	li	a5,4
    800052fc:	00300c93          	li	s9,3
    80005300:	c39ff06f          	j	80004f38 <__printf+0x260>
    80005304:	00500793          	li	a5,5
    80005308:	00400c93          	li	s9,4
    8000530c:	c2dff06f          	j	80004f38 <__printf+0x260>
    80005310:	00500793          	li	a5,5
    80005314:	00400c93          	li	s9,4
    80005318:	db9ff06f          	j	800050d0 <__printf+0x3f8>
    8000531c:	00600793          	li	a5,6
    80005320:	00500c93          	li	s9,5
    80005324:	dadff06f          	j	800050d0 <__printf+0x3f8>
    80005328:	00600793          	li	a5,6
    8000532c:	00500c93          	li	s9,5
    80005330:	c09ff06f          	j	80004f38 <__printf+0x260>
    80005334:	00800793          	li	a5,8
    80005338:	00700c93          	li	s9,7
    8000533c:	bfdff06f          	j	80004f38 <__printf+0x260>
    80005340:	00100793          	li	a5,1
    80005344:	d91ff06f          	j	800050d4 <__printf+0x3fc>
    80005348:	00100793          	li	a5,1
    8000534c:	bf1ff06f          	j	80004f3c <__printf+0x264>
    80005350:	00900793          	li	a5,9
    80005354:	00800c93          	li	s9,8
    80005358:	be1ff06f          	j	80004f38 <__printf+0x260>
    8000535c:	00002517          	auipc	a0,0x2
    80005360:	07450513          	addi	a0,a0,116 # 800073d0 <_ZZ14__print_uint64mE6digits+0x250>
    80005364:	00000097          	auipc	ra,0x0
    80005368:	918080e7          	jalr	-1768(ra) # 80004c7c <panic>

000000008000536c <printfinit>:
    8000536c:	fe010113          	addi	sp,sp,-32
    80005370:	00813823          	sd	s0,16(sp)
    80005374:	00913423          	sd	s1,8(sp)
    80005378:	00113c23          	sd	ra,24(sp)
    8000537c:	02010413          	addi	s0,sp,32
    80005380:	00005497          	auipc	s1,0x5
    80005384:	11048493          	addi	s1,s1,272 # 8000a490 <pr>
    80005388:	00048513          	mv	a0,s1
    8000538c:	00002597          	auipc	a1,0x2
    80005390:	05458593          	addi	a1,a1,84 # 800073e0 <_ZZ14__print_uint64mE6digits+0x260>
    80005394:	00000097          	auipc	ra,0x0
    80005398:	5f4080e7          	jalr	1524(ra) # 80005988 <initlock>
    8000539c:	01813083          	ld	ra,24(sp)
    800053a0:	01013403          	ld	s0,16(sp)
    800053a4:	0004ac23          	sw	zero,24(s1)
    800053a8:	00813483          	ld	s1,8(sp)
    800053ac:	02010113          	addi	sp,sp,32
    800053b0:	00008067          	ret

00000000800053b4 <uartinit>:
    800053b4:	ff010113          	addi	sp,sp,-16
    800053b8:	00813423          	sd	s0,8(sp)
    800053bc:	01010413          	addi	s0,sp,16
    800053c0:	100007b7          	lui	a5,0x10000
    800053c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800053c8:	f8000713          	li	a4,-128
    800053cc:	00e781a3          	sb	a4,3(a5)
    800053d0:	00300713          	li	a4,3
    800053d4:	00e78023          	sb	a4,0(a5)
    800053d8:	000780a3          	sb	zero,1(a5)
    800053dc:	00e781a3          	sb	a4,3(a5)
    800053e0:	00700693          	li	a3,7
    800053e4:	00d78123          	sb	a3,2(a5)
    800053e8:	00e780a3          	sb	a4,1(a5)
    800053ec:	00813403          	ld	s0,8(sp)
    800053f0:	01010113          	addi	sp,sp,16
    800053f4:	00008067          	ret

00000000800053f8 <uartputc>:
    800053f8:	00003797          	auipc	a5,0x3
    800053fc:	5907a783          	lw	a5,1424(a5) # 80008988 <panicked>
    80005400:	00078463          	beqz	a5,80005408 <uartputc+0x10>
    80005404:	0000006f          	j	80005404 <uartputc+0xc>
    80005408:	fd010113          	addi	sp,sp,-48
    8000540c:	02813023          	sd	s0,32(sp)
    80005410:	00913c23          	sd	s1,24(sp)
    80005414:	01213823          	sd	s2,16(sp)
    80005418:	01313423          	sd	s3,8(sp)
    8000541c:	02113423          	sd	ra,40(sp)
    80005420:	03010413          	addi	s0,sp,48
    80005424:	00003917          	auipc	s2,0x3
    80005428:	56c90913          	addi	s2,s2,1388 # 80008990 <uart_tx_r>
    8000542c:	00093783          	ld	a5,0(s2)
    80005430:	00003497          	auipc	s1,0x3
    80005434:	56848493          	addi	s1,s1,1384 # 80008998 <uart_tx_w>
    80005438:	0004b703          	ld	a4,0(s1)
    8000543c:	02078693          	addi	a3,a5,32
    80005440:	00050993          	mv	s3,a0
    80005444:	02e69c63          	bne	a3,a4,8000547c <uartputc+0x84>
    80005448:	00001097          	auipc	ra,0x1
    8000544c:	834080e7          	jalr	-1996(ra) # 80005c7c <push_on>
    80005450:	00093783          	ld	a5,0(s2)
    80005454:	0004b703          	ld	a4,0(s1)
    80005458:	02078793          	addi	a5,a5,32
    8000545c:	00e79463          	bne	a5,a4,80005464 <uartputc+0x6c>
    80005460:	0000006f          	j	80005460 <uartputc+0x68>
    80005464:	00001097          	auipc	ra,0x1
    80005468:	88c080e7          	jalr	-1908(ra) # 80005cf0 <pop_on>
    8000546c:	00093783          	ld	a5,0(s2)
    80005470:	0004b703          	ld	a4,0(s1)
    80005474:	02078693          	addi	a3,a5,32
    80005478:	fce688e3          	beq	a3,a4,80005448 <uartputc+0x50>
    8000547c:	01f77693          	andi	a3,a4,31
    80005480:	00005597          	auipc	a1,0x5
    80005484:	03058593          	addi	a1,a1,48 # 8000a4b0 <uart_tx_buf>
    80005488:	00d586b3          	add	a3,a1,a3
    8000548c:	00170713          	addi	a4,a4,1
    80005490:	01368023          	sb	s3,0(a3)
    80005494:	00e4b023          	sd	a4,0(s1)
    80005498:	10000637          	lui	a2,0x10000
    8000549c:	02f71063          	bne	a4,a5,800054bc <uartputc+0xc4>
    800054a0:	0340006f          	j	800054d4 <uartputc+0xdc>
    800054a4:	00074703          	lbu	a4,0(a4)
    800054a8:	00f93023          	sd	a5,0(s2)
    800054ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800054b0:	00093783          	ld	a5,0(s2)
    800054b4:	0004b703          	ld	a4,0(s1)
    800054b8:	00f70e63          	beq	a4,a5,800054d4 <uartputc+0xdc>
    800054bc:	00564683          	lbu	a3,5(a2)
    800054c0:	01f7f713          	andi	a4,a5,31
    800054c4:	00e58733          	add	a4,a1,a4
    800054c8:	0206f693          	andi	a3,a3,32
    800054cc:	00178793          	addi	a5,a5,1
    800054d0:	fc069ae3          	bnez	a3,800054a4 <uartputc+0xac>
    800054d4:	02813083          	ld	ra,40(sp)
    800054d8:	02013403          	ld	s0,32(sp)
    800054dc:	01813483          	ld	s1,24(sp)
    800054e0:	01013903          	ld	s2,16(sp)
    800054e4:	00813983          	ld	s3,8(sp)
    800054e8:	03010113          	addi	sp,sp,48
    800054ec:	00008067          	ret

00000000800054f0 <uartputc_sync>:
    800054f0:	ff010113          	addi	sp,sp,-16
    800054f4:	00813423          	sd	s0,8(sp)
    800054f8:	01010413          	addi	s0,sp,16
    800054fc:	00003717          	auipc	a4,0x3
    80005500:	48c72703          	lw	a4,1164(a4) # 80008988 <panicked>
    80005504:	02071663          	bnez	a4,80005530 <uartputc_sync+0x40>
    80005508:	00050793          	mv	a5,a0
    8000550c:	100006b7          	lui	a3,0x10000
    80005510:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005514:	02077713          	andi	a4,a4,32
    80005518:	fe070ce3          	beqz	a4,80005510 <uartputc_sync+0x20>
    8000551c:	0ff7f793          	andi	a5,a5,255
    80005520:	00f68023          	sb	a5,0(a3)
    80005524:	00813403          	ld	s0,8(sp)
    80005528:	01010113          	addi	sp,sp,16
    8000552c:	00008067          	ret
    80005530:	0000006f          	j	80005530 <uartputc_sync+0x40>

0000000080005534 <uartstart>:
    80005534:	ff010113          	addi	sp,sp,-16
    80005538:	00813423          	sd	s0,8(sp)
    8000553c:	01010413          	addi	s0,sp,16
    80005540:	00003617          	auipc	a2,0x3
    80005544:	45060613          	addi	a2,a2,1104 # 80008990 <uart_tx_r>
    80005548:	00003517          	auipc	a0,0x3
    8000554c:	45050513          	addi	a0,a0,1104 # 80008998 <uart_tx_w>
    80005550:	00063783          	ld	a5,0(a2)
    80005554:	00053703          	ld	a4,0(a0)
    80005558:	04f70263          	beq	a4,a5,8000559c <uartstart+0x68>
    8000555c:	100005b7          	lui	a1,0x10000
    80005560:	00005817          	auipc	a6,0x5
    80005564:	f5080813          	addi	a6,a6,-176 # 8000a4b0 <uart_tx_buf>
    80005568:	01c0006f          	j	80005584 <uartstart+0x50>
    8000556c:	0006c703          	lbu	a4,0(a3)
    80005570:	00f63023          	sd	a5,0(a2)
    80005574:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005578:	00063783          	ld	a5,0(a2)
    8000557c:	00053703          	ld	a4,0(a0)
    80005580:	00f70e63          	beq	a4,a5,8000559c <uartstart+0x68>
    80005584:	01f7f713          	andi	a4,a5,31
    80005588:	00e806b3          	add	a3,a6,a4
    8000558c:	0055c703          	lbu	a4,5(a1)
    80005590:	00178793          	addi	a5,a5,1
    80005594:	02077713          	andi	a4,a4,32
    80005598:	fc071ae3          	bnez	a4,8000556c <uartstart+0x38>
    8000559c:	00813403          	ld	s0,8(sp)
    800055a0:	01010113          	addi	sp,sp,16
    800055a4:	00008067          	ret

00000000800055a8 <uartgetc>:
    800055a8:	ff010113          	addi	sp,sp,-16
    800055ac:	00813423          	sd	s0,8(sp)
    800055b0:	01010413          	addi	s0,sp,16
    800055b4:	10000737          	lui	a4,0x10000
    800055b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800055bc:	0017f793          	andi	a5,a5,1
    800055c0:	00078c63          	beqz	a5,800055d8 <uartgetc+0x30>
    800055c4:	00074503          	lbu	a0,0(a4)
    800055c8:	0ff57513          	andi	a0,a0,255
    800055cc:	00813403          	ld	s0,8(sp)
    800055d0:	01010113          	addi	sp,sp,16
    800055d4:	00008067          	ret
    800055d8:	fff00513          	li	a0,-1
    800055dc:	ff1ff06f          	j	800055cc <uartgetc+0x24>

00000000800055e0 <uartintr>:
    800055e0:	100007b7          	lui	a5,0x10000
    800055e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800055e8:	0017f793          	andi	a5,a5,1
    800055ec:	0a078463          	beqz	a5,80005694 <uartintr+0xb4>
    800055f0:	fe010113          	addi	sp,sp,-32
    800055f4:	00813823          	sd	s0,16(sp)
    800055f8:	00913423          	sd	s1,8(sp)
    800055fc:	00113c23          	sd	ra,24(sp)
    80005600:	02010413          	addi	s0,sp,32
    80005604:	100004b7          	lui	s1,0x10000
    80005608:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000560c:	0ff57513          	andi	a0,a0,255
    80005610:	fffff097          	auipc	ra,0xfffff
    80005614:	534080e7          	jalr	1332(ra) # 80004b44 <consoleintr>
    80005618:	0054c783          	lbu	a5,5(s1)
    8000561c:	0017f793          	andi	a5,a5,1
    80005620:	fe0794e3          	bnez	a5,80005608 <uartintr+0x28>
    80005624:	00003617          	auipc	a2,0x3
    80005628:	36c60613          	addi	a2,a2,876 # 80008990 <uart_tx_r>
    8000562c:	00003517          	auipc	a0,0x3
    80005630:	36c50513          	addi	a0,a0,876 # 80008998 <uart_tx_w>
    80005634:	00063783          	ld	a5,0(a2)
    80005638:	00053703          	ld	a4,0(a0)
    8000563c:	04f70263          	beq	a4,a5,80005680 <uartintr+0xa0>
    80005640:	100005b7          	lui	a1,0x10000
    80005644:	00005817          	auipc	a6,0x5
    80005648:	e6c80813          	addi	a6,a6,-404 # 8000a4b0 <uart_tx_buf>
    8000564c:	01c0006f          	j	80005668 <uartintr+0x88>
    80005650:	0006c703          	lbu	a4,0(a3)
    80005654:	00f63023          	sd	a5,0(a2)
    80005658:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000565c:	00063783          	ld	a5,0(a2)
    80005660:	00053703          	ld	a4,0(a0)
    80005664:	00f70e63          	beq	a4,a5,80005680 <uartintr+0xa0>
    80005668:	01f7f713          	andi	a4,a5,31
    8000566c:	00e806b3          	add	a3,a6,a4
    80005670:	0055c703          	lbu	a4,5(a1)
    80005674:	00178793          	addi	a5,a5,1
    80005678:	02077713          	andi	a4,a4,32
    8000567c:	fc071ae3          	bnez	a4,80005650 <uartintr+0x70>
    80005680:	01813083          	ld	ra,24(sp)
    80005684:	01013403          	ld	s0,16(sp)
    80005688:	00813483          	ld	s1,8(sp)
    8000568c:	02010113          	addi	sp,sp,32
    80005690:	00008067          	ret
    80005694:	00003617          	auipc	a2,0x3
    80005698:	2fc60613          	addi	a2,a2,764 # 80008990 <uart_tx_r>
    8000569c:	00003517          	auipc	a0,0x3
    800056a0:	2fc50513          	addi	a0,a0,764 # 80008998 <uart_tx_w>
    800056a4:	00063783          	ld	a5,0(a2)
    800056a8:	00053703          	ld	a4,0(a0)
    800056ac:	04f70263          	beq	a4,a5,800056f0 <uartintr+0x110>
    800056b0:	100005b7          	lui	a1,0x10000
    800056b4:	00005817          	auipc	a6,0x5
    800056b8:	dfc80813          	addi	a6,a6,-516 # 8000a4b0 <uart_tx_buf>
    800056bc:	01c0006f          	j	800056d8 <uartintr+0xf8>
    800056c0:	0006c703          	lbu	a4,0(a3)
    800056c4:	00f63023          	sd	a5,0(a2)
    800056c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800056cc:	00063783          	ld	a5,0(a2)
    800056d0:	00053703          	ld	a4,0(a0)
    800056d4:	02f70063          	beq	a4,a5,800056f4 <uartintr+0x114>
    800056d8:	01f7f713          	andi	a4,a5,31
    800056dc:	00e806b3          	add	a3,a6,a4
    800056e0:	0055c703          	lbu	a4,5(a1)
    800056e4:	00178793          	addi	a5,a5,1
    800056e8:	02077713          	andi	a4,a4,32
    800056ec:	fc071ae3          	bnez	a4,800056c0 <uartintr+0xe0>
    800056f0:	00008067          	ret
    800056f4:	00008067          	ret

00000000800056f8 <kinit>:
    800056f8:	fc010113          	addi	sp,sp,-64
    800056fc:	02913423          	sd	s1,40(sp)
    80005700:	fffff7b7          	lui	a5,0xfffff
    80005704:	00006497          	auipc	s1,0x6
    80005708:	dcb48493          	addi	s1,s1,-565 # 8000b4cf <end+0xfff>
    8000570c:	02813823          	sd	s0,48(sp)
    80005710:	01313c23          	sd	s3,24(sp)
    80005714:	00f4f4b3          	and	s1,s1,a5
    80005718:	02113c23          	sd	ra,56(sp)
    8000571c:	03213023          	sd	s2,32(sp)
    80005720:	01413823          	sd	s4,16(sp)
    80005724:	01513423          	sd	s5,8(sp)
    80005728:	04010413          	addi	s0,sp,64
    8000572c:	000017b7          	lui	a5,0x1
    80005730:	01100993          	li	s3,17
    80005734:	00f487b3          	add	a5,s1,a5
    80005738:	01b99993          	slli	s3,s3,0x1b
    8000573c:	06f9e063          	bltu	s3,a5,8000579c <kinit+0xa4>
    80005740:	00005a97          	auipc	s5,0x5
    80005744:	d90a8a93          	addi	s5,s5,-624 # 8000a4d0 <end>
    80005748:	0754ec63          	bltu	s1,s5,800057c0 <kinit+0xc8>
    8000574c:	0734fa63          	bgeu	s1,s3,800057c0 <kinit+0xc8>
    80005750:	00088a37          	lui	s4,0x88
    80005754:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005758:	00003917          	auipc	s2,0x3
    8000575c:	24890913          	addi	s2,s2,584 # 800089a0 <kmem>
    80005760:	00ca1a13          	slli	s4,s4,0xc
    80005764:	0140006f          	j	80005778 <kinit+0x80>
    80005768:	000017b7          	lui	a5,0x1
    8000576c:	00f484b3          	add	s1,s1,a5
    80005770:	0554e863          	bltu	s1,s5,800057c0 <kinit+0xc8>
    80005774:	0534f663          	bgeu	s1,s3,800057c0 <kinit+0xc8>
    80005778:	00001637          	lui	a2,0x1
    8000577c:	00100593          	li	a1,1
    80005780:	00048513          	mv	a0,s1
    80005784:	00000097          	auipc	ra,0x0
    80005788:	5e4080e7          	jalr	1508(ra) # 80005d68 <__memset>
    8000578c:	00093783          	ld	a5,0(s2)
    80005790:	00f4b023          	sd	a5,0(s1)
    80005794:	00993023          	sd	s1,0(s2)
    80005798:	fd4498e3          	bne	s1,s4,80005768 <kinit+0x70>
    8000579c:	03813083          	ld	ra,56(sp)
    800057a0:	03013403          	ld	s0,48(sp)
    800057a4:	02813483          	ld	s1,40(sp)
    800057a8:	02013903          	ld	s2,32(sp)
    800057ac:	01813983          	ld	s3,24(sp)
    800057b0:	01013a03          	ld	s4,16(sp)
    800057b4:	00813a83          	ld	s5,8(sp)
    800057b8:	04010113          	addi	sp,sp,64
    800057bc:	00008067          	ret
    800057c0:	00002517          	auipc	a0,0x2
    800057c4:	c4050513          	addi	a0,a0,-960 # 80007400 <digits+0x18>
    800057c8:	fffff097          	auipc	ra,0xfffff
    800057cc:	4b4080e7          	jalr	1204(ra) # 80004c7c <panic>

00000000800057d0 <freerange>:
    800057d0:	fc010113          	addi	sp,sp,-64
    800057d4:	000017b7          	lui	a5,0x1
    800057d8:	02913423          	sd	s1,40(sp)
    800057dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800057e0:	009504b3          	add	s1,a0,s1
    800057e4:	fffff537          	lui	a0,0xfffff
    800057e8:	02813823          	sd	s0,48(sp)
    800057ec:	02113c23          	sd	ra,56(sp)
    800057f0:	03213023          	sd	s2,32(sp)
    800057f4:	01313c23          	sd	s3,24(sp)
    800057f8:	01413823          	sd	s4,16(sp)
    800057fc:	01513423          	sd	s5,8(sp)
    80005800:	01613023          	sd	s6,0(sp)
    80005804:	04010413          	addi	s0,sp,64
    80005808:	00a4f4b3          	and	s1,s1,a0
    8000580c:	00f487b3          	add	a5,s1,a5
    80005810:	06f5e463          	bltu	a1,a5,80005878 <freerange+0xa8>
    80005814:	00005a97          	auipc	s5,0x5
    80005818:	cbca8a93          	addi	s5,s5,-836 # 8000a4d0 <end>
    8000581c:	0954e263          	bltu	s1,s5,800058a0 <freerange+0xd0>
    80005820:	01100993          	li	s3,17
    80005824:	01b99993          	slli	s3,s3,0x1b
    80005828:	0734fc63          	bgeu	s1,s3,800058a0 <freerange+0xd0>
    8000582c:	00058a13          	mv	s4,a1
    80005830:	00003917          	auipc	s2,0x3
    80005834:	17090913          	addi	s2,s2,368 # 800089a0 <kmem>
    80005838:	00002b37          	lui	s6,0x2
    8000583c:	0140006f          	j	80005850 <freerange+0x80>
    80005840:	000017b7          	lui	a5,0x1
    80005844:	00f484b3          	add	s1,s1,a5
    80005848:	0554ec63          	bltu	s1,s5,800058a0 <freerange+0xd0>
    8000584c:	0534fa63          	bgeu	s1,s3,800058a0 <freerange+0xd0>
    80005850:	00001637          	lui	a2,0x1
    80005854:	00100593          	li	a1,1
    80005858:	00048513          	mv	a0,s1
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	50c080e7          	jalr	1292(ra) # 80005d68 <__memset>
    80005864:	00093703          	ld	a4,0(s2)
    80005868:	016487b3          	add	a5,s1,s6
    8000586c:	00e4b023          	sd	a4,0(s1)
    80005870:	00993023          	sd	s1,0(s2)
    80005874:	fcfa76e3          	bgeu	s4,a5,80005840 <freerange+0x70>
    80005878:	03813083          	ld	ra,56(sp)
    8000587c:	03013403          	ld	s0,48(sp)
    80005880:	02813483          	ld	s1,40(sp)
    80005884:	02013903          	ld	s2,32(sp)
    80005888:	01813983          	ld	s3,24(sp)
    8000588c:	01013a03          	ld	s4,16(sp)
    80005890:	00813a83          	ld	s5,8(sp)
    80005894:	00013b03          	ld	s6,0(sp)
    80005898:	04010113          	addi	sp,sp,64
    8000589c:	00008067          	ret
    800058a0:	00002517          	auipc	a0,0x2
    800058a4:	b6050513          	addi	a0,a0,-1184 # 80007400 <digits+0x18>
    800058a8:	fffff097          	auipc	ra,0xfffff
    800058ac:	3d4080e7          	jalr	980(ra) # 80004c7c <panic>

00000000800058b0 <kfree>:
    800058b0:	fe010113          	addi	sp,sp,-32
    800058b4:	00813823          	sd	s0,16(sp)
    800058b8:	00113c23          	sd	ra,24(sp)
    800058bc:	00913423          	sd	s1,8(sp)
    800058c0:	02010413          	addi	s0,sp,32
    800058c4:	03451793          	slli	a5,a0,0x34
    800058c8:	04079c63          	bnez	a5,80005920 <kfree+0x70>
    800058cc:	00005797          	auipc	a5,0x5
    800058d0:	c0478793          	addi	a5,a5,-1020 # 8000a4d0 <end>
    800058d4:	00050493          	mv	s1,a0
    800058d8:	04f56463          	bltu	a0,a5,80005920 <kfree+0x70>
    800058dc:	01100793          	li	a5,17
    800058e0:	01b79793          	slli	a5,a5,0x1b
    800058e4:	02f57e63          	bgeu	a0,a5,80005920 <kfree+0x70>
    800058e8:	00001637          	lui	a2,0x1
    800058ec:	00100593          	li	a1,1
    800058f0:	00000097          	auipc	ra,0x0
    800058f4:	478080e7          	jalr	1144(ra) # 80005d68 <__memset>
    800058f8:	00003797          	auipc	a5,0x3
    800058fc:	0a878793          	addi	a5,a5,168 # 800089a0 <kmem>
    80005900:	0007b703          	ld	a4,0(a5)
    80005904:	01813083          	ld	ra,24(sp)
    80005908:	01013403          	ld	s0,16(sp)
    8000590c:	00e4b023          	sd	a4,0(s1)
    80005910:	0097b023          	sd	s1,0(a5)
    80005914:	00813483          	ld	s1,8(sp)
    80005918:	02010113          	addi	sp,sp,32
    8000591c:	00008067          	ret
    80005920:	00002517          	auipc	a0,0x2
    80005924:	ae050513          	addi	a0,a0,-1312 # 80007400 <digits+0x18>
    80005928:	fffff097          	auipc	ra,0xfffff
    8000592c:	354080e7          	jalr	852(ra) # 80004c7c <panic>

0000000080005930 <kalloc>:
    80005930:	fe010113          	addi	sp,sp,-32
    80005934:	00813823          	sd	s0,16(sp)
    80005938:	00913423          	sd	s1,8(sp)
    8000593c:	00113c23          	sd	ra,24(sp)
    80005940:	02010413          	addi	s0,sp,32
    80005944:	00003797          	auipc	a5,0x3
    80005948:	05c78793          	addi	a5,a5,92 # 800089a0 <kmem>
    8000594c:	0007b483          	ld	s1,0(a5)
    80005950:	02048063          	beqz	s1,80005970 <kalloc+0x40>
    80005954:	0004b703          	ld	a4,0(s1)
    80005958:	00001637          	lui	a2,0x1
    8000595c:	00500593          	li	a1,5
    80005960:	00048513          	mv	a0,s1
    80005964:	00e7b023          	sd	a4,0(a5)
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	400080e7          	jalr	1024(ra) # 80005d68 <__memset>
    80005970:	01813083          	ld	ra,24(sp)
    80005974:	01013403          	ld	s0,16(sp)
    80005978:	00048513          	mv	a0,s1
    8000597c:	00813483          	ld	s1,8(sp)
    80005980:	02010113          	addi	sp,sp,32
    80005984:	00008067          	ret

0000000080005988 <initlock>:
    80005988:	ff010113          	addi	sp,sp,-16
    8000598c:	00813423          	sd	s0,8(sp)
    80005990:	01010413          	addi	s0,sp,16
    80005994:	00813403          	ld	s0,8(sp)
    80005998:	00b53423          	sd	a1,8(a0)
    8000599c:	00052023          	sw	zero,0(a0)
    800059a0:	00053823          	sd	zero,16(a0)
    800059a4:	01010113          	addi	sp,sp,16
    800059a8:	00008067          	ret

00000000800059ac <acquire>:
    800059ac:	fe010113          	addi	sp,sp,-32
    800059b0:	00813823          	sd	s0,16(sp)
    800059b4:	00913423          	sd	s1,8(sp)
    800059b8:	00113c23          	sd	ra,24(sp)
    800059bc:	01213023          	sd	s2,0(sp)
    800059c0:	02010413          	addi	s0,sp,32
    800059c4:	00050493          	mv	s1,a0
    800059c8:	10002973          	csrr	s2,sstatus
    800059cc:	100027f3          	csrr	a5,sstatus
    800059d0:	ffd7f793          	andi	a5,a5,-3
    800059d4:	10079073          	csrw	sstatus,a5
    800059d8:	fffff097          	auipc	ra,0xfffff
    800059dc:	8e8080e7          	jalr	-1816(ra) # 800042c0 <mycpu>
    800059e0:	07852783          	lw	a5,120(a0)
    800059e4:	06078e63          	beqz	a5,80005a60 <acquire+0xb4>
    800059e8:	fffff097          	auipc	ra,0xfffff
    800059ec:	8d8080e7          	jalr	-1832(ra) # 800042c0 <mycpu>
    800059f0:	07852783          	lw	a5,120(a0)
    800059f4:	0004a703          	lw	a4,0(s1)
    800059f8:	0017879b          	addiw	a5,a5,1
    800059fc:	06f52c23          	sw	a5,120(a0)
    80005a00:	04071063          	bnez	a4,80005a40 <acquire+0x94>
    80005a04:	00100713          	li	a4,1
    80005a08:	00070793          	mv	a5,a4
    80005a0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005a10:	0007879b          	sext.w	a5,a5
    80005a14:	fe079ae3          	bnez	a5,80005a08 <acquire+0x5c>
    80005a18:	0ff0000f          	fence
    80005a1c:	fffff097          	auipc	ra,0xfffff
    80005a20:	8a4080e7          	jalr	-1884(ra) # 800042c0 <mycpu>
    80005a24:	01813083          	ld	ra,24(sp)
    80005a28:	01013403          	ld	s0,16(sp)
    80005a2c:	00a4b823          	sd	a0,16(s1)
    80005a30:	00013903          	ld	s2,0(sp)
    80005a34:	00813483          	ld	s1,8(sp)
    80005a38:	02010113          	addi	sp,sp,32
    80005a3c:	00008067          	ret
    80005a40:	0104b903          	ld	s2,16(s1)
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	87c080e7          	jalr	-1924(ra) # 800042c0 <mycpu>
    80005a4c:	faa91ce3          	bne	s2,a0,80005a04 <acquire+0x58>
    80005a50:	00002517          	auipc	a0,0x2
    80005a54:	9b850513          	addi	a0,a0,-1608 # 80007408 <digits+0x20>
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	224080e7          	jalr	548(ra) # 80004c7c <panic>
    80005a60:	00195913          	srli	s2,s2,0x1
    80005a64:	fffff097          	auipc	ra,0xfffff
    80005a68:	85c080e7          	jalr	-1956(ra) # 800042c0 <mycpu>
    80005a6c:	00197913          	andi	s2,s2,1
    80005a70:	07252e23          	sw	s2,124(a0)
    80005a74:	f75ff06f          	j	800059e8 <acquire+0x3c>

0000000080005a78 <release>:
    80005a78:	fe010113          	addi	sp,sp,-32
    80005a7c:	00813823          	sd	s0,16(sp)
    80005a80:	00113c23          	sd	ra,24(sp)
    80005a84:	00913423          	sd	s1,8(sp)
    80005a88:	01213023          	sd	s2,0(sp)
    80005a8c:	02010413          	addi	s0,sp,32
    80005a90:	00052783          	lw	a5,0(a0)
    80005a94:	00079a63          	bnez	a5,80005aa8 <release+0x30>
    80005a98:	00002517          	auipc	a0,0x2
    80005a9c:	97850513          	addi	a0,a0,-1672 # 80007410 <digits+0x28>
    80005aa0:	fffff097          	auipc	ra,0xfffff
    80005aa4:	1dc080e7          	jalr	476(ra) # 80004c7c <panic>
    80005aa8:	01053903          	ld	s2,16(a0)
    80005aac:	00050493          	mv	s1,a0
    80005ab0:	fffff097          	auipc	ra,0xfffff
    80005ab4:	810080e7          	jalr	-2032(ra) # 800042c0 <mycpu>
    80005ab8:	fea910e3          	bne	s2,a0,80005a98 <release+0x20>
    80005abc:	0004b823          	sd	zero,16(s1)
    80005ac0:	0ff0000f          	fence
    80005ac4:	0f50000f          	fence	iorw,ow
    80005ac8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005acc:	ffffe097          	auipc	ra,0xffffe
    80005ad0:	7f4080e7          	jalr	2036(ra) # 800042c0 <mycpu>
    80005ad4:	100027f3          	csrr	a5,sstatus
    80005ad8:	0027f793          	andi	a5,a5,2
    80005adc:	04079a63          	bnez	a5,80005b30 <release+0xb8>
    80005ae0:	07852783          	lw	a5,120(a0)
    80005ae4:	02f05e63          	blez	a5,80005b20 <release+0xa8>
    80005ae8:	fff7871b          	addiw	a4,a5,-1
    80005aec:	06e52c23          	sw	a4,120(a0)
    80005af0:	00071c63          	bnez	a4,80005b08 <release+0x90>
    80005af4:	07c52783          	lw	a5,124(a0)
    80005af8:	00078863          	beqz	a5,80005b08 <release+0x90>
    80005afc:	100027f3          	csrr	a5,sstatus
    80005b00:	0027e793          	ori	a5,a5,2
    80005b04:	10079073          	csrw	sstatus,a5
    80005b08:	01813083          	ld	ra,24(sp)
    80005b0c:	01013403          	ld	s0,16(sp)
    80005b10:	00813483          	ld	s1,8(sp)
    80005b14:	00013903          	ld	s2,0(sp)
    80005b18:	02010113          	addi	sp,sp,32
    80005b1c:	00008067          	ret
    80005b20:	00002517          	auipc	a0,0x2
    80005b24:	91050513          	addi	a0,a0,-1776 # 80007430 <digits+0x48>
    80005b28:	fffff097          	auipc	ra,0xfffff
    80005b2c:	154080e7          	jalr	340(ra) # 80004c7c <panic>
    80005b30:	00002517          	auipc	a0,0x2
    80005b34:	8e850513          	addi	a0,a0,-1816 # 80007418 <digits+0x30>
    80005b38:	fffff097          	auipc	ra,0xfffff
    80005b3c:	144080e7          	jalr	324(ra) # 80004c7c <panic>

0000000080005b40 <holding>:
    80005b40:	00052783          	lw	a5,0(a0)
    80005b44:	00079663          	bnez	a5,80005b50 <holding+0x10>
    80005b48:	00000513          	li	a0,0
    80005b4c:	00008067          	ret
    80005b50:	fe010113          	addi	sp,sp,-32
    80005b54:	00813823          	sd	s0,16(sp)
    80005b58:	00913423          	sd	s1,8(sp)
    80005b5c:	00113c23          	sd	ra,24(sp)
    80005b60:	02010413          	addi	s0,sp,32
    80005b64:	01053483          	ld	s1,16(a0)
    80005b68:	ffffe097          	auipc	ra,0xffffe
    80005b6c:	758080e7          	jalr	1880(ra) # 800042c0 <mycpu>
    80005b70:	01813083          	ld	ra,24(sp)
    80005b74:	01013403          	ld	s0,16(sp)
    80005b78:	40a48533          	sub	a0,s1,a0
    80005b7c:	00153513          	seqz	a0,a0
    80005b80:	00813483          	ld	s1,8(sp)
    80005b84:	02010113          	addi	sp,sp,32
    80005b88:	00008067          	ret

0000000080005b8c <push_off>:
    80005b8c:	fe010113          	addi	sp,sp,-32
    80005b90:	00813823          	sd	s0,16(sp)
    80005b94:	00113c23          	sd	ra,24(sp)
    80005b98:	00913423          	sd	s1,8(sp)
    80005b9c:	02010413          	addi	s0,sp,32
    80005ba0:	100024f3          	csrr	s1,sstatus
    80005ba4:	100027f3          	csrr	a5,sstatus
    80005ba8:	ffd7f793          	andi	a5,a5,-3
    80005bac:	10079073          	csrw	sstatus,a5
    80005bb0:	ffffe097          	auipc	ra,0xffffe
    80005bb4:	710080e7          	jalr	1808(ra) # 800042c0 <mycpu>
    80005bb8:	07852783          	lw	a5,120(a0)
    80005bbc:	02078663          	beqz	a5,80005be8 <push_off+0x5c>
    80005bc0:	ffffe097          	auipc	ra,0xffffe
    80005bc4:	700080e7          	jalr	1792(ra) # 800042c0 <mycpu>
    80005bc8:	07852783          	lw	a5,120(a0)
    80005bcc:	01813083          	ld	ra,24(sp)
    80005bd0:	01013403          	ld	s0,16(sp)
    80005bd4:	0017879b          	addiw	a5,a5,1
    80005bd8:	06f52c23          	sw	a5,120(a0)
    80005bdc:	00813483          	ld	s1,8(sp)
    80005be0:	02010113          	addi	sp,sp,32
    80005be4:	00008067          	ret
    80005be8:	0014d493          	srli	s1,s1,0x1
    80005bec:	ffffe097          	auipc	ra,0xffffe
    80005bf0:	6d4080e7          	jalr	1748(ra) # 800042c0 <mycpu>
    80005bf4:	0014f493          	andi	s1,s1,1
    80005bf8:	06952e23          	sw	s1,124(a0)
    80005bfc:	fc5ff06f          	j	80005bc0 <push_off+0x34>

0000000080005c00 <pop_off>:
    80005c00:	ff010113          	addi	sp,sp,-16
    80005c04:	00813023          	sd	s0,0(sp)
    80005c08:	00113423          	sd	ra,8(sp)
    80005c0c:	01010413          	addi	s0,sp,16
    80005c10:	ffffe097          	auipc	ra,0xffffe
    80005c14:	6b0080e7          	jalr	1712(ra) # 800042c0 <mycpu>
    80005c18:	100027f3          	csrr	a5,sstatus
    80005c1c:	0027f793          	andi	a5,a5,2
    80005c20:	04079663          	bnez	a5,80005c6c <pop_off+0x6c>
    80005c24:	07852783          	lw	a5,120(a0)
    80005c28:	02f05a63          	blez	a5,80005c5c <pop_off+0x5c>
    80005c2c:	fff7871b          	addiw	a4,a5,-1
    80005c30:	06e52c23          	sw	a4,120(a0)
    80005c34:	00071c63          	bnez	a4,80005c4c <pop_off+0x4c>
    80005c38:	07c52783          	lw	a5,124(a0)
    80005c3c:	00078863          	beqz	a5,80005c4c <pop_off+0x4c>
    80005c40:	100027f3          	csrr	a5,sstatus
    80005c44:	0027e793          	ori	a5,a5,2
    80005c48:	10079073          	csrw	sstatus,a5
    80005c4c:	00813083          	ld	ra,8(sp)
    80005c50:	00013403          	ld	s0,0(sp)
    80005c54:	01010113          	addi	sp,sp,16
    80005c58:	00008067          	ret
    80005c5c:	00001517          	auipc	a0,0x1
    80005c60:	7d450513          	addi	a0,a0,2004 # 80007430 <digits+0x48>
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	018080e7          	jalr	24(ra) # 80004c7c <panic>
    80005c6c:	00001517          	auipc	a0,0x1
    80005c70:	7ac50513          	addi	a0,a0,1964 # 80007418 <digits+0x30>
    80005c74:	fffff097          	auipc	ra,0xfffff
    80005c78:	008080e7          	jalr	8(ra) # 80004c7c <panic>

0000000080005c7c <push_on>:
    80005c7c:	fe010113          	addi	sp,sp,-32
    80005c80:	00813823          	sd	s0,16(sp)
    80005c84:	00113c23          	sd	ra,24(sp)
    80005c88:	00913423          	sd	s1,8(sp)
    80005c8c:	02010413          	addi	s0,sp,32
    80005c90:	100024f3          	csrr	s1,sstatus
    80005c94:	100027f3          	csrr	a5,sstatus
    80005c98:	0027e793          	ori	a5,a5,2
    80005c9c:	10079073          	csrw	sstatus,a5
    80005ca0:	ffffe097          	auipc	ra,0xffffe
    80005ca4:	620080e7          	jalr	1568(ra) # 800042c0 <mycpu>
    80005ca8:	07852783          	lw	a5,120(a0)
    80005cac:	02078663          	beqz	a5,80005cd8 <push_on+0x5c>
    80005cb0:	ffffe097          	auipc	ra,0xffffe
    80005cb4:	610080e7          	jalr	1552(ra) # 800042c0 <mycpu>
    80005cb8:	07852783          	lw	a5,120(a0)
    80005cbc:	01813083          	ld	ra,24(sp)
    80005cc0:	01013403          	ld	s0,16(sp)
    80005cc4:	0017879b          	addiw	a5,a5,1
    80005cc8:	06f52c23          	sw	a5,120(a0)
    80005ccc:	00813483          	ld	s1,8(sp)
    80005cd0:	02010113          	addi	sp,sp,32
    80005cd4:	00008067          	ret
    80005cd8:	0014d493          	srli	s1,s1,0x1
    80005cdc:	ffffe097          	auipc	ra,0xffffe
    80005ce0:	5e4080e7          	jalr	1508(ra) # 800042c0 <mycpu>
    80005ce4:	0014f493          	andi	s1,s1,1
    80005ce8:	06952e23          	sw	s1,124(a0)
    80005cec:	fc5ff06f          	j	80005cb0 <push_on+0x34>

0000000080005cf0 <pop_on>:
    80005cf0:	ff010113          	addi	sp,sp,-16
    80005cf4:	00813023          	sd	s0,0(sp)
    80005cf8:	00113423          	sd	ra,8(sp)
    80005cfc:	01010413          	addi	s0,sp,16
    80005d00:	ffffe097          	auipc	ra,0xffffe
    80005d04:	5c0080e7          	jalr	1472(ra) # 800042c0 <mycpu>
    80005d08:	100027f3          	csrr	a5,sstatus
    80005d0c:	0027f793          	andi	a5,a5,2
    80005d10:	04078463          	beqz	a5,80005d58 <pop_on+0x68>
    80005d14:	07852783          	lw	a5,120(a0)
    80005d18:	02f05863          	blez	a5,80005d48 <pop_on+0x58>
    80005d1c:	fff7879b          	addiw	a5,a5,-1
    80005d20:	06f52c23          	sw	a5,120(a0)
    80005d24:	07853783          	ld	a5,120(a0)
    80005d28:	00079863          	bnez	a5,80005d38 <pop_on+0x48>
    80005d2c:	100027f3          	csrr	a5,sstatus
    80005d30:	ffd7f793          	andi	a5,a5,-3
    80005d34:	10079073          	csrw	sstatus,a5
    80005d38:	00813083          	ld	ra,8(sp)
    80005d3c:	00013403          	ld	s0,0(sp)
    80005d40:	01010113          	addi	sp,sp,16
    80005d44:	00008067          	ret
    80005d48:	00001517          	auipc	a0,0x1
    80005d4c:	71050513          	addi	a0,a0,1808 # 80007458 <digits+0x70>
    80005d50:	fffff097          	auipc	ra,0xfffff
    80005d54:	f2c080e7          	jalr	-212(ra) # 80004c7c <panic>
    80005d58:	00001517          	auipc	a0,0x1
    80005d5c:	6e050513          	addi	a0,a0,1760 # 80007438 <digits+0x50>
    80005d60:	fffff097          	auipc	ra,0xfffff
    80005d64:	f1c080e7          	jalr	-228(ra) # 80004c7c <panic>

0000000080005d68 <__memset>:
    80005d68:	ff010113          	addi	sp,sp,-16
    80005d6c:	00813423          	sd	s0,8(sp)
    80005d70:	01010413          	addi	s0,sp,16
    80005d74:	1a060e63          	beqz	a2,80005f30 <__memset+0x1c8>
    80005d78:	40a007b3          	neg	a5,a0
    80005d7c:	0077f793          	andi	a5,a5,7
    80005d80:	00778693          	addi	a3,a5,7
    80005d84:	00b00813          	li	a6,11
    80005d88:	0ff5f593          	andi	a1,a1,255
    80005d8c:	fff6071b          	addiw	a4,a2,-1
    80005d90:	1b06e663          	bltu	a3,a6,80005f3c <__memset+0x1d4>
    80005d94:	1cd76463          	bltu	a4,a3,80005f5c <__memset+0x1f4>
    80005d98:	1a078e63          	beqz	a5,80005f54 <__memset+0x1ec>
    80005d9c:	00b50023          	sb	a1,0(a0)
    80005da0:	00100713          	li	a4,1
    80005da4:	1ae78463          	beq	a5,a4,80005f4c <__memset+0x1e4>
    80005da8:	00b500a3          	sb	a1,1(a0)
    80005dac:	00200713          	li	a4,2
    80005db0:	1ae78a63          	beq	a5,a4,80005f64 <__memset+0x1fc>
    80005db4:	00b50123          	sb	a1,2(a0)
    80005db8:	00300713          	li	a4,3
    80005dbc:	18e78463          	beq	a5,a4,80005f44 <__memset+0x1dc>
    80005dc0:	00b501a3          	sb	a1,3(a0)
    80005dc4:	00400713          	li	a4,4
    80005dc8:	1ae78263          	beq	a5,a4,80005f6c <__memset+0x204>
    80005dcc:	00b50223          	sb	a1,4(a0)
    80005dd0:	00500713          	li	a4,5
    80005dd4:	1ae78063          	beq	a5,a4,80005f74 <__memset+0x20c>
    80005dd8:	00b502a3          	sb	a1,5(a0)
    80005ddc:	00700713          	li	a4,7
    80005de0:	18e79e63          	bne	a5,a4,80005f7c <__memset+0x214>
    80005de4:	00b50323          	sb	a1,6(a0)
    80005de8:	00700e93          	li	t4,7
    80005dec:	00859713          	slli	a4,a1,0x8
    80005df0:	00e5e733          	or	a4,a1,a4
    80005df4:	01059e13          	slli	t3,a1,0x10
    80005df8:	01c76e33          	or	t3,a4,t3
    80005dfc:	01859313          	slli	t1,a1,0x18
    80005e00:	006e6333          	or	t1,t3,t1
    80005e04:	02059893          	slli	a7,a1,0x20
    80005e08:	40f60e3b          	subw	t3,a2,a5
    80005e0c:	011368b3          	or	a7,t1,a7
    80005e10:	02859813          	slli	a6,a1,0x28
    80005e14:	0108e833          	or	a6,a7,a6
    80005e18:	03059693          	slli	a3,a1,0x30
    80005e1c:	003e589b          	srliw	a7,t3,0x3
    80005e20:	00d866b3          	or	a3,a6,a3
    80005e24:	03859713          	slli	a4,a1,0x38
    80005e28:	00389813          	slli	a6,a7,0x3
    80005e2c:	00f507b3          	add	a5,a0,a5
    80005e30:	00e6e733          	or	a4,a3,a4
    80005e34:	000e089b          	sext.w	a7,t3
    80005e38:	00f806b3          	add	a3,a6,a5
    80005e3c:	00e7b023          	sd	a4,0(a5)
    80005e40:	00878793          	addi	a5,a5,8
    80005e44:	fed79ce3          	bne	a5,a3,80005e3c <__memset+0xd4>
    80005e48:	ff8e7793          	andi	a5,t3,-8
    80005e4c:	0007871b          	sext.w	a4,a5
    80005e50:	01d787bb          	addw	a5,a5,t4
    80005e54:	0ce88e63          	beq	a7,a4,80005f30 <__memset+0x1c8>
    80005e58:	00f50733          	add	a4,a0,a5
    80005e5c:	00b70023          	sb	a1,0(a4)
    80005e60:	0017871b          	addiw	a4,a5,1
    80005e64:	0cc77663          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005e68:	00e50733          	add	a4,a0,a4
    80005e6c:	00b70023          	sb	a1,0(a4)
    80005e70:	0027871b          	addiw	a4,a5,2
    80005e74:	0ac77e63          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005e78:	00e50733          	add	a4,a0,a4
    80005e7c:	00b70023          	sb	a1,0(a4)
    80005e80:	0037871b          	addiw	a4,a5,3
    80005e84:	0ac77663          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005e88:	00e50733          	add	a4,a0,a4
    80005e8c:	00b70023          	sb	a1,0(a4)
    80005e90:	0047871b          	addiw	a4,a5,4
    80005e94:	08c77e63          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005e98:	00e50733          	add	a4,a0,a4
    80005e9c:	00b70023          	sb	a1,0(a4)
    80005ea0:	0057871b          	addiw	a4,a5,5
    80005ea4:	08c77663          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005ea8:	00e50733          	add	a4,a0,a4
    80005eac:	00b70023          	sb	a1,0(a4)
    80005eb0:	0067871b          	addiw	a4,a5,6
    80005eb4:	06c77e63          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005eb8:	00e50733          	add	a4,a0,a4
    80005ebc:	00b70023          	sb	a1,0(a4)
    80005ec0:	0077871b          	addiw	a4,a5,7
    80005ec4:	06c77663          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005ec8:	00e50733          	add	a4,a0,a4
    80005ecc:	00b70023          	sb	a1,0(a4)
    80005ed0:	0087871b          	addiw	a4,a5,8
    80005ed4:	04c77e63          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005ed8:	00e50733          	add	a4,a0,a4
    80005edc:	00b70023          	sb	a1,0(a4)
    80005ee0:	0097871b          	addiw	a4,a5,9
    80005ee4:	04c77663          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005ee8:	00e50733          	add	a4,a0,a4
    80005eec:	00b70023          	sb	a1,0(a4)
    80005ef0:	00a7871b          	addiw	a4,a5,10
    80005ef4:	02c77e63          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005ef8:	00e50733          	add	a4,a0,a4
    80005efc:	00b70023          	sb	a1,0(a4)
    80005f00:	00b7871b          	addiw	a4,a5,11
    80005f04:	02c77663          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005f08:	00e50733          	add	a4,a0,a4
    80005f0c:	00b70023          	sb	a1,0(a4)
    80005f10:	00c7871b          	addiw	a4,a5,12
    80005f14:	00c77e63          	bgeu	a4,a2,80005f30 <__memset+0x1c8>
    80005f18:	00e50733          	add	a4,a0,a4
    80005f1c:	00b70023          	sb	a1,0(a4)
    80005f20:	00d7879b          	addiw	a5,a5,13
    80005f24:	00c7f663          	bgeu	a5,a2,80005f30 <__memset+0x1c8>
    80005f28:	00f507b3          	add	a5,a0,a5
    80005f2c:	00b78023          	sb	a1,0(a5)
    80005f30:	00813403          	ld	s0,8(sp)
    80005f34:	01010113          	addi	sp,sp,16
    80005f38:	00008067          	ret
    80005f3c:	00b00693          	li	a3,11
    80005f40:	e55ff06f          	j	80005d94 <__memset+0x2c>
    80005f44:	00300e93          	li	t4,3
    80005f48:	ea5ff06f          	j	80005dec <__memset+0x84>
    80005f4c:	00100e93          	li	t4,1
    80005f50:	e9dff06f          	j	80005dec <__memset+0x84>
    80005f54:	00000e93          	li	t4,0
    80005f58:	e95ff06f          	j	80005dec <__memset+0x84>
    80005f5c:	00000793          	li	a5,0
    80005f60:	ef9ff06f          	j	80005e58 <__memset+0xf0>
    80005f64:	00200e93          	li	t4,2
    80005f68:	e85ff06f          	j	80005dec <__memset+0x84>
    80005f6c:	00400e93          	li	t4,4
    80005f70:	e7dff06f          	j	80005dec <__memset+0x84>
    80005f74:	00500e93          	li	t4,5
    80005f78:	e75ff06f          	j	80005dec <__memset+0x84>
    80005f7c:	00600e93          	li	t4,6
    80005f80:	e6dff06f          	j	80005dec <__memset+0x84>

0000000080005f84 <__memmove>:
    80005f84:	ff010113          	addi	sp,sp,-16
    80005f88:	00813423          	sd	s0,8(sp)
    80005f8c:	01010413          	addi	s0,sp,16
    80005f90:	0e060863          	beqz	a2,80006080 <__memmove+0xfc>
    80005f94:	fff6069b          	addiw	a3,a2,-1
    80005f98:	0006881b          	sext.w	a6,a3
    80005f9c:	0ea5e863          	bltu	a1,a0,8000608c <__memmove+0x108>
    80005fa0:	00758713          	addi	a4,a1,7
    80005fa4:	00a5e7b3          	or	a5,a1,a0
    80005fa8:	40a70733          	sub	a4,a4,a0
    80005fac:	0077f793          	andi	a5,a5,7
    80005fb0:	00f73713          	sltiu	a4,a4,15
    80005fb4:	00174713          	xori	a4,a4,1
    80005fb8:	0017b793          	seqz	a5,a5
    80005fbc:	00e7f7b3          	and	a5,a5,a4
    80005fc0:	10078863          	beqz	a5,800060d0 <__memmove+0x14c>
    80005fc4:	00900793          	li	a5,9
    80005fc8:	1107f463          	bgeu	a5,a6,800060d0 <__memmove+0x14c>
    80005fcc:	0036581b          	srliw	a6,a2,0x3
    80005fd0:	fff8081b          	addiw	a6,a6,-1
    80005fd4:	02081813          	slli	a6,a6,0x20
    80005fd8:	01d85893          	srli	a7,a6,0x1d
    80005fdc:	00858813          	addi	a6,a1,8
    80005fe0:	00058793          	mv	a5,a1
    80005fe4:	00050713          	mv	a4,a0
    80005fe8:	01088833          	add	a6,a7,a6
    80005fec:	0007b883          	ld	a7,0(a5)
    80005ff0:	00878793          	addi	a5,a5,8
    80005ff4:	00870713          	addi	a4,a4,8
    80005ff8:	ff173c23          	sd	a7,-8(a4)
    80005ffc:	ff0798e3          	bne	a5,a6,80005fec <__memmove+0x68>
    80006000:	ff867713          	andi	a4,a2,-8
    80006004:	02071793          	slli	a5,a4,0x20
    80006008:	0207d793          	srli	a5,a5,0x20
    8000600c:	00f585b3          	add	a1,a1,a5
    80006010:	40e686bb          	subw	a3,a3,a4
    80006014:	00f507b3          	add	a5,a0,a5
    80006018:	06e60463          	beq	a2,a4,80006080 <__memmove+0xfc>
    8000601c:	0005c703          	lbu	a4,0(a1)
    80006020:	00e78023          	sb	a4,0(a5)
    80006024:	04068e63          	beqz	a3,80006080 <__memmove+0xfc>
    80006028:	0015c603          	lbu	a2,1(a1)
    8000602c:	00100713          	li	a4,1
    80006030:	00c780a3          	sb	a2,1(a5)
    80006034:	04e68663          	beq	a3,a4,80006080 <__memmove+0xfc>
    80006038:	0025c603          	lbu	a2,2(a1)
    8000603c:	00200713          	li	a4,2
    80006040:	00c78123          	sb	a2,2(a5)
    80006044:	02e68e63          	beq	a3,a4,80006080 <__memmove+0xfc>
    80006048:	0035c603          	lbu	a2,3(a1)
    8000604c:	00300713          	li	a4,3
    80006050:	00c781a3          	sb	a2,3(a5)
    80006054:	02e68663          	beq	a3,a4,80006080 <__memmove+0xfc>
    80006058:	0045c603          	lbu	a2,4(a1)
    8000605c:	00400713          	li	a4,4
    80006060:	00c78223          	sb	a2,4(a5)
    80006064:	00e68e63          	beq	a3,a4,80006080 <__memmove+0xfc>
    80006068:	0055c603          	lbu	a2,5(a1)
    8000606c:	00500713          	li	a4,5
    80006070:	00c782a3          	sb	a2,5(a5)
    80006074:	00e68663          	beq	a3,a4,80006080 <__memmove+0xfc>
    80006078:	0065c703          	lbu	a4,6(a1)
    8000607c:	00e78323          	sb	a4,6(a5)
    80006080:	00813403          	ld	s0,8(sp)
    80006084:	01010113          	addi	sp,sp,16
    80006088:	00008067          	ret
    8000608c:	02061713          	slli	a4,a2,0x20
    80006090:	02075713          	srli	a4,a4,0x20
    80006094:	00e587b3          	add	a5,a1,a4
    80006098:	f0f574e3          	bgeu	a0,a5,80005fa0 <__memmove+0x1c>
    8000609c:	02069613          	slli	a2,a3,0x20
    800060a0:	02065613          	srli	a2,a2,0x20
    800060a4:	fff64613          	not	a2,a2
    800060a8:	00e50733          	add	a4,a0,a4
    800060ac:	00c78633          	add	a2,a5,a2
    800060b0:	fff7c683          	lbu	a3,-1(a5)
    800060b4:	fff78793          	addi	a5,a5,-1
    800060b8:	fff70713          	addi	a4,a4,-1
    800060bc:	00d70023          	sb	a3,0(a4)
    800060c0:	fec798e3          	bne	a5,a2,800060b0 <__memmove+0x12c>
    800060c4:	00813403          	ld	s0,8(sp)
    800060c8:	01010113          	addi	sp,sp,16
    800060cc:	00008067          	ret
    800060d0:	02069713          	slli	a4,a3,0x20
    800060d4:	02075713          	srli	a4,a4,0x20
    800060d8:	00170713          	addi	a4,a4,1
    800060dc:	00e50733          	add	a4,a0,a4
    800060e0:	00050793          	mv	a5,a0
    800060e4:	0005c683          	lbu	a3,0(a1)
    800060e8:	00178793          	addi	a5,a5,1
    800060ec:	00158593          	addi	a1,a1,1
    800060f0:	fed78fa3          	sb	a3,-1(a5)
    800060f4:	fee798e3          	bne	a5,a4,800060e4 <__memmove+0x160>
    800060f8:	f89ff06f          	j	80006080 <__memmove+0xfc>
	...
