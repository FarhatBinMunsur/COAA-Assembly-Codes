.MODEL SMALL
.STACK 100H
.DATA
NEWLINE DB 0AH,0DH,"$"
M1 DB "HELLO$",0AH,0DH
M2 DB "WORLD$",10,13
M3 DB "CODING$",10,13
M4 DB "LOOP EXECUTING$",10,13
C1 DB 2

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CL,C1
    
    L2:
    INC CL 
    CMP CL,4
    JLE P1
    JG P3
    
    L3:
    DEC CL
    CMP CL,3    
    JL P3
    JGE P2
    
    L4:
    INC CL
    CMP CL,9
    JE EXIT
    JNE P4
    
    P1:
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    JMP L2
    
    P2:
    MOV AH,9
    LEA DX,M2
    INT 21H
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H 
    
    JMP L3
    
    P3:
    MOV AH,9
    LEA DX,M3
    INT 21H
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    JMP L4
    
    P4:
    MOV AH,9
    LEA DX,M4
    INT 21H
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    JMP L4
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    