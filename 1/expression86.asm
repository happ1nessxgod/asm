; MakeAny32.asm
; ������������� � �������������� MASM ��� 32-������ �����������

.386
.model flat, c
.stack 4096

PUBLIC Make_Any

.data
; ����� ����� ���������� ���������� ������, ���� ����������

.code

Make_Any PROC
    ; ������� ��������� �� ���������� cdecl:
    ; b - [ebp + 8]
    ; c - [ebp + 12]
    ; a - [ebp + 16]

    push    ebp             ; ��������� ������� ���������
    mov     ebp, esp        ; ������������� ����� ������� ���������
    push    ebx             ; ��������� ������� EBX
    push    esi             ; ��������� ������� ESI
    push    edi             ; ��������� ������� EDI

    ; ��������� ���������� �� �����
    mov     ecx, [ebp + 8]  ; ecx = b
    mov     edx, [ebp + 12] ; edx = c
    mov     ebx, [ebp + 16] ; ebx = a

    ; ��� 1: temp1 = b * c
    mov     eax, ecx        ; eax = b
    imul    eax, edx        ; eax = b * c
    mov     esi, eax        ; esi = temp1

    ; ��� 2: temp2 = 8 / a (�������� �������)
    mov     eax, 8          ; eax = 8
    cdq                     ; ��������� ���� �� eax � edx:eax
    idiv    ebx             ; eax = 8 / a, edx = 8 % a
    mov     edi, eax        ; edi = temp2

    ; ��� 3: temp3 = temp1 - temp2
    sub     esi, edi        ; esi = temp1 - temp2

    ; ��� 4: result = temp3 / (30 + b)
    mov     eax, esi        ; eax = temp3
    cdq                     ; ��������� ���� �� eax � edx:eax
    mov     ebx, ecx        ; ebx = b
    add     ebx, 30         ; ebx = 30 + b
    idiv    ebx             ; eax = temp3 / (30 + b), edx = temp3 % (30 + b)

    ; ��������������� ��������
    pop     edi             ; ��������������� EDI
    pop     esi             ; ��������������� ESI
    pop     ebx             ; ��������������� EBX
    pop     ebp             ; ��������������� EBP

    ret              ; ������� ���� (3 ��������� * 4 �����)
Make_Any ENDP

END
