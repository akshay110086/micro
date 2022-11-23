.model small
.data
array1 db 0ah,0ah,0ah,0ah,0ah,0ah
array2 db 01h,02h,03h,04h,05h,06h
.code
.startup
start:
    mov si,0000h
    addsub:
        lea bx,array1[si]
        mov al,byte ptr [bx]
        lea bx,array2[si]
        sub al,byte ptr [bx]
        lea bx,array1[si]
        mov byte ptr [bx],al
        inc si
        cmp si,6
        jnz addsub
.exit
end