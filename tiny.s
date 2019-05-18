.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU2:
add r11, r13, #4
push {fp, lr}
mov r0, #3
bl other
mov r8, r0
mov r0, r8
b LU3
LU3:
sub r13, r11, #4
pop {fp, pc}
b LU3

.size main, .-main
.text
.align 2
.global other
other:
LU4:
add r11, r13, #4
push {fp, lr}
add r7, r0, #0
movw r8, #:lower16: 4
movt r8, #:upper16: 4
add r8, r8, r7
mov r0, r8
b LU5
LU5:
sub r13, r11, #4
pop {fp, pc}
b LU5

.size other, .-other
