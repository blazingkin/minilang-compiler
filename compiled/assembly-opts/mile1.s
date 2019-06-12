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
mov r4, #1
mov r3, r8
mov r7, r8
add r8, r0, #0
add r8, r1, #0
b LU4
LU4:
mov r1, r3
mov r8, r4
mov r5, r7
mov r7, #0
cmp r5, #0
movgt r7, #1
cmp r7, #1
beq LU5
bne LU6
LU5:
mov r4, r6
mov r3, r1
mov r7, r2
mul r6, r8, r1
sub r2, r5, #1
b LU4

LU6:
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
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
mov r6, r0
add r8, r7, #0
str r6, [r8]
bl readchar
mov r4, r0
mov r8, #0
cmp r4, #0
movlt r8, #1
cmp r8, #1
beq LU9
bne LU10
LU9:
movw r0, #:lower16:-1
movt r0, #:upper16:-1
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU8
LU10:
mov r6, r7
mov r8, #0
mov r5, #0
add r7, r7, #4
str r4, [r7]
b LU11
LU11:
mov r8, r8
mov r4, r6
mov r7, r5
mov r6, #0
movw r6, #:lower16: 1000000
movt r6, #:upper16: 1000000
cmp r7, r6
movlt r6, #1
cmp r6, #1
beq LU12
bne LU13
LU12:
mov r6, r4
mov r8, r3
mov r5, r1
add r1, r7, #1
add r7, r4, #0
ldr r7, [r7]
add r4, r4, #4
ldr r4, [r4]
mov r0, r7
mov r1, r4
bl calcPower
mov r3, r0
b LU11

LU13:
mov r0, r8
bl printl
mov r0, #1
b LU8


.size main, .-main
