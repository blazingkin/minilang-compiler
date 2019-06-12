.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU20:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r6, r8
mov r7, r8
bl readchar
mov r8, r0
mov r0, r8
bl convertToDecimal
mov r8, r0
mul r8, r8, r8
b LU22
LU22:
mov r6, r6
mov r8, r7
mov r7, #0
cmp r8, #0
movgt r7, #1
cmp r7, #1
beq LU23
bne LU24
LU23:
mov r6, r6
mov r7, r5
mov r0, r8
bl wait
mov r5, r0
sub r5, r8, #1
b LU22

LU24:
mov r0, r6
bl printl
mov r0, #0
b LU21
LU21:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU21

.size main, .-main
.text
.align 2
.global recursiveDecimalSum
recursiveDecimalSum:
LU12:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
ldr r10, [r11, #8]
mov r6, r10
add r5, r0, #0
add r10, r1, #0
str r10, [r11, #8]
add r10, r2, #0
str r10, [r11, #4]
mov r8, #0
cmp r5, #0
movgt r8, #1
cmp r8, #1
beq LU14
bne LU15
LU14:
mov r10, r5
str r10, [r11, #12]
ldr r10, [r11, #8]
mov r7, r10
ldr r10, [r11, #4]
mov r8, r10
ldr r10, [r11, #8]
mov r6, r10
mov r0, r5
mov r1, #10
bl __aeabi_idiv
mov r1, r0
movw r0, #:lower16: 10
movt r0, #:upper16: 10
mul r1, r1, r0
sub r0, r5, r1
mov r1, #0
cmp r0, #1
moveq r1, #1
cmp r1, #1
beq LU16
bne LU17
LU16:
mov r7, r4
ldr r10, [r11, #4]
mov r8, r10
mov r10, r5
str r10, [r11, #12]
mov r0, #2
ldr r10, [r11, #4]
mov r1, r10
bl power
mov r6, r0
ldr r10, [r11, #8]
add r4, r10, r6
b LU17
LU17:
mov r6, r8
mov r7, r7
ldr r10, [r11, #12]
mov r8, r10
mov r0, r8
mov r1, #10
bl __aeabi_idiv
mov r5, r0
add r8, r6, #1
mov r0, r5
mov r1, r7
mov r2, r8
bl recursiveDecimalSum
mov r8, r0
mov r0, r8
b LU13
LU13:
pop {r4-r10}
sub r13, r11, #16
pop {fp, pc}
mov r0, #0
b LU13

LU15:
mov r8, r6
mov r0, r8
b LU13


.size recursiveDecimalSum, .-recursiveDecimalSum
.text
.align 2
.global convertToDecimal
convertToDecimal:
LU18:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
mov r1, #0
mov r2, #0
bl recursiveDecimalSum
mov r8, r0
mov r0, r8
b LU19
LU19:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU19

.size convertToDecimal, .-convertToDecimal
.text
.align 2
.global power
power:
LU7:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r3, #1
mov r8, r6
mov r7, r6
add r6, r0, #0
add r6, r1, #0
b LU9
LU9:
mov r2, r8
mov r6, r3
mov r5, r7
mov r8, #0
cmp r5, #0
movgt r8, #1
cmp r8, #1
beq LU10
bne LU11
LU10:
mov r3, r4
mov r8, r2
mov r7, r4
mul r4, r6, r2
sub r4, r5, #1
b LU9

LU11:
mov r0, r6
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU8

.size power, .-power
.text
.align 2
.global wait
wait:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r6, r8
add r8, r0, #0
b LU4
LU4:
mov r8, r6
mov r6, #0
cmp r8, #0
movgt r6, #1
cmp r6, #1
beq LU5
bne LU6
LU5:
mov r6, r7
sub r7, r8, #1
b LU4

LU6:
mov r0, #0
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3

.size wait, .-wait
