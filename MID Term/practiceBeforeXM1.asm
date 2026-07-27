.model small
.stack 100h
.data      
newline db 10,13,24h,'$'
msg db "Enter 2 number: $" 
sum db 'SUM: $'  
subb db 'SUB: $'
a db ?
b db ?

.code
main proc
        
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h   
    
    mov ah,1
    int 21h 
    sub al,30h
    mov a,al  
    
    int 21h
    sub al,30h
    mov b,al   
    
    mov bl,a
    mov bh,b
    
    add bh,bl
    add bh,30h
           
    mov ah,9
    lea dx,newline
    int 21h  
    
    mov ah,9
    lea dx,sum
    int 21h  
    
    mov ah,2
    mov dl,bh
    int 21h 
    
    mov ah,9
    lea dx,newline
    int 21h
     
     
    mov bl,a
    mov bh,b
    sub bl,bh
    add bl,30h
    
    mov ah,9
    lea dx,subb
    int 21h  
    
    mov ah,2
    mov dl,bl
    int 21h
 
    mov ah ,4ch
    int 21h
    
    main endp
end main

