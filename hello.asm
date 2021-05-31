; Max Base
; https://github.com/BaseMax/FirstAssemblyNASM

section .data
	text db "Hello, World!", 10 ; 10 equal to \n

section .text
	global _start

_start:
	mov rax, 1     ; rax is 64bit reg
	mov edi, 1     ; edi is 32bit reg
	mov rsi, text  ; rsi is 64bit reg
	mov rdx, 14    ; rdx is 64bit reg
	syscall
	
	mov rax, 60    ; rax is 64bit reg
	mov rdi, 0     ; rdi is 64bit reg
	syscall

