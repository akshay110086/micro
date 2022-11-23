.model small
.data
     data1 dw 0000h
.code
start:
    ;8-bit BCD subtraction
    mov dl,68h
    mov bl,33h
    sub dl,bl
    mov al,dl
    das
    mov cl,al

    ;16-bit BCD subtraction
    mov dx,5678h
    mov bx,3333h
    sub dl,bl
    mov al,dl
    das
    mov cl,al
    sbb dh,bh
    mov al,dh
    das
    mov ch,al

    ;32-bit BCD substraction (51118678-33333333)
    mov dx,8678h 
    mov bx,3333h
    sub dl,bl
    mov al,dl
    das
    mov cl,al
    sbb dh,bh
    mov al,dh
    das
    mov ch,al
    mov bx,OFFSET data1
    mov [bx],cx
    mov dx,5111h
    mov bx,3333h
    sbb dl,bl
    mov al,dl
    das
    mov cl,al
    sbb dh,bh
    mov al,dh
    das
    mov ch,al
    mov bx,OFFSET data1
    mov dx,[bx] 
end
