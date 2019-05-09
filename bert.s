LU2:
add %first, r0, 0
add %second, r1, 0
mov %v6, #0
cmp %first, 0
moveq %v6, #1
cmp %v6, 1
beq LU4
bne LU5
LU4:
mov r0, %second
b LU3
LU3:
mov r0, 0
b LU3
LU5:
mov %v21, %first
mov %v22, %second
mov %v23, %first
b LU6
LU6:
add %v11, %v10, #4
ldr %v12, [%v11]
mov %v13, #0
cmp %v12, 0
movne %v13, #1
mov %v10, %v21
mov %v18, %v22
mov %v20, %v23
cmp %v13, 1
beq LU7
bne LU8
LU7:
add %v16, %v10, #4
ldr %v17, [%v16]
mov %v21, %v17
mov %v22, %v18
mov %v23, %v20
b LU6

LU8:
add %v19, %v10, #4
str %v18, [%v19]
mov r0, %v20
b LU3


LU9:
add %list, r0, 0
add %toAdd, r1, 0
mov %v30, %v29
add %v31, %v30, #0
str %toAdd, [%v31]
add %v32, %v30, #4
str %list, [%v32]
mov r0, %v30
b LU10
LU10:
mov r0, 0
b LU10

LU11:
add %list, r0, 0
mov %v36, #0
cmp %list, 0
moveq %v36, #1
cmp %v36, 1
beq LU13
bne LU14
LU13:
mov r0, 0
b LU12
LU12:
mov r0, 0
b LU12
LU14:
add %v40, %list, #4
ldr %v41, [%v40]
movw %v43, #:lower16: 1
movt %v43, #:upper16: 1
add %v42, %v43, %v39
mov r0, %v42
b LU12


LU15:
add %list, r0, 0
add %index, r1, 0
mov %v48, #0
cmp %index, 0
moveq %v48, #1
cmp %v48, 1
beq LU17
bne LU18
LU17:
add %v51, %list, #0
ldr %v52, [%v51]
mov r0, %v52
b LU16
LU16:
mov r0, 0
b LU16
LU18:
add %v54, %list, #4
ldr %v55, [%v54]
sub %v56, %index, 1
mov r0, %v53
b LU16


LU19:
add %list, r0, 0
add %v60, %list, #4
ldr %v61, [%v60]
mov r0, %v61
b LU20
LU20:
mov r0, 0
b LU20

LU21:
add %list, r0, 0
mov %v65, #0
cmp %list, 0
movne %v65, #1
cmp %v65, 1
beq LU23
bne LU24
LU23:
add %v68, %list, #0
ldr %v69, [%v68]
add %v71, %list, #4
ldr %v72, [%v71]
b LU24
LU24:
b LU22
LU22:
mov r0, 


LU25:
add %root, r0, 0
mov %v76, #0
cmp %root, 0
movne %v76, #1
cmp %v76, 1
beq LU27
bne LU28
LU27:
add %v80, %root, #4
ldr %v81, [%v80]
add %v82, %root, #0
ldr %v83, [%v82]
add %v85, %root, #8
ldr %v86, [%v85]
b LU28
LU28:
b LU26
LU26:
mov r0, 


LU29:
add %list, r0, 0
mov %v90, #0
cmp %list, 0
movne %v90, #1
cmp %v90, 1
beq LU31
bne LU32
LU31:
add %v94, %list, #4
ldr %v95, [%v94]
mov %v96, %list
b LU32
LU32:
b LU30
LU30:
mov r0, 


LU33:
add %root, r0, 0
mov %v100, #0
cmp %root, 0
moveq %v100, #1
mov %v101, %v100
eor %v102, %v101, #1
mov %v103, %v102
cmp %v103, 1
beq LU35
bne LU36
LU35:
add %v107, %root, #4
ldr %v108, [%v107]
add %v110, %root, #8
ldr %v111, [%v110]
mov %v112, %root
b LU36
LU36:
b LU34
LU34:
mov r0, 


LU37:
add %root, r0, 0
mov %v117, #0
cmp %root, 0
movne %v117, #1
cmp %v117, 1
beq LU39
bne LU40
LU39:
mov %v121, %v120
add %v122, %root, #0
ldr %v123, [%v122]
add %v124, %v121, #0
str %v123, [%v124]
add %v125, %v121, #4
str 0, [%v125]
add %v129, %root, #4
ldr %v130, [%v129]
add %v132, %root, #8
ldr %v133, [%v132]
mov r0, %v126
b LU38
LU38:
mov r0, 0
b LU38
LU40:
mov r0, 0
b LU38


LU41:
add %root, r0, 0
add %toAdd, r1, 0
mov %v139, #0
cmp %root, 0
moveq %v139, #1
cmp %v139, 1
beq LU43
bne LU44
LU43:
mov %v143, %v142
add %v144, %v143, #0
str %toAdd, [%v144]
add %v145, %v143, #4
str 0, [%v145]
add %v146, %v143, #8
str 0, [%v146]
mov r0, %v143
b LU42
LU42:
mov r0, 0
b LU42
LU44:
add %v147, %root, #0
ldr %v148, [%v147]
mov %v149, #0
cmp %toAdd, %v148
movlt %v149, #1
cmp %v149, 1
beq LU45
bne LU47
LU45:
add %v153, %root, #4
ldr %v154, [%v153]
add %v155, %root, #4
str %v152, [%v155]
mov %v162, %root
b LU46
LU46:
mov r0, %v161
mov %v161, %v162
b LU42

LU47:
add %v158, %root, #8
ldr %v159, [%v158]
add %v160, %root, #8
str %v157, [%v160]
mov %v162, %root
b LU46


LU48:
add %list, r0, 0
mov %v172, #0
cmp %v171, 1
movle %v172, #1
cmp %v172, 1
beq LU50
bne LU51
LU50:
mov r0, %list
b LU49
LU49:
mov r0, 0
b LU49
LU51:
sub %v178, %v177, 1
add %v179, %v175, %v176
mov r0, %v179
mov r1, 2
bl LU__aeabi_idiv
mov %v180, r1
mov %v219, %list
mov %v220, %list
mov %v221, 0
mov %v222, %v180
mov %v223, 0
mov %v224, 0
b LU52
LU52:
mov %v183, #0
cmp %v182, 0
movne %v183, #1
mov %v182, %v219
mov %v187, %v220
mov %v188, %v221
mov %v189, %v222
mov %v194, %v223
mov %v198, %v224
cmp %v183, 1
beq LU53
bne LU54
LU53:
mov %v190, #0
cmp %v186, %v189
movgt %v190, #1
cmp %v190, 1
beq LU55
bne LU57
LU55:
mov %v213, %v182
mov %v214, %v188
mov %v215, %v187
mov %v216, %v189
mov %v217, %v193
mov %v218, %v198
b LU56
LU56:
add %v201, %v200, #4
ldr %v202, [%v201]
add %v204, %v203, 1
mov %v200, %v213
mov %v203, %v214
mov %v205, %v215
mov %v206, %v216
mov %v207, %v217
mov %v208, %v218
mov %v219, %v202
mov %v220, %v205
mov %v221, %v204
mov %v222, %v206
mov %v223, %v207
mov %v224, %v208
b LU52

LU57:
mov %v213, %v182
mov %v214, %v188
mov %v215, %v187
mov %v216, %v189
mov %v217, %v194
mov %v218, %v197
b LU56

LU54:
mov r0, %v210
b LU49


LU58:
add %list, r0, 0
mov r0, 0
b LU59
LU59:
mov r0, 0
b LU59

LU60:
add %root, r0, 0
add %target, r1, 0
mov %v235, #0
cmp %root, 0
movne %v235, #1
cmp %v235, 1
beq LU62
bne LU63
LU62:
add %v238, %root, #0
ldr %v239, [%v238]
mov %v240, #0
cmp %v239, %target
moveq %v240, #1
cmp %v240, 1
beq LU64
bne LU65
LU64:
mov r0, 1
b LU61
LU61:
mov r0, 0
b LU61
LU65:
add %v244, %root, #4
ldr %v245, [%v244]
mov %v246, #0
cmp %v243, 1
moveq %v246, #1
cmp %v246, 1
beq LU66
bne LU67
LU66:
mov r0, 1
b LU61

LU67:
add %v250, %root, #8
ldr %v251, [%v250]
mov %v252, #0
cmp %v249, 1
moveq %v252, #1
cmp %v252, 1
beq LU68
bne LU70
LU68:
mov r0, 1
b LU61

LU70:
mov r0, 0
b LU61

LU63:
mov r0, 0
b LU61


LU71:
add %root, r0, 0
mov %v260, #0
cmp %root, 0
movne %v260, #1
cmp %v260, 1
beq LU73
bne LU75
LU73:
mov %v264, %v263
add %v265, %root, #0
ldr %v266, [%v265]
add %v267, %v264, #0
str %v266, [%v267]
add %v268, %v264, #4
str 0, [%v268]
add %v271, %root, #4
ldr %v272, [%v271]
add %v275, %root, #8
ldr %v276, [%v275]
mov r0, %v269
b LU72
LU72:
mov r0, 0
b LU72
LU75:
mov r0, 0
b LU72


LU76:
add %root, r0, 0
add %target, r1, 0
mov %v282, #0
cmp %root, 0
movne %v282, #1
cmp %v282, 1
beq LU78
bne LU79
LU78:
add %v285, %root, #0
ldr %v286, [%v285]
mov %v287, #0
cmp %v286, %target
moveq %v287, #1
cmp %v287, 1
beq LU80
bne LU81
LU80:
mov r0, 1
b LU77
LU77:
mov r0, 0
b LU77
LU81:
add %v290, %root, #0
ldr %v291, [%v290]
mov %v292, #0
cmp %target, %v291
movlt %v292, #1
cmp %v292, 1
beq LU82
bne LU84
LU82:
add %v296, %root, #4
ldr %v297, [%v296]
mov r0, %v295
b LU77

LU84:
add %v300, %root, #8
ldr %v301, [%v300]
mov r0, %v299
b LU77

LU79:
mov r0, 0
b LU77


LU85:
add %list, r0, 0
mov %v318, 0
mov %v319, %list
mov %v320, 0
b LU87
LU87:
mov %v311, #0
cmp %v308, %v309
movlt %v311, #1
mov %v308, %v318
mov %v310, %v319
mov %v315, %v320
cmp %v311, 1
beq LU88
bne LU89
LU88:
add %v317, %v308, 1
mov %v318, %v317
mov %v319, %v310
mov %v320, %v314
b LU87

LU89:
mov r0, %v315
b LU86
LU86:
mov r0, 0
b LU86

LU90:
add %list, r0, 0
b LU91
LU91:
mov r0, 

LU92:
add %src, r0, 0
mov %v353, #0
cmp %src, 0
moveq %v353, #1
cmp %v353, 1
beq LU94
bne LU95
LU94:
mov r0, 0
b LU93
LU93:
mov r0, 0
b LU93
LU95:
add %v358, %src, #0
ldr %v359, [%v358]
add %v361, %src, #4
ldr %v362, [%v361]
mov r0, %v356
b LU93


LU96:
mov %v390, 0
mov %v391, 0
mov %v392, 0
mov %v393, 0
b LU98
LU98:
mov %v373, #0
cmp %v372, 10
movlt %v373, #1
mov %v372, %v390
mov %v378, %v391
mov %v387, %v392
mov %v389, %v393
cmp %v373, 1
beq LU99
bne LU100
LU99:
add %v384, %v372, 1
mov %v390, %v384
mov %v391, %v377
mov %v392, %v379
mov %v393, %v380
b LU98

LU100:
mov r0, 0
b LU97
LU97:
mov r0, 0
b LU97

