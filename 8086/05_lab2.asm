; LARGEST NUMBER FROM 16 BIT ARRAY

DATA:
MOV [1000H], 0xAAAA;
MOV [1001H], 0x0F10;
MOV [1002H], 0x1012;
MOV [1003H], 0x18FF;
MOV [1004H], 0xFA10;

START:
MOV SI, 1000H;
MOV BX, 00H  ; STORE THE LARGEST 16 BIT NUMBER
MOV CL, 05H  ; COUNTER

; PRE LOOP ;
MOV BX, [SI];
INC SI;
INC SI; TWO TIMES SINCE EACH 16 BIT ADDR TAKES TWO LOCATIONS IN THE MEMORY
DEC CL;

STARTLOOP:
MOV AX, [SI];
CMP AX, BX;
JC NOTBIG;
JZ NOTBIG;
MOV BX, AX;
NOTBIG:
DEC CL;
INC SI;
INC SI;
MOV AX, CX;
OR AX, 0x0000;
JNZ STARTLOOP;

END:
HLT;