.global _start
_start:
	Mov R0,#5 @ Number of digits 
	Mov R1,#1 @ Result 
	
Loop:
	Cmp R0,#1 @Base Condition
	BLE Done
	
	MUL R1,R1,R0
	Sub R0,R0,#1
	B Loop @ Loop Repetition
	
Done:
	B Done