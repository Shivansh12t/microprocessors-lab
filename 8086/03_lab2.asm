; CHECKING IF THE NUMBER IS POSITIVE OR NEGATIVE

DATA:
MOV [1000H], 0xAA;
MOV [1001H], 0x10;
MOV [1002H], 0x12;
MOV [1003H], 0xFF;
MOV [1004H], 0x9F;

START:
MOV SI, 1000H;
MOV CL, 05H;
MOV BX, 00H;

STARTLOOP:
MOV AL, [SI];
OR AL, 00H  ; JUST SET THE FLAGS
JNS POSITIVE;
INC BX;
POSITIVE:;
INC SI;
DEC CL;
MOV AL, CL;
JNZ STARTLOOP;

; SOLUTION ; NEEDS SOME UPDATES
MOV AL, BL;
MOV AL, CH;
SUB AL, BL;

END:
HLT;