.global _start
_start:
	Ldr r0,=arr
	mov r1, #5
	@ Stack pointer
	ldr r2,=stack_top
	mov sp,r2
	
push_loop:
	ldr r3,[r0],#4
	push {r3}
	
	Sub R1,R1,#1
	cmp R1,#0
	Bne push_loop @ Loop Repetition
	
ldr r0,=arr
mov r1,#5

pop_loop:
	pop {r3}
	str r3,[r0],#4
	sub r1,r1,#1
	cmp r1,#0
	bne pop_loop

.data
arr: .WORD 10,20,30,40,50
stack_space: .space 20
stack_top: