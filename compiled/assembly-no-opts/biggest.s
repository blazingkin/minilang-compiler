.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU17:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl getIntList
mov r8, r0
mov r0, r8
bl biggestInList
mov r8, r0
mov r0, r8
bl printl
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
.global biggestInList
biggestInList:
LU12:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, r8
mov r5, r8
add r8, r0, #0
add r8, r8, #0
ldr r8, [r8]
b LU14
LU14:
mov r4, r7
mov r6, r5
add r8, r6, #4
ldr r7, [r8]
mov r8, #0
cmp r7, #0
movne r8, #1
cmp r8, #1
beq LU15
bne LU16
LU15:
mov r7, r1
mov r5, r0
add r8, r6, #0
ldr r8, [r8]
mov r0, r4
mov r1, r8
bl biggest
mov r1, r0
add r8, r6, #4
ldr r0, [r8]
b LU14

LU16:
mov r0, r4
b LU13
LU13:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU13

.size biggestInList, .-biggestInList
.text
.align 2
.global biggest
biggest:
LU7:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r6, r1, #0
mov r8, #0
cmp r7, r6
movgt r8, #1
cmp r8, #1
beq LU9
bne LU11
LU9:
mov r0, r7
b LU8
LU8:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU8
LU11:
mov r0, r6
b LU8


.size biggest, .-biggest
.text
.align 2
.global getIntList
getIntList:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #8
bl malloc
mov r8, r0
mov r8, r8
bl readchar
mov r7, r0
mov r6, #0
movw r6, #:lower16: -1
movt r6, #:upper16: -1
cmp r7, r6
moveq r6, #1
cmp r6, #1
beq LU4
bne LU6
LU4:
add r6, r8, #0
str r7, [r6]
add r7, r8, #4
mov r6, #0
str r6, [r7]
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3
LU6:
add r6, r8, #0
str r7, [r6]
bl getIntList
mov r6, r0
add r7, r8, #4
str r6, [r7]
mov r0, r8
b LU3


.size getIntList, .-getIntList
