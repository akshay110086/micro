.model small
.code
start:
    ;8-bit division
    mov ax,0048h
    mov bl,09h
    div bl

    ;16-bit division
    ; mov dx,0034h
    mov ax,0a123h
    mov bx,0200h
    div bx
end