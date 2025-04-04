    .globl _main
    .align 2

_main:
    adrp x0, msg@PAGE
    add  x0, x0, msg@PAGEOFF
    bl _puts         // print message

    mov x0, #0       
    bl _exit         // exit

    .section __TEXT,__text
    .align 2

msg:
    .asciz "Hello World"
