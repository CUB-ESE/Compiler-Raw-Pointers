.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $16, %esp
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ecx
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl $3, %edx
    movl %edx, %edx
    shl $2, %edx
    movl %edx, %edx
    movl %edx, %edx
    or $0, %edx
    movl %edx, %edx
    movl %edx, -4(%ebp)
    movl %ecx, %ebx
    movl %eax, -12(%ebp)
    pushl %ebx
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, %esi
    pushl -12(%ebp)
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -12(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %esi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ecx
    pushl %ecx
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ecx
    movl $0, %eax
    cmp %ecx, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else0
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -12(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    addl %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif0
else0:
    pushl %ebx
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -12(%ebp)
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %edi
    pushl %edi
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl $0, %eax
    cmp %edi, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %edi
    movl $1, %eax
    cmp %edi, %eax
    jne else1
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %ebx
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -12(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %edi
    pushl %edi
    pushl %ebx
    call add
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif1
else1:
    pushl -8(%ebp)
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif1:
    movl %eax, %eax
endif0:
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %ebx
    movl -4(%ebp), %eax
    movl %eax, -4(%ebp)
    pushl %ebx
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, %edi
    pushl -4(%ebp)
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %esi
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %esi, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %edi
    pushl %edi
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl $0, %eax
    cmp %edi, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %edi
    movl $1, %eax
    cmp %edi, %eax
    jne else2
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    addl %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif2
else2:
    pushl %ebx
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -4(%ebp)
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %edi
    pushl %edi
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl $0, %eax
    cmp %edi, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %edi
    movl $1, %eax
    cmp %edi, %eax
    jne else3
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %ebx
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %edi
    pushl %edi
    pushl %ebx
    call add
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif3
else3:
    pushl -8(%ebp)
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif3:
    movl %eax, %eax
endif2:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    addl $16, %esp
    movl $0, %eax
    leave
    ret
