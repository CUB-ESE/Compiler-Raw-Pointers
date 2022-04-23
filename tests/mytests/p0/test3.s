.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $32, %esp
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, -8(%ebp)
    movl $2, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    movl %eax, %ebx
    movl -8(%ebp), %eax
    movl %eax, -4(%ebp)
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
    jmp endif0
else0:
    pushl -4(%ebp)
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
    movl -4(%ebp), %ecx
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
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif1
else1:
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
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
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, -8(%ebp)
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    movl %eax, %ebx
    movl -8(%ebp), %eax
    movl %eax, -12(%ebp)
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
    movl -12(%ebp), %eax
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
    pushl -12(%ebp)
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
    movl -12(%ebp), %ecx
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
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif3
else3:
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
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
    movl -4(%ebp), %eax
    movl %eax, %ebx
    movl -8(%ebp), %eax
    movl %eax, -8(%ebp)
    pushl -8(%ebp)
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -8(%ebp)
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
    jne else4
    movl -8(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    cmp %eax, %ecx
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif4
else4:
    pushl -8(%ebp)
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
    jne else5
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -8(%ebp), %ecx
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
    call not_equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif5
else5:
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
endif5:
    movl %eax, %eax
endif4:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    movl -4(%ebp), %eax
    movl %eax, %ebx
    movl -4(%ebp), %eax
    movl %eax, -4(%ebp)
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
    jne else6
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
    jmp endif6
else6:
    pushl -4(%ebp)
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
    jne else7
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif7
else7:
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
endif7:
    movl %eax, %eax
endif6:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    movl %eax, %ebx
    movl -4(%ebp), %eax
    movl %eax, -8(%ebp)
    pushl -8(%ebp)
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl -8(%ebp)
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
    jne else8
    movl -8(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    cmp %eax, %ecx
    movl $0, %eax
    sete %al
    not %eax
    and $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif8
else8:
    pushl -8(%ebp)
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
    jne else9
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -8(%ebp), %ecx
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
    call not_equal
    addl $8, %esp
    movl %eax, %eax
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
    movl $1, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
endif9:
    movl %eax, %eax
endif8:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ebx
    movl -4(%ebp), %eax
    movl %eax, -4(%ebp)
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
    jne else10
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
    jmp endif10
else10:
    pushl -4(%ebp)
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
    jne else11
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
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
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif11
else11:
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %eax
endif11:
    movl %eax, %eax
endif10:
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    addl $32, %esp
    movl $0, %eax
    leave
    ret
