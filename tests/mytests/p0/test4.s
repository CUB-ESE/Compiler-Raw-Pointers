.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    movl $2, %eax
    movl %eax, %eax
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
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl $1, %ecx
    movl %ecx, %ecx
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
    movl %ebx, %eax
    or $3, %eax
    movl %eax, %ebx
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl $2, %ecx
    movl %ecx, %ecx
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
    movl %ebx, %edi
    movl $2, %eax
    movl %eax, %eax
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
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $1, %eax
    movl %eax, %eax
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
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl $2, %ecx
    movl %ecx, %ecx
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
    movl %ebx, %eax
    movl %eax, %ebx
    movl %edi, -4(%ebp)
    pushl -4(%ebp)
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, %edi
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
    movl %edi, %ecx
    or %eax, %ecx
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
    pushl -4(%ebp)
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
    or %eax, %ecx
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
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif1
else1:
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl %ebx
    call is_bool
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
    jne else2
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    cmp %eax, %ecx
    movl $0, %eax
    sete %al
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif2
else2:
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl $1, %edx
    cmp %ecx, %edx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl $1, %edx
    cmp %ecx, %edx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
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
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif3
else3:
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %edx
    movl $0, %ecx
    cmp %edx, %ecx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl $0, %edx
    cmp %ecx, %edx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
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
    jne else4
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif4
else4:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl $0, %edx
    cmp %ecx, %edx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %edx
    movl $0, %ecx
    cmp %edx, %ecx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
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
    jne else5
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif5
else5:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %edx
    movl $1, %ecx
    cmp %edx, %ecx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %edx
    movl $1, %ecx
    cmp %edx, %ecx
    movl $0, %eax
    sete %al
    movl %eax, %ecx
    movl %eax, %eax
    and %ecx, %eax
    movl %eax, %eax
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
    jne else6
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif6
else6:
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    cmp %eax, %ecx
    movl $0, %eax
    sete %al
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
endif6:
    movl %eax, %eax
endif5:
    movl %eax, %eax
endif4:
    movl %eax, %eax
endif3:
    movl %eax, %eax
endif2:
    movl %eax, %eax
endif1:
    movl %eax, %eax
    jmp endif0
else0:
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    cmp %eax, %ecx
    movl $0, %eax
    sete %al
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
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
