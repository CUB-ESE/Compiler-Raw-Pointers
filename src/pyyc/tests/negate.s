.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $84, %esp
    call input
    addl $0, %esp
    movl %eax, %eax
    movl %eax, -8(%ebp)
    movl -8(%ebp), %eax
    movl %eax, -12(%ebp)
    movl -12(%ebp), %eax
    movl %eax, -16(%ebp)
    movl -16(%ebp), %ebx
    and $3, %ebx
    movl %ebx, %eax
    pushl $0
    pushl %eax
    call equal
    addl $8, %esp
    movl %eax, %ecx
    movl %ecx, -4(%ebp)
    movl -16(%ebp), %ebx
    and $3, %ebx
    movl %ebx, %ebx
    pushl $4
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %ebx
    movl %ebx, %ebx
    movl -4(%ebp), %eax
    or %ebx, %eax
    movl %eax, %esi
    movl %esi, %esi
    cmp %esi, 1
    jne else0
    movl -16(%ebp), %eax
    movl %eax, %edi
    movl %edi, %eax
    shr $2, %eax
    movl %eax, %edi
    movl %edi, %edi
    movl %edi, %eax
    movl %eax, %eax
    negl %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %edi
    movl %edi, %ecx
    or $0, %ecx
    movl %ecx, %edi
    movl %edi, %edi
    jmp endif0
else0:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %edi
endif0:
    movl %edi, %esi
    movl %esi, -8(%ebp)
    movl -12(%ebp), %esi
    movl %esi, %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %esi, %eax
    and $3, %eax
    movl %eax, %edi
    pushl $4
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %edi
    movl %edi, %eax
    movl %eax, %edi
    movl %ebx, %ebx
    or %edi, %ebx
    movl %ebx, %eax
    movl %eax, -4(%ebp)
    cmp -4(%ebp), 1
    jne else1
    movl %esi, %ecx
    shr $2, %ecx
    movl %ecx, %ebx
    movl %ebx, %eax
    movl %eax, %eax
    negl %eax
    movl %eax, %ebx
    shl $2, %ebx
    movl %ebx, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %edi
    jmp endif1
else1:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %edi
endif1:
    movl %edi, %esi
    movl %esi, %esi
    movl -12(%ebp), %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %ebx
    and $3, %ebx
    movl %ebx, %edi
    pushl $0
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl -4(%ebp), %edi
    and $3, %edi
    movl %edi, %edi
    pushl $4
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %ebx, %eax
    or %edi, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    cmp %eax, 1
    jne else2
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    negl %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, -20(%ebp)
    movl -20(%ebp), %eax
    or $0, %eax
    movl %eax, -20(%ebp)
    movl -20(%ebp), %eax
    jmp endif2
else2:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %eax
endif2:
    movl %eax, %eax
    movl %eax, -28(%ebp)
    movl -12(%ebp), %eax
    movl %eax, %edi
    movl %edi, %eax
    and $3, %eax
    movl %eax, -24(%ebp)
    pushl $0
    pushl -24(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %edi, %eax
    and $3, %eax
    movl %eax, -4(%ebp)
    pushl $4
    pushl -4(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -24(%ebp)
    movl %ebx, %eax
    or -24(%ebp), %eax
    movl %eax, %ebx
    movl -28(%ebp), %eax
    and $3, %eax
    movl %eax, -32(%ebp)
    pushl $0
    pushl -32(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -32(%ebp)
    movl -28(%ebp), %eax
    and $3, %eax
    movl %eax, -4(%ebp)
    pushl $4
    pushl -4(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl -32(%ebp), %eax
    or -4(%ebp), %eax
    movl %eax, %eax
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %ecx
    movl %ecx, %ebx
    cmp %ebx, 1
    jne else3
    movl %edi, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl -28(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    addl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    movl %ebx, %ebx
    jmp endif3
else3:
    movl %edi, %eax
    and $3, %eax
    movl %eax, -24(%ebp)
    pushl $12
    pushl -24(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl -28(%ebp), %eax
    and $3, %eax
    movl %eax, -24(%ebp)
    pushl $12
    pushl -24(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -24(%ebp)
    movl %ebx, %eax
    and -24(%ebp), %eax
    movl %eax, %ebx
    movl %ebx, %ebx
    cmp %ebx, 1
    jne else4
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, -24(%ebp)
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -28(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %ebx
    pushl %ebx
    pushl -24(%ebp)
    call add
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $3, %eax
    movl %eax, %edi
    movl %edi, %eax
    movl %eax, %edi
    jmp endif4
else4:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %edi
endif4:
    movl %edi, %ebx
endif3:
    movl %ebx, %eax
    movl %eax, %edi
    movl %edi, -24(%ebp)
    movl -24(%ebp), %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl -24(%ebp), %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $4
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, -4(%ebp)
    movl %esi, %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %esi, %eax
    and $3, %eax
    movl %eax, %edi
    pushl $4
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %ecx
    movl -4(%ebp), %eax
    and %ecx, %eax
    movl %eax, %ebx
    movl %ebx, %ecx
    cmp %ecx, 1
    jne else5
    movl -24(%ebp), %eax
    shr $2, %eax
    movl %eax, %ecx
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    addl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif5
else5:
    movl -24(%ebp), %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $12
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %esi, %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $12
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ecx
    movl %edi, %eax
    and %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    cmp %eax, 1
    jne else6
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -24(%ebp), %ecx
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
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $3, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif6
else6:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif6:
    movl %eax, %eax
endif5:
    movl %eax, -4(%ebp)
    movl -4(%ebp), %ebx
    movl %ebx, -16(%ebp)
    movl -12(%ebp), %esi
    movl %esi, %eax
    and $3, %eax
    movl %eax, %edi
    pushl $0
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %esi, %eax
    and $3, %eax
    movl %eax, %edi
    pushl $4
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %ebx, %eax
    or %edi, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    cmp %eax, 1
    jne else7
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    negl %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    or $0, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    jmp endif7
else7:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %eax
endif7:
    movl %eax, -4(%ebp)
    movl -4(%ebp), %esi
    movl -12(%ebp), %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, %edi
    pushl $0
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, %edi
    pushl $4
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %ebx, %eax
    or %edi, %eax
    movl %eax, %ebx
    movl %ebx, %eax
    cmp %eax, 1
    jne else8
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    not %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, -20(%ebp)
    movl -20(%ebp), %eax
    or $0, %eax
    movl %eax, -20(%ebp)
    movl -20(%ebp), %eax
    jmp endif8
else8:
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %edi
    pushl %edi
    call is_true
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %edi, %ebx
    movl %ebx, %eax
    not %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $0, %eax
    movl %eax, %edi
    movl %edi, %eax
endif8:
    movl %eax, %eax
    movl %eax, -28(%ebp)
    movl -28(%ebp), %eax
    and $3, %eax
    movl %eax, -4(%ebp)
    pushl $0
    pushl -4(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -24(%ebp)
    movl -28(%ebp), %eax
    and $3, %eax
    movl %eax, -32(%ebp)
    pushl $4
    pushl -32(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl -24(%ebp), %ecx
    or %eax, %ecx
    movl %ecx, -24(%ebp)
    movl %esi, %eax
    and $3, %eax
    movl %eax, -4(%ebp)
    pushl $0
    pushl -4(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl %esi, %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $4
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl -4(%ebp), %eax
    or %ebx, %eax
    movl %eax, -32(%ebp)
    movl -24(%ebp), %eax
    and -32(%ebp), %eax
    movl %eax, %ebx
    movl %ebx, %ebx
    cmp %ebx, 1
    jne else9
    movl -28(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %esi, %ecx
    shr $2, %ecx
    movl %ecx, %ebx
    movl %ebx, %ecx
    addl %eax, %ecx
    movl %ecx, %ebx
    movl %ebx, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %ecx
    jmp endif9
else9:
    movl -28(%ebp), %eax
    and $3, %eax
    movl %eax, -24(%ebp)
    pushl $12
    pushl -24(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -24(%ebp)
    movl %esi, %eax
    and $3, %eax
    movl %eax, %edi
    pushl $12
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl -24(%ebp), %eax
    and %edi, %eax
    movl %eax, -24(%ebp)
    movl -24(%ebp), %ebx
    cmp %ebx, 1
    jne else10
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -28(%ebp), %ecx
    and %eax, %ecx
    movl %ecx, %ebx
    movl $3, %eax
    not %eax
    movl %eax, -4(%ebp)
    movl %esi, %eax
    and -4(%ebp), %eax
    movl %eax, %edi
    pushl %edi
    pushl %ebx
    call add
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, -24(%ebp)
    movl -24(%ebp), %eax
    or $3, %eax
    movl %eax, -24(%ebp)
    movl -24(%ebp), %eax
    jmp endif10
else10:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ecx
    movl %ecx, %eax
endif10:
    movl %eax, %ecx
endif9:
    movl %ecx, %ecx
    movl %ecx, -24(%ebp)
    movl -24(%ebp), %esi
    movl -16(%ebp), %esi
    movl -8(%ebp), %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, %edi
    pushl $0
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $4
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, %edi
    movl %esi, %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %esi, %eax
    and $3, %eax
    movl %eax, -28(%ebp)
    pushl $4
    pushl -28(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -24(%ebp)
    movl %ebx, %eax
    or -24(%ebp), %eax
    movl %eax, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %ebx
    movl %ebx, %ebx
    cmp %ebx, 1
    jne else11
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %edi
    pushl $0
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %ebx, %eax
    or %edi, %eax
    movl %eax, %eax
    movl %eax, %eax
    cmp %eax, 1
    jne else12
    movl $0, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %edi
    jmp endif12
else12:
    movl -20(%ebp), %edi
endif12:
    movl %edi, -4(%ebp)
    jmp endif11
else11:
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, %edi
    pushl $0
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $12
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, %edi
    movl %esi, %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %esi, %eax
    and $3, %eax
    movl %eax, -24(%ebp)
    pushl $12
    pushl -24(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -24(%ebp)
    movl %ebx, %eax
    or -24(%ebp), %eax
    movl %eax, %ecx
    movl %edi, %eax
    and %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    cmp %eax, 1
    jne else13
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, -4(%ebp)
    pushl $0
    pushl -4(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -32(%ebp)
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl -32(%ebp), %eax
    or -4(%ebp), %eax
    movl %eax, -32(%ebp)
    movl -32(%ebp), %eax
    cmp %eax, 1
    jne else14
    movl $0, %eax
    shl $2, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    or $0, %eax
    movl %eax, %ecx
    movl %ecx, %ebx
    jmp endif14
else14:
    movl -20(%ebp), %ebx
endif14:
    movl %ebx, -4(%ebp)
    jmp endif13
else13:
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, %ebx
    pushl $4
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl -4(%ebp), %eax
    and $3, %eax
    movl %eax, -24(%ebp)
    pushl $12
    pushl -24(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, -24(%ebp)
    movl %ebx, %eax
    or -24(%ebp), %eax
    movl %eax, %ebx
    movl %esi, %eax
    and $3, %eax
    movl %eax, %edi
    pushl $4
    pushl %edi
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %esi, %eax
    and $3, %eax
    movl %eax, -24(%ebp)
    pushl $12
    pushl -24(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, -24(%ebp)
    movl %ebx, %eax
    and -24(%ebp), %eax
    movl %eax, %eax
    movl %eax, %eax
    cmp %eax, 1
    jne else15
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, -4(%ebp)
    pushl $0
    pushl -4(%ebp)
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %edi
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %ebx
    pushl $0
    pushl %ebx
    call equal
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ecx
    movl %edi, %eax
    or %ecx, %eax
    movl %eax, %eax
    movl %eax, %ebx
    cmp %ebx, 1
    jne else16
    movl $0, %eax
    shl $2, %eax
    movl %eax, %edi
    movl %edi, %eax
    or $0, %eax
    movl %eax, %edi
    movl %edi, %eax
    movl %eax, -4(%ebp)
    jmp endif16
else16:
    movl -20(%ebp), %eax
    movl %eax, -4(%ebp)
endif16:
    movl -4(%ebp), %eax
    jmp endif15
else15:
    pushl $4
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %eax
endif15:
    movl %eax, -4(%ebp)
endif13:
    movl -4(%ebp), %eax
    movl %eax, -4(%ebp)
endif11:
    movl -4(%ebp), %eax
    movl %eax, %esi
    pushl %esi
    call print_any
    addl $4, %esp
    addl $84, %esp
    movl $0, %eax
    leave
    ret
