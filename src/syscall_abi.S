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