.global _start
_start:
	Ldr r0,=arr
	mov r1, #5
	@ Stack pointer
	ldr r2,=stack_top
	mov sp,r2
	
loop:
	ldr r3,[r0],#4
	add r3,r3,#1
	str r3,[r0],#4
	
	Sub R1,R1,#1
	cmp R1,#0
	Bne loop @ Loop Repetition
	




.data
arr: .WORD 10,20,30,40,50
stack_space: .space 20
stack_top: