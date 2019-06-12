.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU10:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r8, #0
b LU12
LU12:
mov r7, r8
mov r8, #0
movw r8, #:lower16: -1
movt r8, #:upper16: -1
cmp r7, r8
movne r8, #1
cmp r8, #1
beq LU13
bne LU14
LU13:
mov r8, r6
bl readchar
mov r7, r0
bl readchar
mov r5, r0
mov r0, r7
bl fact
mov r6, r0
mov r0, r5
bl fact
mov r7, r0
mov r0, r6
mov r1, r7
bl sum
mov r7, r0
mov r0, r7
bl printl
bl readchar
mov r6, r0
b LU12

LU14:
mov r0, #0
b LU11
LU11:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU11

.size main, .-main
.text
.align 2
.global fact
fact:
LU4:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
mov r8, #0
cmp r6, #1
moveq r8, #1
mov r7, #0
cmp r6, #0
moveq r7, #1
orr r8, r8, r7
cmp r8, #1
beq LU6
bne LU7
LU6:
mov r0, #1
b LU5
LU5:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU5
LU7:
mov r8, #0
cmp r6, #1
movle r8, #1
cmp r8, #1
beq LU8
bne LU9
LU8:
movw r8, #:lower16: -1
movt r8, #:upper16: -1
mul r8, r8, r6
mov r0, r8
bl fact
mov r8, r0
mov r0, r8
b LU5

LU9:
sub r8, r6, #1
mov r0, r8
bl fact
mov r8, r0
mul r8, r6, r8
mov r0, r8
b LU5


.size fact, .-fact
.text
.align 2
.global sum
sum:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r7, r1, #0
add r8, r8, r7
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3

.size sum, .-sum
