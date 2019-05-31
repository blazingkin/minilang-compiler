.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU10:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl readchar
mov r8, r0
mov r0, r8
bl computeFib
mov r8, r0
mov r0, r8
bl printl
mov r0, #0
b LU11
LU11:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU11

.size main, .-main
.text
.align 2
.global computeFib
computeFib:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
mov r8, #0
cmp r6, #0
moveq r8, #1
cmp r8, #1
beq LU4
bne LU6
LU4:
mov r0, #0
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU3
LU6:
mov r8, #0
cmp r6, #2
movle r8, #1
cmp r8, #1
beq LU7
bne LU9
LU7:
mov r0, #1
b LU3

LU9:
sub r8, r6, #1
mov r0, r8
bl computeFib
mov r7, r0
sub r8, r6, #2
mov r0, r8
bl computeFib
mov r8, r0
add r8, r7, r8
mov r0, r8
b LU3


.size computeFib, .-computeFib
