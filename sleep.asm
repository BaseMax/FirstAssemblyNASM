section .data
	delat dq 5, 500000000

section .text
	global _start

_start:
	mov rax, 35
	mov rdi, delat
	mov rsi, 0
	syscall
	
	mov rax, 60 ; exit
	mov rdi, 0
	syscall
