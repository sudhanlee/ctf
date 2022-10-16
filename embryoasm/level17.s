.global _start

_start:
.intel_syntax noprefix

jmp relative
.rept 0x51
     nop
.endr

relative:
    mov rdi,[rsp]
    mov r12,0x403000
    jmp r12

// flag: pwn.college{Yh0RiLRT2MUuzfX64hx8nyXOrGi.QXwEjMsUzN5YzW}
