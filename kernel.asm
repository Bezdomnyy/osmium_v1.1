
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
    8000001c:	0f9030ef          	jal	ra,80003914 <start>

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
    80001224:	198000ef          	jal	ra,800013bc <_ZN6Kernel21supervisorTrapHandlerEv>



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
    800012f8:	1e8080e7          	jalr	488(ra) # 800024dc <_ZN15MemoryAllocator7initMemEv>
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
    8000130c:	4f8080e7          	jalr	1272(ra) # 80001800 <_ZN4Uart8initUartEv>
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
    80001338:	e40080e7          	jalr	-448(ra) # 80004174 <plic_claim>
    8000133c:	00050493          	mv	s1,a0
    //__print_string("handle_uart\n");
    if (id == 0x0a) {
    80001340:	00a00793          	li	a5,10
    80001344:	02f50263          	beq	a0,a5,80001368 <_ZN6Kernel12uart_handlerEv+0x48>
            __print_string("rx\n");
            if(Uart::rxReceive() < 0) break;
            //plic_complete(id);
        }
    }
    plic_complete(id);
    80001348:	00048513          	mv	a0,s1
    8000134c:	00003097          	auipc	ra,0x3
    80001350:	e60080e7          	jalr	-416(ra) # 800041ac <plic_complete>
}
    80001354:	01813083          	ld	ra,24(sp)
    80001358:	01013403          	ld	s0,16(sp)
    8000135c:	00813483          	ld	s1,8(sp)
    80001360:	02010113          	addi	sp,sp,32
    80001364:	00008067          	ret
        while (Uart::getStatus() & Uart::RX) {
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	528080e7          	jalr	1320(ra) # 80001890 <_ZN4Uart9getStatusEv>
    80001370:	00157793          	andi	a5,a0,1
    80001374:	fc078ae3          	beqz	a5,80001348 <_ZN6Kernel12uart_handlerEv+0x28>
            __print_string("rx\n");
    80001378:	00005517          	auipc	a0,0x5
    8000137c:	ca850513          	addi	a0,a0,-856 # 80006020 <CONSOLE_STATUS+0x10>
    80001380:	00001097          	auipc	ra,0x1
    80001384:	44c080e7          	jalr	1100(ra) # 800027cc <_Z14__print_stringPKc>
            if(Uart::rxReceive() < 0) break;
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	60c080e7          	jalr	1548(ra) # 80001994 <_ZN4Uart9rxReceiveEv>
    80001390:	fd9ff06f          	j	80001368 <_ZN6Kernel12uart_handlerEv+0x48>

0000000080001394 <_ZN6Kernel14hw_irq_handlerEv>:
void Kernel::hw_irq_handler() {
    80001394:	ff010113          	addi	sp,sp,-16
    80001398:	00113423          	sd	ra,8(sp)
    8000139c:	00813023          	sd	s0,0(sp)
    800013a0:	01010413          	addi	s0,sp,16
    uart_handler();
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	f7c080e7          	jalr	-132(ra) # 80001320 <_ZN6Kernel12uart_handlerEv>
}
    800013ac:	00813083          	ld	ra,8(sp)
    800013b0:	00013403          	ld	s0,0(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_ZN6Kernel21supervisorTrapHandlerEv>:
void Kernel::supervisorTrapHandler() {
    800013bc:	f1010113          	addi	sp,sp,-240
    800013c0:	0e113423          	sd	ra,232(sp)
    800013c4:	0e813023          	sd	s0,224(sp)
    800013c8:	0c913c23          	sd	s1,216(sp)
    800013cc:	0d213823          	sd	s2,208(sp)
    800013d0:	0d313423          	sd	s3,200(sp)
    800013d4:	0f010413          	addi	s0,sp,240
    asm volatile("csrr %[scause], scause": [scause] "=r" (scause));
    800013d8:	142027f3          	csrr	a5,scause
    800013dc:	f0f43c23          	sd	a5,-232(s0)
    return scause;
    800013e0:	f1843483          	ld	s1,-232(s0)
    if (scause == USER_SYSCALL || scause == SUPERVISOR_SYSCALL) {
    800013e4:	ff848713          	addi	a4,s1,-8
    800013e8:	00100793          	li	a5,1
    800013ec:	0ae7f863          	bgeu	a5,a4,8000149c <_ZN6Kernel21supervisorTrapHandlerEv+0xe0>
    if (scause == TIMER_IRQ) {
    800013f0:	fff00793          	li	a5,-1
    800013f4:	03f79793          	slli	a5,a5,0x3f
    800013f8:	00178793          	addi	a5,a5,1
    800013fc:	2ef48c63          	beq	s1,a5,800016f4 <_ZN6Kernel21supervisorTrapHandlerEv+0x338>
    if (scause == HARDWARE_IRQ) {
    80001400:	fff00793          	li	a5,-1
    80001404:	03f79793          	slli	a5,a5,0x3f
    80001408:	00978793          	addi	a5,a5,9
    8000140c:	36f48c63          	beq	s1,a5,80001784 <_ZN6Kernel21supervisorTrapHandlerEv+0x3c8>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    80001410:	141027f3          	csrr	a5,sepc
    80001414:	f4f43023          	sd	a5,-192(s0)
    return sepc;
    80001418:	f4043903          	ld	s2,-192(s0)
    __print_string("Neobradjen izuzetak.\n");
    8000141c:	00005517          	auipc	a0,0x5
    80001420:	c2c50513          	addi	a0,a0,-980 # 80006048 <CONSOLE_STATUS+0x38>
    80001424:	00001097          	auipc	ra,0x1
    80001428:	3a8080e7          	jalr	936(ra) # 800027cc <_Z14__print_stringPKc>
    __print_string("scause: ");
    8000142c:	00005517          	auipc	a0,0x5
    80001430:	c3450513          	addi	a0,a0,-972 # 80006060 <CONSOLE_STATUS+0x50>
    80001434:	00001097          	auipc	ra,0x1
    80001438:	398080e7          	jalr	920(ra) # 800027cc <_Z14__print_stringPKc>
    __print_uint64(scause);
    8000143c:	00048513          	mv	a0,s1
    80001440:	00001097          	auipc	ra,0x1
    80001444:	3d0080e7          	jalr	976(ra) # 80002810 <_Z14__print_uint64m>
    Uart::txPut('\n');
    80001448:	00a00513          	li	a0,10
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	644080e7          	jalr	1604(ra) # 80001a90 <_ZN4Uart5txPutEc>
    __print_string("sepc: ");
    80001454:	00005517          	auipc	a0,0x5
    80001458:	c1c50513          	addi	a0,a0,-996 # 80006070 <CONSOLE_STATUS+0x60>
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	370080e7          	jalr	880(ra) # 800027cc <_Z14__print_stringPKc>
    __print_uint64(sepc);
    80001464:	00090513          	mv	a0,s2
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	3a8080e7          	jalr	936(ra) # 80002810 <_Z14__print_uint64m>
    Uart::txPut('\n');
    80001470:	00a00513          	li	a0,10
    80001474:	00000097          	auipc	ra,0x0
    80001478:	61c080e7          	jalr	1564(ra) # 80001a90 <_ZN4Uart5txPutEc>
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    8000147c:	14191073          	csrw	sepc,s2
}
    80001480:	0e813083          	ld	ra,232(sp)
    80001484:	0e013403          	ld	s0,224(sp)
    80001488:	0d813483          	ld	s1,216(sp)
    8000148c:	0d013903          	ld	s2,208(sp)
    80001490:	0c813983          	ld	s3,200(sp)
    80001494:	0f010113          	addi	sp,sp,240
    80001498:	00008067          	ret
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000149c:	141027f3          	csrr	a5,sepc
    800014a0:	f2f43423          	sd	a5,-216(s0)
    return sepc;
    800014a4:	f2843483          	ld	s1,-216(s0)
        uint64 sepc = RiscV::readSepc() + 4;
    800014a8:	00448493          	addi	s1,s1,4
    asm volatile("csrc sstatus, %[mask]":: [mask] "r" (mask));
}

inline uint64 RiscV::readSstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    800014ac:	100027f3          	csrr	a5,sstatus
    800014b0:	f2f43023          	sd	a5,-224(s0)
    return sstatus;
    800014b4:	f2043903          	ld	s2,-224(s0)
};

inline void Kernel::syscall_handler() {
    //uint64 sepc = RiscV::readSepc();
    volatile uint64 syscall_id;
    asm volatile ("mv %[syscall_id], a7": [syscall_id] "=r" (syscall_id));
    800014b8:	00088793          	mv	a5,a7
    800014bc:	f4f43423          	sd	a5,-184(s0)

    //volatile uint64 arg0, arg1, arg2, temp;
    switch(syscall_id) {
    800014c0:	f4843783          	ld	a5,-184(s0)
    800014c4:	04200713          	li	a4,66
    800014c8:	20f76a63          	bltu	a4,a5,800016dc <_ZN6Kernel21supervisorTrapHandlerEv+0x320>
    800014cc:	00279793          	slli	a5,a5,0x2
    800014d0:	00005717          	auipc	a4,0x5
    800014d4:	ba870713          	addi	a4,a4,-1112 # 80006078 <CONSOLE_STATUS+0x68>
    800014d8:	00e787b3          	add	a5,a5,a4
    800014dc:	0007a783          	lw	a5,0(a5)
    800014e0:	00e787b3          	add	a5,a5,a4
    800014e4:	00078067          	jr	a5
}

//0x01
inline void Kernel::mem_alloc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800014e8:	00050793          	mv	a5,a0
    800014ec:	f8f43023          	sd	a5,-128(s0)
    MemoryAllocator::allocate((size_t)arg0);
    800014f0:	f8043503          	ld	a0,-128(s0)
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	188080e7          	jalr	392(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
        asm volatile ("sd a0, 80(s0)");
    800014fc:	04a43823          	sd	a0,80(s0)
}

inline void RiscV::writeSstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001500:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    80001504:	14149073          	csrw	sepc,s1
inline void RiscV::setSip(uint64 mask) {
    asm volatile("csrs sip, %[mask]":: [mask] "r" (mask));
}

inline void RiscV::clearSip(uint64 mask) {
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    80001508:	00200793          	li	a5,2
    8000150c:	1447b073          	csrc	sip,a5
        return;
    80001510:	f71ff06f          	j	80001480 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
}

//0x02
inline void Kernel::mem_free_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001514:	00050793          	mv	a5,a0
    80001518:	f6f43c23          	sd	a5,-136(s0)
    MemoryAllocator::free((void*)arg0);
    8000151c:	f7843503          	ld	a0,-136(s0)
    80001520:	00001097          	auipc	ra,0x1
    80001524:	1e8080e7          	jalr	488(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
}
    80001528:	fd5ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x11
inline void Kernel::thread_create_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000152c:	00050793          	mv	a5,a0
    80001530:	f8f43423          	sd	a5,-120(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    80001534:	00058793          	mv	a5,a1
    80001538:	f8f43823          	sd	a5,-112(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    8000153c:	00060793          	mv	a5,a2
    80001540:	f8f43c23          	sd	a5,-104(s0)

    *(TCB**)arg0 = TCB::createTCB((TCB::Body)arg1, (void*)arg2);
    80001544:	f9043503          	ld	a0,-112(s0)
    80001548:	f9843583          	ld	a1,-104(s0)
    8000154c:	f8843983          	ld	s3,-120(s0)
    80001550:	00001097          	auipc	ra,0x1
    80001554:	9e8080e7          	jalr	-1560(ra) # 80001f38 <_ZN3TCB9createTCBEPFvPvES0_>
    80001558:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    8000155c:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    80001560:	f8843783          	ld	a5,-120(s0)
    80001564:	0007b783          	ld	a5,0(a5)
    80001568:	f8079ae3          	bnez	a5,800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    8000156c:	fff50513          	addi	a0,a0,-1
}
    80001570:	f8dff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x12
inline void Kernel::thread_exit_handler() {
    TCB::running->setFinished(true);
    80001574:	00006797          	auipc	a5,0x6
    80001578:	fdc7b783          	ld	a5,-36(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000157c:	0007b783          	ld	a5,0(a5)

    static TCB* createSupervisorTCB(Body body, void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool val) { finished = val; }
    80001580:	00100713          	li	a4,1
    80001584:	00e78c23          	sb	a4,24(a5)
    asm volatile ("addi a0, zero, 0");
    80001588:	00000513          	li	a0,0
    //TCB::yield();
    TCB::dispatch();
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	b5c080e7          	jalr	-1188(ra) # 800020e8 <_ZN3TCB8dispatchEv>
}
    80001594:	f69ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x13
inline void Kernel::thread_dispatch_handler() {
    //TCB::yield();
    TCB::dispatch();
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	b50080e7          	jalr	-1200(ra) # 800020e8 <_ZN3TCB8dispatchEv>
}
    800015a0:	f5dff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x14
inline void Kernel::thread_create_deactivated_handler() {
    volatile uint64 arg0, arg1, arg2;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800015a4:	00050793          	mv	a5,a0
    800015a8:	faf43023          	sd	a5,-96(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    800015ac:	00058793          	mv	a5,a1
    800015b0:	faf43423          	sd	a5,-88(s0)
    asm volatile ("mv %[arg2], a2": [arg2] "=r"(arg2));
    800015b4:	00060793          	mv	a5,a2
    800015b8:	faf43823          	sd	a5,-80(s0)

    *(TCB**)arg0 = TCB::createDeactivatedTCB((TCB::Body)arg1, (void*)arg2);
    800015bc:	fa843503          	ld	a0,-88(s0)
    800015c0:	fb043583          	ld	a1,-80(s0)
    800015c4:	fa043983          	ld	s3,-96(s0)
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	a00080e7          	jalr	-1536(ra) # 80001fc8 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>
    800015d0:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    800015d4:	00000513          	li	a0,0
    if (!(*(TCB**)arg0)) asm volatile("addi a0, a0, -1");
    800015d8:	fa043783          	ld	a5,-96(s0)
    800015dc:	0007b783          	ld	a5,0(a5)
    800015e0:	f0079ee3          	bnez	a5,800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    800015e4:	fff50513          	addi	a0,a0,-1
}
    800015e8:	f15ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x021
inline void Kernel::sem_open_handler() {
    volatile uint64 arg0, arg1;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800015ec:	00050793          	mv	a5,a0
    800015f0:	faf43c23          	sd	a5,-72(s0)
    asm volatile ("mv %[arg1], a1": [arg1] "=r"(arg1));
    800015f4:	00058793          	mv	a5,a1
    800015f8:	fcf43023          	sd	a5,-64(s0)

    *(Sem**)arg0 = Sem::createSem((unsigned)arg1);
    800015fc:	fc043503          	ld	a0,-64(s0)
    80001600:	fb843983          	ld	s3,-72(s0)
    80001604:	0005051b          	sext.w	a0,a0
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	2dc080e7          	jalr	732(ra) # 800028e4 <_ZN3Sem9createSemEj>
    80001610:	00a9b023          	sd	a0,0(s3)

    asm volatile("mv a0, zero");
    80001614:	00000513          	li	a0,0
    if (!(*(Sem**)arg0)) asm volatile("addi a0, a0, -1");
    80001618:	fb843783          	ld	a5,-72(s0)
    8000161c:	0007b783          	ld	a5,0(a5)
    80001620:	ec079ee3          	bnez	a5,800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
    80001624:	fff50513          	addi	a0,a0,-1
}
    80001628:	ed5ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x22
inline void Kernel::sem_close_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    8000162c:	00050793          	mv	a5,a0
    80001630:	fcf43423          	sd	a5,-56(s0)
    delete *(Sem**)arg0;
    80001634:	fc843783          	ld	a5,-56(s0)
    80001638:	0007b983          	ld	s3,0(a5)
    8000163c:	00098e63          	beqz	s3,80001658 <_ZN6Kernel21supervisorTrapHandlerEv+0x29c>
    80001640:	00098513          	mv	a0,s3
    80001644:	00001097          	auipc	ra,0x1
    80001648:	2f0080e7          	jalr	752(ra) # 80002934 <_ZN3SemD1Ev>
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    8000164c:	00098513          	mv	a0,s3
    80001650:	00001097          	auipc	ra,0x1
    80001654:	0b8080e7          	jalr	184(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>

    asm volatile("mv a0, zero");
    80001658:	00000513          	li	a0,0
}
    8000165c:	ea1ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x23
inline void Kernel::sem_wait_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001660:	00050793          	mv	a5,a0
    80001664:	f6f43823          	sd	a5,-144(s0)
    ((Sem*)arg0)->semWait();
    80001668:	f7043503          	ld	a0,-144(s0)
    8000166c:	00001097          	auipc	ra,0x1
    80001670:	350080e7          	jalr	848(ra) # 800029bc <_ZN3Sem7semWaitEv>

    //asm volatile("mv a0, zero");
}
    80001674:	e89ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x24
inline void Kernel::sem_signal_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001678:	00050793          	mv	a5,a0
    8000167c:	f6f43423          	sd	a5,-152(s0)
    ((Sem*)arg0)->semSignal();
    80001680:	f6843503          	ld	a0,-152(s0)
    80001684:	00001097          	auipc	ra,0x1
    80001688:	3d4080e7          	jalr	980(ra) # 80002a58 <_ZN3Sem9semSignalEv>
}
    8000168c:	e71ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x31
inline void Kernel::time_sleep_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    80001690:	00050793          	mv	a5,a0
    80001694:	f6f43023          	sd	a5,-160(s0)
    Scheduler::timeSleep((time_t)arg0);
    80001698:	f6043503          	ld	a0,-160(s0)
    8000169c:	00001097          	auipc	ra,0x1
    800016a0:	61c080e7          	jalr	1564(ra) # 80002cb8 <_ZN9Scheduler9timeSleepEm>
}
    800016a4:	e59ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
//0x41
inline void Kernel::getc_handler() {
    volatile uint64 arg0;
    //arg0 = __getc();
    //__print_string("getc");
    arg0 = Uart::rxGet();
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	210080e7          	jalr	528(ra) # 800018b8 <_ZN4Uart5rxGetEv>
    800016b0:	f4a43c23          	sd	a0,-168(s0)
    asm volatile ("mv a0, %[arg0]":: [arg0] "r"(arg0));
    800016b4:	f5843783          	ld	a5,-168(s0)
    800016b8:	00078513          	mv	a0,a5
}
    800016bc:	e41ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>

//0x42
inline void Kernel::putc_handler() {
    volatile uint64 arg0;
    asm volatile ("mv %[arg0], a0": [arg0] "=r"(arg0));
    800016c0:	00050793          	mv	a5,a0
    800016c4:	f4f43823          	sd	a5,-176(s0)
    //__putc(arg0);
    Uart::txPut(arg0);
    800016c8:	f5043503          	ld	a0,-176(s0)
    800016cc:	0ff57513          	andi	a0,a0,255
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	3c0080e7          	jalr	960(ra) # 80001a90 <_ZN4Uart5txPutEc>
    //uart->tx
}
    800016d8:	e25ff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
            asm volatile ("addi a0, zero, -1");
    800016dc:	fff00513          	li	a0,-1
            __print_string("Error: Invalid syscall id!");
    800016e0:	00005517          	auipc	a0,0x5
    800016e4:	94850513          	addi	a0,a0,-1720 # 80006028 <CONSOLE_STATUS+0x18>
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	0e4080e7          	jalr	228(ra) # 800027cc <_Z14__print_stringPKc>
            break;
    800016f0:	e0dff06f          	j	800014fc <_ZN6Kernel21supervisorTrapHandlerEv+0x140>
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    800016f4:	00006797          	auipc	a5,0x6
    800016f8:	e5c7b783          	ld	a5,-420(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016fc:	0007b783          	ld	a5,0(a5)
    80001700:	04078063          	beqz	a5,80001740 <_ZN6Kernel21supervisorTrapHandlerEv+0x384>
        Scheduler::timerInterrupt();
    80001704:	00001097          	auipc	ra,0x1
    80001708:	4f8080e7          	jalr	1272(ra) # 80002bfc <_ZN9Scheduler14timerInterruptEv>

    //static void yield();

    static void dispatch();

    static void incTimeSliceCounter() { timeSliceCounter++; }
    8000170c:	00006717          	auipc	a4,0x6
    80001710:	e2473703          	ld	a4,-476(a4) # 80007530 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001714:	00073783          	ld	a5,0(a4)
    80001718:	00178793          	addi	a5,a5,1
    8000171c:	00f73023          	sd	a5,0(a4)
        if (TCB::getTimeSliceCounter() >= TCB::running->getTimeSlice())
    80001720:	00006717          	auipc	a4,0x6
    80001724:	e3073703          	ld	a4,-464(a4) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001728:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    8000172c:	02073703          	ld	a4,32(a4)
    80001730:	00e7fe63          	bgeu	a5,a4,8000174c <_ZN6Kernel21supervisorTrapHandlerEv+0x390>
    80001734:	00200793          	li	a5,2
    80001738:	1447b073          	csrc	sip,a5
        return;
    8000173c:	d45ff06f          	j	80001480 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
    80001740:	00200793          	li	a5,2
    80001744:	1447b073          	csrc	sip,a5
        if (!TCB::running) { RiscV::clearSip(RiscV::SSIP); return; }
    80001748:	d39ff06f          	j	80001480 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>
    asm volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    8000174c:	141027f3          	csrr	a5,sepc
    80001750:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    80001754:	f3843483          	ld	s1,-200(s0)
    asm volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    80001758:	100027f3          	csrr	a5,sstatus
    8000175c:	f2f43823          	sd	a5,-208(s0)
    return sstatus;
    80001760:	f3043903          	ld	s2,-208(s0)
    static uint64 getTimeSliceCounter() { return timeSliceCounter; }
    static void resetTimeSliceCounter() { timeSliceCounter = 0; }
    80001764:	00006797          	auipc	a5,0x6
    80001768:	dcc7b783          	ld	a5,-564(a5) # 80007530 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000176c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001770:	00001097          	auipc	ra,0x1
    80001774:	978080e7          	jalr	-1672(ra) # 800020e8 <_ZN3TCB8dispatchEv>
    asm volatile("csrw sstatus, %[sstatus]":: [sstatus] "r" (sstatus));
    80001778:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %[sepc]":: [sepc] "r" (sepc));
    8000177c:	14149073          	csrw	sepc,s1
}
    80001780:	fb5ff06f          	j	80001734 <_ZN6Kernel21supervisorTrapHandlerEv+0x378>
        hw_irq_handler();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	c10080e7          	jalr	-1008(ra) # 80001394 <_ZN6Kernel14hw_irq_handlerEv>
    asm volatile("csrc sip, %[mask]":: [mask] "r" (mask));
    8000178c:	20000793          	li	a5,512
    80001790:	1447b073          	csrc	sip,a5
        return;
    80001794:	cedff06f          	j	80001480 <_ZN6Kernel21supervisorTrapHandlerEv+0xc4>

0000000080001798 <_Z41__static_initialization_and_destruction_0ii>:
    rx_request->semWait();
}

void Uart::rxSignal() {
    rx_request->semSignal();
    80001798:	ff010113          	addi	sp,sp,-16
    8000179c:	00813423          	sd	s0,8(sp)
    800017a0:	01010413          	addi	s0,sp,16
    800017a4:	00100793          	li	a5,1
    800017a8:	00f50863          	beq	a0,a5,800017b8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret
    800017b8:	000107b7          	lui	a5,0x10
    800017bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800017c0:	fef596e3          	bne	a1,a5,800017ac <_Z41__static_initialization_and_destruction_0ii+0x14>
volatile char* Uart::STATUS = (char*) CONSOLE_STATUS;
    800017c4:	00006797          	auipc	a5,0x6
    800017c8:	d5c7b783          	ld	a5,-676(a5) # 80007520 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017cc:	0007b703          	ld	a4,0(a5)
    800017d0:	00006797          	auipc	a5,0x6
    800017d4:	df078793          	addi	a5,a5,-528 # 800075c0 <_ZN4Uart6STATUSE>
    800017d8:	00e7b023          	sd	a4,0(a5)
volatile char* Uart::RX_DATA = (char*) CONSOLE_RX_DATA;
    800017dc:	00006717          	auipc	a4,0x6
    800017e0:	d3c73703          	ld	a4,-708(a4) # 80007518 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017e4:	00073703          	ld	a4,0(a4)
    800017e8:	00e7b423          	sd	a4,8(a5)
volatile char* Uart::TX_DATA = (char*) CONSOLE_TX_DATA;
    800017ec:	00006717          	auipc	a4,0x6
    800017f0:	d4c73703          	ld	a4,-692(a4) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017f4:	00073703          	ld	a4,0(a4)
    800017f8:	00e7b823          	sd	a4,16(a5)
    800017fc:	fb1ff06f          	j	800017ac <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001800 <_ZN4Uart8initUartEv>:
void Uart::initUart() {
    80001800:	fe010113          	addi	sp,sp,-32
    80001804:	00113c23          	sd	ra,24(sp)
    80001808:	00813823          	sd	s0,16(sp)
    8000180c:	00913423          	sd	s1,8(sp)
    80001810:	02010413          	addi	s0,sp,32
    rx_not_empty = Sem::createSem(0);
    80001814:	00000513          	li	a0,0
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	0cc080e7          	jalr	204(ra) # 800028e4 <_ZN3Sem9createSemEj>
    80001820:	00006497          	auipc	s1,0x6
    80001824:	da048493          	addi	s1,s1,-608 # 800075c0 <_ZN4Uart6STATUSE>
    80001828:	00a4bc23          	sd	a0,24(s1)
    rx_not_full = Sem::createSem(BUFFER_SIZE);
    8000182c:	40000513          	li	a0,1024
    80001830:	00001097          	auipc	ra,0x1
    80001834:	0b4080e7          	jalr	180(ra) # 800028e4 <_ZN3Sem9createSemEj>
    80001838:	02a4b023          	sd	a0,32(s1)
    rx_request = Sem::createSem(0);
    8000183c:	00000513          	li	a0,0
    80001840:	00001097          	auipc	ra,0x1
    80001844:	0a4080e7          	jalr	164(ra) # 800028e4 <_ZN3Sem9createSemEj>
    80001848:	02a4b423          	sd	a0,40(s1)
    tx_not_empty = Sem::createSem(0);
    8000184c:	00000513          	li	a0,0
    80001850:	00001097          	auipc	ra,0x1
    80001854:	094080e7          	jalr	148(ra) # 800028e4 <_ZN3Sem9createSemEj>
    80001858:	02a4b823          	sd	a0,48(s1)
    tx_not_full = Sem::createSem(BUFFER_SIZE);
    8000185c:	40000513          	li	a0,1024
    80001860:	00001097          	auipc	ra,0x1
    80001864:	084080e7          	jalr	132(ra) # 800028e4 <_ZN3Sem9createSemEj>
    80001868:	02a4bc23          	sd	a0,56(s1)
    tx_request = Sem::createSem(0);
    8000186c:	00000513          	li	a0,0
    80001870:	00001097          	auipc	ra,0x1
    80001874:	074080e7          	jalr	116(ra) # 800028e4 <_ZN3Sem9createSemEj>
    80001878:	04a4b023          	sd	a0,64(s1)
}
    8000187c:	01813083          	ld	ra,24(sp)
    80001880:	01013403          	ld	s0,16(sp)
    80001884:	00813483          	ld	s1,8(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret

0000000080001890 <_ZN4Uart9getStatusEv>:
uint8 Uart::getStatus() {
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00813423          	sd	s0,8(sp)
    80001898:	01010413          	addi	s0,sp,16
    uint8 ret = *((uint8*) CONSOLE_STATUS);
    8000189c:	00006797          	auipc	a5,0x6
    800018a0:	c847b783          	ld	a5,-892(a5) # 80007520 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018a4:	0007b783          	ld	a5,0(a5)
}
    800018a8:	0007c503          	lbu	a0,0(a5)
    800018ac:	00813403          	ld	s0,8(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <_ZN4Uart5rxGetEv>:
char Uart::rxGet() {
    800018b8:	fe010113          	addi	sp,sp,-32
    800018bc:	00113c23          	sd	ra,24(sp)
    800018c0:	00813823          	sd	s0,16(sp)
    800018c4:	00913423          	sd	s1,8(sp)
    800018c8:	02010413          	addi	s0,sp,32
    rx_not_empty->semWait();
    800018cc:	00006497          	auipc	s1,0x6
    800018d0:	cf448493          	addi	s1,s1,-780 # 800075c0 <_ZN4Uart6STATUSE>
    800018d4:	0184b503          	ld	a0,24(s1)
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	0e4080e7          	jalr	228(ra) # 800029bc <_ZN3Sem7semWaitEv>
    c = rx_buffer[rxFront];
    800018e0:	0484a783          	lw	a5,72(s1)
    800018e4:	00f48733          	add	a4,s1,a5
    rxFront = (rxFront + 1) & (BUFFER_SIZE - 1);
    800018e8:	0017879b          	addiw	a5,a5,1
    800018ec:	3ff7f793          	andi	a5,a5,1023
    800018f0:	04f4a423          	sw	a5,72(s1)
    rxSize--;
    800018f4:	4504a783          	lw	a5,1104(s1)
    800018f8:	fff7879b          	addiw	a5,a5,-1
    800018fc:	44f4a823          	sw	a5,1104(s1)
}
    80001900:	05074503          	lbu	a0,80(a4)
    80001904:	01813083          	ld	ra,24(sp)
    80001908:	01013403          	ld	s0,16(sp)
    8000190c:	00813483          	ld	s1,8(sp)
    80001910:	02010113          	addi	sp,sp,32
    80001914:	00008067          	ret

0000000080001918 <_ZN4Uart5rxPutEc>:
void Uart::rxPut(char c) {
    80001918:	fe010113          	addi	sp,sp,-32
    8000191c:	00113c23          	sd	ra,24(sp)
    80001920:	00813823          	sd	s0,16(sp)
    80001924:	00913423          	sd	s1,8(sp)
    80001928:	01213023          	sd	s2,0(sp)
    8000192c:	02010413          	addi	s0,sp,32
    80001930:	00050913          	mv	s2,a0
    rx_not_full->semWait(); // wait producer
    80001934:	00006497          	auipc	s1,0x6
    80001938:	c8c48493          	addi	s1,s1,-884 # 800075c0 <_ZN4Uart6STATUSE>
    8000193c:	0204b503          	ld	a0,32(s1)
    80001940:	00001097          	auipc	ra,0x1
    80001944:	07c080e7          	jalr	124(ra) # 800029bc <_ZN3Sem7semWaitEv>
    rx_buffer[txRear] = c;
    80001948:	4544a783          	lw	a5,1108(s1)
    8000194c:	00f487b3          	add	a5,s1,a5
    80001950:	05278823          	sb	s2,80(a5)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    80001954:	4584a783          	lw	a5,1112(s1)
    80001958:	0017879b          	addiw	a5,a5,1
    8000195c:	3ff7f793          	andi	a5,a5,1023
    80001960:	44f4ac23          	sw	a5,1112(s1)
    rxSize++;
    80001964:	4504a783          	lw	a5,1104(s1)
    80001968:	0017879b          	addiw	a5,a5,1
    8000196c:	44f4a823          	sw	a5,1104(s1)
    rx_not_empty->semSignal(); // signal consumer
    80001970:	0184b503          	ld	a0,24(s1)
    80001974:	00001097          	auipc	ra,0x1
    80001978:	0e4080e7          	jalr	228(ra) # 80002a58 <_ZN3Sem9semSignalEv>
}
    8000197c:	01813083          	ld	ra,24(sp)
    80001980:	01013403          	ld	s0,16(sp)
    80001984:	00813483          	ld	s1,8(sp)
    80001988:	00013903          	ld	s2,0(sp)
    8000198c:	02010113          	addi	sp,sp,32
    80001990:	00008067          	ret

0000000080001994 <_ZN4Uart9rxReceiveEv>:
    if (rxSize >= BUFFER_SIZE) return -1;
    80001994:	00006717          	auipc	a4,0x6
    80001998:	07c72703          	lw	a4,124(a4) # 80007a10 <_ZN4Uart6rxSizeE>
    8000199c:	3ff00793          	li	a5,1023
    800019a0:	06e7c663          	blt	a5,a4,80001a0c <_ZN4Uart9rxReceiveEv+0x78>
char Uart::rxReceive() {
    800019a4:	ff010113          	addi	sp,sp,-16
    800019a8:	00113423          	sd	ra,8(sp)
    800019ac:	00813023          	sd	s0,0(sp)
    800019b0:	01010413          	addi	s0,sp,16
    char c = *(char*) CONSOLE_RX_DATA;
    800019b4:	00006797          	auipc	a5,0x6
    800019b8:	b647b783          	ld	a5,-1180(a5) # 80007518 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019bc:	0007b783          	ld	a5,0(a5)
    800019c0:	0007c583          	lbu	a1,0(a5)
    rx_buffer[rxRear] = c;
    800019c4:	00006697          	auipc	a3,0x6
    800019c8:	bfc68693          	addi	a3,a3,-1028 # 800075c0 <_ZN4Uart6STATUSE>
    800019cc:	4586a783          	lw	a5,1112(a3)
    800019d0:	00f68633          	add	a2,a3,a5
    800019d4:	04b60823          	sb	a1,80(a2)
    rxRear = (rxRear + 1) & (BUFFER_SIZE - 1);
    800019d8:	0017879b          	addiw	a5,a5,1
    800019dc:	3ff7f793          	andi	a5,a5,1023
    800019e0:	44f6ac23          	sw	a5,1112(a3)
    rxSize++;
    800019e4:	0017071b          	addiw	a4,a4,1
    800019e8:	44e6a823          	sw	a4,1104(a3)
    rx_not_empty->semSignal();
    800019ec:	0186b503          	ld	a0,24(a3)
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	068080e7          	jalr	104(ra) # 80002a58 <_ZN3Sem9semSignalEv>
    return 0;
    800019f8:	00000513          	li	a0,0
}
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret
    if (rxSize >= BUFFER_SIZE) return -1;
    80001a0c:	0ff00513          	li	a0,255
}
    80001a10:	00008067          	ret

0000000080001a14 <_ZN4Uart5txGetEv>:
char Uart::txGet() {
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    while(txSize == 0) {thread_dispatch();}
    80001a28:	00006797          	auipc	a5,0x6
    80001a2c:	ff47a783          	lw	a5,-12(a5) # 80007a1c <_ZN4Uart6txSizeE>
    80001a30:	00079863          	bnez	a5,80001a40 <_ZN4Uart5txGetEv+0x2c>
    80001a34:	fffff097          	auipc	ra,0xfffff
    80001a38:	5fc080e7          	jalr	1532(ra) # 80001030 <thread_dispatch>
    80001a3c:	fedff06f          	j	80001a28 <_ZN4Uart5txGetEv+0x14>
    c = tx_buffer[txFront];
    80001a40:	00006797          	auipc	a5,0x6
    80001a44:	b8078793          	addi	a5,a5,-1152 # 800075c0 <_ZN4Uart6STATUSE>
    80001a48:	4607a703          	lw	a4,1120(a5)
    80001a4c:	00e786b3          	add	a3,a5,a4
    80001a50:	4686c483          	lbu	s1,1128(a3)
    txFront = (txFront + 1) & (BUFFER_SIZE - 1);
    80001a54:	0017071b          	addiw	a4,a4,1
    80001a58:	3ff77713          	andi	a4,a4,1023
    80001a5c:	46e7a023          	sw	a4,1120(a5)
    txSize--;
    80001a60:	45c7a703          	lw	a4,1116(a5)
    80001a64:	fff7071b          	addiw	a4,a4,-1
    80001a68:	44e7ae23          	sw	a4,1116(a5)
    tx_not_full->semSignal(); // signal producer
    80001a6c:	0387b503          	ld	a0,56(a5)
    80001a70:	00001097          	auipc	ra,0x1
    80001a74:	fe8080e7          	jalr	-24(ra) # 80002a58 <_ZN3Sem9semSignalEv>
}
    80001a78:	00048513          	mv	a0,s1
    80001a7c:	01813083          	ld	ra,24(sp)
    80001a80:	01013403          	ld	s0,16(sp)
    80001a84:	00813483          	ld	s1,8(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN4Uart5txPutEc>:
void Uart::txPut(char c) {
    80001a90:	fe010113          	addi	sp,sp,-32
    80001a94:	00113c23          	sd	ra,24(sp)
    80001a98:	00813823          	sd	s0,16(sp)
    80001a9c:	00913423          	sd	s1,8(sp)
    80001aa0:	01213023          	sd	s2,0(sp)
    80001aa4:	02010413          	addi	s0,sp,32
    80001aa8:	00050913          	mv	s2,a0
    tx_not_full->semWait(); // wait producer
    80001aac:	00006497          	auipc	s1,0x6
    80001ab0:	b1448493          	addi	s1,s1,-1260 # 800075c0 <_ZN4Uart6STATUSE>
    80001ab4:	0384b503          	ld	a0,56(s1)
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	f04080e7          	jalr	-252(ra) # 800029bc <_ZN3Sem7semWaitEv>
    tx_buffer[txRear] = c;
    80001ac0:	4544a783          	lw	a5,1108(s1)
    80001ac4:	00f48733          	add	a4,s1,a5
    80001ac8:	47270423          	sb	s2,1128(a4)
    txRear = (txRear + 1) & (BUFFER_SIZE - 1);
    80001acc:	0017879b          	addiw	a5,a5,1
    80001ad0:	3ff7f793          	andi	a5,a5,1023
    80001ad4:	44f4aa23          	sw	a5,1108(s1)
    txSize++;
    80001ad8:	45c4a783          	lw	a5,1116(s1)
    80001adc:	0017879b          	addiw	a5,a5,1
    80001ae0:	44f4ae23          	sw	a5,1116(s1)
    tx_not_empty->semSignal(); // signal consumer
    80001ae4:	0304b503          	ld	a0,48(s1)
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	f70080e7          	jalr	-144(ra) # 80002a58 <_ZN3Sem9semSignalEv>
}
    80001af0:	01813083          	ld	ra,24(sp)
    80001af4:	01013403          	ld	s0,16(sp)
    80001af8:	00813483          	ld	s1,8(sp)
    80001afc:	00013903          	ld	s2,0(sp)
    80001b00:	02010113          	addi	sp,sp,32
    80001b04:	00008067          	ret

0000000080001b08 <_ZN4Uart6txSendEc>:
void Uart::txSend(char c) {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00813423          	sd	s0,8(sp)
    80001b10:	01010413          	addi	s0,sp,16
    *(char*)CONSOLE_TX_DATA = c;
    80001b14:	00006797          	auipc	a5,0x6
    80001b18:	a247b783          	ld	a5,-1500(a5) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b1c:	0007b783          	ld	a5,0(a5)
    80001b20:	00a78023          	sb	a0,0(a5)
}
    80001b24:	00813403          	ld	s0,8(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <_ZN4Uart6txWaitEv>:
void Uart::txWait() {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    tx_request->semWait();
    80001b40:	00006517          	auipc	a0,0x6
    80001b44:	ac053503          	ld	a0,-1344(a0) # 80007600 <_ZN4Uart10tx_requestE>
    80001b48:	00001097          	auipc	ra,0x1
    80001b4c:	e74080e7          	jalr	-396(ra) # 800029bc <_ZN3Sem7semWaitEv>
}
    80001b50:	00813083          	ld	ra,8(sp)
    80001b54:	00013403          	ld	s0,0(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN4Uart8txSignalEv>:
void Uart::txSignal() {
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00113423          	sd	ra,8(sp)
    80001b68:	00813023          	sd	s0,0(sp)
    80001b6c:	01010413          	addi	s0,sp,16
    tx_request->semSignal();
    80001b70:	00006517          	auipc	a0,0x6
    80001b74:	a9053503          	ld	a0,-1392(a0) # 80007600 <_ZN4Uart10tx_requestE>
    80001b78:	00001097          	auipc	ra,0x1
    80001b7c:	ee0080e7          	jalr	-288(ra) # 80002a58 <_ZN3Sem9semSignalEv>
}
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN4Uart6rxWaitEv>:
void Uart::rxWait() {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00113423          	sd	ra,8(sp)
    80001b98:	00813023          	sd	s0,0(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    rx_request->semWait();
    80001ba0:	00006517          	auipc	a0,0x6
    80001ba4:	a4853503          	ld	a0,-1464(a0) # 800075e8 <_ZN4Uart10rx_requestE>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	e14080e7          	jalr	-492(ra) # 800029bc <_ZN3Sem7semWaitEv>
}
    80001bb0:	00813083          	ld	ra,8(sp)
    80001bb4:	00013403          	ld	s0,0(sp)
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret

0000000080001bc0 <_ZN4Uart8rxSignalEv>:
void Uart::rxSignal() {
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00113423          	sd	ra,8(sp)
    80001bc8:	00813023          	sd	s0,0(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    rx_request->semSignal();
    80001bd0:	00006517          	auipc	a0,0x6
    80001bd4:	a1853503          	ld	a0,-1512(a0) # 800075e8 <_ZN4Uart10rx_requestE>
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	e80080e7          	jalr	-384(ra) # 80002a58 <_ZN3Sem9semSignalEv>
    80001be0:	00813083          	ld	ra,8(sp)
    80001be4:	00013403          	ld	s0,0(sp)
    80001be8:	01010113          	addi	sp,sp,16
    80001bec:	00008067          	ret

0000000080001bf0 <_GLOBAL__sub_I__ZN4Uart9rx_bufferE>:
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00113423          	sd	ra,8(sp)
    80001bf8:	00813023          	sd	s0,0(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    80001c00:	000105b7          	lui	a1,0x10
    80001c04:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c08:	00100513          	li	a0,1
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	b8c080e7          	jalr	-1140(ra) # 80001798 <_Z41__static_initialization_and_destruction_0ii>
    80001c14:	00813083          	ld	ra,8(sp)
    80001c18:	00013403          	ld	s0,0(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret

0000000080001c24 <_Z13uart_consumerv>:

#include "../h/uart_consumer.hpp"
#include "../h/uart.hpp"
//#include "../h/tcb.hpp"

void uart_consumer() {
    80001c24:	ff010113          	addi	sp,sp,-16
    80001c28:	00113423          	sd	ra,8(sp)
    80001c2c:	00813023          	sd	s0,0(sp)
    80001c30:	01010413          	addi	s0,sp,16
    80001c34:	0140006f          	j	80001c48 <_Z13uart_consumerv+0x24>
    while(1) {
        //RiscV::setSstatus(RiscV::SIE);
        while (Uart::getStatus() & Uart::TX) {
            //__print_string("h");
            char c = Uart::txGet();
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	ddc080e7          	jalr	-548(ra) # 80001a14 <_ZN4Uart5txGetEv>

            Uart::txSend(c);
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	ec8080e7          	jalr	-312(ra) # 80001b08 <_ZN4Uart6txSendEc>
        while (Uart::getStatus() & Uart::TX) {
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	c48080e7          	jalr	-952(ra) # 80001890 <_ZN4Uart9getStatusEv>
    80001c50:	02057513          	andi	a0,a0,32
    80001c54:	fe050ae3          	beqz	a0,80001c48 <_Z13uart_consumerv+0x24>
    80001c58:	fe1ff06f          	j	80001c38 <_Z13uart_consumerv+0x14>

0000000080001c5c <_Znwm>:
// Created by os on 9/9/22.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001c5c:	ff010113          	addi	sp,sp,-16
    80001c60:	00113423          	sd	ra,8(sp)
    80001c64:	00813023          	sd	s0,0(sp)
    80001c68:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c6c:	fffff097          	auipc	ra,0xfffff
    80001c70:	394080e7          	jalr	916(ra) # 80001000 <mem_alloc>
}
    80001c74:	00813083          	ld	ra,8(sp)
    80001c78:	00013403          	ld	s0,0(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_Znam>:

void* operator new[](size_t size) {
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00113423          	sd	ra,8(sp)
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c94:	fffff097          	auipc	ra,0xfffff
    80001c98:	36c080e7          	jalr	876(ra) # 80001000 <mem_alloc>
}
    80001c9c:	00813083          	ld	ra,8(sp)
    80001ca0:	00013403          	ld	s0,0(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_ZdlPv>:

void operator delete(void* ptr) {
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001cbc:	fffff097          	auipc	ra,0xfffff
    80001cc0:	350080e7          	jalr	848(ra) # 8000100c <mem_free>
}
    80001cc4:	00813083          	ld	ra,8(sp)
    80001cc8:	00013403          	ld	s0,0(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <_ZdaPv>:

void operator delete[](void* ptr) {
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00113423          	sd	ra,8(sp)
    80001cdc:	00813023          	sd	s0,0(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	328080e7          	jalr	808(ra) # 8000100c <mem_free>
}
    80001cec:	00813083          	ld	ra,8(sp)
    80001cf0:	00013403          	ld	s0,0(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <main>:
#include "../h/kernel.hpp"
#include "../h/uart_consumer.hpp"

void userMain();

void main() {
    80001cfc:	fe010113          	addi	sp,sp,-32
    80001d00:	00113c23          	sd	ra,24(sp)
    80001d04:	00813823          	sd	s0,16(sp)
    80001d08:	00913423          	sd	s1,8(sp)
    80001d0c:	01213023          	sd	s2,0(sp)
    80001d10:	02010413          	addi	s0,sp,32
    Kernel::initKernel();
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	5d0080e7          	jalr	1488(ra) # 800012e4 <_ZN6Kernel10initKernelEv>

    TCB* main = TCB::createTCB(nullptr, nullptr);
    80001d1c:	00000593          	li	a1,0
    80001d20:	00000513          	li	a0,0
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	214080e7          	jalr	532(ra) # 80001f38 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d2c:	00050913          	mv	s2,a0
    TCB* user = TCB::createTCB((void(*)(void*))&userMain, nullptr);
    80001d30:	00000593          	li	a1,0
    80001d34:	00005517          	auipc	a0,0x5
    80001d38:	7dc53503          	ld	a0,2012(a0) # 80007510 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	1fc080e7          	jalr	508(ra) # 80001f38 <_ZN3TCB9createTCBEPFvPvES0_>
    80001d44:	00050493          	mv	s1,a0
    TCB::running = main;
    80001d48:	00006797          	auipc	a5,0x6
    80001d4c:	8087b783          	ld	a5,-2040(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d50:	0127b023          	sd	s2,0(a5)

    TCB* uart_tx = TCB::createSupervisorTCB((void(*)(void*))uart_consumer, nullptr);
    80001d54:	00000593          	li	a1,0
    80001d58:	00006517          	auipc	a0,0x6
    80001d5c:	80853503          	ld	a0,-2040(a0) # 80007560 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	2f8080e7          	jalr	760(ra) # 80002058 <_ZN3TCB19createSupervisorTCBEPFvPvES0_>
    asm volatile("csrs sstatus, %[mask]":: [mask] "r" (mask));
    80001d68:	00200793          	li	a5,2
    80001d6c:	1007a073          	csrs	sstatus,a5
    bool isFinished() const { return finished; }
    80001d70:	0184c783          	lbu	a5,24(s1)

    uart_tx->isFinished();
    RiscV::setSstatus(RiscV::SIE);
    while(!user->isFinished()) {
    80001d74:	00079863          	bnez	a5,80001d84 <main+0x88>
        TCB::dispatch();
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	370080e7          	jalr	880(ra) # 800020e8 <_ZN3TCB8dispatchEv>
    while(!user->isFinished()) {
    80001d80:	ff1ff06f          	j	80001d70 <main+0x74>
        //thread_dispatch();
    }
    80001d84:	01813083          	ld	ra,24(sp)
    80001d88:	01013403          	ld	s0,16(sp)
    80001d8c:	00813483          	ld	s1,8(sp)
    80001d90:	00013903          	ld	s2,0(sp)
    80001d94:	02010113          	addi	sp,sp,32
    80001d98:	00008067          	ret

0000000080001d9c <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	9fc080e7          	jalr	-1540(ra) # 800027ac <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001db8:	00006497          	auipc	s1,0x6
    80001dbc:	07048493          	addi	s1,s1,112 # 80007e28 <_ZN3TCB7runningE>
    80001dc0:	0004b783          	ld	a5,0(s1)
    80001dc4:	0007b703          	ld	a4,0(a5)
    80001dc8:	0087b503          	ld	a0,8(a5)
    80001dcc:	000700e7          	jalr	a4
    running->setFinished(true);
    80001dd0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool val) { finished = val; }
    80001dd4:	00100713          	li	a4,1
    80001dd8:	00e78c23          	sb	a4,24(a5)
    //thread_exit();
    thread_dispatch();
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	254080e7          	jalr	596(ra) # 80001030 <thread_dispatch>
}
    80001de4:	01813083          	ld	ra,24(sp)
    80001de8:	01013403          	ld	s0,16(sp)
    80001dec:	00813483          	ld	s1,8(sp)
    80001df0:	02010113          	addi	sp,sp,32
    80001df4:	00008067          	ret

0000000080001df8 <_ZN3TCB14sThreadWrapperEv>:

void TCB::sThreadWrapper() {
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	01010413          	addi	s0,sp,16
    80001e08:	10000793          	li	a5,256
    80001e0c:	1007a073          	csrs	sstatus,a5
    80001e10:	02000793          	li	a5,32
    80001e14:	1007a073          	csrs	sstatus,a5
    80001e18:	00200793          	li	a5,2
    80001e1c:	1007a073          	csrs	sstatus,a5
    RiscV::setSstatus(0x0000000000000001UL << 8);
    RiscV::setSstatus(0x0000000000000001UL << 5);
    RiscV::setSstatus(RiscV::SIE);
    RiscV::popSppSpie();
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	98c080e7          	jalr	-1652(ra) # 800027ac <_ZN5RiscV10popSppSpieEv>
    running->body(running->args);
    80001e28:	00006797          	auipc	a5,0x6
    80001e2c:	0007b783          	ld	a5,0(a5) # 80007e28 <_ZN3TCB7runningE>
    80001e30:	0007b703          	ld	a4,0(a5)
    80001e34:	0087b503          	ld	a0,8(a5)
    80001e38:	000700e7          	jalr	a4
    //running->setFinished(true);
    thread_exit();
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	1e8080e7          	jalr	488(ra) # 80001024 <thread_exit>
    //thread_dispatch();
}
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret

0000000080001e54 <_ZN3TCBC1EPFvPvES0_mbb>:
TCB::TCB(Body body, void* args, uint64 timeSlice, bool ready, bool supervisor)
    80001e54:	fc010113          	addi	sp,sp,-64
    80001e58:	02113c23          	sd	ra,56(sp)
    80001e5c:	02813823          	sd	s0,48(sp)
    80001e60:	02913423          	sd	s1,40(sp)
    80001e64:	03213023          	sd	s2,32(sp)
    80001e68:	01313c23          	sd	s3,24(sp)
    80001e6c:	01413823          	sd	s4,16(sp)
    80001e70:	01513423          	sd	s5,8(sp)
    80001e74:	04010413          	addi	s0,sp,64
    80001e78:	00050493          	mv	s1,a0
    80001e7c:	00058913          	mv	s2,a1
    80001e80:	00068993          	mv	s3,a3
    80001e84:	00070a13          	mv	s4,a4
    80001e88:	00078a93          	mv	s5,a5
        })
    80001e8c:	00b53023          	sd	a1,0(a0)
    80001e90:	00c53423          	sd	a2,8(a0)
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001e94:	06058863          	beqz	a1,80001f04 <_ZN3TCBC1EPFvPvES0_mbb+0xb0>
    80001e98:	00008537          	lui	a0,0x8
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	7e0080e7          	jalr	2016(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
        })
    80001ea4:	00a4b823          	sd	a0,16(s1)
    80001ea8:	00048c23          	sb	zero,24(s1)
    80001eac:	00048ca3          	sb	zero,25(s1)
    80001eb0:	0334b023          	sd	s3,32(s1)
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001eb4:	06090263          	beqz	s2,80001f18 <_ZN3TCBC1EPFvPvES0_mbb+0xc4>
    80001eb8:	040a8a63          	beqz	s5,80001f0c <_ZN3TCBC1EPFvPvES0_mbb+0xb8>
    80001ebc:	00000797          	auipc	a5,0x0
    80001ec0:	f3c78793          	addi	a5,a5,-196 # 80001df8 <_ZN3TCB14sThreadWrapperEv>
        })
    80001ec4:	02f4b423          	sd	a5,40(s1)
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001ec8:	04050c63          	beqz	a0,80001f20 <_ZN3TCBC1EPFvPvES0_mbb+0xcc>
    80001ecc:	000087b7          	lui	a5,0x8
    80001ed0:	00f50533          	add	a0,a0,a5
        })
    80001ed4:	02a4b823          	sd	a0,48(s1)
    if (body != nullptr && ready) Scheduler::put(this);
    80001ed8:	00090463          	beqz	s2,80001ee0 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>
    80001edc:	040a1663          	bnez	s4,80001f28 <_ZN3TCBC1EPFvPvES0_mbb+0xd4>
}
    80001ee0:	03813083          	ld	ra,56(sp)
    80001ee4:	03013403          	ld	s0,48(sp)
    80001ee8:	02813483          	ld	s1,40(sp)
    80001eec:	02013903          	ld	s2,32(sp)
    80001ef0:	01813983          	ld	s3,24(sp)
    80001ef4:	01013a03          	ld	s4,16(sp)
    80001ef8:	00813a83          	ld	s5,8(sp)
    80001efc:	04010113          	addi	sp,sp,64
    80001f00:	00008067          	ret
stack(body != nullptr ? (uint64*)MemoryAllocator::allocate(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001f04:	00000513          	li	a0,0
    80001f08:	f9dff06f          	j	80001ea4 <_ZN3TCBC1EPFvPvES0_mbb+0x50>
    body != nullptr ? (uint64) (supervisor ? &sThreadWrapper : &threadWrapper) : 0,
    80001f0c:	00000797          	auipc	a5,0x0
    80001f10:	e9078793          	addi	a5,a5,-368 # 80001d9c <_ZN3TCB13threadWrapperEv>
    80001f14:	fb1ff06f          	j	80001ec4 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    80001f18:	00000793          	li	a5,0
    80001f1c:	fa9ff06f          	j	80001ec4 <_ZN3TCBC1EPFvPvES0_mbb+0x70>
    stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f20:	00000513          	li	a0,0
    80001f24:	fb1ff06f          	j	80001ed4 <_ZN3TCBC1EPFvPvES0_mbb+0x80>
    if (body != nullptr && ready) Scheduler::put(this);
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	c64080e7          	jalr	-924(ra) # 80002b90 <_ZN9Scheduler3putEP3TCB>
}
    80001f34:	fadff06f          	j	80001ee0 <_ZN3TCBC1EPFvPvES0_mbb+0x8c>

0000000080001f38 <_ZN3TCB9createTCBEPFvPvES0_>:
TCB *TCB::createTCB(TCB::Body body, void *args) {
    80001f38:	fd010113          	addi	sp,sp,-48
    80001f3c:	02113423          	sd	ra,40(sp)
    80001f40:	02813023          	sd	s0,32(sp)
    80001f44:	00913c23          	sd	s1,24(sp)
    80001f48:	01213823          	sd	s2,16(sp)
    80001f4c:	01313423          	sd	s3,8(sp)
    80001f50:	03010413          	addi	s0,sp,48
    80001f54:	00050913          	mv	s2,a0
    80001f58:	00058993          	mv	s3,a1

    ~TCB() { MemoryAllocator::free(stack); }

    void* operator new(size_t size) {
        return MemoryAllocator::allocate(size);
    80001f5c:	03800513          	li	a0,56
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	71c080e7          	jalr	1820(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
    80001f68:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 1, 0);
    80001f6c:	00000793          	li	a5,0
    80001f70:	00100713          	li	a4,1
    80001f74:	00200693          	li	a3,2
    80001f78:	00098613          	mv	a2,s3
    80001f7c:	00090593          	mv	a1,s2
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	ed4080e7          	jalr	-300(ra) # 80001e54 <_ZN3TCBC1EPFvPvES0_mbb>
    80001f88:	0200006f          	j	80001fa8 <_ZN3TCB9createTCBEPFvPvES0_+0x70>
    80001f8c:	00050913          	mv	s2,a0
    void* operator new[](size_t size) {
        return MemoryAllocator::allocate(size);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::free(ptr);
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	774080e7          	jalr	1908(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
    80001f9c:	00090513          	mv	a0,s2
    80001fa0:	00007097          	auipc	ra,0x7
    80001fa4:	f98080e7          	jalr	-104(ra) # 80008f38 <_Unwind_Resume>
}
    80001fa8:	00048513          	mv	a0,s1
    80001fac:	02813083          	ld	ra,40(sp)
    80001fb0:	02013403          	ld	s0,32(sp)
    80001fb4:	01813483          	ld	s1,24(sp)
    80001fb8:	01013903          	ld	s2,16(sp)
    80001fbc:	00813983          	ld	s3,8(sp)
    80001fc0:	03010113          	addi	sp,sp,48
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_>:
TCB *TCB::createDeactivatedTCB(TCB::Body body, void *args) {
    80001fc8:	fd010113          	addi	sp,sp,-48
    80001fcc:	02113423          	sd	ra,40(sp)
    80001fd0:	02813023          	sd	s0,32(sp)
    80001fd4:	00913c23          	sd	s1,24(sp)
    80001fd8:	01213823          	sd	s2,16(sp)
    80001fdc:	01313423          	sd	s3,8(sp)
    80001fe0:	03010413          	addi	s0,sp,48
    80001fe4:	00050913          	mv	s2,a0
    80001fe8:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    80001fec:	03800513          	li	a0,56
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	68c080e7          	jalr	1676(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
    80001ff8:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, 0, 0);
    80001ffc:	00000793          	li	a5,0
    80002000:	00000713          	li	a4,0
    80002004:	00200693          	li	a3,2
    80002008:	00098613          	mv	a2,s3
    8000200c:	00090593          	mv	a1,s2
    80002010:	00000097          	auipc	ra,0x0
    80002014:	e44080e7          	jalr	-444(ra) # 80001e54 <_ZN3TCBC1EPFvPvES0_mbb>
    80002018:	0200006f          	j	80002038 <_ZN3TCB20createDeactivatedTCBEPFvPvES0_+0x70>
    8000201c:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    80002020:	00048513          	mv	a0,s1
    80002024:	00000097          	auipc	ra,0x0
    80002028:	6e4080e7          	jalr	1764(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
    8000202c:	00090513          	mv	a0,s2
    80002030:	00007097          	auipc	ra,0x7
    80002034:	f08080e7          	jalr	-248(ra) # 80008f38 <_Unwind_Resume>
}
    80002038:	00048513          	mv	a0,s1
    8000203c:	02813083          	ld	ra,40(sp)
    80002040:	02013403          	ld	s0,32(sp)
    80002044:	01813483          	ld	s1,24(sp)
    80002048:	01013903          	ld	s2,16(sp)
    8000204c:	00813983          	ld	s3,8(sp)
    80002050:	03010113          	addi	sp,sp,48
    80002054:	00008067          	ret

0000000080002058 <_ZN3TCB19createSupervisorTCBEPFvPvES0_>:
TCB *TCB::createSupervisorTCB(TCB::Body body, void *args) {
    80002058:	fd010113          	addi	sp,sp,-48
    8000205c:	02113423          	sd	ra,40(sp)
    80002060:	02813023          	sd	s0,32(sp)
    80002064:	00913c23          	sd	s1,24(sp)
    80002068:	01213823          	sd	s2,16(sp)
    8000206c:	01313423          	sd	s3,8(sp)
    80002070:	03010413          	addi	s0,sp,48
    80002074:	00050913          	mv	s2,a0
    80002078:	00058993          	mv	s3,a1
        return MemoryAllocator::allocate(size);
    8000207c:	03800513          	li	a0,56
    80002080:	00000097          	auipc	ra,0x0
    80002084:	5fc080e7          	jalr	1532(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
    80002088:	00050493          	mv	s1,a0
    (body, args,DEFAULT_TIME_SLICE, true, true);
    8000208c:	00100793          	li	a5,1
    80002090:	00100713          	li	a4,1
    80002094:	00200693          	li	a3,2
    80002098:	00098613          	mv	a2,s3
    8000209c:	00090593          	mv	a1,s2
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	db4080e7          	jalr	-588(ra) # 80001e54 <_ZN3TCBC1EPFvPvES0_mbb>
    800020a8:	0200006f          	j	800020c8 <_ZN3TCB19createSupervisorTCBEPFvPvES0_+0x70>
    800020ac:	00050913          	mv	s2,a0
        MemoryAllocator::free(ptr);
    800020b0:	00048513          	mv	a0,s1
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	654080e7          	jalr	1620(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
    800020bc:	00090513          	mv	a0,s2
    800020c0:	00007097          	auipc	ra,0x7
    800020c4:	e78080e7          	jalr	-392(ra) # 80008f38 <_Unwind_Resume>
}
    800020c8:	00048513          	mv	a0,s1
    800020cc:	02813083          	ld	ra,40(sp)
    800020d0:	02013403          	ld	s0,32(sp)
    800020d4:	01813483          	ld	s1,24(sp)
    800020d8:	01013903          	ld	s2,16(sp)
    800020dc:	00813983          	ld	s3,8(sp)
    800020e0:	03010113          	addi	sp,sp,48
    800020e4:	00008067          	ret

00000000800020e8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800020e8:	fe010113          	addi	sp,sp,-32
    800020ec:	00113c23          	sd	ra,24(sp)
    800020f0:	00813823          	sd	s0,16(sp)
    800020f4:	00913423          	sd	s1,8(sp)
    800020f8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800020fc:	00006497          	auipc	s1,0x6
    80002100:	d2c4b483          	ld	s1,-724(s1) # 80007e28 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002104:	0184c783          	lbu	a5,24(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002108:	00079663          	bnez	a5,80002114 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    8000210c:	0194c783          	lbu	a5,25(s1)
    80002110:	02078c63          	beqz	a5,80002148 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002114:	00001097          	auipc	ra,0x1
    80002118:	a14080e7          	jalr	-1516(ra) # 80002b28 <_ZN9Scheduler3getEv>
    8000211c:	00006797          	auipc	a5,0x6
    80002120:	d0a7b623          	sd	a0,-756(a5) # 80007e28 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002124:	02850593          	addi	a1,a0,40 # 8028 <_entry-0x7fff7fd8>
    80002128:	02848513          	addi	a0,s1,40
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	184080e7          	jalr	388(ra) # 800012b0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002134:	01813083          	ld	ra,24(sp)
    80002138:	01013403          	ld	s0,16(sp)
    8000213c:	00813483          	ld	s1,8(sp)
    80002140:	02010113          	addi	sp,sp,32
    80002144:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002148:	00048513          	mv	a0,s1
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	a44080e7          	jalr	-1468(ra) # 80002b90 <_ZN9Scheduler3putEP3TCB>
    80002154:	fc1ff06f          	j	80002114 <_ZN3TCB8dispatchEv+0x2c>

0000000080002158 <_Z16threadRunWrapperPv>:
//

#include "../h/syscall_cpp.hpp"
#include "../h/scheduler.hpp"

void threadRunWrapper(void* thread) {
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00113423          	sd	ra,8(sp)
    80002160:	00813023          	sd	s0,0(sp)
    80002164:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) thread;
    t->run();
    80002168:	00053783          	ld	a5,0(a0)
    8000216c:	0107b783          	ld	a5,16(a5)
    80002170:	000780e7          	jalr	a5
}
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_deactivated(&myHandle, body, arg);
}

Thread::~Thread() {}
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813423          	sd	s0,8(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	00813403          	ld	s0,8(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN6ThreadD0Ev>:
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00113423          	sd	ra,8(sp)
    800021a4:	00813023          	sd	s0,0(sp)
    800021a8:	01010413          	addi	s0,sp,16
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	b00080e7          	jalr	-1280(ra) # 80001cac <_ZdlPv>
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN9SemaphoreD1Ev>:

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00113423          	sd	ra,8(sp)
    800021cc:	00813023          	sd	s0,0(sp)
    800021d0:	01010413          	addi	s0,sp,16
    800021d4:	00005797          	auipc	a5,0x5
    800021d8:	30c78793          	addi	a5,a5,780 # 800074e0 <_ZTV9Semaphore+0x10>
    800021dc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800021e0:	00853503          	ld	a0,8(a0)
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	e70080e7          	jalr	-400(ra) # 80001054 <sem_close>
}
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800021fc:	fe010113          	addi	sp,sp,-32
    80002200:	00113c23          	sd	ra,24(sp)
    80002204:	00813823          	sd	s0,16(sp)
    80002208:	00913423          	sd	s1,8(sp)
    8000220c:	02010413          	addi	s0,sp,32
    80002210:	00050493          	mv	s1,a0
}
    80002214:	00000097          	auipc	ra,0x0
    80002218:	fb0080e7          	jalr	-80(ra) # 800021c4 <_ZN9SemaphoreD1Ev>
    8000221c:	00048513          	mv	a0,s1
    80002220:	00000097          	auipc	ra,0x0
    80002224:	a8c080e7          	jalr	-1396(ra) # 80001cac <_ZdlPv>
    80002228:	01813083          	ld	ra,24(sp)
    8000222c:	01013403          	ld	s0,16(sp)
    80002230:	00813483          	ld	s1,8(sp)
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret

000000008000223c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00113423          	sd	ra,8(sp)
    80002244:	00813023          	sd	s0,0(sp)
    80002248:	01010413          	addi	s0,sp,16
    8000224c:	00005797          	auipc	a5,0x5
    80002250:	26c78793          	addi	a5,a5,620 # 800074b8 <_ZTV6Thread+0x10>
    80002254:	00f53023          	sd	a5,0(a0)
    thread_create_deactivated(&myHandle, body, arg);
    80002258:	00850513          	addi	a0,a0,8
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	de0080e7          	jalr	-544(ra) # 8000103c <thread_create_deactivated>
}
    80002264:	00813083          	ld	ra,8(sp)
    80002268:	00013403          	ld	s0,0(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_ZN6Thread5startEv>:
int Thread::start() {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00113423          	sd	ra,8(sp)
    8000227c:	00813023          	sd	s0,0(sp)
    80002280:	01010413          	addi	s0,sp,16
    thread_create(&myHandle,&threadRunWrapper, this);
    80002284:	00050613          	mv	a2,a0
    80002288:	00000597          	auipc	a1,0x0
    8000228c:	ed058593          	addi	a1,a1,-304 # 80002158 <_Z16threadRunWrapperPv>
    80002290:	00850513          	addi	a0,a0,8
    80002294:	fffff097          	auipc	ra,0xfffff
    80002298:	d84080e7          	jalr	-636(ra) # 80001018 <thread_create>
}
    8000229c:	00000513          	li	a0,0
    800022a0:	00813083          	ld	ra,8(sp)
    800022a4:	00013403          	ld	s0,0(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	d70080e7          	jalr	-656(ra) # 80001030 <thread_dispatch>
}
    800022c8:	00813083          	ld	ra,8(sp)
    800022cc:	00013403          	ld	s0,0(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	d90080e7          	jalr	-624(ra) # 80001078 <time_sleep>
}
    800022f0:	00813083          	ld	ra,8(sp)
    800022f4:	00013403          	ld	s0,0(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <_ZN6ThreadC1Ev>:
Thread::Thread() {}
    80002300:	ff010113          	addi	sp,sp,-16
    80002304:	00813423          	sd	s0,8(sp)
    80002308:	01010413          	addi	s0,sp,16
    8000230c:	00005797          	auipc	a5,0x5
    80002310:	1ac78793          	addi	a5,a5,428 # 800074b8 <_ZTV6Thread+0x10>
    80002314:	00f53023          	sd	a5,0(a0)
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00113423          	sd	ra,8(sp)
    8000232c:	00813023          	sd	s0,0(sp)
    80002330:	01010413          	addi	s0,sp,16
    80002334:	00005797          	auipc	a5,0x5
    80002338:	1ac78793          	addi	a5,a5,428 # 800074e0 <_ZTV9Semaphore+0x10>
    8000233c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002340:	00850513          	addi	a0,a0,8
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	d04080e7          	jalr	-764(ra) # 80001048 <sem_open>
}
    8000234c:	00813083          	ld	ra,8(sp)
    80002350:	00013403          	ld	s0,0(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000236c:	00853503          	ld	a0,8(a0)
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	cf0080e7          	jalr	-784(ra) # 80001060 <sem_wait>
}
    80002378:	00813083          	ld	ra,8(sp)
    8000237c:	00013403          	ld	s0,0(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret

0000000080002388 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002388:	ff010113          	addi	sp,sp,-16
    8000238c:	00113423          	sd	ra,8(sp)
    80002390:	00813023          	sd	s0,0(sp)
    80002394:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002398:	00853503          	ld	a0,8(a0)
    8000239c:	fffff097          	auipc	ra,0xfffff
    800023a0:	cd0080e7          	jalr	-816(ra) # 8000106c <sem_signal>
}
    800023a4:	00813083          	ld	ra,8(sp)
    800023a8:	00013403          	ld	s0,0(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN14PeriodicThreadC1Em>:


//PERIODIC THREAD

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00113c23          	sd	ra,24(sp)
    800023bc:	00813823          	sd	s0,16(sp)
    800023c0:	00913423          	sd	s1,8(sp)
    800023c4:	01213023          	sd	s2,0(sp)
    800023c8:	02010413          	addi	s0,sp,32
    800023cc:	00050493          	mv	s1,a0
    800023d0:	00058913          	mv	s2,a1
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	f2c080e7          	jalr	-212(ra) # 80002300 <_ZN6ThreadC1Ev>
    800023dc:	00005797          	auipc	a5,0x5
    800023e0:	0ac78793          	addi	a5,a5,172 # 80007488 <_ZTV14PeriodicThread+0x10>
    800023e4:	00f4b023          	sd	a5,0(s1)
    800023e8:	0324b423          	sd	s2,40(s1)
    800023ec:	01813083          	ld	ra,24(sp)
    800023f0:	01013403          	ld	s0,16(sp)
    800023f4:	00813483          	ld	s1,8(sp)
    800023f8:	00013903          	ld	s2,0(sp)
    800023fc:	02010113          	addi	sp,sp,32
    80002400:	00008067          	ret

0000000080002404 <_ZN7Console4getcEv>:


//CONSOLE

char Console::getc() {
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00113423          	sd	ra,8(sp)
    8000240c:	00813023          	sd	s0,0(sp)
    80002410:	01010413          	addi	s0,sp,16
    return getc();
    80002414:	00000097          	auipc	ra,0x0
    80002418:	ff0080e7          	jalr	-16(ra) # 80002404 <_ZN7Console4getcEv>
}
    8000241c:	00813083          	ld	ra,8(sp)
    80002420:	00013403          	ld	s0,0(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00113423          	sd	ra,8(sp)
    80002434:	00813023          	sd	s0,0(sp)
    80002438:	01010413          	addi	s0,sp,16
    putc(c);
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	ff0080e7          	jalr	-16(ra) # 8000242c <_ZN7Console4putcEc>
}
    80002444:	00813083          	ld	ra,8(sp)
    80002448:	00013403          	ld	s0,0(sp)
    8000244c:	01010113          	addi	sp,sp,16
    80002450:	00008067          	ret

0000000080002454 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00813423          	sd	s0,8(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN14PeriodicThread18periodicActivationEv>:
private:
    time_t period;
protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00813423          	sd	s0,8(sp)
    80002474:	01010413          	addi	s0,sp,16
    80002478:	00813403          	ld	s0,8(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00813423          	sd	s0,8(sp)
    8000248c:	01010413          	addi	s0,sp,16
    80002490:	00005797          	auipc	a5,0x5
    80002494:	ff878793          	addi	a5,a5,-8 # 80007488 <_ZTV14PeriodicThread+0x10>
    80002498:	00f53023          	sd	a5,0(a0)
    8000249c:	00813403          	ld	s0,8(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <_ZN14PeriodicThreadD0Ev>:
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00113423          	sd	ra,8(sp)
    800024b0:	00813023          	sd	s0,0(sp)
    800024b4:	01010413          	addi	s0,sp,16
    800024b8:	00005797          	auipc	a5,0x5
    800024bc:	fd078793          	addi	a5,a5,-48 # 80007488 <_ZTV14PeriodicThread+0x10>
    800024c0:	00f53023          	sd	a5,0(a0)
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	7e8080e7          	jalr	2024(ra) # 80001cac <_ZdlPv>
    800024cc:	00813083          	ld	ra,8(sp)
    800024d0:	00013403          	ld	s0,0(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN15MemoryAllocator7initMemEv>:
    tryToMerge(newNode);
    tryToMerge(curr);
    //printMem();
}

void MemoryAllocator::initMem()  {
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    fMemHead = (FreeMem*)HEAP_START_ADDR;
    800024e8:	00005797          	auipc	a5,0x5
    800024ec:	0407b783          	ld	a5,64(a5) # 80007528 <_GLOBAL_OFFSET_TABLE_+0x20>
    800024f0:	0007b783          	ld	a5,0(a5)
    800024f4:	00006697          	auipc	a3,0x6
    800024f8:	94468693          	addi	a3,a3,-1724 # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    800024fc:	00f6b023          	sd	a5,0(a3)
    fMemHead->size = (size_t) ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR );
    80002500:	00005717          	auipc	a4,0x5
    80002504:	05873703          	ld	a4,88(a4) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002508:	00073703          	ld	a4,0(a4)
    8000250c:	40f70733          	sub	a4,a4,a5
    80002510:	00e7b023          	sd	a4,0(a5)
    /*fMemHead->prev = fMemHead;
    fMemHead->next = fMemHead;*/
    fMemHead->prev = nullptr;
    80002514:	0006b783          	ld	a5,0(a3)
    80002518:	0007b423          	sd	zero,8(a5)
    fMemHead->next = nullptr;
    8000251c:	0007b823          	sd	zero,16(a5)
}
    80002520:	00813403          	ld	s0,8(sp)
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00008067          	ret

000000008000252c <_ZN15MemoryAllocator8firstFitEm>:

MemoryAllocator::FreeMem *MemoryAllocator::firstFit(size_t size) {
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00813423          	sd	s0,8(sp)
    80002534:	01010413          	addi	s0,sp,16
    80002538:	00050613          	mv	a2,a0
    FreeMem* curr = fMemHead;
    8000253c:	00006517          	auipc	a0,0x6
    80002540:	8fc53503          	ld	a0,-1796(a0) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    for(; curr && curr->next; curr = curr->next)
    80002544:	02050063          	beqz	a0,80002564 <_ZN15MemoryAllocator8firstFitEm+0x38>
    80002548:	01053703          	ld	a4,16(a0)
    8000254c:	00070c63          	beqz	a4,80002564 <_ZN15MemoryAllocator8firstFitEm+0x38>
        if (size + sizeof(size_t) <= curr->size) return curr;
    80002550:	00860793          	addi	a5,a2,8
    80002554:	00053683          	ld	a3,0(a0)
    80002558:	00f6fe63          	bgeu	a3,a5,80002574 <_ZN15MemoryAllocator8firstFitEm+0x48>
    for(; curr && curr->next; curr = curr->next)
    8000255c:	00070513          	mv	a0,a4
    80002560:	fe5ff06f          	j	80002544 <_ZN15MemoryAllocator8firstFitEm+0x18>
    if (curr && (size + sizeof(size_t) <= curr->size)) return curr;
    80002564:	00050863          	beqz	a0,80002574 <_ZN15MemoryAllocator8firstFitEm+0x48>
    80002568:	00860613          	addi	a2,a2,8
    8000256c:	00053783          	ld	a5,0(a0)
    80002570:	00c7e863          	bltu	a5,a2,80002580 <_ZN15MemoryAllocator8firstFitEm+0x54>
    return nullptr;
}
    80002574:	00813403          	ld	s0,8(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret
    return nullptr;
    80002580:	00000513          	li	a0,0
    80002584:	ff1ff06f          	j	80002574 <_ZN15MemoryAllocator8firstFitEm+0x48>

0000000080002588 <_ZN15MemoryAllocator8calcSizeEm>:

    }
    return ret;
}

size_t MemoryAllocator::calcSize(size_t size) {
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
    size_t allocSize = size + sizeof(size_t);
    80002594:	00850513          	addi	a0,a0,8
    size_t BlockSize = MEM_BLOCK_SIZE;
    if (allocSize % BlockSize) allocSize = allocSize + (BlockSize - allocSize % BlockSize);
    80002598:	03f57793          	andi	a5,a0,63
    8000259c:	00078863          	beqz	a5,800025ac <_ZN15MemoryAllocator8calcSizeEm+0x24>
    800025a0:	04000713          	li	a4,64
    800025a4:	40f707b3          	sub	a5,a4,a5
    800025a8:	00f50533          	add	a0,a0,a5
    return allocSize;
}
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>:
void *MemoryAllocator::allocBlocks(MemoryAllocator::FreeMem *node, size_t size) {
    800025b8:	fe010113          	addi	sp,sp,-32
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00913423          	sd	s1,8(sp)
    800025c8:	02010413          	addi	s0,sp,32
    800025cc:	00050493          	mv	s1,a0
    if (node) {
    800025d0:	04050c63          	beqz	a0,80002628 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x70>
    800025d4:	00058513          	mv	a0,a1
        size_t allocSize = calcSize(size);
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	fb0080e7          	jalr	-80(ra) # 80002588 <_ZN15MemoryAllocator8calcSizeEm>
        if (node->size - allocSize >= MEM_BLOCK_SIZE) {
    800025e0:	0004b783          	ld	a5,0(s1)
    800025e4:	40a787b3          	sub	a5,a5,a0
    800025e8:	03f00713          	li	a4,63
    800025ec:	04f77e63          	bgeu	a4,a5,80002648 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x90>
            newNode = (FreeMem*)((uint64)node + (uint64)allocSize);
    800025f0:	00a48733          	add	a4,s1,a0
            newNode->size = node->size - allocSize;
    800025f4:	00f73023          	sd	a5,0(a4)
            if (node->prev) node->prev->next = newNode;
    800025f8:	0084b783          	ld	a5,8(s1)
    800025fc:	04078063          	beqz	a5,8000263c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x84>
    80002600:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = newNode;
    80002604:	0104b783          	ld	a5,16(s1)
    80002608:	00078463          	beqz	a5,80002610 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x58>
    8000260c:	00e7b423          	sd	a4,8(a5)
            newNode->next = node->next;
    80002610:	0104b783          	ld	a5,16(s1)
    80002614:	00f73823          	sd	a5,16(a4)
            newNode->prev = node->prev;
    80002618:	0084b783          	ld	a5,8(s1)
    8000261c:	00f73423          	sd	a5,8(a4)
        *(size_t*)node = allocSize;
    80002620:	00a4b023          	sd	a0,0(s1)
        ret = (void*)((uint64)node + (uint64)sizeof(size_t));
    80002624:	00848513          	addi	a0,s1,8
}
    80002628:	01813083          	ld	ra,24(sp)
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	00813483          	ld	s1,8(sp)
    80002634:	02010113          	addi	sp,sp,32
    80002638:	00008067          	ret
            else fMemHead = newNode;
    8000263c:	00005797          	auipc	a5,0x5
    80002640:	7ee7be23          	sd	a4,2044(a5) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    80002644:	fc1ff06f          	j	80002604 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x4c>
            if (node->prev) node->prev->next = node->next;
    80002648:	0084b783          	ld	a5,8(s1)
    8000264c:	02078063          	beqz	a5,8000266c <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xb4>
    80002650:	0104b703          	ld	a4,16(s1)
    80002654:	00e7b823          	sd	a4,16(a5)
            if (node->next) node->next->prev = node->prev;
    80002658:	0104b783          	ld	a5,16(s1)
    8000265c:	fc0782e3          	beqz	a5,80002620 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
    80002660:	0084b703          	ld	a4,8(s1)
    80002664:	00e7b423          	sd	a4,8(a5)
    80002668:	fb9ff06f          	j	80002620 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0x68>
            else fMemHead = node->next;
    8000266c:	0104b783          	ld	a5,16(s1)
    80002670:	00005717          	auipc	a4,0x5
    80002674:	7cf73423          	sd	a5,1992(a4) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    80002678:	fe1ff06f          	j	80002658 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm+0xa0>

000000008000267c <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate(size_t size) {
    8000267c:	fe010113          	addi	sp,sp,-32
    80002680:	00113c23          	sd	ra,24(sp)
    80002684:	00813823          	sd	s0,16(sp)
    80002688:	00913423          	sd	s1,8(sp)
    8000268c:	02010413          	addi	s0,sp,32
    80002690:	00050493          	mv	s1,a0
    void *ret = allocBlocks(firstFit(size), size);
    80002694:	00000097          	auipc	ra,0x0
    80002698:	e98080e7          	jalr	-360(ra) # 8000252c <_ZN15MemoryAllocator8firstFitEm>
    8000269c:	00048593          	mv	a1,s1
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	f18080e7          	jalr	-232(ra) # 800025b8 <_ZN15MemoryAllocator11allocBlocksEPNS_7FreeMemEm>
}
    800026a8:	01813083          	ld	ra,24(sp)
    800026ac:	01013403          	ld	s0,16(sp)
    800026b0:	00813483          	ld	s1,8(sp)
    800026b4:	02010113          	addi	sp,sp,32
    800026b8:	00008067          	ret

00000000800026bc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>:

void MemoryAllocator::tryToMerge(MemoryAllocator::FreeMem *node) {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00813423          	sd	s0,8(sp)
    800026c4:	01010413          	addi	s0,sp,16
    if(!node) return;
    800026c8:	02050a63          	beqz	a0,800026fc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    if (!(node->next && ((uint64)node + (uint64)node->size == (uint64)node->next))) return;
    800026cc:	01053783          	ld	a5,16(a0)
    800026d0:	02078663          	beqz	a5,800026fc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    800026d4:	00053703          	ld	a4,0(a0)
    800026d8:	00e506b3          	add	a3,a0,a4
    800026dc:	02f69063          	bne	a3,a5,800026fc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>

    node->size += node->next->size;
    800026e0:	0007b683          	ld	a3,0(a5)
    800026e4:	00d70733          	add	a4,a4,a3
    800026e8:	00e53023          	sd	a4,0(a0)
    node->next = node->next->next;
    800026ec:	0107b783          	ld	a5,16(a5)
    800026f0:	00f53823          	sd	a5,16(a0)
    if (node->next) node->next->prev = node;
    800026f4:	00078463          	beqz	a5,800026fc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE+0x40>
    800026f8:	00a7b423          	sd	a0,8(a5)
}
    800026fc:	00813403          	ld	s0,8(sp)
    80002700:	01010113          	addi	sp,sp,16
    80002704:	00008067          	ret

0000000080002708 <_ZN15MemoryAllocator4freeEPv>:
void MemoryAllocator::free(void* addr) {
    80002708:	fe010113          	addi	sp,sp,-32
    8000270c:	00113c23          	sd	ra,24(sp)
    80002710:	00813823          	sd	s0,16(sp)
    80002714:	00913423          	sd	s1,8(sp)
    80002718:	02010413          	addi	s0,sp,32
    addr = (void*)((uint64)addr - sizeof(size_t));
    8000271c:	ff850513          	addi	a0,a0,-8
    if (fMemHead && (addr>(void*)fMemHead))
    80002720:	00005717          	auipc	a4,0x5
    80002724:	71873703          	ld	a4,1816(a4) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    80002728:	02070063          	beqz	a4,80002748 <_ZN15MemoryAllocator4freeEPv+0x40>
    8000272c:	02a77263          	bgeu	a4,a0,80002750 <_ZN15MemoryAllocator4freeEPv+0x48>
        for(curr = fMemHead; curr->next != 0 && (void*)curr->next < addr; curr = curr->next);
    80002730:	00070793          	mv	a5,a4
    80002734:	00078493          	mv	s1,a5
    80002738:	0107b783          	ld	a5,16(a5)
    8000273c:	00078c63          	beqz	a5,80002754 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002740:	fea7eae3          	bltu	a5,a0,80002734 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80002744:	0100006f          	j	80002754 <_ZN15MemoryAllocator4freeEPv+0x4c>
    FreeMem* curr = nullptr;
    80002748:	00070493          	mv	s1,a4
    8000274c:	0080006f          	j	80002754 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002750:	00000493          	li	s1,0
    newNode->prev = curr;
    80002754:	00953423          	sd	s1,8(a0)
    if (curr) newNode->next = curr->next, curr->next = newNode;
    80002758:	04048263          	beqz	s1,8000279c <_ZN15MemoryAllocator4freeEPv+0x94>
    8000275c:	0104b783          	ld	a5,16(s1)
    80002760:	00f53823          	sd	a5,16(a0)
    80002764:	00a4b823          	sd	a0,16(s1)
    if (newNode->next) newNode->next->prev = newNode;
    80002768:	01053783          	ld	a5,16(a0)
    8000276c:	00078463          	beqz	a5,80002774 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80002770:	00a7b423          	sd	a0,8(a5)
    tryToMerge(newNode);
    80002774:	00000097          	auipc	ra,0x0
    80002778:	f48080e7          	jalr	-184(ra) # 800026bc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
    tryToMerge(curr);
    8000277c:	00048513          	mv	a0,s1
    80002780:	00000097          	auipc	ra,0x0
    80002784:	f3c080e7          	jalr	-196(ra) # 800026bc <_ZN15MemoryAllocator10tryToMergeEPNS_7FreeMemE>
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00008067          	ret
    else newNode->next = fMemHead, fMemHead = newNode;
    8000279c:	00e53823          	sd	a4,16(a0)
    800027a0:	00005797          	auipc	a5,0x5
    800027a4:	68a7bc23          	sd	a0,1688(a5) # 80007e38 <_ZN15MemoryAllocator8fMemHeadE>
    800027a8:	fc1ff06f          	j	80002768 <_ZN15MemoryAllocator4freeEPv+0x60>

00000000800027ac <_ZN5RiscV10popSppSpieEv>:
// definition of: 'inline void RiscV::pushRegisters();' is in util.S

// definition of: 'inline void RiscV::popRegisters();' is in util.S

void RiscV::popSppSpie()
{
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00813423          	sd	s0,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800027b8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800027bc:	10200073          	sret
    800027c0:	00813403          	ld	s0,8(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <_Z14__print_stringPKc>:

#include "../lib/hw.h"
#include "../h/uart.hpp"
#include "../h/__print.hpp"

void __print_string(char const *string) {
    800027cc:	fe010113          	addi	sp,sp,-32
    800027d0:	00113c23          	sd	ra,24(sp)
    800027d4:	00813823          	sd	s0,16(sp)
    800027d8:	00913423          	sd	s1,8(sp)
    800027dc:	02010413          	addi	s0,sp,32
    800027e0:	00050493          	mv	s1,a0
    for (char const *c = string; *c != '\0'; c++) Uart::txPut(*c);
    800027e4:	0004c503          	lbu	a0,0(s1)
    800027e8:	00050a63          	beqz	a0,800027fc <_Z14__print_stringPKc+0x30>
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	2a4080e7          	jalr	676(ra) # 80001a90 <_ZN4Uart5txPutEc>
    800027f4:	00148493          	addi	s1,s1,1
    800027f8:	fedff06f          	j	800027e4 <_Z14__print_stringPKc+0x18>
}
    800027fc:	01813083          	ld	ra,24(sp)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret

0000000080002810 <_Z14__print_uint64m>:

void __print_uint64(uint64 integer) {
    80002810:	fc010113          	addi	sp,sp,-64
    80002814:	02113c23          	sd	ra,56(sp)
    80002818:	02813823          	sd	s0,48(sp)
    8000281c:	02913423          	sd	s1,40(sp)
    80002820:	04010413          	addi	s0,sp,64
    static char digits[] = "0123456789";
    char output[20];
    int i = 0;
    80002824:	00000493          	li	s1,0
    do {
        output[i++] = digits[integer % 10];
    80002828:	00a00693          	li	a3,10
    8000282c:	02d57633          	remu	a2,a0,a3
    80002830:	00004717          	auipc	a4,0x4
    80002834:	95870713          	addi	a4,a4,-1704 # 80006188 <_ZZ14__print_uint64mE6digits>
    80002838:	00c70733          	add	a4,a4,a2
    8000283c:	00074703          	lbu	a4,0(a4)
    80002840:	fe040613          	addi	a2,s0,-32
    80002844:	009607b3          	add	a5,a2,s1
    80002848:	0014849b          	addiw	s1,s1,1
    8000284c:	fee78423          	sb	a4,-24(a5)
    } while ((integer/=10) != 0);
    80002850:	00050713          	mv	a4,a0
    80002854:	02d55533          	divu	a0,a0,a3
    80002858:	00900793          	li	a5,9
    8000285c:	fce7e6e3          	bltu	a5,a4,80002828 <_Z14__print_uint64m+0x18>
    while(--i >= 0) Uart::txPut(output[i]);
    80002860:	fff4849b          	addiw	s1,s1,-1
    80002864:	0004ce63          	bltz	s1,80002880 <_Z14__print_uint64m+0x70>
    80002868:	fe040793          	addi	a5,s0,-32
    8000286c:	009787b3          	add	a5,a5,s1
    80002870:	fe87c503          	lbu	a0,-24(a5)
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	21c080e7          	jalr	540(ra) # 80001a90 <_ZN4Uart5txPutEc>
    8000287c:	fe5ff06f          	j	80002860 <_Z14__print_uint64m+0x50>
}
    80002880:	03813083          	ld	ra,56(sp)
    80002884:	03013403          	ld	s0,48(sp)
    80002888:	02813483          	ld	s1,40(sp)
    8000288c:	04010113          	addi	sp,sp,64
    80002890:	00008067          	ret

0000000080002894 <_Z11__print_intx>:

void __print_int(long long int integer) {
    80002894:	fe010113          	addi	sp,sp,-32
    80002898:	00113c23          	sd	ra,24(sp)
    8000289c:	00813823          	sd	s0,16(sp)
    800028a0:	00913423          	sd	s1,8(sp)
    800028a4:	02010413          	addi	s0,sp,32
    800028a8:	00050493          	mv	s1,a0
    if (integer < 0) Uart::txPut('-'), integer *= -1;
    800028ac:	02054263          	bltz	a0,800028d0 <_Z11__print_intx+0x3c>
    Uart::txPut(integer);
    800028b0:	0ff4f513          	andi	a0,s1,255
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	1dc080e7          	jalr	476(ra) # 80001a90 <_ZN4Uart5txPutEc>
}
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	01013403          	ld	s0,16(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	02010113          	addi	sp,sp,32
    800028cc:	00008067          	ret
    if (integer < 0) Uart::txPut('-'), integer *= -1;
    800028d0:	02d00513          	li	a0,45
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	1bc080e7          	jalr	444(ra) # 80001a90 <_ZN4Uart5txPutEc>
    800028dc:	409004b3          	neg	s1,s1
    800028e0:	fd1ff06f          	j	800028b0 <_Z11__print_intx+0x1c>

00000000800028e4 <_ZN3Sem9createSemEj>:
// Created by os on 9/12/22.
//

#include "../h/sem.hpp"

Sem* Sem::createSem(unsigned init) {
    800028e4:	fe010113          	addi	sp,sp,-32
    800028e8:	00113c23          	sd	ra,24(sp)
    800028ec:	00813823          	sd	s0,16(sp)
    800028f0:	00913423          	sd	s1,8(sp)
    800028f4:	02010413          	addi	s0,sp,32
    800028f8:	00050493          	mv	s1,a0
        return MemoryAllocator::allocate(size);
    800028fc:	02000513          	li	a0,32
    80002900:	00000097          	auipc	ra,0x0
    80002904:	d7c080e7          	jalr	-644(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
        }
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    80002908:	00053023          	sd	zero,0(a0)
    8000290c:	00053423          	sd	zero,8(a0)
    void operator delete[](void* ptr) {
        MemoryAllocator::free(ptr);
    }

private:
    Sem(unsigned init) : init(init), val(init) {}
    80002910:	00952823          	sw	s1,16(a0)
    80002914:	02049493          	slli	s1,s1,0x20
    80002918:	0204d493          	srli	s1,s1,0x20
    8000291c:	00953c23          	sd	s1,24(a0)
    return new Sem(init);
}
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	01013403          	ld	s0,16(sp)
    80002928:	00813483          	ld	s1,8(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret

0000000080002934 <_ZN3SemD1Ev>:

Sem::~Sem() {
    80002934:	fe010113          	addi	sp,sp,-32
    80002938:	00113c23          	sd	ra,24(sp)
    8000293c:	00813823          	sd	s0,16(sp)
    80002940:	00913423          	sd	s1,8(sp)
    80002944:	01213023          	sd	s2,0(sp)
    80002948:	02010413          	addi	s0,sp,32
    8000294c:	00050493          	mv	s1,a0
    80002950:	0280006f          	j	80002978 <_ZN3SemD1Ev+0x44>
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
    80002954:	0004b423          	sd	zero,8(s1)
            MemoryAllocator::free(ptr);
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	db0080e7          	jalr	-592(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
    while (val < 0) {
        Scheduler::put(list.takeFirst());
    80002960:	00090513          	mv	a0,s2
    80002964:	00000097          	auipc	ra,0x0
    80002968:	22c080e7          	jalr	556(ra) # 80002b90 <_ZN9Scheduler3putEP3TCB>
        val++;
    8000296c:	0184b783          	ld	a5,24(s1)
    80002970:	00178793          	addi	a5,a5,1
    80002974:	00f4bc23          	sd	a5,24(s1)
    while (val < 0) {
    80002978:	0184b783          	ld	a5,24(s1)
    8000297c:	0207d463          	bgez	a5,800029a4 <_ZN3SemD1Ev+0x70>
        if (!head) return 0;
    80002980:	0004b503          	ld	a0,0(s1)
    80002984:	00050c63          	beqz	a0,8000299c <_ZN3SemD1Ev+0x68>
        T* ret = head->data;
    80002988:	00053903          	ld	s2,0(a0)
        head = head->next;
    8000298c:	00853783          	ld	a5,8(a0)
    80002990:	00f4b023          	sd	a5,0(s1)
        if (!head) tail = 0;
    80002994:	fc0792e3          	bnez	a5,80002958 <_ZN3SemD1Ev+0x24>
    80002998:	fbdff06f          	j	80002954 <_ZN3SemD1Ev+0x20>
        if (!head) return 0;
    8000299c:	00050913          	mv	s2,a0
    800029a0:	fc1ff06f          	j	80002960 <_ZN3SemD1Ev+0x2c>
    }
}
    800029a4:	01813083          	ld	ra,24(sp)
    800029a8:	01013403          	ld	s0,16(sp)
    800029ac:	00813483          	ld	s1,8(sp)
    800029b0:	00013903          	ld	s2,0(sp)
    800029b4:	02010113          	addi	sp,sp,32
    800029b8:	00008067          	ret

00000000800029bc <_ZN3Sem7semWaitEv>:

int Sem::semWait() {
    //if (Scheduler::readyQueueEmpty()) return -1;
    if (--val < 0) {
    800029bc:	01853783          	ld	a5,24(a0)
    800029c0:	fff78793          	addi	a5,a5,-1
    800029c4:	00f53c23          	sd	a5,24(a0)
    800029c8:	0007c663          	bltz	a5,800029d4 <_ZN3Sem7semWaitEv+0x18>
        //list.printStatus();
        TCB::dispatch();
        //thread_dispatch();
    }
    return 0;
}
    800029cc:	00000513          	li	a0,0
    800029d0:	00008067          	ret
int Sem::semWait() {
    800029d4:	fe010113          	addi	sp,sp,-32
    800029d8:	00113c23          	sd	ra,24(sp)
    800029dc:	00813823          	sd	s0,16(sp)
    800029e0:	00913423          	sd	s1,8(sp)
    800029e4:	01213023          	sd	s2,0(sp)
    800029e8:	02010413          	addi	s0,sp,32
    800029ec:	00050493          	mv	s1,a0
        TCB *old = TCB::running;
    800029f0:	00005797          	auipc	a5,0x5
    800029f4:	b607b783          	ld	a5,-1184(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    800029f8:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool val) { blocked = val; }
    800029fc:	00100793          	li	a5,1
    80002a00:	00f90ca3          	sb	a5,25(s2)
            return MemoryAllocator::allocate(size);
    80002a04:	01000513          	li	a0,16
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	c74080e7          	jalr	-908(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002a10:	01253023          	sd	s2,0(a0)
    80002a14:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002a18:	0084b783          	ld	a5,8(s1)
    80002a1c:	02078863          	beqz	a5,80002a4c <_ZN3Sem7semWaitEv+0x90>
            tail->next = newNode;
    80002a20:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002a24:	00a4b423          	sd	a0,8(s1)
        TCB::dispatch();
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	6c0080e7          	jalr	1728(ra) # 800020e8 <_ZN3TCB8dispatchEv>
}
    80002a30:	00000513          	li	a0,0
    80002a34:	01813083          	ld	ra,24(sp)
    80002a38:	01013403          	ld	s0,16(sp)
    80002a3c:	00813483          	ld	s1,8(sp)
    80002a40:	00013903          	ld	s2,0(sp)
    80002a44:	02010113          	addi	sp,sp,32
    80002a48:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002a4c:	00a4b423          	sd	a0,8(s1)
    80002a50:	00a4b023          	sd	a0,0(s1)
    80002a54:	fd5ff06f          	j	80002a28 <_ZN3Sem7semWaitEv+0x6c>

0000000080002a58 <_ZN3Sem9semSignalEv>:

int Sem::semSignal() {
    if (++val <= 0) {
    80002a58:	01853703          	ld	a4,24(a0)
    80002a5c:	00170713          	addi	a4,a4,1
    80002a60:	00e53c23          	sd	a4,24(a0)
    80002a64:	00e05663          	blez	a4,80002a70 <_ZN3Sem9semSignalEv+0x18>
        TCB* ready = list.takeFirst();
        ready->setBlocked(false);
        Scheduler::put(ready);
    }
    return 0;
    80002a68:	00000513          	li	a0,0
    80002a6c:	00008067          	ret
int Sem::semSignal() {
    80002a70:	fe010113          	addi	sp,sp,-32
    80002a74:	00113c23          	sd	ra,24(sp)
    80002a78:	00813823          	sd	s0,16(sp)
    80002a7c:	00913423          	sd	s1,8(sp)
    80002a80:	02010413          	addi	s0,sp,32
    80002a84:	00050793          	mv	a5,a0
        if (!head) return 0;
    80002a88:	00053503          	ld	a0,0(a0)
    80002a8c:	04050663          	beqz	a0,80002ad8 <_ZN3Sem9semSignalEv+0x80>
        T* ret = head->data;
    80002a90:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002a94:	00853703          	ld	a4,8(a0)
    80002a98:	00e7b023          	sd	a4,0(a5)
        if (!head) tail = 0;
    80002a9c:	02070a63          	beqz	a4,80002ad0 <_ZN3Sem9semSignalEv+0x78>
            MemoryAllocator::free(ptr);
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	c68080e7          	jalr	-920(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
    80002aa8:	00048ca3          	sb	zero,25(s1)
        Scheduler::put(ready);
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	0e0080e7          	jalr	224(ra) # 80002b90 <_ZN9Scheduler3putEP3TCB>
    80002ab8:	00000513          	li	a0,0
    80002abc:	01813083          	ld	ra,24(sp)
    80002ac0:	01013403          	ld	s0,16(sp)
    80002ac4:	00813483          	ld	s1,8(sp)
    80002ac8:	02010113          	addi	sp,sp,32
    80002acc:	00008067          	ret
        if (!head) tail = 0;
    80002ad0:	0007b423          	sd	zero,8(a5)
    80002ad4:	fcdff06f          	j	80002aa0 <_ZN3Sem9semSignalEv+0x48>
        if (!head) return 0;
    80002ad8:	00050493          	mv	s1,a0
    80002adc:	fcdff06f          	j	80002aa8 <_ZN3Sem9semSignalEv+0x50>

0000000080002ae0 <_Z41__static_initialization_and_destruction_0ii>:
    TCB* old = TCB::running;
    old->setBlocked(true);
    sleepNode* sn = new sleepNode(time, old);
    sleepQueue.putSorted(sn);
    TCB::dispatch();
}
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00813423          	sd	s0,8(sp)
    80002ae8:	01010413          	addi	s0,sp,16
    80002aec:	00100793          	li	a5,1
    80002af0:	00f50863          	beq	a0,a5,80002b00 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002af4:	00813403          	ld	s0,8(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret
    80002b00:	000107b7          	lui	a5,0x10
    80002b04:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b08:	fef596e3          	bne	a1,a5,80002af4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002b0c:	00005797          	auipc	a5,0x5
    80002b10:	33478793          	addi	a5,a5,820 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002b14:	0007b023          	sd	zero,0(a5)
    80002b18:	0007b423          	sd	zero,8(a5)
    80002b1c:	0007b823          	sd	zero,16(a5)
    80002b20:	0007bc23          	sd	zero,24(a5)
    80002b24:	fd1ff06f          	j	80002af4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002b28 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002b28:	fe010113          	addi	sp,sp,-32
    80002b2c:	00113c23          	sd	ra,24(sp)
    80002b30:	00813823          	sd	s0,16(sp)
    80002b34:	00913423          	sd	s1,8(sp)
    80002b38:	02010413          	addi	s0,sp,32
        if (!head) return 0;
    80002b3c:	00005517          	auipc	a0,0x5
    80002b40:	30453503          	ld	a0,772(a0) # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002b44:	04050263          	beqz	a0,80002b88 <_ZN9Scheduler3getEv+0x60>
        T* ret = head->data;
    80002b48:	00053483          	ld	s1,0(a0)
        head = head->next;
    80002b4c:	00853783          	ld	a5,8(a0)
    80002b50:	00005717          	auipc	a4,0x5
    80002b54:	2ef73823          	sd	a5,752(a4) # 80007e40 <_ZN9Scheduler10readyQueueE>
        if (!head) tail = 0;
    80002b58:	02078263          	beqz	a5,80002b7c <_ZN9Scheduler3getEv+0x54>
            MemoryAllocator::free(ptr);
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	bac080e7          	jalr	-1108(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
}
    80002b64:	00048513          	mv	a0,s1
    80002b68:	01813083          	ld	ra,24(sp)
    80002b6c:	01013403          	ld	s0,16(sp)
    80002b70:	00813483          	ld	s1,8(sp)
    80002b74:	02010113          	addi	sp,sp,32
    80002b78:	00008067          	ret
        if (!head) tail = 0;
    80002b7c:	00005797          	auipc	a5,0x5
    80002b80:	2c07b623          	sd	zero,716(a5) # 80007e48 <_ZN9Scheduler10readyQueueE+0x8>
    80002b84:	fd9ff06f          	j	80002b5c <_ZN9Scheduler3getEv+0x34>
        if (!head) return 0;
    80002b88:	00050493          	mv	s1,a0
    return ret;
    80002b8c:	fd9ff06f          	j	80002b64 <_ZN9Scheduler3getEv+0x3c>

0000000080002b90 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002b90:	fe010113          	addi	sp,sp,-32
    80002b94:	00113c23          	sd	ra,24(sp)
    80002b98:	00813823          	sd	s0,16(sp)
    80002b9c:	00913423          	sd	s1,8(sp)
    80002ba0:	02010413          	addi	s0,sp,32
    80002ba4:	00050493          	mv	s1,a0
            return MemoryAllocator::allocate(size);
    80002ba8:	01000513          	li	a0,16
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	ad0080e7          	jalr	-1328(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002bb4:	00953023          	sd	s1,0(a0)
    80002bb8:	00053423          	sd	zero,8(a0)
        if (!tail) head = tail = newNode;
    80002bbc:	00005797          	auipc	a5,0x5
    80002bc0:	28c7b783          	ld	a5,652(a5) # 80007e48 <_ZN9Scheduler10readyQueueE+0x8>
    80002bc4:	02078263          	beqz	a5,80002be8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = newNode;
    80002bc8:	00a7b423          	sd	a0,8(a5)
            tail = newNode;
    80002bcc:	00005797          	auipc	a5,0x5
    80002bd0:	26a7be23          	sd	a0,636(a5) # 80007e48 <_ZN9Scheduler10readyQueueE+0x8>
}
    80002bd4:	01813083          	ld	ra,24(sp)
    80002bd8:	01013403          	ld	s0,16(sp)
    80002bdc:	00813483          	ld	s1,8(sp)
    80002be0:	02010113          	addi	sp,sp,32
    80002be4:	00008067          	ret
        if (!tail) head = tail = newNode;
    80002be8:	00005797          	auipc	a5,0x5
    80002bec:	25878793          	addi	a5,a5,600 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002bf0:	00a7b423          	sd	a0,8(a5)
    80002bf4:	00a7b023          	sd	a0,0(a5)
    80002bf8:	fddff06f          	j	80002bd4 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002bfc <_ZN9Scheduler14timerInterruptEv>:

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
    80002bfc:	00005797          	auipc	a5,0x5
    80002c00:	2547b783          	ld	a5,596(a5) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002c04:	0a078863          	beqz	a5,80002cb4 <_ZN9Scheduler14timerInterruptEv+0xb8>
void Scheduler::timerInterrupt() {
    80002c08:	fe010113          	addi	sp,sp,-32
    80002c0c:	00113c23          	sd	ra,24(sp)
    80002c10:	00813823          	sd	s0,16(sp)
    80002c14:	00913423          	sd	s1,8(sp)
    80002c18:	02010413          	addi	s0,sp,32
        return head->data;
    80002c1c:	0007b483          	ld	s1,0(a5)
    if (!first) return;
    80002c20:	08048063          	beqz	s1,80002ca0 <_ZN9Scheduler14timerInterruptEv+0xa4>
    first->time--;
    80002c24:	0004b783          	ld	a5,0(s1)
    80002c28:	fff78793          	addi	a5,a5,-1
    80002c2c:	00f4b023          	sd	a5,0(s1)
    80002c30:	0440006f          	j	80002c74 <_ZN9Scheduler14timerInterruptEv+0x78>
        if (!head) tail = 0;
    80002c34:	00005797          	auipc	a5,0x5
    80002c38:	2207b223          	sd	zero,548(a5) # 80007e58 <_ZN9Scheduler10sleepQueueE+0x8>
            MemoryAllocator::free(ptr);
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	acc080e7          	jalr	-1332(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
        first->thread->setBlocked(false);
    80002c44:	0084b783          	ld	a5,8(s1)
    80002c48:	00078ca3          	sb	zero,25(a5)
        Scheduler::put(first->thread);
    80002c4c:	0084b503          	ld	a0,8(s1)
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	f40080e7          	jalr	-192(ra) # 80002b90 <_ZN9Scheduler3putEP3TCB>
        void* operator new[](size_t size) {
            return MemoryAllocator::allocate(size);
        }

        void operator delete(void* ptr) {
            MemoryAllocator::free(ptr);
    80002c58:	00048513          	mv	a0,s1
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	aac080e7          	jalr	-1364(ra) # 80002708 <_ZN15MemoryAllocator4freeEPv>
        if(!head) return 0;
    80002c64:	00005797          	auipc	a5,0x5
    80002c68:	1ec7b783          	ld	a5,492(a5) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002c6c:	02078a63          	beqz	a5,80002ca0 <_ZN9Scheduler14timerInterruptEv+0xa4>
        return head->data;
    80002c70:	0007b483          	ld	s1,0(a5)
    while(first) {
    80002c74:	02048663          	beqz	s1,80002ca0 <_ZN9Scheduler14timerInterruptEv+0xa4>
        if (first->time != 0) break;
    80002c78:	0004b783          	ld	a5,0(s1)
    80002c7c:	02079263          	bnez	a5,80002ca0 <_ZN9Scheduler14timerInterruptEv+0xa4>
        if (!head) return 0;
    80002c80:	00005517          	auipc	a0,0x5
    80002c84:	1d053503          	ld	a0,464(a0) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002c88:	fa050ee3          	beqz	a0,80002c44 <_ZN9Scheduler14timerInterruptEv+0x48>
        head = head->next;
    80002c8c:	00853783          	ld	a5,8(a0)
    80002c90:	00005717          	auipc	a4,0x5
    80002c94:	1cf73023          	sd	a5,448(a4) # 80007e50 <_ZN9Scheduler10sleepQueueE>
        if (!head) tail = 0;
    80002c98:	fa0792e3          	bnez	a5,80002c3c <_ZN9Scheduler14timerInterruptEv+0x40>
    80002c9c:	f99ff06f          	j	80002c34 <_ZN9Scheduler14timerInterruptEv+0x38>
}
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	01013403          	ld	s0,16(sp)
    80002ca8:	00813483          	ld	s1,8(sp)
    80002cac:	02010113          	addi	sp,sp,32
    80002cb0:	00008067          	ret
    80002cb4:	00008067          	ret

0000000080002cb8 <_ZN9Scheduler9timeSleepEm>:
void Scheduler::timeSleep(time_t time) {
    80002cb8:	fd010113          	addi	sp,sp,-48
    80002cbc:	02113423          	sd	ra,40(sp)
    80002cc0:	02813023          	sd	s0,32(sp)
    80002cc4:	00913c23          	sd	s1,24(sp)
    80002cc8:	01213823          	sd	s2,16(sp)
    80002ccc:	01313423          	sd	s3,8(sp)
    80002cd0:	03010413          	addi	s0,sp,48
    80002cd4:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80002cd8:	00005797          	auipc	a5,0x5
    80002cdc:	8787b783          	ld	a5,-1928(a5) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002ce0:	0007b983          	ld	s3,0(a5)
    80002ce4:	00100793          	li	a5,1
    80002ce8:	00f98ca3          	sb	a5,25(s3)
            return MemoryAllocator::allocate(size);
    80002cec:	01000513          	li	a0,16
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	98c080e7          	jalr	-1652(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
    80002cf8:	00050493          	mv	s1,a0
        sleepNode(time_t time, TCB* thread) : time(time), thread(thread) {}
    80002cfc:	01253023          	sd	s2,0(a0)
    80002d00:	01353423          	sd	s3,8(a0)
            return MemoryAllocator::allocate(size);
    80002d04:	01000513          	li	a0,16
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	974080e7          	jalr	-1676(ra) # 8000267c <_ZN15MemoryAllocator8allocateEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80002d10:	00953023          	sd	s1,0(a0)
    80002d14:	00053423          	sd	zero,8(a0)
        if (!head) { head = tail = newNode; return; }
    80002d18:	00005797          	auipc	a5,0x5
    80002d1c:	1387b783          	ld	a5,312(a5) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002d20:	02078a63          	beqz	a5,80002d54 <_ZN9Scheduler9timeSleepEm+0x9c>
        Node* curr = head, *prev = nullptr;
    80002d24:	00000693          	li	a3,0
        while (curr) {
    80002d28:	04078063          	beqz	a5,80002d68 <_ZN9Scheduler9timeSleepEm+0xb0>
            if (*(uint64*)(newNode->data) < *(uint64*)(curr->data)) {
    80002d2c:	00053603          	ld	a2,0(a0)
    80002d30:	00063703          	ld	a4,0(a2)
    80002d34:	0007b583          	ld	a1,0(a5)
    80002d38:	0005b583          	ld	a1,0(a1)
    80002d3c:	02b76663          	bltu	a4,a1,80002d68 <_ZN9Scheduler9timeSleepEm+0xb0>
            *(uint64*)(newNode->data) -= *(uint64*)(curr->data);
    80002d40:	40b70733          	sub	a4,a4,a1
    80002d44:	00e63023          	sd	a4,0(a2)
            prev = curr;
    80002d48:	00078693          	mv	a3,a5
            curr = curr->next;
    80002d4c:	0087b783          	ld	a5,8(a5)
        while (curr) {
    80002d50:	fd9ff06f          	j	80002d28 <_ZN9Scheduler9timeSleepEm+0x70>
        if (!head) { head = tail = newNode; return; }
    80002d54:	00005797          	auipc	a5,0x5
    80002d58:	0ec78793          	addi	a5,a5,236 # 80007e40 <_ZN9Scheduler10readyQueueE>
    80002d5c:	00a7bc23          	sd	a0,24(a5)
    80002d60:	00a7b823          	sd	a0,16(a5)
    80002d64:	02c0006f          	j	80002d90 <_ZN9Scheduler9timeSleepEm+0xd8>
        if (prev) prev->next = newNode;
    80002d68:	04068663          	beqz	a3,80002db4 <_ZN9Scheduler9timeSleepEm+0xfc>
    80002d6c:	00a6b423          	sd	a0,8(a3)
        if (curr) {newNode->next = curr; *(uint64*)(curr->data) -= *(uint64*)(newNode->data);}
    80002d70:	04078863          	beqz	a5,80002dc0 <_ZN9Scheduler9timeSleepEm+0x108>
    80002d74:	00f53423          	sd	a5,8(a0)
    80002d78:	0007b703          	ld	a4,0(a5)
    80002d7c:	00053683          	ld	a3,0(a0)
    80002d80:	00073783          	ld	a5,0(a4)
    80002d84:	0006b683          	ld	a3,0(a3)
    80002d88:	40d787b3          	sub	a5,a5,a3
    80002d8c:	00f73023          	sd	a5,0(a4)
    TCB::dispatch();
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	358080e7          	jalr	856(ra) # 800020e8 <_ZN3TCB8dispatchEv>
}
    80002d98:	02813083          	ld	ra,40(sp)
    80002d9c:	02013403          	ld	s0,32(sp)
    80002da0:	01813483          	ld	s1,24(sp)
    80002da4:	01013903          	ld	s2,16(sp)
    80002da8:	00813983          	ld	s3,8(sp)
    80002dac:	03010113          	addi	sp,sp,48
    80002db0:	00008067          	ret
        else head = newNode;
    80002db4:	00005717          	auipc	a4,0x5
    80002db8:	08a73e23          	sd	a0,156(a4) # 80007e50 <_ZN9Scheduler10sleepQueueE>
    80002dbc:	fb5ff06f          	j	80002d70 <_ZN9Scheduler9timeSleepEm+0xb8>
        else prev->next = newNode;
    80002dc0:	00a6b423          	sd	a0,8(a3)
    80002dc4:	fcdff06f          	j	80002d90 <_ZN9Scheduler9timeSleepEm+0xd8>

0000000080002dc8 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80002dc8:	ff010113          	addi	sp,sp,-16
    80002dcc:	00113423          	sd	ra,8(sp)
    80002dd0:	00813023          	sd	s0,0(sp)
    80002dd4:	01010413          	addi	s0,sp,16
    80002dd8:	000105b7          	lui	a1,0x10
    80002ddc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002de0:	00100513          	li	a0,1
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	cfc080e7          	jalr	-772(ra) # 80002ae0 <_Z41__static_initialization_and_destruction_0ii>
    80002dec:	00813083          	ld	ra,8(sp)
    80002df0:	00013403          	ld	s0,0(sp)
    80002df4:	01010113          	addi	sp,sp,16
    80002df8:	00008067          	ret

0000000080002dfc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002dfc:	fe010113          	addi	sp,sp,-32
    80002e00:	00113c23          	sd	ra,24(sp)
    80002e04:	00813823          	sd	s0,16(sp)
    80002e08:	00913423          	sd	s1,8(sp)
    80002e0c:	02010413          	addi	s0,sp,32
    80002e10:	00050493          	mv	s1,a0
    LOCK();
    80002e14:	00100613          	li	a2,1
    80002e18:	00000593          	li	a1,0
    80002e1c:	00005517          	auipc	a0,0x5
    80002e20:	04450513          	addi	a0,a0,68 # 80007e60 <lockPrint>
    80002e24:	ffffe097          	auipc	ra,0xffffe
    80002e28:	4a0080e7          	jalr	1184(ra) # 800012c4 <copy_and_swap>
    80002e2c:	fe0514e3          	bnez	a0,80002e14 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002e30:	0004c503          	lbu	a0,0(s1)
    80002e34:	00050a63          	beqz	a0,80002e48 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002e38:	ffffe097          	auipc	ra,0xffffe
    80002e3c:	258080e7          	jalr	600(ra) # 80001090 <putc>
        string++;
    80002e40:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002e44:	fedff06f          	j	80002e30 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002e48:	00000613          	li	a2,0
    80002e4c:	00100593          	li	a1,1
    80002e50:	00005517          	auipc	a0,0x5
    80002e54:	01050513          	addi	a0,a0,16 # 80007e60 <lockPrint>
    80002e58:	ffffe097          	auipc	ra,0xffffe
    80002e5c:	46c080e7          	jalr	1132(ra) # 800012c4 <copy_and_swap>
    80002e60:	fe0514e3          	bnez	a0,80002e48 <_Z11printStringPKc+0x4c>
}
    80002e64:	01813083          	ld	ra,24(sp)
    80002e68:	01013403          	ld	s0,16(sp)
    80002e6c:	00813483          	ld	s1,8(sp)
    80002e70:	02010113          	addi	sp,sp,32
    80002e74:	00008067          	ret

0000000080002e78 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002e78:	fd010113          	addi	sp,sp,-48
    80002e7c:	02113423          	sd	ra,40(sp)
    80002e80:	02813023          	sd	s0,32(sp)
    80002e84:	00913c23          	sd	s1,24(sp)
    80002e88:	01213823          	sd	s2,16(sp)
    80002e8c:	01313423          	sd	s3,8(sp)
    80002e90:	01413023          	sd	s4,0(sp)
    80002e94:	03010413          	addi	s0,sp,48
    80002e98:	00050993          	mv	s3,a0
    80002e9c:	00058a13          	mv	s4,a1
    LOCK();
    80002ea0:	00100613          	li	a2,1
    80002ea4:	00000593          	li	a1,0
    80002ea8:	00005517          	auipc	a0,0x5
    80002eac:	fb850513          	addi	a0,a0,-72 # 80007e60 <lockPrint>
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	414080e7          	jalr	1044(ra) # 800012c4 <copy_and_swap>
    80002eb8:	fe0514e3          	bnez	a0,80002ea0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002ebc:	00000913          	li	s2,0
    80002ec0:	00090493          	mv	s1,s2
    80002ec4:	0019091b          	addiw	s2,s2,1
    80002ec8:	03495a63          	bge	s2,s4,80002efc <_Z9getStringPci+0x84>
        cc = getc();
    80002ecc:	ffffe097          	auipc	ra,0xffffe
    80002ed0:	1b8080e7          	jalr	440(ra) # 80001084 <getc>
        if(cc < 1)
    80002ed4:	02050463          	beqz	a0,80002efc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002ed8:	009984b3          	add	s1,s3,s1
    80002edc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002ee0:	00a00793          	li	a5,10
    80002ee4:	00f50a63          	beq	a0,a5,80002ef8 <_Z9getStringPci+0x80>
    80002ee8:	00d00793          	li	a5,13
    80002eec:	fcf51ae3          	bne	a0,a5,80002ec0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002ef0:	00090493          	mv	s1,s2
    80002ef4:	0080006f          	j	80002efc <_Z9getStringPci+0x84>
    80002ef8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002efc:	009984b3          	add	s1,s3,s1
    80002f00:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002f04:	00000613          	li	a2,0
    80002f08:	00100593          	li	a1,1
    80002f0c:	00005517          	auipc	a0,0x5
    80002f10:	f5450513          	addi	a0,a0,-172 # 80007e60 <lockPrint>
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	3b0080e7          	jalr	944(ra) # 800012c4 <copy_and_swap>
    80002f1c:	fe0514e3          	bnez	a0,80002f04 <_Z9getStringPci+0x8c>
    return buf;
}
    80002f20:	00098513          	mv	a0,s3
    80002f24:	02813083          	ld	ra,40(sp)
    80002f28:	02013403          	ld	s0,32(sp)
    80002f2c:	01813483          	ld	s1,24(sp)
    80002f30:	01013903          	ld	s2,16(sp)
    80002f34:	00813983          	ld	s3,8(sp)
    80002f38:	00013a03          	ld	s4,0(sp)
    80002f3c:	03010113          	addi	sp,sp,48
    80002f40:	00008067          	ret

0000000080002f44 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00813423          	sd	s0,8(sp)
    80002f4c:	01010413          	addi	s0,sp,16
    80002f50:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002f54:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002f58:	0006c603          	lbu	a2,0(a3)
    80002f5c:	fd06071b          	addiw	a4,a2,-48
    80002f60:	0ff77713          	andi	a4,a4,255
    80002f64:	00900793          	li	a5,9
    80002f68:	02e7e063          	bltu	a5,a4,80002f88 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002f6c:	0025179b          	slliw	a5,a0,0x2
    80002f70:	00a787bb          	addw	a5,a5,a0
    80002f74:	0017979b          	slliw	a5,a5,0x1
    80002f78:	00168693          	addi	a3,a3,1
    80002f7c:	00c787bb          	addw	a5,a5,a2
    80002f80:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002f84:	fd5ff06f          	j	80002f58 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002f88:	00813403          	ld	s0,8(sp)
    80002f8c:	01010113          	addi	sp,sp,16
    80002f90:	00008067          	ret

0000000080002f94 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002f94:	fc010113          	addi	sp,sp,-64
    80002f98:	02113c23          	sd	ra,56(sp)
    80002f9c:	02813823          	sd	s0,48(sp)
    80002fa0:	02913423          	sd	s1,40(sp)
    80002fa4:	03213023          	sd	s2,32(sp)
    80002fa8:	01313c23          	sd	s3,24(sp)
    80002fac:	04010413          	addi	s0,sp,64
    80002fb0:	00050493          	mv	s1,a0
    80002fb4:	00058913          	mv	s2,a1
    80002fb8:	00060993          	mv	s3,a2
    LOCK();
    80002fbc:	00100613          	li	a2,1
    80002fc0:	00000593          	li	a1,0
    80002fc4:	00005517          	auipc	a0,0x5
    80002fc8:	e9c50513          	addi	a0,a0,-356 # 80007e60 <lockPrint>
    80002fcc:	ffffe097          	auipc	ra,0xffffe
    80002fd0:	2f8080e7          	jalr	760(ra) # 800012c4 <copy_and_swap>
    80002fd4:	fe0514e3          	bnez	a0,80002fbc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002fd8:	00098463          	beqz	s3,80002fe0 <_Z8printIntiii+0x4c>
    80002fdc:	0804c463          	bltz	s1,80003064 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002fe0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002fe4:	00000593          	li	a1,0
    }

    i = 0;
    80002fe8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002fec:	0009079b          	sext.w	a5,s2
    80002ff0:	0325773b          	remuw	a4,a0,s2
    80002ff4:	00048613          	mv	a2,s1
    80002ff8:	0014849b          	addiw	s1,s1,1
    80002ffc:	02071693          	slli	a3,a4,0x20
    80003000:	0206d693          	srli	a3,a3,0x20
    80003004:	00004717          	auipc	a4,0x4
    80003008:	4ec70713          	addi	a4,a4,1260 # 800074f0 <digits>
    8000300c:	00d70733          	add	a4,a4,a3
    80003010:	00074683          	lbu	a3,0(a4)
    80003014:	fd040713          	addi	a4,s0,-48
    80003018:	00c70733          	add	a4,a4,a2
    8000301c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003020:	0005071b          	sext.w	a4,a0
    80003024:	0325553b          	divuw	a0,a0,s2
    80003028:	fcf772e3          	bgeu	a4,a5,80002fec <_Z8printIntiii+0x58>
    if(neg)
    8000302c:	00058c63          	beqz	a1,80003044 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003030:	fd040793          	addi	a5,s0,-48
    80003034:	009784b3          	add	s1,a5,s1
    80003038:	02d00793          	li	a5,45
    8000303c:	fef48823          	sb	a5,-16(s1)
    80003040:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003044:	fff4849b          	addiw	s1,s1,-1
    80003048:	0204c463          	bltz	s1,80003070 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000304c:	fd040793          	addi	a5,s0,-48
    80003050:	009787b3          	add	a5,a5,s1
    80003054:	ff07c503          	lbu	a0,-16(a5)
    80003058:	ffffe097          	auipc	ra,0xffffe
    8000305c:	038080e7          	jalr	56(ra) # 80001090 <putc>
    80003060:	fe5ff06f          	j	80003044 <_Z8printIntiii+0xb0>
        x = -xx;
    80003064:	4090053b          	negw	a0,s1
        neg = 1;
    80003068:	00100593          	li	a1,1
        x = -xx;
    8000306c:	f7dff06f          	j	80002fe8 <_Z8printIntiii+0x54>

    UNLOCK();
    80003070:	00000613          	li	a2,0
    80003074:	00100593          	li	a1,1
    80003078:	00005517          	auipc	a0,0x5
    8000307c:	de850513          	addi	a0,a0,-536 # 80007e60 <lockPrint>
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	244080e7          	jalr	580(ra) # 800012c4 <copy_and_swap>
    80003088:	fe0514e3          	bnez	a0,80003070 <_Z8printIntiii+0xdc>
    8000308c:	03813083          	ld	ra,56(sp)
    80003090:	03013403          	ld	s0,48(sp)
    80003094:	02813483          	ld	s1,40(sp)
    80003098:	02013903          	ld	s2,32(sp)
    8000309c:	01813983          	ld	s3,24(sp)
    800030a0:	04010113          	addi	sp,sp,64
    800030a4:	00008067          	ret

00000000800030a8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800030a8:	fd010113          	addi	sp,sp,-48
    800030ac:	02113423          	sd	ra,40(sp)
    800030b0:	02813023          	sd	s0,32(sp)
    800030b4:	00913c23          	sd	s1,24(sp)
    800030b8:	01213823          	sd	s2,16(sp)
    800030bc:	01313423          	sd	s3,8(sp)
    800030c0:	03010413          	addi	s0,sp,48
    800030c4:	00050493          	mv	s1,a0
    800030c8:	00058913          	mv	s2,a1
    800030cc:	0015879b          	addiw	a5,a1,1
    800030d0:	0007851b          	sext.w	a0,a5
    800030d4:	00f4a023          	sw	a5,0(s1)
    800030d8:	0004a823          	sw	zero,16(s1)
    800030dc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800030e0:	00251513          	slli	a0,a0,0x2
    800030e4:	ffffe097          	auipc	ra,0xffffe
    800030e8:	f1c080e7          	jalr	-228(ra) # 80001000 <mem_alloc>
    800030ec:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800030f0:	01000513          	li	a0,16
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	b68080e7          	jalr	-1176(ra) # 80001c5c <_Znwm>
    800030fc:	00050993          	mv	s3,a0
    80003100:	00000593          	li	a1,0
    80003104:	fffff097          	auipc	ra,0xfffff
    80003108:	220080e7          	jalr	544(ra) # 80002324 <_ZN9SemaphoreC1Ej>
    8000310c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003110:	01000513          	li	a0,16
    80003114:	fffff097          	auipc	ra,0xfffff
    80003118:	b48080e7          	jalr	-1208(ra) # 80001c5c <_Znwm>
    8000311c:	00050993          	mv	s3,a0
    80003120:	00090593          	mv	a1,s2
    80003124:	fffff097          	auipc	ra,0xfffff
    80003128:	200080e7          	jalr	512(ra) # 80002324 <_ZN9SemaphoreC1Ej>
    8000312c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003130:	01000513          	li	a0,16
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	b28080e7          	jalr	-1240(ra) # 80001c5c <_Znwm>
    8000313c:	00050913          	mv	s2,a0
    80003140:	00100593          	li	a1,1
    80003144:	fffff097          	auipc	ra,0xfffff
    80003148:	1e0080e7          	jalr	480(ra) # 80002324 <_ZN9SemaphoreC1Ej>
    8000314c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003150:	01000513          	li	a0,16
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	b08080e7          	jalr	-1272(ra) # 80001c5c <_Znwm>
    8000315c:	00050913          	mv	s2,a0
    80003160:	00100593          	li	a1,1
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	1c0080e7          	jalr	448(ra) # 80002324 <_ZN9SemaphoreC1Ej>
    8000316c:	0324b823          	sd	s2,48(s1)
}
    80003170:	02813083          	ld	ra,40(sp)
    80003174:	02013403          	ld	s0,32(sp)
    80003178:	01813483          	ld	s1,24(sp)
    8000317c:	01013903          	ld	s2,16(sp)
    80003180:	00813983          	ld	s3,8(sp)
    80003184:	03010113          	addi	sp,sp,48
    80003188:	00008067          	ret
    8000318c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003190:	00098513          	mv	a0,s3
    80003194:	fffff097          	auipc	ra,0xfffff
    80003198:	b18080e7          	jalr	-1256(ra) # 80001cac <_ZdlPv>
    8000319c:	00048513          	mv	a0,s1
    800031a0:	00006097          	auipc	ra,0x6
    800031a4:	d98080e7          	jalr	-616(ra) # 80008f38 <_Unwind_Resume>
    800031a8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800031ac:	00098513          	mv	a0,s3
    800031b0:	fffff097          	auipc	ra,0xfffff
    800031b4:	afc080e7          	jalr	-1284(ra) # 80001cac <_ZdlPv>
    800031b8:	00048513          	mv	a0,s1
    800031bc:	00006097          	auipc	ra,0x6
    800031c0:	d7c080e7          	jalr	-644(ra) # 80008f38 <_Unwind_Resume>
    800031c4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800031c8:	00090513          	mv	a0,s2
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	ae0080e7          	jalr	-1312(ra) # 80001cac <_ZdlPv>
    800031d4:	00048513          	mv	a0,s1
    800031d8:	00006097          	auipc	ra,0x6
    800031dc:	d60080e7          	jalr	-672(ra) # 80008f38 <_Unwind_Resume>
    800031e0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800031e4:	00090513          	mv	a0,s2
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	ac4080e7          	jalr	-1340(ra) # 80001cac <_ZdlPv>
    800031f0:	00048513          	mv	a0,s1
    800031f4:	00006097          	auipc	ra,0x6
    800031f8:	d44080e7          	jalr	-700(ra) # 80008f38 <_Unwind_Resume>

00000000800031fc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00113c23          	sd	ra,24(sp)
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	01213023          	sd	s2,0(sp)
    80003210:	02010413          	addi	s0,sp,32
    80003214:	00050493          	mv	s1,a0
    80003218:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000321c:	01853503          	ld	a0,24(a0)
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	13c080e7          	jalr	316(ra) # 8000235c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003228:	0304b503          	ld	a0,48(s1)
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	130080e7          	jalr	304(ra) # 8000235c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003234:	0084b783          	ld	a5,8(s1)
    80003238:	0144a703          	lw	a4,20(s1)
    8000323c:	00271713          	slli	a4,a4,0x2
    80003240:	00e787b3          	add	a5,a5,a4
    80003244:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003248:	0144a783          	lw	a5,20(s1)
    8000324c:	0017879b          	addiw	a5,a5,1
    80003250:	0004a703          	lw	a4,0(s1)
    80003254:	02e7e7bb          	remw	a5,a5,a4
    80003258:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000325c:	0304b503          	ld	a0,48(s1)
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	128080e7          	jalr	296(ra) # 80002388 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003268:	0204b503          	ld	a0,32(s1)
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	11c080e7          	jalr	284(ra) # 80002388 <_ZN9Semaphore6signalEv>

}
    80003274:	01813083          	ld	ra,24(sp)
    80003278:	01013403          	ld	s0,16(sp)
    8000327c:	00813483          	ld	s1,8(sp)
    80003280:	00013903          	ld	s2,0(sp)
    80003284:	02010113          	addi	sp,sp,32
    80003288:	00008067          	ret

000000008000328c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800032a8:	02053503          	ld	a0,32(a0)
    800032ac:	fffff097          	auipc	ra,0xfffff
    800032b0:	0b0080e7          	jalr	176(ra) # 8000235c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800032b4:	0284b503          	ld	a0,40(s1)
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	0a4080e7          	jalr	164(ra) # 8000235c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800032c0:	0084b703          	ld	a4,8(s1)
    800032c4:	0104a783          	lw	a5,16(s1)
    800032c8:	00279693          	slli	a3,a5,0x2
    800032cc:	00d70733          	add	a4,a4,a3
    800032d0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800032d4:	0017879b          	addiw	a5,a5,1
    800032d8:	0004a703          	lw	a4,0(s1)
    800032dc:	02e7e7bb          	remw	a5,a5,a4
    800032e0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800032e4:	0284b503          	ld	a0,40(s1)
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	0a0080e7          	jalr	160(ra) # 80002388 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800032f0:	0184b503          	ld	a0,24(s1)
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	094080e7          	jalr	148(ra) # 80002388 <_ZN9Semaphore6signalEv>

    return ret;
}
    800032fc:	00090513          	mv	a0,s2
    80003300:	01813083          	ld	ra,24(sp)
    80003304:	01013403          	ld	s0,16(sp)
    80003308:	00813483          	ld	s1,8(sp)
    8000330c:	00013903          	ld	s2,0(sp)
    80003310:	02010113          	addi	sp,sp,32
    80003314:	00008067          	ret

0000000080003318 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003318:	fe010113          	addi	sp,sp,-32
    8000331c:	00113c23          	sd	ra,24(sp)
    80003320:	00813823          	sd	s0,16(sp)
    80003324:	00913423          	sd	s1,8(sp)
    80003328:	01213023          	sd	s2,0(sp)
    8000332c:	02010413          	addi	s0,sp,32
    80003330:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003334:	02853503          	ld	a0,40(a0)
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	024080e7          	jalr	36(ra) # 8000235c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003340:	0304b503          	ld	a0,48(s1)
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	018080e7          	jalr	24(ra) # 8000235c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000334c:	0144a783          	lw	a5,20(s1)
    80003350:	0104a903          	lw	s2,16(s1)
    80003354:	0327ce63          	blt	a5,s2,80003390 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003358:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000335c:	0304b503          	ld	a0,48(s1)
    80003360:	fffff097          	auipc	ra,0xfffff
    80003364:	028080e7          	jalr	40(ra) # 80002388 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003368:	0284b503          	ld	a0,40(s1)
    8000336c:	fffff097          	auipc	ra,0xfffff
    80003370:	01c080e7          	jalr	28(ra) # 80002388 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003374:	00090513          	mv	a0,s2
    80003378:	01813083          	ld	ra,24(sp)
    8000337c:	01013403          	ld	s0,16(sp)
    80003380:	00813483          	ld	s1,8(sp)
    80003384:	00013903          	ld	s2,0(sp)
    80003388:	02010113          	addi	sp,sp,32
    8000338c:	00008067          	ret
        ret = cap - head + tail;
    80003390:	0004a703          	lw	a4,0(s1)
    80003394:	4127093b          	subw	s2,a4,s2
    80003398:	00f9093b          	addw	s2,s2,a5
    8000339c:	fc1ff06f          	j	8000335c <_ZN9BufferCPP6getCntEv+0x44>

00000000800033a0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00813823          	sd	s0,16(sp)
    800033ac:	00913423          	sd	s1,8(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800033b8:	00a00513          	li	a0,10
    800033bc:	fffff097          	auipc	ra,0xfffff
    800033c0:	070080e7          	jalr	112(ra) # 8000242c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800033c4:	00003517          	auipc	a0,0x3
    800033c8:	dd450513          	addi	a0,a0,-556 # 80006198 <_ZZ14__print_uint64mE6digits+0x10>
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	a30080e7          	jalr	-1488(ra) # 80002dfc <_Z11printStringPKc>
    while (getCnt()) {
    800033d4:	00048513          	mv	a0,s1
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	f40080e7          	jalr	-192(ra) # 80003318 <_ZN9BufferCPP6getCntEv>
    800033e0:	02050c63          	beqz	a0,80003418 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800033e4:	0084b783          	ld	a5,8(s1)
    800033e8:	0104a703          	lw	a4,16(s1)
    800033ec:	00271713          	slli	a4,a4,0x2
    800033f0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800033f4:	0007c503          	lbu	a0,0(a5)
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	034080e7          	jalr	52(ra) # 8000242c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003400:	0104a783          	lw	a5,16(s1)
    80003404:	0017879b          	addiw	a5,a5,1
    80003408:	0004a703          	lw	a4,0(s1)
    8000340c:	02e7e7bb          	remw	a5,a5,a4
    80003410:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003414:	fc1ff06f          	j	800033d4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003418:	02100513          	li	a0,33
    8000341c:	fffff097          	auipc	ra,0xfffff
    80003420:	010080e7          	jalr	16(ra) # 8000242c <_ZN7Console4putcEc>
    Console::putc('\n');
    80003424:	00a00513          	li	a0,10
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	004080e7          	jalr	4(ra) # 8000242c <_ZN7Console4putcEc>
    mem_free(buffer);
    80003430:	0084b503          	ld	a0,8(s1)
    80003434:	ffffe097          	auipc	ra,0xffffe
    80003438:	bd8080e7          	jalr	-1064(ra) # 8000100c <mem_free>
    delete itemAvailable;
    8000343c:	0204b503          	ld	a0,32(s1)
    80003440:	00050863          	beqz	a0,80003450 <_ZN9BufferCPPD1Ev+0xb0>
    80003444:	00053783          	ld	a5,0(a0)
    80003448:	0087b783          	ld	a5,8(a5)
    8000344c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003450:	0184b503          	ld	a0,24(s1)
    80003454:	00050863          	beqz	a0,80003464 <_ZN9BufferCPPD1Ev+0xc4>
    80003458:	00053783          	ld	a5,0(a0)
    8000345c:	0087b783          	ld	a5,8(a5)
    80003460:	000780e7          	jalr	a5
    delete mutexTail;
    80003464:	0304b503          	ld	a0,48(s1)
    80003468:	00050863          	beqz	a0,80003478 <_ZN9BufferCPPD1Ev+0xd8>
    8000346c:	00053783          	ld	a5,0(a0)
    80003470:	0087b783          	ld	a5,8(a5)
    80003474:	000780e7          	jalr	a5
    delete mutexHead;
    80003478:	0284b503          	ld	a0,40(s1)
    8000347c:	00050863          	beqz	a0,8000348c <_ZN9BufferCPPD1Ev+0xec>
    80003480:	00053783          	ld	a5,0(a0)
    80003484:	0087b783          	ld	a5,8(a5)
    80003488:	000780e7          	jalr	a5
}
    8000348c:	01813083          	ld	ra,24(sp)
    80003490:	01013403          	ld	s0,16(sp)
    80003494:	00813483          	ld	s1,8(sp)
    80003498:	02010113          	addi	sp,sp,32
    8000349c:	00008067          	ret

00000000800034a0 <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800034a0:	fe010113          	addi	sp,sp,-32
    800034a4:	00113c23          	sd	ra,24(sp)
    800034a8:	00813823          	sd	s0,16(sp)
    800034ac:	00913423          	sd	s1,8(sp)
    800034b0:	01213023          	sd	s2,0(sp)
    800034b4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800034b8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800034bc:	00600493          	li	s1,6
    while (--i > 0) {
    800034c0:	fff4849b          	addiw	s1,s1,-1
    800034c4:	04905463          	blez	s1,8000350c <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800034c8:	00003517          	auipc	a0,0x3
    800034cc:	ce850513          	addi	a0,a0,-792 # 800061b0 <_ZZ14__print_uint64mE6digits+0x28>
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	92c080e7          	jalr	-1748(ra) # 80002dfc <_Z11printStringPKc>
        printInt(sleep_time);
    800034d8:	00000613          	li	a2,0
    800034dc:	00a00593          	li	a1,10
    800034e0:	0009051b          	sext.w	a0,s2
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	ab0080e7          	jalr	-1360(ra) # 80002f94 <_Z8printIntiii>
        printString(" !\n");
    800034ec:	00003517          	auipc	a0,0x3
    800034f0:	ccc50513          	addi	a0,a0,-820 # 800061b8 <_ZZ14__print_uint64mE6digits+0x30>
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	908080e7          	jalr	-1784(ra) # 80002dfc <_Z11printStringPKc>
        time_sleep(sleep_time);
    800034fc:	00090513          	mv	a0,s2
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	b78080e7          	jalr	-1160(ra) # 80001078 <time_sleep>
    while (--i > 0) {
    80003508:	fb9ff06f          	j	800034c0 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000350c:	00a00793          	li	a5,10
    80003510:	02f95933          	divu	s2,s2,a5
    80003514:	fff90913          	addi	s2,s2,-1
    80003518:	00005797          	auipc	a5,0x5
    8000351c:	95078793          	addi	a5,a5,-1712 # 80007e68 <finished>
    80003520:	01278933          	add	s2,a5,s2
    80003524:	00100793          	li	a5,1
    80003528:	00f90023          	sb	a5,0(s2)
}
    8000352c:	01813083          	ld	ra,24(sp)
    80003530:	01013403          	ld	s0,16(sp)
    80003534:	00813483          	ld	s1,8(sp)
    80003538:	00013903          	ld	s2,0(sp)
    8000353c:	02010113          	addi	sp,sp,32
    80003540:	00008067          	ret

0000000080003544 <_Z12testSleepingv>:

void testSleeping() {
    80003544:	fc010113          	addi	sp,sp,-64
    80003548:	02113c23          	sd	ra,56(sp)
    8000354c:	02813823          	sd	s0,48(sp)
    80003550:	02913423          	sd	s1,40(sp)
    80003554:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80003558:	00a00793          	li	a5,10
    8000355c:	fcf43823          	sd	a5,-48(s0)
    80003560:	01400793          	li	a5,20
    80003564:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80003568:	00000493          	li	s1,0
    8000356c:	02c0006f          	j	80003598 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80003570:	00349793          	slli	a5,s1,0x3
    80003574:	fd040613          	addi	a2,s0,-48
    80003578:	00f60633          	add	a2,a2,a5
    8000357c:	00000597          	auipc	a1,0x0
    80003580:	f2458593          	addi	a1,a1,-220 # 800034a0 <_Z9sleepyRunPv>
    80003584:	fc040513          	addi	a0,s0,-64
    80003588:	00f50533          	add	a0,a0,a5
    8000358c:	ffffe097          	auipc	ra,0xffffe
    80003590:	a8c080e7          	jalr	-1396(ra) # 80001018 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80003594:	0014849b          	addiw	s1,s1,1
    80003598:	00100793          	li	a5,1
    8000359c:	fc97dae3          	bge	a5,s1,80003570 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800035a0:	00005797          	auipc	a5,0x5
    800035a4:	8c87c783          	lbu	a5,-1848(a5) # 80007e68 <finished>
    800035a8:	fe078ce3          	beqz	a5,800035a0 <_Z12testSleepingv+0x5c>
    800035ac:	00005797          	auipc	a5,0x5
    800035b0:	8bd7c783          	lbu	a5,-1859(a5) # 80007e69 <finished+0x1>
    800035b4:	fe0786e3          	beqz	a5,800035a0 <_Z12testSleepingv+0x5c>
}
    800035b8:	03813083          	ld	ra,56(sp)
    800035bc:	03013403          	ld	s0,48(sp)
    800035c0:	02813483          	ld	s1,40(sp)
    800035c4:	04010113          	addi	sp,sp,64
    800035c8:	00008067          	ret

00000000800035cc <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00113423          	sd	ra,8(sp)
    800035d4:	00813023          	sd	s0,0(sp)
    800035d8:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	f68080e7          	jalr	-152(ra) # 80003544 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800035e4:	00813083          	ld	ra,8(sp)
    800035e8:	00013403          	ld	s0,0(sp)
    800035ec:	01010113          	addi	sp,sp,16
    800035f0:	00008067          	ret

00000000800035f4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800035f4:	fe010113          	addi	sp,sp,-32
    800035f8:	00113c23          	sd	ra,24(sp)
    800035fc:	00813823          	sd	s0,16(sp)
    80003600:	00913423          	sd	s1,8(sp)
    80003604:	01213023          	sd	s2,0(sp)
    80003608:	02010413          	addi	s0,sp,32
    8000360c:	00050493          	mv	s1,a0
    80003610:	00058913          	mv	s2,a1
    80003614:	0015879b          	addiw	a5,a1,1
    80003618:	0007851b          	sext.w	a0,a5
    8000361c:	00f4a023          	sw	a5,0(s1)
    80003620:	0004a823          	sw	zero,16(s1)
    80003624:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003628:	00251513          	slli	a0,a0,0x2
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	9d4080e7          	jalr	-1580(ra) # 80001000 <mem_alloc>
    80003634:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003638:	00000593          	li	a1,0
    8000363c:	02048513          	addi	a0,s1,32
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	a08080e7          	jalr	-1528(ra) # 80001048 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80003648:	00090593          	mv	a1,s2
    8000364c:	01848513          	addi	a0,s1,24
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	9f8080e7          	jalr	-1544(ra) # 80001048 <sem_open>
    sem_open(&mutexHead, 1);
    80003658:	00100593          	li	a1,1
    8000365c:	02848513          	addi	a0,s1,40
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	9e8080e7          	jalr	-1560(ra) # 80001048 <sem_open>
    sem_open(&mutexTail, 1);
    80003668:	00100593          	li	a1,1
    8000366c:	03048513          	addi	a0,s1,48
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	9d8080e7          	jalr	-1576(ra) # 80001048 <sem_open>
}
    80003678:	01813083          	ld	ra,24(sp)
    8000367c:	01013403          	ld	s0,16(sp)
    80003680:	00813483          	ld	s1,8(sp)
    80003684:	00013903          	ld	s2,0(sp)
    80003688:	02010113          	addi	sp,sp,32
    8000368c:	00008067          	ret

0000000080003690 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	00913423          	sd	s1,8(sp)
    800036a0:	01213023          	sd	s2,0(sp)
    800036a4:	02010413          	addi	s0,sp,32
    800036a8:	00050493          	mv	s1,a0
    800036ac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800036b0:	01853503          	ld	a0,24(a0)
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	9ac080e7          	jalr	-1620(ra) # 80001060 <sem_wait>

    sem_wait(mutexTail);
    800036bc:	0304b503          	ld	a0,48(s1)
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	9a0080e7          	jalr	-1632(ra) # 80001060 <sem_wait>
    buffer[tail] = val;
    800036c8:	0084b783          	ld	a5,8(s1)
    800036cc:	0144a703          	lw	a4,20(s1)
    800036d0:	00271713          	slli	a4,a4,0x2
    800036d4:	00e787b3          	add	a5,a5,a4
    800036d8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800036dc:	0144a783          	lw	a5,20(s1)
    800036e0:	0017879b          	addiw	a5,a5,1
    800036e4:	0004a703          	lw	a4,0(s1)
    800036e8:	02e7e7bb          	remw	a5,a5,a4
    800036ec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800036f0:	0304b503          	ld	a0,48(s1)
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	978080e7          	jalr	-1672(ra) # 8000106c <sem_signal>

    sem_signal(itemAvailable);
    800036fc:	0204b503          	ld	a0,32(s1)
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	96c080e7          	jalr	-1684(ra) # 8000106c <sem_signal>

}
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	00013903          	ld	s2,0(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret

0000000080003720 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	01213023          	sd	s2,0(sp)
    80003734:	02010413          	addi	s0,sp,32
    80003738:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000373c:	02053503          	ld	a0,32(a0)
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	920080e7          	jalr	-1760(ra) # 80001060 <sem_wait>

    sem_wait(mutexHead);
    80003748:	0284b503          	ld	a0,40(s1)
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	914080e7          	jalr	-1772(ra) # 80001060 <sem_wait>

    int ret = buffer[head];
    80003754:	0084b703          	ld	a4,8(s1)
    80003758:	0104a783          	lw	a5,16(s1)
    8000375c:	00279693          	slli	a3,a5,0x2
    80003760:	00d70733          	add	a4,a4,a3
    80003764:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003768:	0017879b          	addiw	a5,a5,1
    8000376c:	0004a703          	lw	a4,0(s1)
    80003770:	02e7e7bb          	remw	a5,a5,a4
    80003774:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003778:	0284b503          	ld	a0,40(s1)
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	8f0080e7          	jalr	-1808(ra) # 8000106c <sem_signal>

    sem_signal(spaceAvailable);
    80003784:	0184b503          	ld	a0,24(s1)
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	8e4080e7          	jalr	-1820(ra) # 8000106c <sem_signal>

    return ret;
}
    80003790:	00090513          	mv	a0,s2
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	00013903          	ld	s2,0(sp)
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00008067          	ret

00000000800037ac <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	01213023          	sd	s2,0(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800037c8:	02853503          	ld	a0,40(a0)
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	894080e7          	jalr	-1900(ra) # 80001060 <sem_wait>
    sem_wait(mutexTail);
    800037d4:	0304b503          	ld	a0,48(s1)
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	888080e7          	jalr	-1912(ra) # 80001060 <sem_wait>

    if (tail >= head) {
    800037e0:	0144a783          	lw	a5,20(s1)
    800037e4:	0104a903          	lw	s2,16(s1)
    800037e8:	0327ce63          	blt	a5,s2,80003824 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800037ec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800037f0:	0304b503          	ld	a0,48(s1)
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	878080e7          	jalr	-1928(ra) # 8000106c <sem_signal>
    sem_signal(mutexHead);
    800037fc:	0284b503          	ld	a0,40(s1)
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	86c080e7          	jalr	-1940(ra) # 8000106c <sem_signal>

    return ret;
}
    80003808:	00090513          	mv	a0,s2
    8000380c:	01813083          	ld	ra,24(sp)
    80003810:	01013403          	ld	s0,16(sp)
    80003814:	00813483          	ld	s1,8(sp)
    80003818:	00013903          	ld	s2,0(sp)
    8000381c:	02010113          	addi	sp,sp,32
    80003820:	00008067          	ret
        ret = cap - head + tail;
    80003824:	0004a703          	lw	a4,0(s1)
    80003828:	4127093b          	subw	s2,a4,s2
    8000382c:	00f9093b          	addw	s2,s2,a5
    80003830:	fc1ff06f          	j	800037f0 <_ZN6Buffer6getCntEv+0x44>

0000000080003834 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003834:	fe010113          	addi	sp,sp,-32
    80003838:	00113c23          	sd	ra,24(sp)
    8000383c:	00813823          	sd	s0,16(sp)
    80003840:	00913423          	sd	s1,8(sp)
    80003844:	02010413          	addi	s0,sp,32
    80003848:	00050493          	mv	s1,a0
    putc('\n');
    8000384c:	00a00513          	li	a0,10
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	840080e7          	jalr	-1984(ra) # 80001090 <putc>
    printString("Buffer deleted!\n");
    80003858:	00003517          	auipc	a0,0x3
    8000385c:	94050513          	addi	a0,a0,-1728 # 80006198 <_ZZ14__print_uint64mE6digits+0x10>
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	59c080e7          	jalr	1436(ra) # 80002dfc <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003868:	00048513          	mv	a0,s1
    8000386c:	00000097          	auipc	ra,0x0
    80003870:	f40080e7          	jalr	-192(ra) # 800037ac <_ZN6Buffer6getCntEv>
    80003874:	02a05c63          	blez	a0,800038ac <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003878:	0084b783          	ld	a5,8(s1)
    8000387c:	0104a703          	lw	a4,16(s1)
    80003880:	00271713          	slli	a4,a4,0x2
    80003884:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003888:	0007c503          	lbu	a0,0(a5)
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	804080e7          	jalr	-2044(ra) # 80001090 <putc>
        head = (head + 1) % cap;
    80003894:	0104a783          	lw	a5,16(s1)
    80003898:	0017879b          	addiw	a5,a5,1
    8000389c:	0004a703          	lw	a4,0(s1)
    800038a0:	02e7e7bb          	remw	a5,a5,a4
    800038a4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800038a8:	fc1ff06f          	j	80003868 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800038ac:	02100513          	li	a0,33
    800038b0:	ffffd097          	auipc	ra,0xffffd
    800038b4:	7e0080e7          	jalr	2016(ra) # 80001090 <putc>
    putc('\n');
    800038b8:	00a00513          	li	a0,10
    800038bc:	ffffd097          	auipc	ra,0xffffd
    800038c0:	7d4080e7          	jalr	2004(ra) # 80001090 <putc>
    mem_free(buffer);
    800038c4:	0084b503          	ld	a0,8(s1)
    800038c8:	ffffd097          	auipc	ra,0xffffd
    800038cc:	744080e7          	jalr	1860(ra) # 8000100c <mem_free>
    sem_close(itemAvailable);
    800038d0:	0204b503          	ld	a0,32(s1)
    800038d4:	ffffd097          	auipc	ra,0xffffd
    800038d8:	780080e7          	jalr	1920(ra) # 80001054 <sem_close>
    sem_close(spaceAvailable);
    800038dc:	0184b503          	ld	a0,24(s1)
    800038e0:	ffffd097          	auipc	ra,0xffffd
    800038e4:	774080e7          	jalr	1908(ra) # 80001054 <sem_close>
    sem_close(mutexTail);
    800038e8:	0304b503          	ld	a0,48(s1)
    800038ec:	ffffd097          	auipc	ra,0xffffd
    800038f0:	768080e7          	jalr	1896(ra) # 80001054 <sem_close>
    sem_close(mutexHead);
    800038f4:	0284b503          	ld	a0,40(s1)
    800038f8:	ffffd097          	auipc	ra,0xffffd
    800038fc:	75c080e7          	jalr	1884(ra) # 80001054 <sem_close>
}
    80003900:	01813083          	ld	ra,24(sp)
    80003904:	01013403          	ld	s0,16(sp)
    80003908:	00813483          	ld	s1,8(sp)
    8000390c:	02010113          	addi	sp,sp,32
    80003910:	00008067          	ret

0000000080003914 <start>:
    80003914:	ff010113          	addi	sp,sp,-16
    80003918:	00813423          	sd	s0,8(sp)
    8000391c:	01010413          	addi	s0,sp,16
    80003920:	300027f3          	csrr	a5,mstatus
    80003924:	ffffe737          	lui	a4,0xffffe
    80003928:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff572f>
    8000392c:	00e7f7b3          	and	a5,a5,a4
    80003930:	00001737          	lui	a4,0x1
    80003934:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003938:	00e7e7b3          	or	a5,a5,a4
    8000393c:	30079073          	csrw	mstatus,a5
    80003940:	00000797          	auipc	a5,0x0
    80003944:	16078793          	addi	a5,a5,352 # 80003aa0 <system_main>
    80003948:	34179073          	csrw	mepc,a5
    8000394c:	00000793          	li	a5,0
    80003950:	18079073          	csrw	satp,a5
    80003954:	000107b7          	lui	a5,0x10
    80003958:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000395c:	30279073          	csrw	medeleg,a5
    80003960:	30379073          	csrw	mideleg,a5
    80003964:	104027f3          	csrr	a5,sie
    80003968:	2227e793          	ori	a5,a5,546
    8000396c:	10479073          	csrw	sie,a5
    80003970:	fff00793          	li	a5,-1
    80003974:	00a7d793          	srli	a5,a5,0xa
    80003978:	3b079073          	csrw	pmpaddr0,a5
    8000397c:	00f00793          	li	a5,15
    80003980:	3a079073          	csrw	pmpcfg0,a5
    80003984:	f14027f3          	csrr	a5,mhartid
    80003988:	0200c737          	lui	a4,0x200c
    8000398c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003990:	0007869b          	sext.w	a3,a5
    80003994:	00269713          	slli	a4,a3,0x2
    80003998:	000f4637          	lui	a2,0xf4
    8000399c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039a0:	00d70733          	add	a4,a4,a3
    800039a4:	0037979b          	slliw	a5,a5,0x3
    800039a8:	020046b7          	lui	a3,0x2004
    800039ac:	00d787b3          	add	a5,a5,a3
    800039b0:	00c585b3          	add	a1,a1,a2
    800039b4:	00371693          	slli	a3,a4,0x3
    800039b8:	00004717          	auipc	a4,0x4
    800039bc:	4b870713          	addi	a4,a4,1208 # 80007e70 <timer_scratch>
    800039c0:	00b7b023          	sd	a1,0(a5)
    800039c4:	00d70733          	add	a4,a4,a3
    800039c8:	00f73c23          	sd	a5,24(a4)
    800039cc:	02c73023          	sd	a2,32(a4)
    800039d0:	34071073          	csrw	mscratch,a4
    800039d4:	00000797          	auipc	a5,0x0
    800039d8:	6ec78793          	addi	a5,a5,1772 # 800040c0 <timervec>
    800039dc:	30579073          	csrw	mtvec,a5
    800039e0:	300027f3          	csrr	a5,mstatus
    800039e4:	0087e793          	ori	a5,a5,8
    800039e8:	30079073          	csrw	mstatus,a5
    800039ec:	304027f3          	csrr	a5,mie
    800039f0:	0807e793          	ori	a5,a5,128
    800039f4:	30479073          	csrw	mie,a5
    800039f8:	f14027f3          	csrr	a5,mhartid
    800039fc:	0007879b          	sext.w	a5,a5
    80003a00:	00078213          	mv	tp,a5
    80003a04:	30200073          	mret
    80003a08:	00813403          	ld	s0,8(sp)
    80003a0c:	01010113          	addi	sp,sp,16
    80003a10:	00008067          	ret

0000000080003a14 <timerinit>:
    80003a14:	ff010113          	addi	sp,sp,-16
    80003a18:	00813423          	sd	s0,8(sp)
    80003a1c:	01010413          	addi	s0,sp,16
    80003a20:	f14027f3          	csrr	a5,mhartid
    80003a24:	0200c737          	lui	a4,0x200c
    80003a28:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003a2c:	0007869b          	sext.w	a3,a5
    80003a30:	00269713          	slli	a4,a3,0x2
    80003a34:	000f4637          	lui	a2,0xf4
    80003a38:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a3c:	00d70733          	add	a4,a4,a3
    80003a40:	0037979b          	slliw	a5,a5,0x3
    80003a44:	020046b7          	lui	a3,0x2004
    80003a48:	00d787b3          	add	a5,a5,a3
    80003a4c:	00c585b3          	add	a1,a1,a2
    80003a50:	00371693          	slli	a3,a4,0x3
    80003a54:	00004717          	auipc	a4,0x4
    80003a58:	41c70713          	addi	a4,a4,1052 # 80007e70 <timer_scratch>
    80003a5c:	00b7b023          	sd	a1,0(a5)
    80003a60:	00d70733          	add	a4,a4,a3
    80003a64:	00f73c23          	sd	a5,24(a4)
    80003a68:	02c73023          	sd	a2,32(a4)
    80003a6c:	34071073          	csrw	mscratch,a4
    80003a70:	00000797          	auipc	a5,0x0
    80003a74:	65078793          	addi	a5,a5,1616 # 800040c0 <timervec>
    80003a78:	30579073          	csrw	mtvec,a5
    80003a7c:	300027f3          	csrr	a5,mstatus
    80003a80:	0087e793          	ori	a5,a5,8
    80003a84:	30079073          	csrw	mstatus,a5
    80003a88:	304027f3          	csrr	a5,mie
    80003a8c:	0807e793          	ori	a5,a5,128
    80003a90:	30479073          	csrw	mie,a5
    80003a94:	00813403          	ld	s0,8(sp)
    80003a98:	01010113          	addi	sp,sp,16
    80003a9c:	00008067          	ret

0000000080003aa0 <system_main>:
    80003aa0:	fe010113          	addi	sp,sp,-32
    80003aa4:	00813823          	sd	s0,16(sp)
    80003aa8:	00913423          	sd	s1,8(sp)
    80003aac:	00113c23          	sd	ra,24(sp)
    80003ab0:	02010413          	addi	s0,sp,32
    80003ab4:	00000097          	auipc	ra,0x0
    80003ab8:	0c4080e7          	jalr	196(ra) # 80003b78 <cpuid>
    80003abc:	00004497          	auipc	s1,0x4
    80003ac0:	ad448493          	addi	s1,s1,-1324 # 80007590 <started>
    80003ac4:	02050263          	beqz	a0,80003ae8 <system_main+0x48>
    80003ac8:	0004a783          	lw	a5,0(s1)
    80003acc:	0007879b          	sext.w	a5,a5
    80003ad0:	fe078ce3          	beqz	a5,80003ac8 <system_main+0x28>
    80003ad4:	0ff0000f          	fence
    80003ad8:	00002517          	auipc	a0,0x2
    80003adc:	71850513          	addi	a0,a0,1816 # 800061f0 <_ZZ14__print_uint64mE6digits+0x68>
    80003ae0:	00001097          	auipc	ra,0x1
    80003ae4:	a7c080e7          	jalr	-1412(ra) # 8000455c <panic>
    80003ae8:	00001097          	auipc	ra,0x1
    80003aec:	9d0080e7          	jalr	-1584(ra) # 800044b8 <consoleinit>
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	15c080e7          	jalr	348(ra) # 80004c4c <printfinit>
    80003af8:	00002517          	auipc	a0,0x2
    80003afc:	7d850513          	addi	a0,a0,2008 # 800062d0 <_ZZ14__print_uint64mE6digits+0x148>
    80003b00:	00001097          	auipc	ra,0x1
    80003b04:	ab8080e7          	jalr	-1352(ra) # 800045b8 <__printf>
    80003b08:	00002517          	auipc	a0,0x2
    80003b0c:	6b850513          	addi	a0,a0,1720 # 800061c0 <_ZZ14__print_uint64mE6digits+0x38>
    80003b10:	00001097          	auipc	ra,0x1
    80003b14:	aa8080e7          	jalr	-1368(ra) # 800045b8 <__printf>
    80003b18:	00002517          	auipc	a0,0x2
    80003b1c:	7b850513          	addi	a0,a0,1976 # 800062d0 <_ZZ14__print_uint64mE6digits+0x148>
    80003b20:	00001097          	auipc	ra,0x1
    80003b24:	a98080e7          	jalr	-1384(ra) # 800045b8 <__printf>
    80003b28:	00001097          	auipc	ra,0x1
    80003b2c:	4b0080e7          	jalr	1200(ra) # 80004fd8 <kinit>
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	148080e7          	jalr	328(ra) # 80003c78 <trapinit>
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	16c080e7          	jalr	364(ra) # 80003ca4 <trapinithart>
    80003b40:	00000097          	auipc	ra,0x0
    80003b44:	5c0080e7          	jalr	1472(ra) # 80004100 <plicinit>
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	5e0080e7          	jalr	1504(ra) # 80004128 <plicinithart>
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	078080e7          	jalr	120(ra) # 80003bc8 <userinit>
    80003b58:	0ff0000f          	fence
    80003b5c:	00100793          	li	a5,1
    80003b60:	00002517          	auipc	a0,0x2
    80003b64:	67850513          	addi	a0,a0,1656 # 800061d8 <_ZZ14__print_uint64mE6digits+0x50>
    80003b68:	00f4a023          	sw	a5,0(s1)
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	a4c080e7          	jalr	-1460(ra) # 800045b8 <__printf>
    80003b74:	0000006f          	j	80003b74 <system_main+0xd4>

0000000080003b78 <cpuid>:
    80003b78:	ff010113          	addi	sp,sp,-16
    80003b7c:	00813423          	sd	s0,8(sp)
    80003b80:	01010413          	addi	s0,sp,16
    80003b84:	00020513          	mv	a0,tp
    80003b88:	00813403          	ld	s0,8(sp)
    80003b8c:	0005051b          	sext.w	a0,a0
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret

0000000080003b98 <mycpu>:
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00813423          	sd	s0,8(sp)
    80003ba0:	01010413          	addi	s0,sp,16
    80003ba4:	00020793          	mv	a5,tp
    80003ba8:	00813403          	ld	s0,8(sp)
    80003bac:	0007879b          	sext.w	a5,a5
    80003bb0:	00779793          	slli	a5,a5,0x7
    80003bb4:	00005517          	auipc	a0,0x5
    80003bb8:	2ec50513          	addi	a0,a0,748 # 80008ea0 <cpus>
    80003bbc:	00f50533          	add	a0,a0,a5
    80003bc0:	01010113          	addi	sp,sp,16
    80003bc4:	00008067          	ret

0000000080003bc8 <userinit>:
    80003bc8:	ff010113          	addi	sp,sp,-16
    80003bcc:	00813423          	sd	s0,8(sp)
    80003bd0:	01010413          	addi	s0,sp,16
    80003bd4:	00813403          	ld	s0,8(sp)
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	ffffe317          	auipc	t1,0xffffe
    80003be0:	12030067          	jr	288(t1) # 80001cfc <main>

0000000080003be4 <either_copyout>:
    80003be4:	ff010113          	addi	sp,sp,-16
    80003be8:	00813023          	sd	s0,0(sp)
    80003bec:	00113423          	sd	ra,8(sp)
    80003bf0:	01010413          	addi	s0,sp,16
    80003bf4:	02051663          	bnez	a0,80003c20 <either_copyout+0x3c>
    80003bf8:	00058513          	mv	a0,a1
    80003bfc:	00060593          	mv	a1,a2
    80003c00:	0006861b          	sext.w	a2,a3
    80003c04:	00002097          	auipc	ra,0x2
    80003c08:	c60080e7          	jalr	-928(ra) # 80005864 <__memmove>
    80003c0c:	00813083          	ld	ra,8(sp)
    80003c10:	00013403          	ld	s0,0(sp)
    80003c14:	00000513          	li	a0,0
    80003c18:	01010113          	addi	sp,sp,16
    80003c1c:	00008067          	ret
    80003c20:	00002517          	auipc	a0,0x2
    80003c24:	5f850513          	addi	a0,a0,1528 # 80006218 <_ZZ14__print_uint64mE6digits+0x90>
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	934080e7          	jalr	-1740(ra) # 8000455c <panic>

0000000080003c30 <either_copyin>:
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00813023          	sd	s0,0(sp)
    80003c38:	00113423          	sd	ra,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    80003c40:	02059463          	bnez	a1,80003c68 <either_copyin+0x38>
    80003c44:	00060593          	mv	a1,a2
    80003c48:	0006861b          	sext.w	a2,a3
    80003c4c:	00002097          	auipc	ra,0x2
    80003c50:	c18080e7          	jalr	-1000(ra) # 80005864 <__memmove>
    80003c54:	00813083          	ld	ra,8(sp)
    80003c58:	00013403          	ld	s0,0(sp)
    80003c5c:	00000513          	li	a0,0
    80003c60:	01010113          	addi	sp,sp,16
    80003c64:	00008067          	ret
    80003c68:	00002517          	auipc	a0,0x2
    80003c6c:	5d850513          	addi	a0,a0,1496 # 80006240 <_ZZ14__print_uint64mE6digits+0xb8>
    80003c70:	00001097          	auipc	ra,0x1
    80003c74:	8ec080e7          	jalr	-1812(ra) # 8000455c <panic>

0000000080003c78 <trapinit>:
    80003c78:	ff010113          	addi	sp,sp,-16
    80003c7c:	00813423          	sd	s0,8(sp)
    80003c80:	01010413          	addi	s0,sp,16
    80003c84:	00813403          	ld	s0,8(sp)
    80003c88:	00002597          	auipc	a1,0x2
    80003c8c:	5e058593          	addi	a1,a1,1504 # 80006268 <_ZZ14__print_uint64mE6digits+0xe0>
    80003c90:	00005517          	auipc	a0,0x5
    80003c94:	29050513          	addi	a0,a0,656 # 80008f20 <tickslock>
    80003c98:	01010113          	addi	sp,sp,16
    80003c9c:	00001317          	auipc	t1,0x1
    80003ca0:	5cc30067          	jr	1484(t1) # 80005268 <initlock>

0000000080003ca4 <trapinithart>:
    80003ca4:	ff010113          	addi	sp,sp,-16
    80003ca8:	00813423          	sd	s0,8(sp)
    80003cac:	01010413          	addi	s0,sp,16
    80003cb0:	00000797          	auipc	a5,0x0
    80003cb4:	30078793          	addi	a5,a5,768 # 80003fb0 <kernelvec>
    80003cb8:	10579073          	csrw	stvec,a5
    80003cbc:	00813403          	ld	s0,8(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <usertrap>:
    80003cc8:	ff010113          	addi	sp,sp,-16
    80003ccc:	00813423          	sd	s0,8(sp)
    80003cd0:	01010413          	addi	s0,sp,16
    80003cd4:	00813403          	ld	s0,8(sp)
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret

0000000080003ce0 <usertrapret>:
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813423          	sd	s0,8(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    80003cec:	00813403          	ld	s0,8(sp)
    80003cf0:	01010113          	addi	sp,sp,16
    80003cf4:	00008067          	ret

0000000080003cf8 <kerneltrap>:
    80003cf8:	fe010113          	addi	sp,sp,-32
    80003cfc:	00813823          	sd	s0,16(sp)
    80003d00:	00113c23          	sd	ra,24(sp)
    80003d04:	00913423          	sd	s1,8(sp)
    80003d08:	02010413          	addi	s0,sp,32
    80003d0c:	142025f3          	csrr	a1,scause
    80003d10:	100027f3          	csrr	a5,sstatus
    80003d14:	0027f793          	andi	a5,a5,2
    80003d18:	10079c63          	bnez	a5,80003e30 <kerneltrap+0x138>
    80003d1c:	142027f3          	csrr	a5,scause
    80003d20:	0207ce63          	bltz	a5,80003d5c <kerneltrap+0x64>
    80003d24:	00002517          	auipc	a0,0x2
    80003d28:	58c50513          	addi	a0,a0,1420 # 800062b0 <_ZZ14__print_uint64mE6digits+0x128>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	88c080e7          	jalr	-1908(ra) # 800045b8 <__printf>
    80003d34:	141025f3          	csrr	a1,sepc
    80003d38:	14302673          	csrr	a2,stval
    80003d3c:	00002517          	auipc	a0,0x2
    80003d40:	58450513          	addi	a0,a0,1412 # 800062c0 <_ZZ14__print_uint64mE6digits+0x138>
    80003d44:	00001097          	auipc	ra,0x1
    80003d48:	874080e7          	jalr	-1932(ra) # 800045b8 <__printf>
    80003d4c:	00002517          	auipc	a0,0x2
    80003d50:	58c50513          	addi	a0,a0,1420 # 800062d8 <_ZZ14__print_uint64mE6digits+0x150>
    80003d54:	00001097          	auipc	ra,0x1
    80003d58:	808080e7          	jalr	-2040(ra) # 8000455c <panic>
    80003d5c:	0ff7f713          	andi	a4,a5,255
    80003d60:	00900693          	li	a3,9
    80003d64:	04d70063          	beq	a4,a3,80003da4 <kerneltrap+0xac>
    80003d68:	fff00713          	li	a4,-1
    80003d6c:	03f71713          	slli	a4,a4,0x3f
    80003d70:	00170713          	addi	a4,a4,1
    80003d74:	fae798e3          	bne	a5,a4,80003d24 <kerneltrap+0x2c>
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	e00080e7          	jalr	-512(ra) # 80003b78 <cpuid>
    80003d80:	06050663          	beqz	a0,80003dec <kerneltrap+0xf4>
    80003d84:	144027f3          	csrr	a5,sip
    80003d88:	ffd7f793          	andi	a5,a5,-3
    80003d8c:	14479073          	csrw	sip,a5
    80003d90:	01813083          	ld	ra,24(sp)
    80003d94:	01013403          	ld	s0,16(sp)
    80003d98:	00813483          	ld	s1,8(sp)
    80003d9c:	02010113          	addi	sp,sp,32
    80003da0:	00008067          	ret
    80003da4:	00000097          	auipc	ra,0x0
    80003da8:	3d0080e7          	jalr	976(ra) # 80004174 <plic_claim>
    80003dac:	00a00793          	li	a5,10
    80003db0:	00050493          	mv	s1,a0
    80003db4:	06f50863          	beq	a0,a5,80003e24 <kerneltrap+0x12c>
    80003db8:	fc050ce3          	beqz	a0,80003d90 <kerneltrap+0x98>
    80003dbc:	00050593          	mv	a1,a0
    80003dc0:	00002517          	auipc	a0,0x2
    80003dc4:	4d050513          	addi	a0,a0,1232 # 80006290 <_ZZ14__print_uint64mE6digits+0x108>
    80003dc8:	00000097          	auipc	ra,0x0
    80003dcc:	7f0080e7          	jalr	2032(ra) # 800045b8 <__printf>
    80003dd0:	01013403          	ld	s0,16(sp)
    80003dd4:	01813083          	ld	ra,24(sp)
    80003dd8:	00048513          	mv	a0,s1
    80003ddc:	00813483          	ld	s1,8(sp)
    80003de0:	02010113          	addi	sp,sp,32
    80003de4:	00000317          	auipc	t1,0x0
    80003de8:	3c830067          	jr	968(t1) # 800041ac <plic_complete>
    80003dec:	00005517          	auipc	a0,0x5
    80003df0:	13450513          	addi	a0,a0,308 # 80008f20 <tickslock>
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	498080e7          	jalr	1176(ra) # 8000528c <acquire>
    80003dfc:	00003717          	auipc	a4,0x3
    80003e00:	79870713          	addi	a4,a4,1944 # 80007594 <ticks>
    80003e04:	00072783          	lw	a5,0(a4)
    80003e08:	00005517          	auipc	a0,0x5
    80003e0c:	11850513          	addi	a0,a0,280 # 80008f20 <tickslock>
    80003e10:	0017879b          	addiw	a5,a5,1
    80003e14:	00f72023          	sw	a5,0(a4)
    80003e18:	00001097          	auipc	ra,0x1
    80003e1c:	540080e7          	jalr	1344(ra) # 80005358 <release>
    80003e20:	f65ff06f          	j	80003d84 <kerneltrap+0x8c>
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	09c080e7          	jalr	156(ra) # 80004ec0 <uartintr>
    80003e2c:	fa5ff06f          	j	80003dd0 <kerneltrap+0xd8>
    80003e30:	00002517          	auipc	a0,0x2
    80003e34:	44050513          	addi	a0,a0,1088 # 80006270 <_ZZ14__print_uint64mE6digits+0xe8>
    80003e38:	00000097          	auipc	ra,0x0
    80003e3c:	724080e7          	jalr	1828(ra) # 8000455c <panic>

0000000080003e40 <clockintr>:
    80003e40:	fe010113          	addi	sp,sp,-32
    80003e44:	00813823          	sd	s0,16(sp)
    80003e48:	00913423          	sd	s1,8(sp)
    80003e4c:	00113c23          	sd	ra,24(sp)
    80003e50:	02010413          	addi	s0,sp,32
    80003e54:	00005497          	auipc	s1,0x5
    80003e58:	0cc48493          	addi	s1,s1,204 # 80008f20 <tickslock>
    80003e5c:	00048513          	mv	a0,s1
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	42c080e7          	jalr	1068(ra) # 8000528c <acquire>
    80003e68:	00003717          	auipc	a4,0x3
    80003e6c:	72c70713          	addi	a4,a4,1836 # 80007594 <ticks>
    80003e70:	00072783          	lw	a5,0(a4)
    80003e74:	01013403          	ld	s0,16(sp)
    80003e78:	01813083          	ld	ra,24(sp)
    80003e7c:	00048513          	mv	a0,s1
    80003e80:	0017879b          	addiw	a5,a5,1
    80003e84:	00813483          	ld	s1,8(sp)
    80003e88:	00f72023          	sw	a5,0(a4)
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00001317          	auipc	t1,0x1
    80003e94:	4c830067          	jr	1224(t1) # 80005358 <release>

0000000080003e98 <devintr>:
    80003e98:	142027f3          	csrr	a5,scause
    80003e9c:	00000513          	li	a0,0
    80003ea0:	0007c463          	bltz	a5,80003ea8 <devintr+0x10>
    80003ea4:	00008067          	ret
    80003ea8:	fe010113          	addi	sp,sp,-32
    80003eac:	00813823          	sd	s0,16(sp)
    80003eb0:	00113c23          	sd	ra,24(sp)
    80003eb4:	00913423          	sd	s1,8(sp)
    80003eb8:	02010413          	addi	s0,sp,32
    80003ebc:	0ff7f713          	andi	a4,a5,255
    80003ec0:	00900693          	li	a3,9
    80003ec4:	04d70c63          	beq	a4,a3,80003f1c <devintr+0x84>
    80003ec8:	fff00713          	li	a4,-1
    80003ecc:	03f71713          	slli	a4,a4,0x3f
    80003ed0:	00170713          	addi	a4,a4,1
    80003ed4:	00e78c63          	beq	a5,a4,80003eec <devintr+0x54>
    80003ed8:	01813083          	ld	ra,24(sp)
    80003edc:	01013403          	ld	s0,16(sp)
    80003ee0:	00813483          	ld	s1,8(sp)
    80003ee4:	02010113          	addi	sp,sp,32
    80003ee8:	00008067          	ret
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	c8c080e7          	jalr	-884(ra) # 80003b78 <cpuid>
    80003ef4:	06050663          	beqz	a0,80003f60 <devintr+0xc8>
    80003ef8:	144027f3          	csrr	a5,sip
    80003efc:	ffd7f793          	andi	a5,a5,-3
    80003f00:	14479073          	csrw	sip,a5
    80003f04:	01813083          	ld	ra,24(sp)
    80003f08:	01013403          	ld	s0,16(sp)
    80003f0c:	00813483          	ld	s1,8(sp)
    80003f10:	00200513          	li	a0,2
    80003f14:	02010113          	addi	sp,sp,32
    80003f18:	00008067          	ret
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	258080e7          	jalr	600(ra) # 80004174 <plic_claim>
    80003f24:	00a00793          	li	a5,10
    80003f28:	00050493          	mv	s1,a0
    80003f2c:	06f50663          	beq	a0,a5,80003f98 <devintr+0x100>
    80003f30:	00100513          	li	a0,1
    80003f34:	fa0482e3          	beqz	s1,80003ed8 <devintr+0x40>
    80003f38:	00048593          	mv	a1,s1
    80003f3c:	00002517          	auipc	a0,0x2
    80003f40:	35450513          	addi	a0,a0,852 # 80006290 <_ZZ14__print_uint64mE6digits+0x108>
    80003f44:	00000097          	auipc	ra,0x0
    80003f48:	674080e7          	jalr	1652(ra) # 800045b8 <__printf>
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	25c080e7          	jalr	604(ra) # 800041ac <plic_complete>
    80003f58:	00100513          	li	a0,1
    80003f5c:	f7dff06f          	j	80003ed8 <devintr+0x40>
    80003f60:	00005517          	auipc	a0,0x5
    80003f64:	fc050513          	addi	a0,a0,-64 # 80008f20 <tickslock>
    80003f68:	00001097          	auipc	ra,0x1
    80003f6c:	324080e7          	jalr	804(ra) # 8000528c <acquire>
    80003f70:	00003717          	auipc	a4,0x3
    80003f74:	62470713          	addi	a4,a4,1572 # 80007594 <ticks>
    80003f78:	00072783          	lw	a5,0(a4)
    80003f7c:	00005517          	auipc	a0,0x5
    80003f80:	fa450513          	addi	a0,a0,-92 # 80008f20 <tickslock>
    80003f84:	0017879b          	addiw	a5,a5,1
    80003f88:	00f72023          	sw	a5,0(a4)
    80003f8c:	00001097          	auipc	ra,0x1
    80003f90:	3cc080e7          	jalr	972(ra) # 80005358 <release>
    80003f94:	f65ff06f          	j	80003ef8 <devintr+0x60>
    80003f98:	00001097          	auipc	ra,0x1
    80003f9c:	f28080e7          	jalr	-216(ra) # 80004ec0 <uartintr>
    80003fa0:	fadff06f          	j	80003f4c <devintr+0xb4>
	...

0000000080003fb0 <kernelvec>:
    80003fb0:	f0010113          	addi	sp,sp,-256
    80003fb4:	00113023          	sd	ra,0(sp)
    80003fb8:	00213423          	sd	sp,8(sp)
    80003fbc:	00313823          	sd	gp,16(sp)
    80003fc0:	00413c23          	sd	tp,24(sp)
    80003fc4:	02513023          	sd	t0,32(sp)
    80003fc8:	02613423          	sd	t1,40(sp)
    80003fcc:	02713823          	sd	t2,48(sp)
    80003fd0:	02813c23          	sd	s0,56(sp)
    80003fd4:	04913023          	sd	s1,64(sp)
    80003fd8:	04a13423          	sd	a0,72(sp)
    80003fdc:	04b13823          	sd	a1,80(sp)
    80003fe0:	04c13c23          	sd	a2,88(sp)
    80003fe4:	06d13023          	sd	a3,96(sp)
    80003fe8:	06e13423          	sd	a4,104(sp)
    80003fec:	06f13823          	sd	a5,112(sp)
    80003ff0:	07013c23          	sd	a6,120(sp)
    80003ff4:	09113023          	sd	a7,128(sp)
    80003ff8:	09213423          	sd	s2,136(sp)
    80003ffc:	09313823          	sd	s3,144(sp)
    80004000:	09413c23          	sd	s4,152(sp)
    80004004:	0b513023          	sd	s5,160(sp)
    80004008:	0b613423          	sd	s6,168(sp)
    8000400c:	0b713823          	sd	s7,176(sp)
    80004010:	0b813c23          	sd	s8,184(sp)
    80004014:	0d913023          	sd	s9,192(sp)
    80004018:	0da13423          	sd	s10,200(sp)
    8000401c:	0db13823          	sd	s11,208(sp)
    80004020:	0dc13c23          	sd	t3,216(sp)
    80004024:	0fd13023          	sd	t4,224(sp)
    80004028:	0fe13423          	sd	t5,232(sp)
    8000402c:	0ff13823          	sd	t6,240(sp)
    80004030:	cc9ff0ef          	jal	ra,80003cf8 <kerneltrap>
    80004034:	00013083          	ld	ra,0(sp)
    80004038:	00813103          	ld	sp,8(sp)
    8000403c:	01013183          	ld	gp,16(sp)
    80004040:	02013283          	ld	t0,32(sp)
    80004044:	02813303          	ld	t1,40(sp)
    80004048:	03013383          	ld	t2,48(sp)
    8000404c:	03813403          	ld	s0,56(sp)
    80004050:	04013483          	ld	s1,64(sp)
    80004054:	04813503          	ld	a0,72(sp)
    80004058:	05013583          	ld	a1,80(sp)
    8000405c:	05813603          	ld	a2,88(sp)
    80004060:	06013683          	ld	a3,96(sp)
    80004064:	06813703          	ld	a4,104(sp)
    80004068:	07013783          	ld	a5,112(sp)
    8000406c:	07813803          	ld	a6,120(sp)
    80004070:	08013883          	ld	a7,128(sp)
    80004074:	08813903          	ld	s2,136(sp)
    80004078:	09013983          	ld	s3,144(sp)
    8000407c:	09813a03          	ld	s4,152(sp)
    80004080:	0a013a83          	ld	s5,160(sp)
    80004084:	0a813b03          	ld	s6,168(sp)
    80004088:	0b013b83          	ld	s7,176(sp)
    8000408c:	0b813c03          	ld	s8,184(sp)
    80004090:	0c013c83          	ld	s9,192(sp)
    80004094:	0c813d03          	ld	s10,200(sp)
    80004098:	0d013d83          	ld	s11,208(sp)
    8000409c:	0d813e03          	ld	t3,216(sp)
    800040a0:	0e013e83          	ld	t4,224(sp)
    800040a4:	0e813f03          	ld	t5,232(sp)
    800040a8:	0f013f83          	ld	t6,240(sp)
    800040ac:	10010113          	addi	sp,sp,256
    800040b0:	10200073          	sret
    800040b4:	00000013          	nop
    800040b8:	00000013          	nop
    800040bc:	00000013          	nop

00000000800040c0 <timervec>:
    800040c0:	34051573          	csrrw	a0,mscratch,a0
    800040c4:	00b53023          	sd	a1,0(a0)
    800040c8:	00c53423          	sd	a2,8(a0)
    800040cc:	00d53823          	sd	a3,16(a0)
    800040d0:	01853583          	ld	a1,24(a0)
    800040d4:	02053603          	ld	a2,32(a0)
    800040d8:	0005b683          	ld	a3,0(a1)
    800040dc:	00c686b3          	add	a3,a3,a2
    800040e0:	00d5b023          	sd	a3,0(a1)
    800040e4:	00200593          	li	a1,2
    800040e8:	14459073          	csrw	sip,a1
    800040ec:	01053683          	ld	a3,16(a0)
    800040f0:	00853603          	ld	a2,8(a0)
    800040f4:	00053583          	ld	a1,0(a0)
    800040f8:	34051573          	csrrw	a0,mscratch,a0
    800040fc:	30200073          	mret

0000000080004100 <plicinit>:
    80004100:	ff010113          	addi	sp,sp,-16
    80004104:	00813423          	sd	s0,8(sp)
    80004108:	01010413          	addi	s0,sp,16
    8000410c:	00813403          	ld	s0,8(sp)
    80004110:	0c0007b7          	lui	a5,0xc000
    80004114:	00100713          	li	a4,1
    80004118:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000411c:	00e7a223          	sw	a4,4(a5)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <plicinithart>:
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00813023          	sd	s0,0(sp)
    80004130:	00113423          	sd	ra,8(sp)
    80004134:	01010413          	addi	s0,sp,16
    80004138:	00000097          	auipc	ra,0x0
    8000413c:	a40080e7          	jalr	-1472(ra) # 80003b78 <cpuid>
    80004140:	0085171b          	slliw	a4,a0,0x8
    80004144:	0c0027b7          	lui	a5,0xc002
    80004148:	00e787b3          	add	a5,a5,a4
    8000414c:	40200713          	li	a4,1026
    80004150:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004154:	00813083          	ld	ra,8(sp)
    80004158:	00013403          	ld	s0,0(sp)
    8000415c:	00d5151b          	slliw	a0,a0,0xd
    80004160:	0c2017b7          	lui	a5,0xc201
    80004164:	00a78533          	add	a0,a5,a0
    80004168:	00052023          	sw	zero,0(a0)
    8000416c:	01010113          	addi	sp,sp,16
    80004170:	00008067          	ret

0000000080004174 <plic_claim>:
    80004174:	ff010113          	addi	sp,sp,-16
    80004178:	00813023          	sd	s0,0(sp)
    8000417c:	00113423          	sd	ra,8(sp)
    80004180:	01010413          	addi	s0,sp,16
    80004184:	00000097          	auipc	ra,0x0
    80004188:	9f4080e7          	jalr	-1548(ra) # 80003b78 <cpuid>
    8000418c:	00813083          	ld	ra,8(sp)
    80004190:	00013403          	ld	s0,0(sp)
    80004194:	00d5151b          	slliw	a0,a0,0xd
    80004198:	0c2017b7          	lui	a5,0xc201
    8000419c:	00a78533          	add	a0,a5,a0
    800041a0:	00452503          	lw	a0,4(a0)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret

00000000800041ac <plic_complete>:
    800041ac:	fe010113          	addi	sp,sp,-32
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	02010413          	addi	s0,sp,32
    800041c0:	00050493          	mv	s1,a0
    800041c4:	00000097          	auipc	ra,0x0
    800041c8:	9b4080e7          	jalr	-1612(ra) # 80003b78 <cpuid>
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	00d5179b          	slliw	a5,a0,0xd
    800041d8:	0c201737          	lui	a4,0xc201
    800041dc:	00f707b3          	add	a5,a4,a5
    800041e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret

00000000800041f0 <consolewrite>:
    800041f0:	fb010113          	addi	sp,sp,-80
    800041f4:	04813023          	sd	s0,64(sp)
    800041f8:	04113423          	sd	ra,72(sp)
    800041fc:	02913c23          	sd	s1,56(sp)
    80004200:	03213823          	sd	s2,48(sp)
    80004204:	03313423          	sd	s3,40(sp)
    80004208:	03413023          	sd	s4,32(sp)
    8000420c:	01513c23          	sd	s5,24(sp)
    80004210:	05010413          	addi	s0,sp,80
    80004214:	06c05c63          	blez	a2,8000428c <consolewrite+0x9c>
    80004218:	00060993          	mv	s3,a2
    8000421c:	00050a13          	mv	s4,a0
    80004220:	00058493          	mv	s1,a1
    80004224:	00000913          	li	s2,0
    80004228:	fff00a93          	li	s5,-1
    8000422c:	01c0006f          	j	80004248 <consolewrite+0x58>
    80004230:	fbf44503          	lbu	a0,-65(s0)
    80004234:	0019091b          	addiw	s2,s2,1
    80004238:	00148493          	addi	s1,s1,1
    8000423c:	00001097          	auipc	ra,0x1
    80004240:	a9c080e7          	jalr	-1380(ra) # 80004cd8 <uartputc>
    80004244:	03298063          	beq	s3,s2,80004264 <consolewrite+0x74>
    80004248:	00048613          	mv	a2,s1
    8000424c:	00100693          	li	a3,1
    80004250:	000a0593          	mv	a1,s4
    80004254:	fbf40513          	addi	a0,s0,-65
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	9d8080e7          	jalr	-1576(ra) # 80003c30 <either_copyin>
    80004260:	fd5518e3          	bne	a0,s5,80004230 <consolewrite+0x40>
    80004264:	04813083          	ld	ra,72(sp)
    80004268:	04013403          	ld	s0,64(sp)
    8000426c:	03813483          	ld	s1,56(sp)
    80004270:	02813983          	ld	s3,40(sp)
    80004274:	02013a03          	ld	s4,32(sp)
    80004278:	01813a83          	ld	s5,24(sp)
    8000427c:	00090513          	mv	a0,s2
    80004280:	03013903          	ld	s2,48(sp)
    80004284:	05010113          	addi	sp,sp,80
    80004288:	00008067          	ret
    8000428c:	00000913          	li	s2,0
    80004290:	fd5ff06f          	j	80004264 <consolewrite+0x74>

0000000080004294 <consoleread>:
    80004294:	f9010113          	addi	sp,sp,-112
    80004298:	06813023          	sd	s0,96(sp)
    8000429c:	04913c23          	sd	s1,88(sp)
    800042a0:	05213823          	sd	s2,80(sp)
    800042a4:	05313423          	sd	s3,72(sp)
    800042a8:	05413023          	sd	s4,64(sp)
    800042ac:	03513c23          	sd	s5,56(sp)
    800042b0:	03613823          	sd	s6,48(sp)
    800042b4:	03713423          	sd	s7,40(sp)
    800042b8:	03813023          	sd	s8,32(sp)
    800042bc:	06113423          	sd	ra,104(sp)
    800042c0:	01913c23          	sd	s9,24(sp)
    800042c4:	07010413          	addi	s0,sp,112
    800042c8:	00060b93          	mv	s7,a2
    800042cc:	00050913          	mv	s2,a0
    800042d0:	00058c13          	mv	s8,a1
    800042d4:	00060b1b          	sext.w	s6,a2
    800042d8:	00005497          	auipc	s1,0x5
    800042dc:	c7048493          	addi	s1,s1,-912 # 80008f48 <cons>
    800042e0:	00400993          	li	s3,4
    800042e4:	fff00a13          	li	s4,-1
    800042e8:	00a00a93          	li	s5,10
    800042ec:	05705e63          	blez	s7,80004348 <consoleread+0xb4>
    800042f0:	09c4a703          	lw	a4,156(s1)
    800042f4:	0984a783          	lw	a5,152(s1)
    800042f8:	0007071b          	sext.w	a4,a4
    800042fc:	08e78463          	beq	a5,a4,80004384 <consoleread+0xf0>
    80004300:	07f7f713          	andi	a4,a5,127
    80004304:	00e48733          	add	a4,s1,a4
    80004308:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000430c:	0017869b          	addiw	a3,a5,1
    80004310:	08d4ac23          	sw	a3,152(s1)
    80004314:	00070c9b          	sext.w	s9,a4
    80004318:	0b370663          	beq	a4,s3,800043c4 <consoleread+0x130>
    8000431c:	00100693          	li	a3,1
    80004320:	f9f40613          	addi	a2,s0,-97
    80004324:	000c0593          	mv	a1,s8
    80004328:	00090513          	mv	a0,s2
    8000432c:	f8e40fa3          	sb	a4,-97(s0)
    80004330:	00000097          	auipc	ra,0x0
    80004334:	8b4080e7          	jalr	-1868(ra) # 80003be4 <either_copyout>
    80004338:	01450863          	beq	a0,s4,80004348 <consoleread+0xb4>
    8000433c:	001c0c13          	addi	s8,s8,1
    80004340:	fffb8b9b          	addiw	s7,s7,-1
    80004344:	fb5c94e3          	bne	s9,s5,800042ec <consoleread+0x58>
    80004348:	000b851b          	sext.w	a0,s7
    8000434c:	06813083          	ld	ra,104(sp)
    80004350:	06013403          	ld	s0,96(sp)
    80004354:	05813483          	ld	s1,88(sp)
    80004358:	05013903          	ld	s2,80(sp)
    8000435c:	04813983          	ld	s3,72(sp)
    80004360:	04013a03          	ld	s4,64(sp)
    80004364:	03813a83          	ld	s5,56(sp)
    80004368:	02813b83          	ld	s7,40(sp)
    8000436c:	02013c03          	ld	s8,32(sp)
    80004370:	01813c83          	ld	s9,24(sp)
    80004374:	40ab053b          	subw	a0,s6,a0
    80004378:	03013b03          	ld	s6,48(sp)
    8000437c:	07010113          	addi	sp,sp,112
    80004380:	00008067          	ret
    80004384:	00001097          	auipc	ra,0x1
    80004388:	1d8080e7          	jalr	472(ra) # 8000555c <push_on>
    8000438c:	0984a703          	lw	a4,152(s1)
    80004390:	09c4a783          	lw	a5,156(s1)
    80004394:	0007879b          	sext.w	a5,a5
    80004398:	fef70ce3          	beq	a4,a5,80004390 <consoleread+0xfc>
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	234080e7          	jalr	564(ra) # 800055d0 <pop_on>
    800043a4:	0984a783          	lw	a5,152(s1)
    800043a8:	07f7f713          	andi	a4,a5,127
    800043ac:	00e48733          	add	a4,s1,a4
    800043b0:	01874703          	lbu	a4,24(a4)
    800043b4:	0017869b          	addiw	a3,a5,1
    800043b8:	08d4ac23          	sw	a3,152(s1)
    800043bc:	00070c9b          	sext.w	s9,a4
    800043c0:	f5371ee3          	bne	a4,s3,8000431c <consoleread+0x88>
    800043c4:	000b851b          	sext.w	a0,s7
    800043c8:	f96bf2e3          	bgeu	s7,s6,8000434c <consoleread+0xb8>
    800043cc:	08f4ac23          	sw	a5,152(s1)
    800043d0:	f7dff06f          	j	8000434c <consoleread+0xb8>

00000000800043d4 <consputc>:
    800043d4:	10000793          	li	a5,256
    800043d8:	00f50663          	beq	a0,a5,800043e4 <consputc+0x10>
    800043dc:	00001317          	auipc	t1,0x1
    800043e0:	9f430067          	jr	-1548(t1) # 80004dd0 <uartputc_sync>
    800043e4:	ff010113          	addi	sp,sp,-16
    800043e8:	00113423          	sd	ra,8(sp)
    800043ec:	00813023          	sd	s0,0(sp)
    800043f0:	01010413          	addi	s0,sp,16
    800043f4:	00800513          	li	a0,8
    800043f8:	00001097          	auipc	ra,0x1
    800043fc:	9d8080e7          	jalr	-1576(ra) # 80004dd0 <uartputc_sync>
    80004400:	02000513          	li	a0,32
    80004404:	00001097          	auipc	ra,0x1
    80004408:	9cc080e7          	jalr	-1588(ra) # 80004dd0 <uartputc_sync>
    8000440c:	00013403          	ld	s0,0(sp)
    80004410:	00813083          	ld	ra,8(sp)
    80004414:	00800513          	li	a0,8
    80004418:	01010113          	addi	sp,sp,16
    8000441c:	00001317          	auipc	t1,0x1
    80004420:	9b430067          	jr	-1612(t1) # 80004dd0 <uartputc_sync>

0000000080004424 <consoleintr>:
    80004424:	fe010113          	addi	sp,sp,-32
    80004428:	00813823          	sd	s0,16(sp)
    8000442c:	00913423          	sd	s1,8(sp)
    80004430:	01213023          	sd	s2,0(sp)
    80004434:	00113c23          	sd	ra,24(sp)
    80004438:	02010413          	addi	s0,sp,32
    8000443c:	00005917          	auipc	s2,0x5
    80004440:	b0c90913          	addi	s2,s2,-1268 # 80008f48 <cons>
    80004444:	00050493          	mv	s1,a0
    80004448:	00090513          	mv	a0,s2
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	e40080e7          	jalr	-448(ra) # 8000528c <acquire>
    80004454:	02048c63          	beqz	s1,8000448c <consoleintr+0x68>
    80004458:	0a092783          	lw	a5,160(s2)
    8000445c:	09892703          	lw	a4,152(s2)
    80004460:	07f00693          	li	a3,127
    80004464:	40e7873b          	subw	a4,a5,a4
    80004468:	02e6e263          	bltu	a3,a4,8000448c <consoleintr+0x68>
    8000446c:	00d00713          	li	a4,13
    80004470:	04e48063          	beq	s1,a4,800044b0 <consoleintr+0x8c>
    80004474:	07f7f713          	andi	a4,a5,127
    80004478:	00e90733          	add	a4,s2,a4
    8000447c:	0017879b          	addiw	a5,a5,1
    80004480:	0af92023          	sw	a5,160(s2)
    80004484:	00970c23          	sb	s1,24(a4)
    80004488:	08f92e23          	sw	a5,156(s2)
    8000448c:	01013403          	ld	s0,16(sp)
    80004490:	01813083          	ld	ra,24(sp)
    80004494:	00813483          	ld	s1,8(sp)
    80004498:	00013903          	ld	s2,0(sp)
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	aac50513          	addi	a0,a0,-1364 # 80008f48 <cons>
    800044a4:	02010113          	addi	sp,sp,32
    800044a8:	00001317          	auipc	t1,0x1
    800044ac:	eb030067          	jr	-336(t1) # 80005358 <release>
    800044b0:	00a00493          	li	s1,10
    800044b4:	fc1ff06f          	j	80004474 <consoleintr+0x50>

00000000800044b8 <consoleinit>:
    800044b8:	fe010113          	addi	sp,sp,-32
    800044bc:	00113c23          	sd	ra,24(sp)
    800044c0:	00813823          	sd	s0,16(sp)
    800044c4:	00913423          	sd	s1,8(sp)
    800044c8:	02010413          	addi	s0,sp,32
    800044cc:	00005497          	auipc	s1,0x5
    800044d0:	a7c48493          	addi	s1,s1,-1412 # 80008f48 <cons>
    800044d4:	00048513          	mv	a0,s1
    800044d8:	00002597          	auipc	a1,0x2
    800044dc:	e1058593          	addi	a1,a1,-496 # 800062e8 <_ZZ14__print_uint64mE6digits+0x160>
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	d88080e7          	jalr	-632(ra) # 80005268 <initlock>
    800044e8:	00000097          	auipc	ra,0x0
    800044ec:	7ac080e7          	jalr	1964(ra) # 80004c94 <uartinit>
    800044f0:	01813083          	ld	ra,24(sp)
    800044f4:	01013403          	ld	s0,16(sp)
    800044f8:	00000797          	auipc	a5,0x0
    800044fc:	d9c78793          	addi	a5,a5,-612 # 80004294 <consoleread>
    80004500:	0af4bc23          	sd	a5,184(s1)
    80004504:	00000797          	auipc	a5,0x0
    80004508:	cec78793          	addi	a5,a5,-788 # 800041f0 <consolewrite>
    8000450c:	0cf4b023          	sd	a5,192(s1)
    80004510:	00813483          	ld	s1,8(sp)
    80004514:	02010113          	addi	sp,sp,32
    80004518:	00008067          	ret

000000008000451c <console_read>:
    8000451c:	ff010113          	addi	sp,sp,-16
    80004520:	00813423          	sd	s0,8(sp)
    80004524:	01010413          	addi	s0,sp,16
    80004528:	00813403          	ld	s0,8(sp)
    8000452c:	00005317          	auipc	t1,0x5
    80004530:	ad433303          	ld	t1,-1324(t1) # 80009000 <devsw+0x10>
    80004534:	01010113          	addi	sp,sp,16
    80004538:	00030067          	jr	t1

000000008000453c <console_write>:
    8000453c:	ff010113          	addi	sp,sp,-16
    80004540:	00813423          	sd	s0,8(sp)
    80004544:	01010413          	addi	s0,sp,16
    80004548:	00813403          	ld	s0,8(sp)
    8000454c:	00005317          	auipc	t1,0x5
    80004550:	abc33303          	ld	t1,-1348(t1) # 80009008 <devsw+0x18>
    80004554:	01010113          	addi	sp,sp,16
    80004558:	00030067          	jr	t1

000000008000455c <panic>:
    8000455c:	fe010113          	addi	sp,sp,-32
    80004560:	00113c23          	sd	ra,24(sp)
    80004564:	00813823          	sd	s0,16(sp)
    80004568:	00913423          	sd	s1,8(sp)
    8000456c:	02010413          	addi	s0,sp,32
    80004570:	00050493          	mv	s1,a0
    80004574:	00002517          	auipc	a0,0x2
    80004578:	d7c50513          	addi	a0,a0,-644 # 800062f0 <_ZZ14__print_uint64mE6digits+0x168>
    8000457c:	00005797          	auipc	a5,0x5
    80004580:	b207a623          	sw	zero,-1236(a5) # 800090a8 <pr+0x18>
    80004584:	00000097          	auipc	ra,0x0
    80004588:	034080e7          	jalr	52(ra) # 800045b8 <__printf>
    8000458c:	00048513          	mv	a0,s1
    80004590:	00000097          	auipc	ra,0x0
    80004594:	028080e7          	jalr	40(ra) # 800045b8 <__printf>
    80004598:	00002517          	auipc	a0,0x2
    8000459c:	d3850513          	addi	a0,a0,-712 # 800062d0 <_ZZ14__print_uint64mE6digits+0x148>
    800045a0:	00000097          	auipc	ra,0x0
    800045a4:	018080e7          	jalr	24(ra) # 800045b8 <__printf>
    800045a8:	00100793          	li	a5,1
    800045ac:	00003717          	auipc	a4,0x3
    800045b0:	fef72623          	sw	a5,-20(a4) # 80007598 <panicked>
    800045b4:	0000006f          	j	800045b4 <panic+0x58>

00000000800045b8 <__printf>:
    800045b8:	f3010113          	addi	sp,sp,-208
    800045bc:	08813023          	sd	s0,128(sp)
    800045c0:	07313423          	sd	s3,104(sp)
    800045c4:	09010413          	addi	s0,sp,144
    800045c8:	05813023          	sd	s8,64(sp)
    800045cc:	08113423          	sd	ra,136(sp)
    800045d0:	06913c23          	sd	s1,120(sp)
    800045d4:	07213823          	sd	s2,112(sp)
    800045d8:	07413023          	sd	s4,96(sp)
    800045dc:	05513c23          	sd	s5,88(sp)
    800045e0:	05613823          	sd	s6,80(sp)
    800045e4:	05713423          	sd	s7,72(sp)
    800045e8:	03913c23          	sd	s9,56(sp)
    800045ec:	03a13823          	sd	s10,48(sp)
    800045f0:	03b13423          	sd	s11,40(sp)
    800045f4:	00005317          	auipc	t1,0x5
    800045f8:	a9c30313          	addi	t1,t1,-1380 # 80009090 <pr>
    800045fc:	01832c03          	lw	s8,24(t1)
    80004600:	00b43423          	sd	a1,8(s0)
    80004604:	00c43823          	sd	a2,16(s0)
    80004608:	00d43c23          	sd	a3,24(s0)
    8000460c:	02e43023          	sd	a4,32(s0)
    80004610:	02f43423          	sd	a5,40(s0)
    80004614:	03043823          	sd	a6,48(s0)
    80004618:	03143c23          	sd	a7,56(s0)
    8000461c:	00050993          	mv	s3,a0
    80004620:	4a0c1663          	bnez	s8,80004acc <__printf+0x514>
    80004624:	60098c63          	beqz	s3,80004c3c <__printf+0x684>
    80004628:	0009c503          	lbu	a0,0(s3)
    8000462c:	00840793          	addi	a5,s0,8
    80004630:	f6f43c23          	sd	a5,-136(s0)
    80004634:	00000493          	li	s1,0
    80004638:	22050063          	beqz	a0,80004858 <__printf+0x2a0>
    8000463c:	00002a37          	lui	s4,0x2
    80004640:	00018ab7          	lui	s5,0x18
    80004644:	000f4b37          	lui	s6,0xf4
    80004648:	00989bb7          	lui	s7,0x989
    8000464c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004650:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004654:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004658:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000465c:	00148c9b          	addiw	s9,s1,1
    80004660:	02500793          	li	a5,37
    80004664:	01998933          	add	s2,s3,s9
    80004668:	38f51263          	bne	a0,a5,800049ec <__printf+0x434>
    8000466c:	00094783          	lbu	a5,0(s2)
    80004670:	00078c9b          	sext.w	s9,a5
    80004674:	1e078263          	beqz	a5,80004858 <__printf+0x2a0>
    80004678:	0024849b          	addiw	s1,s1,2
    8000467c:	07000713          	li	a4,112
    80004680:	00998933          	add	s2,s3,s1
    80004684:	38e78a63          	beq	a5,a4,80004a18 <__printf+0x460>
    80004688:	20f76863          	bltu	a4,a5,80004898 <__printf+0x2e0>
    8000468c:	42a78863          	beq	a5,a0,80004abc <__printf+0x504>
    80004690:	06400713          	li	a4,100
    80004694:	40e79663          	bne	a5,a4,80004aa0 <__printf+0x4e8>
    80004698:	f7843783          	ld	a5,-136(s0)
    8000469c:	0007a603          	lw	a2,0(a5)
    800046a0:	00878793          	addi	a5,a5,8
    800046a4:	f6f43c23          	sd	a5,-136(s0)
    800046a8:	42064a63          	bltz	a2,80004adc <__printf+0x524>
    800046ac:	00a00713          	li	a4,10
    800046b0:	02e677bb          	remuw	a5,a2,a4
    800046b4:	00002d97          	auipc	s11,0x2
    800046b8:	c64d8d93          	addi	s11,s11,-924 # 80006318 <digits>
    800046bc:	00900593          	li	a1,9
    800046c0:	0006051b          	sext.w	a0,a2
    800046c4:	00000c93          	li	s9,0
    800046c8:	02079793          	slli	a5,a5,0x20
    800046cc:	0207d793          	srli	a5,a5,0x20
    800046d0:	00fd87b3          	add	a5,s11,a5
    800046d4:	0007c783          	lbu	a5,0(a5)
    800046d8:	02e656bb          	divuw	a3,a2,a4
    800046dc:	f8f40023          	sb	a5,-128(s0)
    800046e0:	14c5d863          	bge	a1,a2,80004830 <__printf+0x278>
    800046e4:	06300593          	li	a1,99
    800046e8:	00100c93          	li	s9,1
    800046ec:	02e6f7bb          	remuw	a5,a3,a4
    800046f0:	02079793          	slli	a5,a5,0x20
    800046f4:	0207d793          	srli	a5,a5,0x20
    800046f8:	00fd87b3          	add	a5,s11,a5
    800046fc:	0007c783          	lbu	a5,0(a5)
    80004700:	02e6d73b          	divuw	a4,a3,a4
    80004704:	f8f400a3          	sb	a5,-127(s0)
    80004708:	12a5f463          	bgeu	a1,a0,80004830 <__printf+0x278>
    8000470c:	00a00693          	li	a3,10
    80004710:	00900593          	li	a1,9
    80004714:	02d777bb          	remuw	a5,a4,a3
    80004718:	02079793          	slli	a5,a5,0x20
    8000471c:	0207d793          	srli	a5,a5,0x20
    80004720:	00fd87b3          	add	a5,s11,a5
    80004724:	0007c503          	lbu	a0,0(a5)
    80004728:	02d757bb          	divuw	a5,a4,a3
    8000472c:	f8a40123          	sb	a0,-126(s0)
    80004730:	48e5f263          	bgeu	a1,a4,80004bb4 <__printf+0x5fc>
    80004734:	06300513          	li	a0,99
    80004738:	02d7f5bb          	remuw	a1,a5,a3
    8000473c:	02059593          	slli	a1,a1,0x20
    80004740:	0205d593          	srli	a1,a1,0x20
    80004744:	00bd85b3          	add	a1,s11,a1
    80004748:	0005c583          	lbu	a1,0(a1)
    8000474c:	02d7d7bb          	divuw	a5,a5,a3
    80004750:	f8b401a3          	sb	a1,-125(s0)
    80004754:	48e57263          	bgeu	a0,a4,80004bd8 <__printf+0x620>
    80004758:	3e700513          	li	a0,999
    8000475c:	02d7f5bb          	remuw	a1,a5,a3
    80004760:	02059593          	slli	a1,a1,0x20
    80004764:	0205d593          	srli	a1,a1,0x20
    80004768:	00bd85b3          	add	a1,s11,a1
    8000476c:	0005c583          	lbu	a1,0(a1)
    80004770:	02d7d7bb          	divuw	a5,a5,a3
    80004774:	f8b40223          	sb	a1,-124(s0)
    80004778:	46e57663          	bgeu	a0,a4,80004be4 <__printf+0x62c>
    8000477c:	02d7f5bb          	remuw	a1,a5,a3
    80004780:	02059593          	slli	a1,a1,0x20
    80004784:	0205d593          	srli	a1,a1,0x20
    80004788:	00bd85b3          	add	a1,s11,a1
    8000478c:	0005c583          	lbu	a1,0(a1)
    80004790:	02d7d7bb          	divuw	a5,a5,a3
    80004794:	f8b402a3          	sb	a1,-123(s0)
    80004798:	46ea7863          	bgeu	s4,a4,80004c08 <__printf+0x650>
    8000479c:	02d7f5bb          	remuw	a1,a5,a3
    800047a0:	02059593          	slli	a1,a1,0x20
    800047a4:	0205d593          	srli	a1,a1,0x20
    800047a8:	00bd85b3          	add	a1,s11,a1
    800047ac:	0005c583          	lbu	a1,0(a1)
    800047b0:	02d7d7bb          	divuw	a5,a5,a3
    800047b4:	f8b40323          	sb	a1,-122(s0)
    800047b8:	3eeaf863          	bgeu	s5,a4,80004ba8 <__printf+0x5f0>
    800047bc:	02d7f5bb          	remuw	a1,a5,a3
    800047c0:	02059593          	slli	a1,a1,0x20
    800047c4:	0205d593          	srli	a1,a1,0x20
    800047c8:	00bd85b3          	add	a1,s11,a1
    800047cc:	0005c583          	lbu	a1,0(a1)
    800047d0:	02d7d7bb          	divuw	a5,a5,a3
    800047d4:	f8b403a3          	sb	a1,-121(s0)
    800047d8:	42eb7e63          	bgeu	s6,a4,80004c14 <__printf+0x65c>
    800047dc:	02d7f5bb          	remuw	a1,a5,a3
    800047e0:	02059593          	slli	a1,a1,0x20
    800047e4:	0205d593          	srli	a1,a1,0x20
    800047e8:	00bd85b3          	add	a1,s11,a1
    800047ec:	0005c583          	lbu	a1,0(a1)
    800047f0:	02d7d7bb          	divuw	a5,a5,a3
    800047f4:	f8b40423          	sb	a1,-120(s0)
    800047f8:	42ebfc63          	bgeu	s7,a4,80004c30 <__printf+0x678>
    800047fc:	02079793          	slli	a5,a5,0x20
    80004800:	0207d793          	srli	a5,a5,0x20
    80004804:	00fd8db3          	add	s11,s11,a5
    80004808:	000dc703          	lbu	a4,0(s11)
    8000480c:	00a00793          	li	a5,10
    80004810:	00900c93          	li	s9,9
    80004814:	f8e404a3          	sb	a4,-119(s0)
    80004818:	00065c63          	bgez	a2,80004830 <__printf+0x278>
    8000481c:	f9040713          	addi	a4,s0,-112
    80004820:	00f70733          	add	a4,a4,a5
    80004824:	02d00693          	li	a3,45
    80004828:	fed70823          	sb	a3,-16(a4)
    8000482c:	00078c93          	mv	s9,a5
    80004830:	f8040793          	addi	a5,s0,-128
    80004834:	01978cb3          	add	s9,a5,s9
    80004838:	f7f40d13          	addi	s10,s0,-129
    8000483c:	000cc503          	lbu	a0,0(s9)
    80004840:	fffc8c93          	addi	s9,s9,-1
    80004844:	00000097          	auipc	ra,0x0
    80004848:	b90080e7          	jalr	-1136(ra) # 800043d4 <consputc>
    8000484c:	ffac98e3          	bne	s9,s10,8000483c <__printf+0x284>
    80004850:	00094503          	lbu	a0,0(s2)
    80004854:	e00514e3          	bnez	a0,8000465c <__printf+0xa4>
    80004858:	1a0c1663          	bnez	s8,80004a04 <__printf+0x44c>
    8000485c:	08813083          	ld	ra,136(sp)
    80004860:	08013403          	ld	s0,128(sp)
    80004864:	07813483          	ld	s1,120(sp)
    80004868:	07013903          	ld	s2,112(sp)
    8000486c:	06813983          	ld	s3,104(sp)
    80004870:	06013a03          	ld	s4,96(sp)
    80004874:	05813a83          	ld	s5,88(sp)
    80004878:	05013b03          	ld	s6,80(sp)
    8000487c:	04813b83          	ld	s7,72(sp)
    80004880:	04013c03          	ld	s8,64(sp)
    80004884:	03813c83          	ld	s9,56(sp)
    80004888:	03013d03          	ld	s10,48(sp)
    8000488c:	02813d83          	ld	s11,40(sp)
    80004890:	0d010113          	addi	sp,sp,208
    80004894:	00008067          	ret
    80004898:	07300713          	li	a4,115
    8000489c:	1ce78a63          	beq	a5,a4,80004a70 <__printf+0x4b8>
    800048a0:	07800713          	li	a4,120
    800048a4:	1ee79e63          	bne	a5,a4,80004aa0 <__printf+0x4e8>
    800048a8:	f7843783          	ld	a5,-136(s0)
    800048ac:	0007a703          	lw	a4,0(a5)
    800048b0:	00878793          	addi	a5,a5,8
    800048b4:	f6f43c23          	sd	a5,-136(s0)
    800048b8:	28074263          	bltz	a4,80004b3c <__printf+0x584>
    800048bc:	00002d97          	auipc	s11,0x2
    800048c0:	a5cd8d93          	addi	s11,s11,-1444 # 80006318 <digits>
    800048c4:	00f77793          	andi	a5,a4,15
    800048c8:	00fd87b3          	add	a5,s11,a5
    800048cc:	0007c683          	lbu	a3,0(a5)
    800048d0:	00f00613          	li	a2,15
    800048d4:	0007079b          	sext.w	a5,a4
    800048d8:	f8d40023          	sb	a3,-128(s0)
    800048dc:	0047559b          	srliw	a1,a4,0x4
    800048e0:	0047569b          	srliw	a3,a4,0x4
    800048e4:	00000c93          	li	s9,0
    800048e8:	0ee65063          	bge	a2,a4,800049c8 <__printf+0x410>
    800048ec:	00f6f693          	andi	a3,a3,15
    800048f0:	00dd86b3          	add	a3,s11,a3
    800048f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800048f8:	0087d79b          	srliw	a5,a5,0x8
    800048fc:	00100c93          	li	s9,1
    80004900:	f8d400a3          	sb	a3,-127(s0)
    80004904:	0cb67263          	bgeu	a2,a1,800049c8 <__printf+0x410>
    80004908:	00f7f693          	andi	a3,a5,15
    8000490c:	00dd86b3          	add	a3,s11,a3
    80004910:	0006c583          	lbu	a1,0(a3)
    80004914:	00f00613          	li	a2,15
    80004918:	0047d69b          	srliw	a3,a5,0x4
    8000491c:	f8b40123          	sb	a1,-126(s0)
    80004920:	0047d593          	srli	a1,a5,0x4
    80004924:	28f67e63          	bgeu	a2,a5,80004bc0 <__printf+0x608>
    80004928:	00f6f693          	andi	a3,a3,15
    8000492c:	00dd86b3          	add	a3,s11,a3
    80004930:	0006c503          	lbu	a0,0(a3)
    80004934:	0087d813          	srli	a6,a5,0x8
    80004938:	0087d69b          	srliw	a3,a5,0x8
    8000493c:	f8a401a3          	sb	a0,-125(s0)
    80004940:	28b67663          	bgeu	a2,a1,80004bcc <__printf+0x614>
    80004944:	00f6f693          	andi	a3,a3,15
    80004948:	00dd86b3          	add	a3,s11,a3
    8000494c:	0006c583          	lbu	a1,0(a3)
    80004950:	00c7d513          	srli	a0,a5,0xc
    80004954:	00c7d69b          	srliw	a3,a5,0xc
    80004958:	f8b40223          	sb	a1,-124(s0)
    8000495c:	29067a63          	bgeu	a2,a6,80004bf0 <__printf+0x638>
    80004960:	00f6f693          	andi	a3,a3,15
    80004964:	00dd86b3          	add	a3,s11,a3
    80004968:	0006c583          	lbu	a1,0(a3)
    8000496c:	0107d813          	srli	a6,a5,0x10
    80004970:	0107d69b          	srliw	a3,a5,0x10
    80004974:	f8b402a3          	sb	a1,-123(s0)
    80004978:	28a67263          	bgeu	a2,a0,80004bfc <__printf+0x644>
    8000497c:	00f6f693          	andi	a3,a3,15
    80004980:	00dd86b3          	add	a3,s11,a3
    80004984:	0006c683          	lbu	a3,0(a3)
    80004988:	0147d79b          	srliw	a5,a5,0x14
    8000498c:	f8d40323          	sb	a3,-122(s0)
    80004990:	21067663          	bgeu	a2,a6,80004b9c <__printf+0x5e4>
    80004994:	02079793          	slli	a5,a5,0x20
    80004998:	0207d793          	srli	a5,a5,0x20
    8000499c:	00fd8db3          	add	s11,s11,a5
    800049a0:	000dc683          	lbu	a3,0(s11)
    800049a4:	00800793          	li	a5,8
    800049a8:	00700c93          	li	s9,7
    800049ac:	f8d403a3          	sb	a3,-121(s0)
    800049b0:	00075c63          	bgez	a4,800049c8 <__printf+0x410>
    800049b4:	f9040713          	addi	a4,s0,-112
    800049b8:	00f70733          	add	a4,a4,a5
    800049bc:	02d00693          	li	a3,45
    800049c0:	fed70823          	sb	a3,-16(a4)
    800049c4:	00078c93          	mv	s9,a5
    800049c8:	f8040793          	addi	a5,s0,-128
    800049cc:	01978cb3          	add	s9,a5,s9
    800049d0:	f7f40d13          	addi	s10,s0,-129
    800049d4:	000cc503          	lbu	a0,0(s9)
    800049d8:	fffc8c93          	addi	s9,s9,-1
    800049dc:	00000097          	auipc	ra,0x0
    800049e0:	9f8080e7          	jalr	-1544(ra) # 800043d4 <consputc>
    800049e4:	ff9d18e3          	bne	s10,s9,800049d4 <__printf+0x41c>
    800049e8:	0100006f          	j	800049f8 <__printf+0x440>
    800049ec:	00000097          	auipc	ra,0x0
    800049f0:	9e8080e7          	jalr	-1560(ra) # 800043d4 <consputc>
    800049f4:	000c8493          	mv	s1,s9
    800049f8:	00094503          	lbu	a0,0(s2)
    800049fc:	c60510e3          	bnez	a0,8000465c <__printf+0xa4>
    80004a00:	e40c0ee3          	beqz	s8,8000485c <__printf+0x2a4>
    80004a04:	00004517          	auipc	a0,0x4
    80004a08:	68c50513          	addi	a0,a0,1676 # 80009090 <pr>
    80004a0c:	00001097          	auipc	ra,0x1
    80004a10:	94c080e7          	jalr	-1716(ra) # 80005358 <release>
    80004a14:	e49ff06f          	j	8000485c <__printf+0x2a4>
    80004a18:	f7843783          	ld	a5,-136(s0)
    80004a1c:	03000513          	li	a0,48
    80004a20:	01000d13          	li	s10,16
    80004a24:	00878713          	addi	a4,a5,8
    80004a28:	0007bc83          	ld	s9,0(a5)
    80004a2c:	f6e43c23          	sd	a4,-136(s0)
    80004a30:	00000097          	auipc	ra,0x0
    80004a34:	9a4080e7          	jalr	-1628(ra) # 800043d4 <consputc>
    80004a38:	07800513          	li	a0,120
    80004a3c:	00000097          	auipc	ra,0x0
    80004a40:	998080e7          	jalr	-1640(ra) # 800043d4 <consputc>
    80004a44:	00002d97          	auipc	s11,0x2
    80004a48:	8d4d8d93          	addi	s11,s11,-1836 # 80006318 <digits>
    80004a4c:	03ccd793          	srli	a5,s9,0x3c
    80004a50:	00fd87b3          	add	a5,s11,a5
    80004a54:	0007c503          	lbu	a0,0(a5)
    80004a58:	fffd0d1b          	addiw	s10,s10,-1
    80004a5c:	004c9c93          	slli	s9,s9,0x4
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	974080e7          	jalr	-1676(ra) # 800043d4 <consputc>
    80004a68:	fe0d12e3          	bnez	s10,80004a4c <__printf+0x494>
    80004a6c:	f8dff06f          	j	800049f8 <__printf+0x440>
    80004a70:	f7843783          	ld	a5,-136(s0)
    80004a74:	0007bc83          	ld	s9,0(a5)
    80004a78:	00878793          	addi	a5,a5,8
    80004a7c:	f6f43c23          	sd	a5,-136(s0)
    80004a80:	000c9a63          	bnez	s9,80004a94 <__printf+0x4dc>
    80004a84:	1080006f          	j	80004b8c <__printf+0x5d4>
    80004a88:	001c8c93          	addi	s9,s9,1
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	948080e7          	jalr	-1720(ra) # 800043d4 <consputc>
    80004a94:	000cc503          	lbu	a0,0(s9)
    80004a98:	fe0518e3          	bnez	a0,80004a88 <__printf+0x4d0>
    80004a9c:	f5dff06f          	j	800049f8 <__printf+0x440>
    80004aa0:	02500513          	li	a0,37
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	930080e7          	jalr	-1744(ra) # 800043d4 <consputc>
    80004aac:	000c8513          	mv	a0,s9
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	924080e7          	jalr	-1756(ra) # 800043d4 <consputc>
    80004ab8:	f41ff06f          	j	800049f8 <__printf+0x440>
    80004abc:	02500513          	li	a0,37
    80004ac0:	00000097          	auipc	ra,0x0
    80004ac4:	914080e7          	jalr	-1772(ra) # 800043d4 <consputc>
    80004ac8:	f31ff06f          	j	800049f8 <__printf+0x440>
    80004acc:	00030513          	mv	a0,t1
    80004ad0:	00000097          	auipc	ra,0x0
    80004ad4:	7bc080e7          	jalr	1980(ra) # 8000528c <acquire>
    80004ad8:	b4dff06f          	j	80004624 <__printf+0x6c>
    80004adc:	40c0053b          	negw	a0,a2
    80004ae0:	00a00713          	li	a4,10
    80004ae4:	02e576bb          	remuw	a3,a0,a4
    80004ae8:	00002d97          	auipc	s11,0x2
    80004aec:	830d8d93          	addi	s11,s11,-2000 # 80006318 <digits>
    80004af0:	ff700593          	li	a1,-9
    80004af4:	02069693          	slli	a3,a3,0x20
    80004af8:	0206d693          	srli	a3,a3,0x20
    80004afc:	00dd86b3          	add	a3,s11,a3
    80004b00:	0006c683          	lbu	a3,0(a3)
    80004b04:	02e557bb          	divuw	a5,a0,a4
    80004b08:	f8d40023          	sb	a3,-128(s0)
    80004b0c:	10b65e63          	bge	a2,a1,80004c28 <__printf+0x670>
    80004b10:	06300593          	li	a1,99
    80004b14:	02e7f6bb          	remuw	a3,a5,a4
    80004b18:	02069693          	slli	a3,a3,0x20
    80004b1c:	0206d693          	srli	a3,a3,0x20
    80004b20:	00dd86b3          	add	a3,s11,a3
    80004b24:	0006c683          	lbu	a3,0(a3)
    80004b28:	02e7d73b          	divuw	a4,a5,a4
    80004b2c:	00200793          	li	a5,2
    80004b30:	f8d400a3          	sb	a3,-127(s0)
    80004b34:	bca5ece3          	bltu	a1,a0,8000470c <__printf+0x154>
    80004b38:	ce5ff06f          	j	8000481c <__printf+0x264>
    80004b3c:	40e007bb          	negw	a5,a4
    80004b40:	00001d97          	auipc	s11,0x1
    80004b44:	7d8d8d93          	addi	s11,s11,2008 # 80006318 <digits>
    80004b48:	00f7f693          	andi	a3,a5,15
    80004b4c:	00dd86b3          	add	a3,s11,a3
    80004b50:	0006c583          	lbu	a1,0(a3)
    80004b54:	ff100613          	li	a2,-15
    80004b58:	0047d69b          	srliw	a3,a5,0x4
    80004b5c:	f8b40023          	sb	a1,-128(s0)
    80004b60:	0047d59b          	srliw	a1,a5,0x4
    80004b64:	0ac75e63          	bge	a4,a2,80004c20 <__printf+0x668>
    80004b68:	00f6f693          	andi	a3,a3,15
    80004b6c:	00dd86b3          	add	a3,s11,a3
    80004b70:	0006c603          	lbu	a2,0(a3)
    80004b74:	00f00693          	li	a3,15
    80004b78:	0087d79b          	srliw	a5,a5,0x8
    80004b7c:	f8c400a3          	sb	a2,-127(s0)
    80004b80:	d8b6e4e3          	bltu	a3,a1,80004908 <__printf+0x350>
    80004b84:	00200793          	li	a5,2
    80004b88:	e2dff06f          	j	800049b4 <__printf+0x3fc>
    80004b8c:	00001c97          	auipc	s9,0x1
    80004b90:	76cc8c93          	addi	s9,s9,1900 # 800062f8 <_ZZ14__print_uint64mE6digits+0x170>
    80004b94:	02800513          	li	a0,40
    80004b98:	ef1ff06f          	j	80004a88 <__printf+0x4d0>
    80004b9c:	00700793          	li	a5,7
    80004ba0:	00600c93          	li	s9,6
    80004ba4:	e0dff06f          	j	800049b0 <__printf+0x3f8>
    80004ba8:	00700793          	li	a5,7
    80004bac:	00600c93          	li	s9,6
    80004bb0:	c69ff06f          	j	80004818 <__printf+0x260>
    80004bb4:	00300793          	li	a5,3
    80004bb8:	00200c93          	li	s9,2
    80004bbc:	c5dff06f          	j	80004818 <__printf+0x260>
    80004bc0:	00300793          	li	a5,3
    80004bc4:	00200c93          	li	s9,2
    80004bc8:	de9ff06f          	j	800049b0 <__printf+0x3f8>
    80004bcc:	00400793          	li	a5,4
    80004bd0:	00300c93          	li	s9,3
    80004bd4:	dddff06f          	j	800049b0 <__printf+0x3f8>
    80004bd8:	00400793          	li	a5,4
    80004bdc:	00300c93          	li	s9,3
    80004be0:	c39ff06f          	j	80004818 <__printf+0x260>
    80004be4:	00500793          	li	a5,5
    80004be8:	00400c93          	li	s9,4
    80004bec:	c2dff06f          	j	80004818 <__printf+0x260>
    80004bf0:	00500793          	li	a5,5
    80004bf4:	00400c93          	li	s9,4
    80004bf8:	db9ff06f          	j	800049b0 <__printf+0x3f8>
    80004bfc:	00600793          	li	a5,6
    80004c00:	00500c93          	li	s9,5
    80004c04:	dadff06f          	j	800049b0 <__printf+0x3f8>
    80004c08:	00600793          	li	a5,6
    80004c0c:	00500c93          	li	s9,5
    80004c10:	c09ff06f          	j	80004818 <__printf+0x260>
    80004c14:	00800793          	li	a5,8
    80004c18:	00700c93          	li	s9,7
    80004c1c:	bfdff06f          	j	80004818 <__printf+0x260>
    80004c20:	00100793          	li	a5,1
    80004c24:	d91ff06f          	j	800049b4 <__printf+0x3fc>
    80004c28:	00100793          	li	a5,1
    80004c2c:	bf1ff06f          	j	8000481c <__printf+0x264>
    80004c30:	00900793          	li	a5,9
    80004c34:	00800c93          	li	s9,8
    80004c38:	be1ff06f          	j	80004818 <__printf+0x260>
    80004c3c:	00001517          	auipc	a0,0x1
    80004c40:	6c450513          	addi	a0,a0,1732 # 80006300 <_ZZ14__print_uint64mE6digits+0x178>
    80004c44:	00000097          	auipc	ra,0x0
    80004c48:	918080e7          	jalr	-1768(ra) # 8000455c <panic>

0000000080004c4c <printfinit>:
    80004c4c:	fe010113          	addi	sp,sp,-32
    80004c50:	00813823          	sd	s0,16(sp)
    80004c54:	00913423          	sd	s1,8(sp)
    80004c58:	00113c23          	sd	ra,24(sp)
    80004c5c:	02010413          	addi	s0,sp,32
    80004c60:	00004497          	auipc	s1,0x4
    80004c64:	43048493          	addi	s1,s1,1072 # 80009090 <pr>
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	00001597          	auipc	a1,0x1
    80004c70:	6a458593          	addi	a1,a1,1700 # 80006310 <_ZZ14__print_uint64mE6digits+0x188>
    80004c74:	00000097          	auipc	ra,0x0
    80004c78:	5f4080e7          	jalr	1524(ra) # 80005268 <initlock>
    80004c7c:	01813083          	ld	ra,24(sp)
    80004c80:	01013403          	ld	s0,16(sp)
    80004c84:	0004ac23          	sw	zero,24(s1)
    80004c88:	00813483          	ld	s1,8(sp)
    80004c8c:	02010113          	addi	sp,sp,32
    80004c90:	00008067          	ret

0000000080004c94 <uartinit>:
    80004c94:	ff010113          	addi	sp,sp,-16
    80004c98:	00813423          	sd	s0,8(sp)
    80004c9c:	01010413          	addi	s0,sp,16
    80004ca0:	100007b7          	lui	a5,0x10000
    80004ca4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004ca8:	f8000713          	li	a4,-128
    80004cac:	00e781a3          	sb	a4,3(a5)
    80004cb0:	00300713          	li	a4,3
    80004cb4:	00e78023          	sb	a4,0(a5)
    80004cb8:	000780a3          	sb	zero,1(a5)
    80004cbc:	00e781a3          	sb	a4,3(a5)
    80004cc0:	00700693          	li	a3,7
    80004cc4:	00d78123          	sb	a3,2(a5)
    80004cc8:	00e780a3          	sb	a4,1(a5)
    80004ccc:	00813403          	ld	s0,8(sp)
    80004cd0:	01010113          	addi	sp,sp,16
    80004cd4:	00008067          	ret

0000000080004cd8 <uartputc>:
    80004cd8:	00003797          	auipc	a5,0x3
    80004cdc:	8c07a783          	lw	a5,-1856(a5) # 80007598 <panicked>
    80004ce0:	00078463          	beqz	a5,80004ce8 <uartputc+0x10>
    80004ce4:	0000006f          	j	80004ce4 <uartputc+0xc>
    80004ce8:	fd010113          	addi	sp,sp,-48
    80004cec:	02813023          	sd	s0,32(sp)
    80004cf0:	00913c23          	sd	s1,24(sp)
    80004cf4:	01213823          	sd	s2,16(sp)
    80004cf8:	01313423          	sd	s3,8(sp)
    80004cfc:	02113423          	sd	ra,40(sp)
    80004d00:	03010413          	addi	s0,sp,48
    80004d04:	00003917          	auipc	s2,0x3
    80004d08:	89c90913          	addi	s2,s2,-1892 # 800075a0 <uart_tx_r>
    80004d0c:	00093783          	ld	a5,0(s2)
    80004d10:	00003497          	auipc	s1,0x3
    80004d14:	89848493          	addi	s1,s1,-1896 # 800075a8 <uart_tx_w>
    80004d18:	0004b703          	ld	a4,0(s1)
    80004d1c:	02078693          	addi	a3,a5,32
    80004d20:	00050993          	mv	s3,a0
    80004d24:	02e69c63          	bne	a3,a4,80004d5c <uartputc+0x84>
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	834080e7          	jalr	-1996(ra) # 8000555c <push_on>
    80004d30:	00093783          	ld	a5,0(s2)
    80004d34:	0004b703          	ld	a4,0(s1)
    80004d38:	02078793          	addi	a5,a5,32
    80004d3c:	00e79463          	bne	a5,a4,80004d44 <uartputc+0x6c>
    80004d40:	0000006f          	j	80004d40 <uartputc+0x68>
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	88c080e7          	jalr	-1908(ra) # 800055d0 <pop_on>
    80004d4c:	00093783          	ld	a5,0(s2)
    80004d50:	0004b703          	ld	a4,0(s1)
    80004d54:	02078693          	addi	a3,a5,32
    80004d58:	fce688e3          	beq	a3,a4,80004d28 <uartputc+0x50>
    80004d5c:	01f77693          	andi	a3,a4,31
    80004d60:	00004597          	auipc	a1,0x4
    80004d64:	35058593          	addi	a1,a1,848 # 800090b0 <uart_tx_buf>
    80004d68:	00d586b3          	add	a3,a1,a3
    80004d6c:	00170713          	addi	a4,a4,1
    80004d70:	01368023          	sb	s3,0(a3)
    80004d74:	00e4b023          	sd	a4,0(s1)
    80004d78:	10000637          	lui	a2,0x10000
    80004d7c:	02f71063          	bne	a4,a5,80004d9c <uartputc+0xc4>
    80004d80:	0340006f          	j	80004db4 <uartputc+0xdc>
    80004d84:	00074703          	lbu	a4,0(a4)
    80004d88:	00f93023          	sd	a5,0(s2)
    80004d8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d90:	00093783          	ld	a5,0(s2)
    80004d94:	0004b703          	ld	a4,0(s1)
    80004d98:	00f70e63          	beq	a4,a5,80004db4 <uartputc+0xdc>
    80004d9c:	00564683          	lbu	a3,5(a2)
    80004da0:	01f7f713          	andi	a4,a5,31
    80004da4:	00e58733          	add	a4,a1,a4
    80004da8:	0206f693          	andi	a3,a3,32
    80004dac:	00178793          	addi	a5,a5,1
    80004db0:	fc069ae3          	bnez	a3,80004d84 <uartputc+0xac>
    80004db4:	02813083          	ld	ra,40(sp)
    80004db8:	02013403          	ld	s0,32(sp)
    80004dbc:	01813483          	ld	s1,24(sp)
    80004dc0:	01013903          	ld	s2,16(sp)
    80004dc4:	00813983          	ld	s3,8(sp)
    80004dc8:	03010113          	addi	sp,sp,48
    80004dcc:	00008067          	ret

0000000080004dd0 <uartputc_sync>:
    80004dd0:	ff010113          	addi	sp,sp,-16
    80004dd4:	00813423          	sd	s0,8(sp)
    80004dd8:	01010413          	addi	s0,sp,16
    80004ddc:	00002717          	auipc	a4,0x2
    80004de0:	7bc72703          	lw	a4,1980(a4) # 80007598 <panicked>
    80004de4:	02071663          	bnez	a4,80004e10 <uartputc_sync+0x40>
    80004de8:	00050793          	mv	a5,a0
    80004dec:	100006b7          	lui	a3,0x10000
    80004df0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004df4:	02077713          	andi	a4,a4,32
    80004df8:	fe070ce3          	beqz	a4,80004df0 <uartputc_sync+0x20>
    80004dfc:	0ff7f793          	andi	a5,a5,255
    80004e00:	00f68023          	sb	a5,0(a3)
    80004e04:	00813403          	ld	s0,8(sp)
    80004e08:	01010113          	addi	sp,sp,16
    80004e0c:	00008067          	ret
    80004e10:	0000006f          	j	80004e10 <uartputc_sync+0x40>

0000000080004e14 <uartstart>:
    80004e14:	ff010113          	addi	sp,sp,-16
    80004e18:	00813423          	sd	s0,8(sp)
    80004e1c:	01010413          	addi	s0,sp,16
    80004e20:	00002617          	auipc	a2,0x2
    80004e24:	78060613          	addi	a2,a2,1920 # 800075a0 <uart_tx_r>
    80004e28:	00002517          	auipc	a0,0x2
    80004e2c:	78050513          	addi	a0,a0,1920 # 800075a8 <uart_tx_w>
    80004e30:	00063783          	ld	a5,0(a2)
    80004e34:	00053703          	ld	a4,0(a0)
    80004e38:	04f70263          	beq	a4,a5,80004e7c <uartstart+0x68>
    80004e3c:	100005b7          	lui	a1,0x10000
    80004e40:	00004817          	auipc	a6,0x4
    80004e44:	27080813          	addi	a6,a6,624 # 800090b0 <uart_tx_buf>
    80004e48:	01c0006f          	j	80004e64 <uartstart+0x50>
    80004e4c:	0006c703          	lbu	a4,0(a3)
    80004e50:	00f63023          	sd	a5,0(a2)
    80004e54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e58:	00063783          	ld	a5,0(a2)
    80004e5c:	00053703          	ld	a4,0(a0)
    80004e60:	00f70e63          	beq	a4,a5,80004e7c <uartstart+0x68>
    80004e64:	01f7f713          	andi	a4,a5,31
    80004e68:	00e806b3          	add	a3,a6,a4
    80004e6c:	0055c703          	lbu	a4,5(a1)
    80004e70:	00178793          	addi	a5,a5,1
    80004e74:	02077713          	andi	a4,a4,32
    80004e78:	fc071ae3          	bnez	a4,80004e4c <uartstart+0x38>
    80004e7c:	00813403          	ld	s0,8(sp)
    80004e80:	01010113          	addi	sp,sp,16
    80004e84:	00008067          	ret

0000000080004e88 <uartgetc>:
    80004e88:	ff010113          	addi	sp,sp,-16
    80004e8c:	00813423          	sd	s0,8(sp)
    80004e90:	01010413          	addi	s0,sp,16
    80004e94:	10000737          	lui	a4,0x10000
    80004e98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e9c:	0017f793          	andi	a5,a5,1
    80004ea0:	00078c63          	beqz	a5,80004eb8 <uartgetc+0x30>
    80004ea4:	00074503          	lbu	a0,0(a4)
    80004ea8:	0ff57513          	andi	a0,a0,255
    80004eac:	00813403          	ld	s0,8(sp)
    80004eb0:	01010113          	addi	sp,sp,16
    80004eb4:	00008067          	ret
    80004eb8:	fff00513          	li	a0,-1
    80004ebc:	ff1ff06f          	j	80004eac <uartgetc+0x24>

0000000080004ec0 <uartintr>:
    80004ec0:	100007b7          	lui	a5,0x10000
    80004ec4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004ec8:	0017f793          	andi	a5,a5,1
    80004ecc:	0a078463          	beqz	a5,80004f74 <uartintr+0xb4>
    80004ed0:	fe010113          	addi	sp,sp,-32
    80004ed4:	00813823          	sd	s0,16(sp)
    80004ed8:	00913423          	sd	s1,8(sp)
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	02010413          	addi	s0,sp,32
    80004ee4:	100004b7          	lui	s1,0x10000
    80004ee8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004eec:	0ff57513          	andi	a0,a0,255
    80004ef0:	fffff097          	auipc	ra,0xfffff
    80004ef4:	534080e7          	jalr	1332(ra) # 80004424 <consoleintr>
    80004ef8:	0054c783          	lbu	a5,5(s1)
    80004efc:	0017f793          	andi	a5,a5,1
    80004f00:	fe0794e3          	bnez	a5,80004ee8 <uartintr+0x28>
    80004f04:	00002617          	auipc	a2,0x2
    80004f08:	69c60613          	addi	a2,a2,1692 # 800075a0 <uart_tx_r>
    80004f0c:	00002517          	auipc	a0,0x2
    80004f10:	69c50513          	addi	a0,a0,1692 # 800075a8 <uart_tx_w>
    80004f14:	00063783          	ld	a5,0(a2)
    80004f18:	00053703          	ld	a4,0(a0)
    80004f1c:	04f70263          	beq	a4,a5,80004f60 <uartintr+0xa0>
    80004f20:	100005b7          	lui	a1,0x10000
    80004f24:	00004817          	auipc	a6,0x4
    80004f28:	18c80813          	addi	a6,a6,396 # 800090b0 <uart_tx_buf>
    80004f2c:	01c0006f          	j	80004f48 <uartintr+0x88>
    80004f30:	0006c703          	lbu	a4,0(a3)
    80004f34:	00f63023          	sd	a5,0(a2)
    80004f38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f3c:	00063783          	ld	a5,0(a2)
    80004f40:	00053703          	ld	a4,0(a0)
    80004f44:	00f70e63          	beq	a4,a5,80004f60 <uartintr+0xa0>
    80004f48:	01f7f713          	andi	a4,a5,31
    80004f4c:	00e806b3          	add	a3,a6,a4
    80004f50:	0055c703          	lbu	a4,5(a1)
    80004f54:	00178793          	addi	a5,a5,1
    80004f58:	02077713          	andi	a4,a4,32
    80004f5c:	fc071ae3          	bnez	a4,80004f30 <uartintr+0x70>
    80004f60:	01813083          	ld	ra,24(sp)
    80004f64:	01013403          	ld	s0,16(sp)
    80004f68:	00813483          	ld	s1,8(sp)
    80004f6c:	02010113          	addi	sp,sp,32
    80004f70:	00008067          	ret
    80004f74:	00002617          	auipc	a2,0x2
    80004f78:	62c60613          	addi	a2,a2,1580 # 800075a0 <uart_tx_r>
    80004f7c:	00002517          	auipc	a0,0x2
    80004f80:	62c50513          	addi	a0,a0,1580 # 800075a8 <uart_tx_w>
    80004f84:	00063783          	ld	a5,0(a2)
    80004f88:	00053703          	ld	a4,0(a0)
    80004f8c:	04f70263          	beq	a4,a5,80004fd0 <uartintr+0x110>
    80004f90:	100005b7          	lui	a1,0x10000
    80004f94:	00004817          	auipc	a6,0x4
    80004f98:	11c80813          	addi	a6,a6,284 # 800090b0 <uart_tx_buf>
    80004f9c:	01c0006f          	j	80004fb8 <uartintr+0xf8>
    80004fa0:	0006c703          	lbu	a4,0(a3)
    80004fa4:	00f63023          	sd	a5,0(a2)
    80004fa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004fac:	00063783          	ld	a5,0(a2)
    80004fb0:	00053703          	ld	a4,0(a0)
    80004fb4:	02f70063          	beq	a4,a5,80004fd4 <uartintr+0x114>
    80004fb8:	01f7f713          	andi	a4,a5,31
    80004fbc:	00e806b3          	add	a3,a6,a4
    80004fc0:	0055c703          	lbu	a4,5(a1)
    80004fc4:	00178793          	addi	a5,a5,1
    80004fc8:	02077713          	andi	a4,a4,32
    80004fcc:	fc071ae3          	bnez	a4,80004fa0 <uartintr+0xe0>
    80004fd0:	00008067          	ret
    80004fd4:	00008067          	ret

0000000080004fd8 <kinit>:
    80004fd8:	fc010113          	addi	sp,sp,-64
    80004fdc:	02913423          	sd	s1,40(sp)
    80004fe0:	fffff7b7          	lui	a5,0xfffff
    80004fe4:	00005497          	auipc	s1,0x5
    80004fe8:	0eb48493          	addi	s1,s1,235 # 8000a0cf <end+0xfff>
    80004fec:	02813823          	sd	s0,48(sp)
    80004ff0:	01313c23          	sd	s3,24(sp)
    80004ff4:	00f4f4b3          	and	s1,s1,a5
    80004ff8:	02113c23          	sd	ra,56(sp)
    80004ffc:	03213023          	sd	s2,32(sp)
    80005000:	01413823          	sd	s4,16(sp)
    80005004:	01513423          	sd	s5,8(sp)
    80005008:	04010413          	addi	s0,sp,64
    8000500c:	000017b7          	lui	a5,0x1
    80005010:	01100993          	li	s3,17
    80005014:	00f487b3          	add	a5,s1,a5
    80005018:	01b99993          	slli	s3,s3,0x1b
    8000501c:	06f9e063          	bltu	s3,a5,8000507c <kinit+0xa4>
    80005020:	00004a97          	auipc	s5,0x4
    80005024:	0b0a8a93          	addi	s5,s5,176 # 800090d0 <end>
    80005028:	0754ec63          	bltu	s1,s5,800050a0 <kinit+0xc8>
    8000502c:	0734fa63          	bgeu	s1,s3,800050a0 <kinit+0xc8>
    80005030:	00088a37          	lui	s4,0x88
    80005034:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005038:	00002917          	auipc	s2,0x2
    8000503c:	57890913          	addi	s2,s2,1400 # 800075b0 <kmem>
    80005040:	00ca1a13          	slli	s4,s4,0xc
    80005044:	0140006f          	j	80005058 <kinit+0x80>
    80005048:	000017b7          	lui	a5,0x1
    8000504c:	00f484b3          	add	s1,s1,a5
    80005050:	0554e863          	bltu	s1,s5,800050a0 <kinit+0xc8>
    80005054:	0534f663          	bgeu	s1,s3,800050a0 <kinit+0xc8>
    80005058:	00001637          	lui	a2,0x1
    8000505c:	00100593          	li	a1,1
    80005060:	00048513          	mv	a0,s1
    80005064:	00000097          	auipc	ra,0x0
    80005068:	5e4080e7          	jalr	1508(ra) # 80005648 <__memset>
    8000506c:	00093783          	ld	a5,0(s2)
    80005070:	00f4b023          	sd	a5,0(s1)
    80005074:	00993023          	sd	s1,0(s2)
    80005078:	fd4498e3          	bne	s1,s4,80005048 <kinit+0x70>
    8000507c:	03813083          	ld	ra,56(sp)
    80005080:	03013403          	ld	s0,48(sp)
    80005084:	02813483          	ld	s1,40(sp)
    80005088:	02013903          	ld	s2,32(sp)
    8000508c:	01813983          	ld	s3,24(sp)
    80005090:	01013a03          	ld	s4,16(sp)
    80005094:	00813a83          	ld	s5,8(sp)
    80005098:	04010113          	addi	sp,sp,64
    8000509c:	00008067          	ret
    800050a0:	00001517          	auipc	a0,0x1
    800050a4:	29050513          	addi	a0,a0,656 # 80006330 <digits+0x18>
    800050a8:	fffff097          	auipc	ra,0xfffff
    800050ac:	4b4080e7          	jalr	1204(ra) # 8000455c <panic>

00000000800050b0 <freerange>:
    800050b0:	fc010113          	addi	sp,sp,-64
    800050b4:	000017b7          	lui	a5,0x1
    800050b8:	02913423          	sd	s1,40(sp)
    800050bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800050c0:	009504b3          	add	s1,a0,s1
    800050c4:	fffff537          	lui	a0,0xfffff
    800050c8:	02813823          	sd	s0,48(sp)
    800050cc:	02113c23          	sd	ra,56(sp)
    800050d0:	03213023          	sd	s2,32(sp)
    800050d4:	01313c23          	sd	s3,24(sp)
    800050d8:	01413823          	sd	s4,16(sp)
    800050dc:	01513423          	sd	s5,8(sp)
    800050e0:	01613023          	sd	s6,0(sp)
    800050e4:	04010413          	addi	s0,sp,64
    800050e8:	00a4f4b3          	and	s1,s1,a0
    800050ec:	00f487b3          	add	a5,s1,a5
    800050f0:	06f5e463          	bltu	a1,a5,80005158 <freerange+0xa8>
    800050f4:	00004a97          	auipc	s5,0x4
    800050f8:	fdca8a93          	addi	s5,s5,-36 # 800090d0 <end>
    800050fc:	0954e263          	bltu	s1,s5,80005180 <freerange+0xd0>
    80005100:	01100993          	li	s3,17
    80005104:	01b99993          	slli	s3,s3,0x1b
    80005108:	0734fc63          	bgeu	s1,s3,80005180 <freerange+0xd0>
    8000510c:	00058a13          	mv	s4,a1
    80005110:	00002917          	auipc	s2,0x2
    80005114:	4a090913          	addi	s2,s2,1184 # 800075b0 <kmem>
    80005118:	00002b37          	lui	s6,0x2
    8000511c:	0140006f          	j	80005130 <freerange+0x80>
    80005120:	000017b7          	lui	a5,0x1
    80005124:	00f484b3          	add	s1,s1,a5
    80005128:	0554ec63          	bltu	s1,s5,80005180 <freerange+0xd0>
    8000512c:	0534fa63          	bgeu	s1,s3,80005180 <freerange+0xd0>
    80005130:	00001637          	lui	a2,0x1
    80005134:	00100593          	li	a1,1
    80005138:	00048513          	mv	a0,s1
    8000513c:	00000097          	auipc	ra,0x0
    80005140:	50c080e7          	jalr	1292(ra) # 80005648 <__memset>
    80005144:	00093703          	ld	a4,0(s2)
    80005148:	016487b3          	add	a5,s1,s6
    8000514c:	00e4b023          	sd	a4,0(s1)
    80005150:	00993023          	sd	s1,0(s2)
    80005154:	fcfa76e3          	bgeu	s4,a5,80005120 <freerange+0x70>
    80005158:	03813083          	ld	ra,56(sp)
    8000515c:	03013403          	ld	s0,48(sp)
    80005160:	02813483          	ld	s1,40(sp)
    80005164:	02013903          	ld	s2,32(sp)
    80005168:	01813983          	ld	s3,24(sp)
    8000516c:	01013a03          	ld	s4,16(sp)
    80005170:	00813a83          	ld	s5,8(sp)
    80005174:	00013b03          	ld	s6,0(sp)
    80005178:	04010113          	addi	sp,sp,64
    8000517c:	00008067          	ret
    80005180:	00001517          	auipc	a0,0x1
    80005184:	1b050513          	addi	a0,a0,432 # 80006330 <digits+0x18>
    80005188:	fffff097          	auipc	ra,0xfffff
    8000518c:	3d4080e7          	jalr	980(ra) # 8000455c <panic>

0000000080005190 <kfree>:
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00813823          	sd	s0,16(sp)
    80005198:	00113c23          	sd	ra,24(sp)
    8000519c:	00913423          	sd	s1,8(sp)
    800051a0:	02010413          	addi	s0,sp,32
    800051a4:	03451793          	slli	a5,a0,0x34
    800051a8:	04079c63          	bnez	a5,80005200 <kfree+0x70>
    800051ac:	00004797          	auipc	a5,0x4
    800051b0:	f2478793          	addi	a5,a5,-220 # 800090d0 <end>
    800051b4:	00050493          	mv	s1,a0
    800051b8:	04f56463          	bltu	a0,a5,80005200 <kfree+0x70>
    800051bc:	01100793          	li	a5,17
    800051c0:	01b79793          	slli	a5,a5,0x1b
    800051c4:	02f57e63          	bgeu	a0,a5,80005200 <kfree+0x70>
    800051c8:	00001637          	lui	a2,0x1
    800051cc:	00100593          	li	a1,1
    800051d0:	00000097          	auipc	ra,0x0
    800051d4:	478080e7          	jalr	1144(ra) # 80005648 <__memset>
    800051d8:	00002797          	auipc	a5,0x2
    800051dc:	3d878793          	addi	a5,a5,984 # 800075b0 <kmem>
    800051e0:	0007b703          	ld	a4,0(a5)
    800051e4:	01813083          	ld	ra,24(sp)
    800051e8:	01013403          	ld	s0,16(sp)
    800051ec:	00e4b023          	sd	a4,0(s1)
    800051f0:	0097b023          	sd	s1,0(a5)
    800051f4:	00813483          	ld	s1,8(sp)
    800051f8:	02010113          	addi	sp,sp,32
    800051fc:	00008067          	ret
    80005200:	00001517          	auipc	a0,0x1
    80005204:	13050513          	addi	a0,a0,304 # 80006330 <digits+0x18>
    80005208:	fffff097          	auipc	ra,0xfffff
    8000520c:	354080e7          	jalr	852(ra) # 8000455c <panic>

0000000080005210 <kalloc>:
    80005210:	fe010113          	addi	sp,sp,-32
    80005214:	00813823          	sd	s0,16(sp)
    80005218:	00913423          	sd	s1,8(sp)
    8000521c:	00113c23          	sd	ra,24(sp)
    80005220:	02010413          	addi	s0,sp,32
    80005224:	00002797          	auipc	a5,0x2
    80005228:	38c78793          	addi	a5,a5,908 # 800075b0 <kmem>
    8000522c:	0007b483          	ld	s1,0(a5)
    80005230:	02048063          	beqz	s1,80005250 <kalloc+0x40>
    80005234:	0004b703          	ld	a4,0(s1)
    80005238:	00001637          	lui	a2,0x1
    8000523c:	00500593          	li	a1,5
    80005240:	00048513          	mv	a0,s1
    80005244:	00e7b023          	sd	a4,0(a5)
    80005248:	00000097          	auipc	ra,0x0
    8000524c:	400080e7          	jalr	1024(ra) # 80005648 <__memset>
    80005250:	01813083          	ld	ra,24(sp)
    80005254:	01013403          	ld	s0,16(sp)
    80005258:	00048513          	mv	a0,s1
    8000525c:	00813483          	ld	s1,8(sp)
    80005260:	02010113          	addi	sp,sp,32
    80005264:	00008067          	ret

0000000080005268 <initlock>:
    80005268:	ff010113          	addi	sp,sp,-16
    8000526c:	00813423          	sd	s0,8(sp)
    80005270:	01010413          	addi	s0,sp,16
    80005274:	00813403          	ld	s0,8(sp)
    80005278:	00b53423          	sd	a1,8(a0)
    8000527c:	00052023          	sw	zero,0(a0)
    80005280:	00053823          	sd	zero,16(a0)
    80005284:	01010113          	addi	sp,sp,16
    80005288:	00008067          	ret

000000008000528c <acquire>:
    8000528c:	fe010113          	addi	sp,sp,-32
    80005290:	00813823          	sd	s0,16(sp)
    80005294:	00913423          	sd	s1,8(sp)
    80005298:	00113c23          	sd	ra,24(sp)
    8000529c:	01213023          	sd	s2,0(sp)
    800052a0:	02010413          	addi	s0,sp,32
    800052a4:	00050493          	mv	s1,a0
    800052a8:	10002973          	csrr	s2,sstatus
    800052ac:	100027f3          	csrr	a5,sstatus
    800052b0:	ffd7f793          	andi	a5,a5,-3
    800052b4:	10079073          	csrw	sstatus,a5
    800052b8:	fffff097          	auipc	ra,0xfffff
    800052bc:	8e0080e7          	jalr	-1824(ra) # 80003b98 <mycpu>
    800052c0:	07852783          	lw	a5,120(a0)
    800052c4:	06078e63          	beqz	a5,80005340 <acquire+0xb4>
    800052c8:	fffff097          	auipc	ra,0xfffff
    800052cc:	8d0080e7          	jalr	-1840(ra) # 80003b98 <mycpu>
    800052d0:	07852783          	lw	a5,120(a0)
    800052d4:	0004a703          	lw	a4,0(s1)
    800052d8:	0017879b          	addiw	a5,a5,1
    800052dc:	06f52c23          	sw	a5,120(a0)
    800052e0:	04071063          	bnez	a4,80005320 <acquire+0x94>
    800052e4:	00100713          	li	a4,1
    800052e8:	00070793          	mv	a5,a4
    800052ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800052f0:	0007879b          	sext.w	a5,a5
    800052f4:	fe079ae3          	bnez	a5,800052e8 <acquire+0x5c>
    800052f8:	0ff0000f          	fence
    800052fc:	fffff097          	auipc	ra,0xfffff
    80005300:	89c080e7          	jalr	-1892(ra) # 80003b98 <mycpu>
    80005304:	01813083          	ld	ra,24(sp)
    80005308:	01013403          	ld	s0,16(sp)
    8000530c:	00a4b823          	sd	a0,16(s1)
    80005310:	00013903          	ld	s2,0(sp)
    80005314:	00813483          	ld	s1,8(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret
    80005320:	0104b903          	ld	s2,16(s1)
    80005324:	fffff097          	auipc	ra,0xfffff
    80005328:	874080e7          	jalr	-1932(ra) # 80003b98 <mycpu>
    8000532c:	faa91ce3          	bne	s2,a0,800052e4 <acquire+0x58>
    80005330:	00001517          	auipc	a0,0x1
    80005334:	00850513          	addi	a0,a0,8 # 80006338 <digits+0x20>
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	224080e7          	jalr	548(ra) # 8000455c <panic>
    80005340:	00195913          	srli	s2,s2,0x1
    80005344:	fffff097          	auipc	ra,0xfffff
    80005348:	854080e7          	jalr	-1964(ra) # 80003b98 <mycpu>
    8000534c:	00197913          	andi	s2,s2,1
    80005350:	07252e23          	sw	s2,124(a0)
    80005354:	f75ff06f          	j	800052c8 <acquire+0x3c>

0000000080005358 <release>:
    80005358:	fe010113          	addi	sp,sp,-32
    8000535c:	00813823          	sd	s0,16(sp)
    80005360:	00113c23          	sd	ra,24(sp)
    80005364:	00913423          	sd	s1,8(sp)
    80005368:	01213023          	sd	s2,0(sp)
    8000536c:	02010413          	addi	s0,sp,32
    80005370:	00052783          	lw	a5,0(a0)
    80005374:	00079a63          	bnez	a5,80005388 <release+0x30>
    80005378:	00001517          	auipc	a0,0x1
    8000537c:	fc850513          	addi	a0,a0,-56 # 80006340 <digits+0x28>
    80005380:	fffff097          	auipc	ra,0xfffff
    80005384:	1dc080e7          	jalr	476(ra) # 8000455c <panic>
    80005388:	01053903          	ld	s2,16(a0)
    8000538c:	00050493          	mv	s1,a0
    80005390:	fffff097          	auipc	ra,0xfffff
    80005394:	808080e7          	jalr	-2040(ra) # 80003b98 <mycpu>
    80005398:	fea910e3          	bne	s2,a0,80005378 <release+0x20>
    8000539c:	0004b823          	sd	zero,16(s1)
    800053a0:	0ff0000f          	fence
    800053a4:	0f50000f          	fence	iorw,ow
    800053a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800053ac:	ffffe097          	auipc	ra,0xffffe
    800053b0:	7ec080e7          	jalr	2028(ra) # 80003b98 <mycpu>
    800053b4:	100027f3          	csrr	a5,sstatus
    800053b8:	0027f793          	andi	a5,a5,2
    800053bc:	04079a63          	bnez	a5,80005410 <release+0xb8>
    800053c0:	07852783          	lw	a5,120(a0)
    800053c4:	02f05e63          	blez	a5,80005400 <release+0xa8>
    800053c8:	fff7871b          	addiw	a4,a5,-1
    800053cc:	06e52c23          	sw	a4,120(a0)
    800053d0:	00071c63          	bnez	a4,800053e8 <release+0x90>
    800053d4:	07c52783          	lw	a5,124(a0)
    800053d8:	00078863          	beqz	a5,800053e8 <release+0x90>
    800053dc:	100027f3          	csrr	a5,sstatus
    800053e0:	0027e793          	ori	a5,a5,2
    800053e4:	10079073          	csrw	sstatus,a5
    800053e8:	01813083          	ld	ra,24(sp)
    800053ec:	01013403          	ld	s0,16(sp)
    800053f0:	00813483          	ld	s1,8(sp)
    800053f4:	00013903          	ld	s2,0(sp)
    800053f8:	02010113          	addi	sp,sp,32
    800053fc:	00008067          	ret
    80005400:	00001517          	auipc	a0,0x1
    80005404:	f6050513          	addi	a0,a0,-160 # 80006360 <digits+0x48>
    80005408:	fffff097          	auipc	ra,0xfffff
    8000540c:	154080e7          	jalr	340(ra) # 8000455c <panic>
    80005410:	00001517          	auipc	a0,0x1
    80005414:	f3850513          	addi	a0,a0,-200 # 80006348 <digits+0x30>
    80005418:	fffff097          	auipc	ra,0xfffff
    8000541c:	144080e7          	jalr	324(ra) # 8000455c <panic>

0000000080005420 <holding>:
    80005420:	00052783          	lw	a5,0(a0)
    80005424:	00079663          	bnez	a5,80005430 <holding+0x10>
    80005428:	00000513          	li	a0,0
    8000542c:	00008067          	ret
    80005430:	fe010113          	addi	sp,sp,-32
    80005434:	00813823          	sd	s0,16(sp)
    80005438:	00913423          	sd	s1,8(sp)
    8000543c:	00113c23          	sd	ra,24(sp)
    80005440:	02010413          	addi	s0,sp,32
    80005444:	01053483          	ld	s1,16(a0)
    80005448:	ffffe097          	auipc	ra,0xffffe
    8000544c:	750080e7          	jalr	1872(ra) # 80003b98 <mycpu>
    80005450:	01813083          	ld	ra,24(sp)
    80005454:	01013403          	ld	s0,16(sp)
    80005458:	40a48533          	sub	a0,s1,a0
    8000545c:	00153513          	seqz	a0,a0
    80005460:	00813483          	ld	s1,8(sp)
    80005464:	02010113          	addi	sp,sp,32
    80005468:	00008067          	ret

000000008000546c <push_off>:
    8000546c:	fe010113          	addi	sp,sp,-32
    80005470:	00813823          	sd	s0,16(sp)
    80005474:	00113c23          	sd	ra,24(sp)
    80005478:	00913423          	sd	s1,8(sp)
    8000547c:	02010413          	addi	s0,sp,32
    80005480:	100024f3          	csrr	s1,sstatus
    80005484:	100027f3          	csrr	a5,sstatus
    80005488:	ffd7f793          	andi	a5,a5,-3
    8000548c:	10079073          	csrw	sstatus,a5
    80005490:	ffffe097          	auipc	ra,0xffffe
    80005494:	708080e7          	jalr	1800(ra) # 80003b98 <mycpu>
    80005498:	07852783          	lw	a5,120(a0)
    8000549c:	02078663          	beqz	a5,800054c8 <push_off+0x5c>
    800054a0:	ffffe097          	auipc	ra,0xffffe
    800054a4:	6f8080e7          	jalr	1784(ra) # 80003b98 <mycpu>
    800054a8:	07852783          	lw	a5,120(a0)
    800054ac:	01813083          	ld	ra,24(sp)
    800054b0:	01013403          	ld	s0,16(sp)
    800054b4:	0017879b          	addiw	a5,a5,1
    800054b8:	06f52c23          	sw	a5,120(a0)
    800054bc:	00813483          	ld	s1,8(sp)
    800054c0:	02010113          	addi	sp,sp,32
    800054c4:	00008067          	ret
    800054c8:	0014d493          	srli	s1,s1,0x1
    800054cc:	ffffe097          	auipc	ra,0xffffe
    800054d0:	6cc080e7          	jalr	1740(ra) # 80003b98 <mycpu>
    800054d4:	0014f493          	andi	s1,s1,1
    800054d8:	06952e23          	sw	s1,124(a0)
    800054dc:	fc5ff06f          	j	800054a0 <push_off+0x34>

00000000800054e0 <pop_off>:
    800054e0:	ff010113          	addi	sp,sp,-16
    800054e4:	00813023          	sd	s0,0(sp)
    800054e8:	00113423          	sd	ra,8(sp)
    800054ec:	01010413          	addi	s0,sp,16
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	6a8080e7          	jalr	1704(ra) # 80003b98 <mycpu>
    800054f8:	100027f3          	csrr	a5,sstatus
    800054fc:	0027f793          	andi	a5,a5,2
    80005500:	04079663          	bnez	a5,8000554c <pop_off+0x6c>
    80005504:	07852783          	lw	a5,120(a0)
    80005508:	02f05a63          	blez	a5,8000553c <pop_off+0x5c>
    8000550c:	fff7871b          	addiw	a4,a5,-1
    80005510:	06e52c23          	sw	a4,120(a0)
    80005514:	00071c63          	bnez	a4,8000552c <pop_off+0x4c>
    80005518:	07c52783          	lw	a5,124(a0)
    8000551c:	00078863          	beqz	a5,8000552c <pop_off+0x4c>
    80005520:	100027f3          	csrr	a5,sstatus
    80005524:	0027e793          	ori	a5,a5,2
    80005528:	10079073          	csrw	sstatus,a5
    8000552c:	00813083          	ld	ra,8(sp)
    80005530:	00013403          	ld	s0,0(sp)
    80005534:	01010113          	addi	sp,sp,16
    80005538:	00008067          	ret
    8000553c:	00001517          	auipc	a0,0x1
    80005540:	e2450513          	addi	a0,a0,-476 # 80006360 <digits+0x48>
    80005544:	fffff097          	auipc	ra,0xfffff
    80005548:	018080e7          	jalr	24(ra) # 8000455c <panic>
    8000554c:	00001517          	auipc	a0,0x1
    80005550:	dfc50513          	addi	a0,a0,-516 # 80006348 <digits+0x30>
    80005554:	fffff097          	auipc	ra,0xfffff
    80005558:	008080e7          	jalr	8(ra) # 8000455c <panic>

000000008000555c <push_on>:
    8000555c:	fe010113          	addi	sp,sp,-32
    80005560:	00813823          	sd	s0,16(sp)
    80005564:	00113c23          	sd	ra,24(sp)
    80005568:	00913423          	sd	s1,8(sp)
    8000556c:	02010413          	addi	s0,sp,32
    80005570:	100024f3          	csrr	s1,sstatus
    80005574:	100027f3          	csrr	a5,sstatus
    80005578:	0027e793          	ori	a5,a5,2
    8000557c:	10079073          	csrw	sstatus,a5
    80005580:	ffffe097          	auipc	ra,0xffffe
    80005584:	618080e7          	jalr	1560(ra) # 80003b98 <mycpu>
    80005588:	07852783          	lw	a5,120(a0)
    8000558c:	02078663          	beqz	a5,800055b8 <push_on+0x5c>
    80005590:	ffffe097          	auipc	ra,0xffffe
    80005594:	608080e7          	jalr	1544(ra) # 80003b98 <mycpu>
    80005598:	07852783          	lw	a5,120(a0)
    8000559c:	01813083          	ld	ra,24(sp)
    800055a0:	01013403          	ld	s0,16(sp)
    800055a4:	0017879b          	addiw	a5,a5,1
    800055a8:	06f52c23          	sw	a5,120(a0)
    800055ac:	00813483          	ld	s1,8(sp)
    800055b0:	02010113          	addi	sp,sp,32
    800055b4:	00008067          	ret
    800055b8:	0014d493          	srli	s1,s1,0x1
    800055bc:	ffffe097          	auipc	ra,0xffffe
    800055c0:	5dc080e7          	jalr	1500(ra) # 80003b98 <mycpu>
    800055c4:	0014f493          	andi	s1,s1,1
    800055c8:	06952e23          	sw	s1,124(a0)
    800055cc:	fc5ff06f          	j	80005590 <push_on+0x34>

00000000800055d0 <pop_on>:
    800055d0:	ff010113          	addi	sp,sp,-16
    800055d4:	00813023          	sd	s0,0(sp)
    800055d8:	00113423          	sd	ra,8(sp)
    800055dc:	01010413          	addi	s0,sp,16
    800055e0:	ffffe097          	auipc	ra,0xffffe
    800055e4:	5b8080e7          	jalr	1464(ra) # 80003b98 <mycpu>
    800055e8:	100027f3          	csrr	a5,sstatus
    800055ec:	0027f793          	andi	a5,a5,2
    800055f0:	04078463          	beqz	a5,80005638 <pop_on+0x68>
    800055f4:	07852783          	lw	a5,120(a0)
    800055f8:	02f05863          	blez	a5,80005628 <pop_on+0x58>
    800055fc:	fff7879b          	addiw	a5,a5,-1
    80005600:	06f52c23          	sw	a5,120(a0)
    80005604:	07853783          	ld	a5,120(a0)
    80005608:	00079863          	bnez	a5,80005618 <pop_on+0x48>
    8000560c:	100027f3          	csrr	a5,sstatus
    80005610:	ffd7f793          	andi	a5,a5,-3
    80005614:	10079073          	csrw	sstatus,a5
    80005618:	00813083          	ld	ra,8(sp)
    8000561c:	00013403          	ld	s0,0(sp)
    80005620:	01010113          	addi	sp,sp,16
    80005624:	00008067          	ret
    80005628:	00001517          	auipc	a0,0x1
    8000562c:	d6050513          	addi	a0,a0,-672 # 80006388 <digits+0x70>
    80005630:	fffff097          	auipc	ra,0xfffff
    80005634:	f2c080e7          	jalr	-212(ra) # 8000455c <panic>
    80005638:	00001517          	auipc	a0,0x1
    8000563c:	d3050513          	addi	a0,a0,-720 # 80006368 <digits+0x50>
    80005640:	fffff097          	auipc	ra,0xfffff
    80005644:	f1c080e7          	jalr	-228(ra) # 8000455c <panic>

0000000080005648 <__memset>:
    80005648:	ff010113          	addi	sp,sp,-16
    8000564c:	00813423          	sd	s0,8(sp)
    80005650:	01010413          	addi	s0,sp,16
    80005654:	1a060e63          	beqz	a2,80005810 <__memset+0x1c8>
    80005658:	40a007b3          	neg	a5,a0
    8000565c:	0077f793          	andi	a5,a5,7
    80005660:	00778693          	addi	a3,a5,7
    80005664:	00b00813          	li	a6,11
    80005668:	0ff5f593          	andi	a1,a1,255
    8000566c:	fff6071b          	addiw	a4,a2,-1
    80005670:	1b06e663          	bltu	a3,a6,8000581c <__memset+0x1d4>
    80005674:	1cd76463          	bltu	a4,a3,8000583c <__memset+0x1f4>
    80005678:	1a078e63          	beqz	a5,80005834 <__memset+0x1ec>
    8000567c:	00b50023          	sb	a1,0(a0)
    80005680:	00100713          	li	a4,1
    80005684:	1ae78463          	beq	a5,a4,8000582c <__memset+0x1e4>
    80005688:	00b500a3          	sb	a1,1(a0)
    8000568c:	00200713          	li	a4,2
    80005690:	1ae78a63          	beq	a5,a4,80005844 <__memset+0x1fc>
    80005694:	00b50123          	sb	a1,2(a0)
    80005698:	00300713          	li	a4,3
    8000569c:	18e78463          	beq	a5,a4,80005824 <__memset+0x1dc>
    800056a0:	00b501a3          	sb	a1,3(a0)
    800056a4:	00400713          	li	a4,4
    800056a8:	1ae78263          	beq	a5,a4,8000584c <__memset+0x204>
    800056ac:	00b50223          	sb	a1,4(a0)
    800056b0:	00500713          	li	a4,5
    800056b4:	1ae78063          	beq	a5,a4,80005854 <__memset+0x20c>
    800056b8:	00b502a3          	sb	a1,5(a0)
    800056bc:	00700713          	li	a4,7
    800056c0:	18e79e63          	bne	a5,a4,8000585c <__memset+0x214>
    800056c4:	00b50323          	sb	a1,6(a0)
    800056c8:	00700e93          	li	t4,7
    800056cc:	00859713          	slli	a4,a1,0x8
    800056d0:	00e5e733          	or	a4,a1,a4
    800056d4:	01059e13          	slli	t3,a1,0x10
    800056d8:	01c76e33          	or	t3,a4,t3
    800056dc:	01859313          	slli	t1,a1,0x18
    800056e0:	006e6333          	or	t1,t3,t1
    800056e4:	02059893          	slli	a7,a1,0x20
    800056e8:	40f60e3b          	subw	t3,a2,a5
    800056ec:	011368b3          	or	a7,t1,a7
    800056f0:	02859813          	slli	a6,a1,0x28
    800056f4:	0108e833          	or	a6,a7,a6
    800056f8:	03059693          	slli	a3,a1,0x30
    800056fc:	003e589b          	srliw	a7,t3,0x3
    80005700:	00d866b3          	or	a3,a6,a3
    80005704:	03859713          	slli	a4,a1,0x38
    80005708:	00389813          	slli	a6,a7,0x3
    8000570c:	00f507b3          	add	a5,a0,a5
    80005710:	00e6e733          	or	a4,a3,a4
    80005714:	000e089b          	sext.w	a7,t3
    80005718:	00f806b3          	add	a3,a6,a5
    8000571c:	00e7b023          	sd	a4,0(a5)
    80005720:	00878793          	addi	a5,a5,8
    80005724:	fed79ce3          	bne	a5,a3,8000571c <__memset+0xd4>
    80005728:	ff8e7793          	andi	a5,t3,-8
    8000572c:	0007871b          	sext.w	a4,a5
    80005730:	01d787bb          	addw	a5,a5,t4
    80005734:	0ce88e63          	beq	a7,a4,80005810 <__memset+0x1c8>
    80005738:	00f50733          	add	a4,a0,a5
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	0017871b          	addiw	a4,a5,1
    80005744:	0cc77663          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	0027871b          	addiw	a4,a5,2
    80005754:	0ac77e63          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	0037871b          	addiw	a4,a5,3
    80005764:	0ac77663          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	0047871b          	addiw	a4,a5,4
    80005774:	08c77e63          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    80005778:	00e50733          	add	a4,a0,a4
    8000577c:	00b70023          	sb	a1,0(a4)
    80005780:	0057871b          	addiw	a4,a5,5
    80005784:	08c77663          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    80005788:	00e50733          	add	a4,a0,a4
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	0067871b          	addiw	a4,a5,6
    80005794:	06c77e63          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    80005798:	00e50733          	add	a4,a0,a4
    8000579c:	00b70023          	sb	a1,0(a4)
    800057a0:	0077871b          	addiw	a4,a5,7
    800057a4:	06c77663          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    800057a8:	00e50733          	add	a4,a0,a4
    800057ac:	00b70023          	sb	a1,0(a4)
    800057b0:	0087871b          	addiw	a4,a5,8
    800057b4:	04c77e63          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    800057b8:	00e50733          	add	a4,a0,a4
    800057bc:	00b70023          	sb	a1,0(a4)
    800057c0:	0097871b          	addiw	a4,a5,9
    800057c4:	04c77663          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    800057c8:	00e50733          	add	a4,a0,a4
    800057cc:	00b70023          	sb	a1,0(a4)
    800057d0:	00a7871b          	addiw	a4,a5,10
    800057d4:	02c77e63          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    800057d8:	00e50733          	add	a4,a0,a4
    800057dc:	00b70023          	sb	a1,0(a4)
    800057e0:	00b7871b          	addiw	a4,a5,11
    800057e4:	02c77663          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    800057e8:	00e50733          	add	a4,a0,a4
    800057ec:	00b70023          	sb	a1,0(a4)
    800057f0:	00c7871b          	addiw	a4,a5,12
    800057f4:	00c77e63          	bgeu	a4,a2,80005810 <__memset+0x1c8>
    800057f8:	00e50733          	add	a4,a0,a4
    800057fc:	00b70023          	sb	a1,0(a4)
    80005800:	00d7879b          	addiw	a5,a5,13
    80005804:	00c7f663          	bgeu	a5,a2,80005810 <__memset+0x1c8>
    80005808:	00f507b3          	add	a5,a0,a5
    8000580c:	00b78023          	sb	a1,0(a5)
    80005810:	00813403          	ld	s0,8(sp)
    80005814:	01010113          	addi	sp,sp,16
    80005818:	00008067          	ret
    8000581c:	00b00693          	li	a3,11
    80005820:	e55ff06f          	j	80005674 <__memset+0x2c>
    80005824:	00300e93          	li	t4,3
    80005828:	ea5ff06f          	j	800056cc <__memset+0x84>
    8000582c:	00100e93          	li	t4,1
    80005830:	e9dff06f          	j	800056cc <__memset+0x84>
    80005834:	00000e93          	li	t4,0
    80005838:	e95ff06f          	j	800056cc <__memset+0x84>
    8000583c:	00000793          	li	a5,0
    80005840:	ef9ff06f          	j	80005738 <__memset+0xf0>
    80005844:	00200e93          	li	t4,2
    80005848:	e85ff06f          	j	800056cc <__memset+0x84>
    8000584c:	00400e93          	li	t4,4
    80005850:	e7dff06f          	j	800056cc <__memset+0x84>
    80005854:	00500e93          	li	t4,5
    80005858:	e75ff06f          	j	800056cc <__memset+0x84>
    8000585c:	00600e93          	li	t4,6
    80005860:	e6dff06f          	j	800056cc <__memset+0x84>

0000000080005864 <__memmove>:
    80005864:	ff010113          	addi	sp,sp,-16
    80005868:	00813423          	sd	s0,8(sp)
    8000586c:	01010413          	addi	s0,sp,16
    80005870:	0e060863          	beqz	a2,80005960 <__memmove+0xfc>
    80005874:	fff6069b          	addiw	a3,a2,-1
    80005878:	0006881b          	sext.w	a6,a3
    8000587c:	0ea5e863          	bltu	a1,a0,8000596c <__memmove+0x108>
    80005880:	00758713          	addi	a4,a1,7
    80005884:	00a5e7b3          	or	a5,a1,a0
    80005888:	40a70733          	sub	a4,a4,a0
    8000588c:	0077f793          	andi	a5,a5,7
    80005890:	00f73713          	sltiu	a4,a4,15
    80005894:	00174713          	xori	a4,a4,1
    80005898:	0017b793          	seqz	a5,a5
    8000589c:	00e7f7b3          	and	a5,a5,a4
    800058a0:	10078863          	beqz	a5,800059b0 <__memmove+0x14c>
    800058a4:	00900793          	li	a5,9
    800058a8:	1107f463          	bgeu	a5,a6,800059b0 <__memmove+0x14c>
    800058ac:	0036581b          	srliw	a6,a2,0x3
    800058b0:	fff8081b          	addiw	a6,a6,-1
    800058b4:	02081813          	slli	a6,a6,0x20
    800058b8:	01d85893          	srli	a7,a6,0x1d
    800058bc:	00858813          	addi	a6,a1,8
    800058c0:	00058793          	mv	a5,a1
    800058c4:	00050713          	mv	a4,a0
    800058c8:	01088833          	add	a6,a7,a6
    800058cc:	0007b883          	ld	a7,0(a5)
    800058d0:	00878793          	addi	a5,a5,8
    800058d4:	00870713          	addi	a4,a4,8
    800058d8:	ff173c23          	sd	a7,-8(a4)
    800058dc:	ff0798e3          	bne	a5,a6,800058cc <__memmove+0x68>
    800058e0:	ff867713          	andi	a4,a2,-8
    800058e4:	02071793          	slli	a5,a4,0x20
    800058e8:	0207d793          	srli	a5,a5,0x20
    800058ec:	00f585b3          	add	a1,a1,a5
    800058f0:	40e686bb          	subw	a3,a3,a4
    800058f4:	00f507b3          	add	a5,a0,a5
    800058f8:	06e60463          	beq	a2,a4,80005960 <__memmove+0xfc>
    800058fc:	0005c703          	lbu	a4,0(a1)
    80005900:	00e78023          	sb	a4,0(a5)
    80005904:	04068e63          	beqz	a3,80005960 <__memmove+0xfc>
    80005908:	0015c603          	lbu	a2,1(a1)
    8000590c:	00100713          	li	a4,1
    80005910:	00c780a3          	sb	a2,1(a5)
    80005914:	04e68663          	beq	a3,a4,80005960 <__memmove+0xfc>
    80005918:	0025c603          	lbu	a2,2(a1)
    8000591c:	00200713          	li	a4,2
    80005920:	00c78123          	sb	a2,2(a5)
    80005924:	02e68e63          	beq	a3,a4,80005960 <__memmove+0xfc>
    80005928:	0035c603          	lbu	a2,3(a1)
    8000592c:	00300713          	li	a4,3
    80005930:	00c781a3          	sb	a2,3(a5)
    80005934:	02e68663          	beq	a3,a4,80005960 <__memmove+0xfc>
    80005938:	0045c603          	lbu	a2,4(a1)
    8000593c:	00400713          	li	a4,4
    80005940:	00c78223          	sb	a2,4(a5)
    80005944:	00e68e63          	beq	a3,a4,80005960 <__memmove+0xfc>
    80005948:	0055c603          	lbu	a2,5(a1)
    8000594c:	00500713          	li	a4,5
    80005950:	00c782a3          	sb	a2,5(a5)
    80005954:	00e68663          	beq	a3,a4,80005960 <__memmove+0xfc>
    80005958:	0065c703          	lbu	a4,6(a1)
    8000595c:	00e78323          	sb	a4,6(a5)
    80005960:	00813403          	ld	s0,8(sp)
    80005964:	01010113          	addi	sp,sp,16
    80005968:	00008067          	ret
    8000596c:	02061713          	slli	a4,a2,0x20
    80005970:	02075713          	srli	a4,a4,0x20
    80005974:	00e587b3          	add	a5,a1,a4
    80005978:	f0f574e3          	bgeu	a0,a5,80005880 <__memmove+0x1c>
    8000597c:	02069613          	slli	a2,a3,0x20
    80005980:	02065613          	srli	a2,a2,0x20
    80005984:	fff64613          	not	a2,a2
    80005988:	00e50733          	add	a4,a0,a4
    8000598c:	00c78633          	add	a2,a5,a2
    80005990:	fff7c683          	lbu	a3,-1(a5)
    80005994:	fff78793          	addi	a5,a5,-1
    80005998:	fff70713          	addi	a4,a4,-1
    8000599c:	00d70023          	sb	a3,0(a4)
    800059a0:	fec798e3          	bne	a5,a2,80005990 <__memmove+0x12c>
    800059a4:	00813403          	ld	s0,8(sp)
    800059a8:	01010113          	addi	sp,sp,16
    800059ac:	00008067          	ret
    800059b0:	02069713          	slli	a4,a3,0x20
    800059b4:	02075713          	srli	a4,a4,0x20
    800059b8:	00170713          	addi	a4,a4,1
    800059bc:	00e50733          	add	a4,a0,a4
    800059c0:	00050793          	mv	a5,a0
    800059c4:	0005c683          	lbu	a3,0(a1)
    800059c8:	00178793          	addi	a5,a5,1
    800059cc:	00158593          	addi	a1,a1,1
    800059d0:	fed78fa3          	sb	a3,-1(a5)
    800059d4:	fee798e3          	bne	a5,a4,800059c4 <__memmove+0x160>
    800059d8:	f89ff06f          	j	80005960 <__memmove+0xfc>
	...
