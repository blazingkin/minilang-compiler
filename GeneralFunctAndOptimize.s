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
add r8, r0, #0
add r7, r8, #0
ldr r7, [r7]
mov r0, r7
mov r1, #2
bl __aeabi_idiv
mov r7, r0
add r6, r8, #0
str r7, [r6]
add r7, r8, #0
ldr r7, [r7]
mov r0, r7
mov r1, #2
bl __aeabi_idiv
mov r7, r0
add r6, r8, #0
str r7, [r6]
add r7, r8, #0
ldr r7, [r7]
mov r0, r7
mov r1, #2
bl __aeabi_idiv
mov r7, r0
add r8, r8, #0
str r7, [r8]
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
add r7, r0, #0
add r6, r1, #0
mov r8, #0
cmp r6, #0
movle r8, #1
cmp r8, #1
beq LU4
bne LU5
LU4:
add r8, r7, #0
ldr r8, [r8]
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU3
LU5:
add r8, r7, #0
ldr r8, [r8]
movw r5, #:lower16: 4
movt r5, #:upper16: 4
mul r5, r5, r8
add r8, r7, #0
str r5, [r8]
sub r8, r6, #1
mov r0, r7
mov r1, r8
bl multBy4xTimes
mov r8, r0
add r8, r7, #0
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
add r11, r13, #8
push {r4-r10}
mov r0, #4
bl malloc
mov r8, r0
mov r7, r8
movw r8, #:lower16: end
movt r8, #:upper16: end
movw r6, #:lower16: 1000000
movt r6, #:upper16: 1000000
str r6, [r8]
bl readchar
mov r5, r0
bl readchar
mov r8, r0
movw r6, #:lower16: interval
movt r6, #:upper16: interval
str r8, [r6]
mov r0, r5
bl printl
movw r8, #:lower16: interval
movt r8, #:upper16: interval
ldr r8, [r8]
mov r0, r8
bl printl
mov r8, #0
mov r5, r7
mov r7, #0
mov r6, #0
b LU10
LU10:
mov r6, r6
mov r7, r7
mov r4, r5
mov r8, r8
mov r5, #0
cmp r8, #50
movlt r5, #1
cmp r5, #1
beq LU11
bne LU12
LU11:
mov r5, #0
mov r7, r4
mov r8, r8
mov r6, r6
b LU13
LU13:
mov r6, r6
mov r10, r8
str r10, [r11, #4]
mov r4, r7
mov r7, r5
movw r8, #:lower16: end
movt r8, #:upper16: end
ldr r8, [r8]
mov r5, #0
cmp r7, r8
movle r5, #1
cmp r5, #1
beq LU14
bne LU15
LU14:
movw r6, #:lower16: 3628800
movt r6, #:upper16: 3628800
movw r8, #:lower16: 11
movt r8, #:upper16: 11
mul r6, r6, r8
add r5, r7, #1
add r8, r4, #0
str r5, [r8]
mov r0, r4
mov r1, #2
bl multBy4xTimes
mov r8, r0
mov r0, r4
bl divideBy8
movw r8, #:lower16: interval
movt r8, #:upper16: interval
ldr r8, [r8]
sub r8, r8, #1
mov r7, #0
cmp r8, #0
movle r7, #1
mov r2, r5
mov r1, r8
mov r8, r4
ldr r10, [r11, #4]
mov r3, r10
mov r0, r6
cmp r7, #1
beq LU16
bne LU17
LU16:
mov r2, r5
mov r1, #1
mov r8, r4
ldr r10, [r11, #4]
mov r3, r10
mov r0, r6
b LU17
LU17:
mov r6, r0
mov r4, r3
mov r7, r8
mov r5, r1
mov r8, r2
add r8, r8, r5
mov r5, r8
mov r7, r7
mov r8, r4
mov r6, r6
b LU13


LU15:
ldr r10, [r11, #4]
add r8, r10, #1
mov r8, r8
mov r5, r4
mov r7, r7
mov r6, r6
b LU10

LU12:
mov r0, r7
bl printl
mov r0, r6
bl printl
mov r0, #0
b LU9
LU9:
pop {r4-r10}
sub r13, r11, #8
pop {fp, pc}
b LU9

.size main, .-main
