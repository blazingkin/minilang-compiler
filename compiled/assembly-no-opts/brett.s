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
.global tonofargs
tonofargs:
LU17:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r8, r1, #0
add r8, r2, #0
add r8, r3, #0
mov r8, #0
cmp r7, #5
moveq r8, #1
cmp r8, #1
beq LU19
bne LU21
LU19:
mov r5, r7
mov r8, r7
mov r6, r7
mov r0, #1
bl printl
b LU20
LU20:
mov r7, r8
mov r5, r5
mov r8, r6
mov r6, #0
cmp r8, #6
moveq r6, #1
cmp r6, #1
beq LU22
bne LU24
LU22:
mov r7, r7
mov r6, r5
mov r0, #1
bl printl
b LU23
LU23:
mov r5, r7
mov r8, r6
mov r7, #0
cmp r8, #7
moveq r7, #1
cmp r7, #1
beq LU25
bne LU27
LU25:
mov r7, r5
mov r0, #1
bl printl
b LU26
LU26:
mov r8, r7
mov r7, #0
cmp r8, #8
moveq r7, #1
cmp r7, #1
beq LU28
bne LU30
LU28:
mov r0, #1
bl printl
b LU29
LU29:
b LU18
LU18:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
LU30:
mov r0, #0
bl print
mov r0, r8
bl printl
b LU29

LU27:
mov r7, r5
mov r0, #0
bl print
mov r0, r8
bl printl
b LU26

LU24:
mov r7, r7
mov r6, r5
mov r0, #0
bl print
mov r0, r8
bl printl
b LU23

LU21:
mov r5, r7
mov r8, r7
mov r6, r7
mov r0, #0
bl print
mov r0, r7
bl printl
b LU20


.size tonofargs, .-tonofargs
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
.global takealltypes
takealltypes:
LU6:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r5, r1, #0
add r7, r2, #0
mov r6, #0
cmp r8, #3
moveq r6, #1
cmp r6, #1
beq LU8
bne LU10
LU8:
mov r8, r7
mov r7, r5
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
b LU7
LU7:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
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
mov r8, r7
mov r7, r5
mov r0, #0
bl printl
b LU9


.size takealltypes, .-takealltypes
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
.global main
main:
LU37:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r7, #:lower16: counter
movt r7, #:upper16: counter
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
mov r0, #1
bl printgroup
movw r8, #:lower16: 0
movt r8, #:upper16: 0
and r8, r8, #0
cmp r8, #1
beq LU39
bne LU41
LU39:
mov r0, #0
bl printl
b LU40
LU40:
movw r8, #:lower16: 1
movt r8, #:upper16: 1
and r8, r8, #0
cmp r8, #1
beq LU42
bne LU44
LU42:
mov r0, #0
bl printl
b LU43
LU43:
movw r8, #:lower16: 0
movt r8, #:upper16: 0
and r8, r8, #1
cmp r8, #1
beq LU45
bne LU47
LU45:
mov r0, #0
bl printl
b LU46
LU46:
movw r8, #:lower16: 1
movt r8, #:upper16: 1
and r8, r8, #1
cmp r8, #1
beq LU48
bne LU50
LU48:
mov r0, #1
bl printl
b LU49
LU49:
movw r7, #:lower16: counter
movt r7, #:upper16: counter
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
mov r0, #2
bl printgroup
movw r8, #:lower16: 1
movt r8, #:upper16: 1
orr r8, r8, #1
cmp r8, #1
beq LU51
bne LU53
LU51:
mov r0, #1
bl printl
b LU52
LU52:
movw r8, #:lower16: 1
movt r8, #:upper16: 1
orr r8, r8, #0
cmp r8, #1
beq LU54
bne LU56
LU54:
mov r0, #1
bl printl
b LU55
LU55:
movw r8, #:lower16: 0
movt r8, #:upper16: 0
orr r8, r8, #1
cmp r8, #1
beq LU57
bne LU59
LU57:
mov r0, #1
bl printl
b LU58
LU58:
movw r8, #:lower16: 0
movt r8, #:upper16: 0
orr r8, r8, #0
cmp r8, #1
beq LU60
bne LU62
LU60:
mov r0, #0
bl printl
b LU61
LU61:
mov r0, #3
bl printgroup
mov r8, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
cmp r8, #1
movgt r8, #1
cmp r8, #1
beq LU63
bne LU65
LU63:
mov r0, #1
bl printl
b LU64
LU64:
mov r8, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
cmp r8, #1
movge r8, #1
cmp r8, #1
beq LU66
bne LU68
LU66:
mov r0, #1
bl printl
b LU67
LU67:
mov r8, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
cmp r8, #1
movlt r8, #1
cmp r8, #1
beq LU69
bne LU71
LU69:
mov r0, #0
bl printl
b LU70
LU70:
mov r8, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
cmp r8, #1
movle r8, #1
cmp r8, #1
beq LU72
bne LU74
LU72:
mov r0, #0
bl printl
b LU73
LU73:
mov r8, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
cmp r8, #1
moveq r8, #1
cmp r8, #1
beq LU75
bne LU77
LU75:
mov r0, #0
bl printl
b LU76
LU76:
mov r8, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
cmp r8, #1
movne r8, #1
cmp r8, #1
beq LU78
bne LU80
LU78:
mov r0, #1
bl printl
b LU79
LU79:
movw r8, :lower16: 1
movt r8, :upper16: 1
cmp r8, #1
beq LU81
bne LU83
LU81:
mov r0, #1
bl printl
b LU82
LU82:
movw r8, :lower16: 0
movt r8, :upper16: 0
cmp r8, #1
beq LU84
bne LU86
LU84:
mov r0, #0
bl printl
b LU85
LU85:
movw r8, :lower16: 0
movt r8, :upper16: 0
cmp r8, #1
beq LU87
bne LU89
LU87:
mov r0, #0
bl printl
b LU88
LU88:
movw r8, :lower16: 1
movt r8, :upper16: 1
cmp r8, #1
beq LU90
bne LU92
LU90:
mov r0, #1
bl printl
b LU91
LU91:
movw r8, :lower16: 1
movt r8, :upper16: 1
cmp r8, #1
beq LU93
bne LU95
LU93:
mov r0, #1
bl printl
b LU94
LU94:
mov r0, #4
bl printgroup
movw r8, #:lower16: 2
movt r8, #:upper16: 2
add r7, r8, #3
mov r8, #0
cmp r7, #5
moveq r8, #1
cmp r8, #1
beq LU96
bne LU98
LU96:
mov r0, #1
bl printl
b LU97
LU97:
movw r8, #:lower16: 2
movt r8, #:upper16: 2
movw r7, #:lower16: 3
movt r7, #:upper16: 3
mul r7, r8, r7
mov r8, #0
cmp r7, #6
moveq r8, #1
cmp r8, #1
beq LU99
bne LU101
LU99:
mov r0, #1
bl printl
b LU100
LU100:
movw r8, #:lower16: 3
movt r8, #:upper16: 3
sub r8, r8, #2
mov r7, #0
cmp r8, #1
moveq r7, #1
cmp r7, #1
beq LU102
bne LU104
LU102:
mov r0, #1
bl printl
b LU103
LU103:
mov r0, #6
mov r1, #3
bl __aeabi_idiv
mov r7, r0
mov r8, #0
cmp r7, #2
moveq r8, #1
cmp r8, #1
beq LU105
bne LU107
LU105:
mov r0, #1
bl printl
b LU106
LU106:
mov r8, #0
movw r8, #:lower16: -6
movt r8, #:upper16: -6
cmp r8, #0
movlt r8, #1
cmp r8, #1
beq LU108
bne LU110
LU108:
mov r0, #1
bl printl
b LU109
LU109:
mov r0, #5
bl printgroup
mov r8, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
cmp r8, #42
moveq r8, #1
cmp r8, #1
beq LU111
bne LU113
LU111:
mov r0, #1
bl printl
b LU112
LU112:
movw r8, #:lower16: 3
movt r8, #:upper16: 3
add r7, r8, #2
mov r8, #0
cmp r7, #5
moveq r8, #1
cmp r8, #1
beq LU114
bne LU116
LU114:
mov r0, #1
bl printl
b LU115
LU115:
movw r8, :lower16: 1
movt r8, :upper16: 1
cmp r8, #1
beq LU117
bne LU119
LU117:
mov r8, #1
mov r0, #1
bl printl
b LU118
LU118:
mov r8, r8
eor r8, r8, #1
cmp r8, #1
beq LU120
bne LU122
LU120:
mov r0, #0
bl printl
b LU121
LU121:
movw r8, :lower16: 0
movt r8, :upper16: 0
cmp r8, #1
beq LU123
bne LU125
LU123:
mov r8, #0
mov r0, #0
bl printl
b LU124
LU124:
mov r7, r8
eor r8, r7, #1
cmp r8, #1
beq LU126
bne LU128
LU126:
mov r8, r7
mov r0, #1
bl printl
b LU127
LU127:
mov r8, r8
cmp r8, #1
beq LU129
bne LU131
LU129:
mov r0, #0
bl printl
b LU130
LU130:
mov r7, #0
mov r0, #6
bl printgroup
b LU132
LU132:
mov r5, r7
mov r8, #0
cmp r5, #5
movlt r8, #1
cmp r8, #1
beq LU133
bne LU134
LU133:
mov r6, r5
mov r7, #0
cmp r5, #5
movge r7, #1
cmp r7, #1
beq LU135
bne LU136
LU135:
mov r6, r5
mov r0, #0
bl printl
b LU136
LU136:
mov r7, r8
mov r8, r6
add r8, r8, #5
b LU132


LU134:
mov r8, #0
cmp r5, #5
moveq r8, #1
cmp r8, #1
beq LU137
bne LU139
LU137:
mov r0, #1
bl printl
b LU138
LU138:
mov r0, #7
bl printgroup
mov r0, #12
bl malloc
mov r8, r0
mov r6, r8
add r7, r6, #0
movw r8, #:lower16: 42
movt r8, #:upper16: 42
str r8, [r7]
add r8, r6, #4
movw r7, #:lower16: 1
movt r7, #:upper16: 1
str r7, [r8]
add r8, r6, #0
ldr r7, [r8]
mov r8, #0
cmp r7, #42
moveq r8, #1
cmp r8, #1
beq LU140
bne LU142
LU140:
mov r8, r6
mov r0, #1
bl printl
b LU141
LU141:
mov r8, r8
add r7, r8, #4
ldr r7, [r7]
cmp r7, #1
beq LU143
bne LU145
LU143:
mov r8, r8
mov r0, #1
bl printl
b LU144
LU144:
mov r7, r8
mov r0, #12
bl malloc
mov r8, r0
mov r6, r8
add r8, r7, #8
str r6, [r8]
add r8, r7, #8
ldr r8, [r8]
add r6, r8, #0
movw r8, #:lower16: 13
movt r8, #:upper16: 13
str r8, [r6]
add r8, r7, #8
ldr r8, [r8]
add r6, r8, #4
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r6]
add r8, r7, #8
ldr r8, [r8]
add r8, r8, #0
ldr r8, [r8]
mov r6, #0
cmp r8, #13
moveq r6, #1
cmp r6, #1
beq LU146
bne LU148
LU146:
mov r8, r7
mov r0, #1
bl printl
b LU147
LU147:
mov r7, r8
add r8, r7, #8
ldr r8, [r8]
add r8, r8, #4
ldr r8, [r8]
eor r8, r8, #1
cmp r8, #1
beq LU149
bne LU151
LU149:
mov r8, r7
mov r0, #1
bl printl
b LU150
LU150:
mov r8, r8
mov r7, #0
cmp r8, r8
moveq r7, #1
cmp r7, #1
beq LU152
bne LU154
LU152:
mov r8, r8
mov r0, #1
bl printl
b LU153
LU153:
mov r6, r8
add r8, r6, #8
ldr r7, [r8]
mov r8, #0
cmp r6, r7
movne r8, #1
cmp r8, #1
beq LU155
bne LU157
LU155:
mov r8, r6
mov r0, #1
bl printl
b LU156
LU156:
mov r8, r8
add r7, r8, #8
ldr r7, [r7]
mov r7, r7
mov r0, r7
bl free
mov r8, r8
mov r0, r8
bl free
mov r0, #8
bl printgroup
movw r7, #:lower16: gi1
movt r7, #:upper16: gi1
movw r8, #:lower16: 7
movt r8, #:upper16: 7
str r8, [r7]
movw r8, #:lower16: gi1
movt r8, #:upper16: gi1
ldr r7, [r8]
mov r8, #0
cmp r7, #7
moveq r8, #1
cmp r8, #1
beq LU158
bne LU160
LU158:
mov r0, #1
bl printl
b LU159
LU159:
movw r8, #:lower16: gb1
movt r8, #:upper16: gb1
movw r7, #:lower16: 1
movt r7, #:upper16: 1
str r7, [r8]
movw r8, #:lower16: gb1
movt r8, #:upper16: gb1
ldr r8, [r8]
cmp r8, #1
beq LU161
bne LU163
LU161:
mov r0, #1
bl printl
b LU162
LU162:
mov r0, #12
bl malloc
mov r8, r0
mov r8, r8
movw r7, #:lower16: gs1
movt r7, #:upper16: gs1
str r8, [r7]
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r7, r8, #0
movw r8, #:lower16: 34
movt r8, #:upper16: 34
str r8, [r7]
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #4
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r8]
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #0
ldr r7, [r8]
mov r8, #0
cmp r7, #34
moveq r8, #1
cmp r8, #1
beq LU164
bne LU166
LU164:
mov r0, #1
bl printl
b LU165
LU165:
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #4
ldr r8, [r8]
eor r8, r8, #1
cmp r8, #1
beq LU167
bne LU169
LU167:
mov r0, #1
bl printl
b LU168
LU168:
mov r0, #12
bl malloc
mov r8, r0
mov r7, r8
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #8
str r7, [r8]
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #8
ldr r8, [r8]
add r8, r8, #0
movw r7, #:lower16: 16
movt r7, #:upper16: 16
str r7, [r8]
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #8
ldr r8, [r8]
add r8, r8, #4
movw r7, #:lower16: 1
movt r7, #:upper16: 1
str r7, [r8]
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #8
ldr r8, [r8]
add r8, r8, #0
ldr r7, [r8]
mov r8, #0
cmp r7, #16
moveq r8, #1
cmp r8, #1
beq LU170
bne LU172
LU170:
mov r0, #1
bl printl
b LU171
LU171:
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #8
ldr r8, [r8]
add r8, r8, #4
ldr r8, [r8]
cmp r8, #1
beq LU173
bne LU175
LU173:
mov r0, #1
bl printl
b LU174
LU174:
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #8
ldr r8, [r8]
mov r8, r8
mov r0, r8
bl free
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
mov r8, r8
mov r0, r8
bl free
mov r0, #9
bl printgroup
mov r0, #12
bl malloc
mov r8, r0
mov r7, r8
add r6, r7, #4
movw r8, #:lower16: 1
movt r8, #:upper16: 1
str r8, [r6]
mov r0, #3
mov r1, #1
mov r2, r7
bl takealltypes
mov r0, #2
bl printl
mov r0, #1
mov r1, #2
mov r2, #3
mov r3, #4
movw r8, #:lower16: 5
movt r8, #:upper16: 5
push {r8}
movw r8, #:lower16: 6
movt r8, #:upper16: 6
push {r8}
movw r8, #:lower16: 7
movt r8, #:upper16: 7
push {r8}
movw r8, #:lower16: 8
movt r8, #:upper16: 8
push {r8}
bl tonofargs
mov r0, #3
bl printl
mov r0, #3
bl returnint
mov r7, r0
mov r8, #0
cmp r7, #3
moveq r8, #1
cmp r8, #1
beq LU176
bne LU178
LU176:
mov r0, #1
bl printl
b LU177
LU177:
mov r0, #1
bl returnbool
mov r8, r0
cmp r8, #1
beq LU179
bne LU181
LU179:
mov r0, #1
bl printl
b LU180
LU180:
mov r0, #12
bl malloc
mov r8, r0
mov r8, r8
mov r0, r8
bl returnstruct
mov r6, r0
mov r7, #0
cmp r8, r6
moveq r7, #1
cmp r7, #1
beq LU182
bne LU184
LU182:
mov r0, #1
bl printl
b LU183
LU183:
mov r0, #10
bl printgroup
mov r0, #0
b LU38
LU38:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU38
LU184:
mov r0, #0
bl printl
b LU183

LU181:
mov r0, #0
bl printl
b LU180

LU178:
mov r0, #0
bl print
mov r0, r7
bl printl
b LU177

LU175:
mov r0, #0
bl printl
b LU174

LU172:
mov r0, #0
bl print
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #8
ldr r8, [r8]
add r8, r8, #0
ldr r8, [r8]
mov r0, r8
bl printl
b LU171

LU169:
mov r0, #0
bl printl
b LU168

LU166:
mov r0, #0
bl print
movw r8, #:lower16: gs1
movt r8, #:upper16: gs1
ldr r8, [r8]
add r8, r8, #0
ldr r8, [r8]
mov r0, r8
bl printl
b LU165

LU163:
mov r0, #0
bl printl
b LU162

LU160:
mov r0, #0
bl print
movw r8, #:lower16: gi1
movt r8, #:upper16: gi1
ldr r8, [r8]
mov r0, r8
bl printl
b LU159

LU157:
mov r8, r6
mov r0, #0
bl printl
b LU156

LU154:
mov r8, r8
mov r0, #0
bl printl
b LU153

LU151:
mov r8, r7
mov r0, #0
bl printl
b LU150

LU148:
mov r8, r7
mov r0, #0
bl print
add r7, r7, #8
ldr r7, [r7]
add r7, r7, #0
ldr r7, [r7]
mov r0, r7
bl printl
b LU147

LU145:
mov r8, r8
mov r0, #0
bl printl
b LU144

LU142:
mov r8, r6
mov r0, #0
bl print
add r7, r6, #0
ldr r7, [r7]
mov r0, r7
bl printl
b LU141

LU139:
mov r0, #0
bl print
mov r0, r5
bl printl
b LU138

LU131:
mov r0, #1
bl printl
b LU130

LU128:
mov r8, r7
mov r0, #0
bl printl
b LU127

LU125:
mov r8, #0
mov r0, #1
bl printl
b LU124

LU122:
mov r0, #1
bl printl
b LU121

LU119:
mov r8, #1
mov r0, #0
bl printl
b LU118

LU116:
mov r0, #0
bl printl
b LU115

LU113:
mov r0, #0
bl printl
b LU112

LU110:
mov r0, #0
bl printl
b LU109

LU107:
mov r0, #0
bl print
mov r0, #6
mov r1, #3
bl __aeabi_idiv
mov r8, r0
mov r0, r8
bl printl
b LU106

LU104:
mov r0, #0
bl print
movw r8, #:lower16: 3
movt r8, #:upper16: 3
sub r8, r8, #2
mov r0, r8
bl printl
b LU103

LU101:
mov r0, #0
bl print
movw r7, #:lower16: 2
movt r7, #:upper16: 2
movw r8, #:lower16: 3
movt r8, #:upper16: 3
mul r8, r7, r8
mov r0, r8
bl printl
b LU100

LU98:
mov r0, #0
bl print
movw r8, #:lower16: 2
movt r8, #:upper16: 2
add r8, r8, #3
mov r0, r8
bl printl
b LU97

LU95:
mov r0, #0
bl printl
b LU94

LU92:
mov r0, #0
bl printl
b LU91

LU89:
mov r0, #1
bl printl
b LU88

LU86:
mov r0, #1
bl printl
b LU85

LU83:
mov r0, #0
bl printl
b LU82

LU80:
mov r0, #0
bl printl
b LU79

LU77:
mov r0, #1
bl printl
b LU76

LU74:
mov r0, #1
bl printl
b LU73

LU71:
mov r0, #1
bl printl
b LU70

LU68:
mov r0, #0
bl printl
b LU67

LU65:
mov r0, #0
bl printl
b LU64

LU62:
mov r0, #1
bl printl
b LU61

LU59:
mov r0, #0
bl printl
b LU58

LU56:
mov r0, #0
bl printl
b LU55

LU53:
mov r0, #0
bl printl
b LU52

LU50:
mov r0, #0
bl printl
b LU49

LU47:
mov r0, #1
bl printl
b LU46

LU44:
mov r0, #1
bl printl
b LU43

LU41:
mov r0, #1
bl printl
b LU40


.size main, .-main
