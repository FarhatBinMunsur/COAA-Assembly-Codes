.MODEL SMALL
.STACK 100

.CODE
    mov bx, 0
    mov cl, 4
    mov ah, 1
     
    for1:
    int 21h
    cmp al,0dh
    je output
    
    cmp al,41h
    jge letter
    and al,0fh
    jmp shift
    
    letter:
    sub al,37h
    
    
    shift:
    shl bx,cl
    or bl,al
    jmp for1
    
    output:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov cx,4
    mov ah,2
    
    for2:
    mov dl,bh
    shr dl,4
    rol bx,4
    cmp dl,10
    jge outputletter
    
    add dl,48
    int 21h
    jmp exit2
    
    outputletter:
    add dl,55
    int 21h
    
    exit2:
    loop for2
    
    mov ah,4ch
    int 21h
    