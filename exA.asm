global _start

section .text

_start:
    mov EAX, 50  ; set EAX to 50
    mov ECX, 0   ; set ECX to 0

loop:
    add ECX, 1
    cmp ECX, EAX    
    jl loop

    mov EAX, 1
    mov EBX, ECX
    int 0x80
    

