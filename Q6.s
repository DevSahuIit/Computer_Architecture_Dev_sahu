        .global _start
_start:
        LDR     R0, =CHAR           @ R0 → address of character
        LDRB    R1, [R0]            @ Load the character into R1

        @ --- Convert to uppercase if needed ---
        CMP     R1, #'a'
        BLT     CHECK_VOWEL
        CMP     R1, #'z'
        BGT     CHECK_VOWEL
        SUB     R1, R1, #32         @ Convert lowercase → uppercase

CHECK_VOWEL:
        CMP     R1, #'A'
        BEQ     IS_VOWEL
        CMP     R1, #'E'
        BEQ     IS_VOWEL
        CMP     R1, #'I'
        BEQ     IS_VOWEL
        CMP     R1, #'O'
        BEQ     IS_VOWEL
        CMP     R1, #'U'
        BEQ     IS_VOWEL

        @ --- Not a vowel ---
        MOV     R2, #0              @ 0 → consonant
        B       STORE_RESULT

IS_VOWEL:
        MOV     R2, #1              @ 1 → vowel

STORE_RESULT:
        LDR     R3, =RESULT         @ Address to store result
        STR     R2, [R3]            @ Store 1 or 0 in memory

END_LOOP:
        B       END_LOOP            @ Infinite loop (program stop)

        .data                       @ --- Data section ---
CHAR:   .byte 'e'                   @ Input character (change as needed)
RESULT: .word 0                     @ Output: 1=vowel, 0=consonant