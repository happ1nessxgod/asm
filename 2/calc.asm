.386
.model flat, c
.code

; �������� �������
; void calculate(int a, int b, int* x)
calculate PROC
    ; ���������:
    ; [esp + 4] = a
    ; [esp + 8] = b
    ; [esp + 12] = ����� x

    mov eax, [esp + 4] ; ��������� a � eax
    mov ebx, [esp + 8] ; ��������� b � ebx
    mov ecx, [esp + 12] ; ����� x � ecx

    cmp eax, ebx       ; ���������� a � b
    jl less_than       ; ���� a < b
    je equal           ; ���� a == b
    jg greater_than    ; ���� a > b

less_than:
    add eax, 12        ; a + 12
    cdq                ; ��������� ���� ��� �������
    mov ebx, 5         ; 5 � ebx
    idiv ebx           ; eax / 5
    mov [ecx], eax     ; ��������� ��������� � x
    ret

equal:
    mov eax, 210       ; x = 210
    mov [ecx], eax     ; ��������� ��������� � x
    ret

greater_than:
    cdq                ; ��������� ���� ��� �������
    idiv ebx           ; eax / b
    sub eax, 21        ; (a / b) - 21
    mov [ecx], eax     ; ��������� ��������� � x
    ret

calculate ENDP
END
