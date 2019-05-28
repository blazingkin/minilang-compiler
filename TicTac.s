.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global cleanBoard
cleanBoard:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r6, r8, #0
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r6]
add r7, r8, #4
movw r6, #:lower16: 0
movt r6, #:upper16: 0
str r6, [r7]
add r7, r8, #8
movw r6, #:lower16: 0
movt r6, #:upper16: 0
str r6, [r7]
add r6, r8, #12
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r6]
add r6, r8, #16
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r6]
add r7, r8, #20
movw r6, #:lower16: 0
movt r6, #:upper16: 0
str r6, [r7]
add r6, r8, #24
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r6]
add r7, r8, #28
movw r6, #:lower16: 0
movt r6, #:upper16: 0
str r6, [r7]
add r8, r8, #32
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r8]
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size cleanBoard, .-cleanBoard
.text
.align 2
.global printBoard
printBoard:
LU4:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r8, r7, #0
ldr r8, [r8]
mov r0, r8
bl print
add r8, r7, #4
ldr r8, [r8]
mov r0, r8
bl print
add r8, r7, #8
ldr r8, [r8]
mov r0, r8
bl printl
add r8, r7, #12
ldr r8, [r8]
mov r0, r8
bl print
add r8, r7, #16
ldr r8, [r8]
mov r0, r8
bl print
add r8, r7, #20
ldr r8, [r8]
mov r0, r8
bl printl
add r8, r7, #24
ldr r8, [r8]
mov r0, r8
bl print
add r8, r7, #28
ldr r8, [r8]
mov r0, r8
bl print
add r8, r7, #32
ldr r8, [r8]
mov r0, r8
bl printl
b LU5
LU5:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size printBoard, .-printBoard
.text
.align 2
.global printMoveBoard
printMoveBoard:
LU6:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #123
bl printl
mov r0, #456
bl printl
movw r8, #:lower16: 789
movt r8, #:upper16: 789
mov r0, r8
bl printl
b LU7
LU7:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size printMoveBoard, .-printMoveBoard
.text
.align 2
.global placePiece
placePiece:
LU8:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r7, r1, #0
add r5, r2, #0
mov r8, #0
cmp r5, #1
moveq r8, #1
cmp r8, #1
beq LU10
bne LU12
LU10:
add r8, r6, #0
str r7, [r8]
b LU11
LU11:
b LU9
LU9:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
LU12:
mov r8, #0
cmp r5, #2
moveq r8, #1
cmp r8, #1
beq LU13
bne LU15
LU13:
add r8, r6, #4
str r7, [r8]
b LU14
LU14:
b LU11

LU15:
mov r8, #0
cmp r5, #3
moveq r8, #1
cmp r8, #1
beq LU16
bne LU18
LU16:
add r8, r6, #8
str r7, [r8]
b LU17
LU17:
b LU14

LU18:
mov r8, #0
cmp r5, #4
moveq r8, #1
cmp r8, #1
beq LU19
bne LU21
LU19:
add r8, r6, #12
str r7, [r8]
b LU20
LU20:
b LU17

LU21:
mov r8, #0
cmp r5, #5
moveq r8, #1
cmp r8, #1
beq LU22
bne LU24
LU22:
add r8, r6, #16
str r7, [r8]
b LU23
LU23:
b LU20

LU24:
mov r8, #0
cmp r5, #6
moveq r8, #1
cmp r8, #1
beq LU25
bne LU27
LU25:
add r8, r6, #20
str r7, [r8]
b LU26
LU26:
b LU23

LU27:
mov r8, #0
cmp r5, #7
moveq r8, #1
cmp r8, #1
beq LU28
bne LU30
LU28:
add r8, r6, #24
str r7, [r8]
b LU29
LU29:
b LU26

LU30:
mov r8, #0
cmp r5, #8
moveq r8, #1
cmp r8, #1
beq LU31
bne LU33
LU31:
add r8, r6, #28
str r7, [r8]
b LU32
LU32:
b LU29

LU33:
mov r8, #0
cmp r5, #9
moveq r8, #1
cmp r8, #1
beq LU34
bne LU35
LU34:
add r8, r6, #32
str r7, [r8]
b LU35
LU35:
b LU32



.size placePiece, .-placePiece
.text
.align 2
.global checkWinner
