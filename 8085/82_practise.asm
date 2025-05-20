; multiply 24 & -65
JMP START

; data
; again storing numbers in BC & ans in DE
START: NOP;
MVI B, 65H;
MVI C, 24H;
MVI D, 00H;
MVI E, 00H;

; code 

; since 65 is negative, we take a two's complement in the end

; multiply by repeated addition
L1: NOP;
MOV A, E;
ADD B;

JNC P1;
INR D;
P1: NOP;

MOV E, A;
DCR C;
MOV A, C;
JNZ L1;

; take 2's complement of the result;
MOV A, D; HIGHER BYTE
CMA;
MOV D, A;
MOV A, E; LOWER BYTE
CMA;
ORI 00H; CLEARING FLAGS
INR A;

JNC P2;
INR D;
P2: NOP;

MOV E, A;
; done complement

; stop - result in DE
HLT;
