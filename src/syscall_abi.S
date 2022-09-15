.global mem_alloc
mem_alloc:
    addi a7, zero, 0x01
    ecall
    ret

.global mem_free
mem_free:
    addi a7, zero, 0x02
    ecall
    ret

.global thread_create
thread_create:
    addi a7, zero, 0x11
    ecall
    ret

.global thread_exit
thread_exit:
    addi a7, zero, 0x12
    ecall
    ret

.global thread_dispatch
thread_dispatch:
    addi a7, zero, 0x13
    ecall
    ret

.global thread_create_deactivated
thread_create_deactivated:
    addi a7, zero, 0x14
    ecall
    ret

.global sem_open
sem_open:
    addi a7, zero, 0x21
    ecall
    ret

.global sem_close
sem_close:
    addi a7, zero, 0x22
    ecall
    ret

.global sem_wait
sem_wait:
    addi a7, zero, 0x23
    ecall
    ret

.global sem_signal
sem_signal:
    addi a7, zero, 0x24
    ecall
    ret

.global time_sleep
time_sleep:
    addi a7, zero, 0x31
    ecall
    ret

.global getc
getc:
    addi a7, zero, 0x41
    ecall
    ret

.global putc
putc:
    addi a7, zero, 0x42
    ecall
    ret