.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU9:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl readchar
mov r8, r0
mov r0, r8
bl function
mov r8, r0
mov r0, #0
bl printl
mov r0, #0
b LU10
LU10:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU10

.size main, .-main
.text
.align 2
.global function
function:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
movle r8, #1
cmp r8, #1
beq LU4
bne LU5
LU4:
mov r0, #0
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3
LU5:
mov r6, r7
mov r4, #0
b LU6
LU6:
mov r7, r6
mov r5, r4
mul r8, r7, r7
mov r6, #0
cmp r5, r8
movlt r6, #1
cmp r6, #1
beq LU7
bne LU8
LU7:
mov r6, r7
mov r4, r0
add r8, r5, r7
mov r0, r8
bl print
add r0, r5, #1
b LU6

LU8:
sub r8, r7, #1
mov r0, r8
bl function
mov r8, r0
mov r0, r8
b LU3


.size function, .-function
