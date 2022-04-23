.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $8, %esp
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %edx
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ecx
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ebx
    cmp %eax, %ebx
    jne else0
    movl %edx, %edi
    movl %edx, %esi
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
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else1
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
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif1
else1:
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
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else2
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
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif2
else2:
    pushl $1
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif2:
    movl %eax, %eax
endif1:
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif0
else0:
    movl %ecx, %edi
    movl %ecx, %esi
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
    movl %ecx, %ebx
    pushl %edi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, -4(%ebp)
    pushl %edi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %ebx, %ecx
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
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else3
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
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif3
else3:
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
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else4
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
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif4
else4:
    pushl $1
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif4:
    movl %eax, %eax
endif3:
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif0:
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    addl $8, %esp
    movl $0, %eax
    leave
    ret
