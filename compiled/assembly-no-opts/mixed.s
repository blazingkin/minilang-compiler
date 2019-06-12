.arch armv7-a
.global __aeabi_idiv
.comm globalfoo 4,4
.text
.align 2
.global main
main:
LU25:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl readchar
mov r4, r0
bl readchar
mov r7, r0
bl readchar
mov r6, r0
bl readchar
mov r8, r0
bl readchar
mov r5, r0
mov r0, r4
bl tailrecursive
mov r0, r4
bl printl
mov r0, r7
bl domath
mov r0, r7
bl printl
mov r0, r6
bl objinstantiation
mov r0, r6
bl printl
mov r0, r8
mov r1, r5
bl ackermann
mov r8, r0
mov r0, r8
bl printl
mov r0, #0
b LU26
LU26:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU26

.size main, .-main
.text
.align 2
.global ackermann
ackermann:
LU18:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r6, r1, #0
mov r8, #0
cmp r7, #0
moveq r8, #1
cmp r8, #1
beq LU20
bne LU21
LU20:
add r8, r6, #1
mov r0, r8
b LU19
LU19:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU19
LU21:
mov r8, #0
cmp r6, #0
moveq r8, #1
cmp r8, #1
beq LU22
bne LU24
LU22:
sub r8, r7, #1
mov r0, r8
mov r1, #1
bl ackermann
mov r8, r0
mov r0, r8
b LU19

LU24:
sub r8, r7, #1
sub r6, r6, #1
mov r0, r7
mov r1, r6
bl ackermann
mov r7, r0
mov r0, r8
mov r1, r7
bl ackermann
mov r8, r0
mov r0, r8
b LU19


.size ackermann, .-ackermann
.text
.align 2
.global objinstantiation
objinstantiation:
LU13:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, r8
add r8, r0, #0
b LU15
LU15:
mov r6, r7
mov r7, #0
cmp r6, #0
movgt r7, #1
cmp r7, #1
beq LU16
bne LU17
LU16:
mov r7, r8
mov r0, #12
bl malloc
mov r8, r0
mov r8, r8
mov r8, r8
mov r0, r8
bl free
sub r8, r6, #1
b LU15

LU17:
b LU14
LU14:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size objinstantiation, .-objinstantiation
.text
.align 2
.global add
add:
LU6:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r7, r1, #0
add r8, r8, r7
mov r0, r8
b LU7
LU7:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU7

.size add, .-add
.text
.align 2
.global tailrecursive
tailrecursive:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r7, #0
cmp r8, #0
movle r7, #1
cmp r7, #1
beq LU4
bne LU5
LU4:
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
LU5:
sub r8, r8, #1
mov r0, r8
bl tailrecursive
b LU3


.size tailrecursive, .-tailrecursive
.text
.align 2
.global domath
domath:
LU8:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
ldr r10, [r11, #4]
mov r7, r10
mov r10, r6
str r10, [r11, #12]
mov r4, r5
add r5, r0, #0
mov r0, #12
bl malloc
mov r8, r0
mov r10, r8
str r10, [r11, #4]
mov r0, #4
bl malloc
mov r8, r0
mov r8, r8
ldr r10, [r11, #4]
add r6, r10, #8
str r8, [r6]
mov r0, #12
bl malloc
mov r8, r0
mov r6, r8
mov r0, #4
bl malloc
mov r8, r0
mov r0, r8
add r8, r6, #8
str r0, [r8]
ldr r10, [r11, #4]
add r8, r10, #0
str r5, [r8]
add r5, r6, #0
movw r8, #:lower16: 3
movt r8, #:upper16: 3
str r8, [r5]
ldr r10, [r11, #4]
add r8, r10, #0
ldr r8, [r8]
ldr r10, [r11, #4]
add r5, r10, #8
ldr r5, [r5]
add r5, r5, #0
str r8, [r5]
add r8, r6, #0
ldr r8, [r8]
add r6, r6, #8
ldr r6, [r6]
add r6, r6, #0
str r8, [r6]
b LU10
LU10:
ldr r10, [r11, #12]
mov r5, r10
mov r6, r7
mov r8, r4
mov r7, #0
cmp r8, #0
movgt r7, #1
cmp r7, #1
beq LU11
bne LU12
LU11:
mov r7, r6
mov r10, r5
str r10, [r11, #12]
ldr r10, [r11, #8]
mov r4, r10
add r1, r6, #0
ldr r1, [r1]
add r0, r5, #0
ldr r0, [r0]
mul r0, r1, r0
add r1, r6, #8
ldr r1, [r1]
add r1, r1, #0
ldr r1, [r1]
mul r0, r0, r1
add r1, r5, #0
ldr r1, [r1]
mov r0, r0
mov r1, r1
bl __aeabi_idiv
mov r1, r0
add r1, r5, #8
ldr r1, [r1]
add r1, r1, #0
ldr r0, [r1]
add r1, r6, #0
ldr r1, [r1]
mov r0, r0
mov r1, r1
bl add
mov r0, r0
add r5, r5, #0
ldr r5, [r5]
add r6, r6, #0
ldr r6, [r6]
sub r6, r5, r6
sub r10, r8, #1
str r10, [r11, #8]
b LU10

LU12:
mov r8, r6
mov r0, r8
bl free
mov r8, r5
mov r0, r8
bl free
b LU9
LU9:
pop {r4-r10}
sub r13, r11, #16
pop {fp, pc}

.size domath, .-domath
