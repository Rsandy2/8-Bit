@Arithmetic3 program
.section .data
	val1: .byte -60 @unsigned 8-bit integer (possible typo)
	val2: .byte 11  @unsigned 8-bit integer
	val3: .byte 16  @signed 8-bit integer

.section .text
.global _start
_start:

	@Register = val2 + 3 + val3 - val1
	ldr r0, =val2		@load val2 memory address onto r0
	ldrb r0, [r0]   	@load unsigned val2 byte onto r0
	add r0, r0, #3  	@add 3 to r0
	ldr r1, =val3		@load val3 memory address onto r1
	ldrsb r1, [r1]		@load signed val3 byte onto r1
	add r0, r0, r1		@add r1 to r0 and store the result into r0
	ldr r2, =val1		@load val1 memory address onto r2
	ldrsb r2, [r2]		@load signed val1 byte onto r1 
	sub r0, r0, r2		@subtract val1 from r0, and store the result in r0

	mov r7, #1	@Program Termination: exit syscall
	svc #0		@program Termination: wake kernal
.end
