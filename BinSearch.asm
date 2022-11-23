.model small
.data
    array db 01h,02h,03h,05h,0ah,0eh,10h,18h,33h,0ffh
.code
.startup
start:
    mov al,18h
    mov dl,00h
    mov dh,09h
    mov bx,0000h
    mov ah,01h

    bsearch:
        mov bl,dl
        add bl,dh
        shr bx,1
        .if array[bx]==al
            mov ah,00h
            jmp stop
        .elseif al>array[bx]
            mov dl,bl
            add dl,01h
        .else
            mov dh,bl
            sub dh,01h
        .endif
        cmp dl,dh
        jle bsearch
    stop:
        .if ah==01h
            mov bx,0ffffh
        .endif
.exit
end
