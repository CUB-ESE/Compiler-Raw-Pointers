.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    movl $0, %eax
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
    movl %eax, %eax
    movl %eax, %eax
    or $3, %eax
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
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    jmp endif0
else0:
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
endif0:
    pushl %ebx
    call print_any
    addl $4, %esp
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    pushl %ebx
    call create_list
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %esi
    movl %esi, %eax
    or $3, %eax
    movl %eax, %esi
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $0, %eax
    movl %eax, %edi
    pushl %edi
    call create_list
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $3, %eax
    movl %eax, %edi
    pushl %edi
    pushl %ebx
    pushl %esi
    call set_subscript
    addl $12, %esp
    movl %esi, %ebx
    pushl %ebx
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl $0, %eax
    cmp %ebx, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %ebx
    movl $1, %eax
    cmp %ebx, %eax
    jne else1
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    jmp endif1
else1:
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
endif1:
    pushl %ebx
    call print_any
    addl $4, %esp
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    pushl %ebx
    call create_list
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %esi
    movl %esi, %eax
    or $3, %eax
    movl %eax, %esi
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $0, %eax
    movl %eax, %edi
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    pushl %ebx
    pushl %edi
    pushl %esi
    call set_subscript
    addl $12, %esp
    movl %esi, %eax
    or $3, %eax
    movl %eax, %esi
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $0, %eax
    movl %eax, %edi
    pushl %edi
    pushl %ebx
    pushl %esi
    call set_subscript
    addl $12, %esp
    movl %esi, %ebx
    pushl %ebx
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl $0, %eax
    cmp %ebx, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %ebx
    movl $1, %eax
    cmp %ebx, %eax
    jne else2
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    jmp endif2
else2:
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
endif2:
    pushl %ebx
    call print_any
    addl $4, %esp
    call create_dict
    addl $0, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $3, %eax
    movl %eax, %edi
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %esi
    movl %esi, %eax
    or $0, %eax
    movl %eax, %esi
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    pushl %esi
    pushl %ebx
    pushl %edi
    call set_subscript
    addl $12, %esp
    movl %edi, %ebx
    pushl %ebx
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl $0, %eax
    cmp %ebx, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %ebx
    movl $1, %eax
    cmp %ebx, %eax
    jne else3
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    jmp endif3
else3:
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
endif3:
    pushl %ebx
    call print_any
    addl $4, %esp
    call create_dict
    addl $0, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl $0, %eax
    cmp %ebx, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %ebx
    movl $1, %eax
    cmp %ebx, %eax
    jne else4
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    jmp endif4
else4:
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
endif4:
    pushl %ebx
    call print_any
    addl $4, %esp
    call create_dict
    addl $0, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $3, %eax
    movl %eax, %edi
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    pushl %ebx
    call create_list
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %esi
    movl %esi, %eax
    or $3, %eax
    movl %eax, %esi
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    or $0, %eax
    movl %eax, -4(%ebp)
    movl $12, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    pushl %ebx
    pushl -4(%ebp)
    pushl %esi
    call set_subscript
    addl $12, %esp
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    pushl %esi
    pushl %ebx
    pushl %edi
    call set_subscript
    addl $12, %esp
    movl %edi, %ebx
    pushl %ebx
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl $0, %eax
    cmp %ebx, %eax
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %ebx
    movl $1, %eax
    cmp %ebx, %eax
    jne else5
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    jmp endif5
else5:
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
endif5:
    pushl %ebx
    call print_any
    addl $4, %esp
    addl $4, %esp
    movl $0, %eax
    leave
    ret
