.global _start
_start:
	Ldr r0,=string
	mov r1,#0
loop:
	ldrb r2,[r0],#1
	cmp r2,#0
	beq Done
	
	add r1,r1,#1
	b loop
	
Done:
	B Done

.data
string: .asciz  "Hello"