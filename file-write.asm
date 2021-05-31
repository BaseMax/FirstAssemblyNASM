%include "linux64.inc"
 
section .data
    filename db "myfile.txt",0
    text db "Here's some text."
 
section .text
    global _start

_start:
    mov rax, SYS_OPEN
    mov rdi, filename
    mov rsi, O_CREAT+O_WRONLY
    mov rdx, 0644o
    syscall
    
    push rax
    mov rdi, rax
    mov rax, SYS_WRITE
    mov rsi, text
    mov rdx, 17
    syscall
 
    mov rax, SYS_CLOSE
    pop rdi
    syscall
 
    exit

