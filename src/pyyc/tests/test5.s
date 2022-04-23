.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
    movl $1, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl $2, %ecx
    shl $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    or $0, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    movl $3, %edx
    shl $2, %edx
    movl %edx, %edx
    movl %edx, %edx
    or $0, %edx
    movl %edx, %edx
    movl %edx, %edx
    movl %edx, %esi
    movl %ecx, %edi
    movl %eax, -4(%ebp)
    pushl -4(%ebp)
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, -8(%ebp)
    pushl %edi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %edi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl -8(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else0
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %edi, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    addl %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif0
else0:
    pushl -4(%ebp)
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %edi
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else1
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %ebx
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %edi
    pushl %edi
    pushl %ebx
    call add
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif1
else1:
    pushl $1
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
    pushl %esi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, -4(%ebp)
    pushl %esi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else2
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %esi, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    addl %eax, %ecx
    movl %ecx, %eax
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
    pushl %esi
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
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
    movl %esi, %ecx
    and %eax, %ecx
    movl %ecx, %edi
    pushl %edi
    pushl %ebx
    call add
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif3
else3:
    pushl $1
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
    addl $12, %esp
    movl $0, %eax
    leave
    ret
