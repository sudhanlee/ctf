.global _start

_start:
.intel_syntax noprefix

mov rax,[rsp]
add rax,[rsp+8]
add rax,[rsp+16]
add rax,[rsp+24]
shr rax,2
push rax

// flag : pwn.college{IGJBg1o82ZkB48QMpaxeh_veb6_.QX5AjMsUzN5YzW}