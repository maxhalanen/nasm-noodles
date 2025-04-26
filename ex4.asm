; 2^x function
global _start

section .text

_start:
    mov EBX, 1
    mov ECX, 7 ; 2^7

loop:
    add EBX, EBX  ; EBX += EBX
    dec ECX
    cmp ECX, 0 
    jg loop

    mov EAX, 1 ; syscall exit
    int 0x80




