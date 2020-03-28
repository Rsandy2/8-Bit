@Control Structure 1 program 
@This program compute the following if statement construct: 
@ int x;
@ if(x <= 3)
@ 	x = x - 1;
@ else
@	x = x - 2;

.section .data
	x: .word 1	@ 32-bit signed integer

.section .text
.globl _start
_start:
	ldr r1, =x	@ load the memory address of x into r1
	ldr r1, [r1]	@ load the value x into r1 
	cmp r1, #3	@ 
	bgt elseCase	@ branch (jump) if false (x <= 1) to elseCase
	sub r1, r1, #1	@ subtract 1 from x and store it into r1
	bal endCase 

	elseCase:
		sub r1, r1, #2	@ subtract 2 from x and store it into r1
	endCase:
		mov r7, #1	@ Program Termination: exit syscall
		svc #0		@ Program Termination: wake kernel
.end 

