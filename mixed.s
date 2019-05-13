.arch armv7-a
.global __aeabi_idiv
.comm globalfoo 4,4
.text
.align 2
.global tailrecursive
tailrecursive:
LU2:
push {fp, lr}
add %num, r0, #0
mov %v4, #0
cmp %num, #0
movle %v4, #1
cmp %v4, #1
beq LU4
bne LU5
LU4:
b LU3
LU3:
LU5:
sub %v8, %num, #1
mov r0, %v8
bl tailrecursive
b LU3


.size tailrecursive, .-tailrecursive
.text
.align 2
.global add
add:
LU6:
push {fp, lr}
add %x, r0, #0
add %y, r1, #0
add %v13, %x, %y
mov r0, %v13
b LU7
LU7:
b LU7

.size add, .-add
.text
.align 2
.global domath
domath:
LU8:
push {fp, lr}
add %num, r0, #0
mov r0, #12
bl malloc
mov %v20, r0
mov %v21, %v20
mov r0, #4
bl malloc
mov %v22, r0
mov %v23, %v22
add %v24, %v21, #8
str %v23, [%v24]
mov r0, #12
bl malloc
mov %v25, r0
mov %v26, %v25
mov r0, #4
bl malloc
mov %v27, r0
mov %v28, %v27
add %v29, %v26, #8
str %v28, [%v29]
add %v30, %v21, #0
str %num, [%v30]
add %v31, %v26, #0
mov %v80, #3
str %v80, [%v31]
add %v32, %v21, #0
ldr %v33, [%v32]
add %v34, %v21, #8
ldr %v35, [%v34]
add %v36, %v35, #0
str %v33, [%v36]
add %v37, %v26, #0
ldr %v38, [%v37]
add %v39, %v26, #8
ldr %v40, [%v39]
add %v41, %v40, #0
str %v38, [%v41]
mov %v77, %num
mov %v78, %v21
mov %v79, %v26
b LU10
LU10:
mov %v50, %v79
mov %v47, %v78
mov %v43, %v77
mov %v44, #0
cmp %v43, #0
movgt %v44, #1
cmp %v44, #1
beq LU11
bne LU12
LU11:
add %v48, %v47, #0
ldr %v49, [%v48]
add %v51, %v50, #0
ldr %v52, [%v51]
mul %v53, %v49, %v52
add %v54, %v47, #8
ldr %v55, [%v54]
add %v56, %v55, #0
ldr %v57, [%v56]
mul %v58, %v53, %v57
add %v59, %v50, #0
ldr %v60, [%v59]
mov r0, %v58
mov r1, %v60
bl __aeabi_idiv
mov %v61, r1
add %v63, %v50, #8
ldr %v64, [%v63]
add %v65, %v64, #0
ldr %v66, [%v65]
add %v67, %v47, #0
ldr %v68, [%v67]
mov r0, %v66
mov r1, %v68
bl add
mov %v62, r0
add %v69, %v50, #0
ldr %v70, [%v69]
add %v71, %v47, #0
ldr %v72, [%v71]
sub %v73, %v70, %v72
sub %v74, %v43, #1
mov %v77, %v74
mov %v78, %v47
mov %v79, %v50
b LU10

LU12:
mov %v75, %v47
mov r0, %v75
bl free
mov %v76, %v50
mov r0, %v76
bl free
b LU9
LU9:

.size domath, .-domath
.text
.align 2
.global objinstantiation
objinstantiation:
LU13:
push {fp, lr}
add %num, r0, #0
mov %v94, %num
b LU15
LU15:
mov %v86, %v94
mov %v87, #0
cmp %v86, #0
movgt %v87, #1
cmp %v87, #1
beq LU16
bne LU17
LU16:
mov r0, #12
bl malloc
mov %v90, r0
mov %v91, %v90
mov %v92, %v91
mov r0, %v92
bl free
sub %v93, %v86, #1
mov %v94, %v93
b LU15

LU17:
b LU14
LU14:

.size objinstantiation, .-objinstantiation
.text
.align 2
.global ackermann
ackermann:
LU18:
push {fp, lr}
add %m, r0, #0
add %n, r1, #0
mov %v99, #0
cmp %m, #0
moveq %v99, #1
cmp %v99, #1
beq LU20
bne LU21
LU20:
add %v102, %n, #1
mov r0, %v102
b LU19
LU19:
b LU19
LU21:
mov %v103, #0
cmp %n, #0
moveq %v103, #1
cmp %v103, #1
beq LU22
bne LU24
LU22:
sub %v107, %m, #1
mov r0, %v107
mov r1, #1
bl ackermann
mov %v106, r0
mov r0, %v106
b LU19

LU24:
sub %v110, %m, #1
sub %v112, %n, #1
mov r0, %m
mov r1, %v112
bl ackermann
mov %v111, r0
mov r0, %v110
mov r1, %v111
bl ackermann
mov %v109, r0
mov r0, %v109
b LU19


.size ackermann, .-ackermann
.text
.align 2
.global main
main:
LU25:
push {fp, lr}
bl readchar
mov %v120, r0
bl readchar
mov %v121, r0
bl readchar
mov %v122, r0
bl readchar
mov %v123, r0
bl readchar
mov %v124, r0
mov r0, %v120
bl tailrecursive
mov r0, %v120
bl printl
mov r0, %v121
bl domath
mov r0, %v121
bl printl
mov r0, %v122
bl objinstantiation
mov r0, %v122
bl printl
mov r0, %v123
mov r1, %v124
bl ackermann
mov %v128, r0
mov r0, %v128
bl printl
mov r0, #0
b LU26
LU26:
b LU26

.size main, .-main
