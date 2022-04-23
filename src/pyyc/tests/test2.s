.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    movl $2, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    call create_list
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $3, %eax
    movl %eax, %ebx
    movl $0, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $1, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ecx
    pushl %ebx
    call set_subscript
    addl $12, %esp
    movl %ebx, %eax
    or $3, %eax
    movl %eax, %ebx
    movl $1, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl $2, %ecx
    shl $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    or $0, %ecx
    movl %ecx, %ecx
    pushl %ecx
    pushl %eax
    pushl %ebx
    call set_subscript
    addl $12, %esp
    movl %ebx, %ebx
    movl $1, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    call create_list
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $3, %eax
    movl %eax, %edi
    movl $0, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $2, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl %ecx
    pushl %edi
    call set_subscript
    addl $12, %esp
    movl %edi, %edi
    movl $3, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    pushl %eax
    pushl $0
    pushl %edi
    call set_subscript
    addl $12, %esp
    pushl $0
    pushl %edi
    call get_subscript
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_any
    addl $4, %esp
    movl %edi, %edi
    movl %ebx, %esi
    pushl %esi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %esi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, -4(%ebp)
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
    movl -4(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else0
    movl %esi, %eax
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
    pushl %esi
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
    movl %esi, %ecx
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
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    addl $4, %esp
    movl $0, %eax
    leave
    ret
