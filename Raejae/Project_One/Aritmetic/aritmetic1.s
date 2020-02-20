@aritmetic_program

.section data
.section .text
.globl _start
_start:

	@A : R1
	@B : R2
	@C : R3
	@D : R4
	@A : 10
	@B : 11
	@C : 7
	@D : 2

	mov r1, #10
	mov r2, #11
	mov r3, #7
	mov r4, #2
		@Register's Loaded

	add r5, r1, r2 @Add's Registers (A + B) To R1 interact with R1 & R2

	mul r6, r3, r4

	sub r1, r5, r6

	mov r7,#1     @Program Termination : exit syscall
	svc #0        @Program Termination : wake kernel

.end
