.arch armv7-a
.global __aeabi_idiv
.comm a 4,4
.comm b 4,4
.comm i 4,4
.text
.align 2
.global bintreesearch
bintreesearch:
LU76:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r7, r1, #0
movw r8, #:lower16: -1
movt r8, #:upper16: -1
mov r0, r8
bl printl
mov r8, #0
cmp r6, #0
movne r8, #1
cmp r8, #1
beq LU78
bne LU79
LU78:
add r8, r6, #0
ldr r8, [r8]
mov r5, #0
cmp r8, r7
moveq r5, #1
cmp r5, #1
beq LU80
bne LU81
LU80:
mov r0, #1
b LU77
LU77:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU77
LU81:
add r8, r6, #0
ldr r5, [r8]
mov r8, #0
cmp r7, r5
movlt r8, #1
cmp r8, #1
beq LU82
bne LU84
LU82:
add r8, r6, #4
ldr r8, [r8]
mov r0, r8
mov r1, r7
bl bintreesearch
mov r8, r0
mov r0, r8
b LU77

LU84:
add r8, r6, #8
ldr r8, [r8]
mov r0, r8
mov r1, r7
bl bintreesearch
mov r8, r0
mov r0, r8
b LU77

LU79:
mov r0, #0
b LU77


.size bintreesearch, .-bintreesearch
.text
.align 2
.global inOrder
inOrder:
LU71:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
movne r8, #1
cmp r8, #1
beq LU73
bne LU75
LU73:
mov r0, #8
bl malloc
mov r8, r0
mov r6, r8
add r8, r7, #0
ldr r8, [r8]
add r5, r6, #0
str r8, [r5]
add r5, r6, #4
mov r8, #0
str r8, [r5]
add r8, r7, #4
ldr r8, [r8]
mov r0, r8
bl inOrder
mov r5, r0
add r8, r7, #8
ldr r8, [r8]
mov r0, r8
bl inOrder
mov r8, r0
mov r0, r6
mov r1, r8
bl concatLists
mov r8, r0
mov r0, r5
mov r1, r8
bl concatLists
mov r8, r0
mov r0, r8
b LU72
LU72:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU72
LU75:
mov r0, #0
b LU72


.size inOrder, .-inOrder
.text
.align 2
.global treesearch
treesearch:
LU60:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r5, r0, #0
add r6, r1, #0
movw r8, #:lower16: -1
movt r8, #:upper16: -1
mov r0, r8
bl printl
mov r8, #0
cmp r5, #0
movne r8, #1
cmp r8, #1
beq LU62
bne LU63
LU62:
add r8, r5, #0
ldr r7, [r8]
mov r8, #0
cmp r7, r6
moveq r8, #1
cmp r8, #1
beq LU64
bne LU65
LU64:
mov r0, #1
b LU61
LU61:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU61
LU65:
add r8, r5, #4
ldr r8, [r8]
mov r0, r8
mov r1, r6
bl treesearch
mov r7, r0
mov r8, #0
cmp r7, #1
moveq r8, #1
cmp r8, #1
beq LU66
bne LU67
LU66:
mov r0, #1
b LU61

LU67:
add r8, r5, #8
ldr r8, [r8]
mov r0, r8
mov r1, r6
bl treesearch
mov r7, r0
mov r8, #0
cmp r7, #1
moveq r8, #1
cmp r8, #1
beq LU68
bne LU70
LU68:
mov r0, #1
b LU61

LU70:
mov r0, #0
b LU61

LU63:
mov r0, #0
b LU61


.size treesearch, .-treesearch
.text
.align 2
.global treeadd
treeadd:
LU41:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r7, r1, #0
mov r8, #0
cmp r6, #0
moveq r8, #1
cmp r8, #1
beq LU43
bne LU44
LU43:
mov r0, #12
bl malloc
mov r8, r0
mov r6, r8
add r8, r6, #0
str r7, [r8]
add r7, r6, #4
mov r8, #0
str r8, [r7]
add r8, r6, #8
mov r7, #0
str r7, [r8]
mov r0, r6
b LU42
LU42:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU42
LU44:
add r8, r6, #0
ldr r5, [r8]
mov r8, #0
cmp r7, r5
movlt r8, #1
cmp r8, #1
beq LU45
bne LU47
LU45:
mov r5, r6
add r8, r6, #4
ldr r8, [r8]
mov r0, r8
mov r1, r7
bl treeadd
mov r7, r0
add r8, r6, #4
str r7, [r8]
b LU46
LU46:
mov r8, r5
mov r0, r8
b LU42

LU47:
mov r5, r6
add r8, r6, #8
ldr r8, [r8]
mov r0, r8
mov r1, r7
bl treeadd
mov r8, r0
add r7, r6, #8
str r8, [r7]
b LU46


.size treeadd, .-treeadd
.text
.align 2
.global quickSortMain
quickSortMain:
LU58:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r0, r7
bl printList
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
bl printList
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
bl printList
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, #0
b LU59
LU59:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU59

.size quickSortMain, .-quickSortMain
.text
.align 2
.global postOrder
postOrder:
LU37:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
mov r8, #0
cmp r6, #0
movne r8, #1
cmp r8, #1
beq LU39
bne LU40
LU39:
mov r0, #8
bl malloc
mov r8, r0
mov r5, r8
add r8, r6, #0
ldr r7, [r8]
add r8, r5, #0
str r7, [r8]
add r7, r5, #4
mov r8, #0
str r8, [r7]
add r8, r6, #4
ldr r8, [r8]
mov r0, r8
bl postOrder
mov r7, r0
add r8, r6, #8
ldr r8, [r8]
mov r0, r8
bl postOrder
mov r8, r0
mov r0, r7
mov r1, r8
bl concatLists
mov r8, r0
mov r0, r8
mov r1, r5
bl concatLists
mov r8, r0
mov r0, r8
b LU38
LU38:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU38
LU40:
mov r0, #0
b LU38


.size postOrder, .-postOrder
.text
.align 2
.global freeTree
freeTree:
LU33:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r7, #0
cmp r8, #0
moveq r7, #1
eor r7, r7, #1
cmp r7, #1
beq LU35
bne LU36
LU35:
add r7, r8, #4
ldr r7, [r7]
mov r0, r7
bl freeTree
add r7, r8, #8
ldr r7, [r7]
mov r0, r7
bl freeTree
mov r8, r8
mov r0, r8
bl free
b LU36
LU36:
b LU34
LU34:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}


.size freeTree, .-freeTree
.text
.align 2
.global freeList
freeList:
LU29:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
movne r8, #1
cmp r8, #1
beq LU31
bne LU32
LU31:
add r8, r7, #4
ldr r8, [r8]
mov r0, r8
bl freeList
mov r8, r7
mov r0, r8
bl free
b LU32
LU32:
b LU30
LU30:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}


.size freeList, .-freeList
.text
.align 2
.global treeprint
treeprint:
LU25:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
movne r8, #1
cmp r8, #1
beq LU27
bne LU28
LU27:
add r8, r7, #4
ldr r8, [r8]
mov r0, r8
bl treeprint
add r8, r7, #0
ldr r8, [r8]
mov r0, r8
bl printl
add r8, r7, #8
ldr r8, [r8]
mov r0, r8
bl treeprint
b LU28
LU28:
b LU26
LU26:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}


.size treeprint, .-treeprint
.text
.align 2
.global printList
printList:
LU21:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
movne r8, #1
cmp r8, #1
beq LU23
bne LU24
LU23:
add r8, r7, #0
ldr r8, [r8]
mov r0, r8
bl printl
add r8, r7, #4
ldr r8, [r8]
mov r0, r8
bl printList
b LU24
LU24:
b LU22
LU22:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}


.size printList, .-printList
.text
.align 2
.global pop
pop:
LU19:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r8, r8, #4
ldr r8, [r8]
mov r0, r8
b LU20
LU20:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU20

.size pop, .-pop
.text
.align 2
.global get
get:
LU15:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r6, r0, #0
add r8, r1, #0
mov r7, #0
cmp r8, #0
moveq r7, #1
cmp r7, #1
beq LU17
bne LU18
LU17:
add r8, r6, #0
ldr r8, [r8]
mov r0, r8
b LU16
LU16:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU16
LU18:
add r7, r6, #4
ldr r7, [r7]
sub r8, r8, #1
mov r0, r7
mov r1, r8
bl get
mov r8, r0
mov r0, r8
b LU16


.size get, .-get
.text
.align 2
.global size
size:
LU11:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
moveq r8, #1
cmp r8, #1
beq LU13
bne LU14
LU13:
mov r0, #0
b LU12
LU12:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU12
LU14:
add r8, r7, #4
ldr r8, [r8]
mov r0, r8
bl size
mov r8, r0
movw r7, #:lower16: 1
movt r7, #:upper16: 1
add r8, r7, r8
mov r0, r8
b LU12


.size size, .-size
.text
.align 2
.global add
add:
LU9:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r6, r1, #0
mov r0, #8
bl malloc
mov r7, r0
mov r5, r7
add r7, r5, #0
str r6, [r7]
add r7, r5, #4
str r8, [r7]
mov r0, r5
b LU10
LU10:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU10

.size add, .-add
.text
.align 2
.global concatLists
concatLists:
LU2:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
add r6, r1, #0
mov r7, #0
cmp r8, #0
moveq r7, #1
cmp r7, #1
beq LU4
bne LU5
LU4:
mov r0, r6
b LU3
LU3:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU3
LU5:
mov r7, r6
mov r4, r8
mov r5, r8
b LU6
LU6:
mov r8, r4
mov r4, r7
mov r6, r5
add r7, r6, #4
ldr r7, [r7]
mov r5, #0
cmp r7, #0
movne r5, #1
cmp r5, #1
beq LU7
bne LU8
LU7:
mov r7, r4
mov r4, r8
mov r5, r3
add r8, r6, #4
ldr r3, [r8]
b LU6

LU8:
add r7, r6, #4
str r4, [r7]
mov r0, r8
b LU3


.size concatLists, .-concatLists
.text
.align 2
.global myCopy
myCopy:
LU92:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r7, r0, #0
mov r8, #0
cmp r7, #0
moveq r8, #1
cmp r8, #1
beq LU96
bne LU97
LU96:
mov r0, #0
b LU93
LU93:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}
mov r0, #0
b LU93
LU97:
add r8, r7, #0
ldr r8, [r8]
mov r0, #0
mov r1, r8
bl add
mov r8, r0
add r7, r7, #4
ldr r7, [r7]
mov r0, r7
bl myCopy
mov r7, r0
mov r0, r8
mov r1, r7
bl concatLists
mov r8, r0
mov r0, r8
b LU93


.size myCopy, .-myCopy
.text
.align 2
.global buildTree
buildTree:
LU85:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
mov r7, r8
mov r10, #0
str r10, [r11, #4]
mov r5, #0
add r8, r0, #0
b LU87
LU87:
ldr r10, [r11, #4]
mov r10, r10
str r10, [r11, #12]
mov r10, r7
str r10, [r11, #8]
mov r6, r5
ldr r10, [r11, #8]
mov r0, r10
bl size
mov r5, r0
mov r7, #0
cmp r6, r5
movlt r7, #1
cmp r7, #1
beq LU88
bne LU89
LU88:
ldr r10, [r11, #8]
mov r7, r10
mov r10, r4
str r10, [r11, #4]
mov r5, r8
ldr r10, [r11, #8]
mov r0, r10
mov r1, r6
bl get
mov r8, r0
ldr r10, [r11, #12]
mov r0, r10
mov r1, r8
bl treeadd
mov r4, r0
add r8, r6, #1
b LU87

LU89:
ldr r10, [r11, #12]
mov r0, r10
b LU86
LU86:
pop {r4-r10}
sub r13, r11, #16
pop {fp, pc}
mov r0, #0
b LU86

.size buildTree, .-buildTree
.text
.align 2
.global main
main:
LU94:
push {fp, lr}
add r11, r13, #16
push {r4-r10}
mov r7, #0
mov r6, #0
mov r5, #0
mov r4, #0
b LU98
LU98:
mov r5, r5
mov r6, r6
mov r10, r7
str r10, [r11, #8]
mov r10, r4
str r10, [r11, #12]
mov r7, #0
ldr r10, [r11, #12]
cmp r10, #10
movlt r7, #1
cmp r7, #1
beq LU99
bne LU100
LU99:
mov r7, r8
ldr r10, [r11, #4]
mov r6, r10
mov r5, r8
mov r4, r8
bl readchar
mov r8, r0
ldr r10, [r11, #8]
mov r0, r10
mov r1, r8
bl add
mov r8, r0
mov r0, r8
bl myCopy
mov r10, r0
str r10, [r11, #4]
mov r0, r8
bl myCopy
mov r8, r0
ldr r10, [r11, #4]
mov r0, r10
bl quickSortMain
mov r0, r0
mov r0, r0
bl freeList
mov r0, r8
bl treeMain
ldr r10, [r11, #12]
add r8, r10, #1
b LU98

LU100:
ldr r10, [r11, #8]
mov r0, r10
bl freeList
mov r0, r6
bl freeList
mov r0, r5
bl freeList
mov r0, #0
b LU95
LU95:
pop {r4-r10}
sub r13, r11, #16
pop {fp, pc}
mov r0, #0
b LU95

.size main, .-main
.text
.align 2
.global treeMain
treeMain:
LU90:
push {fp, lr}
add r11, r13, #4
push {r4-r10}
add r8, r0, #0
mov r0, r8
bl buildTree
mov r7, r0
mov r0, r7
bl treeprint
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
bl inOrder
mov r6, r0
mov r0, r6
bl printList
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r6
bl freeList
mov r0, r7
bl postOrder
mov r6, r0
mov r0, r6
bl printList
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r6
bl freeList
mov r0, r7
mov r1, #0
bl treesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #10
bl treesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
movw r8, #:lower16: -2
movt r8, #:upper16: -2
mov r1, r8
bl treesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #2
bl treesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #3
bl treesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #9
bl treesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #1
bl treesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #0
bl bintreesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #10
bl bintreesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
movw r8, #:lower16: -2
movt r8, #:upper16: -2
mov r1, r8
bl bintreesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #2
bl bintreesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #3
bl bintreesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #9
bl bintreesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
mov r1, #1
bl bintreesearch
mov r8, r0
mov r0, r8
bl printl
movw r8, #:lower16: -999
movt r8, #:upper16: -999
mov r0, r8
bl printl
mov r0, r7
bl freeTree
b LU91
LU91:
pop {r4-r10}
sub r13, r11, #4
pop {fp, pc}

.size treeMain, .-treeMain
.text
.align 2
.global quickSort
quickSort:
LU48:
push {fp, lr}
add r11, r13, #40
push {r4-r10}
add r7, r0, #0
mov r0, r7
bl size
mov r6, r0
mov r8, #0
cmp r6, #1
movle r8, #1
cmp r8, #1
beq LU50
bne LU51
LU50:
mov r0, r7
b LU49
LU49:
pop {r4-r10}
sub r13, r11, #40
pop {fp, pc}
mov r0, #0
b LU49
LU51:
mov r10, r7
str r10, [r11, #32]
mov r10, #0
str r10, [r11, #28]
mov r6, r4
mov r8, #0
mov r5, #0
mov r10, r7
str r10, [r11, #36]
mov r0, r7
mov r1, #0
bl get
mov r4, r0
mov r0, r7
bl size
mov r1, r0
sub r1, r1, #1
mov r0, r7
mov r1, r1
bl get
mov r7, r0
add r7, r4, r7
mov r0, r7
mov r1, #2
bl __aeabi_idiv
mov r4, r0
b LU52
LU52:
mov r10, r5
str r10, [r11, #4]
mov r7, r8
mov r6, r6
ldr r10, [r11, #28]
mov r5, r10
ldr r10, [r11, #32]
mov r8, r10
ldr r10, [r11, #36]
mov r4, r10
mov r0, #0
cmp r4, #0
movne r0, #1
cmp r0, #1
beq LU53
bne LU54
LU53:
mov r0, r8
mov r1, r5
bl get
mov r0, r0
mov r1, #0
cmp r0, r6
movgt r1, #1
cmp r1, #1
beq LU55
bne LU57
LU55:
mov r10, r5
str r10, [r11, #20]
mov r10, r8
str r10, [r11, #24]
mov r10, r6
str r10, [r11, #8]
mov r10, r3
str r10, [r11, #16]
ldr r10, [r11, #4]
mov r10, r10
str r10, [r11, #12]
mov r4, r4
mov r0, r8
mov r1, r5
bl get
mov r8, r0
mov r0, r7
mov r1, r8
bl add
mov r3, r0
b LU56
LU56:
mov r10, r7
str r10, [r11, #32]
mov r10, r7
str r10, [r11, #28]
mov r6, r7
mov r8, r7
mov r5, r7
mov r10, r7
str r10, [r11, #36]
ldr r10, [r11, #12]
mov r7, r10
ldr r10, [r11, #16]
mov r7, r10
ldr r10, [r11, #8]
mov r7, r10
ldr r10, [r11, #24]
mov r7, r10
ldr r10, [r11, #20]
mov r0, r10
mov r7, r4
add r7, r7, #4
ldr r7, [r7]
add r7, r0, #1
b LU52

LU57:
mov r10, r5
str r10, [r11, #20]
mov r10, r8
str r10, [r11, #24]
mov r10, r6
str r10, [r11, #8]
mov r10, r7
str r10, [r11, #16]
mov r10, r3
str r10, [r11, #12]
mov r4, r4
mov r0, r8
mov r1, r5
bl get
mov r8, r0
ldr r10, [r11, #4]
mov r0, r10
mov r1, r8
bl add
mov r3, r0
b LU56

LU54:
mov r0, r8
bl freeList
ldr r10, [r11, #4]
mov r0, r10
bl quickSort
mov r8, r0
mov r0, r7
bl quickSort
mov r7, r0
mov r0, r8
mov r1, r7
bl concatLists
mov r8, r0
mov r0, r8
b LU49


.size quickSort, .-quickSort
