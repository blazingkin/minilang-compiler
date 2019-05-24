.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global isqrt
isqrt:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r7, #1
mov r5, r8
mov r8, #3
b LU4
LU4:
mov r6, r8
mov r5, r5
mov r7, r7
mov r8, #0
cmp r7, r5
movle r8, #1
cmp r8, #1
beq LU5
bne LU6
LU5:
add r8, r7, r6
add r6, r6, #2
mov r7, r8
mov r5, r5
mov r8, r6
b LU4

LU6:
mov r0, r6
mov r1, #2
bl __aeabi_idiv
mov r8, r0
sub r8, r8, #1
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU3

.size isqrt, .-isqrt
.text
.align 2
.global prime
prime:
LU7:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #2
movlt r8, #1
cmp r8, #1
beq LU9
bne LU11
LU9:
mov r0, #0
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU8
LU11:
mov r0, r7
bl isqrt
mov r8, r0
mov r4, #2
mov r5, r8
mov r8, r7
b LU12
LU12:
mov r6, r8
mov r5, r5
mov r8, r4
mov r7, #0
cmp r8, r5
movle r7, #1
cmp r7, #1
beq LU13
bne LU14
LU13:
mov r0, r6
mov r1, r8
bl __aeabi_idiv
mov r7, r0
mul r7, r7, r8
sub r7, r6, r7
mov r4, #0
cmp r7, #0
moveq r4, #1
cmp r4, #1
beq LU15
bne LU16
LU15:
mov r0, #0
b LU8

LU16:
add r8, r8, #1
mov r4, r8
mov r5, r5
mov r8, r6
b LU12

LU14:
mov r0, #1
b LU8


.size prime, .-prime
.text
.align 2
.global main
main:
LU17:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl readchar
mov r8, r0
mov r7, #0
mov r8, r8
b LU19
LU19:
mov r6, r8
mov r7, r7
mov r8, #0
cmp r7, r6
movle r8, #1
cmp r8, #1
beq LU20
bne LU21
LU20:
mov r0, r7
bl prime
mov r8, r0
mov r4, r8
mov r8, r7
mov r5, r6
cmp r4, #1
beq LU22
bne LU23
LU22:
mov r0, r7
bl printl
mov r8, r7
mov r5, r6
b LU23
LU23:
mov r6, r5
mov r8, r8
add r8, r8, #1
mov r7, r8
mov r8, r6
b LU19


LU21:
mov r0, #0
b LU18
LU18:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU18

.size main, .-main
