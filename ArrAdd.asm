.model small
.data
array1 db 01h,02h,03h,04h,05h,06h
array2 db 01h,02h,03h,04h,05h,06h
.code
.startup
start:
    mov si,0000h
    addarr:
        lea bx,array2[si]
        mov al,byte ptr [bx]
        lea bx,array1[si]
        add al,byte ptr [bx]
        mov byte ptr [bx],al
        inc si
        cmp si,6
        jnz addarr
.exit
end