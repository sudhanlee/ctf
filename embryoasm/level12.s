.global _start

_start:
.intel_syntax noprefix

mov rbx, 0xdeadbeef00001337
mov rax, 0x000000c0ffee0000
mov [rdi], rbx
mov [rsi], rax

//flag: pwn.college{46E5_ypixYyyIyoKtyTfOYR1Qys.QX1AjMsUzN5YzW}
