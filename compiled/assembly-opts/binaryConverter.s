.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global recursiveDecimalSum
recursiveDecimalSum:
LU12:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
mov r10, r6
str r10, [r11, #8]
add r4, r0, #0
add r6, r1, #0
add r8, r2, #0
mov r7, #0
cmp r4, #0
movgt r7, #1
cmp r7, #1
beq LU14
bne LU15
LU14:
mov r10, r6
str r10, [r11, #12]
mov r10, r8
str r10, [r11, #4]
mov r10, r6
str r10, [r11, #8]
mov r5, r4
mov r0, r4
mov r1, #10
bl __aeabi_idiv
mov r1, r0
movw r7, #:lower16: 10
movt r7, #:upper16: 10
mul r7, r1, r7
sub r1, r4, r7
mov r7, #0
cmp r1, #1
moveq r7, #1
cmp r7, #1
beq LU16
bne LU17
LU16:
mov r10, r8
str r10, [r11, #12]
mov r10, r8
str r10, [r11, #4]
mov r5, r4
mov r0, #2
mov r1, r8
bl power
mov r8, r0
add r8, r6, r8
b LU17
LU17:
ldr r10, [r11, #4]
mov r7, r10
ldr r10, [r11, #12]
mov r6, r10
mov r8, r5
mov r0, r8
mov r1, #10
bl __aeabi_idiv
mov r8, r0
add r7, r7, #1
mov r0, r8
mov r1, r6
mov r2, r7
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
ldr r10, [r11, #8]
mov r8, r10
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
mov r4, #1
mov r3, r8
mov r6, r8
add r8, r0, #0
add r8, r1, #0
b LU9
LU9:
mov r2, r3
mov r5, r4
mov r8, r6
mov r6, #0
cmp r8, #0
movgt r6, #1
cmp r6, #1
beq LU10
bne LU11
LU10:
mov r4, r7
mov r3, r2
mov r6, r7
mul r7, r5, r2
sub r7, r8, #1
b LU9

LU11:
mov r0, r5
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
mov r8, r7
add r7, r0, #0
b LU4
LU4:
mov r7, r8
mov r8, #0
cmp r7, #0
movgt r8, #1
cmp r8, #1
beq LU5
bne LU6
LU5:
mov r8, r6
sub r6, r7, #1
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
.text
.align 2
.global main
main:
LU20:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r5, r8
mov r4, r8
bl readchar
mov r8, r0
mov r0, r8
bl convertToDecimal
mov r8, r0
mul r8, r8, r8
b LU22
LU22:
mov r5, r5
mov r6, r4
mov r8, #0
cmp r6, #0
movgt r8, #1
cmp r8, #1
beq LU23
bne LU24
LU23:
mov r5, r5
mov r4, r7
mov r0, r6
bl wait
mov r8, r0
sub r7, r6, #1
b LU22

LU24:
mov r0, r5
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
