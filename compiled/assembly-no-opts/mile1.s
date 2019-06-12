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
mov r5, #1
mov r4, r8
mov r7, r8
add r8, r0, #0
add r8, r1, #0
b LU4
LU4:
mov r2, r4
mov r6, r5
mov r3, r7
mov r7, #0
cmp r3, #0
movgt r7, #1
cmp r7, #1
beq LU5
bne LU6
LU5:
mov r5, r8
mov r4, r2
mov r7, r8
mul r8, r6, r2
sub r8, r3, #1
b LU4

LU6:
mov r0, r6
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
add r11, r13, #8
push {r4-r10}
mov r0, #8
bl malloc
mov r8, r0
mov r4, r8
bl readchar
mov r7, r0
add r8, r4, #0
str r7, [r8]
bl readchar
mov r8, r0
mov r7, #0
cmp r8, #0
movlt r7, #1
cmp r7, #1
beq LU9
bne LU10
LU9:
movw r0, #:lower16:-1
movt r0, #:upper16:-1
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #8
pop {fp, pc}
mov r0, #0
b LU8
LU10:
mov r5, r4
mov r7, #0
mov r6, #0
add r4, r4, #4
str r8, [r4]
b LU11
LU11:
mov r7, r7
mov r4, r5
mov r0, r6
mov r6, #0
movw r6, #:lower16: 1000000
movt r6, #:upper16: 1000000
cmp r0, r6
movlt r6, #1
cmp r6, #1
beq LU12
bne LU13
LU12:
mov r5, r4
mov r7, r8
ldr r10, [r11, #4]
mov r6, r10
add r10, r0, #1
str r10, [r11, #4]
add r8, r4, #0
ldr r1, [r8]
add r8, r4, #4
ldr r8, [r8]
mov r0, r1
mov r1, r8
bl calcPower
mov r8, r0
b LU11

LU13:
mov r0, r7
bl printl
mov r0, #1
b LU8


.size main, .-main
