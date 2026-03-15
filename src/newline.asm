extern print_char
global newline

SECTION .text

newline:

    push ebp
    mov ebp, esp

    ;Cargamos \n en el AL
    mov al, 10
    ; imprimir '\n'
    call print_char 

    mov esp, ebp
    pop ebp
    ret
