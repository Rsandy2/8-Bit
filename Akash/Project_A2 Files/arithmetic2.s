@arithmetic2 program: val2 + 9 + val3 - val1
.section .data
val1: .word 6  @32 bit variable val1 (Value = 6) in memory (word = 2 Bytes)
val2: .word 11 @32 bit variable val2 (Value = 11) in memory (word = 2 Bytes)
val3: .word 16 @32 bit variable val3 (Value = 16) in memory (word = 2 Bytes)
.section .text
.global _start
_start:
	ldr r2, =val2 @load memory address into Register 2
	ldr r2, [r2]   @load val2 into Register 2
	ldr r3, =val3  @load memory address into Register 2
	ldr r3, [r3]   @load val3 into Register 3
	ldr r4, =val1  @load memory address into Register 4
	ldr r4, [r4]   @load val1 into Register 4
	add r2, r2, #9 @add 9 to Register 2 and store it in the same register
	add r2, r2, r3 @add Register 3 value to Register 2 and store it in Register 2
	sub r2, r2, r4 @subtract Register 4 from Register 2 and store it in Register 2
	mov r1, r2     @move final value in Register 2 into Register 1

	mov r7, #1     @Program Termination: exit syscall 
	svc #0 	       @Program Termination: wake kernel
.end
