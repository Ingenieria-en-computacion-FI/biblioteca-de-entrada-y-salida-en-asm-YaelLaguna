SECTION .text
global scan_string

;Yael Xanthe Laguna ßEslava

; ---------------------------------
; scan_string
; Entrada:
;   EAX = buffer destino
;   EBX = tamaño máximo
; ---------------------------------

scan_string:

    push ebp
    mov ebp, esp

    mov ecx, eax
    mov edx, ebx

    mov eax, 3
    mov ebx, 0
    int 0x80

    mov ecx, eax
    add ecx, [ebp+8]
    dec ecx
    mov byte [ecx], 0

    mov esp, ebp
    pop ebp
    ret
