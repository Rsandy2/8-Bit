@arithmetic5 program
.section .data
.section .text
.global _start
_start:
	mov r1, #10 @ moving 10 to Register 1
	mov r2, #11 @ moving integer 11 to Register 2
	mov r3, #7 @ moving integer 7 to Register 3
	mov r4, #2 @ moving integer 2 to Register 4
	add r5, r1, r2 @ adding Registers 1 and Registers 2 and placing them in R5	
	mul r6, r3, r4 @ multiplying Registers 3 and Registers 4 and placing them in r6
	sub r1, r5, r6 @ subtracting Registers 6 and Registers 5 and placing them in Register 1
	mov r7, #1
	svc #0
.end
