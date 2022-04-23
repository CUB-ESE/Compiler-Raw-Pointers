.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $0, %esp
    pushl $1
    call make_list
    addl $4, %esp
    movl %eax, %edi
    movl %edi, %eax
    pushl %eax
    pushl $0
    pushl $1
    call set_subscript
    addl $12, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl $1
    call make_list
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    pushl %ebx
    pushl $0
    pushl $2
    call set_subscript
    addl $12, %esp
    movl %eax, %ebx
    movl %ebx, %eax
    pushl %eax
    pushl $0
    pushl $3
    call set_subscritpion
    addl $12, %esp
    movl %eax, %eax
    pushl %eax
    pushl $0
    call get_subscript
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    pushl %eax
    call print_int_nl
    addl $4, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %ebx
    and %ebx, $3
    movl %ebx, %eax
    pushl %eax
    pushl $1
    call equal_pyobj
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %eax
    and %eax, $3
    movl %eax, %eax
    pushl %eax
    pushl $0
    call equal_pyobj
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    or %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    and %eax, $3
    movl %eax, %eax
    pushl %eax
    pushl $1
    call equal_pyobj
    addl $8, %esp
    movl %eax, %edi
    movl %edi, %edi
    movl %eax, %edx
    and %edx, $3
    movl %edx, %ecx
    pushl %ecx
    pushl $0
    call equal_pyobj
    addl $8, %esp
    movl %eax, %edi
    movl %edi, %edi
    movl %edi, %edx
    or %edx, %edi
    movl %edx, %eax
    movl %eax, %eax
    and %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    cmpl %eax, $1
    jne else0
    movl %ebx, %eax
    shr %eax, $2
    movl %eax, %eax
    movl %eax, %edx
    shr %edx, $2
    movl %edx, %ecx
    movl %ecx, %eax
    addl %eax, %eax
    movl %eax, %ecx
    movl %ecx, %ecx
    shl %ecx, $2
    movl %ecx, %ecx
    movl %ecx, %ecx
    or %ecx, $1
    movl %ecx, %ecx
    movl %ecx, %ebx
    jmp endif0
else0:
    movl %ebx, %ecx
    and %ecx, $3
    movl %ecx, %eax
    pushl %eax
    pushl $3
    call equal_pyobj
    addl $8, %esp
    movl %eax, %ebx
    movl %ebx, %ebx
    movl %eax, %eax
    and %eax, $3
    movl %eax, %ecx
    pushl %ecx
    pushl $3
    call equal_pyobj
    addl $8, %esp
    movl %eax, %ebx
    movl %ebx, %ebx
    movl %ebx, %ecx
    and %ecx, %ebx
    movl %ecx, %ecx
    movl %ecx, %ecx
    cmpl %ecx, $1
    jne else1
    movl $3, %ecx
    not %ecx
    movl %ecx, %ecx
    movl %edi, %ebx
    and %ebx, %ecx
    movl %ebx, %edi
    movl $3, %ecx
    not %ecx
    movl %ecx, %ecx
    movl %edi, %edi
    and %edi, %ecx
    movl %edi, %edi
    pushl %edi
    pushl %edi
    call add
    addl $8, %esp
    movl %eax, %ecx
    movl %ecx, %ebx
    movl %ebx, %ecx
    shl %ecx, $2
    movl %ecx, %ebx
    movl %ebx, %ebx
    or %ebx, $3
    movl %ebx, %ebx
    movl %ebx, %ecx
    jmp endif1
else1:
    pushl $1
    call error_pyobj
    addl $4, %esp
    movl %eax, %ecx
    movl %ecx, %ebx
    movl %ebx, %ecx
endif1:
    movl %ecx, %ebx
endif0:
    movl %ebx, %ecx
    movl %ecx, %ebx
    pushl %ebx
    call print_int_nl
    addl $4, %esp
    addl $0, %esp
    movl $0, %eax
    leave
    ret
