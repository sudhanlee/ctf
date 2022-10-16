.global _start

_start:
.intel_syntax noprefix

xor rax,rax
xor rbx,rbx

loop:
    cmp rbx,rsi
    jge end
    add rax,[rdi]
    add rdi,8
    inc rbx
    jmp loop

end:
    div rsi

// flag: pwn.college{cDURtf9MxLA_ak4Kn0mtCyK1KGq.QXzEjMsUzN5YzW}
