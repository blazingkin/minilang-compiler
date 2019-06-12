.arch armv7-a
.global __aeabi_idiv
.comm global1 4,4
.comm global2 4,4
.comm global3 4,4
.text
.align 2
.global recursiveFibonacci
recursiveFibonacci:
LU64:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r6, #0
cmp r7, #0
movle r6, #1
mov r8, #0
cmp r7, #1
moveq r8, #1
orr r8, r6, r8
cmp r8, #1
beq LU66
bne LU68
LU66:
mov r0, r7
b LU65
LU65:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU65
LU68:
sub r8, r7, #1
mov r0, r8
bl recursiveFibonacci
mov r8, r0
sub r7, r7, #2
mov r0, r7
bl recursiveFibonacci
mov r7, r0
add r8, r8, r7
mov r0, r8
b LU65


.size recursiveFibonacci, .-recursiveFibonacci
.text
.align 2
.global unswitching
unswitching:
LU46:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r8, #2
mov r7, #1
b LU48
LU48:
mov r4, r8
mov r5, r7
mov r8, #0
movw r8, #:lower16: 1000000
movt r8, #:upper16: 1000000
cmp r5, r8
movlt r8, #1
cmp r8, #1
beq LU49
bne LU50
LU49:
mov r8, #0
cmp r4, #2
moveq r8, #1
cmp r8, #1
beq LU51
bne LU53
LU51:
mov r4, r4
mov r3, r7
add r7, r5, #1
b LU52
LU52:
mov r8, r6
mov r7, r6
mov r6, r4
mov r6, r3
b LU48

LU53:
mov r4, r4
mov r3, r7
add r7, r5, #2
b LU52

LU50:
mov r0, r5
b LU47
LU47:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU47

.size unswitching, .-unswitching
.text
.align 2
.global hoisting
hoisting:
LU26:
push {fp, lr}
add r11, r13, #12
push {r4-r10}
mov r2, #1
mov r10, #2
str r10, [r11, #8]
mov r1, #3
mov r0, #4
mov r10, #0
str r10, [r11, #4]
b LU32
LU32:
mov r6, r0
mov r8, r1
ldr r10, [r11, #8]
mov r5, r10
mov r7, r2
ldr r10, [r11, #4]
mov r3, r10
mov r2, #0
movw r2, #:lower16: 1000000
movt r2, #:upper16: 1000000
cmp r3, r2
movlt r2, #1
cmp r2, #1
beq LU34
bne LU36
LU34:
mov r2, r7
mov r10, r5
str r10, [r11, #8]
mov r1, r8
mov r0, r6
mov r10, r4
str r10, [r11, #4]
add r7, r7, r5
add r7, r7, r8
add r8, r8, r6
add r8, r8, r7
add r4, r3, #1
b LU32

LU36:
mov r0, r5
b LU28
LU28:
pop {r4-r10}
sub r13, r11, #12
pop {fp, pc}
mov r0, #0
b LU28

.size hoisting, .-hoisting
.text
.align 2
.global iterativeFibonacci
iterativeFibonacci:
LU55:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r6, r8
mov r2, #1
mov r4, #-1
mov r3, #0
add r8, r0, #0
b LU57
LU57:
mov r5, r4
mov r7, r2
mov r4, r6
mov r8, r3
mov r6, #0
cmp r8, r4
movlt r6, #1
cmp r6, #1
beq LU58
bne LU59
LU58:
mov r6, r4
mov r2, r1
mov r4, r7
mov r3, r1
add r1, r7, r5
add r1, r8, #1
b LU57

LU59:
mov r0, r7
b LU56
LU56:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU56

.size iterativeFibonacci, .-iterativeFibonacci
.text
.align 2
.global association
association:
LU39:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r8, #:lower16: 10
movt r8, #:upper16: 10
movw r7, #:lower16: 2
movt r7, #:upper16: 2
mul r8, r8, r7
mov r0, r8
mov r1, #2
bl __aeabi_idiv
mov r8, r0
movw r7, #:lower16: 3
movt r7, #:upper16: 3
mul r8, r7, r8
mov r0, r8
mov r1, #3
bl __aeabi_idiv
mov r8, r0
movw r7, #:lower16: 4
movt r7, #:upper16: 4
mul r8, r8, r7
mov r0, r8
mov r1, #4
bl __aeabi_idiv
mov r8, r0
add r8, r8, #4
sub r7, r8, #4
movw r8, #:lower16: 50
movt r8, #:upper16: 50
mul r8, r7, r8
mov r0, r8
mov r1, #50
bl __aeabi_idiv
mov r8, r0
mov r0, r8
b LU40


.size association, .-association
.text
.align 2
.global tailRecursionHelper
tailRecursionHelper:


.size tailRecursionHelper, .-tailRecursionHelper
.text
.align 2
.global tailRecursion
tailRecursion:
LU41:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
mov r1, #0
bl tailRecursionHelper
mov r8, r0
mov r0, r8
b LU42
LU42:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU42

.size tailRecursion, .-tailRecursion
.text
.align 2
.global integerDivide
integerDivide:
LU38:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r0, #3000
mov r1, #2
bl __aeabi_idiv
mov r8, r0
movw r7, #:lower16: 4
movt r7, #:upper16: 4
mul r8, r8, r7
mov r0, r8
mov r1, #8
bl __aeabi_idiv
mov r8, r0
mov r0, r8
mov r1, #16
bl __aeabi_idiv
mov r7, r0
movw r8, #:lower16: 32
movt r8, #:upper16: 32
mul r8, r7, r8
mov r0, r8
mov r1, #64
bl __aeabi_idiv
mov r8, r0
movw r7, #:lower16: 128
movt r7, #:upper16: 128
mul r8, r8, r7
mov r0, r8
mov r1, #4
bl __aeabi_idiv
mov r8, r0
mov r0, r8
b LU40
LU40:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU40

.size integerDivide, .-integerDivide
.text
.align 2
.global doubleIf
doubleIf:
LU27:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, #0
mov r8, #0
movw r8, #:lower16: 1
movt r8, #:upper16: 1
cmp r8, #1
moveq r8, #1
cmp r8, #1
beq LU30
bne LU31
LU30:
mov r7, #0
mov r8, #0
movw r8, #:lower16: 1
movt r8, #:upper16: 1
cmp r8, #1
moveq r8, #1
cmp r8, #1
beq LU33
bne LU37
LU33:
b LU35
LU35:
mov r7, #50
b LU31
LU31:
mov r8, r7
mov r0, r8
b LU29
LU29:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU29
LU37:
b LU35



.size doubleIf, .-doubleIf
.text
.align 2
.global sum
sum:
LU8:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r4, #0
mov r6, r8
add r8, r0, #0
b LU10
LU10:
mov r3, r4
mov r8, r6
mov r6, #0
cmp r8, #0
movgt r6, #1
cmp r6, #1
beq LU11
bne LU12
LU11:
mov r4, r7
mov r6, r5
add r7, r3, r8
sub r5, r8, #1
b LU10

LU12:
mov r0, r3
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
.global doesntModifyGlobals
doesntModifyGlobals:
LU13:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r8, #:lower16: 1
movt r8, #:upper16: 1
add r8, r8, #2
mov r0, r8
b LU15
LU15:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU15

.size doesntModifyGlobals, .-doesntModifyGlobals
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
movw r8, #:lower16: 8
movt r8, #:upper16: 8
add r8, r8, #8
add r8, r8, #9
add r8, r8, #3
add r8, r8, #10
mov r0, r8
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
movw r8, #:lower16: 8
movt r8, #:upper16: 8
movw r7, #:lower16: 9
movt r7, #:upper16: 9
mul r8, r8, r7
mov r0, r8
mov r1, #4
bl __aeabi_idiv
mov r8, r0
add r6, r8, #2
movw r7, #:lower16: 5
movt r7, #:upper16: 5
movw r8, #:lower16: 8
movt r8, #:upper16: 8
mul r8, r7, r8
sub r8, r6, r8
add r8, r8, #9
sub r8, r8, #12
add r8, r8, #6
sub r8, r8, #9
sub r6, r8, #18
movw r8, #:lower16: 23
movt r8, #:upper16: 23
movw r7, #:lower16: 3
movt r7, #:upper16: 3
mul r8, r8, r7
mov r0, r8
mov r1, #23
bl __aeabi_idiv
mov r8, r0
movw r7, #:lower16: 90
movt r7, #:upper16: 90
mul r8, r8, r7
add r8, r6, r8
mov r0, r8
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
.global interProceduralOptimization
interProceduralOptimization:
LU14:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
movw r8, #:lower16: global1
movt r8, #:upper16: global1
movw r6, #:lower16: 1
movt r6, #:upper16: 1
str r6, [r8]
movw r8, #:lower16: global2
movt r8, #:upper16: global2
movw r6, #:lower16: 0
movt r6, #:upper16: 0
str r6, [r8]
movw r8, #:lower16: global3
movt r8, #:upper16: global3
movw r6, #:lower16: 0
movt r6, #:upper16: 0
str r6, [r8]
mov r0, #100
bl sum
mov r8, r0
movw r6, #:lower16: global1
movt r6, #:upper16: global1
ldr r6, [r6]
mov r5, #0
cmp r6, #1
moveq r5, #1
cmp r5, #1
beq LU17
bne LU19
LU17:
mov r8, r7
movw r7, #:lower16: 10000
movt r7, #:upper16: 10000
mov r0, r7
bl sum
mov r7, r0
b LU18
LU18:
mov r8, r8
mov r0, r8
b LU16
LU16:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU16
LU19:
mov r5, r8
movw r8, #:lower16: global2
movt r8, #:upper16: global2
ldr r6, [r8]
mov r8, #0
cmp r6, #2
moveq r8, #1
cmp r8, #1
beq LU20
bne LU21
LU20:
mov r5, r4
movw r8, #:lower16: 20000
movt r8, #:upper16: 20000
mov r0, r8
bl sum
mov r4, r0
b LU21
LU21:
mov r6, r7
mov r7, r5
movw r8, #:lower16: global3
movt r8, #:upper16: global3
ldr r8, [r8]
mov r7, #0
cmp r8, #3
moveq r7, #1
cmp r7, #1
beq LU22
bne LU23
LU22:
mov r6, r4
movw r8, #:lower16: 30000
movt r8, #:upper16: 30000
mov r0, r8
bl sum
mov r4, r0
b LU23
LU23:
mov r8, r5
mov r5, r6
b LU18




.size interProceduralOptimization, .-interProceduralOptimization
.text
.align 2
.global randomCalculation
randomCalculation:
LU54:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r5, r7
mov r4, #0
mov r8, #0
add r7, r0, #0
b LU61
LU61:
mov r0, r4
mov r5, r5
mov r6, r8
mov r8, #0
cmp r6, r5
movlt r8, #1
cmp r8, #1
beq LU62
bne LU63
LU62:
mov r5, r5
mov r4, r7
mov r8, r1
movw r7, #:lower16: 4
movt r7, #:upper16: 4
add r7, r7, #7
add r7, r7, #8
add r7, r0, r7
movw r1, #:lower16: 2
movt r1, #:upper16: 2
mul r6, r6, r1
mov r0, r6
mov r1, #2
bl __aeabi_idiv
mov r1, r0
movw r6, #:lower16: 3
movt r6, #:upper16: 3
mul r6, r6, r1
mov r0, r6
mov r1, #3
bl __aeabi_idiv
mov r6, r0
movw r1, #:lower16: 4
movt r1, #:upper16: 4
mul r6, r6, r1
mov r0, r6
mov r1, #4
bl __aeabi_idiv
mov r6, r0
add r1, r6, #1
b LU61

LU63:
mov r0, r0
b LU60
LU60:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU60

.size randomCalculation, .-randomCalculation
.text
.align 2
.global main
main:
LU69:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
mov r7, r8
mov r4, #1
bl readchar
mov r8, r0
b LU71
LU71:
mov r5, r7
mov r8, r4
mov r7, #0
cmp r8, r5
movlt r7, #1
cmp r7, #1
beq LU72
bne LU73
LU72:
mov r7, r5
mov r4, r6
bl constantFolding
mov r6, r0
mov r0, r6
bl printl
bl constantPropagation
mov r6, r0
mov r0, r6
bl printl
bl deadCodeElimination
mov r6, r0
mov r0, r6
bl printl
bl interProceduralOptimization
mov r6, r0
mov r0, r6
bl printl
bl commonSubexpressionElimination
mov r6, r0
mov r0, r6
bl printl
bl hoisting
mov r6, r0
mov r0, r6
bl printl
bl doubleIf
mov r6, r0
mov r0, r6
bl printl
bl integerDivide
mov r6, r0
mov r0, r6
bl printl
bl association
mov r6, r0
mov r0, r6
bl printl
mov r0, r5
mov r1, #1000
bl __aeabi_idiv
mov r6, r0
mov r0, r6
bl tailRecursion
mov r6, r0
mov r0, r6
bl printl
bl unswitching
mov r6, r0
mov r0, r6
bl printl
mov r0, r5
bl randomCalculation
mov r6, r0
mov r0, r6
bl printl
mov r0, r5
mov r1, #5
bl __aeabi_idiv
mov r6, r0
mov r0, r6
bl iterativeFibonacci
mov r6, r0
mov r0, r6
bl printl
mov r0, r5
mov r1, #1000
bl __aeabi_idiv
mov r6, r0
mov r0, r6
bl recursiveFibonacci
mov r6, r0
mov r0, r6
bl printl
add r6, r8, #1
b LU71

LU73:
movw r8, #:lower16: 9999
movt r8, #:upper16: 9999
mov r0, r8
bl printl
mov r0, #0
b LU70
LU70:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU70

.size main, .-main
.text
.align 2
.global constantPropagation
constantPropagation:
LU4:
push {fp, lr}
add r11, r13, #12
push {r4-r10}
movw r8, #:lower16: 4
movt r8, #:upper16: 4
add r6, r8, #7
movw r8, #:lower16: 8
movt r8, #:upper16: 8
add r7, r8, #5
movw r8, #:lower16: 11
movt r8, #:upper16: 11
add r5, r8, #21
add r4, r6, r7
mul r10, r5, r4
str r10, [r11, #8]
mul r1, r7, r5
movw r8, #:lower16: 11
movt r8, #:upper16: 11
add r8, r8, r1
ldr r10, [r11, #8]
sub r10, r8, r10
str r10, [r11, #4]
mul r8, r5, r4
sub r8, r7, r8
ldr r10, [r11, #8]
mov r0, r10
ldr r10, [r11, #4]
mov r1, r10
bl __aeabi_idiv
mov r1, r0
add r8, r8, r1
movw r1, #:lower16: 11
movt r1, #:upper16: 11
add r1, r1, #21
add r1, r1, r6
add r1, r1, r7
add r1, r1, r5
sub r4, r1, r4
sub r8, r4, r8
add r8, r8, r7
sub r8, r8, #4
sub r8, r8, #7
ldr r10, [r11, #8]
ldr r9, [r11, #4]
add r1, r10, r9
sub r6, r1, r6
sub r6, r6, r7
movw r7, #:lower16: 7
movt r7, #:upper16: 7
sub r7, r7, #4
movw r1, #:lower16: 5
movt r1, #:upper16: 5
mul r7, r7, r1
sub r7, r7, r5
movw r7, #:lower16: 8
movt r7, #:upper16: 8
ldr r10, [r11, #4]
mul r1, r10, r7
movw r7, #:lower16: 5
movt r7, #:upper16: 5
mul r7, r1, r7
add r7, r7, r8
movw r0, #:lower16: 7
movt r0, #:upper16: 7
movw r1, #:lower16: 4
movt r1, #:upper16: 4
mul r0, r0, r1
movw r1, #:lower16: 8
movt r1, #:upper16: 8
mul r1, r0, r1
mov r0, r1
mov r1, #11
bl __aeabi_idiv
mov r3, r0
sub r1, r3, r8
ldr r10, [r11, #8]
add r5, r5, r10
add r5, r5, #8
sub r3, r5, r6
add r5, r4, r8
movw r2, #:lower16: 21
movt r2, #:upper16: 21
movw r0, #:lower16: 4
movt r0, #:upper16: 4
mul r2, r2, r0
sub r5, r5, r2
movw r5, #:lower16: 4
movt r5, #:upper16: 4
movw r2, #:lower16: 7
movt r2, #:upper16: 7
mul r5, r5, r2
ldr r10, [r11, #8]
sub r5, r5, r10
ldr r10, [r11, #4]
sub r2, r5, r10
sub r1, r2, r1
movw r5, #:lower16: 5
movt r5, #:upper16: 5
mul r7, r7, r5
sub r5, r1, r7
sub r8, r8, r5
sub r8, r8, r2
sub r8, r8, r4
mul r7, r6, r8
add r7, r7, r3
sub r7, r7, r5
sub r8, r5, r8
add r8, r8, r7
ldr r10, [r11, #8]
add r8, r8, r10
mov r0, r8
b LU5
LU5:
pop {r4-r10}
sub r13, r11, #12
pop {fp, pc}
mov r0, #0
b LU5

.size constantPropagation, .-constantPropagation
