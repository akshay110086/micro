.model small
.data
    array db 01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah
.code
.startup
start:
    mov al,04h
    mov cx,000ah

    lnsearch:
        mov bx,000ah
        sub bx,cx
        cmp array[bx],al
        loopnz lnsearch
.exit
end
