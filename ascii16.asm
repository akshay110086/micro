.model small
.code
start:
    mov ax,0245
    xor dx,dx
    mov cx,0100
    div cx
    aam
    add ax,3030h
    xchg ax,dx
    aam
    add ax,3030h
end
