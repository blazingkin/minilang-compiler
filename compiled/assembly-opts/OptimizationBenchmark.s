.arch armv7-a
.global __aeabi_idiv
.comm global1 4,4
.comm global2 4,4
.comm global3 4,4
.text
.align 2
.global recursiveFibonacci
recursiveFibonacci:
LU67:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r7, #0
cmp r8, #0
movle r7, #1
mov r6, #0
cmp r8, #1
moveq r6, #1
orr r7, r7, r6
cmp r7, #1
beq LU69
bne LU71
LU69:
mov r0, r8
b LU68
LU68:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU68
LU71:
sub r7, r8, #1
mov r0, r7
bl recursiveFibonacci
mov r7, r0
sub r8, r8, #2
mov r0, r8
bl recursiveFibonacci
mov r8, r0
add r8, r7, r8
mov r0, r8
b LU68


.size recursiveFibonacci, .-recursiveFibonacci
.text
.align 2
.global randomCalculation
randomCalculation:
LU57:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r8, r7
mov r5, #0
mov r6, #0
add r7, r0, #0
b LU59
LU59:
mov r1, r5
mov r8, r8
mov r4, r6
mov r6, #0
cmp r4, r8
movlt r6, #1
cmp r6, #1
beq LU60
bne LU61
LU60:
mov r8, r8
mov r5, r7
mov r6, r7
add r7, r1, #19
movw r7, #:lower16: 2
movt r7, #:upper16: 2
mul r7, r4, r7
mov r0, r7
mov r1, #2
bl __aeabi_idiv
mov r7, r0
movw r4, #:lower16: 3
movt r4, #:upper16: 3
mul r7, r4, r7
mov r0, r7
mov r1, #3
bl __aeabi_idiv
mov r7, r0
movw r4, #:lower16: 4
movt r4, #:upper16: 4
mul r7, r7, r4
mov r0, r7
mov r1, #4
bl __aeabi_idiv
mov r7, r0
add r7, r7, #1
b LU59

LU61:
mov r0, r1
b LU58
LU58:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU58

.size randomCalculation, .-randomCalculation
.text
.align 2
.global iterativeFibonacci
iterativeFibonacci:
LU62:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r2, r8
mov r3, #1
mov r1, #-1
mov r7, #0
add r8, r0, #0
b LU64
LU64:
mov r6, r1
mov r8, r3
mov r3, r2
mov r5, r7
mov r7, #0
cmp r5, r3
movlt r7, #1
cmp r7, #1
beq LU65
bne LU66
LU65:
mov r2, r3
mov r3, r0
mov r1, r8
mov r7, r4
add r0, r8, r6
add r4, r5, #1
b LU64

LU66:
mov r0, r8
b LU63
LU63:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU63

.size iterativeFibonacci, .-iterativeFibonacci
.text
.align 2
.global unswitching
unswitching:
LU49:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, #1
b LU51
LU51:
mov r5, r7
mov r7, #0
movw r7, #:lower16: 1000000
movt r7, #:upper16: 1000000
cmp r5, r7
movlt r7, #1
cmp r7, #1
beq LU52
bne LU53
LU52:
mov r4, r8
add r8, r5, #1
b LU55
LU55:
mov r7, r6
mov r6, r4
b LU51

LU53:
mov r0, r5
b LU50
LU50:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU50

.size unswitching, .-unswitching
.text
.align 2
.global tailRecursion
tailRecursion:
LU47:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
mov r1, #0
bl tailRecursionHelper
mov r8, r0
mov r0, r8
b LU48
LU48:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU48

.size tailRecursion, .-tailRecursion
.text
.align 2
.global tailRecursionHelper
tailRecursionHelper:
LU42:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r8, r1, #0
mov r6, #0
cmp r7, #0
moveq r6, #1
cmp r6, #1
beq LU44
bne LU46
LU44:
mov r0, r8
b LU43
LU43:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU43
LU46:
sub r6, r7, #1
add r8, r8, r7
mov r0, r6
mov r1, r8
bl tailRecursionHelper
mov r8, r0
mov r0, r8
b LU43


.size tailRecursionHelper, .-tailRecursionHelper
.text
.align 2
.global association
association:
LU40:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #6
b LU41
LU41:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU41

.size association, .-association
.text
.align 2
.global integerDivide
integerDivide:
LU38:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r0, #:lower16:703
movt r0, #:upper16:703
b LU39
LU39:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU39

.size integerDivide, .-integerDivide
.text
.align 2
.global doubleIf
doubleIf:
LU31:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
b LU36
LU36:
mov r0, r8

.size doubleIf, .-doubleIf
.text
.align 2
.global hoisting
hoisting:
LU26:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r8, #0
b LU28
LU28:
mov r7, r8
mov r8, #0
movw r8, #:lower16: 1000000
movt r8, #:upper16: 1000000
cmp r7, r8
movlt r8, #1
cmp r8, #1
beq LU29
bne LU30
LU29:
mov r8, r6
add r6, r7, #1
b LU28

LU30:
mov r0, #2
b LU27
LU27:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU27

.size hoisting, .-hoisting
.text
.align 2
.global interProceduralOptimization
interProceduralOptimization:
LU15:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r6, #:lower16: global1
movt r6, #:upper16: global1
movw r8, #:lower16: 1
movt r8, #:upper16: 1
str r8, [r6]
movw r8, #:lower16: global2
movt r8, #:upper16: global2
movw r6, #:lower16: 0
movt r6, #:upper16: 0
str r6, [r8]
movw r6, #:lower16: global3
movt r6, #:upper16: global3
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r6]
mov r0, #100
bl sum
mov r6, r0
movw r8, #:lower16: global1
movt r8, #:upper16: global1
ldr r4, [r8]
mov r8, #0
cmp r4, #1
moveq r8, #1
cmp r8, #1
beq LU17
bne LU19
LU17:
mov r6, r7
movw r8, #:lower16: 10000
movt r8, #:upper16: 10000
mov r0, r8
bl sum
mov r7, r0
b LU18
LU18:
mov r8, r6
mov r0, r8
b LU16
LU16:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU16
LU19:
mov r6, r6
movw r8, #:lower16: global2
movt r8, #:upper16: global2
ldr r4, [r8]
mov r8, #0
cmp r4, #2
moveq r8, #1
cmp r8, #1
beq LU20
bne LU21
LU20:
mov r6, r5
movw r8, #:lower16: 20000
movt r8, #:upper16: 20000
mov r0, r8
bl sum
mov r5, r0
b LU21
LU21:
mov r5, r7
mov r7, r6
movw r7, #:lower16: global3
movt r7, #:upper16: global3
ldr r7, [r7]
mov r4, #0
cmp r7, #3
moveq r4, #1
cmp r4, #1
beq LU22
bne LU23
LU22:
mov r5, r6
movw r7, #:lower16: 30000
movt r7, #:upper16: 30000
mov r0, r7
bl sum
mov r6, r0
b LU23
LU23:
mov r6, r8
mov r8, r5
b LU18




.size interProceduralOptimization, .-interProceduralOptimization
.text
.align 2
.global doesntModifyGlobals
doesntModifyGlobals:
LU13:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #3
b LU14
LU14:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU14

.size doesntModifyGlobals, .-doesntModifyGlobals
.text
.align 2
.global sum
sum:
LU8:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r5, #0
mov r8, r6
add r6, r0, #0
b LU10
LU10:
mov r6, r5
mov r4, r8
mov r8, #0
cmp r4, #0
movgt r8, #1
cmp r8, #1
beq LU11
bne LU12
LU11:
mov r5, r7
mov r8, r7
add r7, r6, r4
sub r7, r4, #1
b LU10

LU12:
mov r0, r6
b LU9
LU9:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU9

.size sum, .-sum
.text
.align 2
.global deadCodeElimination
deadCodeElimination:
LU6:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r8, #:lower16: global1
movt r8, #:upper16: global1
movw r7, #:lower16: 11
movt r7, #:upper16: 11
str r7, [r8]
movw r7, #:lower16: global1
movt r7, #:upper16: global1
movw r8, #:lower16: 5
movt r8, #:upper16: 5
str r8, [r7]
movw r8, #:lower16: global1
movt r8, #:upper16: global1
movw r7, #:lower16: 9
movt r7, #:upper16: 9
str r7, [r8]
mov r0, #38
b LU7
LU7:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU7

.size deadCodeElimination, .-deadCodeElimination
.text
.align 2
.global constantFolding
constantFolding:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #135
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3

.size constantFolding, .-constantFolding
.text
.align 2
.global main
main:
LU72:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, r5
mov r6, #1
bl readchar
mov r5, r0
b LU74
LU74:
mov r5, r7
mov r4, r6
mov r7, #0
cmp r4, r5
movlt r7, #1
cmp r7, #1
beq LU75
bne LU76
LU75:
mov r7, r5
mov r6, r8
bl constantFolding
mov r8, r0
mov r0, r8
bl printl
bl constantPropagation
mov r8, r0
mov r0, r8
bl printl
bl deadCodeElimination
mov r8, r0
mov r0, r8
bl printl
bl interProceduralOptimization
mov r8, r0
mov r0, r8
bl printl
bl commonSubexpressionElimination
mov r8, r0
mov r0, r8
bl printl
bl hoisting
mov r8, r0
mov r0, r8
bl printl
bl doubleIf
mov r8, r0
mov r0, r8
bl printl
bl integerDivide
mov r8, r0
mov r0, r8
bl printl
bl association
mov r8, r0
mov r0, r8
bl printl
mov r0, r5
mov r1, #1000
bl __aeabi_idiv
mov r8, r0
mov r0, r8
bl tailRecursion
mov r8, r0
mov r0, r8
bl printl
bl unswitching
mov r8, r0
mov r0, r8
bl printl
mov r0, r5
bl randomCalculation
mov r8, r0
mov r0, r8
bl printl
mov r0, r5
mov r1, #5
bl __aeabi_idiv
mov r8, r0
mov r0, r8
bl iterativeFibonacci
mov r8, r0
mov r0, r8
bl printl
mov r0, r5
mov r1, #1000
bl __aeabi_idiv
mov r8, r0
mov r0, r8
bl recursiveFibonacci
mov r8, r0
mov r0, r8
bl printl
add r8, r4, #1
b LU74

LU76:
movw r8, #:lower16: 9999
movt r8, #:upper16: 9999
mov r0, r8
bl printl
mov r0, #0
b LU73
LU73:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU73

.size main, .-main
.text
.align 2
.global commonSubexpressionElimination
commonSubexpressionElimination:
LU24:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r0, #:lower16:-48796
movt r0, #:upper16:-48796
b LU25
LU25:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU25

.size commonSubexpressionElimination, .-commonSubexpressionElimination
