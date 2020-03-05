@ Arithmetic 3

.section .data
       	val1: .byte -60 @ 8-bit unsigned integer
        val2: .byte 11  @ 8-bit unsigned integer
        val3: .byte 16  @ 8-bit signed integer

.section .text
.globl _start
_start:
        @ The following ARM program does:
        @ Register = val2 + 3 + val3 - val1

       	ldr r1, = val1		@ load the memory address of val1 into r1
       	ldrb r1, [r1]           @ load the value of val1 into r1

        ldr r2, = val2          @ load the memory address of val2 into r2
        ldrb r2, [r2]           @ load the value of val2 into r2

        ldr r3, = val3        	@ load the signed memory address of val3 into r3
        ldrsb r3, [r3]          @ load the signed memory address of val3 into r3

        add r2, r2, #3          @ val2 + 3 /  11+3 = 15

        sub r3, r3, r1          @ val3 - val1 / 16 - -60

        add r4, r2, r3          @ result of val2 + 3 + result of val3 - val1 stored into r4

        mov r7, #1 @ Program Termination: exit syscall
        svc #0 @ Program Termination: wake kernel
.end
