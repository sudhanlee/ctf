xor rax, rax
cmp rdi, 0
je end
jmp while_loop
while_loop:
    cmp byte ptr [rdi], 0
    je end
    cmp byte ptr [rdi], 90
    jg incr
    mov r12, rdi
    mov rdx, [rdi]
    mov rdi, rdx
    mov r8, rax
    mov r10, 0x403000
    call r10
    mov rdi, r12
    mov byte ptr [rdi], al
    mov rax, r8
    inc rax
    jmp incr
    jmp while_loop
incr:
    inc rdi
    jmp while_loop
end:
    ret
