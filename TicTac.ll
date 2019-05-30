%struct.gameBoard = type {i32, i32, i32, i32, i32, i32, i32, i32, i32}
define i32 @main()
{
LU110:

%v292 = call i8* @malloc(i32 36)
%v293 = bitcast i8* %v292 to %struct.gameBoard*
call void @cleanBoard(%struct.gameBoard* %v293)
br label %LU112

LU112:
%v296 = phi i32 [ -1, %LU110 ], [ %v319, %LU116 ]
%v298 = phi i32 [ 0, %LU110 ], [ %v322, %LU116 ]
%v307 = phi %struct.gameBoard* [ %v293, %LU110 ], [ %v320, %LU116 ]
%v308 = phi i32 [ 0, %LU110 ], [ %v323, %LU116 ]

%v297 = icmp slt i32 %v296, 0
%v299 = icmp ne i32 %v298, 8
%v300 = zext i1 %v297 to i32
%v301 = zext i1 %v299 to i32
%v302 = and i32 %v300, %v301
%v303 = trunc i32 %v302 to i1
br i1 %v303, label %LU113, label %LU114

LU113:

call void @printBoard(%struct.gameBoard* %v307)
%v309 = icmp eq i32 %v308, 0
br i1 %v309, label %LU115, label %LU117

LU115:

%v312 = add i32 %v308, 1
%v313 = call i32 @readchar()
call void @placePiece(%struct.gameBoard* %v307, i32 1, i32 %v313)
br label %LU116

LU116:
%v320 = phi %struct.gameBoard* [ %v307, %LU115 ], [ %v307, %LU117 ]
%v321 = phi i32 [ %v298, %LU115 ], [ %v298, %LU117 ]
%v323 = phi i32 [ %v312, %LU115 ], [ %v316, %LU117 ]

%v319 = call i32 @checkWinner(%struct.gameBoard* %v320)
%v322 = add i32 %v321, 1
br label %LU112


LU117:

%v316 = sub i32 %v308, 1
%v317 = call i32 @readchar()
call void @placePiece(%struct.gameBoard* %v307, i32 2, i32 %v317)
br label %LU116


LU114:

%v324 = add i32 %v296, 1
call void @printl(i32 %v324)
ret i32 0
br label %LU111

LU111:

ret i32 0
br label %LU111
}
define void @placePiece(%struct.gameBoard* %_P_board, i32 %_P_turn, i32 %_P_placement)
{
LU8:

%v41 = icmp eq i32 %_P_placement, 1
br i1 %v41, label %LU10, label %LU12

LU10:

%v44 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 0
store i32 %_P_turn, i32* %v44
br label %LU11

LU11:

br label %LU9

LU9:

ret void 

LU12:

%v46 = icmp eq i32 %_P_placement, 2
br i1 %v46, label %LU13, label %LU15

LU13:

%v49 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 1
store i32 %_P_turn, i32* %v49
br label %LU14

LU14:

br label %LU11


LU15:

%v51 = icmp eq i32 %_P_placement, 3
br i1 %v51, label %LU16, label %LU18

LU16:

%v54 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 2
store i32 %_P_turn, i32* %v54
br label %LU17

LU17:

br label %LU14


LU18:

%v56 = icmp eq i32 %_P_placement, 4
br i1 %v56, label %LU19, label %LU21

LU19:

%v59 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 3
store i32 %_P_turn, i32* %v59
br label %LU20

LU20:

br label %LU17


LU21:

%v61 = icmp eq i32 %_P_placement, 5
br i1 %v61, label %LU22, label %LU24

LU22:

%v64 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 4
store i32 %_P_turn, i32* %v64
br label %LU23

LU23:

br label %LU20


LU24:

%v66 = icmp eq i32 %_P_placement, 6
br i1 %v66, label %LU25, label %LU27

LU25:

%v69 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 5
store i32 %_P_turn, i32* %v69
br label %LU26

LU26:

br label %LU23


LU27:

%v71 = icmp eq i32 %_P_placement, 7
br i1 %v71, label %LU28, label %LU30

LU28:

%v74 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 6
store i32 %_P_turn, i32* %v74
br label %LU29

LU29:

br label %LU26


LU30:

%v76 = icmp eq i32 %_P_placement, 8
br i1 %v76, label %LU31, label %LU33

LU31:

%v79 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 7
store i32 %_P_turn, i32* %v79
br label %LU32

LU32:

br label %LU29


LU33:

%v81 = icmp eq i32 %_P_placement, 9
br i1 %v81, label %LU34, label %LU35

LU34:

%v84 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 8
store i32 %_P_turn, i32* %v84
br label %LU35

LU35:

br label %LU32


}
define void @printBoard(%struct.gameBoard* %_P_board)
{
LU4:

%v16 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 0
%v17 = load i32, i32* %v16
call void @print(i32 %v17)
%v18 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 1
%v19 = load i32, i32* %v18
call void @print(i32 %v19)
%v20 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 2
%v21 = load i32, i32* %v20
call void @printl(i32 %v21)
%v22 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 3
%v23 = load i32, i32* %v22
call void @print(i32 %v23)
%v24 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 4
%v25 = load i32, i32* %v24
call void @print(i32 %v25)
%v26 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 5
%v27 = load i32, i32* %v26
call void @printl(i32 %v27)
%v28 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 6
%v29 = load i32, i32* %v28
call void @print(i32 %v29)
%v30 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 7
%v31 = load i32, i32* %v30
call void @print(i32 %v31)
%v32 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 8
%v33 = load i32, i32* %v32
call void @printl(i32 %v33)
br label %LU5

LU5:

ret void 
}
define void @printMoveBoard()
{
LU6:

call void @printl(i32 123)
call void @printl(i32 456)
call void @printl(i32 789)
br label %LU7

LU7:

ret void 
}
define void @cleanBoard(%struct.gameBoard* %_P_board)
{
LU2:

%v4 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 0
store i32 0, i32* %v4
%v5 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 1
store i32 0, i32* %v5
%v6 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 2
store i32 0, i32* %v6
%v7 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 3
store i32 0, i32* %v7
%v8 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 4
store i32 0, i32* %v8
%v9 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 5
store i32 0, i32* %v9
%v10 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 6
store i32 0, i32* %v10
%v11 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 7
store i32 0, i32* %v11
%v12 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 8
store i32 0, i32* %v12
br label %LU3

LU3:

ret void 
}
define i32 @checkWinner(%struct.gameBoard* %_P_board)
{
LU36:

%v88 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 0
%v89 = load i32, i32* %v88
%v90 = icmp eq i32 %v89, 1
br i1 %v90, label %LU38, label %LU39

LU38:

%v93 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 1
%v94 = load i32, i32* %v93
%v95 = icmp eq i32 %v94, 1
br i1 %v95, label %LU40, label %LU41

LU40:

%v98 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 2
%v99 = load i32, i32* %v98
%v100 = icmp eq i32 %v99, 1
br i1 %v100, label %LU42, label %LU43

LU42:

ret i32 0
br label %LU37

LU37:

ret i32 0
br label %LU37

LU43:

br label %LU41

LU41:
%v104 = phi %struct.gameBoard* [ %_P_board, %LU40 ], [ %_P_board, %LU43 ], [ %_P_board, %LU38 ]

br label %LU39

LU39:
%v103 = phi %struct.gameBoard* [ %_P_board, %LU38 ], [ %v104, %LU41 ], [ %_P_board, %LU36 ]

%v105 = getelementptr %struct.gameBoard, %struct.gameBoard* %v103, i1 0, i32 0
%v106 = load i32, i32* %v105
%v107 = icmp eq i32 %v106, 2
br i1 %v107, label %LU44, label %LU45

LU44:

%v110 = getelementptr %struct.gameBoard, %struct.gameBoard* %v103, i1 0, i32 1
%v111 = load i32, i32* %v110
%v112 = icmp eq i32 %v111, 2
br i1 %v112, label %LU46, label %LU47

LU46:

%v115 = getelementptr %struct.gameBoard, %struct.gameBoard* %v103, i1 0, i32 2
%v116 = load i32, i32* %v115
%v117 = icmp eq i32 %v116, 2
br i1 %v117, label %LU48, label %LU49

LU48:

ret i32 1
br label %LU37


LU49:

br label %LU47

LU47:
%v121 = phi %struct.gameBoard* [ %v103, %LU46 ], [ %v103, %LU49 ], [ %v103, %LU44 ]

br label %LU45

LU45:
%v120 = phi %struct.gameBoard* [ %v103, %LU44 ], [ %v121, %LU47 ], [ %v103, %LU39 ]

%v122 = getelementptr %struct.gameBoard, %struct.gameBoard* %v120, i1 0, i32 3
%v123 = load i32, i32* %v122
%v124 = icmp eq i32 %v123, 1
br i1 %v124, label %LU50, label %LU51

LU50:

%v127 = getelementptr %struct.gameBoard, %struct.gameBoard* %v120, i1 0, i32 4
%v128 = load i32, i32* %v127
%v129 = icmp eq i32 %v128, 1
br i1 %v129, label %LU52, label %LU53

LU52:

%v132 = getelementptr %struct.gameBoard, %struct.gameBoard* %v120, i1 0, i32 5
%v133 = load i32, i32* %v132
%v134 = icmp eq i32 %v133, 1
br i1 %v134, label %LU54, label %LU55

LU54:

ret i32 0
br label %LU37


LU55:

br label %LU53

LU53:
%v138 = phi %struct.gameBoard* [ %v120, %LU52 ], [ %v120, %LU55 ], [ %v120, %LU50 ]

br label %LU51

LU51:
%v137 = phi %struct.gameBoard* [ %v120, %LU50 ], [ %v138, %LU53 ], [ %v120, %LU45 ]

%v139 = getelementptr %struct.gameBoard, %struct.gameBoard* %v137, i1 0, i32 3
%v140 = load i32, i32* %v139
%v141 = icmp eq i32 %v140, 2
br i1 %v141, label %LU56, label %LU57

LU56:

%v144 = getelementptr %struct.gameBoard, %struct.gameBoard* %v137, i1 0, i32 4
%v145 = load i32, i32* %v144
%v146 = icmp eq i32 %v145, 2
br i1 %v146, label %LU58, label %LU59

LU58:

%v149 = getelementptr %struct.gameBoard, %struct.gameBoard* %v137, i1 0, i32 5
%v150 = load i32, i32* %v149
%v151 = icmp eq i32 %v150, 2
br i1 %v151, label %LU60, label %LU61

LU60:

ret i32 1
br label %LU37


LU61:

br label %LU59

LU59:
%v155 = phi %struct.gameBoard* [ %v137, %LU58 ], [ %v137, %LU61 ], [ %v137, %LU56 ]

br label %LU57

LU57:
%v154 = phi %struct.gameBoard* [ %v137, %LU56 ], [ %v155, %LU59 ], [ %v137, %LU51 ]

%v156 = getelementptr %struct.gameBoard, %struct.gameBoard* %v154, i1 0, i32 6
%v157 = load i32, i32* %v156
%v158 = icmp eq i32 %v157, 1
br i1 %v158, label %LU62, label %LU63

LU62:

%v161 = getelementptr %struct.gameBoard, %struct.gameBoard* %v154, i1 0, i32 7
%v162 = load i32, i32* %v161
%v163 = icmp eq i32 %v162, 1
br i1 %v163, label %LU64, label %LU65

LU64:

%v166 = getelementptr %struct.gameBoard, %struct.gameBoard* %v154, i1 0, i32 8
%v167 = load i32, i32* %v166
%v168 = icmp eq i32 %v167, 1
br i1 %v168, label %LU66, label %LU67

LU66:

ret i32 0
br label %LU37


LU67:

br label %LU65

LU65:
%v172 = phi %struct.gameBoard* [ %v154, %LU64 ], [ %v154, %LU67 ], [ %v154, %LU62 ]

br label %LU63

LU63:
%v171 = phi %struct.gameBoard* [ %v154, %LU62 ], [ %v172, %LU65 ], [ %v154, %LU57 ]

%v173 = getelementptr %struct.gameBoard, %struct.gameBoard* %v171, i1 0, i32 6
%v174 = load i32, i32* %v173
%v175 = icmp eq i32 %v174, 2
br i1 %v175, label %LU68, label %LU69

LU68:

%v178 = getelementptr %struct.gameBoard, %struct.gameBoard* %v171, i1 0, i32 7
%v179 = load i32, i32* %v178
%v180 = icmp eq i32 %v179, 2
br i1 %v180, label %LU70, label %LU71

LU70:

%v183 = getelementptr %struct.gameBoard, %struct.gameBoard* %v171, i1 0, i32 8
%v184 = load i32, i32* %v183
%v185 = icmp eq i32 %v184, 2
br i1 %v185, label %LU72, label %LU73

LU72:

ret i32 1
br label %LU37


LU73:

br label %LU71

LU71:
%v189 = phi %struct.gameBoard* [ %v171, %LU70 ], [ %v171, %LU73 ], [ %v171, %LU68 ]

br label %LU69

LU69:
%v188 = phi %struct.gameBoard* [ %v171, %LU68 ], [ %v189, %LU71 ], [ %v171, %LU63 ]

%v190 = getelementptr %struct.gameBoard, %struct.gameBoard* %v188, i1 0, i32 0
%v191 = load i32, i32* %v190
%v192 = icmp eq i32 %v191, 1
br i1 %v192, label %LU74, label %LU75

LU74:

%v195 = getelementptr %struct.gameBoard, %struct.gameBoard* %v188, i1 0, i32 3
%v196 = load i32, i32* %v195
%v197 = icmp eq i32 %v196, 1
br i1 %v197, label %LU76, label %LU77

LU76:

%v200 = getelementptr %struct.gameBoard, %struct.gameBoard* %v188, i1 0, i32 6
%v201 = load i32, i32* %v200
%v202 = icmp eq i32 %v201, 1
br i1 %v202, label %LU78, label %LU79

LU78:

ret i32 0
br label %LU37


LU79:

br label %LU77

LU77:
%v206 = phi %struct.gameBoard* [ %v188, %LU76 ], [ %v188, %LU79 ], [ %v188, %LU74 ]

br label %LU75

LU75:
%v205 = phi %struct.gameBoard* [ %v188, %LU74 ], [ %v206, %LU77 ], [ %v188, %LU69 ]

%v207 = getelementptr %struct.gameBoard, %struct.gameBoard* %v205, i1 0, i32 0
%v208 = load i32, i32* %v207
%v209 = icmp eq i32 %v208, 2
br i1 %v209, label %LU80, label %LU81

LU80:

%v212 = getelementptr %struct.gameBoard, %struct.gameBoard* %v205, i1 0, i32 3
%v213 = load i32, i32* %v212
%v214 = icmp eq i32 %v213, 2
br i1 %v214, label %LU82, label %LU83

LU82:

%v217 = getelementptr %struct.gameBoard, %struct.gameBoard* %v205, i1 0, i32 6
%v218 = load i32, i32* %v217
%v219 = icmp eq i32 %v218, 2
br i1 %v219, label %LU84, label %LU85

LU84:

ret i32 1
br label %LU37


LU85:

br label %LU83

LU83:
%v223 = phi %struct.gameBoard* [ %v205, %LU82 ], [ %v205, %LU85 ], [ %v205, %LU80 ]

br label %LU81

LU81:
%v222 = phi %struct.gameBoard* [ %v205, %LU80 ], [ %v223, %LU83 ], [ %v205, %LU75 ]

%v224 = getelementptr %struct.gameBoard, %struct.gameBoard* %v222, i1 0, i32 1
%v225 = load i32, i32* %v224
%v226 = icmp eq i32 %v225, 1
br i1 %v226, label %LU86, label %LU87

LU86:

%v229 = getelementptr %struct.gameBoard, %struct.gameBoard* %v222, i1 0, i32 4
%v230 = load i32, i32* %v229
%v231 = icmp eq i32 %v230, 1
br i1 %v231, label %LU88, label %LU89

LU88:

%v234 = getelementptr %struct.gameBoard, %struct.gameBoard* %v222, i1 0, i32 7
%v235 = load i32, i32* %v234
%v236 = icmp eq i32 %v235, 1
br i1 %v236, label %LU90, label %LU91

LU90:

ret i32 0
br label %LU37


LU91:

br label %LU89

LU89:
%v240 = phi %struct.gameBoard* [ %v222, %LU88 ], [ %v222, %LU91 ], [ %v222, %LU86 ]

br label %LU87

LU87:
%v239 = phi %struct.gameBoard* [ %v222, %LU86 ], [ %v240, %LU89 ], [ %v222, %LU81 ]

%v241 = getelementptr %struct.gameBoard, %struct.gameBoard* %v239, i1 0, i32 1
%v242 = load i32, i32* %v241
%v243 = icmp eq i32 %v242, 2
br i1 %v243, label %LU92, label %LU93

LU92:

%v246 = getelementptr %struct.gameBoard, %struct.gameBoard* %v239, i1 0, i32 4
%v247 = load i32, i32* %v246
%v248 = icmp eq i32 %v247, 2
br i1 %v248, label %LU94, label %LU95

LU94:

%v251 = getelementptr %struct.gameBoard, %struct.gameBoard* %v239, i1 0, i32 7
%v252 = load i32, i32* %v251
%v253 = icmp eq i32 %v252, 2
br i1 %v253, label %LU96, label %LU97

LU96:

ret i32 1
br label %LU37


LU97:

br label %LU95

LU95:
%v257 = phi %struct.gameBoard* [ %v239, %LU94 ], [ %v239, %LU97 ], [ %v239, %LU92 ]

br label %LU93

LU93:
%v256 = phi %struct.gameBoard* [ %v239, %LU92 ], [ %v257, %LU95 ], [ %v239, %LU87 ]

%v258 = getelementptr %struct.gameBoard, %struct.gameBoard* %v256, i1 0, i32 2
%v259 = load i32, i32* %v258
%v260 = icmp eq i32 %v259, 1
br i1 %v260, label %LU98, label %LU99

LU98:

%v263 = getelementptr %struct.gameBoard, %struct.gameBoard* %v256, i1 0, i32 5
%v264 = load i32, i32* %v263
%v265 = icmp eq i32 %v264, 1
br i1 %v265, label %LU100, label %LU101

LU100:

%v268 = getelementptr %struct.gameBoard, %struct.gameBoard* %v256, i1 0, i32 8
%v269 = load i32, i32* %v268
%v270 = icmp eq i32 %v269, 1
br i1 %v270, label %LU102, label %LU103

LU102:

ret i32 0
br label %LU37


LU103:

br label %LU101

LU101:
%v274 = phi %struct.gameBoard* [ %v256, %LU100 ], [ %v256, %LU103 ], [ %v256, %LU98 ]

br label %LU99

LU99:
%v273 = phi %struct.gameBoard* [ %v256, %LU98 ], [ %v274, %LU101 ], [ %v256, %LU93 ]

%v275 = getelementptr %struct.gameBoard, %struct.gameBoard* %v273, i1 0, i32 2
%v276 = load i32, i32* %v275
%v277 = icmp eq i32 %v276, 2
br i1 %v277, label %LU104, label %LU105

LU104:

%v280 = getelementptr %struct.gameBoard, %struct.gameBoard* %v273, i1 0, i32 5
%v281 = load i32, i32* %v280
%v282 = icmp eq i32 %v281, 2
br i1 %v282, label %LU106, label %LU107

LU106:

%v285 = getelementptr %struct.gameBoard, %struct.gameBoard* %v273, i1 0, i32 8
%v286 = load i32, i32* %v285
%v287 = icmp eq i32 %v286, 2
br i1 %v287, label %LU108, label %LU109

LU108:

ret i32 1
br label %LU37


LU109:

br label %LU107

LU107:

br label %LU105

LU105:

ret i32 -1
br label %LU37

























}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

