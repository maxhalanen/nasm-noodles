global _start

section .data
    addr db "yellow"

section .text

_start:
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov EAX, 4       ; sys_write system call
    mov EBX, 1       ; stdout file descriptor
    mov ECX, addr    ; bytes to write
    mov EDX, 6       ; number of bytes to write
    int  0x80        ; perform syscall

    mov EAX, 1       ; exit the program
    mov EBX, 0       ; exit status zero
    int 0x80        