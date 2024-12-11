.code
Make_Any PROC
    ; rcx - b (������ ��������)
    ; rdx - c (������ ��������)
    ; r8  - a (������ ��������)

    ; ��� 1: b * c
    mov rax, rcx           ; rax = b
    imul rax, rdx          ; rax = b * c
    mov r9, rax            ; ��������� ��������� � r9
    mov rax, 0             ; ������� rax ��� ��������� ��������

    ; ��� 2: 8 / a
    mov rax, 8             ; rax = 8
    mov rbx, r8            ; rbx = a (a ��������� � r8)
    xor rdx, rdx           ; ������� rdx (��� ����������� �������)
    div rbx                ; rax = 8 / a, ������� � rdx (�� ������������)

    sub r9, rax            ; r9 = (b * c) - (8 / a)

    ; ��� 4: ��������� ��������� � rax
    mov rax, r9            ; ��������� � rax
    mov r10, rax           ; ��������� ��������� � r10

    add rcx, 31            ; rcx = 31 + b
    sub rcx, 1
    div rcx


    ret
Make_Any ENDP

end
