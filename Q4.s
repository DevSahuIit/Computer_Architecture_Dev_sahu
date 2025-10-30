.global _start
_start:
	Ldr r0,=NUM
	ldr r0,[r0]
	
	mov r1,#0
	mov r2,#32
	
loop:
	tst r0,#1
	addne r1,r1,#1
	
	lsr r0,r0,#1
	subs r2,r2,#1
	cmp r2,#0
	bne loop
	




.data
NUM: .word 50