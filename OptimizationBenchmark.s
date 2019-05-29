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
add r7, r0, #0
mov r8, #0
cmp r7, #0
movle r8, #1
mov r6, #0
cmp r7, #1
moveq r6, #1
mov r5, r8
mov r8, r6
orr r8, r5, r8
mov r8, r8
cmp r8, #1
beq LU69
bne LU71
LU69:
mov r0, r7
b LU68
LU68:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU68
LU71:
sub r8, r7, #1
mov r0, r8
bl recursiveFibonacci
mov r6, r0
sub r8, r7, #2
mov r0, r8
bl recursiveFibonacci
mov r8, r0
add r8, r6, r8
mov r0, r8
b LU68


.size recursiveFibonacci, .-recursiveFibonacci
.text
.align 2
.global iterativeFibonacci
iterativeFibonacci:
LU62:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
mov r5, r7
mov r7, #1
mov r6, #-1
b LU64
LU64:
mov r3, r6
mov r4, r7
mov r6, r5
mov r7, r8
mov r8, #0
cmp r7, r6
movlt r8, #1
cmp r8, #1
beq LU65
bne LU66
LU65:
add r3, r4, r3
add r8, r7, #1
mov r8, r8
mov r5, r6
mov r7, r3
mov r6, r4
b LU64

LU66:
mov r0, r4
b LU63
LU63:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU63

.size iterativeFibonacci, .-iterativeFibonacci
.text
.align 2
.global unswitching
unswitching:
LU44:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r8, #1
mov r7, #2
b LU46
LU46:
mov r7, r7
mov r7, r8
mov r8, #0
movw r8, #:lower16: 1000000
movt r8, #:upper16: 1000000
cmp r7, r8
movlt r8, #1
cmp r8, #1
beq LU47
bne LU48
LU47:
mov r8, #0
movw r8, #:lower16: 2
movt r8, #:upper16: 2
cmp r8, #2
moveq r8, #1
cmp r8, #1
beq LU49
bne LU51
LU49:
add r8, r7, #1
mov r8, r8
mov r7, r7
b LU50
LU50:
mov r7, r7
mov r8, r8
mov r8, r8
mov r7, r7
b LU46

LU51:
add r8, r7, #2
mov r8, r8
mov r7, r7
b LU50

LU48:
mov r0, r7
b LU45
LU45:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU45

.size unswitching, .-unswitching
.text
.align 2
.global tailRecursionHelper
tailRecursionHelper:
LU52:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
add r6, r1, #0
mov r8, #0
cmp r7, #0
moveq r8, #1
cmp r8, #1
beq LU59
bne LU61
LU59:
mov r0, r6
b LU58
LU58:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU58
LU61:
sub r8, r7, #1
add r7, r6, r7
mov r0, r8
mov r1, r7
bl tailRecursionHelper
mov r8, r0
mov r0, r8
b LU58


.size tailRecursionHelper, .-tailRecursionHelper
.text
.align 2
.global tailRecursion
tailRecursion:
LU42:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
mov r1, #0
bl tailRecursionHelper
mov r8, r0
mov r0, r8
b LU43
LU43:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU43

.size tailRecursion, .-tailRecursion
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
b LU41

.size association, .-association
.text
.align 2
.global doubleIf
doubleIf:
LU31:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, #0
movw r8, #:lower16: 1
movt r8, #:upper16: 1
cmp r8, #1
moveq r7, #1
mov r8, #0
cmp r7, #1
beq LU33
bne LU34
LU33:
mov r7, #0
movw r8, #:lower16: 1
movt r8, #:upper16: 1
cmp r8, #1
moveq r7, #1
mov r8, #0
cmp r7, #1
beq LU35
bne LU37
LU35:
b LU36
LU36:
mov r8, #50
b LU34
LU34:
mov r8, r8
mov r0, r8
b LU32
LU32:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU32
LU37:
b LU36



.size doubleIf, .-doubleIf
.text
.align 2
.global integerDivide
integerDivide:
LU38:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #703
b LU39
LU39:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU39

.size integerDivide, .-integerDivide
.text
.align 2
.global hoisting
hoisting:
LU26:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r5, #0
mov r4, #1
mov r6, #2
mov r8, #3
mov r7, #4
b LU28
LU28:
mov r3, r7
mov r2, r8
mov r6, r6
mov r7, r4
mov r5, r5
mov r8, #0
movw r8, #:lower16: 1000000
movt r8, #:upper16: 1000000
cmp r5, r8
movlt r8, #1
cmp r8, #1
beq LU29
bne LU30
LU29:
add r8, r5, #1
mov r5, r8
mov r4, r7
mov r6, r6
mov r8, r2
mov r7, r3
b LU28

LU30:
mov r0, #2
b LU27
LU27:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
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
movw r7, #:lower16: global1
movt r7, #:upper16: global1
movw r8, #:lower16: 1
movt r8, #:upper16: 1
str r8, [r7]
movw r7, #:lower16: global2
movt r7, #:upper16: global2
movw r8, #:lower16: 0
movt r8, #:upper16: 0
str r8, [r7]
movw r8, #:lower16: global3
movt r8, #:upper16: global3
movw r7, #:lower16: 0
movt r7, #:upper16: 0
str r7, [r8]
mov r0, #100
bl sum
mov r8, r0
movw r7, #:lower16: global1
movt r7, #:upper16: global1
ldr r6, [r7]
mov r7, #0
cmp r6, #1
moveq r7, #1
cmp r7, #1
beq LU17
bne LU19
LU17:
movw r8, #:lower16: 10000
movt r8, #:upper16: 10000
mov r0, r8
bl sum
mov r8, r0
mov r8, r8
b LU18
LU18:
mov r8, r8
mov r0, r8
b LU16
LU16:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU16
LU19:
movw r7, #:lower16: global2
movt r7, #:upper16: global2
ldr r7, [r7]
mov r6, #0
cmp r7, #2
moveq r6, #1
mov r8, r8
cmp r6, #1
beq LU20
bne LU21
LU20:
movw r8, #:lower16: 20000
movt r8, #:upper16: 20000
mov r0, r8
bl sum
mov r8, r0
mov r8, r8
b LU21
LU21:
mov r7, r8
movw r8, #:lower16: global3
movt r8, #:upper16: global3
ldr r8, [r8]
mov r6, #0
cmp r8, #3
moveq r6, #1
mov r8, r7
cmp r6, #1
beq LU22
bne LU23
LU22:
movw r8, #:lower16: 30000
movt r8, #:upper16: 30000
mov r0, r8
bl sum
mov r8, r0
mov r8, r8
b LU23
LU23:
mov r8, r8
mov r8, r8
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
add r8, r0, #0
mov r7, r8
mov r8, #0
b LU10
LU10:
mov r8, r8
mov r7, r7
mov r8, #0
cmp r7, #0
movgt r8, #1
cmp r8, #1
beq LU11
bne LU12
LU11:
sub r8, r7, #1
mov r7, r8
mov r8, r6
b LU10

LU12:
mov r0, #0
b LU9
LU9:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
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
b LU3

.size constantFolding, .-constantFolding
.text
.align 2
.global randomCalculation
randomCalculation:
LU53:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r5, #0
mov r7, r8
mov r8, #0
b LU55
LU55:
mov r8, r8
mov r6, r7
mov r7, r5
mov r5, #0
cmp r7, r6
movlt r5, #1
cmp r5, #1
beq LU56
bne LU57
LU56:
add r8, r8, #19
movw r5, #:lower16: 2
movt r5, #:upper16: 2
mul r7, r7, r5
mov r0, r7
mov r1, #2
bl __aeabi_idiv
mov r7, r0
movw r5, #:lower16: 3
movt r5, #:upper16: 3
mul r7, r5, r7
mov r0, r7
mov r1, #3
bl __aeabi_idiv
mov r5, r0
movw r7, #:lower16: 4
movt r7, #:upper16: 4
mul r7, r5, r7
mov r0, r7
mov r1, #4
bl __aeabi_idiv
mov r7, r0
add r7, r7, #1
mov r5, r7
mov r7, r6
mov r8, r8
b LU55

LU57:
mov r0, r8
b LU54
LU54:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU54

.size randomCalculation, .-randomCalculation
.text
.align 2
.global main
main:
LU72:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
bl readchar
mov r8, r0
mov r7, #1
mov r8, r8
b LU74
LU74:
mov r6, r8
mov r8, r7
mov r7, #0
cmp r8, r6
movlt r7, #1
cmp r7, #1
beq LU75
bne LU76
LU75:
bl constantFolding
mov r7, r0
mov r0, r7
bl printl
bl constantPropagation
mov r7, r0
mov r0, r7
bl printl
bl deadCodeElimination
mov r7, r0
mov r0, r7
bl printl
bl interProceduralOptimization
mov r7, r0
mov r0, r7
bl printl
bl commonSubexpressionElimination
mov r7, r0
mov r0, r7
bl printl
bl hoisting
mov r7, r0
mov r0, r7
bl printl
bl doubleIf
mov r7, r0
mov r0, r7
bl printl
bl integerDivide
mov r7, r0
mov r0, r7
bl printl
bl association
mov r7, r0
mov r0, r7
bl printl
mov r0, r6
mov r1, #1000
bl __aeabi_idiv
mov r7, r0
mov r0, r7
bl tailRecursion
mov r7, r0
mov r0, r7
bl printl
bl unswitching
mov r7, r0
mov r0, r7
bl printl
mov r0, r6
bl randomCalculation
mov r7, r0
mov r0, r7
bl printl
mov r0, r6
mov r1, #5
bl __aeabi_idiv
mov r7, r0
mov r0, r7
bl iterativeFibonacci
mov r7, r0
mov r0, r7
bl printl
mov r0, r6
mov r1, #1000
bl __aeabi_idiv
mov r7, r0
mov r0, r7
bl recursiveFibonacci
mov r7, r0
mov r0, r7
bl printl
add r8, r8, #1
mov r7, r8
mov r8, r6
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
mov r0, #-48796
b LU25
LU25:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
b LU25

.size commonSubexpressionElimination, .-commonSubexpressionElimination
