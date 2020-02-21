@arithmetic program: register = val2 + 9 + val3 - val1

.section .data

@32 bit variables
val1: .word 6	
val2: .word 11	
val3: .word 16	
.section .text
.globl _start

_start:
	ldr r2, =val2	@load val2 memory address into r2
	ldr r2, [r2]    @load val2 value into r2
        ldr r3, =val3   @load val3 memory address into r3
        ldr r3, [r3]    @load val3 value into r3
        ldr r4, =val1   @load val1 memory address into r4
        ldr r4, [r4]    @load val1 value into r4
        
	add r2, r2, #9  @add 9 to r2 and store it in r2
        add r2, r2, r3  @add r3 to r2 and store it in r2
        sub r2, r2, r4  @subtract r4 from r2 and store it in r2
        mov r1, r2      @move r2 into r1

	mov r7, #1	@Program Termination: exit syscall
	svc #0		@Program Termination: wake kernel

.end
