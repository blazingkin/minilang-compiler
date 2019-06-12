.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global buildList
buildList:
LU2:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
mov r0, #8
bl malloc
mov r8, r0
mov r5, r8
mov r0, #8
bl malloc
mov r8, r0
mov r7, r8
mov r0, #8
bl malloc
mov r8, r0
mov r10, r8
str r10, [r11, #4]
mov r0, #8
bl malloc
mov r8, r0
mov r10, r8
str r10, [r11, #12]
mov r0, #8
bl malloc
mov r8, r0
mov r10, r8
str r10, [r11, #8]
mov r0, #8
bl malloc
mov r8, r0
mov r6, r8
bl readchar
mov r4, r0
add r8, r5, #0
str r4, [r8]
bl readchar
mov r8, r0
add r4, r7, #0
str r8, [r4]
bl readchar
mov r8, r0
ldr r10, [r11, #4]
add r4, r10, #0
str r8, [r4]
bl readchar
mov r4, r0
ldr r10, [r11, #12]
add r8, r10, #0
str r4, [r8]
bl readchar
mov r8, r0
ldr r10, [r11, #8]
add r4, r10, #0
str r8, [r4]
bl readchar
mov r8, r0
add r4, r6, #0
str r8, [r4]
add r8, r5, #4
str r7, [r8]
add r8, r7, #4
ldr r10, [r11, #4]
str r10, [r8]
ldr r10, [r11, #4]
add r8, r10, #4
ldr r10, [r11, #12]
str r10, [r8]
ldr r10, [r11, #12]
add r8, r10, #4
ldr r10, [r11, #8]
str r10, [r8]
ldr r10, [r11, #8]
add r8, r10, #4
str r6, [r8]
add r7, r6, #4
mov r8, #0
str r8, [r7]
mov r0, r5
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #16
pop {fp, pc}
mov r0, #0
b LU3

.size buildList, .-buildList
.text
.align 2
.global add
add:
LU9:
push {fp, lr}
add r11, r13, #12
push {r4-r10}
mov r10, r8
str r10, [r11, #4]
mov r10, r8
str r10, [r11, #8]
mov r7, #0
add r4, r0, #0
add r8, r4, #0
ldr r8, [r8]
add r8, r4, #4
ldr r8, [r8]
b LU11
LU11:
ldr r10, [r11, #8]
mov r0, r10
ldr r10, [r11, #4]
mov r8, r10
mov r4, r7
mov r7, #0
cmp r4, #5
movlt r7, #1
cmp r7, #1
beq LU12
bne LU13
LU12:
mov r10, r6
str r10, [r11, #4]
mov r10, r5
str r10, [r11, #8]
mov r7, r6
add r6, r0, #0
ldr r6, [r6]
add r6, r8, r6
add r8, r0, #4
ldr r5, [r8]
mov r0, r6
bl printl
add r6, r4, #1
b LU11

LU13:
mov r0, r8
b LU10
LU10:
pop {r4-r10}
sub r13, r11, #12
pop {fp, pc}
mov r0, #0
b LU10

.size add, .-add
.text
.align 2
.global recurseList
recurseList:
LU14:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r8, r6, #4
ldr r7, [r8]
mov r8, #0
cmp r7, #0
moveq r8, #1
cmp r8, #1
beq LU16
bne LU18
LU16:
add r8, r6, #0
ldr r8, [r8]
mov r0, r8
b LU15
LU15:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU15
LU18:
add r8, r6, #0
ldr r7, [r8]
add r8, r6, #4
ldr r8, [r8]
mov r0, r8
bl recurseList
mov r8, r0
mul r8, r7, r8
mov r0, r8
b LU15


.size recurseList, .-recurseList
.text
.align 2
.global multiple
multiple:
LU4:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
mov r10, r7
str r10, [r11, #8]
mov r10, r8
str r10, [r11, #4]
mov r6, #0
add r8, r0, #0
add r7, r8, #0
ldr r7, [r7]
add r8, r8, #4
ldr r8, [r8]
b LU6
LU6:
ldr r10, [r11, #4]
mov r4, r10
ldr r10, [r11, #8]
mov r0, r10
mov r10, r6
str r10, [r11, #12]
mov r6, #0
ldr r10, [r11, #12]
cmp r10, #5
movlt r6, #1
cmp r6, #1
beq LU7
bne LU8
LU7:
mov r10, r7
str r10, [r11, #8]
mov r10, r8
str r10, [r11, #4]
mov r6, r5
add r8, r4, #0
ldr r8, [r8]
mul r7, r0, r8
add r8, r4, #4
ldr r8, [r8]
mov r0, r7
bl printl
ldr r10, [r11, #12]
add r5, r10, #1
b LU6

LU8:
mov r0, r0
b LU5
LU5:
pop {r4-r10}
sub r13, r11, #16
pop {fp, pc}
mov r0, #0
b LU5

.size multiple, .-multiple
.text
.align 2
.global main
main:
LU19:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
mov r10, #0
str r10, [r11, #8]
mov r10, r5
str r10, [r11, #12]
mov r6, r7
mov r10, #0
str r10, [r11, #4]
bl buildList
mov r5, r0
mov r0, r5
bl multiple
mov r7, r0
mov r0, r5
bl add
mov r5, r0
mov r0, r5
mov r1, #2
bl __aeabi_idiv
mov r5, r0
sub r7, r7, r5
b LU21
LU21:
mov r6, r6
ldr r10, [r11, #12]
mov r4, r10
ldr r10, [r11, #8]
mov r7, r10
ldr r10, [r11, #4]
mov r5, r10
mov r0, #0
cmp r5, #2
movlt r0, #1
cmp r0, #1
beq LU22
bne LU23
LU22:
mov r10, r8
str r10, [r11, #8]
mov r10, r4
str r10, [r11, #12]
mov r6, r6
mov r10, r8
str r10, [r11, #4]
mov r0, r4
bl recurseList
mov r8, r0
add r8, r7, r8
add r8, r5, #1
b LU21

LU23:
mov r6, r6
mov r5, r7
mov r0, r7
bl printl
b LU24
LU24:
mov r7, r6
mov r8, r5
mov r6, #0
cmp r8, #0
movne r6, #1
cmp r6, #1
beq LU25
bne LU26
LU25:
mov r6, r7
mov r5, r4
sub r4, r8, #1
b LU24

LU26:
mov r0, r7
bl printl
mov r0, r8
bl printl
mov r0, #0
b LU20
LU20:
pop {r4-r10}
sub r13, r11, #16
pop {fp, pc}
mov r0, #0
b LU20

.size main, .-main
