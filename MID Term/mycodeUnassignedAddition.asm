.MODEL SMALL
.STACK 100H
.DATA
NEWLINE DB 0AH,0DH,'$'
SUMMSG DB "THE SUM OF $ "
ANDMSG DB " AND $ " 
ISMSG DB " IS $"

A DB ?
B DB ?

.CODE   
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    MOV DL,'?'
    INT 21H  
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    MOV A,BL    ;***
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    MOV B,CL    ;***
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H  
    
    MOV AH,9
    LEA DX,SUMMSG
    INT 21H
    
    ADD BL,CL
    SUB BL,30H
    
    MOV AH,2
    MOV DL,A
    INT 21H
    
    MOV AH,9
    LEA DX,ANDMSG
    INT 21H
    
    MOV AH,2
    MOV DL,B
    INT 21H
    
    MOV AH,9
    LEA DX,ISMSG
    INT 21H
    
    MOV AH,2
    MOV DL,Bl
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    
    

