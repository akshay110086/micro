; WAP to perform 8 bit, 16 bit and 32 bit 
; addition using 16 bit instruction mode
.model small
.code
start:
; 8-bit addition
MOV AX,05H
MOV BX,10H
ADD AX,BX

; 16-bit addition
MOV AX, 0123H
MOV BX, 2104H
ADD AX, BX

; 32-bit addition
MOV AX, 3552H
MOV BX, 3219H
MOV CX, 1210H
MOV DX, 2300H
ADD AX, CX
ADC BX, DX
end