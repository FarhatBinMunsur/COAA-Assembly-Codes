.MODEL SMALL
.STACK 100H
.DATA
NEWLINE DB 0AH,0DH,'$'
In1 DB "Input1:$"
In2 DB "Input2:$"
OUTPUT DB "Output:$"
a DB ? 
b DB ?

     
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,IN1
    INT 21H
    
    MOV AH,1
    INT 21H
    ;SUB AL,30H
    MOV BL,AL 
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
       
    
    MOV AH,9
    LEA DX,IN2
    INT 21H 
    
    MOV AH,1
    INT 21H
    ;SUB AL,30H
    MOV BH,AL   
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
 
    LEA DX,OUTPUT
    INT 21H 
     
    MOV AH,2
    MOV DL,BH
    ;ADD DL,30H
    INT 21H 
    
   
    MOV DL,' '
    INT 21H            
                 
   
    MOV DL,BL
    INT 21H 
              

    MOV AH,4CH
    INT 21H            
    
    
    MAIN ENDP
END MAIN
