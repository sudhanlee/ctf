.global _start

_start:
.intel_syntax noprefix

push rbp
mov rbp, rsp
sub rsp, 256
mov r13, 0

loop:
    cmp r13, rsi
    je done
    xor rax, rax
    mov al, byte ptr [rdi+r13]
    mov rbx, rbp
    sub rbx, rax
    inc byte ptr [rbx]
    inc r13
    jmp loop

done:
    mov r13, 0
    mov r14, 0
    mov r15, 0

loop2:
    cmp r13, 256
    je done2
    mov rbx, rbp
    sub rbx, r13
    mov rax, 0
    mov al, byte ptr [rbx]
    cmp rax, r14
    jle not_greater
    mov r14, rax
    mov r15, r13

not_greater:
    inc r13
    jmp loop2

done2:
    mov rax, r15
    leave
    ret

// flag: pwn.college{0EtrLifMEsiL7-V83atQrljzCDR.QX2EjMsUzN5YzW}
