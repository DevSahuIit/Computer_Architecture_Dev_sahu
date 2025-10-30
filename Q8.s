.global _start
_start:
	Ldr r0,=string
	mov r1,#5
	@ stack pointer
	
	ldr r2,=stack_top
	mov sp,r2
push_loop:
	ldrb r3,[r0],#1
	push {r3}
	
	subs r1,r1,#1
	bne push_loop
	
ldr r0,=string
mov r1,#5
pop_loop:
	pop {r3}
	str r3,[r0],#1
	subs r1,r1,#1
	bne pop_loop


.data
string: .asciz  "Hello"
stack_space: .space 32
stack_top: