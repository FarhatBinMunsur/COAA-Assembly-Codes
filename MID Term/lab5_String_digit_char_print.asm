.MODEL SMALL
.STACK 100H
.DATA

NEWLINE DB 0AH,0DH,'$'
a db 48h
b db 65   ;its Decimal , Will be stored as hexa (41h)
c db 4
d db '3'
m1 db "hello$"
m2 db "world",10,13,24h

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    lea dx,m1
    mov ah,9    
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov bh,c
    inc bh
    mov dl,bh
    add dl,30h
    int 21h 
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov dl,'C'
    dec dl
    mov ah,2
    int 21h    
    mov dl," "
    int 21h
    inc b
    mov dl,b
    int 21h
    
    mov ah,9
    lea dx,newline
    int 21h
    lea dx,m2
    int 21h
    
    mov ah,2
    mov dl,d  ;single char output
    int 21h
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    
    
            