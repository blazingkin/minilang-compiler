.arch armv7-a
.global __aeabi_idiv
.text
.align 2
.global placePiece
placePiece:
LU8:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r5, r0, #0
add r7, r1, #0
add r6, r2, #0
mov r8, #0
cmp r6, #1
moveq r8, #1
cmp r8, #1
beq LU10
bne LU12
LU10:
add r8, r5, #0
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
cmp r6, #2
moveq r8, #1
cmp r8, #1
beq LU13
bne LU15
LU13:
add r8, r5, #4
str r7, [r8]
b LU14
LU14:
b LU11

LU15:
mov r8, #0
cmp r6, #3
moveq r8, #1
cmp r8, #1
beq LU16
bne LU18
LU16:
add r8, r5, #8
str r7, [r8]
b LU17
LU17:
b LU14

LU18:
mov r8, #0
cmp r6, #4
moveq r8, #1
cmp r8, #1
beq LU19
bne LU21
LU19:
add r8, r5, #12
str r7, [r8]
b LU20
LU20:
b LU17

LU21:
mov r8, #0
cmp r6, #5
moveq r8, #1
cmp r8, #1
beq LU22
bne LU24
LU22:
add r8, r5, #16
str r7, [r8]
b LU23
LU23:
b LU20

LU24:
mov r8, #0
cmp r6, #6
moveq r8, #1
cmp r8, #1
beq LU25
bne LU27
LU25:
add r8, r5, #20
str r7, [r8]
b LU26
LU26:
b LU23

LU27:
mov r8, #0
cmp r6, #7
moveq r8, #1
cmp r8, #1
beq LU28
bne LU30
LU28:
add r8, r5, #24
str r7, [r8]
b LU29
LU29:
b LU26

LU30:
mov r8, #0
cmp r6, #8
moveq r8, #1
cmp r8, #1
beq LU31
bne LU33
LU31:
add r8, r5, #28
str r7, [r8]
b LU32
LU32:
b LU29

LU33:
mov r8, #0
cmp r6, #9
moveq r8, #1
cmp r8, #1
beq LU34
bne LU35
LU34:
add r8, r5, #32
str r7, [r8]
b LU35
LU35:
b LU32



.size placePiece, .-placePiece
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
.global cleanBoard
cleanBoard:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r7, r6, #0
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r8, r6, #4
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r8]
add r7, r6, #8
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r7, r6, #12
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r7, r6, #16
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r8, r6, #20
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r8]
add r7, r6, #24
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r7, r6, #28
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r7, r6, #32
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size cleanBoard, .-cleanBoard
.text
.align 2
.global main
main:
LU110:
push {fp, lr}
add r11, r13, #36
push {r4-r10}
mov r7, #0
mov r4, r5
mov r8, #0
mov r6, #-1
mov r0, #36
bl malloc
mov r5, r0
mov r5, r5
mov r0, r5
bl cleanBoard
b LU112
LU112:
mov r8, r8
mov r4, r4
mov r5, r7
mov r6, r6
mov r0, #0
cmp r6, #0
movlt r0, #1
mov r7, #0
cmp r5, #8
movne r7, #1
and r7, r0, r7
cmp r7, #1
beq LU113
bne LU114
LU113:
mov r0, r4
bl printBoard
mov r7, #0
cmp r8, #0
moveq r7, #1
cmp r7, #1
beq LU115
bne LU117
LU115:
mov r10, r5
str r10, [r11, #4]
ldr r10, [r11, #20]
mov r5, r10
mov r10, r4
str r10, [r11, #8]
add r10, r8, #1
str r10, [r11, #20]
bl readchar
mov r8, r0
mov r0, r4
mov r1, #1
mov r2, r8
bl placePiece
b LU116
LU116:
ldr r10, [r11, #12]
mov r7, r10
ldr r10, [r11, #24]
mov r4, r10
ldr r10, [r11, #28]
mov r8, r10
ldr r10, [r11, #32]
mov r6, r10
mov r10, r5
str r10, [r11, #28]
ldr r10, [r11, #4]
mov r5, r10
ldr r10, [r11, #8]
mov r10, r10
str r10, [r11, #24]
ldr r10, [r11, #24]
mov r0, r10
bl checkWinner
mov r10, r0
str r10, [r11, #32]
add r10, r5, #1
str r10, [r11, #12]
b LU112

LU117:
mov r10, r5
str r10, [r11, #4]
ldr r10, [r11, #16]
mov r5, r10
mov r10, r4
str r10, [r11, #8]
sub r10, r8, #1
str r10, [r11, #16]
bl readchar
mov r8, r0
mov r0, r4
mov r1, #2
mov r2, r8
bl placePiece
b LU116

LU114:
add r8, r6, #1
mov r0, r8
bl printl
mov r0, #0
b LU111
LU111:
pop {r4-r10}
sub r13, r11, #36
pop {fp, pc}
mov r0, #0
b LU111

.size main, .-main
.text
.align 2
.global checkWinner
checkWinner:
LU36:
push {fp, lr}
add r11, r13, #8
push {r4-r10}
mov r8, r6
add r6, r0, #0
add r7, r6, #0
ldr r4, [r7]
mov r7, #0
cmp r4, #1
moveq r7, #1
cmp r7, #1
beq LU38
bne LU39
LU38:
mov r2, r6
mov r8, r6
add r7, r6, #4
ldr r1, [r7]
mov r7, #0
cmp r1, #1
moveq r7, #1
cmp r7, #1
beq LU40
bne LU41
LU40:
mov r2, r6
add r8, r6, #8
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
cmp r7, #1
beq LU42
bne LU43
LU42:
mov r0, #0
b LU37
LU37:
pop {r4-r10}
sub r13, r11, #8
pop {fp, pc}
mov r0, #0
b LU37
LU43:
mov r2, r6
b LU41
LU41:
mov r8, r6
mov r6, r2
b LU39
LU39:
mov r7, r5
mov r5, r8
add r8, r5, #0
ldr r8, [r8]
mov r6, #0
cmp r8, #2
moveq r6, #1
cmp r6, #1
beq LU44
bne LU45
LU44:
mov r6, r5
mov r7, r5
add r8, r5, #4
ldr r2, [r8]
mov r8, #0
cmp r2, #2
moveq r8, #1
cmp r8, #1
beq LU46
bne LU47
LU46:
mov r6, r5
add r8, r5, #8
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
cmp r7, #1
beq LU48
bne LU49
LU48:
mov r0, #1
b LU37

LU49:
mov r6, r5
b LU47
LU47:
mov r7, r3
mov r3, r6
b LU45
LU45:
mov r1, r4
mov r4, r7
add r7, r4, #12
ldr r7, [r7]
mov r3, #0
cmp r7, #1
moveq r3, #1
cmp r3, #1
beq LU50
bne LU51
LU50:
mov r3, r4
mov r1, r4
add r7, r4, #16
ldr r0, [r7]
mov r7, #0
cmp r0, #1
moveq r7, #1
cmp r7, #1
beq LU52
bne LU53
LU52:
mov r3, r4
add r8, r4, #20
ldr r7, [r8]
mov r8, #0
cmp r7, #1
moveq r8, #1
cmp r8, #1
beq LU54
bne LU55
LU54:
mov r0, #0
b LU37

LU55:
mov r3, r4
b LU53
LU53:
mov r1, r2
mov r2, r3
b LU51
LU51:
mov r4, r6
mov r6, r1
add r7, r6, #12
ldr r7, [r7]
mov r3, #0
cmp r7, #2
moveq r3, #1
cmp r3, #1
beq LU56
bne LU57
LU56:
mov r3, r6
mov r4, r6
add r7, r6, #16
ldr r2, [r7]
mov r7, #0
cmp r2, #2
moveq r7, #1
cmp r7, #1
beq LU58
bne LU59
LU58:
mov r3, r6
add r8, r6, #20
ldr r7, [r8]
mov r8, #0
cmp r7, #2
moveq r8, #1
cmp r8, #1
beq LU60
bne LU61
LU60:
mov r0, #1
b LU37

LU61:
mov r3, r6
b LU59
LU59:
mov r4, r6
mov r6, r3
b LU57
LU57:
mov r6, r5
mov r5, r4
add r7, r5, #24
ldr r7, [r7]
mov r4, #0
cmp r7, #1
moveq r4, #1
cmp r4, #1
beq LU62
bne LU63
LU62:
mov r6, r5
mov r4, r5
add r7, r5, #28
ldr r3, [r7]
mov r7, #0
cmp r3, #1
moveq r7, #1
cmp r7, #1
beq LU64
bne LU65
LU64:
mov r4, r5
add r8, r5, #32
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
cmp r7, #1
beq LU66
bne LU67
LU66:
mov r0, #0
b LU37

LU67:
mov r4, r5
b LU65
LU65:
mov r6, r5
mov r5, r4
b LU63
LU63:
mov r3, r8
mov r8, r6
add r7, r8, #24
ldr r7, [r7]
mov r6, #0
cmp r7, #2
moveq r6, #1
cmp r6, #1
beq LU68
bne LU69
LU68:
mov r10, r8
str r10, [r11, #4]
mov r3, r8
add r7, r8, #28
ldr r7, [r7]
mov r0, #0
cmp r7, #2
moveq r0, #1
cmp r0, #1
beq LU70
bne LU71
LU70:
mov r10, r8
str r10, [r11, #4]
add r7, r8, #32
ldr r7, [r7]
mov r3, #0
cmp r7, #2
moveq r3, #1
cmp r3, #1
beq LU72
bne LU73
LU72:
mov r0, #1
b LU37

LU73:
mov r10, r8
str r10, [r11, #4]
b LU71
LU71:
mov r3, r5
ldr r10, [r11, #4]
mov r5, r10
b LU69
LU69:
mov r5, r1
mov r1, r3
add r7, r1, #0
ldr r3, [r7]
mov r7, #0
cmp r3, #1
moveq r7, #1
cmp r7, #1
beq LU74
bne LU75
LU74:
mov r5, r1
mov r4, r1
add r7, r1, #12
ldr r7, [r7]
mov r3, #0
cmp r7, #1
moveq r3, #1
cmp r3, #1
beq LU76
bne LU77
LU76:
mov r4, r1
add r7, r1, #24
ldr r5, [r7]
mov r7, #0
cmp r5, #1
moveq r7, #1
cmp r7, #1
beq LU78
bne LU79
LU78:
mov r0, #0
b LU37

LU79:
mov r4, r1
b LU77
LU77:
mov r5, r6
mov r6, r4
b LU75
LU75:
mov r3, r8
mov r8, r5
add r7, r8, #0
ldr r7, [r7]
mov r5, #0
cmp r7, #2
moveq r5, #1
cmp r5, #1
beq LU80
bne LU81
LU80:
mov r7, r8
mov r3, r8
add r5, r8, #12
ldr r5, [r5]
mov r4, #0
cmp r5, #2
moveq r4, #1
cmp r4, #1
beq LU82
bne LU83
LU82:
mov r7, r8
add r6, r8, #24
ldr r6, [r6]
mov r5, #0
cmp r6, #2
moveq r5, #1
cmp r5, #1
beq LU84
bne LU85
LU84:
mov r0, #1
b LU37

LU85:
mov r7, r8
b LU83
LU83:
mov r3, r2
mov r2, r7
b LU81
LU81:
mov r5, r6
mov r6, r3
add r8, r6, #4
ldr r7, [r8]
mov r8, #0
cmp r7, #1
moveq r8, #1
cmp r8, #1
beq LU86
bne LU87
LU86:
mov r2, r6
mov r5, r6
add r8, r6, #16
ldr r8, [r8]
mov r3, #0
cmp r8, #1
moveq r3, #1
cmp r3, #1
beq LU88
bne LU89
LU88:
mov r2, r6
add r8, r6, #28
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
cmp r7, #1
beq LU90
bne LU91
LU90:
mov r0, #0
b LU37

LU91:
mov r2, r6
b LU89
LU89:
mov r5, r1
mov r1, r2
b LU87
LU87:
mov r3, r4
mov r4, r5
add r8, r4, #4
ldr r5, [r8]
mov r8, #0
cmp r5, #2
moveq r8, #1
cmp r8, #1
beq LU92
bne LU93
LU92:
mov r5, r4
mov r3, r4
add r8, r4, #16
ldr r8, [r8]
mov r2, #0
cmp r8, #2
moveq r2, #1
cmp r2, #1
beq LU94
bne LU95
LU94:
mov r5, r4
add r8, r4, #28
ldr r8, [r8]
mov r3, #0
cmp r8, #2
moveq r3, #1
cmp r3, #1
beq LU96
bne LU97
LU96:
mov r0, #1
b LU37

LU97:
mov r5, r4
b LU95
LU95:
mov r3, r7
mov r7, r5
b LU93
LU93:
mov r5, r6
mov r6, r3
add r8, r6, #8
ldr r7, [r8]
mov r8, #0
cmp r7, #1
moveq r8, #1
cmp r8, #1
beq LU98
bne LU99
LU98:
mov r4, r6
mov r5, r6
add r7, r6, #20
ldr r7, [r7]
mov r3, #0
cmp r7, #1
moveq r3, #1
cmp r3, #1
beq LU100
bne LU101
LU100:
mov r4, r6
add r7, r6, #32
ldr r5, [r7]
mov r7, #0
cmp r5, #1
moveq r7, #1
cmp r7, #1
beq LU102
bne LU103
LU102:
mov r0, #0
b LU37

LU103:
mov r4, r6
b LU101
LU101:
mov r5, r8
mov r8, r4
b LU99
LU99:
mov r6, r5
add r8, r6, #8
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
cmp r7, #1
beq LU104
bne LU105
LU104:
add r8, r6, #20
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
cmp r7, #1
beq LU106
bne LU107
LU106:
add r8, r6, #32
ldr r7, [r8]
mov r8, #0
cmp r7, #2
moveq r8, #1
cmp r8, #1
beq LU108
bne LU109
LU108:
mov r0, #1
b LU37

LU109:
b LU107
LU107:
b LU105
LU105:
movw r0, #:lower16:-1
movt r0, #:upper16:-1
b LU37


























.size checkWinner, .-checkWinner
