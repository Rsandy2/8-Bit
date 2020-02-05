@arithmetical program
.section .data
.section .text
.global _start
_start:
	mov r1, #10	@load 10 to registry 1
	mov r2, #11	@load 11 to registry 2
	mov r3, #7	@load 07 to registry 3
	mov r4, #2	@load 02 to registry 4
	add r5, r1, r2	@add values in  registries 1 and 2 together
			@and store it into registry 5
	mul r6, r3, r4	@multiply values in registries 3 and 4 together
			@and store it into registry 6
	sub r1, r5, r6	@subtract values in registries 5 and 6 and store
			@it into registry 1
.end 
