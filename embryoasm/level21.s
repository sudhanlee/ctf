.global _start

_start:
.intel_syntax noprefix

cmp rdi, 0
je end

loop:
    mov r10, [rdi]
    cmp r10, 0
    je end
    inc rax
    inc rdi
    jmp loop
    
end:
    nop

// flag: pwn.college{QFe1Ywj_50pN2YxJnU0le0OYuJG.QX0EjMsUzN5YzW}
