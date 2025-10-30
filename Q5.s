.global _start
_start:
        LDR     R0, =CHAR           @ R0 points to character memory
        LDRB    R1, [R0]            @ Load character

        CMP     R1, #'a'            @ If char < 'a', skip
        BLT     NOT_LOW

        CMP     R1, #'z'            @ If char > 'z', skip
        BGT     NOT_LOW

        SUB     R1, R1, #32         @ Convert to uppercase
        STRB    R1, [R0]            @ Store result back

NOT_LOW:
        B       NOT_LOW             @ Infinite loop (stop program)

        .data                       @ ---- DATA SECTION START ----
CHAR:   .byte 'm'                   @ Example input (change as needed)