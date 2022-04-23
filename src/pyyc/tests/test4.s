.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
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
    movl %ecx, %ebx
    movl %eax, %edi
    pushl %edi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %esi
    pushl %edi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %esi, %ecx
    or %eax, %ecx
    movl %ecx, -4(%ebp)
    pushl %ebx
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %esi
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %esi, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl -4(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else0
    movl %edi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %ebx, %ecx
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
    pushl %edi
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %esi
    pushl %ebx
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %esi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else1
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %edi
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %ebx
    pushl %ebx
    pushl %edi
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
