.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $24, %esp
    call create_dict
    addl $0, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $3, %eax
    movl %eax, %ebx
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl $2, %eax
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
    movl %ebx, -4(%ebp)
    movl $3, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
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
    movl %ecx, %esi
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
    movl %ecx, %eax
    movl %esi, %ecx
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
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else0
    pushl %ebx
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl %ebx
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
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
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -4(%ebp)
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else2
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
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
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
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
    movl -4(%ebp), %ecx
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
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
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    movl %ebx, %ecx
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
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
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    movl $3, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    movl $2, %eax
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
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    or $0, %eax
    movl %eax, -4(%ebp)
    pushl -4(%ebp)
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
    movl %eax, %edi
    movl %edi, %eax
    or $0, %eax
    movl %eax, %edi
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    or $0, %eax
    movl %eax, -4(%ebp)
    pushl -4(%ebp)
    pushl %edi
    pushl %esi
    call set_subscript
    addl $12, %esp
    movl %esi, -4(%ebp)
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
    movl %ecx, %esi
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
    movl %ecx, %eax
    movl %esi, %ecx
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
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else7
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else8
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif8
else8:
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else9
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
    jmp endif9
else9:
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else10
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif10
else10:
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else11
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif11
else11:
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else12
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif12
else12:
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else13
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif13
else13:
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
endif13:
    movl %eax, %eax
endif12:
    movl %eax, %eax
endif11:
    movl %eax, %eax
endif10:
    movl %eax, %eax
endif9:
    movl %eax, %eax
endif8:
    movl %eax, %eax
    jmp endif7
else7:
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
endif7:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
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
    or %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else14
    pushl %ebx
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl %ebx
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else15
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif15
else15:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -4(%ebp)
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else16
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    jmp endif16
else16:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else17
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif17
else17:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else18
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif18
else18:
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    movl %ebx, %ecx
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else19
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif19
else19:
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else20
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif20
else20:
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
endif20:
    movl %eax, %eax
endif19:
    movl %eax, %eax
endif18:
    movl %eax, %eax
endif17:
    movl %eax, %eax
endif16:
    movl %eax, %eax
endif15:
    movl %eax, %eax
    jmp endif14
else14:
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
endif14:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    movl $5, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl $5, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
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
    movl %ecx, %esi
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
    movl %ecx, %eax
    movl %esi, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else21
    pushl %ebx
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl %ebx
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else22
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif22
else22:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -4(%ebp)
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else23
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    jmp endif23
else23:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
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
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else24
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif24
else24:
    pushl %ebx
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
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
    movl -4(%ebp), %ecx
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else25
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif25
else25:
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    movl %ebx, %ecx
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
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else26
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif26
else26:
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
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else27
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif27
else27:
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
endif27:
    movl %eax, %eax
endif26:
    movl %eax, %eax
endif25:
    movl %eax, %eax
endif24:
    movl %eax, %eax
endif23:
    movl %eax, %eax
endif22:
    movl %eax, %eax
    jmp endif21
else21:
    movl %ebx, %eax
    shr $2, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
endif21:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    addl $24, %esp
    movl $0, %eax
    leave
    ret
