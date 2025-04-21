global _start

section .data
    msg db "Hello, world!", 0x0a
    len equ $ - msg

section .text

_start:
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; 1 for STDOUT file descriptor
    mov ecx, msg  ; bytes to write 
    mov edx, len  ; number of bytes to write
    int 0x80      ; perform system call
    mov eax, 1    ; exit the program with code 1
    mov ebx, 0    ; exit status will be 0
    int 0x80      ; perform the exit