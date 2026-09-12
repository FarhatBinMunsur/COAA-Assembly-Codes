.model small
.stack 100h
.data
msg db 0ah,0dh, "Enter a number:$"
g db 0ah,0dh,"Greater than 5$ "
l db 0ah,0dh,"Less than 5$ "
e db 0ah,0dh,"equal to 5$ "
.code
main proc
    mov ax,@data
    mov ds,ax
       
    mov cl,'5'
    
    input:
    mov ah,9
    lea dx,msg
    int 21h 
    
    mov ah,1
    int 21h
    mov dl,al
    
    cmp dl,cl
    je equal
    jg greater
    jl less
    
    equal:
    mov ah,9
    lea dx,e
    int 21h
    jmp exit
    
    greater:
    mov ah,9
    lea dx,g
    int 21h 
    jmp exit
    
    less:
    mov ah,9
    lea dx,l
    int 21h
     
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main