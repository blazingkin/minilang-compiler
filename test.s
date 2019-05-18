.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU2:
push {fp, lr}
add r11, r13, #4
bl readchar
mov r7, r0
mov r8, #0
cmp r7, #4
movlt r8, #1
cmp r8, #1
beq LU4
bne LU6
LU4:
mov r0, #3
b LU3
LU3:
sub r13, r11, #4
pop {fp, pc}
b LU3
LU6:
mov r0, #2
b LU3


.size main, .-main
.text
.align 2
.global other
other:
LU7:
push {fp, lr}
add r11, r13, #4
add r8, r0, #0
add r8, r8, #3
mov r0, r8
b LU8
LU8:
sub r13, r11, #4
pop {fp, pc}
b LU8

.size other, .-other
