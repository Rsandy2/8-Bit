@ Control Structure Program

.section .data
x: .word 0 @ 32-bit signed integer
.section .text
.globl _start

_start:
	ldr r1, =x 	@ load the memory address of x into r1
	ldr r1, [r1] 	@ load the value of x into r1

	cmp r1,#3	@ compares value of r1 to 3

	bgt thenpart	@ jump to else case
	sub r1, r1, #1	@ x = x - 1
	bal endofif 	@ jump to end

	thenpart:
		sub r1, r1, #2	@ x = x - 2

	endofif:
		mov r7, #1 	@ Program Termination: exit syscall
		svc #0		@ Program Termination: wake kernel
.end
