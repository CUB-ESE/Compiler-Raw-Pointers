.global main
main:
    pushl %ebp
    movl %esp, %ebp
    subl $4, %esp
    movl $1, %ebx
    movl $1, %ebx
    movl %ebx, %ebx
    and %ebx, $3
    movl %ebx, %ecx
    pushl %ecx
    pushl $1
    call equal_pyobj
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ebx
    movl %ebx, %ebx
    and %ebx, $3
    movl %ebx, %ecx
    pushl %ecx
    pushl $0
    call equal_pyobj
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %ecx
    movl %ebx, %ecx
    or %ecx, %ecx
    movl %ecx, %ecx
    movl %ebx, %ecx
    and %ecx, $3
    movl %ecx, %ecx
    pushl %ecx
    pushl $1
    call equal_pyobj
    addl $8, %esp
    movl %eax, %ecx
    movl %ecx, %ecx
    movl %ebx, %ebx
    and %ebx, $3
    movl %ebx, %ecx
    pushl %ecx
    pushl $0
    call equal_pyobj
    addl $8, %esp
    movl %eax, %ecx
    movl %ecx, %ecx
    movl %ecx, %ecx
    or %ecx, %ecx
    movl %ecx, %edx
    movl %ecx, %ecx
    and %ecx, %edx
    movl %ecx, %ecx
    movl %ecx, %ecx
    cmpl %ecx, $1
    jne else0
    movl %ebx, %edx
    shr %edx, $2
    movl %edx, %edi
    movl %ebx, %ecx
    shr %ecx, $2
    movl %ecx, %ecx
    movl %ecx, %ecx
    addl %edi, %ecx
    movl %ecx, %edi
    movl %edi, %ecx
    shl %ecx, $2
    movl %ecx, %eax
    movl %eax, %ecx
    or %ecx, $1
    movl %ecx, %eax
    movl %eax, %edx
    jmp endif0
else0:
    movl %ebx, %edx
    and %edx, $3
    movl %edx, %eax
    pushl %eax
    pushl $3
    call equal_pyobj
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %ebx, %edi
    and %edi, $3
    movl %edi, %eax
    pushl %eax
    pushl $3
    call equal_pyobj
    addl $8, %esp
    movl %eax, %ecx
    movl %ecx, %eax
    movl %eax, %edi
    and %edi, %eax
    movl %edi, %eax
    movl %eax, %eax
    cmpl %eax, $1
    jne else1
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl -4(%ebp), %eax
    and %eax, %eax
    movl %eax, -4(%ebp)
    movl $3, %eax
    not %eax
    movl %eax, %eax
    movl %esi, %eax
    and %eax, %eax
    movl %eax, %esi
    pushl -4(%ebp)
    pushl %esi
    call add
    addl $8, %esp
    movl %eax, %eax
    movl %eax, %eax
    movl %eax, %eax
    shl %eax, $2
    movl %eax, %edi
    movl %edi, %edi
    or %edi, $3
    movl %edi, %edi
    movl %edi, %edi
    jmp endif1
else1:
    pushl $1
    call error_pyobj
    addl $4, %esp
    movl %eax, %edi
    movl %edi, %ecx
    movl %ecx, %edi
endif1:
    movl %edi, %edx
endif0:
    movl %edx, %eax
    movl %eax, %eax
    addl $4, %esp
    movl $0, %eax
    leave
    ret
