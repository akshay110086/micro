.model small

.data 
MESSAGE1 DB "Enter any binary number: $"
MESSAGE2 DB 10, 13, "ASCII char is $"
.code
.startup

mov ah, 09h
mov dx, offset MESSAGE1
int 21h

mov bl, 0

mov cl, 8
loopOver:
mov ah, 01h
int 21h
sub al, 48
shl bl, 1
add bl, al
; jc printOne
; mov dl, 48
; jmp justPrint
; printOne:
; mov dl, 49
; justPrint:
; int 21h
loop loopOver


; mov ah, 01h
; int 21h
; mov bl, al

mov ah, 09h
mov dx, offset MESSAGE2
int 21h

mov ah, 02h
mov dl, bl
int 21h

mov ah, 4ch
int 21h

end
.exit

