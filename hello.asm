; Max Base
; https://github.com/BaseMax/FirstAssemblyNASM

section .data
	text db "Hello, World!", 10 ; 10 equal to \n

section .text
	global _start

_start:
	mov rax, 1     ; rax is 64bit reg ; first  arg of syscall
	mov rdi, 1     ; edi is 32bit reg ; second arg of syscall
	mov rsi, text  ; rsi is 64bit reg ; third  arg of syscall
	mov rdx, 14    ; rdx is 64bit reg ; fourd  arg of syscall
	syscall
	
	mov rax, 60    ; rax is 64bit reg ; first  arg of syscall
	mov rdi, 0     ; rdi is 64bit reg ; second arg of syscall
	syscall

