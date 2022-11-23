; program to change content of AX register
; to 0100H and BX register to F200H
.model small
.code
start:
mov ax, 0100H    
mov bx, 0F200H
end
