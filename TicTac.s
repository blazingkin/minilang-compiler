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
add r7, r0, #0
add r6, r1, #0
add r5, r2, #0
mov r8, #0
cmp r5, #1
moveq r8, #1
cmp r8, #1
beq LU10
bne LU12
LU10:
add r8, r7, #0
str r6, [r8]
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
add r8, r7, #4
str r6, [r8]
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
add r8, r7, #8
str r6, [r8]
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
add r8, r7, #12
str r6, [r8]
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
add r8, r7, #16
str r6, [r8]
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
add r8, r7, #20
str r6, [r8]
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
add r8, r7, #24
str r6, [r8]
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
add r8, r7, #28
str r6, [r8]
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
add r8, r7, #32
str r6, [r8]
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
add r8, r6, #0
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r8]
add r7, r6, #4
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r7, r6, #8
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r7, r6, #12
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
add r8, r6, #16
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r8]
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
LU38:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #36
bl malloc
mov r8, r0
mov r8, r8
mov r0, r8
bl cleanBoard
mov r7, #-1
mov r5, #0
mov r4, r8
mov r8, #0
b LU71
LU71:
mov r6, r8
mov r8, r4
mov r5, r5
mov r4, r7
mov r0, #0
cmp r4, #0
movlt r0, #1
mov r7, #0
cmp r5, #8
movne r7, #1
mov r5, r0
mov r7, r7
and r7, r5, r7
mov r7, r7
cmp r7, #1
beq LU72
bne LU73
LU72:
mov r0, r8
bl printBoard
mov r7, #0
cmp r6, #0
moveq r7, #1
cmp r7, #1
beq LU74
bne LU76
LU74:
add r6, r6, #1
bl readchar
mov r7, r0
mov r0, r8
mov r1, #1
mov r2, r7
bl placePiece
mov r8, r8
mov r7, r5
mov r6, r6
b LU75
LU75:
mov r6, r6
mov r7, r7
mov r8, r8
mov r0, r8
bl checkWinner
mov r4, r0
add r5, r7, #1
mov r7, r4
mov r5, r5
mov r4, r8
mov r8, r6
b LU71

LU76:
sub r6, r6, #1
bl readchar
mov r7, r0
mov r0, r8
mov r1, #2
mov r2, r7
bl placePiece
mov r8, r8
mov r7, r5
mov r6, r6
b LU75

LU73:
add r8, r4, #1
mov r0, r8
bl printl
mov r0, #0
b LU39
LU39:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU39

.size main, .-main
.text
.align 2
.global checkWinner
checkWinner:
LU36:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r5, r0, #0
add r8, r5, #0
ldr r8, [r8]
mov r6, #0
cmp r8, #1
moveq r6, #1
mov r7, r5
cmp r6, #1
beq LU40
bne LU41
LU40:
add r8, r5, #4
ldr r7, [r8]
mov r8, #0
cmp r7, #1
moveq r8, #1
mov r7, r5
mov r6, r5
cmp r8, #1
beq LU42
bne LU43
LU42:
add r8, r5, #8
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
mov r6, r5
cmp r7, #1
beq LU44
bne LU45
LU44:
mov r0, #0
b LU37
LU37:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU37
LU45:
mov r6, r5
b LU43
LU43:
mov r8, r6
mov r7, r8
b LU41
LU41:
mov r5, r7
add r8, r5, #0
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
mov r8, r5
cmp r7, #1
beq LU46
bne LU47
LU46:
add r8, r5, #4
ldr r8, [r8]
mov r6, #0
cmp r8, #2
moveq r6, #1
mov r7, r5
mov r8, r5
cmp r6, #1
beq LU48
bne LU49
LU48:
add r8, r5, #8
ldr r7, [r8]
mov r8, #0
cmp r7, #2
moveq r8, #1
mov r7, r5
cmp r8, #1
beq LU50
bne LU51
LU50:
mov r0, #1
b LU37

LU51:
mov r7, r5
b LU49
LU49:
mov r8, r7
mov r8, r8
b LU47
LU47:
mov r6, r8
add r8, r6, #12
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
mov r8, r6
cmp r7, #1
beq LU52
bne LU53
LU52:
add r8, r6, #16
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
mov r8, r6
mov r5, r6
cmp r7, #1
beq LU54
bne LU55
LU54:
add r8, r6, #20
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
mov r5, r6
cmp r7, #1
beq LU56
bne LU57
LU56:
mov r0, #0
b LU37

LU57:
mov r5, r6
b LU55
LU55:
mov r8, r5
mov r8, r8
b LU53
LU53:
mov r8, r8
add r7, r8, #12
ldr r7, [r7]
mov r6, #0
cmp r7, #2
moveq r6, #1
mov r5, r8
cmp r6, #1
beq LU58
bne LU59
LU58:
add r7, r8, #16
ldr r6, [r7]
mov r7, #0
cmp r6, #2
moveq r7, #1
mov r5, r8
mov r6, r8
cmp r7, #1
beq LU60
bne LU61
LU60:
add r7, r8, #20
ldr r6, [r7]
mov r7, #0
cmp r6, #2
moveq r7, #1
mov r6, r8
cmp r7, #1
beq LU62
bne LU63
LU62:
mov r0, #1
b LU37

LU63:
mov r6, r8
b LU61
LU61:
mov r8, r6
mov r5, r8
b LU59
LU59:
mov r7, r5
add r8, r7, #24
ldr r6, [r8]
mov r8, #0
cmp r6, #1
moveq r8, #1
mov r5, r7
cmp r8, #1
beq LU64
bne LU65
LU64:
add r8, r7, #28
ldr r6, [r8]
mov r8, #0
cmp r6, #1
moveq r8, #1
mov r6, r7
mov r5, r7
cmp r8, #1
beq LU66
bne LU67
LU66:
add r8, r7, #32
ldr r8, [r8]
mov r5, #0
cmp r8, #1
moveq r5, #1
mov r6, r7
cmp r5, #1
beq LU68
bne LU69
LU68:
mov r0, #0
b LU37

LU69:
mov r6, r7
b LU67
LU67:
mov r8, r6
mov r5, r8
b LU65
LU65:
mov r6, r5
add r8, r6, #24
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
mov r8, r6
cmp r7, #1
beq LU70
bne LU77
LU70:
add r8, r6, #28
ldr r8, [r8]
mov r5, #0
cmp r8, #2
moveq r5, #1
mov r7, r6
mov r8, r6
cmp r5, #1
beq LU78
bne LU79
LU78:
add r8, r6, #32
ldr r8, [r8]
mov r5, #0
cmp r8, #2
moveq r5, #1
mov r7, r6
cmp r5, #1
beq LU80
bne LU81
LU80:
mov r0, #1
b LU37

LU81:
mov r7, r6
b LU79
LU79:
mov r8, r7
mov r8, r8
b LU77
LU77:
mov r7, r8
add r8, r7, #0
ldr r8, [r8]
mov r6, #0
cmp r8, #1
moveq r6, #1
mov r5, r7
cmp r6, #1
beq LU82
bne LU83
LU82:
add r8, r7, #12
ldr r8, [r8]
mov r6, #0
cmp r8, #1
moveq r6, #1
mov r8, r7
mov r5, r7
cmp r6, #1
beq LU84
bne LU85
LU84:
add r8, r7, #24
ldr r8, [r8]
mov r6, #0
cmp r8, #1
moveq r6, #1
mov r8, r7
cmp r6, #1
beq LU86
bne LU87
LU86:
mov r0, #0
b LU37

LU87:
mov r8, r7
b LU85
LU85:
mov r8, r8
mov r5, r8
b LU83
LU83:
mov r5, r5
add r8, r5, #0
ldr r7, [r8]
mov r8, #0
cmp r7, #2
moveq r8, #1
mov r6, r5
cmp r8, #1
beq LU88
bne LU89
LU88:
add r8, r5, #12
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
mov r8, r5
mov r6, r5
cmp r7, #1
beq LU90
bne LU91
LU90:
add r8, r5, #24
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
mov r8, r5
cmp r7, #1
beq LU92
bne LU93
LU92:
mov r0, #1
b LU37

LU93:
mov r8, r5
b LU91
LU91:
mov r8, r8
mov r6, r8
b LU89
LU89:
mov r7, r6
add r8, r7, #4
ldr r6, [r8]
mov r8, #0
cmp r6, #1
moveq r8, #1
mov r5, r7
cmp r8, #1
beq LU94
bne LU95
LU94:
add r8, r7, #16
ldr r8, [r8]
mov r4, #0
cmp r8, #1
moveq r4, #1
mov r5, r7
mov r6, r7
cmp r4, #1
beq LU96
bne LU97
LU96:
add r8, r7, #28
ldr r6, [r8]
mov r8, #0
cmp r6, #1
moveq r8, #1
mov r6, r7
cmp r8, #1
beq LU98
bne LU99
LU98:
mov r0, #0
b LU37

LU99:
mov r6, r7
b LU97
LU97:
mov r8, r6
mov r5, r8
b LU95
LU95:
mov r6, r5
add r8, r6, #4
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
mov r5, r6
cmp r7, #1
beq LU100
bne LU101
LU100:
add r8, r6, #16
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
mov r8, r6
mov r5, r6
cmp r7, #1
beq LU102
bne LU103
LU102:
add r8, r6, #28
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
mov r8, r6
cmp r7, #1
beq LU104
bne LU105
LU104:
mov r0, #1
b LU37

LU105:
mov r8, r6
b LU103
LU103:
mov r8, r8
mov r5, r8
b LU101
LU101:
mov r6, r5
add r8, r6, #8
ldr r7, [r8]
mov r8, #0
cmp r7, #1
moveq r8, #1
mov r7, r6
cmp r8, #1
beq LU106
bne LU107
LU106:
add r8, r6, #20
ldr r8, [r8]
mov r5, #0
cmp r8, #1
moveq r5, #1
mov r7, r6
mov r8, r6
cmp r5, #1
beq LU108
bne LU109
LU108:
add r8, r6, #32
ldr r8, [r8]
mov r7, #0
cmp r8, #1
moveq r7, #1
mov r8, r6
cmp r7, #1
beq LU110
bne LU111
LU110:
mov r0, #0
b LU37

LU111:
mov r8, r6
b LU109
LU109:
mov r8, r8
mov r7, r8
b LU107
LU107:
mov r8, r7
add r7, r8, #8
ldr r6, [r7]
mov r7, #0
cmp r6, #2
moveq r7, #1
cmp r7, #1
beq LU112
bne LU113
LU112:
add r7, r8, #20
ldr r6, [r7]
mov r7, #0
cmp r6, #2
moveq r7, #1
cmp r7, #1
beq LU114
bne LU115
LU114:
add r8, r8, #32
ldr r8, [r8]
mov r7, #0
cmp r8, #2
moveq r7, #1
cmp r7, #1
beq LU116
bne LU117
LU116:
mov r0, #1
b LU37

LU117:
b LU115
LU115:
b LU113
LU113:
mov r0, #-1
b LU37


























.size checkWinner, .-checkWinner
