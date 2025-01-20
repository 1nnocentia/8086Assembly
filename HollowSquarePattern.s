start:
mov ah, 0x13
mov bh, 0x20
mov bl, 0x2a
mov cx, 9
first:
cmp al, 5
je second
mov byte ds[bp], bl
inc bp
mov byte ds[bp], bh
inc bp
inc al
jmp first
second:
mov al, 0
third:
cmp al, 6
je forth
mov byte ds[bp], bh
inc bp
inc al
jmp third
forth:
mov byte ds[bp], bl
mov al, 0
fifth:
mov bp, 0
int 0x10
inc al
cmp al, 6
je stop
sixth:
mov bp, 8
int 0x10
inc al
cmp al, 5
je fifth
jmp sixth
stop:
hlt