.model small
.data
data1 DW 0000h
.code
.startup
start:
    mov ax,000bh
    .if ax>0009h
        add al,37h
    .else
        add al,30h
    .endif
    mov bx,0000h
    mov dx,0001h
    mov cx,0404h

    .while al!=0
        shr al,1
        dec ch
        jc addone
        jmp noadd

        addone:
            add bx,dx
        noadd:
            shl dx,cl
            .if ch==0
                mov data1,bx
                mov bx,0000h
                mov dx,0001h
                mov ch,4
            .endif
    .endw
    mov cx,data1
.exit
end
