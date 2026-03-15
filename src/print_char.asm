SECTION .text
global print_char

; ---------------------------------
; print_char
; Entrada:
;   AL = caracter a imprimir
; ---------------------------------

print_char:

    push ebp
    mov ebp, esp

    ;Se guardan los caracteres en la memoria
    mov [char_buffer], al
    
    mov eax, 4
    mov ebx, 1
    mov ecx, char_buffer
    mov edx, 1
    int 0x80

    mov esp, ebp
    pop ebp
    ret
