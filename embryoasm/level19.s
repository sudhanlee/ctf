.global _start

_start:
.intel_syntax noprefix


cmp rdi,3
jg default

mov rax,rdi
imul rax,8
add rax,rsi
jmp [rax]

default:
    jmp [rsi+32]

// flag: pwn.college{kY2XZ3UTiWGpjGUSp3jAU5kt2RU.QXyEjMsUzN5YzW}
