.model small
.code
start:
    mov ax,00110001b
    mov cx,8
    .if ax>=41h
        sub ax,37h
    .elseif ax>=30h
        sub ax,30h
    .endif
end