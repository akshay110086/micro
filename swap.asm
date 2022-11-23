; to swap the 1st and 4th element of an array 
; containing 5 word sized elements
.model small
.data
     data1 dw 4141h, 4242h, 4343h, 4444h, 4545h
.code
.startup
        mov bx, offset data1
        mov cx, [bx]
        mov dx, [bx+3*2]
        mov [bx], dx
        mov [bx+3*2], cx
.exit
end