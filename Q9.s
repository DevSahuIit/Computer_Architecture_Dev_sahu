.global _start
_start:
	Ldr r0,=arr
	mov r1,#5
	ldr r2,[r0],#4
	subs r1,r1,#1
loop:
	cmp r1,#0
	beq done
	
	
	ldr r3,[r0],#4
	cmp r3,r2
	ble skip
	
	mov r2,r3
	
skip: 
	subs r1,r1,#1
	bne loop
	
	
done: 
	b done

.data
arr: .Word 10,30,5,40,20