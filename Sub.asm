.model small
.code
start:
    ; 8-bit subtraction
    mov al,010h
    mov bl,002h
    sub al,bl
    
    ; 16-bit subtraction
    mov ax,0210h
    mov bx,0f02h
    sub bx,ax

    ; 32-bit subtraction
    mov ax,0210h
    mov bx,0f02h
    mov cx,0034h
    mov dx,0503h
    sub ax,cx
    sbb bx,dx
end