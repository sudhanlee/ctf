.global _start

_start:
.intel_syntax noprefix

mov rax,[rdi]
mov rdx,[rdi+8]
add rax,rdx
mov [rsi],rax

// flag: pwn.college{skiWY2AAW3YeSiIiKF8ClumrdYc.QX2AjMsUzN5YzW}
