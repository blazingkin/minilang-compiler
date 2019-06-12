.arch armv7-a
.global __aeabi_idiv
.comm interval 4,4
.comm end 4,4
.text
.align 2
.global divideBy8
divideBy8:
LU6:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r8, r7, #0
ldr r8, [r8]
mov r0, r8
mov r1, #2
bl __aeabi_idiv
mov r6, r0
add r8, r7, #0
str r6, [r8]
add r8, r7, #0
ldr r8, [r8]
mov r0, r8
mov r1, #2
bl __aeabi_idiv
mov r8, r0
add r6, r7, #0
str r8, [r6]
add r8, r7, #0
ldr r8, [r8]
mov r0, r8
mov r1, #2
bl __aeabi_idiv
mov r8, r0
add r7, r7, #0
str r8, [r7]
b LU7
LU7:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size divideBy8, .-divideBy8
.text
.align 2
.global multBy4xTimes
multBy4xTimes:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r7, r1, #0
mov r8, #0
cmp r7, #0
movle r8, #1
cmp r8, #1
beq LU4
bne LU5
LU4:
add r8, r6, #0
ldr r8, [r8]
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3
LU5:
add r8, r6, #0
ldr r5, [r8]
movw r8, #:lower16: 4
movt r8, #:upper16: 4
mul r8, r8, r5
add r5, r6, #0
str r8, [r5]
sub r8, r7, #1
mov r0, r6
mov r1, r8
bl multBy4xTimes
mov r8, r0
add r8, r6, #0
ldr r8, [r8]
mov r0, r8
b LU3


.size multBy4xTimes, .-multBy4xTimes
.text
.align 2
.global main
main:
LU8:
push {fp, lr}
add r11, r13, #32
push {r4-r10}
mov r7, r8
mov r6, #0
mov r5, #0
mov r10, #0
str r10, [r11, #4]
mov r0, #4
bl malloc
mov r8, r0
mov r8, r8
movw r4, #:lower16: end
movt r4, #:upper16: end
movw r8, #:lower16: 1000000
movt r8, #:upper16: 1000000
str r8, [r4]
bl readchar
mov r4, r0
bl readchar
mov r0, r0
movw r8, #:lower16: interval
movt r8, #:upper16: interval
str r0, [r8]
mov r0, r4
bl printl
movw r8, #:lower16: interval
movt r8, #:upper16: interval
ldr r8, [r8]
mov r0, r8
bl printl
b LU10
LU10:
mov r5, r5
mov r6, r6
mov r7, r7
ldr r10, [r11, #4]
mov r8, r10
mov r4, #0
cmp r8, #50
movlt r4, #1
cmp r4, #1
beq LU11
bne LU12
LU11:
mov r7, r7
mov r8, r8
mov r3, r5
mov r4, #0
b LU13
LU13:
mov r5, r3
mov r10, r8
str r10, [r11, #28]
mov r10, r7
str r10, [r11, #8]
mov r6, r4
movw r7, #:lower16: end
movt r7, #:upper16: end
ldr r1, [r7]
mov r7, #0
cmp r6, r1
movle r7, #1
cmp r7, #1
beq LU14
bne LU15
LU14:
mov r10, r3
str r10, [r11, #16]
ldr r10, [r11, #8]
mov r5, r10
ldr r10, [r11, #28]
mov r10, r10
str r10, [r11, #24]
mov r10, r8
str r10, [r11, #12]
mov r10, r4
str r10, [r11, #20]
movw r7, #:lower16: 1
movt r7, #:upper16: 1
movw r8, #:lower16: 2
movt r8, #:upper16: 2
mul r7, r7, r8
movw r8, #:lower16: 3
movt r8, #:upper16: 3
mul r7, r7, r8
movw r8, #:lower16: 4
movt r8, #:upper16: 4
mul r7, r7, r8
movw r8, #:lower16: 5
movt r8, #:upper16: 5
mul r8, r7, r8
movw r7, #:lower16: 6
movt r7, #:upper16: 6
mul r7, r8, r7
movw r8, #:lower16: 7
movt r8, #:upper16: 7
mul r7, r7, r8
movw r8, #:lower16: 8
movt r8, #:upper16: 8
mul r7, r7, r8
movw r8, #:lower16: 9
movt r8, #:upper16: 9
mul r8, r7, r8
movw r7, #:lower16: 10
movt r7, #:upper16: 10
mul r7, r8, r7
movw r8, #:lower16: 11
movt r8, #:upper16: 11
mul r8, r7, r8
add r4, r6, #1
ldr r10, [r11, #8]
add r7, r10, #0
str r4, [r7]
ldr r10, [r11, #8]
add r7, r10, #0
ldr r7, [r7]
ldr r10, [r11, #8]
mov r0, r10
mov r1, #2
bl multBy4xTimes
mov r7, r0
ldr r10, [r11, #8]
mov r0, r10
bl divideBy8
movw r7, #:lower16: interval
movt r7, #:upper16: interval
ldr r7, [r7]
sub r3, r7, #1
mov r7, #0
cmp r3, #0
movle r7, #1
mov r7, #0
cmp r3, #0
movle r7, #1
cmp r7, #1
beq LU16
bne LU17
LU16:
mov r10, #1
str r10, [r11, #16]
ldr r10, [r11, #8]
mov r5, r10
ldr r10, [r11, #28]
mov r10, r10
str r10, [r11, #24]
mov r10, r8
str r10, [r11, #12]
mov r10, r4
str r10, [r11, #20]
b LU17
LU17:
mov r7, r6
mov r8, r6
mov r3, r6
mov r4, r6
ldr r10, [r11, #12]
mov r6, r10
ldr r10, [r11, #24]
mov r6, r10
mov r6, r5
ldr r10, [r11, #16]
mov r5, r10
ldr r10, [r11, #20]
mov r6, r10
add r6, r6, r5
b LU13


LU15:
ldr r10, [r11, #8]
mov r7, r10
mov r6, r6
mov r5, r5
mov r10, r8
str r10, [r11, #4]
ldr r10, [r11, #28]
add r8, r10, #1
b LU10

LU12:
mov r0, r6
bl printl
mov r0, r5
bl printl
mov r0, #0
b LU9
LU9:
pop {r4-r10}
sub r13, r11, #32
pop {fp, pc}
mov r0, #0
b LU9

.size main, .-main
