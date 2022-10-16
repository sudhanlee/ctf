cmp dword ptr [rdi], 0x7f454c46
jne else_if
jmp if
if:
    xor rax, rax
    add eax, dword ptr [rdi+4]
    add eax, dword ptr [rdi+8]
    add eax, dword ptr [rdi+12]
    nop
else_if:
    cmp dword ptr [rdi], 0x00005A4D
    jne else
    mov eax, dword ptr [rdi+4]
    sub eax, dword ptr [rdi+8]
    sub eax, dword ptr [rdi+12]
    nop
else:
    mov rax, 1
    mul dword ptr [rdi+4]
    mul dword ptr [rdi+8]
    mul dword ptr [rdi+12]
    jmp exit
    nop
