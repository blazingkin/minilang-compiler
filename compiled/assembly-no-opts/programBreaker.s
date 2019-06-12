.arch armv7-a
.global __aeabi_idiv
.comm GLOBAL 4,4
.comm count 4,4
.text
.align 2
.global main
main:
LU14:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, r6
bl readchar
mov r6, r0
b LU16
LU16:
mov r6, r7
mov r7, #0
movw r7, #:lower16: 10000
movt r7, #:upper16: 10000
cmp r6, r7
movlt r7, #1
cmp r7, #1
beq LU17
bne LU18
LU17:
mov r7, r8
mov r0, #3
mov r1, r6
mov r2, #5
bl fun1
mov r8, r0
mov r0, r8
bl printl
add r8, r6, #1
b LU16

LU18:
mov r0, #0
b LU15
LU15:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU15

.size main, .-main
.text
.align 2
.global fun1
fun1:
LU7:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r6, r1, #0
add r5, r2, #0
movw r7, #:lower16: 5
movt r7, #:upper16: 5
add r4, r7, #6
movw r7, #:lower16: 2
movt r7, #:upper16: 2
mul r7, r8, r7
sub r4, r4, r7
mov r0, #4
mov r1, r6
bl __aeabi_idiv
mov r7, r0
add r7, r4, r7
add r5, r7, r5
mov r7, #0
cmp r5, r6
movgt r7, #1
cmp r7, #1
beq LU9
bne LU11
LU9:
mov r0, r5
mov r1, r8
bl fun2
mov r8, r0
mov r0, r8
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU8
LU11:
mov r8, #0
movw r8, #:lower16: 5
movt r8, #:upper16: 5
cmp r8, #6
movlt r8, #1
mov r7, #0
cmp r5, r6
movle r7, #1
and r8, r8, r7
cmp r8, #1
beq LU12
bne LU13
LU12:
mov r0, r5
mov r1, r6
bl fun2
mov r8, r0
mov r0, r8
b LU8

LU13:
b LU10
LU10:
mov r0, r5
b LU8


.size fun1, .-fun1
.text
.align 2
.global fun2
fun2:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r7, r1, #0
mov r8, #0
cmp r6, #0
moveq r8, #1
cmp r8, #1
beq LU4
bne LU6
LU4:
mov r0, r7
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3
LU6:
sub r8, r6, #1
mov r0, r8
mov r1, r7
bl fun2
mov r8, r0
mov r0, r8
b LU3


.size fun2, .-fun2
