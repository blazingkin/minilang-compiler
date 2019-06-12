.arch armv7-a
.global __aeabi_idiv
.comm swapped 4,4
.text
.align 2
.global printEVILList
printEVILList:
LU14:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r6, r5
mov r7, r8
add r5, r0, #0
add r8, r5, #8
ldr r8, [r8]
add r8, r5, #0
ldr r8, [r8]
mov r0, r8
bl printl
mov r8, r5
mov r0, r8
bl free
b LU16
LU16:
mov r6, r6
mov r5, r7
mov r7, #0
cmp r5, r6
movne r7, #1
cmp r7, #1
beq LU17
bne LU18
LU17:
mov r6, r6
mov r7, r8
add r8, r5, #0
ldr r8, [r8]
mov r0, r8
bl printl
add r8, r5, #8
ldr r8, [r8]
mov r5, r5
mov r0, r5
bl free
b LU16

LU18:
b LU15
LU15:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size printEVILList, .-printEVILList
.text
.align 2
.global compare
compare:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r6, r1, #0
add r8, r8, #0
ldr r7, [r8]
add r8, r6, #0
ldr r8, [r8]
sub r8, r7, r8
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3

.size compare, .-compare
.text
.align 2
.global main
main:
LU19:
push {fp, lr}
add r11, r13, #8
push {r4-r10}
movw r7, #:lower16: swapped
movt r7, #:upper16: swapped
movw r8, #:lower16: 666
movt r8, #:upper16: 666
str r8, [r7]
bl readchar
mov r7, r0
mov r8, #0
cmp r7, #0
movle r8, #1
cmp r8, #1
beq LU21
bne LU22
LU21:
movw r8, #:lower16: -1
movt r8, #:upper16: -1
mov r0, r8
bl printl
movw r0, #:lower16:-1
movt r0, #:upper16:-1
b LU20
LU20:
pop {r4-r10}
sub r13, r11, #8
pop {fp, pc}
mov r0, #0
b LU20
LU22:
mov r6, r4
mov r10, r4
str r10, [r11, #4]
mov r8, r5
movw r5, #:lower16: 1000
movt r5, #:upper16: 1000
mul r5, r7, r5
mov r0, #12
bl malloc
mov r7, r0
mov r4, r7
add r7, r4, #0
str r5, [r7]
add r7, r4, #4
str r4, [r7]
add r7, r4, #8
str r4, [r7]
sub r5, r5, #1
b LU23
LU23:
ldr r10, [r11, #4]
mov r7, r10
mov r5, r6
mov r4, r8
mov r8, #0
cmp r4, #0
movgt r8, #1
cmp r8, #1
beq LU24
bne LU25
LU24:
mov r6, r2
mov r10, r7
str r10, [r11, #4]
mov r8, r3
mov r0, #12
bl malloc
mov r3, r0
mov r2, r3
add r3, r2, #0
str r4, [r3]
add r3, r2, #4
str r5, [r3]
add r3, r2, #8
str r7, [r3]
add r7, r5, #8
str r2, [r7]
sub r3, r4, #1
b LU23

LU25:
mov r0, r7
bl deathSort
mov r0, r7
bl printEVILList
mov r0, #0
b LU20


.size main, .-main
.text
.align 2
.global deathSort
deathSort:
LU4:
push {fp, lr}
add r11, r13, #8
push {r4-r10}
mov r6, r7
mov r8, #1
add r7, r0, #0
b LU6
LU6:
mov r6, r6
mov r7, r8
mov r8, #0
cmp r7, #1
moveq r8, #1
cmp r8, #1
beq LU7
bne LU8
LU7:
mov r4, r6
mov r8, #0
mov r3, r6
b LU9
LU9:
mov r8, r8
mov r4, r4
mov r6, r3
add r7, r6, #8
ldr r5, [r7]
mov r7, #0
cmp r5, r4
movne r7, #1
cmp r7, #1
beq LU10
bne LU11
LU10:
mov r10, r4
str r10, [r11, #4]
mov r7, r8
mov r5, r6
add r8, r6, #8
ldr r8, [r8]
mov r0, r6
mov r1, r8
bl compare
mov r3, r0
mov r8, #0
cmp r3, #0
movgt r8, #1
cmp r8, #1
beq LU12
bne LU13
LU12:
mov r10, r4
str r10, [r11, #4]
mov r7, #1
mov r5, r6
add r8, r6, #0
ldr r8, [r8]
add r4, r6, #8
ldr r4, [r4]
add r4, r4, #0
ldr r4, [r4]
add r3, r6, #0
str r4, [r3]
add r4, r6, #8
ldr r4, [r4]
add r4, r4, #0
str r8, [r4]
b LU13
LU13:
mov r4, r6
mov r8, r6
mov r3, r6
mov r6, r7
ldr r10, [r11, #4]
mov r6, r10
mov r7, r5
add r7, r7, #8
ldr r6, [r7]
b LU9


LU11:
mov r6, r4
mov r8, r8
b LU6

LU8:
b LU5
LU5:
pop {r4-r10}
sub r13, r11, #8
pop {fp, pc}

.size deathSort, .-deathSort
