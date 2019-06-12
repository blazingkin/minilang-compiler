.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global main
main:
LU14:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl readchar
mov r8, r0
mov r0, r8
bl hailstone
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
.global hailstone
hailstone:
LU4:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, r8
add r8, r0, #0
b LU6
LU6:
mov r6, r7
movw r8, :lower16: 1
movt r8, :upper16: 1
cmp r8, #1
beq LU7
bne LU8
LU7:
mov r0, r6
bl print
mov r0, r6
mov r1, #2
bl mod
mov r7, r0
mov r8, #0
cmp r7, #1
moveq r8, #1
cmp r8, #1
beq LU9
bne LU11
LU9:
mov r7, r6
movw r8, #:lower16: 3
movt r8, #:upper16: 3
mul r8, r8, r6
add r6, r8, #1
b LU10
LU10:
mov r8, r7
mov r7, #0
cmp r8, #1
movle r7, #1
cmp r7, #1
beq LU12
bne LU13
LU12:
mov r0, r8
bl printl
b LU5
LU5:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
LU13:
mov r7, r8
b LU6

LU11:
mov r7, r6
mov r0, r6
mov r1, #2
bl __aeabi_idiv
mov r6, r0
b LU10

LU8:
b LU5


.size hailstone, .-hailstone
.text
.align 2
.global mod
mod:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r7, r1, #0
mov r0, r6
mov r1, r7
bl __aeabi_idiv
mov r8, r0
mul r8, r8, r7
sub r8, r6, r8
mov r0, r8
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3

.size mod, .-mod
