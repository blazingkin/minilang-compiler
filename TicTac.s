LU2
add %board, r0, 0
add %v4, %board, #0
add %v5, %board, #4
add %v6, %board, #8
add %v7, %board, #12
add %v8, %board, #16
add %v9, %board, #20
add %v10, %board, #24
add %v11, %board, #28
add %v12, %board, #32
b 3
LU3

LU4
add %board, r0, 0
add %v16, %board, #0
add %v18, %board, #4
add %v20, %board, #8
add %v22, %board, #12
add %v24, %board, #16
add %v26, %board, #20
add %v28, %board, #24
add %v30, %board, #28
add %v32, %board, #32
b 5
LU5

LU6
b 7
LU7

LU8
add %board, r0, 0
add %turn, r1, 0
add %placement, r2, 0
mov %v41, #0
cmp %placement, 1
moveq %v41, #1
cmp %v41, 1
beq 10
bne 12
LU10
add %v44, %board, #0
b 11
LU11
b 9
LU9
LU12
mov %v46, #0
cmp %placement, 2
moveq %v46, #1
cmp %v46, 1
beq 13
bne 15
LU13
add %v49, %board, #4
b 14
LU14
b 11

LU15
mov %v51, #0
cmp %placement, 3
moveq %v51, #1
cmp %v51, 1
beq 16
bne 18
LU16
add %v54, %board, #8
b 17
LU17
b 14

LU18
mov %v56, #0
cmp %placement, 4
moveq %v56, #1
cmp %v56, 1
beq 19
bne 21
LU19
add %v59, %board, #12
b 20
LU20
b 17

LU21
mov %v61, #0
cmp %placement, 5
moveq %v61, #1
cmp %v61, 1
beq 22
bne 24
LU22
add %v64, %board, #16
b 23
LU23
b 20

LU24
mov %v66, #0
cmp %placement, 6
moveq %v66, #1
cmp %v66, 1
beq 25
bne 27
LU25
add %v69, %board, #20
b 26
LU26
b 23

LU27
mov %v71, #0
cmp %placement, 7
moveq %v71, #1
cmp %v71, 1
beq 28
bne 30
LU28
add %v74, %board, #24
b 29
LU29
b 26

LU30
mov %v76, #0
cmp %placement, 8
moveq %v76, #1
cmp %v76, 1
beq 31
bne 33
LU31
add %v79, %board, #28
b 32
LU32
b 29

LU33
mov %v81, #0
cmp %placement, 9
moveq %v81, #1
cmp %v81, 1
beq 34
bne 35
LU34
add %v84, %board, #32
b 35
LU35
b 32



LU36
add %board, r0, 0
add %v88, %board, #0
mov %v90, #0
cmp %v89, 1
moveq %v90, #1
mov %v292, %board
cmp %v90, 1
beq 38
bne 39
LU38
add %v93, %board, #4
mov %v95, #0
cmp %v94, 1
moveq %v95, #1
mov %v290, %board
mov %v292, %board
cmp %v95, 1
beq 40
bne 41
LU40
add %v98, %board, #8
mov %v100, #0
cmp %v99, 1
moveq %v100, #1
mov %v290, %board
cmp %v100, 1
beq 42
bne 43
LU42
b 37
LU37
b 37
LU43
mov %v290, %board
b 41
LU41
mov %v104, %v290
mov %v292, %v104
b 39
LU39
add %v105, %v103, #0
mov %v107, #0
cmp %v106, 2
moveq %v107, #1
mov %v103, %v292
mov %v304, %v103
cmp %v107, 1
beq 44
bne 45
LU44
add %v110, %v103, #4
mov %v112, #0
cmp %v111, 2
moveq %v112, #1
mov %v304, %v103
mov %v307, %v103
cmp %v112, 1
beq 46
bne 47
LU46
add %v115, %v103, #8
mov %v117, #0
cmp %v116, 2
moveq %v117, #1
mov %v307, %v103
cmp %v117, 1
beq 48
bne 49
LU48
b 37

LU49
mov %v307, %v103
b 47
LU47
mov %v304, %v121
mov %v121, %v307
b 45
LU45
add %v122, %v120, #12
mov %v124, #0
cmp %v123, 1
moveq %v124, #1
mov %v302, %v120
mov %v120, %v304
cmp %v124, 1
beq 50
bne 51
LU50
add %v127, %v120, #16
mov %v129, #0
cmp %v128, 1
moveq %v129, #1
mov %v302, %v120
mov %v309, %v120
cmp %v129, 1
beq 52
bne 53
LU52
add %v132, %v120, #20
mov %v134, #0
cmp %v133, 1
moveq %v134, #1
mov %v309, %v120
cmp %v134, 1
beq 54
bne 55
LU54
b 37

LU55
mov %v309, %v120
b 53
LU53
mov %v302, %v138
mov %v138, %v309
b 51
LU51
add %v139, %v137, #12
mov %v141, #0
cmp %v140, 2
moveq %v141, #1
mov %v137, %v302
mov %v303, %v137
cmp %v141, 1
beq 56
bne 57
LU56
add %v144, %v137, #16
mov %v146, #0
cmp %v145, 2
moveq %v146, #1
mov %v296, %v137
mov %v303, %v137
cmp %v146, 1
beq 58
bne 59
LU58
add %v149, %v137, #20
mov %v151, #0
cmp %v150, 2
moveq %v151, #1
mov %v296, %v137
cmp %v151, 1
beq 60
bne 61
LU60
b 37

LU61
mov %v296, %v137
b 59
LU59
mov %v155, %v296
mov %v303, %v155
b 57
LU57
add %v156, %v154, #24
mov %v158, #0
cmp %v157, 1
moveq %v158, #1
mov %v154, %v303
mov %v311, %v154
cmp %v158, 1
beq 62
bne 63
LU62
add %v161, %v154, #28
mov %v163, #0
cmp %v162, 1
moveq %v163, #1
mov %v301, %v154
mov %v311, %v154
cmp %v163, 1
beq 64
bne 65
LU64
add %v166, %v154, #32
mov %v168, #0
cmp %v167, 1
moveq %v168, #1
mov %v301, %v154
cmp %v168, 1
beq 66
bne 67
LU66
b 37

LU67
mov %v301, %v154
b 65
LU65
mov %v172, %v301
mov %v311, %v172
b 63
LU63
add %v173, %v171, #24
mov %v175, #0
cmp %v174, 2
moveq %v175, #1
mov %v291, %v171
mov %v171, %v311
cmp %v175, 1
beq 68
bne 69
LU68
add %v178, %v171, #28
mov %v180, #0
cmp %v179, 2
moveq %v180, #1
mov %v291, %v171
mov %v310, %v171
cmp %v180, 1
beq 70
bne 71
LU70
add %v183, %v171, #32
mov %v185, #0
cmp %v184, 2
moveq %v185, #1
mov %v310, %v171
cmp %v185, 1
beq 72
bne 73
LU72
b 37

LU73
mov %v310, %v171
b 71
LU71
mov %v291, %v189
mov %v189, %v310
b 69
LU69
add %v190, %v188, #0
mov %v192, #0
cmp %v191, 1
moveq %v192, #1
mov %v188, %v291
mov %v305, %v188
cmp %v192, 1
beq 74
bne 75
LU74
add %v195, %v188, #12
mov %v197, #0
cmp %v196, 1
moveq %v197, #1
mov %v294, %v188
mov %v305, %v188
cmp %v197, 1
beq 76
bne 77
LU76
add %v200, %v188, #24
mov %v202, #0
cmp %v201, 1
moveq %v202, #1
mov %v294, %v188
cmp %v202, 1
beq 78
bne 79
LU78
b 37

LU79
mov %v294, %v188
b 77
LU77
mov %v206, %v294
mov %v305, %v206
b 75
LU75
add %v207, %v205, #0
mov %v209, #0
cmp %v208, 2
moveq %v209, #1
mov %v295, %v205
mov %v205, %v305
cmp %v209, 1
beq 80
bne 81
LU80
add %v212, %v205, #12
mov %v214, #0
cmp %v213, 2
moveq %v214, #1
mov %v295, %v205
mov %v306, %v205
cmp %v214, 1
beq 82
bne 83
LU82
add %v217, %v205, #24
mov %v219, #0
cmp %v218, 2
moveq %v219, #1
mov %v306, %v205
cmp %v219, 1
beq 84
bne 85
LU84
b 37

LU85
mov %v306, %v205
b 83
LU83
mov %v295, %v223
mov %v223, %v306
b 81
LU81
add %v224, %v222, #4
mov %v226, #0
cmp %v225, 1
moveq %v226, #1
mov %v293, %v222
mov %v222, %v295
cmp %v226, 1
beq 86
bne 87
LU86
add %v229, %v222, #16
mov %v231, #0
cmp %v230, 1
moveq %v231, #1
mov %v293, %v222
mov %v297, %v222
cmp %v231, 1
beq 88
bne 89
LU88
add %v234, %v222, #28
mov %v236, #0
cmp %v235, 1
moveq %v236, #1
mov %v297, %v222
cmp %v236, 1
beq 90
bne 91
LU90
b 37

LU91
mov %v297, %v222
b 89
LU89
mov %v293, %v240
mov %v240, %v297
b 87
LU87
add %v241, %v239, #4
mov %v243, #0
cmp %v242, 2
moveq %v243, #1
mov %v239, %v293
mov %v300, %v239
cmp %v243, 1
beq 92
bne 93
LU92
add %v246, %v239, #16
mov %v248, #0
cmp %v247, 2
moveq %v248, #1
mov %v300, %v239
mov %v308, %v239
cmp %v248, 1
beq 94
bne 95
LU94
add %v251, %v239, #28
mov %v253, #0
cmp %v252, 2
moveq %v253, #1
mov %v308, %v239
cmp %v253, 1
beq 96
bne 97
LU96
b 37

LU97
mov %v308, %v239
b 95
LU95
mov %v300, %v257
mov %v257, %v308
b 93
LU93
add %v258, %v256, #8
mov %v260, #0
cmp %v259, 1
moveq %v260, #1
mov %v298, %v256
mov %v256, %v300
cmp %v260, 1
beq 98
bne 99
LU98
add %v263, %v256, #20
mov %v265, #0
cmp %v264, 1
moveq %v265, #1
mov %v298, %v256
mov %v299, %v256
cmp %v265, 1
beq 100
bne 101
LU100
add %v268, %v256, #32
mov %v270, #0
cmp %v269, 1
moveq %v270, #1
mov %v299, %v256
cmp %v270, 1
beq 102
bne 103
LU102
b 37

LU103
mov %v299, %v256
b 101
LU101
mov %v298, %v274
mov %v274, %v299
b 99
LU99
add %v275, %v273, #8
mov %v277, #0
cmp %v276, 2
moveq %v277, #1
mov %v273, %v298
cmp %v277, 1
beq 104
bne 105
LU104
add %v280, %v273, #20
mov %v282, #0
cmp %v281, 2
moveq %v282, #1
cmp %v282, 1
beq 106
bne 107
LU106
add %v285, %v273, #32
mov %v287, #0
cmp %v286, 2
moveq %v287, #1
cmp %v287, 1
beq 108
bne 109
LU108
b 37

LU109
b 107
LU107
b 105
LU105
b 37


























LU110
mov %v321, %v320
mov %v356, -1
mov %v357, 0
mov %v358, %v321
mov %v359, 0
b 112
LU112
mov %v325, #0
cmp %v324, 0
movlt %v325, #1
mov %v327, #0
cmp %v326, 8
movne %v327, #1
mov %v328, %v325
mov %v329, %v327
and %v330, %v328, %v329
mov %v331, %v330
mov %v324, %v356
mov %v326, %v357
mov %v335, %v358
mov %v336, %v359
cmp %v331, 1
beq 113
bne 114
LU113
mov %v337, #0
cmp %v336, 0
moveq %v337, #1
cmp %v337, 1
beq 115
bne 117
LU115
add %v340, %v336, 1
mov %v353, %v335
mov %v354, %v326
mov %v355, %v340
b 116
LU116
add %v350, %v349, 1
mov %v348, %v353
mov %v349, %v354
mov %v351, %v355
mov %v356, %v347
mov %v357, %v350
mov %v358, %v348
mov %v359, %v351
b 112

LU117
sub %v344, %v336, 1
mov %v353, %v335
mov %v354, %v326
mov %v355, %v344
b 116

LU114
add %v352, %v324, 1
b 111
LU111
b 111

