.model small
.code
start:
    ;8-bit multiplication
    mov al,08h
    mov bl,09h
    mul bl

    ;16-bit multiplication
    mov ax,0c218h
    mov bx,1321h
    mul bx
end