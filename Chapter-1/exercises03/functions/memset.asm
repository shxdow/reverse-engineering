_memset :
    push ebp
    push edi            ; STOSB changes the value of edi,therefore we have to save it
    mov ecx, [ebp+10h]  ; length
    mov al, [ebp+Ch]    ; byte
    mov edi, [ebp+8]    ; pointer
    rep stosb           ; 
    mov ebp, esp
    pop ebp
    pop edi             ; restore the string pointer
ret
