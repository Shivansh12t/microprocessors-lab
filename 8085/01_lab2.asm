;Adding Values at 9000H and 9001H and storing it at 9002H
LXI H, 9000H;
MOV A, M;
MOV B, A;
INX H;
MOV A, M;
ADD B;
INX H;
MOV M, A;
HLT;
