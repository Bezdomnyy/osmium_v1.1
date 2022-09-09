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

.global mem_free
mem_free:
    addi a7, zero, 0x02
    ecall
    ret