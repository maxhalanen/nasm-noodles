global _start

section .text

_start:
    mov ecx, 101  ; store 101 in ecx
    mov ebx, 42   ; exit status to 42
    mov eax, 1    ; syscall exit 1
    cmp ecx, 100  ; compare ecx to 100
    jl skip       ; 101 > 100 therefore jl is false
    mov ebx, 13   ; set exit status to 13

skip:
    int 0x80
