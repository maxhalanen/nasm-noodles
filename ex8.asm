global _start

section .text

_start:
    call func

    mov eax, 1
    mov ebx, 0
    int 0x80



func:
    push ebp                ; save ebp
    mov ebp, esp            ; overwrite 
    sub esp, 4             ; move the stack pointer

    mov [esp], byte 'h'     
    mov [esp+1], byte 'h'
    mov [esp+2], byte 'h'
    mov [esp+3], byte 'h'

    mov eax, 4              ; sys_write
    mov ebx, 1              ; stdout
    mov ecx, esp            ; mov in the bytes
    mov edx, 4              ; print 2 bytes

    int 0x80                ; perform syscall

    mov esp, ebp
    pop ebp
    ret




