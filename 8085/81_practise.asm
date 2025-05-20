; Multiply 24 * 65

; data
; storing numbers in B & C
; Computing 16-bit result number in D E
MVI B, 65H;
MVI C, 24H;
MVI D, 00H;
MVI E, 00H;

; code
L1: NOP;
MOV A, E;
ADD B;

JNC P1:
INR D;
P1: NOP;

MOV E, A;
DCR C;
MOV A, C;
JNZ L1;

; stop - ANSWER IS IN D E
HLT;