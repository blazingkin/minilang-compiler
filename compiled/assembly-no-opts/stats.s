.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global calcMean
calcMean:
LU7:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r8, #0
mov r4, #0
mov r5, #0
mov r6, r3
add r3, r0, #0
b LU9
LU9:
mov r5, r5
mov r3, r4
mov r2, r8
mov r1, r6
mov r8, #0
cmp r1, #0
movne r8, #1
cmp r8, #1
beq LU10
bne LU11
LU10:
mov r8, r7
mov r4, r7
mov r5, r5
mov r6, r7
add r7, r2, #1
add r7, r1, #0
ldr r7, [r7]
add r7, r3, r7
add r7, r1, #4
ldr r7, [r7]
b LU9

LU11:
mov r7, r5
mov r8, #0
cmp r2, #0
movne r8, #1
cmp r8, #1
beq LU12
bne LU13
LU12:
mov r7, r6
mov r0, r3
mov r1, r2
bl __aeabi_idiv
mov r6, r0
b LU13
LU13:
mov r8, r7
mov r0, r8
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU8


.size calcMean, .-calcMean
.text
.align 2
.global approxSqrtAll
approxSqrtAll:
LU34:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, r8
add r8, r0, #0
b LU36
LU36:
mov r5, r7
mov r8, #0
cmp r5, #0
movne r8, #1
cmp r8, #1
beq LU37
bne LU38
LU37:
mov r7, r6
add r8, r5, #0
ldr r8, [r8]
mov r0, r8
bl approxSqrt
mov r8, r0
mov r0, r8
bl printl
add r8, r5, #4
ldr r6, [r8]
b LU36

LU38:
b LU35
LU35:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size approxSqrtAll, .-approxSqrtAll
.text
.align 2
.global approxSqrt
approxSqrt:
LU14:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r1, r7
mov r6, #1
mov r8, #1
mov r5, #0
add r7, r0, #0
b LU19
LU19:
mov r4, r8
mov r7, r6
mov r6, r1
mov r8, r5
mov r5, #0
cmp r8, r6
movlt r5, #1
cmp r5, #1
beq LU20
bne LU21
LU20:
mov r1, r6
mov r6, r2
mov r8, r7
mov r5, r3
mul r3, r7, r7
add r2, r7, #1
b LU19

LU21:
mov r0, r4
b LU17
LU17:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU17

.size approxSqrt, .-approxSqrt
.text
.align 2
.global main
main:
LU16:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl readchar
mov r8, r0
bl readchar
mov r7, r0
mov r0, r8
mov r1, r7
bl getRands
mov r7, r0
mov r0, r7
bl calcMean
mov r8, r0
mov r0, r8
bl printl
mov r0, r7
bl range
mov r0, r7
bl approxSqrtAll
mov r0, #0
b LU18
LU18:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU18

.size main, .-main
.text
.align 2
.global getRands
getRands:
LU2:
push {fp, lr}
add r11, r13, #20
push {r4-r10}
mov r10, r6
str r10, [r11, #12]
mov r7, r6
mov r4, r3
mov r10, #0
str r10, [r11, #4]
mov r10, r8
str r10, [r11, #16]
add r6, r0, #0
add r8, r1, #0
mul r6, r6, r6
mov r0, #8
bl malloc
mov r5, r0
mov r3, r5
add r5, r3, #0
str r6, [r5]
add r5, r3, #4
mov r6, #0
str r6, [r5]
sub r8, r8, #1
b LU4
LU4:
ldr r10, [r11, #4]
mov r0, r10
mov r6, r4
mov r5, r7
ldr r10, [r11, #12]
mov r1, r10
ldr r10, [r11, #16]
mov r10, r10
str r10, [r11, #8]
mov r7, #0
ldr r10, [r11, #8]
cmp r10, #0
movgt r7, #1
cmp r7, #1
beq LU5
bne LU6
LU5:
mov r10, r8
str r10, [r11, #12]
mov r7, r5
mov r4, r3
mov r10, r3
str r10, [r11, #4]
mov r10, r8
str r10, [r11, #16]
mul r8, r1, r1
mov r0, r8
mov r1, r5
bl __aeabi_idiv
mov r8, r0
mov r0, r5
mov r1, #2
bl __aeabi_idiv
mov r5, r0
mul r8, r8, r5
add r8, r8, #1
mov r0, #8
bl malloc
mov r5, r0
mov r3, r5
add r5, r3, #0
str r8, [r5]
add r8, r3, #4
str r6, [r8]
ldr r10, [r11, #8]
sub r8, r10, #1
b LU4

LU6:
mov r0, r0
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #20
pop {fp, pc}
mov r0, #0
b LU3

.size getRands, .-getRands
.text
.align 2
.global range
range:
LU15:
push {fp, lr}
add r11, r13, #36
push {r4-r10}
mov r4, #1
mov r10, #0
str r10, [r11, #4]
mov r8, #0
mov r5, r7
add r7, r0, #0
b LU23
LU23:
mov r7, r8
ldr r10, [r11, #4]
mov r0, r10
mov r4, r4
mov r10, r5
str r10, [r11, #8]
mov r8, #0
ldr r10, [r11, #8]
cmp r10, #0
movne r8, #1
cmp r8, #1
beq LU24
bne LU25
LU24:
cmp r4, #1
beq LU26
bne LU28
LU26:
mov r10, #0
str r10, [r11, #20]
mov r6, r8
mov r10, r8
str r10, [r11, #16]
ldr r10, [r11, #8]
mov r0, r10
ldr r10, [r11, #8]
add r8, r10, #0
ldr r8, [r8]
ldr r10, [r11, #8]
add r8, r10, #0
ldr r8, [r8]
b LU27
LU27:
mov r4, r7
mov r10, r7
str r10, [r11, #4]
mov r8, r7
mov r5, r7
ldr r10, [r11, #16]
mov r7, r10
mov r7, r6
ldr r10, [r11, #20]
mov r7, r10
mov r7, r0
add r7, r7, #4
ldr r7, [r7]
b LU23

LU28:
ldr r10, [r11, #8]
add r6, r10, #0
ldr r5, [r6]
mov r6, #0
cmp r5, r0
movlt r6, #1
cmp r6, #1
beq LU29
bne LU31
LU29:
mov r10, r4
str r10, [r11, #32]
mov r10, r7
str r10, [r11, #28]
mov r10, r7
str r10, [r11, #12]
ldr r10, [r11, #8]
mov r10, r10
str r10, [r11, #24]
ldr r10, [r11, #8]
add r7, r10, #0
ldr r7, [r7]
b LU30
LU30:
mov r10, r8
str r10, [r11, #20]
mov r6, r8
mov r10, r8
str r10, [r11, #16]
mov r0, r8
ldr r10, [r11, #12]
mov r8, r10
ldr r10, [r11, #28]
mov r8, r10
ldr r10, [r11, #32]
mov r8, r10
ldr r10, [r11, #24]
mov r8, r10
b LU27

LU31:
mov r5, r4
mov r8, r0
mov r2, r7
ldr r10, [r11, #8]
mov r1, r10
ldr r10, [r11, #8]
add r6, r10, #0
ldr r6, [r6]
mov r3, #0
cmp r6, r7
movgt r3, #1
cmp r3, #1
beq LU32
bne LU33
LU32:
mov r5, r4
mov r8, r0
mov r2, r7
ldr r10, [r11, #8]
mov r1, r10
ldr r10, [r11, #8]
add r7, r10, #0
ldr r7, [r7]
b LU33
LU33:
mov r10, r4
str r10, [r11, #32]
mov r10, r4
str r10, [r11, #28]
mov r10, r4
str r10, [r11, #12]
mov r10, r4
str r10, [r11, #24]
mov r4, r2
mov r4, r8
mov r4, r5
mov r4, r1
b LU30


LU25:
mov r0, r0
bl printl
mov r0, r7
bl printl
b LU22
LU22:
pop {r4-r10}
sub r13, r11, #36
pop {fp, pc}

.size range, .-range
