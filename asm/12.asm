SSTACK SEGMENT STACK
	   DW 32 DUP(?)
SSTACK ENDS

CODE SEGMENT
	 ASSUME CS:CODE,SS:SSTACK
START: PUSH DS
	   XOR AX,AX
	   MOV DS,AX
	   MOV SI,[3000]
	   MOV CX,16
LOOP1: MOV [SI],AL
	   INC SI
	   INC AL
	   LOOP LOOP1
LOOP2: JMP LOOP2

CODES ENDS
    END START