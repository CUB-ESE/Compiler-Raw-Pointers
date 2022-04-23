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
    or $1, %eax
    movl %eax, %eax
    movl %eax, -4(%ebp)
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $1, %eax
    movl %eax, %eax
    movl %eax, %esi
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
    movl %ecx, %edi
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
    movl %ecx, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else0
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    movl %eax, %eax
    not %eax
    movl %eax, %eax
    movl %ecx, %ecx
    not %ecx
    and %ecx, %eax
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
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif1
else1:
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    not %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else2
    movl -4(%ebp), %eax
    jmp endif2
else2:
    movl %esi, %eax
endif2:
    movl %eax, %eax
endif1:
    movl %eax, %eax
    jmp endif0
else0:
    pushl %esi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %esi
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %ebx
    pushl -4(%ebp)
    call is_int
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
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else3
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    movl %eax, %eax
    not %eax
    movl %eax, %eax
    movl %ecx, %ecx
    not %ecx
    and %ecx, %eax
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
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif4
else4:
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    not %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else5
    movl -4(%ebp), %eax
    jmp endif5
else5:
    movl %esi, %eax
endif5:
    movl %eax, %eax
endif4:
    movl %eax, %eax
    jmp endif3
else3:
    pushl %esi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %esi
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %ebx
    pushl -4(%ebp)
    call is_bool
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
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else6
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl -4(%ebp), %ecx
    shr $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    movl %eax, %eax
    not %eax
    movl %eax, %eax
    movl %ecx, %ecx
    not %ecx
    and %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else7
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif7
else7:
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    not %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else8
    movl -4(%ebp), %eax
    jmp endif8
else8:
    movl %esi, %eax
endif8:
    movl %eax, %eax
endif7:
    movl %eax, %eax
    jmp endif6
else6:
    pushl $1
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif6:
    movl %eax, %eax
endif3:
    movl %eax, %eax
endif0:
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl $0, %ecx
    movl %ecx, %ecx
    shl $2, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    or $1, %ecx
    movl %ecx, %ecx
    movl %ecx, %esi
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
    movl %ecx, %ebx
    pushl %esi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %edi
    pushl %esi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %edi, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %ebx, %ecx
    and %eax, %ecx
    movl %ecx, %eax
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
    movl %eax, %ecx
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %ecx, %ecx
    not %ecx
    movl %ecx, %ecx
    movl %eax, %eax
    not %eax
    and %eax, %ecx
    movl %ecx, %eax
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
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif10
else10:
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    not %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else11
    movl %esi, %eax
    jmp endif11
else11:
    movl -4(%ebp), %eax
endif11:
    movl %eax, %eax
endif10:
    movl %eax, %eax
    jmp endif9
else9:
    pushl -4(%ebp)
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl -4(%ebp)
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %edi
    pushl %esi
    call is_int
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %esi
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else12
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %ecx
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %ecx, %ecx
    not %ecx
    movl %ecx, %ecx
    movl %eax, %eax
    not %eax
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else13
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif13
else13:
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    not %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else14
    movl %esi, %eax
    jmp endif14
else14:
    movl -4(%ebp), %eax
endif14:
    movl %eax, %eax
endif13:
    movl %eax, %eax
    jmp endif12
else12:
    pushl -4(%ebp)
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl -4(%ebp)
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %edi
    pushl %esi
    call is_bool
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %esi
    call is_big
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %ecx
    or %eax, %ecx
    movl %ecx, %eax
    movl %edi, %ecx
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %eax
    movl %eax, %eax
    shr $2, %eax
    movl %eax, %eax
    movl $1, %ecx
    cmp %eax, %ecx
    jne else15
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %ecx
    movl %esi, %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %ecx, %ecx
    not %ecx
    movl %ecx, %ecx
    movl %eax, %eax
    not %eax
    and %eax, %ecx
    movl %ecx, %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else16
    movl $0, %eax
    movl %eax, %eax
    shl $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    or $0, %eax
    movl %eax, %eax
    movl %eax, %eax
    jmp endif16
else16:
    movl -4(%ebp), %eax
    shr $2, %eax
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    not %eax
    movl %eax, %ecx
    movl %ecx, %eax
    shr $2, %eax
    movl %eax, %ecx
    movl $1, %eax
    cmp %ecx, %eax
    jne else17
    movl %esi, %eax
    jmp endif17
else17:
    movl -4(%ebp), %eax
endif17:
    movl %eax, %eax
endif16:
    movl %eax, %eax
    jmp endif15
else15:
    pushl $1
    call error_pyobj
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
endif15:
    movl %eax, %eax
endif12:
    movl %eax, %eax
endif9:
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    call print_any
    addl $4, %esp
    addl $8, %esp
    movl $0, %eax
    leave
    ret
