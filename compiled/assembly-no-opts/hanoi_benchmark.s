.arch armv7-a
.global __aeabi_idiv
.comm peg1 4,4
.comm peg2 4,4
.comm peg3 4,4
.comm numMoves 4,4
.text
.align 2
.global hanoi
hanoi:
LU16:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r4, r0, #0
add r6, r1, #0
add r7, r2, #0
add r5, r3, #0
mov r8, #0
cmp r4, #1
moveq r8, #1
cmp r8, #1
beq LU18
bne LU20
LU18:
mov r0, r6
mov r1, r7
bl move
b LU19
LU19:
b LU17
LU17:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
LU20:
sub r8, r4, #1
mov r0, r8
mov r1, r6
mov r2, r5
mov r3, r7
bl hanoi
mov r0, r6
mov r1, r7
bl move
sub r8, r4, #1
mov r0, r8
mov r1, r5
mov r2, r7
mov r3, r6
bl hanoi
b LU19


.size hanoi, .-hanoi
.text
.align 2
.global printPeg
printPeg:
LU21:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r5, r8
add r8, r0, #0
b LU23
LU23:
mov r8, r5
mov r7, #0
cmp r8, #0
movne r7, #1
cmp r7, #1
beq LU24
bne LU25
LU24:
mov r5, r6
add r7, r8, #0
ldr r7, [r7]
mov r0, r7
bl printl
add r8, r8, #4
ldr r6, [r8]
b LU23

LU25:
b LU22
LU22:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size printPeg, .-printPeg
.text
.align 2
.global move
move:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r5, r1, #0
mov r4, #0
cmp r7, #1
moveq r4, #1
cmp r4, #1
beq LU4
bne LU6
LU4:
mov r7, r8
mov r5, r5
movw r8, #:lower16: peg1
movt r8, #:upper16: peg1
ldr r8, [r8]
movw r8, #:lower16: peg1
movt r8, #:upper16: peg1
ldr r8, [r8]
add r8, r8, #4
ldr r8, [r8]
movw r6, #:lower16: peg1
movt r6, #:upper16: peg1
str r8, [r6]
b LU5
LU5:
mov r8, r7
mov r7, r5
mov r6, #0
cmp r7, #1
moveq r6, #1
cmp r6, #1
beq LU10
bne LU12
LU10:
movw r7, #:lower16: peg1
movt r7, #:upper16: peg1
ldr r7, [r7]
add r6, r8, #4
str r7, [r6]
movw r7, #:lower16: peg1
movt r7, #:upper16: peg1
str r8, [r7]
b LU11
LU11:
movw r8, #:lower16: numMoves
movt r8, #:upper16: numMoves
ldr r8, [r8]
add r8, r8, #1
movw r7, #:lower16: numMoves
movt r7, #:upper16: numMoves
str r8, [r7]
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
LU12:
mov r6, #0
cmp r7, #2
moveq r6, #1
cmp r6, #1
beq LU13
bne LU15
LU13:
movw r7, #:lower16: peg2
movt r7, #:upper16: peg2
ldr r7, [r7]
add r6, r8, #4
str r7, [r6]
movw r7, #:lower16: peg2
movt r7, #:upper16: peg2
str r8, [r7]
b LU14
LU14:
b LU11

LU15:
movw r7, #:lower16: peg3
movt r7, #:upper16: peg3
ldr r6, [r7]
add r7, r8, #4
str r6, [r7]
movw r7, #:lower16: peg3
movt r7, #:upper16: peg3
str r8, [r7]
b LU14

LU6:
mov r8, #0
cmp r7, #2
moveq r8, #1
cmp r8, #1
beq LU7
bne LU9
LU7:
mov r4, r2
mov r3, r5
movw r8, #:lower16: peg2
movt r8, #:upper16: peg2
ldr r2, [r8]
movw r8, #:lower16: peg2
movt r8, #:upper16: peg2
ldr r8, [r8]
add r8, r8, #4
ldr r8, [r8]
movw r7, #:lower16: peg2
movt r7, #:upper16: peg2
str r8, [r7]
b LU8
LU8:
mov r7, r6
mov r5, r6
mov r6, r4
mov r6, r3
b LU5

LU9:
mov r4, r2
mov r3, r5
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
ldr r2, [r8]
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
ldr r8, [r8]
add r8, r8, #4
ldr r7, [r8]
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
str r7, [r8]
b LU8


.size move, .-move
.text
.align 2
.global main
main:
LU26:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r8, #:lower16: peg1
movt r8, #:upper16: peg1
mov r7, #0
str r7, [r8]
movw r8, #:lower16: peg2
movt r8, #:upper16: peg2
mov r7, #0
str r7, [r8]
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
mov r7, #0
str r7, [r8]
movw r7, #:lower16: numMoves
movt r7, #:upper16: numMoves
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
bl readchar
mov r7, r0
mov r8, #0
cmp r7, #1
movge r8, #1
cmp r8, #1
beq LU28
bne LU29
LU28:
mov r6, r7
mov r5, r7
b LU30
LU30:
mov r6, r6
mov r7, r5
mov r5, #0
cmp r7, #0
movne r5, #1
cmp r5, #1
beq LU31
bne LU32
LU31:
mov r6, r6
mov r5, r8
mov r0, #8
bl malloc
mov r8, r0
mov r4, r8
add r8, r4, #0
str r7, [r8]
movw r8, #:lower16: peg1
movt r8, #:upper16: peg1
ldr r8, [r8]
add r3, r4, #4
str r8, [r3]
movw r8, #:lower16: peg1
movt r8, #:upper16: peg1
str r4, [r8]
sub r8, r7, #1
b LU30

LU32:
mov r0, #1
bl printl
movw r8, #:lower16: peg1
movt r8, #:upper16: peg1
ldr r8, [r8]
mov r0, r8
bl printPeg
mov r0, #2
bl printl
movw r8, #:lower16: peg2
movt r8, #:upper16: peg2
ldr r8, [r8]
mov r0, r8
bl printPeg
mov r0, #3
bl printl
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
ldr r8, [r8]
mov r0, r8
bl printPeg
mov r0, r6
mov r1, #1
mov r2, #3
mov r3, #2
bl hanoi
mov r0, #1
bl printl
movw r8, #:lower16: peg1
movt r8, #:upper16: peg1
ldr r8, [r8]
mov r0, r8
bl printPeg
mov r0, #2
bl printl
movw r8, #:lower16: peg2
movt r8, #:upper16: peg2
ldr r8, [r8]
mov r0, r8
bl printPeg
mov r0, #3
bl printl
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
ldr r8, [r8]
mov r0, r8
bl printPeg
movw r8, #:lower16: numMoves
movt r8, #:upper16: numMoves
ldr r8, [r8]
mov r0, r8
bl printl
b LU33
LU33:
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
ldr r8, [r8]
mov r7, #0
cmp r8, #0
movne r7, #1
cmp r7, #1
beq LU34
bne LU35
LU34:
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
ldr r7, [r8]
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
ldr r8, [r8]
add r8, r8, #4
ldr r6, [r8]
movw r8, #:lower16: peg3
movt r8, #:upper16: peg3
str r6, [r8]
mov r8, r7
mov r0, r8
bl free
b LU33

LU35:
b LU29
LU29:
mov r0, #0
b LU27
LU27:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU27


.size main, .-main
