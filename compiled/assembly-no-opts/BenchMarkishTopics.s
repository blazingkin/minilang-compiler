.arch armv7-a
.global __aeabi_idiv
.comm intList 4,4
.text
.align 2
.global deleteFirst
deleteFirst:
LU10:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
moveq r8, #1
cmp r8, #1
beq LU12
bne LU13
LU12:
mov r0, #0
b LU11
LU11:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU11
LU13:
add r8, r7, #4
ldr r8, [r8]
mov r7, r7
mov r0, r7
bl free
mov r0, r8
b LU11


.size deleteFirst, .-deleteFirst
.text
.align 2
.global addToFront
addToFront:
LU6:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r6, r1, #0
mov r8, #0
cmp r7, #0
moveq r8, #1
cmp r8, #1
beq LU8
bne LU9
LU8:
mov r0, #8
bl malloc
mov r8, r0
mov r7, r8
add r8, r7, #0
str r6, [r8]
add r8, r7, #4
mov r6, #0
str r6, [r8]
mov r0, r7
b LU7
LU7:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU7
LU9:
mov r0, #8
bl malloc
mov r8, r0
mov r5, r8
add r8, r5, #0
str r6, [r8]
add r8, r5, #4
str r7, [r8]
mov r0, r5
b LU7


.size addToFront, .-addToFront
.text
.align 2
.global length
length:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
moveq r8, #1
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
add r8, r7, #4
ldr r8, [r8]
mov r0, r8
bl length
mov r8, r0
movw r7, #:lower16: 1
movt r7, #:upper16: 1
add r8, r7, r8
mov r0, r8
b LU3


.size length, .-length
.text
.align 2
.global main
main:
LU14:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, #0
mov r6, #0
bl readchar
mov r4, r0
movw r8, #:lower16: intList
movt r8, #:upper16: intList
str r4, [r8]
b LU16
LU16:
mov r0, r7
mov r4, r6
movw r8, #:lower16: intList
movt r8, #:upper16: intList
ldr r8, [r8]
mov r7, #0
cmp r8, #0
movgt r7, #1
cmp r7, #1
beq LU17
bne LU18
LU17:
mov r7, r0
mov r6, r5
movw r8, #:lower16: intList
movt r8, #:upper16: intList
ldr r8, [r8]
mov r0, r4
mov r1, r8
bl addToFront
mov r5, r0
add r8, r5, #0
ldr r8, [r8]
mov r0, r8
bl print
movw r8, #:lower16: intList
movt r8, #:upper16: intList
ldr r8, [r8]
sub r4, r8, #1
movw r8, #:lower16: intList
movt r8, #:upper16: intList
str r4, [r8]
b LU16

LU18:
mov r6, r0
mov r7, r4
mov r0, r4
bl length
mov r8, r0
mov r0, r8
bl print
b LU19
LU19:
mov r4, r6
mov r5, r7
mov r0, r5
bl length
mov r7, r0
mov r6, #0
cmp r7, #0
movgt r6, #1
cmp r6, #1
beq LU20
bne LU21
LU20:
mov r6, r8
mov r7, r8
add r8, r5, #0
ldr r8, [r8]
add r8, r4, r8
mov r0, r5
bl length
mov r8, r0
mov r0, r8
bl print
mov r0, r5
bl deleteFirst
mov r8, r0
b LU19

LU21:
mov r0, r4
bl printl
mov r0, #0
b LU15
LU15:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU15

.size main, .-main
