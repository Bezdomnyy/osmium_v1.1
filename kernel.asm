
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	54013103          	ld	sp,1344(sp) # 80007540 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	155030ef          	jal	ra,80003970 <start>

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
    80001224:	188000ef          	jal	ra,800013ac <_ZN6Kernel21supervisorTrapHandlerEv>



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

//Uart* Kernel::uart = nullptr;

extern void userMain();

void Kernel::initKernel() {
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00113423          	sd	ra,8(sp)
    800012ec:	00813023          	sd	s0,0(sp)
    800012f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMem();
    800012f4:	00001097          	auipc	ra,0x1
    800012f8:	1d8080e7          	jalr	472(ra) # 800024cc <_ZN15MemoryAllocator7initMemEv>
    RiscV::writeStvec((uint64) &supervisorTrap);
    800012fc:	00006797          	auipc	a5,0x6
    80001300:	24c7b783          	ld	a5,588(a5) # 80007548 <_GLOBAL_OFFSET_TABLE_+0x40>
    asm volatile("csrr %[stvec], stvec": [stvec] "=r" (stvec));
    return stvec;
}

inline void RiscV::writeStvec(uint64 stvec) {
    asm volatile("csrw stvec, %[stvec]":: [stvec] "r" (stvec));
    80001304:	10579073          	csrw	stvec,a5

    Uart::initUart();
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	4e8080e7          	jalr	1256(ra) # 800017f0 <_ZN4Uart8initUartEv>
    //RiscV::setSstatus(RiscV::SIE);
}
    80001310:	00813083          	ld	ra,8(sp)
    80001314:	00013403          	ld	s0,0(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_ZN6Kernel12uart_handlerEv>:
            break;
    }*/
}

//0x0a - hardware
void Kernel::uart_handler() {
    80001320:	fe010113          	addi	sp,sp,-32
    80001324:	00113c23          	sd	ra,24(sp)
    80001328:	00813823          	sd	s0,16(sp)
    8000132c:	00913423          	sd	s1,8(sp)
    80001330:	02010413          	addi	s0,sp,32
    int id = plic_claim();
    80001334:	00003097          	auipc	ra,0x3
    80001338:	e90080e7          	jalr	-368(ra) # 800041c4 <plic_claim>
    8000133c:	00050493          	mv	s1,a0
    //__print_string("handle_uart\n");
    if (id == 0x0a) {
    80001340:	00a00793          	li	a5,10
    80001344:	02f50263          	beq	a0,a5,80001368 <_ZN6Kernel12uart_handlerEv+0x48>
            //__print_string("rx\n");
            if(Uart::rxReceive() < 0) break;
            //plic_complete(id);
        }
    }
    plic_complete(id);
    80001348:	00048513          	mv	a0,s1
    8000134c:	00003097          	auipc	ra,0x3
    80001350:	eb0080e7          	jalr	-336(ra) # 800041fc <plic_complete>
}
    80001354:	01813083          	ld	ra,24(sp)
    80001358:	01013403          	ld	s0,16(sp)
    8000135c:	00813483          	ld	s1,8(sp)
    80001360:	02010113          	addi	sp,sp,32
    80001364:	00008067          	ret
        while (Uart::getStatus() & Uart::RX) {
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	518080e7          	jalr	1304(ra) # 80001880 <_ZN4Uart9getStatusEv>
    80001370:	00157793          	andi	a5,a0,1
    80001374:	fc078ae3          	beqz	a5,80001348 <_ZN6Kernel12uart_handlerEv+0x28>
            if(Uart::rxReceive() < 0) break;
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	60c080e7          	jalr	1548(ra) # 80001984 <_ZN4Uart9rxReceiveEv>
    80001380:	fe9ff06f          	j	80001368 <_ZN6Kernel12uart_handlerEv+0x48>

0000000080001384 <_ZN6Kernel14hw_irq_handlerEv>:
void Kernel::hw_irq_handler() {
    80001384:	ff010113          	addi	sp,sp,-16
    80001388:	00113423          	sd	ra,8(sp)
    8000138c:	00813023          	sd	s0,0(sp)
    80001390:	01010413          	addi	s0,sp,16
    uart_handler();
    80001394:	00000097          	auipc	ra,0x0
    80001398:	f8c080e7          	jalr	-116(ra) # 80001320 <_ZN6Kernel12uart_handlerEv>
}
    8000139c:	00813083          	ld	ra,8(sp)
    800013a0:	00013403          	ld	s0,0(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret

00000000800013ac <_ZN6Kernel21supervisorTrapHandlerEv>:
void Kernel::supervisorTrapHandler() {
    800013ac:	f1010113          	addi	sp,sp,-240
    800013b0:	0e113423          	sd	ra,232(sp)
    800013b4:	0e813023          	sd	s0,224(sp)
    800013b8:	0c913c23          	sd	s1,216(sp)
    800013bc:	0d213823          	sd	s2,208(sp)
    800013c0:	0d313423          	sd	s3,200(sp)
    800013c4:	0f010413          	addi	s0,sp,240
    asm volatile("csrr %[scause], scause": [scause] "=r" (scause));
    800013c8:	142027f3          	csrr	a5,scause
    800013cc:	f0f43c23          	sd	a5,-232(s0)
    return scause;
    800013d0:	f1843483          	ld	s1,-232(s0)
    if (scause == USER_SYSCALL || scause == SUPERVISOR_SYSCALL) {
    800013d4:	ff848713          	addi	a4,s1,-8
    800013d8:	00100793          	li	a5,1
    800013dc:	0ae7f863          	bgeu	a5,a4,8000148c <_ZN6Kernel21supervisorTrapHandlerEv+0xe0>
    if (scause == TIMER_IRQ) {
    800013e0:	fff00793          	li	a5,-1
    800013e4:	03f79793          	slli	a5,a5,0x3f
    800013e8:	00178793          	addi	a5,a5,1
    800013ec:	2ef48c63          	beq	s1,a5,800016e4 <_ZN6Kernel21supervisorTrapHandlerEv+0x338>
    if (scause == HARDWARE_IRQ) {
    800013f0:	fff00793          	li	a5,-1
    800013f4:	03f79793          	slli	a5,a5,0x3f
    800013f8:	00978793          	addi	a5,a5,9
    800013fc:	36f48c63          	beq	s1,a5,80001774 <_ZN6Kernel21supervisorTrapHandlerEv+0x3c8>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001400:	141027f3          	csrr	a5,sepc
    80001404:	f4f43023          	sd	a5,-192(s0)
    return sepc;
    80001408:	f4043903          	ld	s2,-192(s0)
    __print_string("Neobradjen izuzetak.\n");
    8000140c:	00005517          	auipc	a0,0x5
    80001410:	c3450513          	addi	a0,a0,-972 # 80006040 <CONSOLE_STATUS+0x30>
    80001414:	00001097          	auipc	ra,0x1
    80001418:	3a8080e7          	jalr	936(ra) # 800027bc <_Z14__print_stringPKc>
    __print_string("scause: ");
    8000141c:	00005517          	auipc	a0,0x5
    80001420:	c3c50513          	addi	a0,a0,-964 # 80006058 <CONSOLE_STATUS+0x48>
    80001424:	00001097          	auipc	ra,0x1
    80001428:	398080e7          	jalr	920(ra) # 800027bc <_Z14__print_stringPKc>
    __print_uint64(scause);
    8000142c:	00048513          	mv	a0,s1
    80001430:	00001097          	auipc	ra,0x1
    80001434:	3d0080e7          	jalr	976(ra) # 80002800 <_Z14__print_uint64m>
    Uart::txPut('\n');
    80001438:	00a00513          	li	a0,10
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	644080e7          	jalr	1604(ra) # 80001a80 <_ZN4Uart5txPutEc>
    __print_string("sepc: ");
    80001444:	00005517          	auipc	a0,0x5
    80001448:	c2450513          	addi	a0,a0,-988 # 80006068 <CONSOLE_STATUS+0x58>
    8000144c:	00001097          	auipc	ra,0x1
    80001450:	370080e7          	jalr	880(ra) # 800027bc <_Z14__print_stringPKc>
    __print_uint64(sepc);
    80001454:	00090513          	mv	a0,s2
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	3a8080e7          	jalr	936(ra) # 80002800 <_Z14__print_uint64m>
    Uart::txPut('\n');
    80001460:	00a00513          	li	a0,10
    80001464:	00000097          	auipc	ra,0x0
    80001468:	61c080e7          	jalr	1564(ra) # 80001a80 <_ZN4Uart5txPutEc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    8000146c:	14191073          	csrw	sepc,s2
}
    80001470:	0e813083          	ld	ra,232(sp)
    80001474:	0e013403          	ld	s0,224(sp)
    80001478:	0d813483          	ld	s1,216(sp)
    8000147c:	0d013903          	ld	s2,208(sp)
    80001480:	0c813983          	ld	s3,200(sp)
    80001484:	0f010113          	addi	sp,sp,240
    80001488:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000148c:	141027f3          	csrr	a5,sepc
    80001490:	f2f43423          	sd	a5,-216(s0)
    return sepc;
    80001494:	f2843483          	ld	s1,-216(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    80001498:	00448493          	addi	s1,s1,4
    asm volatile("csrc sstatus, %[mask]":: [mask] "r" (mask));
}

inline uint64 RiscV::readSstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    8000149c:	100027f3          	csrr	a5,sstatus
    800014a0:	f2f43023          	sd	a5,-224(s0)
    return sstatus;
    800014a4:	f2043903          	ld	s2,-224(s0)
};

inline void Kernel::syscall_handler() {
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));
    800014a8:	00088793          	mv	a5,a7
    800014ac:	f4f43423          	sd	a5,-184(s0)

    //volatile uint64 arg0, arg1, arg2, temp;
    switch(syscall_id) {
    800014b0:	f4843783          	ld	a5,-184(s0)
    800014b4:	04200713          	li	a4,66
    800014b8:	20f76a63          	bltu	a4,a5,800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x320>
    800014bc:	00279793          	slli	a5,a5,0x2
    800014c0:	00005717          	auipc	a4,0x5
    800014c4:	bb070713          	addi	a4,a4,-1104 # 80006070 <CONSOLE_STATUS+0x60>
    800014c8:	00e787b3          	add	a5,a5,a4
    800014cc:	0007a783          	lw	a5,0(a5)
    800014d0:	00e787b3          	add	a5,a5,a4
    800014d4:	00078067          	jr	a5
}

//0x01
inline void Kernel::mem_alloc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800014d8:	00050793          	mv	a5,a0
    800014dc:	f8f43023          	sd	a5,-128(s0)
    MemoryAllocator::allocate((size_t)arg0);
    800014e0:	f8043503          	ld	a0,-128(s0)
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	188080e7          	jalr	392(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
        asm volatile ("sd a0, 80(s0)");
    800014ec:	04a43823          	sd	a0,80(s0)
}

inline void RiscV::writeSstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    800014f0:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    800014f4:	14149073          	csrw	sepc,s1
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    800014f8:	00200793          	li	a5,2
    800014fc:	1447b073          	csrc	sip,a5
        return;
    80001500:	f71ff06f          	j	80001470 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
}

//0x02
inline void Kernel::mem_free_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001504:	00050793          	mv	a5,a0
    80001508:	f6f43c23          	sd	a5,-136(s0)
    MemoryAllocator::free((void*)arg0);
    8000150c:	f7843503          	ld	a0,-136(s0)
    80001510:	00001097          	auipc	ra,0x1
    80001514:	1e8080e7          	jalr	488(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
}
    80001518:	fd5ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x11
inline void Kernel::thread_create_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000151c:	00050793          	mv	a5,a0
    80001520:	f8f43423          	sd	a5,-120(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001524:	00058793          	mv	a5,a1
    80001528:	f8f43823          	sd	a5,-112(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    8000152c:	00060793          	mv	a5,a2
    80001530:	f8f43c23          	sd	a5,-104(s0)

    *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);
    80001534:	f9043503          	ld	a0,-112(s0)
    80001538:	f9843583          	ld	a1,-104(s0)
    8000153c:	f8843983          	ld	s3,-120(s0)
    80001540:	00001097          	auipc	ra,0x1
    80001544:	9e8080e7          	jalr	-1560(ra) # 80001f28 <_ZN3TCB9createTCBEPFvPvES0_>
    80001548:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    8000154c:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    80001550:	f8843783          	ld	a5,-120(s0)
    80001554:	0007b783          	ld	a5,0(a5)
    80001558:	f8079ae3          	bnez	a5,800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    8000155c:	fff50513          	addi	a0,a0,-1
}
    80001560:	f8dff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x12
inline void Kernel::thread_exit_handler() {
    TCB::running->setFinished(true);
    80001564:	00006797          	auipc	a5,0x6
    80001568:	fec7b783          	ld	a5,-20(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000156c:	0007b783          	ld	a5,0(a5)

    static TCB* createSupervisorTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    80001570:	00100713          	li	a4,1
    80001574:	00e78c23          	sb	a4,24(a5)
    asm volatile ("addi a0, zero, 0");
    80001578:	00000513          	li	a0,0
    //TCB::yield();
    TCB::dispatch();
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	b5c080e7          	jalr	-1188(ra) # 800020d8 <_ZN3TCB8dispatchEv>
}
    80001584:	f69ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	b50080e7          	jalr	-1200(ra) # 800020d8 <_ZN3TCB8dispatchEv>
}
    80001590:	f5dff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x14
inline void Kernel::thread_create_deactivated_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001594:	00050793          	mv	a5,a0
    80001598:	faf43023          	sd	a5,-96(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    8000159c:	00058793          	mv	a5,a1
    800015a0:	faf43423          	sd	a5,-88(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    800015a4:	00060793          	mv	a5,a2
    800015a8:	faf43823          	sd	a5,-80(s0)

    *(TCB**)arg0 = TCB::createDeactivatedTCB((TCB::Body)arg1, (void*)arg2);
    800015ac:	fa843503          	ld	a0,-88(s0)
    800015b0:	fb043583          	ld	a1,-80(s0)
    800015b4:	fa043983          	ld	s3,-96(s0)
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	a00080e7          	jalr	-1536(ra) # 80001fb8 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
    800015c0:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    800015c4:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    800015c8:	fa043783          	ld	a5,-96(s0)
    800015cc:	0007b783          	ld	a5,0(a5)
    800015d0:	f0079ee3          	bnez	a5,800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    800015d4:	fff50513          	addi	a0,a0,-1
}
    800015d8:	f15ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x021
inline void Kernel::sem_open_handler() {
    volatile uint64 arg0, arg1;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800015dc:	00050793          	mv	a5,a0
    800015e0:	faf43c23          	sd	a5,-72(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    800015e4:	00058793          	mv	a5,a1
    800015e8:	fcf43023          	sd	a5,-64(s0)

    *(Sem**)arg0 = Sem::createSem((unsigned)arg1);
    800015ec:	fc043503          	ld	a0,-64(s0)
    800015f0:	fb843983          	ld	s3,-72(s0)
    800015f4:	0005051b          	sext.w	a0,a0
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	2dc080e7          	jalr	732(ra) # 800028d4 <_ZN3Sem9createSemEj>
    80001600:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    80001604:	00000513          	li	a0,0
    if (!(*(Sem**)arg0)) asm volatile("addi a0, a0, -1");
    80001608:	fb843783          	ld	a5,-72(s0)
    8000160c:	0007b783          	ld	a5,0(a5)
    80001610:	ec079ee3          	bnez	a5,800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    80001614:	fff50513          	addi	a0,a0,-1
}
    80001618:	ed5ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x22
inline void Kernel::sem_close_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000161c:	00050793          	mv	a5,a0
    80001620:	fcf43423          	sd	a5,-56(s0)
    delete *(Sem**)arg0;
    80001624:	fc843783          	ld	a5,-56(s0)
    80001628:	0007b983          	ld	s3,0(a5)
    8000162c:	00098e63          	beqz	s3,80001648 <_ZN6Kernel21supervisorTrapHandlerEv+0x29c>
    80001630:	00098513          	mv	a0,s3
    80001634:	00001097          	auipc	ra,0x1
    80001638:	2f0080e7          	jalr	752(ra) # 80002924 <_ZN3SemD1Ev>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    8000163c:	00098513          	mv	a0,s3
    80001640:	00001097          	auipc	ra,0x1
    80001644:	0b8080e7          	jalr	184(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>

    asm volatile("mv a0, zero");
    80001648:	00000513          	li	a0,0
}
    8000164c:	ea1ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x23
inline void Kernel::sem_wait_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001650:	00050793          	mv	a5,a0
    80001654:	f6f43823          	sd	a5,-144(s0)
    ((Sem*)arg0)->semWait();
    80001658:	f7043503          	ld	a0,-144(s0)
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	350080e7          	jalr	848(ra) # 800029ac <_ZN3Sem7semWaitEv>

    //asm volatile("mv a0, zero");
}
    80001664:	e89ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x24
inline void Kernel::sem_signal_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001668:	00050793          	mv	a5,a0
    8000166c:	f6f43423          	sd	a5,-152(s0)
    ((Sem*)arg0)->semSignal();
    80001670:	f6843503          	ld	a0,-152(s0)
    80001674:	00001097          	auipc	ra,0x1
    80001678:	3d4080e7          	jalr	980(ra) # 80002a48 <_ZN3Sem9semSignalEv>
}
    8000167c:	e71ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x31
inline void Kernel::time_sleep_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001680:	00050793          	mv	a5,a0
    80001684:	f6f43023          	sd	a5,-160(s0)
    Scheduler::timeSleep((time_t)arg0);
    80001688:	f6043503          	ld	a0,-160(s0)
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	61c080e7          	jalr	1564(ra) # 80002ca8 <_ZN9Scheduler9timeSleepEm>
}
    80001694:	e59ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
//0x41
inline void Kernel::getc_handler() {
    volatile uint64 arg0;
    //arg0 = __getc();
    //__print_string("getc");
    arg0 = Uart::rxGet();
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	210080e7          	jalr	528(ra) # 800018a8 <_ZN4Uart5rxGetEv>
    800016a0:	f4a43c23          	sd	a0,-168(s0)
    asm volatile ("mv a0, %[arg0]":: [arg0] "r"(arg0));
    800016a4:	f5843783          	ld	a5,-168(s0)
    800016a8:	00078513          	mv	a0,a5
}
    800016ac:	e41ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x42
inline void Kernel::putc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800016b0:	00050793          	mv	a5,a0
    800016b4:	f4f43823          	sd	a5,-176(s0)
    //__putc(arg0);
    Uart::txPut(arg0);
    800016b8:	f5043503          	ld	a0,-176(s0)
    800016bc:	0ff57513          	andi	a0,a0,255
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	3c0080e7          	jalr	960(ra) # 80001a80 <_ZN4Uart5txPutEc>
    //uart->tx
}
    800016c8:	e25ff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
            asm volatile ("addi a0, zero, -1");
    800016cc:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    800016d0:	00005517          	auipc	a0,0x5
    800016d4:	95050513          	addi	a0,a0,-1712 # 80006020 <CONSOLE_STATUS+0x10>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	0e4080e7          	jalr	228(ra) # 800027bc <_Z14__print_stringPKc>
            break;
    800016e0:	e0dff06f          	j	800014ec <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    800016e4:	00006797          	auipc	a5,0x6
    800016e8:	e6c7b783          	ld	a5,-404(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016ec:	0007b783          	ld	a5,0(a5)
    800016f0:	04078063          	beqz	a5,80001730 <_ZN6Kernel21supervisorTrapHandlerEv+0x384>
        Scheduler::timerInterrupt();
    800016f4:	00001097          	auipc	ra,0x1
    800016f8:	4f8080e7          	jalr	1272(ra) # 80002bec <_ZN9Scheduler14timerInterruptEv>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    800016fc:	00006717          	auipc	a4,0x6
    80001700:	e3473703          	ld	a4,-460(a4) # 80007530 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001704:	00073783          	ld	a5,0(a4)
    80001708:	00178793          	addi	a5,a5,1
    8000170c:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    80001710:	00006717          	auipc	a4,0x6
    80001714:	e4073703          	ld	a4,-448(a4) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001718:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    8000171c:	02073703          	ld	a4,32(a4)
    80001720:	00e7fe63          	bgeu	a5,a4,8000173c <_ZN6Kernel21supervisorTrapHandlerEv+0x390>
    80001724:	00200793          	li	a5,2
    80001728:	1447b073          	csrc	sip,a5
        return;
    8000172c:	d45ff06f          	j	80001470 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
    80001730:	00200793          	li	a5,2
    80001734:	1447b073          	csrc	sip,a5
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    80001738:	d39ff06f          	j	80001470 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000173c:	141027f3          	csrr	a5,sepc
    80001740:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    80001744:	f3843483          	ld	s1,-200(s0)
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    80001748:	100027f3          	csrr	a5,sstatus
    8000174c:	f2f43823          	sd	a5,-208(s0)
    return sstatus;
    80001750:	f3043903          	ld	s2,-208(s0)
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }
    80001754:	00006797          	auipc	a5,0x6
    80001758:	ddc7b783          	ld	a5,-548(a5) # 80007530 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000175c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001760:	00001097          	auipc	ra,0x1
    80001764:	978080e7          	jalr	-1672(ra) # 800020d8 <_ZN3TCB8dispatchEv>
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001768:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    8000176c:	14149073          	csrw	sepc,s1
}
    80001770:	fb5ff06f          	j	80001724 <_ZN6Kernel21supervisorTrapHandlerEv+0x378>
        hw_irq_handler();
    80001774:	00000097          	auipc	ra,0x0
    80001778:	c10080e7          	jalr	-1008(ra) # 80001384 <_ZN6Kernel14hw_irq_handlerEv>
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    8000177c:	20000793          	li	a5,512
    80001780:	1447b073          	csrc	sip,a5
        return;
    80001784:	cedff06f          	j	80001470 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>

0000000080001788 <_Z41__static_initialization_and_destruction_0ii>:
    rx_request->semWait();
}

void Uart::rxSignal() {
    rx_request->semSignal();
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00813423          	sd	s0,8(sp)
    80001790:	01010413          	addi	s0,sp,16
    80001794:	00100793          	li	a5,1
    80001798:	00f50863          	beq	a0,a5,800017a8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000179c:	00813403          	ld	s0,8(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret
    800017a8:	000107b7          	lui	a5,0x10
    800017ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800017b0:	fef596e3          	bne	a1,a5,8000179c <_Z41__static_initialization_and_destruction_0ii+0x14>
volatile char* Uart::STATUS = (char*) CONSOLE_STATUS;
    800017b4:	00006797          	auipc	a5,0x6
    800017b8:	d6c7b783          	ld	a5,-660(a5) # 80007520 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017bc:	0007b703          	ld	a4,0(a5)
    800017c0:	00006797          	auipc	a5,0x6
    800017c4:	e0078793          	addi	a5,a5,-512 # 800075c0 <_ZN4Uart6STATUSE>
    800017c8:	00e7b023          	sd	a4,0(a5)
volatile char* Uart::RX_DATA = (char*) CONSOLE_RX_DATA;
    800017cc:	00006717          	auipc	a4,0x6
    800017d0:	d4c73703          	ld	a4,-692(a4) # 80007518 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017d4:	00073703          	ld	a4,0(a4)
    800017d8:	00e7b423          	sd	a4,8(a5)
volatile char* Uart::TX_DATA = (char*) CONSOLE_TX_DATA;
    800017dc:	00006717          	auipc	a4,0x6
    800017e0:	d5c73703          	ld	a4,-676(a4) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017e4:	00073703          	ld	a4,0(a4)
    800017e8:	00e7b823          	sd	a4,16(a5)
    800017ec:	fb1ff06f          	j	8000179c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800017f0 <_ZN4Uart8initUartEv>:
void Uart::initUart() {
    800017f0:	fe010113          	addi	sp,sp,-32
    800017f4:	00113c23          	sd	ra,24(sp)
    800017f8:	00813823          	sd	s0,16(sp)
    800017fc:	00913423          	sd	s1,8(sp)
    80001800:	02010413          	addi	s0,sp,32
    rx_not_empty = Sem::createSem(0);
    80001804:	00000513          	li	a0,0
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	0cc080e7          	jalr	204(ra) # 800028d4 <_ZN3Sem9createSemEj>
    80001810:	00006497          	auipc	s1,0x6
    80001814:	db048493          	addi	s1,s1,-592 # 800075c0 <_ZN4Uart6STATUSE>
    80001818:	00a4bc23          	sd	a0,24(s1)
    rx_not_full = Sem::createSem(BUFFER_SIZE);
    8000181c:	40000513          	li	a0,1024
    80001820:	00001097          	auipc	ra,0x1
    80001824:	0b4080e7          	jalr	180(ra) # 800028d4 <_ZN3Sem9createSemEj>
    80001828:	02a4b023          	sd	a0,32(s1)
    rx_request = Sem::createSem(0);
    8000182c:	00000513          	li	a0,0
    80001830:	00001097          	auipc	ra,0x1
    80001834:	0a4080e7          	jalr	164(ra) # 800028d4 <_ZN3Sem9createSemEj>
    80001838:	02a4b423          	sd	a0,40(s1)
    tx_not_empty = Sem::createSem(0);
    8000183c:	00000513          	li	a0,0
    80001840:	00001097          	auipc	ra,0x1
    80001844:	094080e7          	jalr	148(ra) # 800028d4 <_ZN3Sem9createSemEj>
    80001848:	02a4b823          	sd	a0,48(s1)
    tx_not_full = Sem::createSem(BUFFER_SIZE);
    8000184c:	40000513          	li	a0,1024
    80001850:	00001097          	auipc	ra,0x1
    80001854:	084080e7          	jalr	132(ra) # 800028d4 <_ZN3Sem9createSemEj>
    80001858:	02a4bc23          	sd	a0,56(s1)
    tx_request = Sem::createSem(0);
    8000185c:	00000513          	li	a0,0
    80001860:	00001097          	auipc	ra,0x1
    80001864:	074080e7          	jalr	116(ra) # 800028d4 <_ZN3Sem9createSemEj>
    80001868:	04a4b023          	sd	a0,64(s1)
}
    8000186c:	01813083          	ld	ra,24(sp)
    80001870:	01013403          	ld	s0,16(sp)
    80001874:	00813483          	ld	s1,8(sp)
    80001878:	02010113          	addi	sp,sp,32
    8000187c:	00008067          	ret

0000000080001880 <_ZN4Uart9getStatusEv>:
uint8 Uart::getStatus() {
    80001880:	ff010113          	addi	sp,sp,-16
    80001884:	00813423          	sd	s0,8(sp)
    80001888:	01010413          	addi	s0,sp,16
    uint8 ret = *((uint8*) CONSOLE_STATUS);
    8000188c:	00006797          	auipc	a5,0x6
    80001890:	c947b783          	ld	a5,-876(a5) # 80007520 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001894:	0007b783          	ld	a5,0(a5)
}
    80001898:	0007c503          	lbu	a0,0(a5)
    8000189c:	00813403          	ld	s0,8(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZN4Uart5rxGetEv>:
char Uart::rxGet() {
    800018a8:	fe010113          	addi	sp,sp,-32
    800018ac:	00113c23          	sd	ra,24(sp)
    800018b0:	00813823          	sd	s0,16(sp)
    800018b4:	00913423          	sd	s1,8(sp)
    800018b8:	02010413          	addi	s0,sp,32
    rx_not_empty->semWait();
    800018bc:	00006497          	auipc	s1,0x6
    800018c0:	d0448493          	addi	s1,s1,-764 # 800075c0 <_ZN4Uart6STATUSE>
    800018c4:	0184b503          	ld	a0,24(s1)
    800018c8:	00001097          	auipc	ra,0x1
    800018cc:	0e4080e7          	jalr	228(ra) # 800029ac <_ZN3Sem7semWaitEv>
    c = rx_buffer[rxFront];
    800018d0:	0484a783          	lw	a5,72(s1)
    800018d4:	00f48733          	add	a4,s1,a5
    rxFront = (rxFront + 1) & (BUFFER_SIZE - 1);
    800018d8:	0017879b          	addiw	a5,a5,1
    800018dc:	3ff7f793          	andi	a5,a5,1023
    800018e0:	04f4a423          	sw	a5,72(s1)
    rxSize--;
    800018e4:	4504a783          	lw	a5,1104(s1)
    800018e8:	fff7879b          	addiw	a5,a5,-1
    800018ec:	44f4a823          	sw	a5,1104(s1)
}
    800018f0:	05074503          	lbu	a0,80(a4)
    800018f4:	01813083          	ld	ra,24(sp)
    800018f8:	01013403          	ld	s0,16(sp)
    800018fc:	00813483          	ld	s1,8(sp)
    80001900:	02010113          	addi	sp,sp,32
    80001904:	00008067          	ret

0000000080001908 <_ZN4Uart5rxPutEc>:
void Uart::rxPut(char c) {
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	01213023          	sd	s2,0(sp)
    8000191c:	02010413          	addi	s0,sp,32
    80001920:	00050913          	mv	s2,a0
    rx_not_full->semWait(); // wait producer
    80001924:	00006497          	auipc	s1,0x6
    80001928:	c9c48493          	addi	s1,s1,-868 # 800075c0 <_ZN4Uart6STATUSE>
    8000192c:	0204b503          	ld	a0,32(s1)
    80001930:	00001097          	auipc	ra,0x1
    80001934:	07c080e7          	jalr	124(ra) # 800029ac <_ZN3Sem7semWaitEv>
    rx_buffer[txRear] = c;
    80001938:	4544a783          	lw	a5,1108(s1)
    8000193c:	00f487b3          	add	a5,s1,a5
    80001940:	05278823          	sb	s2,80(a5)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    80001944:	4584a783          	lw	a5,1112(s1)
    80001948:	0017879b          	addiw	a5,a5,1
    8000194c:	3ff7f793          	andi	a5,a5,1023
    80001950:	44f4ac23          	sw	a5,1112(s1)
    rxSize++;
    80001954:	4504a783          	lw	a5,1104(s1)
    80001958:	0017879b          	addiw	a5,a5,1
    8000195c:	44f4a823          	sw	a5,1104(s1)
    rx_not_empty->semSignal(); // signal consumer
    80001960:	0184b503          	ld	a0,24(s1)
    80001964:	00001097          	auipc	ra,0x1
    80001968:	0e4080e7          	jalr	228(ra) # 80002a48 <_ZN3Sem9semSignalEv>
}
    8000196c:	01813083          	ld	ra,24(sp)
    80001970:	01013403          	ld	s0,16(sp)
    80001974:	00813483          	ld	s1,8(sp)
    80001978:	00013903          	ld	s2,0(sp)
    8000197c:	02010113          	addi	sp,sp,32
    80001980:	00008067          	ret

0000000080001984 <_ZN4Uart9rxReceiveEv>:
    if (rxSize >= BUFFER_SIZE) return -1;
    80001984:	00006717          	auipc	a4,0x6
    80001988:	08c72703          	lw	a4,140(a4) # 80007a10 <_ZN4Uart6rxSizeE>
    8000198c:	3ff00793          	li	a5,1023
    80001990:	06e7c663          	blt	a5,a4,800019fc <_ZN4Uart9rxReceiveEv+0x78>
char Uart::rxReceive() {
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00113423          	sd	ra,8(sp)
    8000199c:	00813023          	sd	s0,0(sp)
    800019a0:	01010413          	addi	s0,sp,16
    char c = *(char*) CONSOLE_RX_DATA;
    800019a4:	00006797          	auipc	a5,0x6
    800019a8:	b747b783          	ld	a5,-1164(a5) # 80007518 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019ac:	0007b783          	ld	a5,0(a5)
    800019b0:	0007c583          	lbu	a1,0(a5)
    rx_buffer[rxRear] = c;
    800019b4:	00006697          	auipc	a3,0x6
    800019b8:	c0c68693          	addi	a3,a3,-1012 # 800075c0 <_ZN4Uart6STATUSE>
    800019bc:	4586a783          	lw	a5,1112(a3)
    800019c0:	00f68633          	add	a2,a3,a5
    800019c4:	04b60823          	sb	a1,80(a2)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    800019c8:	0017879b          	addiw	a5,a5,1
    800019cc:	3ff7f793          	andi	a5,a5,1023
    800019d0:	44f6ac23          	sw	a5,1112(a3)
    rxSize++;
    800019d4:	0017071b          	addiw	a4,a4,1
    800019d8:	44e6a823          	sw	a4,1104(a3)
    rx_not_empty->semSignal();
    800019dc:	0186b503          	ld	a0,24(a3)
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	068080e7          	jalr	104(ra) # 80002a48 <_ZN3Sem9semSignalEv>
    return 0;
    800019e8:	00000513          	li	a0,0
}
    800019ec:	00813083          	ld	ra,8(sp)
    800019f0:	00013403          	ld	s0,0(sp)
    800019f4:	01010113          	addi	sp,sp,16
    800019f8:	00008067          	ret
    if (rxSize >= BUFFER_SIZE) return -1;
    800019fc:	0ff00513          	li	a0,255
}
    80001a00:	00008067          	ret

0000000080001a04 <_ZN4Uart5txGetEv>:
char Uart::txGet() {
    80001a04:	fe010113          	addi	sp,sp,-32
    80001a08:	00113c23          	sd	ra,24(sp)
    80001a0c:	00813823          	sd	s0,16(sp)
    80001a10:	00913423          	sd	s1,8(sp)
    80001a14:	02010413          	addi	s0,sp,32
    while(txSize == 0) {thread_dispatch();}
    80001a18:	00006797          	auipc	a5,0x6
    80001a1c:	0047a783          	lw	a5,4(a5) # 80007a1c <_ZN4Uart6txSizeE>
    80001a20:	00079863          	bnez	a5,80001a30 <_ZN4Uart5txGetEv+0x2c>
    80001a24:	fffff097          	auipc	ra,0xfffff
    80001a28:	60c080e7          	jalr	1548(ra) # 80001030 <thread_dispatch>
    80001a2c:	fedff06f          	j	80001a18 <_ZN4Uart5txGetEv+0x14>
    c = tx_buffer[txFront];
    80001a30:	00006797          	auipc	a5,0x6
    80001a34:	b9078793          	addi	a5,a5,-1136 # 800075c0 <_ZN4Uart6STATUSE>
    80001a38:	4607a703          	lw	a4,1120(a5)
    80001a3c:	00e786b3          	add	a3,a5,a4
    80001a40:	4686c483          	lbu	s1,1128(a3)
    txFront = (txFront + 1) & (BUFFER_SIZE - 1);
    80001a44:	0017071b          	addiw	a4,a4,1
    80001a48:	3ff77713          	andi	a4,a4,1023
    80001a4c:	46e7a023          	sw	a4,1120(a5)
    txSize--;
    80001a50:	45c7a703          	lw	a4,1116(a5)
    80001a54:	fff7071b          	addiw	a4,a4,-1
    80001a58:	44e7ae23          	sw	a4,1116(a5)
    tx_not_full->semSignal(); // signal producer
    80001a5c:	0387b503          	ld	a0,56(a5)
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	fe8080e7          	jalr	-24(ra) # 80002a48 <_ZN3Sem9semSignalEv>
}
    80001a68:	00048513          	mv	a0,s1
    80001a6c:	01813083          	ld	ra,24(sp)
    80001a70:	01013403          	ld	s0,16(sp)
    80001a74:	00813483          	ld	s1,8(sp)
    80001a78:	02010113          	addi	sp,sp,32
    80001a7c:	00008067          	ret

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
    80001aa0:	b2448493          	addi	s1,s1,-1244 # 800075c0 <_ZN4Uart6STATUSE>
    80001aa4:	0384b503          	ld	a0,56(s1)
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	f04080e7          	jalr	-252(ra) # 800029ac <_ZN3Sem7semWaitEv>
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
    80001adc:	f70080e7          	jalr	-144(ra) # 80002a48 <_ZN3Sem9semSignalEv>
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
    80001b08:	a347b783          	ld	a5,-1484(a5) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001b34:	ad053503          	ld	a0,-1328(a0) # 80007600 <_ZN4Uart10tx_requestE>
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	e74080e7          	jalr	-396(ra) # 800029ac <_ZN3Sem7semWaitEv>
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
    80001b64:	aa053503          	ld	a0,-1376(a0) # 80007600 <_ZN4Uart10tx_requestE>
    80001b68:	00001097          	auipc	ra,0x1
    80001b6c:	ee0080e7          	jalr	-288(ra) # 80002a48 <_ZN3Sem9semSignalEv>
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
    80001b94:	a5853503          	ld	a0,-1448(a0) # 800075e8 <_ZN4Uart10rx_requestE>
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	e14080e7          	jalr	-492(ra) # 800029ac <_ZN3Sem7semWaitEv>
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
    80001bc4:	a2853503          	ld	a0,-1496(a0) # 800075e8 <_ZN4Uart10rx_requestE>
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	e80080e7          	jalr	-384(ra) # 80002a48 <_ZN3Sem9semSignalEv>
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
    80001c00:	b8c080e7          	jalr	-1140(ra) # 80001788 <_Z41__static_initialization_and_destruction_0ii>
    80001c04:	00813083          	ld	ra,8(sp)
    80001c08:	00013403          	ld	s0,0(sp)
    80001c0c:	01010113          	addi	sp,sp,16
    80001c10:	00008067          	ret

0000000080001c14 <_Z13uart_consumerv>:

#include "../h/uart_consumer.hpp"
#include "../h/uart.hpp"
//#include "../h/tcb.hpp"

void uart_consumer() {
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00113423          	sd	ra,8(sp)
    80001c1c:	00813023          	sd	s0,0(sp)
    80001c20:	01010413          	addi	s0,sp,16
    80001c24:	0140006f          	j	80001c38 <_Z13uart_consumerv+0x24>
    while(1) {
        //RiscV::setSstatus(RiscV::SIE);
        while (Uart::getStatus() & Uart::TX) {
            //__print_string("h");
            char c = Uart::txGet();
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	ddc080e7          	jalr	-548(ra) # 80001a04 <_ZN4Uart5txGetEv>

            Uart::txSend(c);
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	ec8080e7          	jalr	-312(ra) # 80001af8 <_ZN4Uart6txSendEc>
        while (Uart::getStatus() & Uart::TX) {
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	c48080e7          	jalr	-952(ra) # 80001880 <_ZN4Uart9getStatusEv>
    80001c40:	02057513          	andi	a0,a0,32
    80001c44:	fe050ae3          	beqz	a0,80001c38 <_Z13uart_consumerv+0x24>
    80001c48:	fe1ff06f          	j	80001c28 <_Z13uart_consumerv+0x14>

0000000080001c4c <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00113423          	sd	ra,8(sp)
    80001c54:	00813023          	sd	s0,0(sp)
    80001c58:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c5c:	fffff097          	auipc	ra,0xfffff
    80001c60:	3a4080e7          	jalr	932(ra) # 80001000 <mem_alloc>
}
    80001c64:	00813083          	ld	ra,8(sp)
    80001c68:	00013403          	ld	s0,0(sp)
    80001c6c:	01010113          	addi	sp,sp,16
    80001c70:	00008067          	ret

0000000080001c74 <_Znam>:

void* operator new[](size_t size) {
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	37c080e7          	jalr	892(ra) # 80001000 <mem_alloc>
}
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZdlPv>:

void operator delete(void* ptr) {
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	360080e7          	jalr	864(ra) # 8000100c <mem_free>
}
    80001cb4:	00813083          	ld	ra,8(sp)
    80001cb8:	00013403          	ld	s0,0(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001cd4:	fffff097          	auipc	ra,0xfffff
    80001cd8:	338080e7          	jalr	824(ra) # 8000100c <mem_free>
}
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <main>:
#include "../h/kernel.hpp"
#include "../h/uart_consumer.hpp"

void userMain();

void main() {
    80001cec:	fe010113          	addi	sp,sp,-32
    80001cf0:	00113c23          	sd	ra,24(sp)
    80001cf4:	00813823          	sd	s0,16(sp)
    80001cf8:	00913423          	sd	s1,8(sp)
    80001cfc:	01213023          	sd	s2,0(sp)
    80001d00:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	5e0080e7          	jalr	1504(ra) # 800012e4 <_ZN6Kernel10initKernelEv>

    TCB* main = TCB::createTCB(nullptr, nullptr);
    80001d0c:	00000593          	li	a1,0
    80001d10:	00000513          	li	a0,0
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	214080e7          	jalr	532(ra) # 80001f28 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d1c:	00050913          	mv	s2,a0
    TCB* user = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    80001d20:	00000593          	li	a1,0
    80001d24:	00005517          	auipc	a0,0x5
    80001d28:	7ec53503          	ld	a0,2028(a0) # 80007510 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	1fc080e7          	jalr	508(ra) # 80001f28 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d34:	00050493          	mv	s1,a0
    TCB::running = main;
    80001d38:	00006797          	auipc	a5,0x6
    80001d3c:	8187b783          	ld	a5,-2024(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d40:	0127b023          	sd	s2,0(a5)

    TCB* uart_tx = TCB::createSupervisorTCB((void(*)(void*))uart_consumer, nullptr);
    80001d44:	00000593          	li	a1,0
    80001d48:	00006517          	auipc	a0,0x6
    80001d4c:	81853503          	ld	a0,-2024(a0) # 80007560 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	2f8080e7          	jalr	760(ra) # 80002048 <_ZN3TCB19createSupervisorTCBEPFvPvES0_>
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001d58:	00200793          	li	a5,2
    80001d5c:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished; }
    80001d60:	0184c783          	lbu	a5,24(s1)

    uart_tx->isFinished();
    RiscV::setSstatus(RiscV::SIE);
    while(!user->isFinished()) {
    80001d64:	00079863          	bnez	a5,80001d74 <main+0x88>
        TCB::dispatch();
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	370080e7          	jalr	880(ra) # 800020d8 <_ZN3TCB8dispatchEv>
    while(!user->isFinished()) {
    80001d70:	ff1ff06f          	j	80001d60 <main+0x74>
    }
    80001d74:	01813083          	ld	ra,24(sp)
    80001d78:	01013403          	ld	s0,16(sp)
    80001d7c:	00813483          	ld	s1,8(sp)
    80001d80:	00013903          	ld	s2,0(sp)
    80001d84:	02010113          	addi	sp,sp,32
    80001d88:	00008067          	ret

0000000080001d8c <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80001da0:	00001097          	auipc	ra,0x1
    80001da4:	9fc080e7          	jalr	-1540(ra) # 8000279c <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001da8:	00006497          	auipc	s1,0x6
    80001dac:	08048493          	addi	s1,s1,128 # 80007e28 <_ZN3TCB7runningE>
    80001db0:	0004b783          	ld	a5,0(s1)
    80001db4:	0007b703          	ld	a4,0(a5)
    80001db8:	0087b503          	ld	a0,8(a5)
    80001dbc:	000700e7          	jalr	a4
    running->setFinished(true);
    80001dc0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool val) { finished = val; }
    80001dc4:	00100713          	li	a4,1
    80001dc8:	00e78c23          	sb	a4,24(a5)
    //thread_exit();
    thread_dispatch();
    80001dcc:	fffff097          	auipc	ra,0xfffff
    80001dd0:	264080e7          	jalr	612(ra) # 80001030 <thread_dispatch>
}
    80001dd4:	01813083          	ld	ra,24(sp)
    80001dd8:	01013403          	ld	s0,16(sp)
    80001ddc:	00813483          	ld	s1,8(sp)
    80001de0:	02010113          	addi	sp,sp,32
    80001de4:	00008067          	ret

0000000080001de8 <_ZN3TCB14sThreadWrapperEv>:

void TCB::sThreadWrapper() {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
    80001df8:	10000793          	li	a5,256
    80001dfc:	1007a073          	csrs	sstatus,a5
    80001e00:	02000793          	li	a5,32
    80001e04:	1007a073          	csrs	sstatus,a5
    80001e08:	00200793          	li	a5,2
    80001e0c:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(0x0000000000000001UL << 8);
    RiscV::setSstatus(0x0000000000000001UL << 5);
    RiscV::setSstatus(RiscV::SIE);
    RiscV::popSppSpie();
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	98c080e7          	jalr	-1652(ra) # 8000279c <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001e18:	00006797          	auipc	a5,0x6
    80001e1c:	0107b783          	ld	a5,16(a5) # 80007e28 <_ZN3TCB7runningE>
    80001e20:	0007b703          	ld	a4,0(a5)
    80001e24:	0087b503          	ld	a0,8(a5)
    80001e28:	000700e7          	jalr	a4
    //running->setFinished(true);
    thread_exit();
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	1f8080e7          	jalr	504(ra) # 80001024 <thread_exit>
    //thread_dispatch();
}
    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN3TCBC1EPFvPvES0_mbb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready, bool supervisor)
    80001e44:	fc010113          	addi	sp,sp,-64
    80001e48:	02113c23          	sd	ra,56(sp)
    80001e4c:	02813823          	sd	s0,48(sp)
    80001e50:	02913423          	sd	s1,40(sp)
    80001e54:	03213023          	sd	s2,32(sp)
    80001e58:	01313c23          	sd	s3,24(sp)
    80001e5c:	01413823          	sd	s4,16(sp)
    80001e60:	01513423          	sd	s5,8(sp)
    80001e64:	04010413          	addi	s0,sp,64
    80001e68:	00050493          	mv	s1,a0
    80001e6c:	00058913          	mv	s2,a1
    80001e70:	00068993          	mv	s3,a3
    80001e74:	00070a13          	mv	s4,a4
    80001e78:	00078a93          	mv	s5,a5
        })
    80001e7c:	00b53023          	sd	a1,0(a0)
    80001e80:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001e84:	06058863          	beqz	a1,80001ef4 <_ZN3TCBC1EPFvPvES0_mbb+0xb0>
    80001e88:	00008537          	lui	a0,0x8
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	7e0080e7          	jalr	2016(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
        })
    80001e94:	00a4b823          	sd	a0,16(s1)
    80001e98:	00048c23          	sb	zero,24(s1)
    80001e9c:	00048ca3          	sb	zero,25(s1)
    80001ea0:	0334b023          	sd	s3,32(s1)
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001ea4:	06090263          	beqz	s2,80001f08 <_ZN3TCBC1EPFvPvES0_mbb+0xc4>
    80001ea8:	040a8a63          	beqz	s5,80001efc <_ZN3TCBC1EPFvPvES0_mbb+0xb8>
    80001eac:	00000797          	auipc	a5,0x0
    80001eb0:	f3c78793          	addi	a5,a5,-196 # 80001de8 <_ZN3TCB14sThreadWrapperEv>
        })
    80001eb4:	02f4b423          	sd	a5,40(s1)
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001eb8:	04050c63          	beqz	a0,80001f10 <_ZN3TCBC1EPFvPvES0_mbb+0xcc>
    80001ebc:	000087b7          	lui	a5,0x8
    80001ec0:	00f50533          	add	a0,a0,a5
        })
    80001ec4:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001ec8:	00090463          	beqz	s2,80001ed0 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>
    80001ecc:	040a1663          	bnez	s4,80001f18 <_ZN3TCBC1EPFvPvES0_mbb+0xd4>
}
    80001ed0:	03813083          	ld	ra,56(sp)
    80001ed4:	03013403          	ld	s0,48(sp)
    80001ed8:	02813483          	ld	s1,40(sp)
    80001edc:	02013903          	ld	s2,32(sp)
    80001ee0:	01813983          	ld	s3,24(sp)
    80001ee4:	01013a03          	ld	s4,16(sp)
    80001ee8:	00813a83          	ld	s5,8(sp)
    80001eec:	04010113          	addi	sp,sp,64
    80001ef0:	00008067          	ret
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001ef4:	00000513          	li	a0,0
    80001ef8:	f9dff06f          	j	80001e94 <_ZN3TCBC1EPFvPvES0_mbb+0x50>
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001efc:	00000797          	auipc	a5,0x0
    80001f00:	e9078793          	addi	a5,a5,-368 # 80001d8c <_ZN3TCB13threadWrapperEv>
    80001f04:	fb1ff06f          	j	80001eb4 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    80001f08:	00000793          	li	a5,0
    80001f0c:	fa9ff06f          	j	80001eb4 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f10:	00000513          	li	a0,0
    80001f14:	fb1ff06f          	j	80001ec4 <_ZN3TCBC1EPFvPvES0_mbb+0x80>
    if (body != nullptr && ready) Scheduler::put(this);
    80001f18:	00048513          	mv	a0,s1
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	c64080e7          	jalr	-924(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
}
    80001f24:	fadff06f          	j	80001ed0 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>

0000000080001f28 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001f28:	fd010113          	addi	sp,sp,-48
    80001f2c:	02113423          	sd	ra,40(sp)
    80001f30:	02813023          	sd	s0,32(sp)
    80001f34:	00913c23          	sd	s1,24(sp)
    80001f38:	01213823          	sd	s2,16(sp)
    80001f3c:	01313423          	sd	s3,8(sp)
    80001f40:	03010413          	addi	s0,sp,48
    80001f44:	00050913          	mv	s2,a0
    80001f48:	00058993          	mv	s3,a1

    ~TCB() { MemoryAllocator::free(stack); }

    void* operator new(size_t size) {
        return MemoryAllocator::allocate(size);
    80001f4c:	03800513          	li	a0,56
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	71c080e7          	jalr	1820(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
    80001f58:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1, 0);
    80001f5c:	00000793          	li	a5,0
    80001f60:	00100713          	li	a4,1
    80001f64:	00200693          	li	a3,2
    80001f68:	00098613          	mv	a2,s3
    80001f6c:	00090593          	mv	a1,s2
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	ed4080e7          	jalr	-300(ra) # 80001e44 <_ZN3TCBC1EPFvPvES0_mbb>
    80001f78:	0200006f          	j	80001f98 <_ZN3TCB9createTCBEPFvPvES0_+0x70>
    80001f7c:	00050913          	mv	s2,a0
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    80001f80:	00048513          	mv	a0,s1
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	774080e7          	jalr	1908(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
    80001f8c:	00090513          	mv	a0,s2
    80001f90:	00007097          	auipc	ra,0x7
    80001f94:	fa8080e7          	jalr	-88(ra) # 80008f38 <_Unwind_Resume>
}
    80001f98:	00048513          	mv	a0,s1
    80001f9c:	02813083          	ld	ra,40(sp)
    80001fa0:	02013403          	ld	s0,32(sp)
    80001fa4:	01813483          	ld	s1,24(sp)
    80001fa8:	01013903          	ld	s2,16(sp)
    80001fac:	00813983          	ld	s3,8(sp)
    80001fb0:	03010113          	addi	sp,sp,48
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
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
    80001fe4:	68c080e7          	jalr	1676(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
    80001fe8:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0, 0);
    80001fec:	00000793          	li	a5,0
    80001ff0:	00000713          	li	a4,0
    80001ff4:	00200693          	li	a3,2
    80001ff8:	00098613          	mv	a2,s3
    80001ffc:	00090593          	mv	a1,s2
    80002000:	00000097          	auipc	ra,0x0
    80002004:	e44080e7          	jalr	-444(ra) # 80001e44 <_ZN3TCBC1EPFvPvES0_mbb>
    80002008:	0200006f          	j	80002028 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x70>
    8000200c:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    80002010:	00048513          	mv	a0,s1
    80002014:	00000097          	auipc	ra,0x0
    80002018:	6e4080e7          	jalr	1764(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
    8000201c:	00090513          	mv	a0,s2
    80002020:	00007097          	auipc	ra,0x7
    80002024:	f18080e7          	jalr	-232(ra) # 80008f38 <_Unwind_Resume>
}
    80002028:	00048513          	mv	a0,s1
    8000202c:	02813083          	ld	ra,40(sp)
    80002030:	02013403          	ld	s0,32(sp)
    80002034:	01813483          	ld	s1,24(sp)
    80002038:	01013903          	ld	s2,16(sp)
    8000203c:	00813983          	ld	s3,8(sp)
    80002040:	03010113          	addi	sp,sp,48
    80002044:	00008067          	ret

0000000080002048 <_ZN3TCB19createSupervisorTCBEPFvPvES0_>:
TCB *TCB::createSupervisorTCB(TCB::Body body, void *args) {
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
    80002074:	5fc080e7          	jalr	1532(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
    80002078:	00050493          	mv	s1,a0
    (body, args,DEFAULT_TIME_SLICE, true, true);
    8000207c:	00100793          	li	a5,1
    80002080:	00100713          	li	a4,1
    80002084:	00200693          	li	a3,2
    80002088:	00098613          	mv	a2,s3
    8000208c:	00090593          	mv	a1,s2
    80002090:	00000097          	auipc	ra,0x0
    80002094:	db4080e7          	jalr	-588(ra) # 80001e44 <_ZN3TCBC1EPFvPvES0_mbb>
    80002098:	0200006f          	j	800020b8 <_ZN3TCB19createSupervisorTCBEPFvPvES0_+0x70>
    8000209c:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    800020a0:	00048513          	mv	a0,s1
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	654080e7          	jalr	1620(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
    800020ac:	00090513          	mv	a0,s2
    800020b0:	00007097          	auipc	ra,0x7
    800020b4:	e88080e7          	jalr	-376(ra) # 80008f38 <_Unwind_Resume>
}
    800020b8:	00048513          	mv	a0,s1
    800020bc:	02813083          	ld	ra,40(sp)
    800020c0:	02013403          	ld	s0,32(sp)
    800020c4:	01813483          	ld	s1,24(sp)
    800020c8:	01013903          	ld	s2,16(sp)
    800020cc:	00813983          	ld	s3,8(sp)
    800020d0:	03010113          	addi	sp,sp,48
    800020d4:	00008067          	ret

00000000800020d8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800020d8:	fe010113          	addi	sp,sp,-32
    800020dc:	00113c23          	sd	ra,24(sp)
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800020ec:	00006497          	auipc	s1,0x6
    800020f0:	d3c4b483          	ld	s1,-708(s1) # 80007e28 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800020f4:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800020f8:	00079663          	bnez	a5,80002104 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    800020fc:	0194c783          	lbu	a5,25(s1)
    80002100:	02078c63          	beqz	a5,80002138 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002104:	00001097          	auipc	ra,0x1
    80002108:	a14080e7          	jalr	-1516(ra) # 80002b18 <_ZN9Scheduler3getEv>
    8000210c:	00006797          	auipc	a5,0x6
    80002110:	d0a7be23          	sd	a0,-740(a5) # 80007e28 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002114:	02850593          	addi	a1,a0,40 # 8028 <_entry-0x7fff7fd8>
    80002118:	02848513          	addi	a0,s1,40
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	194080e7          	jalr	404(ra) # 800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002124:	01813083          	ld	ra,24(sp)
    80002128:	01013403          	ld	s0,16(sp)
    8000212c:	00813483          	ld	s1,8(sp)
    80002130:	02010113          	addi	sp,sp,32
    80002134:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002138:	00048513          	mv	a0,s1
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	a44080e7          	jalr	-1468(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
    80002144:	fc1ff06f          	j	80002104 <_ZN3TCB8dispatchEv+0x2c>

0000000080002148 <_Z16threadRunWrapperPv>:
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) thread;
    t->run();
    80002158:	00053783          	ld	a5,0(a0)
    8000215c:	0107b783          	ld	a5,16(a5)
    80002160:	000780e7          	jalr	a5
}
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00813423          	sd	s0,8(sp)
    8000217c:	01010413          	addi	s0,sp,16
    80002180:	00813403          	ld	s0,8(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret

000000008000218c <_ZN6ThreadD0Ev>:
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00113423          	sd	ra,8(sp)
    80002194:	00813023          	sd	s0,0(sp)
    80002198:	01010413          	addi	s0,sp,16
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	b00080e7          	jalr	-1280(ra) # 80001c9c <_ZdlPv>
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	00005797          	auipc	a5,0x5
    800021c8:	31c78793          	addi	a5,a5,796 # 800074e0 <_ZTV9Semaphore+0x10>
    800021cc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800021d0:	00853503          	ld	a0,8(a0)
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	e80080e7          	jalr	-384(ra) # 80001054 <sem_close>
}
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	02010413          	addi	s0,sp,32
    80002200:	00050493          	mv	s1,a0
}
    80002204:	00000097          	auipc	ra,0x0
    80002208:	fb0080e7          	jalr	-80(ra) # 800021b4 <_ZN9SemaphoreD1Ev>
    8000220c:	00048513          	mv	a0,s1
    80002210:	00000097          	auipc	ra,0x0
    80002214:	a8c080e7          	jalr	-1396(ra) # 80001c9c <_ZdlPv>
    80002218:	01813083          	ld	ra,24(sp)
    8000221c:	01013403          	ld	s0,16(sp)
    80002220:	00813483          	ld	s1,8(sp)
    80002224:	02010113          	addi	sp,sp,32
    80002228:	00008067          	ret

000000008000222c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00113423          	sd	ra,8(sp)
    80002234:	00813023          	sd	s0,0(sp)
    80002238:	01010413          	addi	s0,sp,16
    8000223c:	00005797          	auipc	a5,0x5
    80002240:	27c78793          	addi	a5,a5,636 # 800074b8 <_ZTV6Thread+0x10>
    80002244:	00f53023          	sd	a5,0(a0)
    thread_create_deactivated(&myHandle, body, arg);
    80002248:	00850513          	addi	a0,a0,8
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	df0080e7          	jalr	-528(ra) # 8000103c <thread_create_deactivated>
}
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <_ZN6Thread5startEv>:
int Thread::start() {
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00113423          	sd	ra,8(sp)
    8000226c:	00813023          	sd	s0,0(sp)
    80002270:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,&threadRunWrapper, this);
    80002274:	00050613          	mv	a2,a0
    80002278:	00000597          	auipc	a1,0x0
    8000227c:	ed058593          	addi	a1,a1,-304 # 80002148 <_Z16threadRunWrapperPv>
    80002280:	00850513          	addi	a0,a0,8
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	d94080e7          	jalr	-620(ra) # 80001018 <thread_create>
}
    8000228c:	00000513          	li	a0,0
    80002290:	00813083          	ld	ra,8(sp)
    80002294:	00013403          	ld	s0,0(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret

00000000800022a0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00113423          	sd	ra,8(sp)
    800022a8:	00813023          	sd	s0,0(sp)
    800022ac:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	d80080e7          	jalr	-640(ra) # 80001030 <thread_dispatch>
}
    800022b8:	00813083          	ld	ra,8(sp)
    800022bc:	00013403          	ld	s0,0(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00113423          	sd	ra,8(sp)
    800022d0:	00813023          	sd	s0,0(sp)
    800022d4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	da0080e7          	jalr	-608(ra) # 80001078 <time_sleep>
}
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN6ThreadC1Ev>:
Thread::Thread() {}
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00813423          	sd	s0,8(sp)
    800022f8:	01010413          	addi	s0,sp,16
    800022fc:	00005797          	auipc	a5,0x5
    80002300:	1bc78793          	addi	a5,a5,444 # 800074b8 <_ZTV6Thread+0x10>
    80002304:	00f53023          	sd	a5,0(a0)
    80002308:	00813403          	ld	s0,8(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	00005797          	auipc	a5,0x5
    80002328:	1bc78793          	addi	a5,a5,444 # 800074e0 <_ZTV9Semaphore+0x10>
    8000232c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002330:	00850513          	addi	a0,a0,8
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	d14080e7          	jalr	-748(ra) # 80001048 <sem_open>
}
    8000233c:	00813083          	ld	ra,8(sp)
    80002340:	00013403          	ld	s0,0(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	00813023          	sd	s0,0(sp)
    80002358:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000235c:	00853503          	ld	a0,8(a0)
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	d00080e7          	jalr	-768(ra) # 80001060 <sem_wait>
}
    80002368:	00813083          	ld	ra,8(sp)
    8000236c:	00013403          	ld	s0,0(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00113423          	sd	ra,8(sp)
    80002380:	00813023          	sd	s0,0(sp)
    80002384:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002388:	00853503          	ld	a0,8(a0)
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	ce0080e7          	jalr	-800(ra) # 8000106c <sem_signal>
}
    80002394:	00813083          	ld	ra,8(sp)
    80002398:	00013403          	ld	s0,0(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_ZN14PeriodicThreadC1Em>:


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    800023a4:	fe010113          	addi	sp,sp,-32
    800023a8:	00113c23          	sd	ra,24(sp)
    800023ac:	00813823          	sd	s0,16(sp)
    800023b0:	00913423          	sd	s1,8(sp)
    800023b4:	01213023          	sd	s2,0(sp)
    800023b8:	02010413          	addi	s0,sp,32
    800023bc:	00050493          	mv	s1,a0
    800023c0:	00058913          	mv	s2,a1
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	f2c080e7          	jalr	-212(ra) # 800022f0 <_ZN6ThreadC1Ev>
    800023cc:	00005797          	auipc	a5,0x5
    800023d0:	0bc78793          	addi	a5,a5,188 # 80007488 <_ZTV14PeriodicThread+0x10>
    800023d4:	00f4b023          	sd	a5,0(s1)
    800023d8:	0324b423          	sd	s2,40(s1)
    800023dc:	01813083          	ld	ra,24(sp)
    800023e0:	01013403          	ld	s0,16(sp)
    800023e4:	00813483          	ld	s1,8(sp)
    800023e8:	00013903          	ld	s2,0(sp)
    800023ec:	02010113          	addi	sp,sp,32
    800023f0:	00008067          	ret

00000000800023f4 <_ZN7Console4getcEv>:


//CONSOLE

char Console::getc() {
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    return getc();
    80002404:	00000097          	auipc	ra,0x0
    80002408:	ff0080e7          	jalr	-16(ra) # 800023f4 <_ZN7Console4getcEv>
}
    8000240c:	00813083          	ld	ra,8(sp)
    80002410:	00013403          	ld	s0,0(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00113423          	sd	ra,8(sp)
    80002424:	00813023          	sd	s0,0(sp)
    80002428:	01010413          	addi	s0,sp,16
    putc(c);
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	ff0080e7          	jalr	-16(ra) # 8000241c <_ZN7Console4putcEc>
}
    80002434:	00813083          	ld	ra,8(sp)
    80002438:	00013403          	ld	s0,0(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    80002450:	00813403          	ld	s0,8(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_ZN14PeriodicThread18periodicActivationEv>:
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00813423          	sd	s0,8(sp)
    80002464:	01010413          	addi	s0,sp,16
    80002468:	00813403          	ld	s0,8(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00813423          	sd	s0,8(sp)
    8000247c:	01010413          	addi	s0,sp,16
    80002480:	00005797          	auipc	a5,0x5
    80002484:	00878793          	addi	a5,a5,8 # 80007488 <_ZTV14PeriodicThread+0x10>
    80002488:	00f53023          	sd	a5,0(a0)
    8000248c:	00813403          	ld	s0,8(sp)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <_ZN14PeriodicThreadD0Ev>:
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	00813023          	sd	s0,0(sp)
    800024a4:	01010413          	addi	s0,sp,16
    800024a8:	00005797          	auipc	a5,0x5
    800024ac:	fe078793          	addi	a5,a5,-32 # 80007488 <_ZTV14PeriodicThread+0x10>
    800024b0:	00f53023          	sd	a5,0(a0)
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	7e8080e7          	jalr	2024(ra) # 80001c9c <_ZdlPv>
    800024bc:	00813083          	ld	ra,8(sp)
    800024c0:	00013403          	ld	s0,0(sp)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret

00000000800024cc <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    800024cc:	ff010113          	addi	sp,sp,-16
    800024d0:	00813423          	sd	s0,8(sp)
    800024d4:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    800024d8:	00005797          	auipc	a5,0x5
    800024dc:	0507b783          	ld	a5,80(a5) # 80007528 <_GLOBAL_OFFSET_TABLE_+0x20>
    800024e0:	0007b783          	ld	a5,0(a5)
    800024e4:	00006697          	auipc	a3,0x6
    800024e8:	95468693          	addi	a3,a3,-1708 # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    800024ec:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    800024f0:	00005717          	auipc	a4,0x5
    800024f4:	06873703          	ld	a4,104(a4) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x50>
    800024f8:	00073703          	ld	a4,0(a4)
    800024fc:	40f70733          	sub	a4,a4,a5
    80002500:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80002504:	0006b783          	ld	a5,0(a3)
    80002508:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    8000250c:	0007b823          	sd	zero,16(a5)
}
    80002510:	00813403          	ld	s0,8(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret

000000008000251c <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    8000251c:	ff010113          	addi	sp,sp,-16
    80002520:	00813423          	sd	s0,8(sp)
    80002524:	01010413          	addi	s0,sp,16
    80002528:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    8000252c:	00006517          	auipc	a0,0x6
    80002530:	90c53503          	ld	a0,-1780(a0) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80002534:	02050063          	beqz	a0,80002554 <_ZN15MemoryAllocator8firstFitEm+0x38>
    80002538:	01053703          	ld	a4,16(a0)
    8000253c:	00070c63          	beqz	a4,80002554 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80002540:	00860793          	addi	a5,a2,8
    80002544:	00053683          	ld	a3,0(a0)
    80002548:	00f6fe63          	bgeu	a3,a5,80002564 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    8000254c:	00070513          	mv	a0,a4
    80002550:	fe5ff06f          	j	80002534 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80002554:	00050863          	beqz	a0,80002564 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80002558:	00860613          	addi	a2,a2,8
    8000255c:	00053783          	ld	a5,0(a0)
    80002560:	00c7e863          	bltu	a5,a2,80002570 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80002564:	00813403          	ld	s0,8(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret
    return nullptr;
    80002570:	00000513          	li	a0,0
    80002574:	ff1ff06f          	j	80002564 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080002578 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00813423          	sd	s0,8(sp)
    80002580:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80002584:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80002588:	03f57793          	andi	a5,a0,63
    8000258c:	00078863          	beqz	a5,8000259c <_ZN15MemoryAllocator8calcSizeEm+0x24>
    80002590:	04000713          	li	a4,64
    80002594:	40f707b3          	sub	a5,a4,a5
    80002598:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    8000259c:	00813403          	ld	s0,8(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    800025a8:	fe010113          	addi	sp,sp,-32
    800025ac:	00113c23          	sd	ra,24(sp)
    800025b0:	00813823          	sd	s0,16(sp)
    800025b4:	00913423          	sd	s1,8(sp)
    800025b8:	02010413          	addi	s0,sp,32
    800025bc:	00050493          	mv	s1,a0
    if (node) {
    800025c0:	04050c63          	beqz	a0,80002618 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    800025c4:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	fb0080e7          	jalr	-80(ra) # 80002578 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    800025d0:	0004b783          	ld	a5,0(s1)
    800025d4:	40a787b3          	sub	a5,a5,a0
    800025d8:	03f00713          	li	a4,63
    800025dc:	04f77e63          	bgeu	a4,a5,80002638 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    800025e0:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    800025e4:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    800025e8:	0084b783          	ld	a5,8(s1)
    800025ec:	04078063          	beqz	a5,8000262c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    800025f0:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    800025f4:	0104b783          	ld	a5,16(s1)
    800025f8:	00078463          	beqz	a5,80002600 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    800025fc:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80002600:	0104b783          	ld	a5,16(s1)
    80002604:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80002608:	0084b783          	ld	a5,8(s1)
    8000260c:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80002610:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80002614:	00848513          	addi	a0,s1,8
}
    80002618:	01813083          	ld	ra,24(sp)
    8000261c:	01013403          	ld	s0,16(sp)
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	02010113          	addi	sp,sp,32
    80002628:	00008067          	ret
            else fMemHead = newNode;
    8000262c:	00006797          	auipc	a5,0x6
    80002630:	80e7b623          	sd	a4,-2036(a5) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    80002634:	fc1ff06f          	j	800025f4 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80002638:	0084b783          	ld	a5,8(s1)
    8000263c:	02078063          	beqz	a5,8000265c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80002640:	0104b703          	ld	a4,16(s1)
    80002644:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80002648:	0104b783          	ld	a5,16(s1)
    8000264c:	fc0782e3          	beqz	a5,80002610 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80002650:	0084b703          	ld	a4,8(s1)
    80002654:	00e7b423          	sd	a4,8(a5)
    80002658:	fb9ff06f          	j	80002610 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    8000265c:	0104b783          	ld	a5,16(s1)
    80002660:	00005717          	auipc	a4,0x5
    80002664:	7cf73c23          	sd	a5,2008(a4) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    80002668:	fe1ff06f          	j	80002648 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

000000008000266c <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    8000266c:	fe010113          	addi	sp,sp,-32
    80002670:	00113c23          	sd	ra,24(sp)
    80002674:	00813823          	sd	s0,16(sp)
    80002678:	00913423          	sd	s1,8(sp)
    8000267c:	02010413          	addi	s0,sp,32
    80002680:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80002684:	00000097          	auipc	ra,0x0
    80002688:	e98080e7          	jalr	-360(ra) # 8000251c <_ZN15MemoryAllocator8firstFitEm>
    8000268c:	00048593          	mv	a1,s1
    80002690:	00000097          	auipc	ra,0x0
    80002694:	f18080e7          	jalr	-232(ra) # 800025a8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    80002698:	01813083          	ld	ra,24(sp)
    8000269c:	01013403          	ld	s0,16(sp)
    800026a0:	00813483          	ld	s1,8(sp)
    800026a4:	02010113          	addi	sp,sp,32
    800026a8:	00008067          	ret

00000000800026ac <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00813423          	sd	s0,8(sp)
    800026b4:	01010413          	addi	s0,sp,16
    if(!node) return;
    800026b8:	02050a63          	beqz	a0,800026ec <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    800026bc:	01053783          	ld	a5,16(a0)
    800026c0:	02078663          	beqz	a5,800026ec <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    800026c4:	00053703          	ld	a4,0(a0)
    800026c8:	00e506b3          	add	a3,a0,a4
    800026cc:	02f69063          	bne	a3,a5,800026ec <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    800026d0:	0007b683          	ld	a3,0(a5)
    800026d4:	00d70733          	add	a4,a4,a3
    800026d8:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    800026dc:	0107b783          	ld	a5,16(a5)
    800026e0:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    800026e4:	00078463          	beqz	a5,800026ec <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    800026e8:	00a7b423          	sd	a0,8(a5)
}
    800026ec:	00813403          	ld	s0,8(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret

00000000800026f8 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    800026f8:	fe010113          	addi	sp,sp,-32
    800026fc:	00113c23          	sd	ra,24(sp)
    80002700:	00813823          	sd	s0,16(sp)
    80002704:	00913423          	sd	s1,8(sp)
    80002708:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    8000270c:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    80002710:	00005717          	auipc	a4,0x5
    80002714:	72873703          	ld	a4,1832(a4) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    80002718:	02070063          	beqz	a4,80002738 <_ZN15MemoryAllocator4freeEPv+0x40>
    8000271c:	02a77263          	bgeu	a4,a0,80002740 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80002720:	00070793          	mv	a5,a4
    80002724:	00078493          	mv	s1,a5
    80002728:	0107b783          	ld	a5,16(a5)
    8000272c:	00078c63          	beqz	a5,80002744 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002730:	fea7eae3          	bltu	a5,a0,80002724 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80002734:	0100006f          	j	80002744 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80002738:	00070493          	mv	s1,a4
    8000273c:	0080006f          	j	80002744 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002740:	00000493          	li	s1,0
    newNode->prev = curr;
    80002744:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80002748:	04048263          	beqz	s1,8000278c <_ZN15MemoryAllocator4freeEPv+0x94>
    8000274c:	0104b783          	ld	a5,16(s1)
    80002750:	00f53823          	sd	a5,16(a0)
    80002754:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80002758:	01053783          	ld	a5,16(a0)
    8000275c:	00078463          	beqz	a5,80002764 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80002760:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80002764:	00000097          	auipc	ra,0x0
    80002768:	f48080e7          	jalr	-184(ra) # 800026ac <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    8000276c:	00048513          	mv	a0,s1
    80002770:	00000097          	auipc	ra,0x0
    80002774:	f3c080e7          	jalr	-196(ra) # 800026ac <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80002778:	01813083          	ld	ra,24(sp)
    8000277c:	01013403          	ld	s0,16(sp)
    80002780:	00813483          	ld	s1,8(sp)
    80002784:	02010113          	addi	sp,sp,32
    80002788:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    8000278c:	00e53823          	sd	a4,16(a0)
    80002790:	00005797          	auipc	a5,0x5
    80002794:	6aa7b423          	sd	a0,1704(a5) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    80002798:	fc1ff06f          	j	80002758 <_ZN15MemoryAllocator4freeEPv+0x60>

000000008000279c <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00813423          	sd	s0,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800027a8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800027ac:	10200073          	sret
    800027b0:	00813403          	ld	s0,8(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_Z14__print_stringPKc>:

#include "../lib/hw.h"
#include "../h/uart.hpp"
#include "../h/__print.hpp"

void __print_string(char const *string) {
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00113c23          	sd	ra,24(sp)
    800027c4:	00813823          	sd	s0,16(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
    800027d0:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) Uart::txPut(*c);
    800027d4:	0004c503          	lbu	a0,0(s1)
    800027d8:	00050a63          	beqz	a0,800027ec <_Z14__print_stringPKc+0x30>
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	2a4080e7          	jalr	676(ra) # 80001a80 <_ZN4Uart5txPutEc>
    800027e4:	00148493          	addi	s1,s1,1
    800027e8:	fedff06f          	j	800027d4 <_Z14__print_stringPKc+0x18>
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret

0000000080002800 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80002800:	fc010113          	addi	sp,sp,-64
    80002804:	02113c23          	sd	ra,56(sp)
    80002808:	02813823          	sd	s0,48(sp)
    8000280c:	02913423          	sd	s1,40(sp)
    80002810:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80002814:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80002818:	00a00693          	li	a3,10
    8000281c:	02d57633          	remu	a2,a0,a3
    80002820:	00004717          	auipc	a4,0x4
    80002824:	96070713          	addi	a4,a4,-1696 # 80006180 <_ZZ14__print_uint64mE6digits>
    80002828:	00c70733          	add	a4,a4,a2
    8000282c:	00074703          	lbu	a4,0(a4)
    80002830:	fe040613          	addi	a2,s0,-32
    80002834:	009607b3          	add	a5,a2,s1
    80002838:	0014849b          	addiw	s1,s1,1
    8000283c:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80002840:	00050713          	mv	a4,a0
    80002844:	02d55533          	divu	a0,a0,a3
    80002848:	00900793          	li	a5,9
    8000284c:	fce7e6e3          	bltu	a5,a4,80002818 <_Z14__print_uint64m+0x18>
    while(--i >= 0) Uart::txPut(output[i]);
    80002850:	fff4849b          	addiw	s1,s1,-1
    80002854:	0004ce63          	bltz	s1,80002870 <_Z14__print_uint64m+0x70>
    80002858:	fe040793          	addi	a5,s0,-32
    8000285c:	009787b3          	add	a5,a5,s1
    80002860:	fe87c503          	lbu	a0,-24(a5)
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	21c080e7          	jalr	540(ra) # 80001a80 <_ZN4Uart5txPutEc>
    8000286c:	fe5ff06f          	j	80002850 <_Z14__print_uint64m+0x50>
}
    80002870:	03813083          	ld	ra,56(sp)
    80002874:	03013403          	ld	s0,48(sp)
    80002878:	02813483          	ld	s1,40(sp)
    8000287c:	04010113          	addi	sp,sp,64
    80002880:	00008067          	ret

0000000080002884 <_Z11__print_intx>:

void __print_int(long long int integer) {
    80002884:	fe010113          	addi	sp,sp,-32
    80002888:	00113c23          	sd	ra,24(sp)
    8000288c:	00813823          	sd	s0,16(sp)
    80002890:	00913423          	sd	s1,8(sp)
    80002894:	02010413          	addi	s0,sp,32
    80002898:	00050493          	mv	s1,a0
    if (integer < 0) Uart::txPut('-'), integer *= -1;
    8000289c:	02054263          	bltz	a0,800028c0 <_Z11__print_intx+0x3c>
    Uart::txPut(integer);
    800028a0:	0ff4f513          	andi	a0,s1,255
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	1dc080e7          	jalr	476(ra) # 80001a80 <_ZN4Uart5txPutEc>
}
    800028ac:	01813083          	ld	ra,24(sp)
    800028b0:	01013403          	ld	s0,16(sp)
    800028b4:	00813483          	ld	s1,8(sp)
    800028b8:	02010113          	addi	sp,sp,32
    800028bc:	00008067          	ret
    if (integer < 0) Uart::txPut('-'), integer *= -1;
    800028c0:	02d00513          	li	a0,45
    800028c4:	fffff097          	auipc	ra,0xfffff
    800028c8:	1bc080e7          	jalr	444(ra) # 80001a80 <_ZN4Uart5txPutEc>
    800028cc:	409004b3          	neg	s1,s1
    800028d0:	fd1ff06f          	j	800028a0 <_Z11__print_intx+0x1c>

00000000800028d4 <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    800028d4:	fe010113          	addi	sp,sp,-32
    800028d8:	00113c23          	sd	ra,24(sp)
    800028dc:	00813823          	sd	s0,16(sp)
    800028e0:	00913423          	sd	s1,8(sp)
    800028e4:	02010413          	addi	s0,sp,32
    800028e8:	00050493          	mv	s1,a0
        return MemoryAllocator::allocate(size);
    800028ec:	02000513          	li	a0,32
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	d7c080e7          	jalr	-644(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
        }
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    800028f8:	00053023          	sd	zero,0(a0)
    800028fc:	00053423          	sd	zero,8(a0)
    void operator delete[](void* ptr) {
        MemoryAllocator::free(ptr);
    }

private:
    Sem(unsigned init) : init(init), val(init) {}
    80002900:	00952823          	sw	s1,16(a0)
    80002904:	02049493          	slli	s1,s1,0x20
    80002908:	0204d493          	srli	s1,s1,0x20
    8000290c:	00953c23          	sd	s1,24(a0)
    return new Sem(init);
}
    80002910:	01813083          	ld	ra,24(sp)
    80002914:	01013403          	ld	s0,16(sp)
    80002918:	00813483          	ld	s1,8(sp)
    8000291c:	02010113          	addi	sp,sp,32
    80002920:	00008067          	ret

0000000080002924 <_ZN3SemD1Ev>:

Sem::~Sem() {
    80002924:	fe010113          	addi	sp,sp,-32
    80002928:	00113c23          	sd	ra,24(sp)
    8000292c:	00813823          	sd	s0,16(sp)
    80002930:	00913423          	sd	s1,8(sp)
    80002934:	01213023          	sd	s2,0(sp)
    80002938:	02010413          	addi	s0,sp,32
    8000293c:	00050493          	mv	s1,a0
    80002940:	0280006f          	j	80002968 <_ZN3SemD1Ev+0x44>
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
    80002944:	0004b423          	sd	zero,8(s1)
            MemoryAllocator::free(ptr);
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	db0080e7          	jalr	-592(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
    while (val < 0) {
        Scheduler::put(list.takeFirst());
    80002950:	00090513          	mv	a0,s2
    80002954:	00000097          	auipc	ra,0x0
    80002958:	22c080e7          	jalr	556(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
        val++;
    8000295c:	0184b783          	ld	a5,24(s1)
    80002960:	00178793          	addi	a5,a5,1
    80002964:	00f4bc23          	sd	a5,24(s1)
    while (val < 0) {
    80002968:	0184b783          	ld	a5,24(s1)
    8000296c:	0207d463          	bgez	a5,80002994 <_ZN3SemD1Ev+0x70>
        if (!head) return 0;
    80002970:	0004b503          	ld	a0,0(s1)
    80002974:	00050c63          	beqz	a0,8000298c <_ZN3SemD1Ev+0x68>
        T* ret = head->data;
    80002978:	00053903          	ld	s2,0(a0)
        head = head->next;
    8000297c:	00853783          	ld	a5,8(a0)
    80002980:	00f4b023          	sd	a5,0(s1)
        if (!head) tail = 0;
    80002984:	fc0792e3          	bnez	a5,80002948 <_ZN3SemD1Ev+0x24>
    80002988:	fbdff06f          	j	80002944 <_ZN3SemD1Ev+0x20>
        if (!head) return 0;
    8000298c:	00050913          	mv	s2,a0
    80002990:	fc1ff06f          	j	80002950 <_ZN3SemD1Ev+0x2c>
    }
}
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	00013903          	ld	s2,0(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret

00000000800029ac <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    //if (Scheduler::readyQueueEmpty()) return -1;
    if (--val < 0) {
    800029ac:	01853783          	ld	a5,24(a0)
    800029b0:	fff78793          	addi	a5,a5,-1
    800029b4:	00f53c23          	sd	a5,24(a0)
    800029b8:	0007c663          	bltz	a5,800029c4 <_ZN3Sem7semWaitEv+0x18>
        //list.printStatus();
        TCB::dispatch();
        //thread_dispatch();
    }
    return 0;
}
    800029bc:	00000513          	li	a0,0
    800029c0:	00008067          	ret
int Sem::semWait() {
    800029c4:	fe010113          	addi	sp,sp,-32
    800029c8:	00113c23          	sd	ra,24(sp)
    800029cc:	00813823          	sd	s0,16(sp)
    800029d0:	00913423          	sd	s1,8(sp)
    800029d4:	01213023          	sd	s2,0(sp)
    800029d8:	02010413          	addi	s0,sp,32
    800029dc:	00050493          	mv	s1,a0
        TCB *old = TCB::running;
    800029e0:	00005797          	auipc	a5,0x5
    800029e4:	b707b783          	ld	a5,-1168(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    800029e8:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool val) { blocked = val; }
    800029ec:	00100793          	li	a5,1
    800029f0:	00f90ca3          	sb	a5,25(s2)
            return MemoryAllocator::allocate(size);
    800029f4:	01000513          	li	a0,16
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	c74080e7          	jalr	-908(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002a00:	01253023          	sd	s2,0(a0)
    80002a04:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002a08:	0084b783          	ld	a5,8(s1)
    80002a0c:	02078863          	beqz	a5,80002a3c <_ZN3Sem7semWaitEv+0x90>
            tail->next = newNode;
    80002a10:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002a14:	00a4b423          	sd	a0,8(s1)
        TCB::dispatch();
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	6c0080e7          	jalr	1728(ra) # 800020d8 <_ZN3TCB8dispatchEv>
}
    80002a20:	00000513          	li	a0,0
    80002a24:	01813083          	ld	ra,24(sp)
    80002a28:	01013403          	ld	s0,16(sp)
    80002a2c:	00813483          	ld	s1,8(sp)
    80002a30:	00013903          	ld	s2,0(sp)
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002a3c:	00a4b423          	sd	a0,8(s1)
    80002a40:	00a4b023          	sd	a0,0(s1)
    80002a44:	fd5ff06f          	j	80002a18 <_ZN3Sem7semWaitEv+0x6c>

0000000080002a48 <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    80002a48:	01853703          	ld	a4,24(a0)
    80002a4c:	00170713          	addi	a4,a4,1
    80002a50:	00e53c23          	sd	a4,24(a0)
    80002a54:	00e05663          	blez	a4,80002a60 <_ZN3Sem9semSignalEv+0x18>
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
    80002a58:	00000513          	li	a0,0
    80002a5c:	00008067          	ret
int Sem::semSignal() {
    80002a60:	fe010113          	addi	sp,sp,-32
    80002a64:	00113c23          	sd	ra,24(sp)
    80002a68:	00813823          	sd	s0,16(sp)
    80002a6c:	00913423          	sd	s1,8(sp)
    80002a70:	02010413          	addi	s0,sp,32
    80002a74:	00050793          	mv	a5,a0
        if (!head) return 0;
    80002a78:	00053503          	ld	a0,0(a0)
    80002a7c:	04050663          	beqz	a0,80002ac8 <_ZN3Sem9semSignalEv+0x80>
        T* ret = head->data;
    80002a80:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002a84:	00853703          	ld	a4,8(a0)
    80002a88:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    80002a8c:	02070a63          	beqz	a4,80002ac0 <_ZN3Sem9semSignalEv+0x78>
            MemoryAllocator::free(ptr);
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	c68080e7          	jalr	-920(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
    80002a98:	00048ca3          	sb	zero,25(s1)
        Scheduler::put(ready);
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	0e0080e7          	jalr	224(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
    80002aa8:	00000513          	li	a0,0
    80002aac:	01813083          	ld	ra,24(sp)
    80002ab0:	01013403          	ld	s0,16(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	02010113          	addi	sp,sp,32
    80002abc:	00008067          	ret
        if (!head) tail = 0;
    80002ac0:	0007b423          	sd	zero,8(a5)
    80002ac4:	fcdff06f          	j	80002a90 <_ZN3Sem9semSignalEv+0x48>
        if (!head) return 0;
    80002ac8:	00050493          	mv	s1,a0
    80002acc:	fcdff06f          	j	80002a98 <_ZN3Sem9semSignalEv+0x50>

0000000080002ad0 <_Z41__static_initialization_and_destruction_0ii>:
    TCB* old = TCB::running;
    old->setBlocked(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    TCB::dispatch();
}
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00813423          	sd	s0,8(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    80002adc:	00100793          	li	a5,1
    80002ae0:	00f50863          	beq	a0,a5,80002af0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ae4:	00813403          	ld	s0,8(sp)
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret
    80002af0:	000107b7          	lui	a5,0x10
    80002af4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002af8:	fef596e3          	bne	a1,a5,80002ae4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002afc:	00005797          	auipc	a5,0x5
    80002b00:	34478793          	addi	a5,a5,836 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002b04:	0007b023          	sd	zero,0(a5)
    80002b08:	0007b423          	sd	zero,8(a5)
    80002b0c:	0007b823          	sd	zero,16(a5)
    80002b10:	0007bc23          	sd	zero,24(a5)
    80002b14:	fd1ff06f          	j	80002ae4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002b18 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002b18:	fe010113          	addi	sp,sp,-32
    80002b1c:	00113c23          	sd	ra,24(sp)
    80002b20:	00813823          	sd	s0,16(sp)
    80002b24:	00913423          	sd	s1,8(sp)
    80002b28:	02010413          	addi	s0,sp,32
        if (!head) return 0;
    80002b2c:	00005517          	auipc	a0,0x5
    80002b30:	31453503          	ld	a0,788(a0) # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002b34:	04050263          	beqz	a0,80002b78 <_ZN9Scheduler3getEv+0x60>
        T* ret = head->data;
    80002b38:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002b3c:	00853783          	ld	a5,8(a0)
    80002b40:	00005717          	auipc	a4,0x5
    80002b44:	30f73023          	sd	a5,768(a4) # 80007e40 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80002b48:	02078263          	beqz	a5,80002b6c <_ZN9Scheduler3getEv+0x54>
            MemoryAllocator::free(ptr);
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	bac080e7          	jalr	-1108(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
}
    80002b54:	00048513          	mv	a0,s1
    80002b58:	01813083          	ld	ra,24(sp)
    80002b5c:	01013403          	ld	s0,16(sp)
    80002b60:	00813483          	ld	s1,8(sp)
    80002b64:	02010113          	addi	sp,sp,32
    80002b68:	00008067          	ret
        if (!head) tail = 0;
    80002b6c:	00005797          	auipc	a5,0x5
    80002b70:	2c07be23          	sd	zero,732(a5) # 80007e48 <_ZN9Scheduler10readyQueueE+0x8>
    80002b74:	fd9ff06f          	j	80002b4c <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80002b78:	00050493          	mv	s1,a0
    return ret;
    80002b7c:	fd9ff06f          	j	80002b54 <_ZN9Scheduler3getEv+0x3c>

0000000080002b80 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002b80:	fe010113          	addi	sp,sp,-32
    80002b84:	00113c23          	sd	ra,24(sp)
    80002b88:	00813823          	sd	s0,16(sp)
    80002b8c:	00913423          	sd	s1,8(sp)
    80002b90:	02010413          	addi	s0,sp,32
    80002b94:	00050493          	mv	s1,a0
            return MemoryAllocator::allocate(size);
    80002b98:	01000513          	li	a0,16
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	ad0080e7          	jalr	-1328(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002ba4:	00953023          	sd	s1,0(a0)
    80002ba8:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002bac:	00005797          	auipc	a5,0x5
    80002bb0:	29c7b783          	ld	a5,668(a5) # 80007e48 <_ZN9Scheduler10readyQueueE+0x8>
    80002bb4:	02078263          	beqz	a5,80002bd8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80002bb8:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002bbc:	00005797          	auipc	a5,0x5
    80002bc0:	28a7b623          	sd	a0,652(a5) # 80007e48 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002bc4:	01813083          	ld	ra,24(sp)
    80002bc8:	01013403          	ld	s0,16(sp)
    80002bcc:	00813483          	ld	s1,8(sp)
    80002bd0:	02010113          	addi	sp,sp,32
    80002bd4:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002bd8:	00005797          	auipc	a5,0x5
    80002bdc:	26878793          	addi	a5,a5,616 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002be0:	00a7b423          	sd	a0,8(a5)
    80002be4:	00a7b023          	sd	a0,0(a5)
    80002be8:	fddff06f          	j	80002bc4 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002bec <_ZN9Scheduler14timerInterruptEv>:

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002bec:	00005797          	auipc	a5,0x5
    80002bf0:	2647b783          	ld	a5,612(a5) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002bf4:	0a078863          	beqz	a5,80002ca4 <_ZN9Scheduler14timerInterruptEv+0xb8>
void Scheduler::timerInterrupt() {
    80002bf8:	fe010113          	addi	sp,sp,-32
    80002bfc:	00113c23          	sd	ra,24(sp)
    80002c00:	00813823          	sd	s0,16(sp)
    80002c04:	00913423          	sd	s1,8(sp)
    80002c08:	02010413          	addi	s0,sp,32
        return head->data;
    80002c0c:	0007b483          	ld	s1,0(a5)
    if (!first) return;
    80002c10:	08048063          	beqz	s1,80002c90 <_ZN9Scheduler14timerInterruptEv+0xa4>
    first->time--;
    80002c14:	0004b783          	ld	a5,0(s1)
    80002c18:	fff78793          	addi	a5,a5,-1
    80002c1c:	00f4b023          	sd	a5,0(s1)
    80002c20:	0440006f          	j	80002c64 <_ZN9Scheduler14timerInterruptEv+0x78>
        if (!head) tail = 0;
    80002c24:	00005797          	auipc	a5,0x5
    80002c28:	2207ba23          	sd	zero,564(a5) # 80007e58 <_ZN9Scheduler10sleepQueueE+0x8>
            MemoryAllocator::free(ptr);
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	acc080e7          	jalr	-1332(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
        first->thread->setBlocked(false);
    80002c34:	0084b783          	ld	a5,8(s1)
    80002c38:	00078ca3          	sb	zero,25(a5)
        Scheduler::put(first->thread);
    80002c3c:	0084b503          	ld	a0,8(s1)
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	f40080e7          	jalr	-192(ra) # 80002b80 <_ZN9Scheduler3putEP3TCB>
        void* operator new[](size_t size) {
            return MemoryAllocator::allocate(size);
        }

        void operator delete(void* ptr) {
            MemoryAllocator::free(ptr);
    80002c48:	00048513          	mv	a0,s1
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	aac080e7          	jalr	-1364(ra) # 800026f8 <_ZN15MemoryAllocator4freeEPv>
        if(!head) return 0;
    80002c54:	00005797          	auipc	a5,0x5
    80002c58:	1fc7b783          	ld	a5,508(a5) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002c5c:	02078a63          	beqz	a5,80002c90 <_ZN9Scheduler14timerInterruptEv+0xa4>
        return head->data;
    80002c60:	0007b483          	ld	s1,0(a5)
    while(first) {
    80002c64:	02048663          	beqz	s1,80002c90 <_ZN9Scheduler14timerInterruptEv+0xa4>
        if (first->time != 0) break;
    80002c68:	0004b783          	ld	a5,0(s1)
    80002c6c:	02079263          	bnez	a5,80002c90 <_ZN9Scheduler14timerInterruptEv+0xa4>
        if (!head) return 0;
    80002c70:	00005517          	auipc	a0,0x5
    80002c74:	1e053503          	ld	a0,480(a0) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002c78:	fa050ee3          	beqz	a0,80002c34 <_ZN9Scheduler14timerInterruptEv+0x48>
        head = head->next;
    80002c7c:	00853783          	ld	a5,8(a0)
    80002c80:	00005717          	auipc	a4,0x5
    80002c84:	1cf73823          	sd	a5,464(a4) # 80007e50 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    80002c88:	fa0792e3          	bnez	a5,80002c2c <_ZN9Scheduler14timerInterruptEv+0x40>
    80002c8c:	f99ff06f          	j	80002c24 <_ZN9Scheduler14timerInterruptEv+0x38>
}
    80002c90:	01813083          	ld	ra,24(sp)
    80002c94:	01013403          	ld	s0,16(sp)
    80002c98:	00813483          	ld	s1,8(sp)
    80002c9c:	02010113          	addi	sp,sp,32
    80002ca0:	00008067          	ret
    80002ca4:	00008067          	ret

0000000080002ca8 <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    80002ca8:	fd010113          	addi	sp,sp,-48
    80002cac:	02113423          	sd	ra,40(sp)
    80002cb0:	02813023          	sd	s0,32(sp)
    80002cb4:	00913c23          	sd	s1,24(sp)
    80002cb8:	01213823          	sd	s2,16(sp)
    80002cbc:	01313423          	sd	s3,8(sp)
    80002cc0:	03010413          	addi	s0,sp,48
    80002cc4:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80002cc8:	00005797          	auipc	a5,0x5
    80002ccc:	8887b783          	ld	a5,-1912(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002cd0:	0007b983          	ld	s3,0(a5)
    80002cd4:	00100793          	li	a5,1
    80002cd8:	00f98ca3          	sb	a5,25(s3)
            return MemoryAllocator::allocate(size);
    80002cdc:	01000513          	li	a0,16
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	98c080e7          	jalr	-1652(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
    80002ce8:	00050493          	mv	s1,a0
        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    80002cec:	01253023          	sd	s2,0(a0)
    80002cf0:	01353423          	sd	s3,8(a0)
            return MemoryAllocator::allocate(size);
    80002cf4:	01000513          	li	a0,16
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	974080e7          	jalr	-1676(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002d00:	00953023          	sd	s1,0(a0)
    80002d04:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    80002d08:	00005797          	auipc	a5,0x5
    80002d0c:	1487b783          	ld	a5,328(a5) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002d10:	04078663          	beqz	a5,80002d5c <_ZN9Scheduler9timeSleepEm+0xb4>
        uint64 nodeTime = *(uint64*)data;
    80002d14:	0004b603          	ld	a2,0(s1)
        uint64 currTime = *(uint64*)(curr->data);
    80002d18:	0007b683          	ld	a3,0(a5)
    80002d1c:	0006b703          	ld	a4,0(a3)
        if (nodeTime < currTime) { *(uint64*)(curr->data) -= nodeTime; putFirst(data); return; }
    80002d20:	04e66863          	bltu	a2,a4,80002d70 <_ZN9Scheduler9timeSleepEm+0xc8>
        Node* curr = head, *prev = nullptr;
    80002d24:	00000613          	li	a2,0
        while (curr) {
    80002d28:	08078863          	beqz	a5,80002db8 <_ZN9Scheduler9timeSleepEm+0x110>
            if (*(uint64*)data >= *(uint64*)(curr->data)) {
    80002d2c:	0004b703          	ld	a4,0(s1)
    80002d30:	0007b683          	ld	a3,0(a5)
    80002d34:	0006b683          	ld	a3,0(a3)
    80002d38:	06d77c63          	bgeu	a4,a3,80002db0 <_ZN9Scheduler9timeSleepEm+0x108>
            curr = curr->next;
    80002d3c:	0087b683          	ld	a3,8(a5)
            *(uint64*)data -= *(uint64*)curr->data;
    80002d40:	0006b603          	ld	a2,0(a3)
    80002d44:	00063603          	ld	a2,0(a2)
    80002d48:	40c70733          	sub	a4,a4,a2
    80002d4c:	00e4b023          	sd	a4,0(s1)
            prev = curr;
    80002d50:	00078613          	mv	a2,a5
            curr = curr->next;
    80002d54:	00068793          	mv	a5,a3
        while (curr) {
    80002d58:	fd1ff06f          	j	80002d28 <_ZN9Scheduler9timeSleepEm+0x80>
        if (!head) { head = tail = newNode; return; }
    80002d5c:	00005797          	auipc	a5,0x5
    80002d60:	0e478793          	addi	a5,a5,228 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002d64:	00a7bc23          	sd	a0,24(a5)
    80002d68:	00a7b823          	sd	a0,16(a5)
    80002d6c:	0600006f          	j	80002dcc <_ZN9Scheduler9timeSleepEm+0x124>
        if (nodeTime < currTime) { *(uint64*)(curr->data) -= nodeTime; putFirst(data); return; }
    80002d70:	40c70733          	sub	a4,a4,a2
    80002d74:	00e6b023          	sd	a4,0(a3)
            return MemoryAllocator::allocate(size);
    80002d78:	01000513          	li	a0,16
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	8f0080e7          	jalr	-1808(ra) # 8000266c <_ZN15MemoryAllocator8allocateEm>
        Node *newNode = new Node(data, head);
    80002d84:	00005797          	auipc	a5,0x5
    80002d88:	0bc78793          	addi	a5,a5,188 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002d8c:	0107b703          	ld	a4,16(a5)
        Node(T *data, Node *next) : data(data), next(next) {}
    80002d90:	00953023          	sd	s1,0(a0)
    80002d94:	00e53423          	sd	a4,8(a0)
        head = newNode;
    80002d98:	00a7b823          	sd	a0,16(a5)
        if (!tail) tail = head;
    80002d9c:	0187b783          	ld	a5,24(a5)
    80002da0:	02079663          	bnez	a5,80002dcc <_ZN9Scheduler9timeSleepEm+0x124>
    80002da4:	00005797          	auipc	a5,0x5
    80002da8:	0aa7ba23          	sd	a0,180(a5) # 80007e58 <_ZN9Scheduler10sleepQueueE+0x8>
        if (nodeTime < currTime) { *(uint64*)(curr->data) -= nodeTime; putFirst(data); return; }
    80002dac:	0200006f          	j	80002dcc <_ZN9Scheduler9timeSleepEm+0x124>
                *(uint64*)data -= *(uint64*)curr->data;
    80002db0:	40d70733          	sub	a4,a4,a3
    80002db4:	00e4b023          	sd	a4,0(s1)
        if (curr) {
    80002db8:	04078263          	beqz	a5,80002dfc <_ZN9Scheduler9timeSleepEm+0x154>
            newNode->next = curr->next;
    80002dbc:	0087b703          	ld	a4,8(a5)
    80002dc0:	00e53423          	sd	a4,8(a0)
            curr->next = newNode;
    80002dc4:	00a7b423          	sd	a0,8(a5)
            if (!curr->next) tail = newNode;
    80002dc8:	02050463          	beqz	a0,80002df0 <_ZN9Scheduler9timeSleepEm+0x148>
    TCB::dispatch();
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	30c080e7          	jalr	780(ra) # 800020d8 <_ZN3TCB8dispatchEv>
}
    80002dd4:	02813083          	ld	ra,40(sp)
    80002dd8:	02013403          	ld	s0,32(sp)
    80002ddc:	01813483          	ld	s1,24(sp)
    80002de0:	01013903          	ld	s2,16(sp)
    80002de4:	00813983          	ld	s3,8(sp)
    80002de8:	03010113          	addi	sp,sp,48
    80002dec:	00008067          	ret
    80002df0:	00005797          	auipc	a5,0x5
    80002df4:	06a7b423          	sd	a0,104(a5) # 80007e58 <_ZN9Scheduler10sleepQueueE+0x8>
    80002df8:	fd5ff06f          	j	80002dcc <_ZN9Scheduler9timeSleepEm+0x124>
        else if (prev) {
    80002dfc:	00060a63          	beqz	a2,80002e10 <_ZN9Scheduler9timeSleepEm+0x168>
            prev->next = newNode;
    80002e00:	00a63423          	sd	a0,8(a2)
            tail = newNode;
    80002e04:	00005797          	auipc	a5,0x5
    80002e08:	04a7ba23          	sd	a0,84(a5) # 80007e58 <_ZN9Scheduler10sleepQueueE+0x8>
    80002e0c:	fc1ff06f          	j	80002dcc <_ZN9Scheduler9timeSleepEm+0x124>
        else head = tail = newNode;
    80002e10:	00005797          	auipc	a5,0x5
    80002e14:	03078793          	addi	a5,a5,48 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002e18:	00a7bc23          	sd	a0,24(a5)
    80002e1c:	00a7b823          	sd	a0,16(a5)
    80002e20:	fadff06f          	j	80002dcc <_ZN9Scheduler9timeSleepEm+0x124>

0000000080002e24 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80002e24:	ff010113          	addi	sp,sp,-16
    80002e28:	00113423          	sd	ra,8(sp)
    80002e2c:	00813023          	sd	s0,0(sp)
    80002e30:	01010413          	addi	s0,sp,16
    80002e34:	000105b7          	lui	a1,0x10
    80002e38:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002e3c:	00100513          	li	a0,1
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	c90080e7          	jalr	-880(ra) # 80002ad0 <_Z41__static_initialization_and_destruction_0ii>
    80002e48:	00813083          	ld	ra,8(sp)
    80002e4c:	00013403          	ld	s0,0(sp)
    80002e50:	01010113          	addi	sp,sp,16
    80002e54:	00008067          	ret

0000000080002e58 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002e58:	fe010113          	addi	sp,sp,-32
    80002e5c:	00113c23          	sd	ra,24(sp)
    80002e60:	00813823          	sd	s0,16(sp)
    80002e64:	00913423          	sd	s1,8(sp)
    80002e68:	02010413          	addi	s0,sp,32
    80002e6c:	00050493          	mv	s1,a0
    LOCK();
    80002e70:	00100613          	li	a2,1
    80002e74:	00000593          	li	a1,0
    80002e78:	00005517          	auipc	a0,0x5
    80002e7c:	fe850513          	addi	a0,a0,-24 # 80007e60 <lockPrint>
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	444080e7          	jalr	1092(ra) # 800012c4 <copy_and_swap>
    80002e88:	fe0514e3          	bnez	a0,80002e70 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002e8c:	0004c503          	lbu	a0,0(s1)
    80002e90:	00050a63          	beqz	a0,80002ea4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002e94:	ffffe097          	auipc	ra,0xffffe
    80002e98:	1fc080e7          	jalr	508(ra) # 80001090 <putc>
        string++;
    80002e9c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ea0:	fedff06f          	j	80002e8c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002ea4:	00000613          	li	a2,0
    80002ea8:	00100593          	li	a1,1
    80002eac:	00005517          	auipc	a0,0x5
    80002eb0:	fb450513          	addi	a0,a0,-76 # 80007e60 <lockPrint>
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	410080e7          	jalr	1040(ra) # 800012c4 <copy_and_swap>
    80002ebc:	fe0514e3          	bnez	a0,80002ea4 <_Z11printStringPKc+0x4c>
}
    80002ec0:	01813083          	ld	ra,24(sp)
    80002ec4:	01013403          	ld	s0,16(sp)
    80002ec8:	00813483          	ld	s1,8(sp)
    80002ecc:	02010113          	addi	sp,sp,32
    80002ed0:	00008067          	ret

0000000080002ed4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002ed4:	fd010113          	addi	sp,sp,-48
    80002ed8:	02113423          	sd	ra,40(sp)
    80002edc:	02813023          	sd	s0,32(sp)
    80002ee0:	00913c23          	sd	s1,24(sp)
    80002ee4:	01213823          	sd	s2,16(sp)
    80002ee8:	01313423          	sd	s3,8(sp)
    80002eec:	01413023          	sd	s4,0(sp)
    80002ef0:	03010413          	addi	s0,sp,48
    80002ef4:	00050993          	mv	s3,a0
    80002ef8:	00058a13          	mv	s4,a1
    LOCK();
    80002efc:	00100613          	li	a2,1
    80002f00:	00000593          	li	a1,0
    80002f04:	00005517          	auipc	a0,0x5
    80002f08:	f5c50513          	addi	a0,a0,-164 # 80007e60 <lockPrint>
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	3b8080e7          	jalr	952(ra) # 800012c4 <copy_and_swap>
    80002f14:	fe0514e3          	bnez	a0,80002efc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f18:	00000913          	li	s2,0
    80002f1c:	00090493          	mv	s1,s2
    80002f20:	0019091b          	addiw	s2,s2,1
    80002f24:	03495a63          	bge	s2,s4,80002f58 <_Z9getStringPci+0x84>
        cc = getc();
    80002f28:	ffffe097          	auipc	ra,0xffffe
    80002f2c:	15c080e7          	jalr	348(ra) # 80001084 <getc>
        if(cc < 1)
    80002f30:	02050463          	beqz	a0,80002f58 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002f34:	009984b3          	add	s1,s3,s1
    80002f38:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002f3c:	00a00793          	li	a5,10
    80002f40:	00f50a63          	beq	a0,a5,80002f54 <_Z9getStringPci+0x80>
    80002f44:	00d00793          	li	a5,13
    80002f48:	fcf51ae3          	bne	a0,a5,80002f1c <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002f4c:	00090493          	mv	s1,s2
    80002f50:	0080006f          	j	80002f58 <_Z9getStringPci+0x84>
    80002f54:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002f58:	009984b3          	add	s1,s3,s1
    80002f5c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002f60:	00000613          	li	a2,0
    80002f64:	00100593          	li	a1,1
    80002f68:	00005517          	auipc	a0,0x5
    80002f6c:	ef850513          	addi	a0,a0,-264 # 80007e60 <lockPrint>
    80002f70:	ffffe097          	auipc	ra,0xffffe
    80002f74:	354080e7          	jalr	852(ra) # 800012c4 <copy_and_swap>
    80002f78:	fe0514e3          	bnez	a0,80002f60 <_Z9getStringPci+0x8c>
    return buf;
}
    80002f7c:	00098513          	mv	a0,s3
    80002f80:	02813083          	ld	ra,40(sp)
    80002f84:	02013403          	ld	s0,32(sp)
    80002f88:	01813483          	ld	s1,24(sp)
    80002f8c:	01013903          	ld	s2,16(sp)
    80002f90:	00813983          	ld	s3,8(sp)
    80002f94:	00013a03          	ld	s4,0(sp)
    80002f98:	03010113          	addi	sp,sp,48
    80002f9c:	00008067          	ret

0000000080002fa0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00813423          	sd	s0,8(sp)
    80002fa8:	01010413          	addi	s0,sp,16
    80002fac:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002fb0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002fb4:	0006c603          	lbu	a2,0(a3)
    80002fb8:	fd06071b          	addiw	a4,a2,-48
    80002fbc:	0ff77713          	andi	a4,a4,255
    80002fc0:	00900793          	li	a5,9
    80002fc4:	02e7e063          	bltu	a5,a4,80002fe4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002fc8:	0025179b          	slliw	a5,a0,0x2
    80002fcc:	00a787bb          	addw	a5,a5,a0
    80002fd0:	0017979b          	slliw	a5,a5,0x1
    80002fd4:	00168693          	addi	a3,a3,1
    80002fd8:	00c787bb          	addw	a5,a5,a2
    80002fdc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002fe0:	fd5ff06f          	j	80002fb4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002fe4:	00813403          	ld	s0,8(sp)
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00008067          	ret

0000000080002ff0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002ff0:	fc010113          	addi	sp,sp,-64
    80002ff4:	02113c23          	sd	ra,56(sp)
    80002ff8:	02813823          	sd	s0,48(sp)
    80002ffc:	02913423          	sd	s1,40(sp)
    80003000:	03213023          	sd	s2,32(sp)
    80003004:	01313c23          	sd	s3,24(sp)
    80003008:	04010413          	addi	s0,sp,64
    8000300c:	00050493          	mv	s1,a0
    80003010:	00058913          	mv	s2,a1
    80003014:	00060993          	mv	s3,a2
    LOCK();
    80003018:	00100613          	li	a2,1
    8000301c:	00000593          	li	a1,0
    80003020:	00005517          	auipc	a0,0x5
    80003024:	e4050513          	addi	a0,a0,-448 # 80007e60 <lockPrint>
    80003028:	ffffe097          	auipc	ra,0xffffe
    8000302c:	29c080e7          	jalr	668(ra) # 800012c4 <copy_and_swap>
    80003030:	fe0514e3          	bnez	a0,80003018 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003034:	00098463          	beqz	s3,8000303c <_Z8printIntiii+0x4c>
    80003038:	0804c463          	bltz	s1,800030c0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000303c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003040:	00000593          	li	a1,0
    }

    i = 0;
    80003044:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003048:	0009079b          	sext.w	a5,s2
    8000304c:	0325773b          	remuw	a4,a0,s2
    80003050:	00048613          	mv	a2,s1
    80003054:	0014849b          	addiw	s1,s1,1
    80003058:	02071693          	slli	a3,a4,0x20
    8000305c:	0206d693          	srli	a3,a3,0x20
    80003060:	00004717          	auipc	a4,0x4
    80003064:	49070713          	addi	a4,a4,1168 # 800074f0 <digits>
    80003068:	00d70733          	add	a4,a4,a3
    8000306c:	00074683          	lbu	a3,0(a4)
    80003070:	fd040713          	addi	a4,s0,-48
    80003074:	00c70733          	add	a4,a4,a2
    80003078:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000307c:	0005071b          	sext.w	a4,a0
    80003080:	0325553b          	divuw	a0,a0,s2
    80003084:	fcf772e3          	bgeu	a4,a5,80003048 <_Z8printIntiii+0x58>
    if(neg)
    80003088:	00058c63          	beqz	a1,800030a0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000308c:	fd040793          	addi	a5,s0,-48
    80003090:	009784b3          	add	s1,a5,s1
    80003094:	02d00793          	li	a5,45
    80003098:	fef48823          	sb	a5,-16(s1)
    8000309c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800030a0:	fff4849b          	addiw	s1,s1,-1
    800030a4:	0204c463          	bltz	s1,800030cc <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800030a8:	fd040793          	addi	a5,s0,-48
    800030ac:	009787b3          	add	a5,a5,s1
    800030b0:	ff07c503          	lbu	a0,-16(a5)
    800030b4:	ffffe097          	auipc	ra,0xffffe
    800030b8:	fdc080e7          	jalr	-36(ra) # 80001090 <putc>
    800030bc:	fe5ff06f          	j	800030a0 <_Z8printIntiii+0xb0>
        x = -xx;
    800030c0:	4090053b          	negw	a0,s1
        neg = 1;
    800030c4:	00100593          	li	a1,1
        x = -xx;
    800030c8:	f7dff06f          	j	80003044 <_Z8printIntiii+0x54>

    UNLOCK();
    800030cc:	00000613          	li	a2,0
    800030d0:	00100593          	li	a1,1
    800030d4:	00005517          	auipc	a0,0x5
    800030d8:	d8c50513          	addi	a0,a0,-628 # 80007e60 <lockPrint>
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	1e8080e7          	jalr	488(ra) # 800012c4 <copy_and_swap>
    800030e4:	fe0514e3          	bnez	a0,800030cc <_Z8printIntiii+0xdc>
    800030e8:	03813083          	ld	ra,56(sp)
    800030ec:	03013403          	ld	s0,48(sp)
    800030f0:	02813483          	ld	s1,40(sp)
    800030f4:	02013903          	ld	s2,32(sp)
    800030f8:	01813983          	ld	s3,24(sp)
    800030fc:	04010113          	addi	sp,sp,64
    80003100:	00008067          	ret

0000000080003104 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003104:	fd010113          	addi	sp,sp,-48
    80003108:	02113423          	sd	ra,40(sp)
    8000310c:	02813023          	sd	s0,32(sp)
    80003110:	00913c23          	sd	s1,24(sp)
    80003114:	01213823          	sd	s2,16(sp)
    80003118:	01313423          	sd	s3,8(sp)
    8000311c:	03010413          	addi	s0,sp,48
    80003120:	00050493          	mv	s1,a0
    80003124:	00058913          	mv	s2,a1
    80003128:	0015879b          	addiw	a5,a1,1
    8000312c:	0007851b          	sext.w	a0,a5
    80003130:	00f4a023          	sw	a5,0(s1)
    80003134:	0004a823          	sw	zero,16(s1)
    80003138:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000313c:	00251513          	slli	a0,a0,0x2
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	ec0080e7          	jalr	-320(ra) # 80001000 <mem_alloc>
    80003148:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000314c:	01000513          	li	a0,16
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	afc080e7          	jalr	-1284(ra) # 80001c4c <_Znwm>
    80003158:	00050993          	mv	s3,a0
    8000315c:	00000593          	li	a1,0
    80003160:	fffff097          	auipc	ra,0xfffff
    80003164:	1b4080e7          	jalr	436(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    80003168:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000316c:	01000513          	li	a0,16
    80003170:	fffff097          	auipc	ra,0xfffff
    80003174:	adc080e7          	jalr	-1316(ra) # 80001c4c <_Znwm>
    80003178:	00050993          	mv	s3,a0
    8000317c:	00090593          	mv	a1,s2
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	194080e7          	jalr	404(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    80003188:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000318c:	01000513          	li	a0,16
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	abc080e7          	jalr	-1348(ra) # 80001c4c <_Znwm>
    80003198:	00050913          	mv	s2,a0
    8000319c:	00100593          	li	a1,1
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	174080e7          	jalr	372(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    800031a8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800031ac:	01000513          	li	a0,16
    800031b0:	fffff097          	auipc	ra,0xfffff
    800031b4:	a9c080e7          	jalr	-1380(ra) # 80001c4c <_Znwm>
    800031b8:	00050913          	mv	s2,a0
    800031bc:	00100593          	li	a1,1
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	154080e7          	jalr	340(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    800031c8:	0324b823          	sd	s2,48(s1)
}
    800031cc:	02813083          	ld	ra,40(sp)
    800031d0:	02013403          	ld	s0,32(sp)
    800031d4:	01813483          	ld	s1,24(sp)
    800031d8:	01013903          	ld	s2,16(sp)
    800031dc:	00813983          	ld	s3,8(sp)
    800031e0:	03010113          	addi	sp,sp,48
    800031e4:	00008067          	ret
    800031e8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800031ec:	00098513          	mv	a0,s3
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	aac080e7          	jalr	-1364(ra) # 80001c9c <_ZdlPv>
    800031f8:	00048513          	mv	a0,s1
    800031fc:	00006097          	auipc	ra,0x6
    80003200:	d3c080e7          	jalr	-708(ra) # 80008f38 <_Unwind_Resume>
    80003204:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003208:	00098513          	mv	a0,s3
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	a90080e7          	jalr	-1392(ra) # 80001c9c <_ZdlPv>
    80003214:	00048513          	mv	a0,s1
    80003218:	00006097          	auipc	ra,0x6
    8000321c:	d20080e7          	jalr	-736(ra) # 80008f38 <_Unwind_Resume>
    80003220:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003224:	00090513          	mv	a0,s2
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	a74080e7          	jalr	-1420(ra) # 80001c9c <_ZdlPv>
    80003230:	00048513          	mv	a0,s1
    80003234:	00006097          	auipc	ra,0x6
    80003238:	d04080e7          	jalr	-764(ra) # 80008f38 <_Unwind_Resume>
    8000323c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003240:	00090513          	mv	a0,s2
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	a58080e7          	jalr	-1448(ra) # 80001c9c <_ZdlPv>
    8000324c:	00048513          	mv	a0,s1
    80003250:	00006097          	auipc	ra,0x6
    80003254:	ce8080e7          	jalr	-792(ra) # 80008f38 <_Unwind_Resume>

0000000080003258 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003258:	fe010113          	addi	sp,sp,-32
    8000325c:	00113c23          	sd	ra,24(sp)
    80003260:	00813823          	sd	s0,16(sp)
    80003264:	00913423          	sd	s1,8(sp)
    80003268:	01213023          	sd	s2,0(sp)
    8000326c:	02010413          	addi	s0,sp,32
    80003270:	00050493          	mv	s1,a0
    80003274:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003278:	01853503          	ld	a0,24(a0)
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	0d0080e7          	jalr	208(ra) # 8000234c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003284:	0304b503          	ld	a0,48(s1)
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	0c4080e7          	jalr	196(ra) # 8000234c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003290:	0084b783          	ld	a5,8(s1)
    80003294:	0144a703          	lw	a4,20(s1)
    80003298:	00271713          	slli	a4,a4,0x2
    8000329c:	00e787b3          	add	a5,a5,a4
    800032a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800032a4:	0144a783          	lw	a5,20(s1)
    800032a8:	0017879b          	addiw	a5,a5,1
    800032ac:	0004a703          	lw	a4,0(s1)
    800032b0:	02e7e7bb          	remw	a5,a5,a4
    800032b4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800032b8:	0304b503          	ld	a0,48(s1)
    800032bc:	fffff097          	auipc	ra,0xfffff
    800032c0:	0bc080e7          	jalr	188(ra) # 80002378 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800032c4:	0204b503          	ld	a0,32(s1)
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	0b0080e7          	jalr	176(ra) # 80002378 <_ZN9Semaphore6signalEv>

}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	00013903          	ld	s2,0(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret

00000000800032e8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800032e8:	fe010113          	addi	sp,sp,-32
    800032ec:	00113c23          	sd	ra,24(sp)
    800032f0:	00813823          	sd	s0,16(sp)
    800032f4:	00913423          	sd	s1,8(sp)
    800032f8:	01213023          	sd	s2,0(sp)
    800032fc:	02010413          	addi	s0,sp,32
    80003300:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003304:	02053503          	ld	a0,32(a0)
    80003308:	fffff097          	auipc	ra,0xfffff
    8000330c:	044080e7          	jalr	68(ra) # 8000234c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003310:	0284b503          	ld	a0,40(s1)
    80003314:	fffff097          	auipc	ra,0xfffff
    80003318:	038080e7          	jalr	56(ra) # 8000234c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000331c:	0084b703          	ld	a4,8(s1)
    80003320:	0104a783          	lw	a5,16(s1)
    80003324:	00279693          	slli	a3,a5,0x2
    80003328:	00d70733          	add	a4,a4,a3
    8000332c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003330:	0017879b          	addiw	a5,a5,1
    80003334:	0004a703          	lw	a4,0(s1)
    80003338:	02e7e7bb          	remw	a5,a5,a4
    8000333c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003340:	0284b503          	ld	a0,40(s1)
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	034080e7          	jalr	52(ra) # 80002378 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000334c:	0184b503          	ld	a0,24(s1)
    80003350:	fffff097          	auipc	ra,0xfffff
    80003354:	028080e7          	jalr	40(ra) # 80002378 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003358:	00090513          	mv	a0,s2
    8000335c:	01813083          	ld	ra,24(sp)
    80003360:	01013403          	ld	s0,16(sp)
    80003364:	00813483          	ld	s1,8(sp)
    80003368:	00013903          	ld	s2,0(sp)
    8000336c:	02010113          	addi	sp,sp,32
    80003370:	00008067          	ret

0000000080003374 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00913423          	sd	s1,8(sp)
    80003384:	01213023          	sd	s2,0(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003390:	02853503          	ld	a0,40(a0)
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	fb8080e7          	jalr	-72(ra) # 8000234c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000339c:	0304b503          	ld	a0,48(s1)
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	fac080e7          	jalr	-84(ra) # 8000234c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800033a8:	0144a783          	lw	a5,20(s1)
    800033ac:	0104a903          	lw	s2,16(s1)
    800033b0:	0327ce63          	blt	a5,s2,800033ec <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800033b4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800033b8:	0304b503          	ld	a0,48(s1)
    800033bc:	fffff097          	auipc	ra,0xfffff
    800033c0:	fbc080e7          	jalr	-68(ra) # 80002378 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800033c4:	0284b503          	ld	a0,40(s1)
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	fb0080e7          	jalr	-80(ra) # 80002378 <_ZN9Semaphore6signalEv>

    return ret;
}
    800033d0:	00090513          	mv	a0,s2
    800033d4:	01813083          	ld	ra,24(sp)
    800033d8:	01013403          	ld	s0,16(sp)
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	00013903          	ld	s2,0(sp)
    800033e4:	02010113          	addi	sp,sp,32
    800033e8:	00008067          	ret
        ret = cap - head + tail;
    800033ec:	0004a703          	lw	a4,0(s1)
    800033f0:	4127093b          	subw	s2,a4,s2
    800033f4:	00f9093b          	addw	s2,s2,a5
    800033f8:	fc1ff06f          	j	800033b8 <_ZN9BufferCPP6getCntEv+0x44>

00000000800033fc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800033fc:	fe010113          	addi	sp,sp,-32
    80003400:	00113c23          	sd	ra,24(sp)
    80003404:	00813823          	sd	s0,16(sp)
    80003408:	00913423          	sd	s1,8(sp)
    8000340c:	02010413          	addi	s0,sp,32
    80003410:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003414:	00a00513          	li	a0,10
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	004080e7          	jalr	4(ra) # 8000241c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003420:	00003517          	auipc	a0,0x3
    80003424:	d7050513          	addi	a0,a0,-656 # 80006190 <_ZZ14__print_uint64mE6digits+0x10>
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	a30080e7          	jalr	-1488(ra) # 80002e58 <_Z11printStringPKc>
    while (getCnt()) {
    80003430:	00048513          	mv	a0,s1
    80003434:	00000097          	auipc	ra,0x0
    80003438:	f40080e7          	jalr	-192(ra) # 80003374 <_ZN9BufferCPP6getCntEv>
    8000343c:	02050c63          	beqz	a0,80003474 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003440:	0084b783          	ld	a5,8(s1)
    80003444:	0104a703          	lw	a4,16(s1)
    80003448:	00271713          	slli	a4,a4,0x2
    8000344c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003450:	0007c503          	lbu	a0,0(a5)
    80003454:	fffff097          	auipc	ra,0xfffff
    80003458:	fc8080e7          	jalr	-56(ra) # 8000241c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000345c:	0104a783          	lw	a5,16(s1)
    80003460:	0017879b          	addiw	a5,a5,1
    80003464:	0004a703          	lw	a4,0(s1)
    80003468:	02e7e7bb          	remw	a5,a5,a4
    8000346c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003470:	fc1ff06f          	j	80003430 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003474:	02100513          	li	a0,33
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	fa4080e7          	jalr	-92(ra) # 8000241c <_ZN7Console4putcEc>
    Console::putc('\n');
    80003480:	00a00513          	li	a0,10
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	f98080e7          	jalr	-104(ra) # 8000241c <_ZN7Console4putcEc>
    mem_free(buffer);
    8000348c:	0084b503          	ld	a0,8(s1)
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	b7c080e7          	jalr	-1156(ra) # 8000100c <mem_free>
    delete itemAvailable;
    80003498:	0204b503          	ld	a0,32(s1)
    8000349c:	00050863          	beqz	a0,800034ac <_ZN9BufferCPPD1Ev+0xb0>
    800034a0:	00053783          	ld	a5,0(a0)
    800034a4:	0087b783          	ld	a5,8(a5)
    800034a8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800034ac:	0184b503          	ld	a0,24(s1)
    800034b0:	00050863          	beqz	a0,800034c0 <_ZN9BufferCPPD1Ev+0xc4>
    800034b4:	00053783          	ld	a5,0(a0)
    800034b8:	0087b783          	ld	a5,8(a5)
    800034bc:	000780e7          	jalr	a5
    delete mutexTail;
    800034c0:	0304b503          	ld	a0,48(s1)
    800034c4:	00050863          	beqz	a0,800034d4 <_ZN9BufferCPPD1Ev+0xd8>
    800034c8:	00053783          	ld	a5,0(a0)
    800034cc:	0087b783          	ld	a5,8(a5)
    800034d0:	000780e7          	jalr	a5
    delete mutexHead;
    800034d4:	0284b503          	ld	a0,40(s1)
    800034d8:	00050863          	beqz	a0,800034e8 <_ZN9BufferCPPD1Ev+0xec>
    800034dc:	00053783          	ld	a5,0(a0)
    800034e0:	0087b783          	ld	a5,8(a5)
    800034e4:	000780e7          	jalr	a5
}
    800034e8:	01813083          	ld	ra,24(sp)
    800034ec:	01013403          	ld	s0,16(sp)
    800034f0:	00813483          	ld	s1,8(sp)
    800034f4:	02010113          	addi	sp,sp,32
    800034f8:	00008067          	ret

00000000800034fc <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00113c23          	sd	ra,24(sp)
    80003504:	00813823          	sd	s0,16(sp)
    80003508:	00913423          	sd	s1,8(sp)
    8000350c:	01213023          	sd	s2,0(sp)
    80003510:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80003514:	00053903          	ld	s2,0(a0)
    int i = 6;
    80003518:	00600493          	li	s1,6
    while (--i > 0) {
    8000351c:	fff4849b          	addiw	s1,s1,-1
    80003520:	04905463          	blez	s1,80003568 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80003524:	00003517          	auipc	a0,0x3
    80003528:	c8450513          	addi	a0,a0,-892 # 800061a8 <_ZZ14__print_uint64mE6digits+0x28>
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	92c080e7          	jalr	-1748(ra) # 80002e58 <_Z11printStringPKc>
        printInt(sleep_time);
    80003534:	00000613          	li	a2,0
    80003538:	00a00593          	li	a1,10
    8000353c:	0009051b          	sext.w	a0,s2
    80003540:	00000097          	auipc	ra,0x0
    80003544:	ab0080e7          	jalr	-1360(ra) # 80002ff0 <_Z8printIntiii>
        printString(" !\n");
    80003548:	00003517          	auipc	a0,0x3
    8000354c:	c6850513          	addi	a0,a0,-920 # 800061b0 <_ZZ14__print_uint64mE6digits+0x30>
    80003550:	00000097          	auipc	ra,0x0
    80003554:	908080e7          	jalr	-1784(ra) # 80002e58 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80003558:	00090513          	mv	a0,s2
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	b1c080e7          	jalr	-1252(ra) # 80001078 <time_sleep>
    while (--i > 0) {
    80003564:	fb9ff06f          	j	8000351c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80003568:	00a00793          	li	a5,10
    8000356c:	02f95933          	divu	s2,s2,a5
    80003570:	fff90913          	addi	s2,s2,-1
    80003574:	00005797          	auipc	a5,0x5
    80003578:	8f478793          	addi	a5,a5,-1804 # 80007e68 <finished>
    8000357c:	01278933          	add	s2,a5,s2
    80003580:	00100793          	li	a5,1
    80003584:	00f90023          	sb	a5,0(s2)
}
    80003588:	01813083          	ld	ra,24(sp)
    8000358c:	01013403          	ld	s0,16(sp)
    80003590:	00813483          	ld	s1,8(sp)
    80003594:	00013903          	ld	s2,0(sp)
    80003598:	02010113          	addi	sp,sp,32
    8000359c:	00008067          	ret

00000000800035a0 <_Z12testSleepingv>:

void testSleeping() {
    800035a0:	fc010113          	addi	sp,sp,-64
    800035a4:	02113c23          	sd	ra,56(sp)
    800035a8:	02813823          	sd	s0,48(sp)
    800035ac:	02913423          	sd	s1,40(sp)
    800035b0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800035b4:	00a00793          	li	a5,10
    800035b8:	fcf43823          	sd	a5,-48(s0)
    800035bc:	01400793          	li	a5,20
    800035c0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800035c4:	00000493          	li	s1,0
    800035c8:	02c0006f          	j	800035f4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800035cc:	00349793          	slli	a5,s1,0x3
    800035d0:	fd040613          	addi	a2,s0,-48
    800035d4:	00f60633          	add	a2,a2,a5
    800035d8:	00000597          	auipc	a1,0x0
    800035dc:	f2458593          	addi	a1,a1,-220 # 800034fc <_Z9sleepyRunPv>
    800035e0:	fc040513          	addi	a0,s0,-64
    800035e4:	00f50533          	add	a0,a0,a5
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	a30080e7          	jalr	-1488(ra) # 80001018 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800035f0:	0014849b          	addiw	s1,s1,1
    800035f4:	00100793          	li	a5,1
    800035f8:	fc97dae3          	bge	a5,s1,800035cc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800035fc:	00005797          	auipc	a5,0x5
    80003600:	86c7c783          	lbu	a5,-1940(a5) # 80007e68 <finished>
    80003604:	fe078ce3          	beqz	a5,800035fc <_Z12testSleepingv+0x5c>
    80003608:	00005797          	auipc	a5,0x5
    8000360c:	8617c783          	lbu	a5,-1951(a5) # 80007e69 <finished+0x1>
    80003610:	fe0786e3          	beqz	a5,800035fc <_Z12testSleepingv+0x5c>
}
    80003614:	03813083          	ld	ra,56(sp)
    80003618:	03013403          	ld	s0,48(sp)
    8000361c:	02813483          	ld	s1,40(sp)
    80003620:	04010113          	addi	sp,sp,64
    80003624:	00008067          	ret

0000000080003628 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80003628:	ff010113          	addi	sp,sp,-16
    8000362c:	00113423          	sd	ra,8(sp)
    80003630:	00813023          	sd	s0,0(sp)
    80003634:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80003638:	00000097          	auipc	ra,0x0
    8000363c:	f68080e7          	jalr	-152(ra) # 800035a0 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80003640:	00813083          	ld	ra,8(sp)
    80003644:	00013403          	ld	s0,0(sp)
    80003648:	01010113          	addi	sp,sp,16
    8000364c:	00008067          	ret

0000000080003650 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003650:	fe010113          	addi	sp,sp,-32
    80003654:	00113c23          	sd	ra,24(sp)
    80003658:	00813823          	sd	s0,16(sp)
    8000365c:	00913423          	sd	s1,8(sp)
    80003660:	01213023          	sd	s2,0(sp)
    80003664:	02010413          	addi	s0,sp,32
    80003668:	00050493          	mv	s1,a0
    8000366c:	00058913          	mv	s2,a1
    80003670:	0015879b          	addiw	a5,a1,1
    80003674:	0007851b          	sext.w	a0,a5
    80003678:	00f4a023          	sw	a5,0(s1)
    8000367c:	0004a823          	sw	zero,16(s1)
    80003680:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003684:	00251513          	slli	a0,a0,0x2
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	978080e7          	jalr	-1672(ra) # 80001000 <mem_alloc>
    80003690:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003694:	00000593          	li	a1,0
    80003698:	02048513          	addi	a0,s1,32
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	9ac080e7          	jalr	-1620(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    800036a4:	00090593          	mv	a1,s2
    800036a8:	01848513          	addi	a0,s1,24
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	99c080e7          	jalr	-1636(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    800036b4:	00100593          	li	a1,1
    800036b8:	02848513          	addi	a0,s1,40
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	98c080e7          	jalr	-1652(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    800036c4:	00100593          	li	a1,1
    800036c8:	03048513          	addi	a0,s1,48
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	97c080e7          	jalr	-1668(ra) # 80001048 <sem_open>
}
    800036d4:	01813083          	ld	ra,24(sp)
    800036d8:	01013403          	ld	s0,16(sp)
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	00013903          	ld	s2,0(sp)
    800036e4:	02010113          	addi	sp,sp,32
    800036e8:	00008067          	ret

00000000800036ec <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800036ec:	fe010113          	addi	sp,sp,-32
    800036f0:	00113c23          	sd	ra,24(sp)
    800036f4:	00813823          	sd	s0,16(sp)
    800036f8:	00913423          	sd	s1,8(sp)
    800036fc:	01213023          	sd	s2,0(sp)
    80003700:	02010413          	addi	s0,sp,32
    80003704:	00050493          	mv	s1,a0
    80003708:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000370c:	01853503          	ld	a0,24(a0)
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	950080e7          	jalr	-1712(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    80003718:	0304b503          	ld	a0,48(s1)
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	944080e7          	jalr	-1724(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    80003724:	0084b783          	ld	a5,8(s1)
    80003728:	0144a703          	lw	a4,20(s1)
    8000372c:	00271713          	slli	a4,a4,0x2
    80003730:	00e787b3          	add	a5,a5,a4
    80003734:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003738:	0144a783          	lw	a5,20(s1)
    8000373c:	0017879b          	addiw	a5,a5,1
    80003740:	0004a703          	lw	a4,0(s1)
    80003744:	02e7e7bb          	remw	a5,a5,a4
    80003748:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000374c:	0304b503          	ld	a0,48(s1)
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	91c080e7          	jalr	-1764(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    80003758:	0204b503          	ld	a0,32(s1)
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	910080e7          	jalr	-1776(ra) # 8000106c <sem_signal>

}
    80003764:	01813083          	ld	ra,24(sp)
    80003768:	01013403          	ld	s0,16(sp)
    8000376c:	00813483          	ld	s1,8(sp)
    80003770:	00013903          	ld	s2,0(sp)
    80003774:	02010113          	addi	sp,sp,32
    80003778:	00008067          	ret

000000008000377c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000377c:	fe010113          	addi	sp,sp,-32
    80003780:	00113c23          	sd	ra,24(sp)
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	01213023          	sd	s2,0(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003798:	02053503          	ld	a0,32(a0)
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	8c4080e7          	jalr	-1852(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    800037a4:	0284b503          	ld	a0,40(s1)
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	8b8080e7          	jalr	-1864(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    800037b0:	0084b703          	ld	a4,8(s1)
    800037b4:	0104a783          	lw	a5,16(s1)
    800037b8:	00279693          	slli	a3,a5,0x2
    800037bc:	00d70733          	add	a4,a4,a3
    800037c0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800037c4:	0017879b          	addiw	a5,a5,1
    800037c8:	0004a703          	lw	a4,0(s1)
    800037cc:	02e7e7bb          	remw	a5,a5,a4
    800037d0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800037d4:	0284b503          	ld	a0,40(s1)
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	894080e7          	jalr	-1900(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    800037e0:	0184b503          	ld	a0,24(s1)
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	888080e7          	jalr	-1912(ra) # 8000106c <sem_signal>

    return ret;
}
    800037ec:	00090513          	mv	a0,s2
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00813483          	ld	s1,8(sp)
    800037fc:	00013903          	ld	s2,0(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret

0000000080003808 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003808:	fe010113          	addi	sp,sp,-32
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	01213023          	sd	s2,0(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003824:	02853503          	ld	a0,40(a0)
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	838080e7          	jalr	-1992(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    80003830:	0304b503          	ld	a0,48(s1)
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	82c080e7          	jalr	-2004(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    8000383c:	0144a783          	lw	a5,20(s1)
    80003840:	0104a903          	lw	s2,16(s1)
    80003844:	0327ce63          	blt	a5,s2,80003880 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003848:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000384c:	0304b503          	ld	a0,48(s1)
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	81c080e7          	jalr	-2020(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    80003858:	0284b503          	ld	a0,40(s1)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	810080e7          	jalr	-2032(ra) # 8000106c <sem_signal>

    return ret;
}
    80003864:	00090513          	mv	a0,s2
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	00013903          	ld	s2,0(sp)
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret
        ret = cap - head + tail;
    80003880:	0004a703          	lw	a4,0(s1)
    80003884:	4127093b          	subw	s2,a4,s2
    80003888:	00f9093b          	addw	s2,s2,a5
    8000388c:	fc1ff06f          	j	8000384c <_ZN6Buffer6getCntEv+0x44>

0000000080003890 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00813823          	sd	s0,16(sp)
    8000389c:	00913423          	sd	s1,8(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	00050493          	mv	s1,a0
    putc('\n');
    800038a8:	00a00513          	li	a0,10
    800038ac:	ffffd097          	auipc	ra,0xffffd
    800038b0:	7e4080e7          	jalr	2020(ra) # 80001090 <putc>
    printString("Buffer deleted!\n");
    800038b4:	00003517          	auipc	a0,0x3
    800038b8:	8dc50513          	addi	a0,a0,-1828 # 80006190 <_ZZ14__print_uint64mE6digits+0x10>
    800038bc:	fffff097          	auipc	ra,0xfffff
    800038c0:	59c080e7          	jalr	1436(ra) # 80002e58 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00000097          	auipc	ra,0x0
    800038cc:	f40080e7          	jalr	-192(ra) # 80003808 <_ZN6Buffer6getCntEv>
    800038d0:	02a05c63          	blez	a0,80003908 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800038d4:	0084b783          	ld	a5,8(s1)
    800038d8:	0104a703          	lw	a4,16(s1)
    800038dc:	00271713          	slli	a4,a4,0x2
    800038e0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800038e4:	0007c503          	lbu	a0,0(a5)
    800038e8:	ffffd097          	auipc	ra,0xffffd
    800038ec:	7a8080e7          	jalr	1960(ra) # 80001090 <putc>
        head = (head + 1) % cap;
    800038f0:	0104a783          	lw	a5,16(s1)
    800038f4:	0017879b          	addiw	a5,a5,1
    800038f8:	0004a703          	lw	a4,0(s1)
    800038fc:	02e7e7bb          	remw	a5,a5,a4
    80003900:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003904:	fc1ff06f          	j	800038c4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003908:	02100513          	li	a0,33
    8000390c:	ffffd097          	auipc	ra,0xffffd
    80003910:	784080e7          	jalr	1924(ra) # 80001090 <putc>
    putc('\n');
    80003914:	00a00513          	li	a0,10
    80003918:	ffffd097          	auipc	ra,0xffffd
    8000391c:	778080e7          	jalr	1912(ra) # 80001090 <putc>
    mem_free(buffer);
    80003920:	0084b503          	ld	a0,8(s1)
    80003924:	ffffd097          	auipc	ra,0xffffd
    80003928:	6e8080e7          	jalr	1768(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    8000392c:	0204b503          	ld	a0,32(s1)
    80003930:	ffffd097          	auipc	ra,0xffffd
    80003934:	724080e7          	jalr	1828(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    80003938:	0184b503          	ld	a0,24(s1)
    8000393c:	ffffd097          	auipc	ra,0xffffd
    80003940:	718080e7          	jalr	1816(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    80003944:	0304b503          	ld	a0,48(s1)
    80003948:	ffffd097          	auipc	ra,0xffffd
    8000394c:	70c080e7          	jalr	1804(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    80003950:	0284b503          	ld	a0,40(s1)
    80003954:	ffffd097          	auipc	ra,0xffffd
    80003958:	700080e7          	jalr	1792(ra) # 80001054 <sem_close>
}
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret

0000000080003970 <start>:
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00813423          	sd	s0,8(sp)
    80003978:	01010413          	addi	s0,sp,16
    8000397c:	300027f3          	csrr	a5,mstatus
    80003980:	ffffe737          	lui	a4,0xffffe
    80003984:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff572f>
    80003988:	00e7f7b3          	and	a5,a5,a4
    8000398c:	00001737          	lui	a4,0x1
    80003990:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003994:	00e7e7b3          	or	a5,a5,a4
    80003998:	30079073          	csrw	mstatus,a5
    8000399c:	00000797          	auipc	a5,0x0
    800039a0:	16078793          	addi	a5,a5,352 # 80003afc <system_main>
    800039a4:	34179073          	csrw	mepc,a5
    800039a8:	00000793          	li	a5,0
    800039ac:	18079073          	csrw	satp,a5
    800039b0:	000107b7          	lui	a5,0x10
    800039b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800039b8:	30279073          	csrw	medeleg,a5
    800039bc:	30379073          	csrw	mideleg,a5
    800039c0:	104027f3          	csrr	a5,sie
    800039c4:	2227e793          	ori	a5,a5,546
    800039c8:	10479073          	csrw	sie,a5
    800039cc:	fff00793          	li	a5,-1
    800039d0:	00a7d793          	srli	a5,a5,0xa
    800039d4:	3b079073          	csrw	pmpaddr0,a5
    800039d8:	00f00793          	li	a5,15
    800039dc:	3a079073          	csrw	pmpcfg0,a5
    800039e0:	f14027f3          	csrr	a5,mhartid
    800039e4:	0200c737          	lui	a4,0x200c
    800039e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800039ec:	0007869b          	sext.w	a3,a5
    800039f0:	00269713          	slli	a4,a3,0x2
    800039f4:	000f4637          	lui	a2,0xf4
    800039f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039fc:	00d70733          	add	a4,a4,a3
    80003a00:	0037979b          	slliw	a5,a5,0x3
    80003a04:	020046b7          	lui	a3,0x2004
    80003a08:	00d787b3          	add	a5,a5,a3
    80003a0c:	00c585b3          	add	a1,a1,a2
    80003a10:	00371693          	slli	a3,a4,0x3
    80003a14:	00004717          	auipc	a4,0x4
    80003a18:	45c70713          	addi	a4,a4,1116 # 80007e70 <timer_scratch>
    80003a1c:	00b7b023          	sd	a1,0(a5)
    80003a20:	00d70733          	add	a4,a4,a3
    80003a24:	00f73c23          	sd	a5,24(a4)
    80003a28:	02c73023          	sd	a2,32(a4)
    80003a2c:	34071073          	csrw	mscratch,a4
    80003a30:	00000797          	auipc	a5,0x0
    80003a34:	6e078793          	addi	a5,a5,1760 # 80004110 <timervec>
    80003a38:	30579073          	csrw	mtvec,a5
    80003a3c:	300027f3          	csrr	a5,mstatus
    80003a40:	0087e793          	ori	a5,a5,8
    80003a44:	30079073          	csrw	mstatus,a5
    80003a48:	304027f3          	csrr	a5,mie
    80003a4c:	0807e793          	ori	a5,a5,128
    80003a50:	30479073          	csrw	mie,a5
    80003a54:	f14027f3          	csrr	a5,mhartid
    80003a58:	0007879b          	sext.w	a5,a5
    80003a5c:	00078213          	mv	tp,a5
    80003a60:	30200073          	mret
    80003a64:	00813403          	ld	s0,8(sp)
    80003a68:	01010113          	addi	sp,sp,16
    80003a6c:	00008067          	ret

0000000080003a70 <timerinit>:
    80003a70:	ff010113          	addi	sp,sp,-16
    80003a74:	00813423          	sd	s0,8(sp)
    80003a78:	01010413          	addi	s0,sp,16
    80003a7c:	f14027f3          	csrr	a5,mhartid
    80003a80:	0200c737          	lui	a4,0x200c
    80003a84:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003a88:	0007869b          	sext.w	a3,a5
    80003a8c:	00269713          	slli	a4,a3,0x2
    80003a90:	000f4637          	lui	a2,0xf4
    80003a94:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a98:	00d70733          	add	a4,a4,a3
    80003a9c:	0037979b          	slliw	a5,a5,0x3
    80003aa0:	020046b7          	lui	a3,0x2004
    80003aa4:	00d787b3          	add	a5,a5,a3
    80003aa8:	00c585b3          	add	a1,a1,a2
    80003aac:	00371693          	slli	a3,a4,0x3
    80003ab0:	00004717          	auipc	a4,0x4
    80003ab4:	3c070713          	addi	a4,a4,960 # 80007e70 <timer_scratch>
    80003ab8:	00b7b023          	sd	a1,0(a5)
    80003abc:	00d70733          	add	a4,a4,a3
    80003ac0:	00f73c23          	sd	a5,24(a4)
    80003ac4:	02c73023          	sd	a2,32(a4)
    80003ac8:	34071073          	csrw	mscratch,a4
    80003acc:	00000797          	auipc	a5,0x0
    80003ad0:	64478793          	addi	a5,a5,1604 # 80004110 <timervec>
    80003ad4:	30579073          	csrw	mtvec,a5
    80003ad8:	300027f3          	csrr	a5,mstatus
    80003adc:	0087e793          	ori	a5,a5,8
    80003ae0:	30079073          	csrw	mstatus,a5
    80003ae4:	304027f3          	csrr	a5,mie
    80003ae8:	0807e793          	ori	a5,a5,128
    80003aec:	30479073          	csrw	mie,a5
    80003af0:	00813403          	ld	s0,8(sp)
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00008067          	ret

0000000080003afc <system_main>:
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00813823          	sd	s0,16(sp)
    80003b04:	00913423          	sd	s1,8(sp)
    80003b08:	00113c23          	sd	ra,24(sp)
    80003b0c:	02010413          	addi	s0,sp,32
    80003b10:	00000097          	auipc	ra,0x0
    80003b14:	0c4080e7          	jalr	196(ra) # 80003bd4 <cpuid>
    80003b18:	00004497          	auipc	s1,0x4
    80003b1c:	a7848493          	addi	s1,s1,-1416 # 80007590 <started>
    80003b20:	02050263          	beqz	a0,80003b44 <system_main+0x48>
    80003b24:	0004a783          	lw	a5,0(s1)
    80003b28:	0007879b          	sext.w	a5,a5
    80003b2c:	fe078ce3          	beqz	a5,80003b24 <system_main+0x28>
    80003b30:	0ff0000f          	fence
    80003b34:	00002517          	auipc	a0,0x2
    80003b38:	6b450513          	addi	a0,a0,1716 # 800061e8 <_ZZ14__print_uint64mE6digits+0x68>
    80003b3c:	00001097          	auipc	ra,0x1
    80003b40:	a70080e7          	jalr	-1424(ra) # 800045ac <panic>
    80003b44:	00001097          	auipc	ra,0x1
    80003b48:	9c4080e7          	jalr	-1596(ra) # 80004508 <consoleinit>
    80003b4c:	00001097          	auipc	ra,0x1
    80003b50:	150080e7          	jalr	336(ra) # 80004c9c <printfinit>
    80003b54:	00002517          	auipc	a0,0x2
    80003b58:	77450513          	addi	a0,a0,1908 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    80003b5c:	00001097          	auipc	ra,0x1
    80003b60:	aac080e7          	jalr	-1364(ra) # 80004608 <__printf>
    80003b64:	00002517          	auipc	a0,0x2
    80003b68:	65450513          	addi	a0,a0,1620 # 800061b8 <_ZZ14__print_uint64mE6digits+0x38>
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	a9c080e7          	jalr	-1380(ra) # 80004608 <__printf>
    80003b74:	00002517          	auipc	a0,0x2
    80003b78:	75450513          	addi	a0,a0,1876 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    80003b7c:	00001097          	auipc	ra,0x1
    80003b80:	a8c080e7          	jalr	-1396(ra) # 80004608 <__printf>
    80003b84:	00001097          	auipc	ra,0x1
    80003b88:	4a4080e7          	jalr	1188(ra) # 80005028 <kinit>
    80003b8c:	00000097          	auipc	ra,0x0
    80003b90:	148080e7          	jalr	328(ra) # 80003cd4 <trapinit>
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	16c080e7          	jalr	364(ra) # 80003d00 <trapinithart>
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	5b4080e7          	jalr	1460(ra) # 80004150 <plicinit>
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	5d4080e7          	jalr	1492(ra) # 80004178 <plicinithart>
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	078080e7          	jalr	120(ra) # 80003c24 <userinit>
    80003bb4:	0ff0000f          	fence
    80003bb8:	00100793          	li	a5,1
    80003bbc:	00002517          	auipc	a0,0x2
    80003bc0:	61450513          	addi	a0,a0,1556 # 800061d0 <_ZZ14__print_uint64mE6digits+0x50>
    80003bc4:	00f4a023          	sw	a5,0(s1)
    80003bc8:	00001097          	auipc	ra,0x1
    80003bcc:	a40080e7          	jalr	-1472(ra) # 80004608 <__printf>
    80003bd0:	0000006f          	j	80003bd0 <system_main+0xd4>

0000000080003bd4 <cpuid>:
    80003bd4:	ff010113          	addi	sp,sp,-16
    80003bd8:	00813423          	sd	s0,8(sp)
    80003bdc:	01010413          	addi	s0,sp,16
    80003be0:	00020513          	mv	a0,tp
    80003be4:	00813403          	ld	s0,8(sp)
    80003be8:	0005051b          	sext.w	a0,a0
    80003bec:	01010113          	addi	sp,sp,16
    80003bf0:	00008067          	ret

0000000080003bf4 <mycpu>:
    80003bf4:	ff010113          	addi	sp,sp,-16
    80003bf8:	00813423          	sd	s0,8(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    80003c00:	00020793          	mv	a5,tp
    80003c04:	00813403          	ld	s0,8(sp)
    80003c08:	0007879b          	sext.w	a5,a5
    80003c0c:	00779793          	slli	a5,a5,0x7
    80003c10:	00005517          	auipc	a0,0x5
    80003c14:	29050513          	addi	a0,a0,656 # 80008ea0 <cpus>
    80003c18:	00f50533          	add	a0,a0,a5
    80003c1c:	01010113          	addi	sp,sp,16
    80003c20:	00008067          	ret

0000000080003c24 <userinit>:
    80003c24:	ff010113          	addi	sp,sp,-16
    80003c28:	00813423          	sd	s0,8(sp)
    80003c2c:	01010413          	addi	s0,sp,16
    80003c30:	00813403          	ld	s0,8(sp)
    80003c34:	01010113          	addi	sp,sp,16
    80003c38:	ffffe317          	auipc	t1,0xffffe
    80003c3c:	0b430067          	jr	180(t1) # 80001cec <main>

0000000080003c40 <either_copyout>:
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00813023          	sd	s0,0(sp)
    80003c48:	00113423          	sd	ra,8(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    80003c50:	02051663          	bnez	a0,80003c7c <either_copyout+0x3c>
    80003c54:	00058513          	mv	a0,a1
    80003c58:	00060593          	mv	a1,a2
    80003c5c:	0006861b          	sext.w	a2,a3
    80003c60:	00002097          	auipc	ra,0x2
    80003c64:	c54080e7          	jalr	-940(ra) # 800058b4 <__memmove>
    80003c68:	00813083          	ld	ra,8(sp)
    80003c6c:	00013403          	ld	s0,0(sp)
    80003c70:	00000513          	li	a0,0
    80003c74:	01010113          	addi	sp,sp,16
    80003c78:	00008067          	ret
    80003c7c:	00002517          	auipc	a0,0x2
    80003c80:	59450513          	addi	a0,a0,1428 # 80006210 <_ZZ14__print_uint64mE6digits+0x90>
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	928080e7          	jalr	-1752(ra) # 800045ac <panic>

0000000080003c8c <either_copyin>:
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00813023          	sd	s0,0(sp)
    80003c94:	00113423          	sd	ra,8(sp)
    80003c98:	01010413          	addi	s0,sp,16
    80003c9c:	02059463          	bnez	a1,80003cc4 <either_copyin+0x38>
    80003ca0:	00060593          	mv	a1,a2
    80003ca4:	0006861b          	sext.w	a2,a3
    80003ca8:	00002097          	auipc	ra,0x2
    80003cac:	c0c080e7          	jalr	-1012(ra) # 800058b4 <__memmove>
    80003cb0:	00813083          	ld	ra,8(sp)
    80003cb4:	00013403          	ld	s0,0(sp)
    80003cb8:	00000513          	li	a0,0
    80003cbc:	01010113          	addi	sp,sp,16
    80003cc0:	00008067          	ret
    80003cc4:	00002517          	auipc	a0,0x2
    80003cc8:	57450513          	addi	a0,a0,1396 # 80006238 <_ZZ14__print_uint64mE6digits+0xb8>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	8e0080e7          	jalr	-1824(ra) # 800045ac <panic>

0000000080003cd4 <trapinit>:
    80003cd4:	ff010113          	addi	sp,sp,-16
    80003cd8:	00813423          	sd	s0,8(sp)
    80003cdc:	01010413          	addi	s0,sp,16
    80003ce0:	00813403          	ld	s0,8(sp)
    80003ce4:	00002597          	auipc	a1,0x2
    80003ce8:	57c58593          	addi	a1,a1,1404 # 80006260 <_ZZ14__print_uint64mE6digits+0xe0>
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	23450513          	addi	a0,a0,564 # 80008f20 <tickslock>
    80003cf4:	01010113          	addi	sp,sp,16
    80003cf8:	00001317          	auipc	t1,0x1
    80003cfc:	5c030067          	jr	1472(t1) # 800052b8 <initlock>

0000000080003d00 <trapinithart>:
    80003d00:	ff010113          	addi	sp,sp,-16
    80003d04:	00813423          	sd	s0,8(sp)
    80003d08:	01010413          	addi	s0,sp,16
    80003d0c:	00000797          	auipc	a5,0x0
    80003d10:	2f478793          	addi	a5,a5,756 # 80004000 <kernelvec>
    80003d14:	10579073          	csrw	stvec,a5
    80003d18:	00813403          	ld	s0,8(sp)
    80003d1c:	01010113          	addi	sp,sp,16
    80003d20:	00008067          	ret

0000000080003d24 <usertrap>:
    80003d24:	ff010113          	addi	sp,sp,-16
    80003d28:	00813423          	sd	s0,8(sp)
    80003d2c:	01010413          	addi	s0,sp,16
    80003d30:	00813403          	ld	s0,8(sp)
    80003d34:	01010113          	addi	sp,sp,16
    80003d38:	00008067          	ret

0000000080003d3c <usertrapret>:
    80003d3c:	ff010113          	addi	sp,sp,-16
    80003d40:	00813423          	sd	s0,8(sp)
    80003d44:	01010413          	addi	s0,sp,16
    80003d48:	00813403          	ld	s0,8(sp)
    80003d4c:	01010113          	addi	sp,sp,16
    80003d50:	00008067          	ret

0000000080003d54 <kerneltrap>:
    80003d54:	fe010113          	addi	sp,sp,-32
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00113c23          	sd	ra,24(sp)
    80003d60:	00913423          	sd	s1,8(sp)
    80003d64:	02010413          	addi	s0,sp,32
    80003d68:	142025f3          	csrr	a1,scause
    80003d6c:	100027f3          	csrr	a5,sstatus
    80003d70:	0027f793          	andi	a5,a5,2
    80003d74:	10079c63          	bnez	a5,80003e8c <kerneltrap+0x138>
    80003d78:	142027f3          	csrr	a5,scause
    80003d7c:	0207ce63          	bltz	a5,80003db8 <kerneltrap+0x64>
    80003d80:	00002517          	auipc	a0,0x2
    80003d84:	52850513          	addi	a0,a0,1320 # 800062a8 <_ZZ14__print_uint64mE6digits+0x128>
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	880080e7          	jalr	-1920(ra) # 80004608 <__printf>
    80003d90:	141025f3          	csrr	a1,sepc
    80003d94:	14302673          	csrr	a2,stval
    80003d98:	00002517          	auipc	a0,0x2
    80003d9c:	52050513          	addi	a0,a0,1312 # 800062b8 <_ZZ14__print_uint64mE6digits+0x138>
    80003da0:	00001097          	auipc	ra,0x1
    80003da4:	868080e7          	jalr	-1944(ra) # 80004608 <__printf>
    80003da8:	00002517          	auipc	a0,0x2
    80003dac:	52850513          	addi	a0,a0,1320 # 800062d0 <_ZZ14__print_uint64mE6digits+0x150>
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	7fc080e7          	jalr	2044(ra) # 800045ac <panic>
    80003db8:	0ff7f713          	andi	a4,a5,255
    80003dbc:	00900693          	li	a3,9
    80003dc0:	04d70063          	beq	a4,a3,80003e00 <kerneltrap+0xac>
    80003dc4:	fff00713          	li	a4,-1
    80003dc8:	03f71713          	slli	a4,a4,0x3f
    80003dcc:	00170713          	addi	a4,a4,1
    80003dd0:	fae798e3          	bne	a5,a4,80003d80 <kerneltrap+0x2c>
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	e00080e7          	jalr	-512(ra) # 80003bd4 <cpuid>
    80003ddc:	06050663          	beqz	a0,80003e48 <kerneltrap+0xf4>
    80003de0:	144027f3          	csrr	a5,sip
    80003de4:	ffd7f793          	andi	a5,a5,-3
    80003de8:	14479073          	csrw	sip,a5
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	3c4080e7          	jalr	964(ra) # 800041c4 <plic_claim>
    80003e08:	00a00793          	li	a5,10
    80003e0c:	00050493          	mv	s1,a0
    80003e10:	06f50863          	beq	a0,a5,80003e80 <kerneltrap+0x12c>
    80003e14:	fc050ce3          	beqz	a0,80003dec <kerneltrap+0x98>
    80003e18:	00050593          	mv	a1,a0
    80003e1c:	00002517          	auipc	a0,0x2
    80003e20:	46c50513          	addi	a0,a0,1132 # 80006288 <_ZZ14__print_uint64mE6digits+0x108>
    80003e24:	00000097          	auipc	ra,0x0
    80003e28:	7e4080e7          	jalr	2020(ra) # 80004608 <__printf>
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	01813083          	ld	ra,24(sp)
    80003e34:	00048513          	mv	a0,s1
    80003e38:	00813483          	ld	s1,8(sp)
    80003e3c:	02010113          	addi	sp,sp,32
    80003e40:	00000317          	auipc	t1,0x0
    80003e44:	3bc30067          	jr	956(t1) # 800041fc <plic_complete>
    80003e48:	00005517          	auipc	a0,0x5
    80003e4c:	0d850513          	addi	a0,a0,216 # 80008f20 <tickslock>
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	48c080e7          	jalr	1164(ra) # 800052dc <acquire>
    80003e58:	00003717          	auipc	a4,0x3
    80003e5c:	73c70713          	addi	a4,a4,1852 # 80007594 <ticks>
    80003e60:	00072783          	lw	a5,0(a4)
    80003e64:	00005517          	auipc	a0,0x5
    80003e68:	0bc50513          	addi	a0,a0,188 # 80008f20 <tickslock>
    80003e6c:	0017879b          	addiw	a5,a5,1
    80003e70:	00f72023          	sw	a5,0(a4)
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	534080e7          	jalr	1332(ra) # 800053a8 <release>
    80003e7c:	f65ff06f          	j	80003de0 <kerneltrap+0x8c>
    80003e80:	00001097          	auipc	ra,0x1
    80003e84:	090080e7          	jalr	144(ra) # 80004f10 <uartintr>
    80003e88:	fa5ff06f          	j	80003e2c <kerneltrap+0xd8>
    80003e8c:	00002517          	auipc	a0,0x2
    80003e90:	3dc50513          	addi	a0,a0,988 # 80006268 <_ZZ14__print_uint64mE6digits+0xe8>
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	718080e7          	jalr	1816(ra) # 800045ac <panic>

0000000080003e9c <clockintr>:
    80003e9c:	fe010113          	addi	sp,sp,-32
    80003ea0:	00813823          	sd	s0,16(sp)
    80003ea4:	00913423          	sd	s1,8(sp)
    80003ea8:	00113c23          	sd	ra,24(sp)
    80003eac:	02010413          	addi	s0,sp,32
    80003eb0:	00005497          	auipc	s1,0x5
    80003eb4:	07048493          	addi	s1,s1,112 # 80008f20 <tickslock>
    80003eb8:	00048513          	mv	a0,s1
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	420080e7          	jalr	1056(ra) # 800052dc <acquire>
    80003ec4:	00003717          	auipc	a4,0x3
    80003ec8:	6d070713          	addi	a4,a4,1744 # 80007594 <ticks>
    80003ecc:	00072783          	lw	a5,0(a4)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	01813083          	ld	ra,24(sp)
    80003ed8:	00048513          	mv	a0,s1
    80003edc:	0017879b          	addiw	a5,a5,1
    80003ee0:	00813483          	ld	s1,8(sp)
    80003ee4:	00f72023          	sw	a5,0(a4)
    80003ee8:	02010113          	addi	sp,sp,32
    80003eec:	00001317          	auipc	t1,0x1
    80003ef0:	4bc30067          	jr	1212(t1) # 800053a8 <release>

0000000080003ef4 <devintr>:
    80003ef4:	142027f3          	csrr	a5,scause
    80003ef8:	00000513          	li	a0,0
    80003efc:	0007c463          	bltz	a5,80003f04 <devintr+0x10>
    80003f00:	00008067          	ret
    80003f04:	fe010113          	addi	sp,sp,-32
    80003f08:	00813823          	sd	s0,16(sp)
    80003f0c:	00113c23          	sd	ra,24(sp)
    80003f10:	00913423          	sd	s1,8(sp)
    80003f14:	02010413          	addi	s0,sp,32
    80003f18:	0ff7f713          	andi	a4,a5,255
    80003f1c:	00900693          	li	a3,9
    80003f20:	04d70c63          	beq	a4,a3,80003f78 <devintr+0x84>
    80003f24:	fff00713          	li	a4,-1
    80003f28:	03f71713          	slli	a4,a4,0x3f
    80003f2c:	00170713          	addi	a4,a4,1
    80003f30:	00e78c63          	beq	a5,a4,80003f48 <devintr+0x54>
    80003f34:	01813083          	ld	ra,24(sp)
    80003f38:	01013403          	ld	s0,16(sp)
    80003f3c:	00813483          	ld	s1,8(sp)
    80003f40:	02010113          	addi	sp,sp,32
    80003f44:	00008067          	ret
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	c8c080e7          	jalr	-884(ra) # 80003bd4 <cpuid>
    80003f50:	06050663          	beqz	a0,80003fbc <devintr+0xc8>
    80003f54:	144027f3          	csrr	a5,sip
    80003f58:	ffd7f793          	andi	a5,a5,-3
    80003f5c:	14479073          	csrw	sip,a5
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	00200513          	li	a0,2
    80003f70:	02010113          	addi	sp,sp,32
    80003f74:	00008067          	ret
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	24c080e7          	jalr	588(ra) # 800041c4 <plic_claim>
    80003f80:	00a00793          	li	a5,10
    80003f84:	00050493          	mv	s1,a0
    80003f88:	06f50663          	beq	a0,a5,80003ff4 <devintr+0x100>
    80003f8c:	00100513          	li	a0,1
    80003f90:	fa0482e3          	beqz	s1,80003f34 <devintr+0x40>
    80003f94:	00048593          	mv	a1,s1
    80003f98:	00002517          	auipc	a0,0x2
    80003f9c:	2f050513          	addi	a0,a0,752 # 80006288 <_ZZ14__print_uint64mE6digits+0x108>
    80003fa0:	00000097          	auipc	ra,0x0
    80003fa4:	668080e7          	jalr	1640(ra) # 80004608 <__printf>
    80003fa8:	00048513          	mv	a0,s1
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	250080e7          	jalr	592(ra) # 800041fc <plic_complete>
    80003fb4:	00100513          	li	a0,1
    80003fb8:	f7dff06f          	j	80003f34 <devintr+0x40>
    80003fbc:	00005517          	auipc	a0,0x5
    80003fc0:	f6450513          	addi	a0,a0,-156 # 80008f20 <tickslock>
    80003fc4:	00001097          	auipc	ra,0x1
    80003fc8:	318080e7          	jalr	792(ra) # 800052dc <acquire>
    80003fcc:	00003717          	auipc	a4,0x3
    80003fd0:	5c870713          	addi	a4,a4,1480 # 80007594 <ticks>
    80003fd4:	00072783          	lw	a5,0(a4)
    80003fd8:	00005517          	auipc	a0,0x5
    80003fdc:	f4850513          	addi	a0,a0,-184 # 80008f20 <tickslock>
    80003fe0:	0017879b          	addiw	a5,a5,1
    80003fe4:	00f72023          	sw	a5,0(a4)
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	3c0080e7          	jalr	960(ra) # 800053a8 <release>
    80003ff0:	f65ff06f          	j	80003f54 <devintr+0x60>
    80003ff4:	00001097          	auipc	ra,0x1
    80003ff8:	f1c080e7          	jalr	-228(ra) # 80004f10 <uartintr>
    80003ffc:	fadff06f          	j	80003fa8 <devintr+0xb4>

0000000080004000 <kernelvec>:
    80004000:	f0010113          	addi	sp,sp,-256
    80004004:	00113023          	sd	ra,0(sp)
    80004008:	00213423          	sd	sp,8(sp)
    8000400c:	00313823          	sd	gp,16(sp)
    80004010:	00413c23          	sd	tp,24(sp)
    80004014:	02513023          	sd	t0,32(sp)
    80004018:	02613423          	sd	t1,40(sp)
    8000401c:	02713823          	sd	t2,48(sp)
    80004020:	02813c23          	sd	s0,56(sp)
    80004024:	04913023          	sd	s1,64(sp)
    80004028:	04a13423          	sd	a0,72(sp)
    8000402c:	04b13823          	sd	a1,80(sp)
    80004030:	04c13c23          	sd	a2,88(sp)
    80004034:	06d13023          	sd	a3,96(sp)
    80004038:	06e13423          	sd	a4,104(sp)
    8000403c:	06f13823          	sd	a5,112(sp)
    80004040:	07013c23          	sd	a6,120(sp)
    80004044:	09113023          	sd	a7,128(sp)
    80004048:	09213423          	sd	s2,136(sp)
    8000404c:	09313823          	sd	s3,144(sp)
    80004050:	09413c23          	sd	s4,152(sp)
    80004054:	0b513023          	sd	s5,160(sp)
    80004058:	0b613423          	sd	s6,168(sp)
    8000405c:	0b713823          	sd	s7,176(sp)
    80004060:	0b813c23          	sd	s8,184(sp)
    80004064:	0d913023          	sd	s9,192(sp)
    80004068:	0da13423          	sd	s10,200(sp)
    8000406c:	0db13823          	sd	s11,208(sp)
    80004070:	0dc13c23          	sd	t3,216(sp)
    80004074:	0fd13023          	sd	t4,224(sp)
    80004078:	0fe13423          	sd	t5,232(sp)
    8000407c:	0ff13823          	sd	t6,240(sp)
    80004080:	cd5ff0ef          	jal	ra,80003d54 <kerneltrap>
    80004084:	00013083          	ld	ra,0(sp)
    80004088:	00813103          	ld	sp,8(sp)
    8000408c:	01013183          	ld	gp,16(sp)
    80004090:	02013283          	ld	t0,32(sp)
    80004094:	02813303          	ld	t1,40(sp)
    80004098:	03013383          	ld	t2,48(sp)
    8000409c:	03813403          	ld	s0,56(sp)
    800040a0:	04013483          	ld	s1,64(sp)
    800040a4:	04813503          	ld	a0,72(sp)
    800040a8:	05013583          	ld	a1,80(sp)
    800040ac:	05813603          	ld	a2,88(sp)
    800040b0:	06013683          	ld	a3,96(sp)
    800040b4:	06813703          	ld	a4,104(sp)
    800040b8:	07013783          	ld	a5,112(sp)
    800040bc:	07813803          	ld	a6,120(sp)
    800040c0:	08013883          	ld	a7,128(sp)
    800040c4:	08813903          	ld	s2,136(sp)
    800040c8:	09013983          	ld	s3,144(sp)
    800040cc:	09813a03          	ld	s4,152(sp)
    800040d0:	0a013a83          	ld	s5,160(sp)
    800040d4:	0a813b03          	ld	s6,168(sp)
    800040d8:	0b013b83          	ld	s7,176(sp)
    800040dc:	0b813c03          	ld	s8,184(sp)
    800040e0:	0c013c83          	ld	s9,192(sp)
    800040e4:	0c813d03          	ld	s10,200(sp)
    800040e8:	0d013d83          	ld	s11,208(sp)
    800040ec:	0d813e03          	ld	t3,216(sp)
    800040f0:	0e013e83          	ld	t4,224(sp)
    800040f4:	0e813f03          	ld	t5,232(sp)
    800040f8:	0f013f83          	ld	t6,240(sp)
    800040fc:	10010113          	addi	sp,sp,256
    80004100:	10200073          	sret
    80004104:	00000013          	nop
    80004108:	00000013          	nop
    8000410c:	00000013          	nop

0000000080004110 <timervec>:
    80004110:	34051573          	csrrw	a0,mscratch,a0
    80004114:	00b53023          	sd	a1,0(a0)
    80004118:	00c53423          	sd	a2,8(a0)
    8000411c:	00d53823          	sd	a3,16(a0)
    80004120:	01853583          	ld	a1,24(a0)
    80004124:	02053603          	ld	a2,32(a0)
    80004128:	0005b683          	ld	a3,0(a1)
    8000412c:	00c686b3          	add	a3,a3,a2
    80004130:	00d5b023          	sd	a3,0(a1)
    80004134:	00200593          	li	a1,2
    80004138:	14459073          	csrw	sip,a1
    8000413c:	01053683          	ld	a3,16(a0)
    80004140:	00853603          	ld	a2,8(a0)
    80004144:	00053583          	ld	a1,0(a0)
    80004148:	34051573          	csrrw	a0,mscratch,a0
    8000414c:	30200073          	mret

0000000080004150 <plicinit>:
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00813423          	sd	s0,8(sp)
    80004158:	01010413          	addi	s0,sp,16
    8000415c:	00813403          	ld	s0,8(sp)
    80004160:	0c0007b7          	lui	a5,0xc000
    80004164:	00100713          	li	a4,1
    80004168:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000416c:	00e7a223          	sw	a4,4(a5)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret

0000000080004178 <plicinithart>:
    80004178:	ff010113          	addi	sp,sp,-16
    8000417c:	00813023          	sd	s0,0(sp)
    80004180:	00113423          	sd	ra,8(sp)
    80004184:	01010413          	addi	s0,sp,16
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	a4c080e7          	jalr	-1460(ra) # 80003bd4 <cpuid>
    80004190:	0085171b          	slliw	a4,a0,0x8
    80004194:	0c0027b7          	lui	a5,0xc002
    80004198:	00e787b3          	add	a5,a5,a4
    8000419c:	40200713          	li	a4,1026
    800041a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800041a4:	00813083          	ld	ra,8(sp)
    800041a8:	00013403          	ld	s0,0(sp)
    800041ac:	00d5151b          	slliw	a0,a0,0xd
    800041b0:	0c2017b7          	lui	a5,0xc201
    800041b4:	00a78533          	add	a0,a5,a0
    800041b8:	00052023          	sw	zero,0(a0)
    800041bc:	01010113          	addi	sp,sp,16
    800041c0:	00008067          	ret

00000000800041c4 <plic_claim>:
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00813023          	sd	s0,0(sp)
    800041cc:	00113423          	sd	ra,8(sp)
    800041d0:	01010413          	addi	s0,sp,16
    800041d4:	00000097          	auipc	ra,0x0
    800041d8:	a00080e7          	jalr	-1536(ra) # 80003bd4 <cpuid>
    800041dc:	00813083          	ld	ra,8(sp)
    800041e0:	00013403          	ld	s0,0(sp)
    800041e4:	00d5151b          	slliw	a0,a0,0xd
    800041e8:	0c2017b7          	lui	a5,0xc201
    800041ec:	00a78533          	add	a0,a5,a0
    800041f0:	00452503          	lw	a0,4(a0)
    800041f4:	01010113          	addi	sp,sp,16
    800041f8:	00008067          	ret

00000000800041fc <plic_complete>:
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00813823          	sd	s0,16(sp)
    80004204:	00913423          	sd	s1,8(sp)
    80004208:	00113c23          	sd	ra,24(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	00050493          	mv	s1,a0
    80004214:	00000097          	auipc	ra,0x0
    80004218:	9c0080e7          	jalr	-1600(ra) # 80003bd4 <cpuid>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00d5179b          	slliw	a5,a0,0xd
    80004228:	0c201737          	lui	a4,0xc201
    8000422c:	00f707b3          	add	a5,a4,a5
    80004230:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret

0000000080004240 <consolewrite>:
    80004240:	fb010113          	addi	sp,sp,-80
    80004244:	04813023          	sd	s0,64(sp)
    80004248:	04113423          	sd	ra,72(sp)
    8000424c:	02913c23          	sd	s1,56(sp)
    80004250:	03213823          	sd	s2,48(sp)
    80004254:	03313423          	sd	s3,40(sp)
    80004258:	03413023          	sd	s4,32(sp)
    8000425c:	01513c23          	sd	s5,24(sp)
    80004260:	05010413          	addi	s0,sp,80
    80004264:	06c05c63          	blez	a2,800042dc <consolewrite+0x9c>
    80004268:	00060993          	mv	s3,a2
    8000426c:	00050a13          	mv	s4,a0
    80004270:	00058493          	mv	s1,a1
    80004274:	00000913          	li	s2,0
    80004278:	fff00a93          	li	s5,-1
    8000427c:	01c0006f          	j	80004298 <consolewrite+0x58>
    80004280:	fbf44503          	lbu	a0,-65(s0)
    80004284:	0019091b          	addiw	s2,s2,1
    80004288:	00148493          	addi	s1,s1,1
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	a9c080e7          	jalr	-1380(ra) # 80004d28 <uartputc>
    80004294:	03298063          	beq	s3,s2,800042b4 <consolewrite+0x74>
    80004298:	00048613          	mv	a2,s1
    8000429c:	00100693          	li	a3,1
    800042a0:	000a0593          	mv	a1,s4
    800042a4:	fbf40513          	addi	a0,s0,-65
    800042a8:	00000097          	auipc	ra,0x0
    800042ac:	9e4080e7          	jalr	-1564(ra) # 80003c8c <either_copyin>
    800042b0:	fd5518e3          	bne	a0,s5,80004280 <consolewrite+0x40>
    800042b4:	04813083          	ld	ra,72(sp)
    800042b8:	04013403          	ld	s0,64(sp)
    800042bc:	03813483          	ld	s1,56(sp)
    800042c0:	02813983          	ld	s3,40(sp)
    800042c4:	02013a03          	ld	s4,32(sp)
    800042c8:	01813a83          	ld	s5,24(sp)
    800042cc:	00090513          	mv	a0,s2
    800042d0:	03013903          	ld	s2,48(sp)
    800042d4:	05010113          	addi	sp,sp,80
    800042d8:	00008067          	ret
    800042dc:	00000913          	li	s2,0
    800042e0:	fd5ff06f          	j	800042b4 <consolewrite+0x74>

00000000800042e4 <consoleread>:
    800042e4:	f9010113          	addi	sp,sp,-112
    800042e8:	06813023          	sd	s0,96(sp)
    800042ec:	04913c23          	sd	s1,88(sp)
    800042f0:	05213823          	sd	s2,80(sp)
    800042f4:	05313423          	sd	s3,72(sp)
    800042f8:	05413023          	sd	s4,64(sp)
    800042fc:	03513c23          	sd	s5,56(sp)
    80004300:	03613823          	sd	s6,48(sp)
    80004304:	03713423          	sd	s7,40(sp)
    80004308:	03813023          	sd	s8,32(sp)
    8000430c:	06113423          	sd	ra,104(sp)
    80004310:	01913c23          	sd	s9,24(sp)
    80004314:	07010413          	addi	s0,sp,112
    80004318:	00060b93          	mv	s7,a2
    8000431c:	00050913          	mv	s2,a0
    80004320:	00058c13          	mv	s8,a1
    80004324:	00060b1b          	sext.w	s6,a2
    80004328:	00005497          	auipc	s1,0x5
    8000432c:	c2048493          	addi	s1,s1,-992 # 80008f48 <cons>
    80004330:	00400993          	li	s3,4
    80004334:	fff00a13          	li	s4,-1
    80004338:	00a00a93          	li	s5,10
    8000433c:	05705e63          	blez	s7,80004398 <consoleread+0xb4>
    80004340:	09c4a703          	lw	a4,156(s1)
    80004344:	0984a783          	lw	a5,152(s1)
    80004348:	0007071b          	sext.w	a4,a4
    8000434c:	08e78463          	beq	a5,a4,800043d4 <consoleread+0xf0>
    80004350:	07f7f713          	andi	a4,a5,127
    80004354:	00e48733          	add	a4,s1,a4
    80004358:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000435c:	0017869b          	addiw	a3,a5,1
    80004360:	08d4ac23          	sw	a3,152(s1)
    80004364:	00070c9b          	sext.w	s9,a4
    80004368:	0b370663          	beq	a4,s3,80004414 <consoleread+0x130>
    8000436c:	00100693          	li	a3,1
    80004370:	f9f40613          	addi	a2,s0,-97
    80004374:	000c0593          	mv	a1,s8
    80004378:	00090513          	mv	a0,s2
    8000437c:	f8e40fa3          	sb	a4,-97(s0)
    80004380:	00000097          	auipc	ra,0x0
    80004384:	8c0080e7          	jalr	-1856(ra) # 80003c40 <either_copyout>
    80004388:	01450863          	beq	a0,s4,80004398 <consoleread+0xb4>
    8000438c:	001c0c13          	addi	s8,s8,1
    80004390:	fffb8b9b          	addiw	s7,s7,-1
    80004394:	fb5c94e3          	bne	s9,s5,8000433c <consoleread+0x58>
    80004398:	000b851b          	sext.w	a0,s7
    8000439c:	06813083          	ld	ra,104(sp)
    800043a0:	06013403          	ld	s0,96(sp)
    800043a4:	05813483          	ld	s1,88(sp)
    800043a8:	05013903          	ld	s2,80(sp)
    800043ac:	04813983          	ld	s3,72(sp)
    800043b0:	04013a03          	ld	s4,64(sp)
    800043b4:	03813a83          	ld	s5,56(sp)
    800043b8:	02813b83          	ld	s7,40(sp)
    800043bc:	02013c03          	ld	s8,32(sp)
    800043c0:	01813c83          	ld	s9,24(sp)
    800043c4:	40ab053b          	subw	a0,s6,a0
    800043c8:	03013b03          	ld	s6,48(sp)
    800043cc:	07010113          	addi	sp,sp,112
    800043d0:	00008067          	ret
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	1d8080e7          	jalr	472(ra) # 800055ac <push_on>
    800043dc:	0984a703          	lw	a4,152(s1)
    800043e0:	09c4a783          	lw	a5,156(s1)
    800043e4:	0007879b          	sext.w	a5,a5
    800043e8:	fef70ce3          	beq	a4,a5,800043e0 <consoleread+0xfc>
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	234080e7          	jalr	564(ra) # 80005620 <pop_on>
    800043f4:	0984a783          	lw	a5,152(s1)
    800043f8:	07f7f713          	andi	a4,a5,127
    800043fc:	00e48733          	add	a4,s1,a4
    80004400:	01874703          	lbu	a4,24(a4)
    80004404:	0017869b          	addiw	a3,a5,1
    80004408:	08d4ac23          	sw	a3,152(s1)
    8000440c:	00070c9b          	sext.w	s9,a4
    80004410:	f5371ee3          	bne	a4,s3,8000436c <consoleread+0x88>
    80004414:	000b851b          	sext.w	a0,s7
    80004418:	f96bf2e3          	bgeu	s7,s6,8000439c <consoleread+0xb8>
    8000441c:	08f4ac23          	sw	a5,152(s1)
    80004420:	f7dff06f          	j	8000439c <consoleread+0xb8>

0000000080004424 <consputc>:
    80004424:	10000793          	li	a5,256
    80004428:	00f50663          	beq	a0,a5,80004434 <consputc+0x10>
    8000442c:	00001317          	auipc	t1,0x1
    80004430:	9f430067          	jr	-1548(t1) # 80004e20 <uartputc_sync>
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	00800513          	li	a0,8
    80004448:	00001097          	auipc	ra,0x1
    8000444c:	9d8080e7          	jalr	-1576(ra) # 80004e20 <uartputc_sync>
    80004450:	02000513          	li	a0,32
    80004454:	00001097          	auipc	ra,0x1
    80004458:	9cc080e7          	jalr	-1588(ra) # 80004e20 <uartputc_sync>
    8000445c:	00013403          	ld	s0,0(sp)
    80004460:	00813083          	ld	ra,8(sp)
    80004464:	00800513          	li	a0,8
    80004468:	01010113          	addi	sp,sp,16
    8000446c:	00001317          	auipc	t1,0x1
    80004470:	9b430067          	jr	-1612(t1) # 80004e20 <uartputc_sync>

0000000080004474 <consoleintr>:
    80004474:	fe010113          	addi	sp,sp,-32
    80004478:	00813823          	sd	s0,16(sp)
    8000447c:	00913423          	sd	s1,8(sp)
    80004480:	01213023          	sd	s2,0(sp)
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	02010413          	addi	s0,sp,32
    8000448c:	00005917          	auipc	s2,0x5
    80004490:	abc90913          	addi	s2,s2,-1348 # 80008f48 <cons>
    80004494:	00050493          	mv	s1,a0
    80004498:	00090513          	mv	a0,s2
    8000449c:	00001097          	auipc	ra,0x1
    800044a0:	e40080e7          	jalr	-448(ra) # 800052dc <acquire>
    800044a4:	02048c63          	beqz	s1,800044dc <consoleintr+0x68>
    800044a8:	0a092783          	lw	a5,160(s2)
    800044ac:	09892703          	lw	a4,152(s2)
    800044b0:	07f00693          	li	a3,127
    800044b4:	40e7873b          	subw	a4,a5,a4
    800044b8:	02e6e263          	bltu	a3,a4,800044dc <consoleintr+0x68>
    800044bc:	00d00713          	li	a4,13
    800044c0:	04e48063          	beq	s1,a4,80004500 <consoleintr+0x8c>
    800044c4:	07f7f713          	andi	a4,a5,127
    800044c8:	00e90733          	add	a4,s2,a4
    800044cc:	0017879b          	addiw	a5,a5,1
    800044d0:	0af92023          	sw	a5,160(s2)
    800044d4:	00970c23          	sb	s1,24(a4)
    800044d8:	08f92e23          	sw	a5,156(s2)
    800044dc:	01013403          	ld	s0,16(sp)
    800044e0:	01813083          	ld	ra,24(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	00013903          	ld	s2,0(sp)
    800044ec:	00005517          	auipc	a0,0x5
    800044f0:	a5c50513          	addi	a0,a0,-1444 # 80008f48 <cons>
    800044f4:	02010113          	addi	sp,sp,32
    800044f8:	00001317          	auipc	t1,0x1
    800044fc:	eb030067          	jr	-336(t1) # 800053a8 <release>
    80004500:	00a00493          	li	s1,10
    80004504:	fc1ff06f          	j	800044c4 <consoleintr+0x50>

0000000080004508 <consoleinit>:
    80004508:	fe010113          	addi	sp,sp,-32
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00913423          	sd	s1,8(sp)
    80004518:	02010413          	addi	s0,sp,32
    8000451c:	00005497          	auipc	s1,0x5
    80004520:	a2c48493          	addi	s1,s1,-1492 # 80008f48 <cons>
    80004524:	00048513          	mv	a0,s1
    80004528:	00002597          	auipc	a1,0x2
    8000452c:	db858593          	addi	a1,a1,-584 # 800062e0 <_ZZ14__print_uint64mE6digits+0x160>
    80004530:	00001097          	auipc	ra,0x1
    80004534:	d88080e7          	jalr	-632(ra) # 800052b8 <initlock>
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	7ac080e7          	jalr	1964(ra) # 80004ce4 <uartinit>
    80004540:	01813083          	ld	ra,24(sp)
    80004544:	01013403          	ld	s0,16(sp)
    80004548:	00000797          	auipc	a5,0x0
    8000454c:	d9c78793          	addi	a5,a5,-612 # 800042e4 <consoleread>
    80004550:	0af4bc23          	sd	a5,184(s1)
    80004554:	00000797          	auipc	a5,0x0
    80004558:	cec78793          	addi	a5,a5,-788 # 80004240 <consolewrite>
    8000455c:	0cf4b023          	sd	a5,192(s1)
    80004560:	00813483          	ld	s1,8(sp)
    80004564:	02010113          	addi	sp,sp,32
    80004568:	00008067          	ret

000000008000456c <console_read>:
    8000456c:	ff010113          	addi	sp,sp,-16
    80004570:	00813423          	sd	s0,8(sp)
    80004574:	01010413          	addi	s0,sp,16
    80004578:	00813403          	ld	s0,8(sp)
    8000457c:	00005317          	auipc	t1,0x5
    80004580:	a8433303          	ld	t1,-1404(t1) # 80009000 <devsw+0x10>
    80004584:	01010113          	addi	sp,sp,16
    80004588:	00030067          	jr	t1

000000008000458c <console_write>:
    8000458c:	ff010113          	addi	sp,sp,-16
    80004590:	00813423          	sd	s0,8(sp)
    80004594:	01010413          	addi	s0,sp,16
    80004598:	00813403          	ld	s0,8(sp)
    8000459c:	00005317          	auipc	t1,0x5
    800045a0:	a6c33303          	ld	t1,-1428(t1) # 80009008 <devsw+0x18>
    800045a4:	01010113          	addi	sp,sp,16
    800045a8:	00030067          	jr	t1

00000000800045ac <panic>:
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00113c23          	sd	ra,24(sp)
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00913423          	sd	s1,8(sp)
    800045bc:	02010413          	addi	s0,sp,32
    800045c0:	00050493          	mv	s1,a0
    800045c4:	00002517          	auipc	a0,0x2
    800045c8:	d2450513          	addi	a0,a0,-732 # 800062e8 <_ZZ14__print_uint64mE6digits+0x168>
    800045cc:	00005797          	auipc	a5,0x5
    800045d0:	ac07ae23          	sw	zero,-1316(a5) # 800090a8 <pr+0x18>
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	034080e7          	jalr	52(ra) # 80004608 <__printf>
    800045dc:	00048513          	mv	a0,s1
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	028080e7          	jalr	40(ra) # 80004608 <__printf>
    800045e8:	00002517          	auipc	a0,0x2
    800045ec:	ce050513          	addi	a0,a0,-800 # 800062c8 <_ZZ14__print_uint64mE6digits+0x148>
    800045f0:	00000097          	auipc	ra,0x0
    800045f4:	018080e7          	jalr	24(ra) # 80004608 <__printf>
    800045f8:	00100793          	li	a5,1
    800045fc:	00003717          	auipc	a4,0x3
    80004600:	f8f72e23          	sw	a5,-100(a4) # 80007598 <panicked>
    80004604:	0000006f          	j	80004604 <panic+0x58>

0000000080004608 <__printf>:
    80004608:	f3010113          	addi	sp,sp,-208
    8000460c:	08813023          	sd	s0,128(sp)
    80004610:	07313423          	sd	s3,104(sp)
    80004614:	09010413          	addi	s0,sp,144
    80004618:	05813023          	sd	s8,64(sp)
    8000461c:	08113423          	sd	ra,136(sp)
    80004620:	06913c23          	sd	s1,120(sp)
    80004624:	07213823          	sd	s2,112(sp)
    80004628:	07413023          	sd	s4,96(sp)
    8000462c:	05513c23          	sd	s5,88(sp)
    80004630:	05613823          	sd	s6,80(sp)
    80004634:	05713423          	sd	s7,72(sp)
    80004638:	03913c23          	sd	s9,56(sp)
    8000463c:	03a13823          	sd	s10,48(sp)
    80004640:	03b13423          	sd	s11,40(sp)
    80004644:	00005317          	auipc	t1,0x5
    80004648:	a4c30313          	addi	t1,t1,-1460 # 80009090 <pr>
    8000464c:	01832c03          	lw	s8,24(t1)
    80004650:	00b43423          	sd	a1,8(s0)
    80004654:	00c43823          	sd	a2,16(s0)
    80004658:	00d43c23          	sd	a3,24(s0)
    8000465c:	02e43023          	sd	a4,32(s0)
    80004660:	02f43423          	sd	a5,40(s0)
    80004664:	03043823          	sd	a6,48(s0)
    80004668:	03143c23          	sd	a7,56(s0)
    8000466c:	00050993          	mv	s3,a0
    80004670:	4a0c1663          	bnez	s8,80004b1c <__printf+0x514>
    80004674:	60098c63          	beqz	s3,80004c8c <__printf+0x684>
    80004678:	0009c503          	lbu	a0,0(s3)
    8000467c:	00840793          	addi	a5,s0,8
    80004680:	f6f43c23          	sd	a5,-136(s0)
    80004684:	00000493          	li	s1,0
    80004688:	22050063          	beqz	a0,800048a8 <__printf+0x2a0>
    8000468c:	00002a37          	lui	s4,0x2
    80004690:	00018ab7          	lui	s5,0x18
    80004694:	000f4b37          	lui	s6,0xf4
    80004698:	00989bb7          	lui	s7,0x989
    8000469c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800046a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800046a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800046a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800046ac:	00148c9b          	addiw	s9,s1,1
    800046b0:	02500793          	li	a5,37
    800046b4:	01998933          	add	s2,s3,s9
    800046b8:	38f51263          	bne	a0,a5,80004a3c <__printf+0x434>
    800046bc:	00094783          	lbu	a5,0(s2)
    800046c0:	00078c9b          	sext.w	s9,a5
    800046c4:	1e078263          	beqz	a5,800048a8 <__printf+0x2a0>
    800046c8:	0024849b          	addiw	s1,s1,2
    800046cc:	07000713          	li	a4,112
    800046d0:	00998933          	add	s2,s3,s1
    800046d4:	38e78a63          	beq	a5,a4,80004a68 <__printf+0x460>
    800046d8:	20f76863          	bltu	a4,a5,800048e8 <__printf+0x2e0>
    800046dc:	42a78863          	beq	a5,a0,80004b0c <__printf+0x504>
    800046e0:	06400713          	li	a4,100
    800046e4:	40e79663          	bne	a5,a4,80004af0 <__printf+0x4e8>
    800046e8:	f7843783          	ld	a5,-136(s0)
    800046ec:	0007a603          	lw	a2,0(a5)
    800046f0:	00878793          	addi	a5,a5,8
    800046f4:	f6f43c23          	sd	a5,-136(s0)
    800046f8:	42064a63          	bltz	a2,80004b2c <__printf+0x524>
    800046fc:	00a00713          	li	a4,10
    80004700:	02e677bb          	remuw	a5,a2,a4
    80004704:	00002d97          	auipc	s11,0x2
    80004708:	c0cd8d93          	addi	s11,s11,-1012 # 80006310 <digits>
    8000470c:	00900593          	li	a1,9
    80004710:	0006051b          	sext.w	a0,a2
    80004714:	00000c93          	li	s9,0
    80004718:	02079793          	slli	a5,a5,0x20
    8000471c:	0207d793          	srli	a5,a5,0x20
    80004720:	00fd87b3          	add	a5,s11,a5
    80004724:	0007c783          	lbu	a5,0(a5)
    80004728:	02e656bb          	divuw	a3,a2,a4
    8000472c:	f8f40023          	sb	a5,-128(s0)
    80004730:	14c5d863          	bge	a1,a2,80004880 <__printf+0x278>
    80004734:	06300593          	li	a1,99
    80004738:	00100c93          	li	s9,1
    8000473c:	02e6f7bb          	remuw	a5,a3,a4
    80004740:	02079793          	slli	a5,a5,0x20
    80004744:	0207d793          	srli	a5,a5,0x20
    80004748:	00fd87b3          	add	a5,s11,a5
    8000474c:	0007c783          	lbu	a5,0(a5)
    80004750:	02e6d73b          	divuw	a4,a3,a4
    80004754:	f8f400a3          	sb	a5,-127(s0)
    80004758:	12a5f463          	bgeu	a1,a0,80004880 <__printf+0x278>
    8000475c:	00a00693          	li	a3,10
    80004760:	00900593          	li	a1,9
    80004764:	02d777bb          	remuw	a5,a4,a3
    80004768:	02079793          	slli	a5,a5,0x20
    8000476c:	0207d793          	srli	a5,a5,0x20
    80004770:	00fd87b3          	add	a5,s11,a5
    80004774:	0007c503          	lbu	a0,0(a5)
    80004778:	02d757bb          	divuw	a5,a4,a3
    8000477c:	f8a40123          	sb	a0,-126(s0)
    80004780:	48e5f263          	bgeu	a1,a4,80004c04 <__printf+0x5fc>
    80004784:	06300513          	li	a0,99
    80004788:	02d7f5bb          	remuw	a1,a5,a3
    8000478c:	02059593          	slli	a1,a1,0x20
    80004790:	0205d593          	srli	a1,a1,0x20
    80004794:	00bd85b3          	add	a1,s11,a1
    80004798:	0005c583          	lbu	a1,0(a1)
    8000479c:	02d7d7bb          	divuw	a5,a5,a3
    800047a0:	f8b401a3          	sb	a1,-125(s0)
    800047a4:	48e57263          	bgeu	a0,a4,80004c28 <__printf+0x620>
    800047a8:	3e700513          	li	a0,999
    800047ac:	02d7f5bb          	remuw	a1,a5,a3
    800047b0:	02059593          	slli	a1,a1,0x20
    800047b4:	0205d593          	srli	a1,a1,0x20
    800047b8:	00bd85b3          	add	a1,s11,a1
    800047bc:	0005c583          	lbu	a1,0(a1)
    800047c0:	02d7d7bb          	divuw	a5,a5,a3
    800047c4:	f8b40223          	sb	a1,-124(s0)
    800047c8:	46e57663          	bgeu	a0,a4,80004c34 <__printf+0x62c>
    800047cc:	02d7f5bb          	remuw	a1,a5,a3
    800047d0:	02059593          	slli	a1,a1,0x20
    800047d4:	0205d593          	srli	a1,a1,0x20
    800047d8:	00bd85b3          	add	a1,s11,a1
    800047dc:	0005c583          	lbu	a1,0(a1)
    800047e0:	02d7d7bb          	divuw	a5,a5,a3
    800047e4:	f8b402a3          	sb	a1,-123(s0)
    800047e8:	46ea7863          	bgeu	s4,a4,80004c58 <__printf+0x650>
    800047ec:	02d7f5bb          	remuw	a1,a5,a3
    800047f0:	02059593          	slli	a1,a1,0x20
    800047f4:	0205d593          	srli	a1,a1,0x20
    800047f8:	00bd85b3          	add	a1,s11,a1
    800047fc:	0005c583          	lbu	a1,0(a1)
    80004800:	02d7d7bb          	divuw	a5,a5,a3
    80004804:	f8b40323          	sb	a1,-122(s0)
    80004808:	3eeaf863          	bgeu	s5,a4,80004bf8 <__printf+0x5f0>
    8000480c:	02d7f5bb          	remuw	a1,a5,a3
    80004810:	02059593          	slli	a1,a1,0x20
    80004814:	0205d593          	srli	a1,a1,0x20
    80004818:	00bd85b3          	add	a1,s11,a1
    8000481c:	0005c583          	lbu	a1,0(a1)
    80004820:	02d7d7bb          	divuw	a5,a5,a3
    80004824:	f8b403a3          	sb	a1,-121(s0)
    80004828:	42eb7e63          	bgeu	s6,a4,80004c64 <__printf+0x65c>
    8000482c:	02d7f5bb          	remuw	a1,a5,a3
    80004830:	02059593          	slli	a1,a1,0x20
    80004834:	0205d593          	srli	a1,a1,0x20
    80004838:	00bd85b3          	add	a1,s11,a1
    8000483c:	0005c583          	lbu	a1,0(a1)
    80004840:	02d7d7bb          	divuw	a5,a5,a3
    80004844:	f8b40423          	sb	a1,-120(s0)
    80004848:	42ebfc63          	bgeu	s7,a4,80004c80 <__printf+0x678>
    8000484c:	02079793          	slli	a5,a5,0x20
    80004850:	0207d793          	srli	a5,a5,0x20
    80004854:	00fd8db3          	add	s11,s11,a5
    80004858:	000dc703          	lbu	a4,0(s11)
    8000485c:	00a00793          	li	a5,10
    80004860:	00900c93          	li	s9,9
    80004864:	f8e404a3          	sb	a4,-119(s0)
    80004868:	00065c63          	bgez	a2,80004880 <__printf+0x278>
    8000486c:	f9040713          	addi	a4,s0,-112
    80004870:	00f70733          	add	a4,a4,a5
    80004874:	02d00693          	li	a3,45
    80004878:	fed70823          	sb	a3,-16(a4)
    8000487c:	00078c93          	mv	s9,a5
    80004880:	f8040793          	addi	a5,s0,-128
    80004884:	01978cb3          	add	s9,a5,s9
    80004888:	f7f40d13          	addi	s10,s0,-129
    8000488c:	000cc503          	lbu	a0,0(s9)
    80004890:	fffc8c93          	addi	s9,s9,-1
    80004894:	00000097          	auipc	ra,0x0
    80004898:	b90080e7          	jalr	-1136(ra) # 80004424 <consputc>
    8000489c:	ffac98e3          	bne	s9,s10,8000488c <__printf+0x284>
    800048a0:	00094503          	lbu	a0,0(s2)
    800048a4:	e00514e3          	bnez	a0,800046ac <__printf+0xa4>
    800048a8:	1a0c1663          	bnez	s8,80004a54 <__printf+0x44c>
    800048ac:	08813083          	ld	ra,136(sp)
    800048b0:	08013403          	ld	s0,128(sp)
    800048b4:	07813483          	ld	s1,120(sp)
    800048b8:	07013903          	ld	s2,112(sp)
    800048bc:	06813983          	ld	s3,104(sp)
    800048c0:	06013a03          	ld	s4,96(sp)
    800048c4:	05813a83          	ld	s5,88(sp)
    800048c8:	05013b03          	ld	s6,80(sp)
    800048cc:	04813b83          	ld	s7,72(sp)
    800048d0:	04013c03          	ld	s8,64(sp)
    800048d4:	03813c83          	ld	s9,56(sp)
    800048d8:	03013d03          	ld	s10,48(sp)
    800048dc:	02813d83          	ld	s11,40(sp)
    800048e0:	0d010113          	addi	sp,sp,208
    800048e4:	00008067          	ret
    800048e8:	07300713          	li	a4,115
    800048ec:	1ce78a63          	beq	a5,a4,80004ac0 <__printf+0x4b8>
    800048f0:	07800713          	li	a4,120
    800048f4:	1ee79e63          	bne	a5,a4,80004af0 <__printf+0x4e8>
    800048f8:	f7843783          	ld	a5,-136(s0)
    800048fc:	0007a703          	lw	a4,0(a5)
    80004900:	00878793          	addi	a5,a5,8
    80004904:	f6f43c23          	sd	a5,-136(s0)
    80004908:	28074263          	bltz	a4,80004b8c <__printf+0x584>
    8000490c:	00002d97          	auipc	s11,0x2
    80004910:	a04d8d93          	addi	s11,s11,-1532 # 80006310 <digits>
    80004914:	00f77793          	andi	a5,a4,15
    80004918:	00fd87b3          	add	a5,s11,a5
    8000491c:	0007c683          	lbu	a3,0(a5)
    80004920:	00f00613          	li	a2,15
    80004924:	0007079b          	sext.w	a5,a4
    80004928:	f8d40023          	sb	a3,-128(s0)
    8000492c:	0047559b          	srliw	a1,a4,0x4
    80004930:	0047569b          	srliw	a3,a4,0x4
    80004934:	00000c93          	li	s9,0
    80004938:	0ee65063          	bge	a2,a4,80004a18 <__printf+0x410>
    8000493c:	00f6f693          	andi	a3,a3,15
    80004940:	00dd86b3          	add	a3,s11,a3
    80004944:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004948:	0087d79b          	srliw	a5,a5,0x8
    8000494c:	00100c93          	li	s9,1
    80004950:	f8d400a3          	sb	a3,-127(s0)
    80004954:	0cb67263          	bgeu	a2,a1,80004a18 <__printf+0x410>
    80004958:	00f7f693          	andi	a3,a5,15
    8000495c:	00dd86b3          	add	a3,s11,a3
    80004960:	0006c583          	lbu	a1,0(a3)
    80004964:	00f00613          	li	a2,15
    80004968:	0047d69b          	srliw	a3,a5,0x4
    8000496c:	f8b40123          	sb	a1,-126(s0)
    80004970:	0047d593          	srli	a1,a5,0x4
    80004974:	28f67e63          	bgeu	a2,a5,80004c10 <__printf+0x608>
    80004978:	00f6f693          	andi	a3,a3,15
    8000497c:	00dd86b3          	add	a3,s11,a3
    80004980:	0006c503          	lbu	a0,0(a3)
    80004984:	0087d813          	srli	a6,a5,0x8
    80004988:	0087d69b          	srliw	a3,a5,0x8
    8000498c:	f8a401a3          	sb	a0,-125(s0)
    80004990:	28b67663          	bgeu	a2,a1,80004c1c <__printf+0x614>
    80004994:	00f6f693          	andi	a3,a3,15
    80004998:	00dd86b3          	add	a3,s11,a3
    8000499c:	0006c583          	lbu	a1,0(a3)
    800049a0:	00c7d513          	srli	a0,a5,0xc
    800049a4:	00c7d69b          	srliw	a3,a5,0xc
    800049a8:	f8b40223          	sb	a1,-124(s0)
    800049ac:	29067a63          	bgeu	a2,a6,80004c40 <__printf+0x638>
    800049b0:	00f6f693          	andi	a3,a3,15
    800049b4:	00dd86b3          	add	a3,s11,a3
    800049b8:	0006c583          	lbu	a1,0(a3)
    800049bc:	0107d813          	srli	a6,a5,0x10
    800049c0:	0107d69b          	srliw	a3,a5,0x10
    800049c4:	f8b402a3          	sb	a1,-123(s0)
    800049c8:	28a67263          	bgeu	a2,a0,80004c4c <__printf+0x644>
    800049cc:	00f6f693          	andi	a3,a3,15
    800049d0:	00dd86b3          	add	a3,s11,a3
    800049d4:	0006c683          	lbu	a3,0(a3)
    800049d8:	0147d79b          	srliw	a5,a5,0x14
    800049dc:	f8d40323          	sb	a3,-122(s0)
    800049e0:	21067663          	bgeu	a2,a6,80004bec <__printf+0x5e4>
    800049e4:	02079793          	slli	a5,a5,0x20
    800049e8:	0207d793          	srli	a5,a5,0x20
    800049ec:	00fd8db3          	add	s11,s11,a5
    800049f0:	000dc683          	lbu	a3,0(s11)
    800049f4:	00800793          	li	a5,8
    800049f8:	00700c93          	li	s9,7
    800049fc:	f8d403a3          	sb	a3,-121(s0)
    80004a00:	00075c63          	bgez	a4,80004a18 <__printf+0x410>
    80004a04:	f9040713          	addi	a4,s0,-112
    80004a08:	00f70733          	add	a4,a4,a5
    80004a0c:	02d00693          	li	a3,45
    80004a10:	fed70823          	sb	a3,-16(a4)
    80004a14:	00078c93          	mv	s9,a5
    80004a18:	f8040793          	addi	a5,s0,-128
    80004a1c:	01978cb3          	add	s9,a5,s9
    80004a20:	f7f40d13          	addi	s10,s0,-129
    80004a24:	000cc503          	lbu	a0,0(s9)
    80004a28:	fffc8c93          	addi	s9,s9,-1
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	9f8080e7          	jalr	-1544(ra) # 80004424 <consputc>
    80004a34:	ff9d18e3          	bne	s10,s9,80004a24 <__printf+0x41c>
    80004a38:	0100006f          	j	80004a48 <__printf+0x440>
    80004a3c:	00000097          	auipc	ra,0x0
    80004a40:	9e8080e7          	jalr	-1560(ra) # 80004424 <consputc>
    80004a44:	000c8493          	mv	s1,s9
    80004a48:	00094503          	lbu	a0,0(s2)
    80004a4c:	c60510e3          	bnez	a0,800046ac <__printf+0xa4>
    80004a50:	e40c0ee3          	beqz	s8,800048ac <__printf+0x2a4>
    80004a54:	00004517          	auipc	a0,0x4
    80004a58:	63c50513          	addi	a0,a0,1596 # 80009090 <pr>
    80004a5c:	00001097          	auipc	ra,0x1
    80004a60:	94c080e7          	jalr	-1716(ra) # 800053a8 <release>
    80004a64:	e49ff06f          	j	800048ac <__printf+0x2a4>
    80004a68:	f7843783          	ld	a5,-136(s0)
    80004a6c:	03000513          	li	a0,48
    80004a70:	01000d13          	li	s10,16
    80004a74:	00878713          	addi	a4,a5,8
    80004a78:	0007bc83          	ld	s9,0(a5)
    80004a7c:	f6e43c23          	sd	a4,-136(s0)
    80004a80:	00000097          	auipc	ra,0x0
    80004a84:	9a4080e7          	jalr	-1628(ra) # 80004424 <consputc>
    80004a88:	07800513          	li	a0,120
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	998080e7          	jalr	-1640(ra) # 80004424 <consputc>
    80004a94:	00002d97          	auipc	s11,0x2
    80004a98:	87cd8d93          	addi	s11,s11,-1924 # 80006310 <digits>
    80004a9c:	03ccd793          	srli	a5,s9,0x3c
    80004aa0:	00fd87b3          	add	a5,s11,a5
    80004aa4:	0007c503          	lbu	a0,0(a5)
    80004aa8:	fffd0d1b          	addiw	s10,s10,-1
    80004aac:	004c9c93          	slli	s9,s9,0x4
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	974080e7          	jalr	-1676(ra) # 80004424 <consputc>
    80004ab8:	fe0d12e3          	bnez	s10,80004a9c <__printf+0x494>
    80004abc:	f8dff06f          	j	80004a48 <__printf+0x440>
    80004ac0:	f7843783          	ld	a5,-136(s0)
    80004ac4:	0007bc83          	ld	s9,0(a5)
    80004ac8:	00878793          	addi	a5,a5,8
    80004acc:	f6f43c23          	sd	a5,-136(s0)
    80004ad0:	000c9a63          	bnez	s9,80004ae4 <__printf+0x4dc>
    80004ad4:	1080006f          	j	80004bdc <__printf+0x5d4>
    80004ad8:	001c8c93          	addi	s9,s9,1
    80004adc:	00000097          	auipc	ra,0x0
    80004ae0:	948080e7          	jalr	-1720(ra) # 80004424 <consputc>
    80004ae4:	000cc503          	lbu	a0,0(s9)
    80004ae8:	fe0518e3          	bnez	a0,80004ad8 <__printf+0x4d0>
    80004aec:	f5dff06f          	j	80004a48 <__printf+0x440>
    80004af0:	02500513          	li	a0,37
    80004af4:	00000097          	auipc	ra,0x0
    80004af8:	930080e7          	jalr	-1744(ra) # 80004424 <consputc>
    80004afc:	000c8513          	mv	a0,s9
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	924080e7          	jalr	-1756(ra) # 80004424 <consputc>
    80004b08:	f41ff06f          	j	80004a48 <__printf+0x440>
    80004b0c:	02500513          	li	a0,37
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	914080e7          	jalr	-1772(ra) # 80004424 <consputc>
    80004b18:	f31ff06f          	j	80004a48 <__printf+0x440>
    80004b1c:	00030513          	mv	a0,t1
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	7bc080e7          	jalr	1980(ra) # 800052dc <acquire>
    80004b28:	b4dff06f          	j	80004674 <__printf+0x6c>
    80004b2c:	40c0053b          	negw	a0,a2
    80004b30:	00a00713          	li	a4,10
    80004b34:	02e576bb          	remuw	a3,a0,a4
    80004b38:	00001d97          	auipc	s11,0x1
    80004b3c:	7d8d8d93          	addi	s11,s11,2008 # 80006310 <digits>
    80004b40:	ff700593          	li	a1,-9
    80004b44:	02069693          	slli	a3,a3,0x20
    80004b48:	0206d693          	srli	a3,a3,0x20
    80004b4c:	00dd86b3          	add	a3,s11,a3
    80004b50:	0006c683          	lbu	a3,0(a3)
    80004b54:	02e557bb          	divuw	a5,a0,a4
    80004b58:	f8d40023          	sb	a3,-128(s0)
    80004b5c:	10b65e63          	bge	a2,a1,80004c78 <__printf+0x670>
    80004b60:	06300593          	li	a1,99
    80004b64:	02e7f6bb          	remuw	a3,a5,a4
    80004b68:	02069693          	slli	a3,a3,0x20
    80004b6c:	0206d693          	srli	a3,a3,0x20
    80004b70:	00dd86b3          	add	a3,s11,a3
    80004b74:	0006c683          	lbu	a3,0(a3)
    80004b78:	02e7d73b          	divuw	a4,a5,a4
    80004b7c:	00200793          	li	a5,2
    80004b80:	f8d400a3          	sb	a3,-127(s0)
    80004b84:	bca5ece3          	bltu	a1,a0,8000475c <__printf+0x154>
    80004b88:	ce5ff06f          	j	8000486c <__printf+0x264>
    80004b8c:	40e007bb          	negw	a5,a4
    80004b90:	00001d97          	auipc	s11,0x1
    80004b94:	780d8d93          	addi	s11,s11,1920 # 80006310 <digits>
    80004b98:	00f7f693          	andi	a3,a5,15
    80004b9c:	00dd86b3          	add	a3,s11,a3
    80004ba0:	0006c583          	lbu	a1,0(a3)
    80004ba4:	ff100613          	li	a2,-15
    80004ba8:	0047d69b          	srliw	a3,a5,0x4
    80004bac:	f8b40023          	sb	a1,-128(s0)
    80004bb0:	0047d59b          	srliw	a1,a5,0x4
    80004bb4:	0ac75e63          	bge	a4,a2,80004c70 <__printf+0x668>
    80004bb8:	00f6f693          	andi	a3,a3,15
    80004bbc:	00dd86b3          	add	a3,s11,a3
    80004bc0:	0006c603          	lbu	a2,0(a3)
    80004bc4:	00f00693          	li	a3,15
    80004bc8:	0087d79b          	srliw	a5,a5,0x8
    80004bcc:	f8c400a3          	sb	a2,-127(s0)
    80004bd0:	d8b6e4e3          	bltu	a3,a1,80004958 <__printf+0x350>
    80004bd4:	00200793          	li	a5,2
    80004bd8:	e2dff06f          	j	80004a04 <__printf+0x3fc>
    80004bdc:	00001c97          	auipc	s9,0x1
    80004be0:	714c8c93          	addi	s9,s9,1812 # 800062f0 <_ZZ14__print_uint64mE6digits+0x170>
    80004be4:	02800513          	li	a0,40
    80004be8:	ef1ff06f          	j	80004ad8 <__printf+0x4d0>
    80004bec:	00700793          	li	a5,7
    80004bf0:	00600c93          	li	s9,6
    80004bf4:	e0dff06f          	j	80004a00 <__printf+0x3f8>
    80004bf8:	00700793          	li	a5,7
    80004bfc:	00600c93          	li	s9,6
    80004c00:	c69ff06f          	j	80004868 <__printf+0x260>
    80004c04:	00300793          	li	a5,3
    80004c08:	00200c93          	li	s9,2
    80004c0c:	c5dff06f          	j	80004868 <__printf+0x260>
    80004c10:	00300793          	li	a5,3
    80004c14:	00200c93          	li	s9,2
    80004c18:	de9ff06f          	j	80004a00 <__printf+0x3f8>
    80004c1c:	00400793          	li	a5,4
    80004c20:	00300c93          	li	s9,3
    80004c24:	dddff06f          	j	80004a00 <__printf+0x3f8>
    80004c28:	00400793          	li	a5,4
    80004c2c:	00300c93          	li	s9,3
    80004c30:	c39ff06f          	j	80004868 <__printf+0x260>
    80004c34:	00500793          	li	a5,5
    80004c38:	00400c93          	li	s9,4
    80004c3c:	c2dff06f          	j	80004868 <__printf+0x260>
    80004c40:	00500793          	li	a5,5
    80004c44:	00400c93          	li	s9,4
    80004c48:	db9ff06f          	j	80004a00 <__printf+0x3f8>
    80004c4c:	00600793          	li	a5,6
    80004c50:	00500c93          	li	s9,5
    80004c54:	dadff06f          	j	80004a00 <__printf+0x3f8>
    80004c58:	00600793          	li	a5,6
    80004c5c:	00500c93          	li	s9,5
    80004c60:	c09ff06f          	j	80004868 <__printf+0x260>
    80004c64:	00800793          	li	a5,8
    80004c68:	00700c93          	li	s9,7
    80004c6c:	bfdff06f          	j	80004868 <__printf+0x260>
    80004c70:	00100793          	li	a5,1
    80004c74:	d91ff06f          	j	80004a04 <__printf+0x3fc>
    80004c78:	00100793          	li	a5,1
    80004c7c:	bf1ff06f          	j	8000486c <__printf+0x264>
    80004c80:	00900793          	li	a5,9
    80004c84:	00800c93          	li	s9,8
    80004c88:	be1ff06f          	j	80004868 <__printf+0x260>
    80004c8c:	00001517          	auipc	a0,0x1
    80004c90:	66c50513          	addi	a0,a0,1644 # 800062f8 <_ZZ14__print_uint64mE6digits+0x178>
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	918080e7          	jalr	-1768(ra) # 800045ac <panic>

0000000080004c9c <printfinit>:
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	00113c23          	sd	ra,24(sp)
    80004cac:	02010413          	addi	s0,sp,32
    80004cb0:	00004497          	auipc	s1,0x4
    80004cb4:	3e048493          	addi	s1,s1,992 # 80009090 <pr>
    80004cb8:	00048513          	mv	a0,s1
    80004cbc:	00001597          	auipc	a1,0x1
    80004cc0:	64c58593          	addi	a1,a1,1612 # 80006308 <_ZZ14__print_uint64mE6digits+0x188>
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	5f4080e7          	jalr	1524(ra) # 800052b8 <initlock>
    80004ccc:	01813083          	ld	ra,24(sp)
    80004cd0:	01013403          	ld	s0,16(sp)
    80004cd4:	0004ac23          	sw	zero,24(s1)
    80004cd8:	00813483          	ld	s1,8(sp)
    80004cdc:	02010113          	addi	sp,sp,32
    80004ce0:	00008067          	ret

0000000080004ce4 <uartinit>:
    80004ce4:	ff010113          	addi	sp,sp,-16
    80004ce8:	00813423          	sd	s0,8(sp)
    80004cec:	01010413          	addi	s0,sp,16
    80004cf0:	100007b7          	lui	a5,0x10000
    80004cf4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004cf8:	f8000713          	li	a4,-128
    80004cfc:	00e781a3          	sb	a4,3(a5)
    80004d00:	00300713          	li	a4,3
    80004d04:	00e78023          	sb	a4,0(a5)
    80004d08:	000780a3          	sb	zero,1(a5)
    80004d0c:	00e781a3          	sb	a4,3(a5)
    80004d10:	00700693          	li	a3,7
    80004d14:	00d78123          	sb	a3,2(a5)
    80004d18:	00e780a3          	sb	a4,1(a5)
    80004d1c:	00813403          	ld	s0,8(sp)
    80004d20:	01010113          	addi	sp,sp,16
    80004d24:	00008067          	ret

0000000080004d28 <uartputc>:
    80004d28:	00003797          	auipc	a5,0x3
    80004d2c:	8707a783          	lw	a5,-1936(a5) # 80007598 <panicked>
    80004d30:	00078463          	beqz	a5,80004d38 <uartputc+0x10>
    80004d34:	0000006f          	j	80004d34 <uartputc+0xc>
    80004d38:	fd010113          	addi	sp,sp,-48
    80004d3c:	02813023          	sd	s0,32(sp)
    80004d40:	00913c23          	sd	s1,24(sp)
    80004d44:	01213823          	sd	s2,16(sp)
    80004d48:	01313423          	sd	s3,8(sp)
    80004d4c:	02113423          	sd	ra,40(sp)
    80004d50:	03010413          	addi	s0,sp,48
    80004d54:	00003917          	auipc	s2,0x3
    80004d58:	84c90913          	addi	s2,s2,-1972 # 800075a0 <uart_tx_r>
    80004d5c:	00093783          	ld	a5,0(s2)
    80004d60:	00003497          	auipc	s1,0x3
    80004d64:	84848493          	addi	s1,s1,-1976 # 800075a8 <uart_tx_w>
    80004d68:	0004b703          	ld	a4,0(s1)
    80004d6c:	02078693          	addi	a3,a5,32
    80004d70:	00050993          	mv	s3,a0
    80004d74:	02e69c63          	bne	a3,a4,80004dac <uartputc+0x84>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	834080e7          	jalr	-1996(ra) # 800055ac <push_on>
    80004d80:	00093783          	ld	a5,0(s2)
    80004d84:	0004b703          	ld	a4,0(s1)
    80004d88:	02078793          	addi	a5,a5,32
    80004d8c:	00e79463          	bne	a5,a4,80004d94 <uartputc+0x6c>
    80004d90:	0000006f          	j	80004d90 <uartputc+0x68>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	88c080e7          	jalr	-1908(ra) # 80005620 <pop_on>
    80004d9c:	00093783          	ld	a5,0(s2)
    80004da0:	0004b703          	ld	a4,0(s1)
    80004da4:	02078693          	addi	a3,a5,32
    80004da8:	fce688e3          	beq	a3,a4,80004d78 <uartputc+0x50>
    80004dac:	01f77693          	andi	a3,a4,31
    80004db0:	00004597          	auipc	a1,0x4
    80004db4:	30058593          	addi	a1,a1,768 # 800090b0 <uart_tx_buf>
    80004db8:	00d586b3          	add	a3,a1,a3
    80004dbc:	00170713          	addi	a4,a4,1
    80004dc0:	01368023          	sb	s3,0(a3)
    80004dc4:	00e4b023          	sd	a4,0(s1)
    80004dc8:	10000637          	lui	a2,0x10000
    80004dcc:	02f71063          	bne	a4,a5,80004dec <uartputc+0xc4>
    80004dd0:	0340006f          	j	80004e04 <uartputc+0xdc>
    80004dd4:	00074703          	lbu	a4,0(a4)
    80004dd8:	00f93023          	sd	a5,0(s2)
    80004ddc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004de0:	00093783          	ld	a5,0(s2)
    80004de4:	0004b703          	ld	a4,0(s1)
    80004de8:	00f70e63          	beq	a4,a5,80004e04 <uartputc+0xdc>
    80004dec:	00564683          	lbu	a3,5(a2)
    80004df0:	01f7f713          	andi	a4,a5,31
    80004df4:	00e58733          	add	a4,a1,a4
    80004df8:	0206f693          	andi	a3,a3,32
    80004dfc:	00178793          	addi	a5,a5,1
    80004e00:	fc069ae3          	bnez	a3,80004dd4 <uartputc+0xac>
    80004e04:	02813083          	ld	ra,40(sp)
    80004e08:	02013403          	ld	s0,32(sp)
    80004e0c:	01813483          	ld	s1,24(sp)
    80004e10:	01013903          	ld	s2,16(sp)
    80004e14:	00813983          	ld	s3,8(sp)
    80004e18:	03010113          	addi	sp,sp,48
    80004e1c:	00008067          	ret

0000000080004e20 <uartputc_sync>:
    80004e20:	ff010113          	addi	sp,sp,-16
    80004e24:	00813423          	sd	s0,8(sp)
    80004e28:	01010413          	addi	s0,sp,16
    80004e2c:	00002717          	auipc	a4,0x2
    80004e30:	76c72703          	lw	a4,1900(a4) # 80007598 <panicked>
    80004e34:	02071663          	bnez	a4,80004e60 <uartputc_sync+0x40>
    80004e38:	00050793          	mv	a5,a0
    80004e3c:	100006b7          	lui	a3,0x10000
    80004e40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004e44:	02077713          	andi	a4,a4,32
    80004e48:	fe070ce3          	beqz	a4,80004e40 <uartputc_sync+0x20>
    80004e4c:	0ff7f793          	andi	a5,a5,255
    80004e50:	00f68023          	sb	a5,0(a3)
    80004e54:	00813403          	ld	s0,8(sp)
    80004e58:	01010113          	addi	sp,sp,16
    80004e5c:	00008067          	ret
    80004e60:	0000006f          	j	80004e60 <uartputc_sync+0x40>

0000000080004e64 <uartstart>:
    80004e64:	ff010113          	addi	sp,sp,-16
    80004e68:	00813423          	sd	s0,8(sp)
    80004e6c:	01010413          	addi	s0,sp,16
    80004e70:	00002617          	auipc	a2,0x2
    80004e74:	73060613          	addi	a2,a2,1840 # 800075a0 <uart_tx_r>
    80004e78:	00002517          	auipc	a0,0x2
    80004e7c:	73050513          	addi	a0,a0,1840 # 800075a8 <uart_tx_w>
    80004e80:	00063783          	ld	a5,0(a2)
    80004e84:	00053703          	ld	a4,0(a0)
    80004e88:	04f70263          	beq	a4,a5,80004ecc <uartstart+0x68>
    80004e8c:	100005b7          	lui	a1,0x10000
    80004e90:	00004817          	auipc	a6,0x4
    80004e94:	22080813          	addi	a6,a6,544 # 800090b0 <uart_tx_buf>
    80004e98:	01c0006f          	j	80004eb4 <uartstart+0x50>
    80004e9c:	0006c703          	lbu	a4,0(a3)
    80004ea0:	00f63023          	sd	a5,0(a2)
    80004ea4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ea8:	00063783          	ld	a5,0(a2)
    80004eac:	00053703          	ld	a4,0(a0)
    80004eb0:	00f70e63          	beq	a4,a5,80004ecc <uartstart+0x68>
    80004eb4:	01f7f713          	andi	a4,a5,31
    80004eb8:	00e806b3          	add	a3,a6,a4
    80004ebc:	0055c703          	lbu	a4,5(a1)
    80004ec0:	00178793          	addi	a5,a5,1
    80004ec4:	02077713          	andi	a4,a4,32
    80004ec8:	fc071ae3          	bnez	a4,80004e9c <uartstart+0x38>
    80004ecc:	00813403          	ld	s0,8(sp)
    80004ed0:	01010113          	addi	sp,sp,16
    80004ed4:	00008067          	ret

0000000080004ed8 <uartgetc>:
    80004ed8:	ff010113          	addi	sp,sp,-16
    80004edc:	00813423          	sd	s0,8(sp)
    80004ee0:	01010413          	addi	s0,sp,16
    80004ee4:	10000737          	lui	a4,0x10000
    80004ee8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004eec:	0017f793          	andi	a5,a5,1
    80004ef0:	00078c63          	beqz	a5,80004f08 <uartgetc+0x30>
    80004ef4:	00074503          	lbu	a0,0(a4)
    80004ef8:	0ff57513          	andi	a0,a0,255
    80004efc:	00813403          	ld	s0,8(sp)
    80004f00:	01010113          	addi	sp,sp,16
    80004f04:	00008067          	ret
    80004f08:	fff00513          	li	a0,-1
    80004f0c:	ff1ff06f          	j	80004efc <uartgetc+0x24>

0000000080004f10 <uartintr>:
    80004f10:	100007b7          	lui	a5,0x10000
    80004f14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004f18:	0017f793          	andi	a5,a5,1
    80004f1c:	0a078463          	beqz	a5,80004fc4 <uartintr+0xb4>
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00913423          	sd	s1,8(sp)
    80004f2c:	00113c23          	sd	ra,24(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	100004b7          	lui	s1,0x10000
    80004f38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004f3c:	0ff57513          	andi	a0,a0,255
    80004f40:	fffff097          	auipc	ra,0xfffff
    80004f44:	534080e7          	jalr	1332(ra) # 80004474 <consoleintr>
    80004f48:	0054c783          	lbu	a5,5(s1)
    80004f4c:	0017f793          	andi	a5,a5,1
    80004f50:	fe0794e3          	bnez	a5,80004f38 <uartintr+0x28>
    80004f54:	00002617          	auipc	a2,0x2
    80004f58:	64c60613          	addi	a2,a2,1612 # 800075a0 <uart_tx_r>
    80004f5c:	00002517          	auipc	a0,0x2
    80004f60:	64c50513          	addi	a0,a0,1612 # 800075a8 <uart_tx_w>
    80004f64:	00063783          	ld	a5,0(a2)
    80004f68:	00053703          	ld	a4,0(a0)
    80004f6c:	04f70263          	beq	a4,a5,80004fb0 <uartintr+0xa0>
    80004f70:	100005b7          	lui	a1,0x10000
    80004f74:	00004817          	auipc	a6,0x4
    80004f78:	13c80813          	addi	a6,a6,316 # 800090b0 <uart_tx_buf>
    80004f7c:	01c0006f          	j	80004f98 <uartintr+0x88>
    80004f80:	0006c703          	lbu	a4,0(a3)
    80004f84:	00f63023          	sd	a5,0(a2)
    80004f88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f8c:	00063783          	ld	a5,0(a2)
    80004f90:	00053703          	ld	a4,0(a0)
    80004f94:	00f70e63          	beq	a4,a5,80004fb0 <uartintr+0xa0>
    80004f98:	01f7f713          	andi	a4,a5,31
    80004f9c:	00e806b3          	add	a3,a6,a4
    80004fa0:	0055c703          	lbu	a4,5(a1)
    80004fa4:	00178793          	addi	a5,a5,1
    80004fa8:	02077713          	andi	a4,a4,32
    80004fac:	fc071ae3          	bnez	a4,80004f80 <uartintr+0x70>
    80004fb0:	01813083          	ld	ra,24(sp)
    80004fb4:	01013403          	ld	s0,16(sp)
    80004fb8:	00813483          	ld	s1,8(sp)
    80004fbc:	02010113          	addi	sp,sp,32
    80004fc0:	00008067          	ret
    80004fc4:	00002617          	auipc	a2,0x2
    80004fc8:	5dc60613          	addi	a2,a2,1500 # 800075a0 <uart_tx_r>
    80004fcc:	00002517          	auipc	a0,0x2
    80004fd0:	5dc50513          	addi	a0,a0,1500 # 800075a8 <uart_tx_w>
    80004fd4:	00063783          	ld	a5,0(a2)
    80004fd8:	00053703          	ld	a4,0(a0)
    80004fdc:	04f70263          	beq	a4,a5,80005020 <uartintr+0x110>
    80004fe0:	100005b7          	lui	a1,0x10000
    80004fe4:	00004817          	auipc	a6,0x4
    80004fe8:	0cc80813          	addi	a6,a6,204 # 800090b0 <uart_tx_buf>
    80004fec:	01c0006f          	j	80005008 <uartintr+0xf8>
    80004ff0:	0006c703          	lbu	a4,0(a3)
    80004ff4:	00f63023          	sd	a5,0(a2)
    80004ff8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ffc:	00063783          	ld	a5,0(a2)
    80005000:	00053703          	ld	a4,0(a0)
    80005004:	02f70063          	beq	a4,a5,80005024 <uartintr+0x114>
    80005008:	01f7f713          	andi	a4,a5,31
    8000500c:	00e806b3          	add	a3,a6,a4
    80005010:	0055c703          	lbu	a4,5(a1)
    80005014:	00178793          	addi	a5,a5,1
    80005018:	02077713          	andi	a4,a4,32
    8000501c:	fc071ae3          	bnez	a4,80004ff0 <uartintr+0xe0>
    80005020:	00008067          	ret
    80005024:	00008067          	ret

0000000080005028 <kinit>:
    80005028:	fc010113          	addi	sp,sp,-64
    8000502c:	02913423          	sd	s1,40(sp)
    80005030:	fffff7b7          	lui	a5,0xfffff
    80005034:	00005497          	auipc	s1,0x5
    80005038:	09b48493          	addi	s1,s1,155 # 8000a0cf <end+0xfff>
    8000503c:	02813823          	sd	s0,48(sp)
    80005040:	01313c23          	sd	s3,24(sp)
    80005044:	00f4f4b3          	and	s1,s1,a5
    80005048:	02113c23          	sd	ra,56(sp)
    8000504c:	03213023          	sd	s2,32(sp)
    80005050:	01413823          	sd	s4,16(sp)
    80005054:	01513423          	sd	s5,8(sp)
    80005058:	04010413          	addi	s0,sp,64
    8000505c:	000017b7          	lui	a5,0x1
    80005060:	01100993          	li	s3,17
    80005064:	00f487b3          	add	a5,s1,a5
    80005068:	01b99993          	slli	s3,s3,0x1b
    8000506c:	06f9e063          	bltu	s3,a5,800050cc <kinit+0xa4>
    80005070:	00004a97          	auipc	s5,0x4
    80005074:	060a8a93          	addi	s5,s5,96 # 800090d0 <end>
    80005078:	0754ec63          	bltu	s1,s5,800050f0 <kinit+0xc8>
    8000507c:	0734fa63          	bgeu	s1,s3,800050f0 <kinit+0xc8>
    80005080:	00088a37          	lui	s4,0x88
    80005084:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005088:	00002917          	auipc	s2,0x2
    8000508c:	52890913          	addi	s2,s2,1320 # 800075b0 <kmem>
    80005090:	00ca1a13          	slli	s4,s4,0xc
    80005094:	0140006f          	j	800050a8 <kinit+0x80>
    80005098:	000017b7          	lui	a5,0x1
    8000509c:	00f484b3          	add	s1,s1,a5
    800050a0:	0554e863          	bltu	s1,s5,800050f0 <kinit+0xc8>
    800050a4:	0534f663          	bgeu	s1,s3,800050f0 <kinit+0xc8>
    800050a8:	00001637          	lui	a2,0x1
    800050ac:	00100593          	li	a1,1
    800050b0:	00048513          	mv	a0,s1
    800050b4:	00000097          	auipc	ra,0x0
    800050b8:	5e4080e7          	jalr	1508(ra) # 80005698 <__memset>
    800050bc:	00093783          	ld	a5,0(s2)
    800050c0:	00f4b023          	sd	a5,0(s1)
    800050c4:	00993023          	sd	s1,0(s2)
    800050c8:	fd4498e3          	bne	s1,s4,80005098 <kinit+0x70>
    800050cc:	03813083          	ld	ra,56(sp)
    800050d0:	03013403          	ld	s0,48(sp)
    800050d4:	02813483          	ld	s1,40(sp)
    800050d8:	02013903          	ld	s2,32(sp)
    800050dc:	01813983          	ld	s3,24(sp)
    800050e0:	01013a03          	ld	s4,16(sp)
    800050e4:	00813a83          	ld	s5,8(sp)
    800050e8:	04010113          	addi	sp,sp,64
    800050ec:	00008067          	ret
    800050f0:	00001517          	auipc	a0,0x1
    800050f4:	23850513          	addi	a0,a0,568 # 80006328 <digits+0x18>
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	4b4080e7          	jalr	1204(ra) # 800045ac <panic>

0000000080005100 <freerange>:
    80005100:	fc010113          	addi	sp,sp,-64
    80005104:	000017b7          	lui	a5,0x1
    80005108:	02913423          	sd	s1,40(sp)
    8000510c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005110:	009504b3          	add	s1,a0,s1
    80005114:	fffff537          	lui	a0,0xfffff
    80005118:	02813823          	sd	s0,48(sp)
    8000511c:	02113c23          	sd	ra,56(sp)
    80005120:	03213023          	sd	s2,32(sp)
    80005124:	01313c23          	sd	s3,24(sp)
    80005128:	01413823          	sd	s4,16(sp)
    8000512c:	01513423          	sd	s5,8(sp)
    80005130:	01613023          	sd	s6,0(sp)
    80005134:	04010413          	addi	s0,sp,64
    80005138:	00a4f4b3          	and	s1,s1,a0
    8000513c:	00f487b3          	add	a5,s1,a5
    80005140:	06f5e463          	bltu	a1,a5,800051a8 <freerange+0xa8>
    80005144:	00004a97          	auipc	s5,0x4
    80005148:	f8ca8a93          	addi	s5,s5,-116 # 800090d0 <end>
    8000514c:	0954e263          	bltu	s1,s5,800051d0 <freerange+0xd0>
    80005150:	01100993          	li	s3,17
    80005154:	01b99993          	slli	s3,s3,0x1b
    80005158:	0734fc63          	bgeu	s1,s3,800051d0 <freerange+0xd0>
    8000515c:	00058a13          	mv	s4,a1
    80005160:	00002917          	auipc	s2,0x2
    80005164:	45090913          	addi	s2,s2,1104 # 800075b0 <kmem>
    80005168:	00002b37          	lui	s6,0x2
    8000516c:	0140006f          	j	80005180 <freerange+0x80>
    80005170:	000017b7          	lui	a5,0x1
    80005174:	00f484b3          	add	s1,s1,a5
    80005178:	0554ec63          	bltu	s1,s5,800051d0 <freerange+0xd0>
    8000517c:	0534fa63          	bgeu	s1,s3,800051d0 <freerange+0xd0>
    80005180:	00001637          	lui	a2,0x1
    80005184:	00100593          	li	a1,1
    80005188:	00048513          	mv	a0,s1
    8000518c:	00000097          	auipc	ra,0x0
    80005190:	50c080e7          	jalr	1292(ra) # 80005698 <__memset>
    80005194:	00093703          	ld	a4,0(s2)
    80005198:	016487b3          	add	a5,s1,s6
    8000519c:	00e4b023          	sd	a4,0(s1)
    800051a0:	00993023          	sd	s1,0(s2)
    800051a4:	fcfa76e3          	bgeu	s4,a5,80005170 <freerange+0x70>
    800051a8:	03813083          	ld	ra,56(sp)
    800051ac:	03013403          	ld	s0,48(sp)
    800051b0:	02813483          	ld	s1,40(sp)
    800051b4:	02013903          	ld	s2,32(sp)
    800051b8:	01813983          	ld	s3,24(sp)
    800051bc:	01013a03          	ld	s4,16(sp)
    800051c0:	00813a83          	ld	s5,8(sp)
    800051c4:	00013b03          	ld	s6,0(sp)
    800051c8:	04010113          	addi	sp,sp,64
    800051cc:	00008067          	ret
    800051d0:	00001517          	auipc	a0,0x1
    800051d4:	15850513          	addi	a0,a0,344 # 80006328 <digits+0x18>
    800051d8:	fffff097          	auipc	ra,0xfffff
    800051dc:	3d4080e7          	jalr	980(ra) # 800045ac <panic>

00000000800051e0 <kfree>:
    800051e0:	fe010113          	addi	sp,sp,-32
    800051e4:	00813823          	sd	s0,16(sp)
    800051e8:	00113c23          	sd	ra,24(sp)
    800051ec:	00913423          	sd	s1,8(sp)
    800051f0:	02010413          	addi	s0,sp,32
    800051f4:	03451793          	slli	a5,a0,0x34
    800051f8:	04079c63          	bnez	a5,80005250 <kfree+0x70>
    800051fc:	00004797          	auipc	a5,0x4
    80005200:	ed478793          	addi	a5,a5,-300 # 800090d0 <end>
    80005204:	00050493          	mv	s1,a0
    80005208:	04f56463          	bltu	a0,a5,80005250 <kfree+0x70>
    8000520c:	01100793          	li	a5,17
    80005210:	01b79793          	slli	a5,a5,0x1b
    80005214:	02f57e63          	bgeu	a0,a5,80005250 <kfree+0x70>
    80005218:	00001637          	lui	a2,0x1
    8000521c:	00100593          	li	a1,1
    80005220:	00000097          	auipc	ra,0x0
    80005224:	478080e7          	jalr	1144(ra) # 80005698 <__memset>
    80005228:	00002797          	auipc	a5,0x2
    8000522c:	38878793          	addi	a5,a5,904 # 800075b0 <kmem>
    80005230:	0007b703          	ld	a4,0(a5)
    80005234:	01813083          	ld	ra,24(sp)
    80005238:	01013403          	ld	s0,16(sp)
    8000523c:	00e4b023          	sd	a4,0(s1)
    80005240:	0097b023          	sd	s1,0(a5)
    80005244:	00813483          	ld	s1,8(sp)
    80005248:	02010113          	addi	sp,sp,32
    8000524c:	00008067          	ret
    80005250:	00001517          	auipc	a0,0x1
    80005254:	0d850513          	addi	a0,a0,216 # 80006328 <digits+0x18>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	354080e7          	jalr	852(ra) # 800045ac <panic>

0000000080005260 <kalloc>:
    80005260:	fe010113          	addi	sp,sp,-32
    80005264:	00813823          	sd	s0,16(sp)
    80005268:	00913423          	sd	s1,8(sp)
    8000526c:	00113c23          	sd	ra,24(sp)
    80005270:	02010413          	addi	s0,sp,32
    80005274:	00002797          	auipc	a5,0x2
    80005278:	33c78793          	addi	a5,a5,828 # 800075b0 <kmem>
    8000527c:	0007b483          	ld	s1,0(a5)
    80005280:	02048063          	beqz	s1,800052a0 <kalloc+0x40>
    80005284:	0004b703          	ld	a4,0(s1)
    80005288:	00001637          	lui	a2,0x1
    8000528c:	00500593          	li	a1,5
    80005290:	00048513          	mv	a0,s1
    80005294:	00e7b023          	sd	a4,0(a5)
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	400080e7          	jalr	1024(ra) # 80005698 <__memset>
    800052a0:	01813083          	ld	ra,24(sp)
    800052a4:	01013403          	ld	s0,16(sp)
    800052a8:	00048513          	mv	a0,s1
    800052ac:	00813483          	ld	s1,8(sp)
    800052b0:	02010113          	addi	sp,sp,32
    800052b4:	00008067          	ret

00000000800052b8 <initlock>:
    800052b8:	ff010113          	addi	sp,sp,-16
    800052bc:	00813423          	sd	s0,8(sp)
    800052c0:	01010413          	addi	s0,sp,16
    800052c4:	00813403          	ld	s0,8(sp)
    800052c8:	00b53423          	sd	a1,8(a0)
    800052cc:	00052023          	sw	zero,0(a0)
    800052d0:	00053823          	sd	zero,16(a0)
    800052d4:	01010113          	addi	sp,sp,16
    800052d8:	00008067          	ret

00000000800052dc <acquire>:
    800052dc:	fe010113          	addi	sp,sp,-32
    800052e0:	00813823          	sd	s0,16(sp)
    800052e4:	00913423          	sd	s1,8(sp)
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	01213023          	sd	s2,0(sp)
    800052f0:	02010413          	addi	s0,sp,32
    800052f4:	00050493          	mv	s1,a0
    800052f8:	10002973          	csrr	s2,sstatus
    800052fc:	100027f3          	csrr	a5,sstatus
    80005300:	ffd7f793          	andi	a5,a5,-3
    80005304:	10079073          	csrw	sstatus,a5
    80005308:	fffff097          	auipc	ra,0xfffff
    8000530c:	8ec080e7          	jalr	-1812(ra) # 80003bf4 <mycpu>
    80005310:	07852783          	lw	a5,120(a0)
    80005314:	06078e63          	beqz	a5,80005390 <acquire+0xb4>
    80005318:	fffff097          	auipc	ra,0xfffff
    8000531c:	8dc080e7          	jalr	-1828(ra) # 80003bf4 <mycpu>
    80005320:	07852783          	lw	a5,120(a0)
    80005324:	0004a703          	lw	a4,0(s1)
    80005328:	0017879b          	addiw	a5,a5,1
    8000532c:	06f52c23          	sw	a5,120(a0)
    80005330:	04071063          	bnez	a4,80005370 <acquire+0x94>
    80005334:	00100713          	li	a4,1
    80005338:	00070793          	mv	a5,a4
    8000533c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005340:	0007879b          	sext.w	a5,a5
    80005344:	fe079ae3          	bnez	a5,80005338 <acquire+0x5c>
    80005348:	0ff0000f          	fence
    8000534c:	fffff097          	auipc	ra,0xfffff
    80005350:	8a8080e7          	jalr	-1880(ra) # 80003bf4 <mycpu>
    80005354:	01813083          	ld	ra,24(sp)
    80005358:	01013403          	ld	s0,16(sp)
    8000535c:	00a4b823          	sd	a0,16(s1)
    80005360:	00013903          	ld	s2,0(sp)
    80005364:	00813483          	ld	s1,8(sp)
    80005368:	02010113          	addi	sp,sp,32
    8000536c:	00008067          	ret
    80005370:	0104b903          	ld	s2,16(s1)
    80005374:	fffff097          	auipc	ra,0xfffff
    80005378:	880080e7          	jalr	-1920(ra) # 80003bf4 <mycpu>
    8000537c:	faa91ce3          	bne	s2,a0,80005334 <acquire+0x58>
    80005380:	00001517          	auipc	a0,0x1
    80005384:	fb050513          	addi	a0,a0,-80 # 80006330 <digits+0x20>
    80005388:	fffff097          	auipc	ra,0xfffff
    8000538c:	224080e7          	jalr	548(ra) # 800045ac <panic>
    80005390:	00195913          	srli	s2,s2,0x1
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	860080e7          	jalr	-1952(ra) # 80003bf4 <mycpu>
    8000539c:	00197913          	andi	s2,s2,1
    800053a0:	07252e23          	sw	s2,124(a0)
    800053a4:	f75ff06f          	j	80005318 <acquire+0x3c>

00000000800053a8 <release>:
    800053a8:	fe010113          	addi	sp,sp,-32
    800053ac:	00813823          	sd	s0,16(sp)
    800053b0:	00113c23          	sd	ra,24(sp)
    800053b4:	00913423          	sd	s1,8(sp)
    800053b8:	01213023          	sd	s2,0(sp)
    800053bc:	02010413          	addi	s0,sp,32
    800053c0:	00052783          	lw	a5,0(a0)
    800053c4:	00079a63          	bnez	a5,800053d8 <release+0x30>
    800053c8:	00001517          	auipc	a0,0x1
    800053cc:	f7050513          	addi	a0,a0,-144 # 80006338 <digits+0x28>
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	1dc080e7          	jalr	476(ra) # 800045ac <panic>
    800053d8:	01053903          	ld	s2,16(a0)
    800053dc:	00050493          	mv	s1,a0
    800053e0:	fffff097          	auipc	ra,0xfffff
    800053e4:	814080e7          	jalr	-2028(ra) # 80003bf4 <mycpu>
    800053e8:	fea910e3          	bne	s2,a0,800053c8 <release+0x20>
    800053ec:	0004b823          	sd	zero,16(s1)
    800053f0:	0ff0000f          	fence
    800053f4:	0f50000f          	fence	iorw,ow
    800053f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	7f8080e7          	jalr	2040(ra) # 80003bf4 <mycpu>
    80005404:	100027f3          	csrr	a5,sstatus
    80005408:	0027f793          	andi	a5,a5,2
    8000540c:	04079a63          	bnez	a5,80005460 <release+0xb8>
    80005410:	07852783          	lw	a5,120(a0)
    80005414:	02f05e63          	blez	a5,80005450 <release+0xa8>
    80005418:	fff7871b          	addiw	a4,a5,-1
    8000541c:	06e52c23          	sw	a4,120(a0)
    80005420:	00071c63          	bnez	a4,80005438 <release+0x90>
    80005424:	07c52783          	lw	a5,124(a0)
    80005428:	00078863          	beqz	a5,80005438 <release+0x90>
    8000542c:	100027f3          	csrr	a5,sstatus
    80005430:	0027e793          	ori	a5,a5,2
    80005434:	10079073          	csrw	sstatus,a5
    80005438:	01813083          	ld	ra,24(sp)
    8000543c:	01013403          	ld	s0,16(sp)
    80005440:	00813483          	ld	s1,8(sp)
    80005444:	00013903          	ld	s2,0(sp)
    80005448:	02010113          	addi	sp,sp,32
    8000544c:	00008067          	ret
    80005450:	00001517          	auipc	a0,0x1
    80005454:	f0850513          	addi	a0,a0,-248 # 80006358 <digits+0x48>
    80005458:	fffff097          	auipc	ra,0xfffff
    8000545c:	154080e7          	jalr	340(ra) # 800045ac <panic>
    80005460:	00001517          	auipc	a0,0x1
    80005464:	ee050513          	addi	a0,a0,-288 # 80006340 <digits+0x30>
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	144080e7          	jalr	324(ra) # 800045ac <panic>

0000000080005470 <holding>:
    80005470:	00052783          	lw	a5,0(a0)
    80005474:	00079663          	bnez	a5,80005480 <holding+0x10>
    80005478:	00000513          	li	a0,0
    8000547c:	00008067          	ret
    80005480:	fe010113          	addi	sp,sp,-32
    80005484:	00813823          	sd	s0,16(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	00113c23          	sd	ra,24(sp)
    80005490:	02010413          	addi	s0,sp,32
    80005494:	01053483          	ld	s1,16(a0)
    80005498:	ffffe097          	auipc	ra,0xffffe
    8000549c:	75c080e7          	jalr	1884(ra) # 80003bf4 <mycpu>
    800054a0:	01813083          	ld	ra,24(sp)
    800054a4:	01013403          	ld	s0,16(sp)
    800054a8:	40a48533          	sub	a0,s1,a0
    800054ac:	00153513          	seqz	a0,a0
    800054b0:	00813483          	ld	s1,8(sp)
    800054b4:	02010113          	addi	sp,sp,32
    800054b8:	00008067          	ret

00000000800054bc <push_off>:
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00813823          	sd	s0,16(sp)
    800054c4:	00113c23          	sd	ra,24(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	02010413          	addi	s0,sp,32
    800054d0:	100024f3          	csrr	s1,sstatus
    800054d4:	100027f3          	csrr	a5,sstatus
    800054d8:	ffd7f793          	andi	a5,a5,-3
    800054dc:	10079073          	csrw	sstatus,a5
    800054e0:	ffffe097          	auipc	ra,0xffffe
    800054e4:	714080e7          	jalr	1812(ra) # 80003bf4 <mycpu>
    800054e8:	07852783          	lw	a5,120(a0)
    800054ec:	02078663          	beqz	a5,80005518 <push_off+0x5c>
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	704080e7          	jalr	1796(ra) # 80003bf4 <mycpu>
    800054f8:	07852783          	lw	a5,120(a0)
    800054fc:	01813083          	ld	ra,24(sp)
    80005500:	01013403          	ld	s0,16(sp)
    80005504:	0017879b          	addiw	a5,a5,1
    80005508:	06f52c23          	sw	a5,120(a0)
    8000550c:	00813483          	ld	s1,8(sp)
    80005510:	02010113          	addi	sp,sp,32
    80005514:	00008067          	ret
    80005518:	0014d493          	srli	s1,s1,0x1
    8000551c:	ffffe097          	auipc	ra,0xffffe
    80005520:	6d8080e7          	jalr	1752(ra) # 80003bf4 <mycpu>
    80005524:	0014f493          	andi	s1,s1,1
    80005528:	06952e23          	sw	s1,124(a0)
    8000552c:	fc5ff06f          	j	800054f0 <push_off+0x34>

0000000080005530 <pop_off>:
    80005530:	ff010113          	addi	sp,sp,-16
    80005534:	00813023          	sd	s0,0(sp)
    80005538:	00113423          	sd	ra,8(sp)
    8000553c:	01010413          	addi	s0,sp,16
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	6b4080e7          	jalr	1716(ra) # 80003bf4 <mycpu>
    80005548:	100027f3          	csrr	a5,sstatus
    8000554c:	0027f793          	andi	a5,a5,2
    80005550:	04079663          	bnez	a5,8000559c <pop_off+0x6c>
    80005554:	07852783          	lw	a5,120(a0)
    80005558:	02f05a63          	blez	a5,8000558c <pop_off+0x5c>
    8000555c:	fff7871b          	addiw	a4,a5,-1
    80005560:	06e52c23          	sw	a4,120(a0)
    80005564:	00071c63          	bnez	a4,8000557c <pop_off+0x4c>
    80005568:	07c52783          	lw	a5,124(a0)
    8000556c:	00078863          	beqz	a5,8000557c <pop_off+0x4c>
    80005570:	100027f3          	csrr	a5,sstatus
    80005574:	0027e793          	ori	a5,a5,2
    80005578:	10079073          	csrw	sstatus,a5
    8000557c:	00813083          	ld	ra,8(sp)
    80005580:	00013403          	ld	s0,0(sp)
    80005584:	01010113          	addi	sp,sp,16
    80005588:	00008067          	ret
    8000558c:	00001517          	auipc	a0,0x1
    80005590:	dcc50513          	addi	a0,a0,-564 # 80006358 <digits+0x48>
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	018080e7          	jalr	24(ra) # 800045ac <panic>
    8000559c:	00001517          	auipc	a0,0x1
    800055a0:	da450513          	addi	a0,a0,-604 # 80006340 <digits+0x30>
    800055a4:	fffff097          	auipc	ra,0xfffff
    800055a8:	008080e7          	jalr	8(ra) # 800045ac <panic>

00000000800055ac <push_on>:
    800055ac:	fe010113          	addi	sp,sp,-32
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00113c23          	sd	ra,24(sp)
    800055b8:	00913423          	sd	s1,8(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	100024f3          	csrr	s1,sstatus
    800055c4:	100027f3          	csrr	a5,sstatus
    800055c8:	0027e793          	ori	a5,a5,2
    800055cc:	10079073          	csrw	sstatus,a5
    800055d0:	ffffe097          	auipc	ra,0xffffe
    800055d4:	624080e7          	jalr	1572(ra) # 80003bf4 <mycpu>
    800055d8:	07852783          	lw	a5,120(a0)
    800055dc:	02078663          	beqz	a5,80005608 <push_on+0x5c>
    800055e0:	ffffe097          	auipc	ra,0xffffe
    800055e4:	614080e7          	jalr	1556(ra) # 80003bf4 <mycpu>
    800055e8:	07852783          	lw	a5,120(a0)
    800055ec:	01813083          	ld	ra,24(sp)
    800055f0:	01013403          	ld	s0,16(sp)
    800055f4:	0017879b          	addiw	a5,a5,1
    800055f8:	06f52c23          	sw	a5,120(a0)
    800055fc:	00813483          	ld	s1,8(sp)
    80005600:	02010113          	addi	sp,sp,32
    80005604:	00008067          	ret
    80005608:	0014d493          	srli	s1,s1,0x1
    8000560c:	ffffe097          	auipc	ra,0xffffe
    80005610:	5e8080e7          	jalr	1512(ra) # 80003bf4 <mycpu>
    80005614:	0014f493          	andi	s1,s1,1
    80005618:	06952e23          	sw	s1,124(a0)
    8000561c:	fc5ff06f          	j	800055e0 <push_on+0x34>

0000000080005620 <pop_on>:
    80005620:	ff010113          	addi	sp,sp,-16
    80005624:	00813023          	sd	s0,0(sp)
    80005628:	00113423          	sd	ra,8(sp)
    8000562c:	01010413          	addi	s0,sp,16
    80005630:	ffffe097          	auipc	ra,0xffffe
    80005634:	5c4080e7          	jalr	1476(ra) # 80003bf4 <mycpu>
    80005638:	100027f3          	csrr	a5,sstatus
    8000563c:	0027f793          	andi	a5,a5,2
    80005640:	04078463          	beqz	a5,80005688 <pop_on+0x68>
    80005644:	07852783          	lw	a5,120(a0)
    80005648:	02f05863          	blez	a5,80005678 <pop_on+0x58>
    8000564c:	fff7879b          	addiw	a5,a5,-1
    80005650:	06f52c23          	sw	a5,120(a0)
    80005654:	07853783          	ld	a5,120(a0)
    80005658:	00079863          	bnez	a5,80005668 <pop_on+0x48>
    8000565c:	100027f3          	csrr	a5,sstatus
    80005660:	ffd7f793          	andi	a5,a5,-3
    80005664:	10079073          	csrw	sstatus,a5
    80005668:	00813083          	ld	ra,8(sp)
    8000566c:	00013403          	ld	s0,0(sp)
    80005670:	01010113          	addi	sp,sp,16
    80005674:	00008067          	ret
    80005678:	00001517          	auipc	a0,0x1
    8000567c:	d0850513          	addi	a0,a0,-760 # 80006380 <digits+0x70>
    80005680:	fffff097          	auipc	ra,0xfffff
    80005684:	f2c080e7          	jalr	-212(ra) # 800045ac <panic>
    80005688:	00001517          	auipc	a0,0x1
    8000568c:	cd850513          	addi	a0,a0,-808 # 80006360 <digits+0x50>
    80005690:	fffff097          	auipc	ra,0xfffff
    80005694:	f1c080e7          	jalr	-228(ra) # 800045ac <panic>

0000000080005698 <__memset>:
    80005698:	ff010113          	addi	sp,sp,-16
    8000569c:	00813423          	sd	s0,8(sp)
    800056a0:	01010413          	addi	s0,sp,16
    800056a4:	1a060e63          	beqz	a2,80005860 <__memset+0x1c8>
    800056a8:	40a007b3          	neg	a5,a0
    800056ac:	0077f793          	andi	a5,a5,7
    800056b0:	00778693          	addi	a3,a5,7
    800056b4:	00b00813          	li	a6,11
    800056b8:	0ff5f593          	andi	a1,a1,255
    800056bc:	fff6071b          	addiw	a4,a2,-1
    800056c0:	1b06e663          	bltu	a3,a6,8000586c <__memset+0x1d4>
    800056c4:	1cd76463          	bltu	a4,a3,8000588c <__memset+0x1f4>
    800056c8:	1a078e63          	beqz	a5,80005884 <__memset+0x1ec>
    800056cc:	00b50023          	sb	a1,0(a0)
    800056d0:	00100713          	li	a4,1
    800056d4:	1ae78463          	beq	a5,a4,8000587c <__memset+0x1e4>
    800056d8:	00b500a3          	sb	a1,1(a0)
    800056dc:	00200713          	li	a4,2
    800056e0:	1ae78a63          	beq	a5,a4,80005894 <__memset+0x1fc>
    800056e4:	00b50123          	sb	a1,2(a0)
    800056e8:	00300713          	li	a4,3
    800056ec:	18e78463          	beq	a5,a4,80005874 <__memset+0x1dc>
    800056f0:	00b501a3          	sb	a1,3(a0)
    800056f4:	00400713          	li	a4,4
    800056f8:	1ae78263          	beq	a5,a4,8000589c <__memset+0x204>
    800056fc:	00b50223          	sb	a1,4(a0)
    80005700:	00500713          	li	a4,5
    80005704:	1ae78063          	beq	a5,a4,800058a4 <__memset+0x20c>
    80005708:	00b502a3          	sb	a1,5(a0)
    8000570c:	00700713          	li	a4,7
    80005710:	18e79e63          	bne	a5,a4,800058ac <__memset+0x214>
    80005714:	00b50323          	sb	a1,6(a0)
    80005718:	00700e93          	li	t4,7
    8000571c:	00859713          	slli	a4,a1,0x8
    80005720:	00e5e733          	or	a4,a1,a4
    80005724:	01059e13          	slli	t3,a1,0x10
    80005728:	01c76e33          	or	t3,a4,t3
    8000572c:	01859313          	slli	t1,a1,0x18
    80005730:	006e6333          	or	t1,t3,t1
    80005734:	02059893          	slli	a7,a1,0x20
    80005738:	40f60e3b          	subw	t3,a2,a5
    8000573c:	011368b3          	or	a7,t1,a7
    80005740:	02859813          	slli	a6,a1,0x28
    80005744:	0108e833          	or	a6,a7,a6
    80005748:	03059693          	slli	a3,a1,0x30
    8000574c:	003e589b          	srliw	a7,t3,0x3
    80005750:	00d866b3          	or	a3,a6,a3
    80005754:	03859713          	slli	a4,a1,0x38
    80005758:	00389813          	slli	a6,a7,0x3
    8000575c:	00f507b3          	add	a5,a0,a5
    80005760:	00e6e733          	or	a4,a3,a4
    80005764:	000e089b          	sext.w	a7,t3
    80005768:	00f806b3          	add	a3,a6,a5
    8000576c:	00e7b023          	sd	a4,0(a5)
    80005770:	00878793          	addi	a5,a5,8
    80005774:	fed79ce3          	bne	a5,a3,8000576c <__memset+0xd4>
    80005778:	ff8e7793          	andi	a5,t3,-8
    8000577c:	0007871b          	sext.w	a4,a5
    80005780:	01d787bb          	addw	a5,a5,t4
    80005784:	0ce88e63          	beq	a7,a4,80005860 <__memset+0x1c8>
    80005788:	00f50733          	add	a4,a0,a5
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	0017871b          	addiw	a4,a5,1
    80005794:	0cc77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005798:	00e50733          	add	a4,a0,a4
    8000579c:	00b70023          	sb	a1,0(a4)
    800057a0:	0027871b          	addiw	a4,a5,2
    800057a4:	0ac77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057a8:	00e50733          	add	a4,a0,a4
    800057ac:	00b70023          	sb	a1,0(a4)
    800057b0:	0037871b          	addiw	a4,a5,3
    800057b4:	0ac77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057b8:	00e50733          	add	a4,a0,a4
    800057bc:	00b70023          	sb	a1,0(a4)
    800057c0:	0047871b          	addiw	a4,a5,4
    800057c4:	08c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057c8:	00e50733          	add	a4,a0,a4
    800057cc:	00b70023          	sb	a1,0(a4)
    800057d0:	0057871b          	addiw	a4,a5,5
    800057d4:	08c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057d8:	00e50733          	add	a4,a0,a4
    800057dc:	00b70023          	sb	a1,0(a4)
    800057e0:	0067871b          	addiw	a4,a5,6
    800057e4:	06c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057e8:	00e50733          	add	a4,a0,a4
    800057ec:	00b70023          	sb	a1,0(a4)
    800057f0:	0077871b          	addiw	a4,a5,7
    800057f4:	06c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057f8:	00e50733          	add	a4,a0,a4
    800057fc:	00b70023          	sb	a1,0(a4)
    80005800:	0087871b          	addiw	a4,a5,8
    80005804:	04c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005808:	00e50733          	add	a4,a0,a4
    8000580c:	00b70023          	sb	a1,0(a4)
    80005810:	0097871b          	addiw	a4,a5,9
    80005814:	04c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005818:	00e50733          	add	a4,a0,a4
    8000581c:	00b70023          	sb	a1,0(a4)
    80005820:	00a7871b          	addiw	a4,a5,10
    80005824:	02c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005828:	00e50733          	add	a4,a0,a4
    8000582c:	00b70023          	sb	a1,0(a4)
    80005830:	00b7871b          	addiw	a4,a5,11
    80005834:	02c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005838:	00e50733          	add	a4,a0,a4
    8000583c:	00b70023          	sb	a1,0(a4)
    80005840:	00c7871b          	addiw	a4,a5,12
    80005844:	00c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005848:	00e50733          	add	a4,a0,a4
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	00d7879b          	addiw	a5,a5,13
    80005854:	00c7f663          	bgeu	a5,a2,80005860 <__memset+0x1c8>
    80005858:	00f507b3          	add	a5,a0,a5
    8000585c:	00b78023          	sb	a1,0(a5)
    80005860:	00813403          	ld	s0,8(sp)
    80005864:	01010113          	addi	sp,sp,16
    80005868:	00008067          	ret
    8000586c:	00b00693          	li	a3,11
    80005870:	e55ff06f          	j	800056c4 <__memset+0x2c>
    80005874:	00300e93          	li	t4,3
    80005878:	ea5ff06f          	j	8000571c <__memset+0x84>
    8000587c:	00100e93          	li	t4,1
    80005880:	e9dff06f          	j	8000571c <__memset+0x84>
    80005884:	00000e93          	li	t4,0
    80005888:	e95ff06f          	j	8000571c <__memset+0x84>
    8000588c:	00000793          	li	a5,0
    80005890:	ef9ff06f          	j	80005788 <__memset+0xf0>
    80005894:	00200e93          	li	t4,2
    80005898:	e85ff06f          	j	8000571c <__memset+0x84>
    8000589c:	00400e93          	li	t4,4
    800058a0:	e7dff06f          	j	8000571c <__memset+0x84>
    800058a4:	00500e93          	li	t4,5
    800058a8:	e75ff06f          	j	8000571c <__memset+0x84>
    800058ac:	00600e93          	li	t4,6
    800058b0:	e6dff06f          	j	8000571c <__memset+0x84>

00000000800058b4 <__memmove>:
    800058b4:	ff010113          	addi	sp,sp,-16
    800058b8:	00813423          	sd	s0,8(sp)
    800058bc:	01010413          	addi	s0,sp,16
    800058c0:	0e060863          	beqz	a2,800059b0 <__memmove+0xfc>
    800058c4:	fff6069b          	addiw	a3,a2,-1
    800058c8:	0006881b          	sext.w	a6,a3
    800058cc:	0ea5e863          	bltu	a1,a0,800059bc <__memmove+0x108>
    800058d0:	00758713          	addi	a4,a1,7
    800058d4:	00a5e7b3          	or	a5,a1,a0
    800058d8:	40a70733          	sub	a4,a4,a0
    800058dc:	0077f793          	andi	a5,a5,7
    800058e0:	00f73713          	sltiu	a4,a4,15
    800058e4:	00174713          	xori	a4,a4,1
    800058e8:	0017b793          	seqz	a5,a5
    800058ec:	00e7f7b3          	and	a5,a5,a4
    800058f0:	10078863          	beqz	a5,80005a00 <__memmove+0x14c>
    800058f4:	00900793          	li	a5,9
    800058f8:	1107f463          	bgeu	a5,a6,80005a00 <__memmove+0x14c>
    800058fc:	0036581b          	srliw	a6,a2,0x3
    80005900:	fff8081b          	addiw	a6,a6,-1
    80005904:	02081813          	slli	a6,a6,0x20
    80005908:	01d85893          	srli	a7,a6,0x1d
    8000590c:	00858813          	addi	a6,a1,8
    80005910:	00058793          	mv	a5,a1
    80005914:	00050713          	mv	a4,a0
    80005918:	01088833          	add	a6,a7,a6
    8000591c:	0007b883          	ld	a7,0(a5)
    80005920:	00878793          	addi	a5,a5,8
    80005924:	00870713          	addi	a4,a4,8
    80005928:	ff173c23          	sd	a7,-8(a4)
    8000592c:	ff0798e3          	bne	a5,a6,8000591c <__memmove+0x68>
    80005930:	ff867713          	andi	a4,a2,-8
    80005934:	02071793          	slli	a5,a4,0x20
    80005938:	0207d793          	srli	a5,a5,0x20
    8000593c:	00f585b3          	add	a1,a1,a5
    80005940:	40e686bb          	subw	a3,a3,a4
    80005944:	00f507b3          	add	a5,a0,a5
    80005948:	06e60463          	beq	a2,a4,800059b0 <__memmove+0xfc>
    8000594c:	0005c703          	lbu	a4,0(a1)
    80005950:	00e78023          	sb	a4,0(a5)
    80005954:	04068e63          	beqz	a3,800059b0 <__memmove+0xfc>
    80005958:	0015c603          	lbu	a2,1(a1)
    8000595c:	00100713          	li	a4,1
    80005960:	00c780a3          	sb	a2,1(a5)
    80005964:	04e68663          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005968:	0025c603          	lbu	a2,2(a1)
    8000596c:	00200713          	li	a4,2
    80005970:	00c78123          	sb	a2,2(a5)
    80005974:	02e68e63          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005978:	0035c603          	lbu	a2,3(a1)
    8000597c:	00300713          	li	a4,3
    80005980:	00c781a3          	sb	a2,3(a5)
    80005984:	02e68663          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005988:	0045c603          	lbu	a2,4(a1)
    8000598c:	00400713          	li	a4,4
    80005990:	00c78223          	sb	a2,4(a5)
    80005994:	00e68e63          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005998:	0055c603          	lbu	a2,5(a1)
    8000599c:	00500713          	li	a4,5
    800059a0:	00c782a3          	sb	a2,5(a5)
    800059a4:	00e68663          	beq	a3,a4,800059b0 <__memmove+0xfc>
    800059a8:	0065c703          	lbu	a4,6(a1)
    800059ac:	00e78323          	sb	a4,6(a5)
    800059b0:	00813403          	ld	s0,8(sp)
    800059b4:	01010113          	addi	sp,sp,16
    800059b8:	00008067          	ret
    800059bc:	02061713          	slli	a4,a2,0x20
    800059c0:	02075713          	srli	a4,a4,0x20
    800059c4:	00e587b3          	add	a5,a1,a4
    800059c8:	f0f574e3          	bgeu	a0,a5,800058d0 <__memmove+0x1c>
    800059cc:	02069613          	slli	a2,a3,0x20
    800059d0:	02065613          	srli	a2,a2,0x20
    800059d4:	fff64613          	not	a2,a2
    800059d8:	00e50733          	add	a4,a0,a4
    800059dc:	00c78633          	add	a2,a5,a2
    800059e0:	fff7c683          	lbu	a3,-1(a5)
    800059e4:	fff78793          	addi	a5,a5,-1
    800059e8:	fff70713          	addi	a4,a4,-1
    800059ec:	00d70023          	sb	a3,0(a4)
    800059f0:	fec798e3          	bne	a5,a2,800059e0 <__memmove+0x12c>
    800059f4:	00813403          	ld	s0,8(sp)
    800059f8:	01010113          	addi	sp,sp,16
    800059fc:	00008067          	ret
    80005a00:	02069713          	slli	a4,a3,0x20
    80005a04:	02075713          	srli	a4,a4,0x20
    80005a08:	00170713          	addi	a4,a4,1
    80005a0c:	00e50733          	add	a4,a0,a4
    80005a10:	00050793          	mv	a5,a0
    80005a14:	0005c683          	lbu	a3,0(a1)
    80005a18:	00178793          	addi	a5,a5,1
    80005a1c:	00158593          	addi	a1,a1,1
    80005a20:	fed78fa3          	sb	a3,-1(a5)
    80005a24:	fee798e3          	bne	a5,a4,80005a14 <__memmove+0x160>
    80005a28:	f89ff06f          	j	800059b0 <__memmove+0xfc>
	...
