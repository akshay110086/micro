.model small
.data
    data1 dw 0000h
.code
start:
    ;8-bit BCD addition
    mov dl,18h
    mov bl,33h
    add dl,bl
    mov al,dl
    daa
    mov cl,al


    ;16-bit BCD addition
    mov dx,5678h
    mov bx,3333h
    add dl,bl
    mov al,dl
    daa
    mov cl,al
    adc dh,bh
    mov al,dh
    daa
    mov ch,al

    ;32-bit BCD addition (12348678+33333333)
    mov dx,8678h
    mov bx,3333h
    add dl,bl
    mov al,dl
    daa
    mov cl,al
    adc dh,bh
    mov al,dh
    daa
    mov ch,al
    mov bx,OFFSET data1
    mov [bx],cx
    mov dx,1234h
    mov bx,3333h
    adc dl,bl
    mov al,dl
    daa
    mov cl,al
    adc dh,bh
    mov al,dh
    daa
    mov ch,al
    mov bx,OFFSET data1
    mov dx,[bx] 
end