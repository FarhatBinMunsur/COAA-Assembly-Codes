.model small
.stack 100h

.data
input db "Enter Input: $"
output db 0Dh, 0Ah,"Output: $"

.code

mov ax, @data
mov ds, ax

mov ah, 09h
lea dx, input
int 21h 

xor bx,bx
mov cx,16

userinput:
mov ah,01h
int 21h  

cmp al,0dh  ;pressed enter?
je output_

and al,0fh
shl bx,1
or bl,al     

loop userinput
         
         
output_: 
mov ah,09h
lea dx,output
int 21h

mov cx,16

FOR:
ROL BX,1
Jc OUT1

; CF = 1
MOV DL,48
MOV AH,2
INT 21H
JMP NEXT

OUT1:
; CF = 0
MOV DL,49
MOV AH,2
INT 21H

NEXT:
LOOP FOR


exit:
int 21h
