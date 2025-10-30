.section .data
SRC:    .word 10, 20, 30, 40, 50
DEST:   .space 20
LEN:    .word 5

        .section .text
        .global _start
_start:
        LDR     r0, =SRC
        LDR     r1, =DEST
        LDR     r2, =LEN
        LDR     r2, [r2]

loop:
        CMP     r2, #0
        BEQ     done
        LDR     r3, [r0], #4
        STR     r3, [r1], #4
        SUBS    r2, r2, #1
        BNE     loop

done:
        MOV     r7, #1
        MOV     r0, #0
        SVC     #0