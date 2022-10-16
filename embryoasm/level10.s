.global _start

_start:
.intel_syntax noprefix

mov rdi,0x404000
mov rax,[rdi]
mov rdx,[rdi]
add rdx,0x1337
mov [rdi],rdx	