.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global calcPower
calcPower:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r8, r1, #0
mov r4, r8
mov r7, #1
mov r8, r6
b LU4
LU4:
mov r6, r8
mov r5, r7
mov r7, r4
mov r8, #0
cmp r7, #0
movgt r8, #1
cmp r8, #1
beq LU5
bne LU6
LU5:
mul r8, r5, r6
sub r7, r7, #1
mov r4, r7
mov r7, r8
mov r8, r6
b LU4

LU6:
mov r0, r5
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU3

.size calcPower, .-calcPower
.text
.align 2
.global main
main:
LU7:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #8
bl malloc
mov r8, r0
mov r7, r8
bl readchar
mov r8, r0
add r6, r7, #0
str r8, [r6]
bl readchar
mov r6, r0
mov r8, #0
cmp r6, #0
movlt r8, #1
cmp r8, #1
beq LU9
bne LU10
LU9:
mov r0, #-1
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU8
LU10:
add r8, r7, #4
str r6, [r8]
mov r8, #0
mov r6, r7
mov r7, #0
b LU11
LU11:
mov r7, r7
mov r6, r6
mov r8, r8
mov r5, #0
movw r5, #:lower16: 1000000
movt r5, #:upper16: 1000000
cmp r8, r5
movlt r5, #1
cmp r5, #1
beq LU12
bne LU13
LU12:
add r8, r8, #1
add r7, r6, #0
ldr r5, [r7]
add r7, r6, #4
ldr r7, [r7]
mov r0, r5
mov r1, r7
bl calcPower
mov r7, r0
mov r8, r8
mov r6, r6
mov r7, r7
b LU11

LU13:
mov r0, r7
bl printl
mov r0, #1
b LU8


.size main, .-main
