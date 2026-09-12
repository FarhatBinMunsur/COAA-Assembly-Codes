.model small
.stack 100h
.data
msg db 0ah,0dh, "Hello, World $"
b db 0ah,0dh,0ah,0dh, "Bye world $"

.code
main proc
    mov ax,@data
    mov ds,ax
       
    mov cx,6
     
    
    hello:
    mov ah,9
    lea dx,msg  ;cx= 6,5,4,3,2
    int 21h 
    ;inc cx
    dec cx
    
    cmp cx,1
    je bye
    jne hello
     
    bye:
    mov ah,9
    lea dx,b
    int 21h       
 
    mov ah,4ch
    int 21h
    
    main endp
end main