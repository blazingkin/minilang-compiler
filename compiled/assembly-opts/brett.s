.arch armv7-a
.global __aeabi_idiv
.comm gi1 4,4
.comm gb1 4,4
.comm gs1 4,4
.comm counter 4,4
.text
.align 2
.global returnstruct
returnstruct:
LU35:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
b LU36
LU36:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU36

.size returnstruct, .-returnstruct
.text
.align 2
.global returnbool
returnbool:
LU33:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
b LU34
LU34:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU34

.size returnbool, .-returnbool
.text
.align 2
.global returnint
returnint:
LU31:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
b LU32
LU32:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU32

.size returnint, .-returnint
.text
.align 2
.global printgroup
printgroup:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, #1
bl print
mov r0, #0
bl print
mov r0, #1
bl print
mov r0, #0
bl print
mov r0, #1
bl print
mov r0, #0
bl print
mov r0, r8
bl printl
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU3

.size printgroup, .-printgroup
.text
.align 2
.global setcounter
setcounter:
LU4:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
movw r7, #:lower16: counter
movt r7, #:upper16: counter
str r8, [r7]
mov r0, #1
b LU5
LU5:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU5

.size setcounter, .-setcounter
.text
.align 2
.global takealltypes
takealltypes:
LU6:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r7, r1, #0
add r6, r2, #0
mov r5, #0
cmp r8, #3
moveq r5, #1
cmp r5, #1
beq LU8
bne LU10
LU8:
mov r8, r6
mov r7, r7
mov r0, #1
bl printl
b LU9
LU9:
mov r8, r8
mov r7, r7
cmp r7, #1
beq LU11
bne LU13
LU11:
mov r8, r8
mov r0, #1
bl printl
b LU12
LU12:
mov r8, r8
add r8, r8, #4
ldr r8, [r8]
cmp r8, #1
beq LU14
bne LU16
LU14:
mov r0, #1
bl printl
b LU15
LU15:
LU16:
mov r0, #0
bl printl
b LU15

LU13:
mov r8, r8
mov r0, #0
bl printl
b LU12

LU10:
mov r8, r6
mov r7, r7
mov r0, #0
bl printl
b LU9


.size takealltypes, .-takealltypes
.text
.align 2
.global tonofargs
tonofargs:
LU17:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, #0
cmp r8, #5
moveq r7, #1
cmp r7, #1
beq LU19
bne LU21
LU19:
mov r6, r8
mov r7, r8
mov r5, r8
mov r0, #1
bl printl
b LU20
LU20:
mov r7, r7
mov r8, r6
mov r6, r5
mov r5, #0
cmp r6, #6
moveq r5, #1
cmp r5, #1
beq LU22
bne LU24
LU22:
mov r7, r7
mov r5, r8
mov r0, #1
bl printl
b LU23
LU23:
mov r8, r7
mov r7, r5
mov r6, #0
cmp r7, #7
moveq r6, #1
cmp r6, #1
beq LU25
bne LU27
LU25:
mov r8, r8
mov r0, #1
bl printl
b LU26
LU26:
mov r7, r8
mov r8, #0
cmp r7, #8
moveq r8, #1
cmp r8, #1
beq LU28
bne LU30
LU28:
mov r0, #1
bl printl
b LU29
LU29:
LU30:
mov r0, #0
bl print
mov r0, r7
bl printl
b LU29

LU27:
mov r8, r8
mov r0, #0
bl print
mov r0, r7
bl printl
b LU26

LU24:
mov r7, r7
mov r5, r8
mov r0, #0
bl print
mov r0, r6
bl printl
b LU23

LU21:
mov r6, r8
mov r7, r8
mov r5, r8
mov r0, #0
bl print
mov r0, r8
bl printl
b LU20


.size tonofargs, .-tonofargs
