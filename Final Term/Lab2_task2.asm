;for lab xm

.model small
.stack 100h
.data
a dw ? 

.code
main proc
    mov ax,@data
    mov ds,ax
     
    mov dx,0
    mov bx,1
    
    mov cx,50
    
    sum:
    add dx,bx
    add bx,4
    mov a,dx
    
    loop sum  
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
