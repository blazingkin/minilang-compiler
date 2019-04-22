%struct.gameBoard = type {i32, i32, i32, i32, i32, i32, i32, i32, i32}
define void @cleanBoard(%struct.gameBoard* %_P_board)
{
LU2:
%board = alloca %struct.gameBoard*
store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
%v6 = load %struct.gameBoard*, %struct.gameBoard** %board
%v7 = getelementptr %struct.gameBoard, %struct.gameBoard* %v6, i1 0, i32 0
store i32 0, i32* %v7
%v9 = load %struct.gameBoard*, %struct.gameBoard** %board
%v10 = getelementptr %struct.gameBoard, %struct.gameBoard* %v9, i1 0, i32 1
store i32 0, i32* %v10
%v12 = load %struct.gameBoard*, %struct.gameBoard** %board
%v13 = getelementptr %struct.gameBoard, %struct.gameBoard* %v12, i1 0, i32 2
store i32 0, i32* %v13
%v15 = load %struct.gameBoard*, %struct.gameBoard** %board
%v16 = getelementptr %struct.gameBoard, %struct.gameBoard* %v15, i1 0, i32 3
store i32 0, i32* %v16
%v18 = load %struct.gameBoard*, %struct.gameBoard** %board
%v19 = getelementptr %struct.gameBoard, %struct.gameBoard* %v18, i1 0, i32 4
store i32 0, i32* %v19
%v21 = load %struct.gameBoard*, %struct.gameBoard** %board
%v22 = getelementptr %struct.gameBoard, %struct.gameBoard* %v21, i1 0, i32 5
store i32 0, i32* %v22
%v24 = load %struct.gameBoard*, %struct.gameBoard** %board
%v25 = getelementptr %struct.gameBoard, %struct.gameBoard* %v24, i1 0, i32 6
store i32 0, i32* %v25
%v27 = load %struct.gameBoard*, %struct.gameBoard** %board
%v28 = getelementptr %struct.gameBoard, %struct.gameBoard* %v27, i1 0, i32 7
store i32 0, i32* %v28
%v30 = load %struct.gameBoard*, %struct.gameBoard** %board
%v31 = getelementptr %struct.gameBoard, %struct.gameBoard* %v30, i1 0, i32 8
store i32 0, i32* %v31
br label %LU3

LU3:
ret void 
}
define void @printBoard(%struct.gameBoard* %_P_board)
{
LU4:
%board = alloca %struct.gameBoard*
store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
%v37 = load %struct.gameBoard*, %struct.gameBoard** %board
%v38 = getelementptr %struct.gameBoard, %struct.gameBoard* %v37, i1 0, i32 0
%v39 = load i32, i32* %v38
call void @print(i32 %v39)
%v41 = load %struct.gameBoard*, %struct.gameBoard** %board
%v42 = getelementptr %struct.gameBoard, %struct.gameBoard* %v41, i1 0, i32 1
%v43 = load i32, i32* %v42
call void @print(i32 %v43)
%v45 = load %struct.gameBoard*, %struct.gameBoard** %board
%v46 = getelementptr %struct.gameBoard, %struct.gameBoard* %v45, i1 0, i32 2
%v47 = load i32, i32* %v46
call void @printl(i32 %v47)
%v49 = load %struct.gameBoard*, %struct.gameBoard** %board
%v50 = getelementptr %struct.gameBoard, %struct.gameBoard* %v49, i1 0, i32 3
%v51 = load i32, i32* %v50
call void @print(i32 %v51)
%v53 = load %struct.gameBoard*, %struct.gameBoard** %board
%v54 = getelementptr %struct.gameBoard, %struct.gameBoard* %v53, i1 0, i32 4
%v55 = load i32, i32* %v54
call void @print(i32 %v55)
%v57 = load %struct.gameBoard*, %struct.gameBoard** %board
%v58 = getelementptr %struct.gameBoard, %struct.gameBoard* %v57, i1 0, i32 5
%v59 = load i32, i32* %v58
call void @printl(i32 %v59)
%v61 = load %struct.gameBoard*, %struct.gameBoard** %board
%v62 = getelementptr %struct.gameBoard, %struct.gameBoard* %v61, i1 0, i32 6
%v63 = load i32, i32* %v62
call void @print(i32 %v63)
%v65 = load %struct.gameBoard*, %struct.gameBoard** %board
%v66 = getelementptr %struct.gameBoard, %struct.gameBoard* %v65, i1 0, i32 7
%v67 = load i32, i32* %v66
call void @print(i32 %v67)
%v69 = load %struct.gameBoard*, %struct.gameBoard** %board
%v70 = getelementptr %struct.gameBoard, %struct.gameBoard* %v69, i1 0, i32 8
%v71 = load i32, i32* %v70
call void @printl(i32 %v71)
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
define void @placePiece(%struct.gameBoard* %_P_board, i32 %_P_turn, i32 %_P_placement)
{
LU8:
%board = alloca %struct.gameBoard*
store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
%turn = alloca i32
store i32 %_P_turn, i32* %turn
%placement = alloca i32
store i32 %_P_placement, i32* %placement
%v83 = load i32, i32* %placement
%v84 = icmp eq i32 %v83, 1
br i1 %v84, label %LU10, label %LU12

LU10:
%v88 = load i32, i32* %turn
%v90 = load %struct.gameBoard*, %struct.gameBoard** %board
%v91 = getelementptr %struct.gameBoard, %struct.gameBoard* %v90, i1 0, i32 0
store i32 %v88, i32* %v91
br label %LU11

LU11:
br label %LU9

LU9:
ret void 

LU12:
%v94 = load i32, i32* %placement
%v95 = icmp eq i32 %v94, 2
br i1 %v95, label %LU13, label %LU15

LU13:
%v99 = load i32, i32* %turn
%v101 = load %struct.gameBoard*, %struct.gameBoard** %board
%v102 = getelementptr %struct.gameBoard, %struct.gameBoard* %v101, i1 0, i32 1
store i32 %v99, i32* %v102
br label %LU14

LU14:
br label %LU9


LU15:
%v105 = load i32, i32* %placement
%v106 = icmp eq i32 %v105, 3
br i1 %v106, label %LU16, label %LU18

LU16:
%v110 = load i32, i32* %turn
%v112 = load %struct.gameBoard*, %struct.gameBoard** %board
%v113 = getelementptr %struct.gameBoard, %struct.gameBoard* %v112, i1 0, i32 2
store i32 %v110, i32* %v113
br label %LU17

LU17:
br label %LU9


LU18:
%v116 = load i32, i32* %placement
%v117 = icmp eq i32 %v116, 4
br i1 %v117, label %LU19, label %LU21

LU19:
%v121 = load i32, i32* %turn
%v123 = load %struct.gameBoard*, %struct.gameBoard** %board
%v124 = getelementptr %struct.gameBoard, %struct.gameBoard* %v123, i1 0, i32 3
store i32 %v121, i32* %v124
br label %LU20

LU20:
br label %LU9


LU21:
%v127 = load i32, i32* %placement
%v128 = icmp eq i32 %v127, 5
br i1 %v128, label %LU22, label %LU24

LU22:
%v132 = load i32, i32* %turn
%v134 = load %struct.gameBoard*, %struct.gameBoard** %board
%v135 = getelementptr %struct.gameBoard, %struct.gameBoard* %v134, i1 0, i32 4
store i32 %v132, i32* %v135
br label %LU23

LU23:
br label %LU9


LU24:
%v138 = load i32, i32* %placement
%v139 = icmp eq i32 %v138, 6
br i1 %v139, label %LU25, label %LU27

LU25:
%v143 = load i32, i32* %turn
%v145 = load %struct.gameBoard*, %struct.gameBoard** %board
%v146 = getelementptr %struct.gameBoard, %struct.gameBoard* %v145, i1 0, i32 5
store i32 %v143, i32* %v146
br label %LU26

LU26:
br label %LU9


LU27:
%v149 = load i32, i32* %placement
%v150 = icmp eq i32 %v149, 7
br i1 %v150, label %LU28, label %LU30

LU28:
%v154 = load i32, i32* %turn
%v156 = load %struct.gameBoard*, %struct.gameBoard** %board
%v157 = getelementptr %struct.gameBoard, %struct.gameBoard* %v156, i1 0, i32 6
store i32 %v154, i32* %v157
br label %LU29

LU29:
br label %LU9


LU30:
%v160 = load i32, i32* %placement
%v161 = icmp eq i32 %v160, 8
br i1 %v161, label %LU31, label %LU33

LU31:
%v165 = load i32, i32* %turn
%v167 = load %struct.gameBoard*, %struct.gameBoard** %board
%v168 = getelementptr %struct.gameBoard, %struct.gameBoard* %v167, i1 0, i32 7
store i32 %v165, i32* %v168
br label %LU32

LU32:
br label %LU9


LU33:
%v171 = load i32, i32* %placement
%v172 = icmp eq i32 %v171, 9
br i1 %v172, label %LU34, label %LU35

LU34:
%v176 = load i32, i32* %turn
%v178 = load %struct.gameBoard*, %struct.gameBoard** %board
%v179 = getelementptr %struct.gameBoard, %struct.gameBoard* %v178, i1 0, i32 8
store i32 %v176, i32* %v179
br label %LU35

LU35:
br label %LU9


}
define i32 @checkWinner(%struct.gameBoard* %_P_board)
{
LU36:
%board = alloca %struct.gameBoard*
store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
%v185 = load %struct.gameBoard*, %struct.gameBoard** %board
%v186 = getelementptr %struct.gameBoard, %struct.gameBoard* %v185, i1 0, i32 0
%v187 = load i32, i32* %v186
%v188 = icmp eq i32 %v187, 1
br i1 %v188, label %LU38, label %LU39

LU38:
%v192 = load %struct.gameBoard*, %struct.gameBoard** %board
%v193 = getelementptr %struct.gameBoard, %struct.gameBoard* %v192, i1 0, i32 1
%v194 = load i32, i32* %v193
%v195 = icmp eq i32 %v194, 1
br i1 %v195, label %LU40, label %LU41

LU40:
%v199 = load %struct.gameBoard*, %struct.gameBoard** %board
%v200 = getelementptr %struct.gameBoard, %struct.gameBoard* %v199, i1 0, i32 2
%v201 = load i32, i32* %v200
%v202 = icmp eq i32 %v201, 1
br i1 %v202, label %LU42, label %LU43

LU42:
ret i32 0
br label %LU37

LU37:
ret i32 0
br label %LU37

LU43:
br label %LU37


LU41:
br label %LU37


LU39:
%v206 = load %struct.gameBoard*, %struct.gameBoard** %board
%v207 = getelementptr %struct.gameBoard, %struct.gameBoard* %v206, i1 0, i32 0
%v208 = load i32, i32* %v207
%v209 = icmp eq i32 %v208, 2
br i1 %v209, label %LU44, label %LU45

LU44:
%v213 = load %struct.gameBoard*, %struct.gameBoard** %board
%v214 = getelementptr %struct.gameBoard, %struct.gameBoard* %v213, i1 0, i32 1
%v215 = load i32, i32* %v214
%v216 = icmp eq i32 %v215, 2
br i1 %v216, label %LU46, label %LU47

LU46:
%v220 = load %struct.gameBoard*, %struct.gameBoard** %board
%v221 = getelementptr %struct.gameBoard, %struct.gameBoard* %v220, i1 0, i32 2
%v222 = load i32, i32* %v221
%v223 = icmp eq i32 %v222, 2
br i1 %v223, label %LU48, label %LU49

LU48:
ret i32 1
br label %LU37


LU49:
br label %LU37


LU47:
br label %LU37


LU45:
%v227 = load %struct.gameBoard*, %struct.gameBoard** %board
%v228 = getelementptr %struct.gameBoard, %struct.gameBoard* %v227, i1 0, i32 3
%v229 = load i32, i32* %v228
%v230 = icmp eq i32 %v229, 1
br i1 %v230, label %LU50, label %LU51

LU50:
%v234 = load %struct.gameBoard*, %struct.gameBoard** %board
%v235 = getelementptr %struct.gameBoard, %struct.gameBoard* %v234, i1 0, i32 4
%v236 = load i32, i32* %v235
%v237 = icmp eq i32 %v236, 1
br i1 %v237, label %LU52, label %LU53

LU52:
%v241 = load %struct.gameBoard*, %struct.gameBoard** %board
%v242 = getelementptr %struct.gameBoard, %struct.gameBoard* %v241, i1 0, i32 5
%v243 = load i32, i32* %v242
%v244 = icmp eq i32 %v243, 1
br i1 %v244, label %LU54, label %LU55

LU54:
ret i32 0
br label %LU37


LU55:
br label %LU37


LU53:
br label %LU37


LU51:
%v248 = load %struct.gameBoard*, %struct.gameBoard** %board
%v249 = getelementptr %struct.gameBoard, %struct.gameBoard* %v248, i1 0, i32 3
%v250 = load i32, i32* %v249
%v251 = icmp eq i32 %v250, 2
br i1 %v251, label %LU56, label %LU57

LU56:
%v255 = load %struct.gameBoard*, %struct.gameBoard** %board
%v256 = getelementptr %struct.gameBoard, %struct.gameBoard* %v255, i1 0, i32 4
%v257 = load i32, i32* %v256
%v258 = icmp eq i32 %v257, 2
br i1 %v258, label %LU58, label %LU59

LU58:
%v262 = load %struct.gameBoard*, %struct.gameBoard** %board
%v263 = getelementptr %struct.gameBoard, %struct.gameBoard* %v262, i1 0, i32 5
%v264 = load i32, i32* %v263
%v265 = icmp eq i32 %v264, 2
br i1 %v265, label %LU60, label %LU61

LU60:
ret i32 1
br label %LU37


LU61:
br label %LU37


LU59:
br label %LU37


LU57:
%v269 = load %struct.gameBoard*, %struct.gameBoard** %board
%v270 = getelementptr %struct.gameBoard, %struct.gameBoard* %v269, i1 0, i32 6
%v271 = load i32, i32* %v270
%v272 = icmp eq i32 %v271, 1
br i1 %v272, label %LU62, label %LU63

LU62:
%v276 = load %struct.gameBoard*, %struct.gameBoard** %board
%v277 = getelementptr %struct.gameBoard, %struct.gameBoard* %v276, i1 0, i32 7
%v278 = load i32, i32* %v277
%v279 = icmp eq i32 %v278, 1
br i1 %v279, label %LU64, label %LU65

LU64:
%v283 = load %struct.gameBoard*, %struct.gameBoard** %board
%v284 = getelementptr %struct.gameBoard, %struct.gameBoard* %v283, i1 0, i32 8
%v285 = load i32, i32* %v284
%v286 = icmp eq i32 %v285, 1
br i1 %v286, label %LU66, label %LU67

LU66:
ret i32 0
br label %LU37


LU67:
br label %LU37


LU65:
br label %LU37


LU63:
%v290 = load %struct.gameBoard*, %struct.gameBoard** %board
%v291 = getelementptr %struct.gameBoard, %struct.gameBoard* %v290, i1 0, i32 6
%v292 = load i32, i32* %v291
%v293 = icmp eq i32 %v292, 2
br i1 %v293, label %LU68, label %LU69

LU68:
%v297 = load %struct.gameBoard*, %struct.gameBoard** %board
%v298 = getelementptr %struct.gameBoard, %struct.gameBoard* %v297, i1 0, i32 7
%v299 = load i32, i32* %v298
%v300 = icmp eq i32 %v299, 2
br i1 %v300, label %LU70, label %LU71

LU70:
%v304 = load %struct.gameBoard*, %struct.gameBoard** %board
%v305 = getelementptr %struct.gameBoard, %struct.gameBoard* %v304, i1 0, i32 8
%v306 = load i32, i32* %v305
%v307 = icmp eq i32 %v306, 2
br i1 %v307, label %LU72, label %LU73

LU72:
ret i32 1
br label %LU37


LU73:
br label %LU37


LU71:
br label %LU37


LU69:
%v311 = load %struct.gameBoard*, %struct.gameBoard** %board
%v312 = getelementptr %struct.gameBoard, %struct.gameBoard* %v311, i1 0, i32 0
%v313 = load i32, i32* %v312
%v314 = icmp eq i32 %v313, 1
br i1 %v314, label %LU74, label %LU75

LU74:
%v318 = load %struct.gameBoard*, %struct.gameBoard** %board
%v319 = getelementptr %struct.gameBoard, %struct.gameBoard* %v318, i1 0, i32 3
%v320 = load i32, i32* %v319
%v321 = icmp eq i32 %v320, 1
br i1 %v321, label %LU76, label %LU77

LU76:
%v325 = load %struct.gameBoard*, %struct.gameBoard** %board
%v326 = getelementptr %struct.gameBoard, %struct.gameBoard* %v325, i1 0, i32 6
%v327 = load i32, i32* %v326
%v328 = icmp eq i32 %v327, 1
br i1 %v328, label %LU78, label %LU79

LU78:
ret i32 0
br label %LU37


LU79:
br label %LU37


LU77:
br label %LU37


LU75:
%v332 = load %struct.gameBoard*, %struct.gameBoard** %board
%v333 = getelementptr %struct.gameBoard, %struct.gameBoard* %v332, i1 0, i32 0
%v334 = load i32, i32* %v333
%v335 = icmp eq i32 %v334, 2
br i1 %v335, label %LU80, label %LU81

LU80:
%v339 = load %struct.gameBoard*, %struct.gameBoard** %board
%v340 = getelementptr %struct.gameBoard, %struct.gameBoard* %v339, i1 0, i32 3
%v341 = load i32, i32* %v340
%v342 = icmp eq i32 %v341, 2
br i1 %v342, label %LU82, label %LU83

LU82:
%v346 = load %struct.gameBoard*, %struct.gameBoard** %board
%v347 = getelementptr %struct.gameBoard, %struct.gameBoard* %v346, i1 0, i32 6
%v348 = load i32, i32* %v347
%v349 = icmp eq i32 %v348, 2
br i1 %v349, label %LU84, label %LU85

LU84:
ret i32 1
br label %LU37


LU85:
br label %LU37


LU83:
br label %LU37


LU81:
%v353 = load %struct.gameBoard*, %struct.gameBoard** %board
%v354 = getelementptr %struct.gameBoard, %struct.gameBoard* %v353, i1 0, i32 1
%v355 = load i32, i32* %v354
%v356 = icmp eq i32 %v355, 1
br i1 %v356, label %LU86, label %LU87

LU86:
%v360 = load %struct.gameBoard*, %struct.gameBoard** %board
%v361 = getelementptr %struct.gameBoard, %struct.gameBoard* %v360, i1 0, i32 4
%v362 = load i32, i32* %v361
%v363 = icmp eq i32 %v362, 1
br i1 %v363, label %LU88, label %LU89

LU88:
%v367 = load %struct.gameBoard*, %struct.gameBoard** %board
%v368 = getelementptr %struct.gameBoard, %struct.gameBoard* %v367, i1 0, i32 7
%v369 = load i32, i32* %v368
%v370 = icmp eq i32 %v369, 1
br i1 %v370, label %LU90, label %LU91

LU90:
ret i32 0
br label %LU37


LU91:
br label %LU37


LU89:
br label %LU37


LU87:
%v374 = load %struct.gameBoard*, %struct.gameBoard** %board
%v375 = getelementptr %struct.gameBoard, %struct.gameBoard* %v374, i1 0, i32 1
%v376 = load i32, i32* %v375
%v377 = icmp eq i32 %v376, 2
br i1 %v377, label %LU92, label %LU93

LU92:
%v381 = load %struct.gameBoard*, %struct.gameBoard** %board
%v382 = getelementptr %struct.gameBoard, %struct.gameBoard* %v381, i1 0, i32 4
%v383 = load i32, i32* %v382
%v384 = icmp eq i32 %v383, 2
br i1 %v384, label %LU94, label %LU95

LU94:
%v388 = load %struct.gameBoard*, %struct.gameBoard** %board
%v389 = getelementptr %struct.gameBoard, %struct.gameBoard* %v388, i1 0, i32 7
%v390 = load i32, i32* %v389
%v391 = icmp eq i32 %v390, 2
br i1 %v391, label %LU96, label %LU97

LU96:
ret i32 1
br label %LU37


LU97:
br label %LU37


LU95:
br label %LU37


LU93:
%v395 = load %struct.gameBoard*, %struct.gameBoard** %board
%v396 = getelementptr %struct.gameBoard, %struct.gameBoard* %v395, i1 0, i32 2
%v397 = load i32, i32* %v396
%v398 = icmp eq i32 %v397, 1
br i1 %v398, label %LU98, label %LU99

LU98:
%v402 = load %struct.gameBoard*, %struct.gameBoard** %board
%v403 = getelementptr %struct.gameBoard, %struct.gameBoard* %v402, i1 0, i32 5
%v404 = load i32, i32* %v403
%v405 = icmp eq i32 %v404, 1
br i1 %v405, label %LU100, label %LU101

LU100:
%v409 = load %struct.gameBoard*, %struct.gameBoard** %board
%v410 = getelementptr %struct.gameBoard, %struct.gameBoard* %v409, i1 0, i32 8
%v411 = load i32, i32* %v410
%v412 = icmp eq i32 %v411, 1
br i1 %v412, label %LU102, label %LU103

LU102:
ret i32 0
br label %LU37


LU103:
br label %LU37


LU101:
br label %LU37


LU99:
%v416 = load %struct.gameBoard*, %struct.gameBoard** %board
%v417 = getelementptr %struct.gameBoard, %struct.gameBoard* %v416, i1 0, i32 2
%v418 = load i32, i32* %v417
%v419 = icmp eq i32 %v418, 2
br i1 %v419, label %LU104, label %LU105

LU104:
%v423 = load %struct.gameBoard*, %struct.gameBoard** %board
%v424 = getelementptr %struct.gameBoard, %struct.gameBoard* %v423, i1 0, i32 5
%v425 = load i32, i32* %v424
%v426 = icmp eq i32 %v425, 2
br i1 %v426, label %LU106, label %LU107

LU106:
%v430 = load %struct.gameBoard*, %struct.gameBoard** %board
%v431 = getelementptr %struct.gameBoard, %struct.gameBoard* %v430, i1 0, i32 8
%v432 = load i32, i32* %v431
%v433 = icmp eq i32 %v432, 2
br i1 %v433, label %LU108, label %LU109

LU108:
ret i32 1
br label %LU37


LU109:
br label %LU37


LU107:
br label %LU37


LU105:
ret i32 -1
br label %LU37

}
define i32 @main()
{
LU110:
%turn = alloca i32
%space1 = alloca i32
%space2 = alloca i32
%winner = alloca i32
%i = alloca i32
%board = alloca %struct.gameBoard*
store i32 0, i32* %i
store i32 0, i32* %turn
store i32 0, i32* %space1
store i32 0, i32* %space2
store i32 -1, i32* %winner
%v449 = call i8* @malloc(i32 36)
%v450 = bitcast i8* %v449 to %struct.gameBoard*
store %struct.gameBoard* %v450, %struct.gameBoard** %board
%v454 = load %struct.gameBoard*, %struct.gameBoard** %board
call void @cleanBoard(%struct.gameBoard* %v454)
br label %LU112

LU112:
%v457 = load i32, i32* %winner
%v458 = icmp slt i32 %v457, 0
%v460 = load i32, i32* %i
%v461 = icmp ne i32 %v460, 8
%v462 = zext i1 %v458 to i32
%v463 = zext i1 %v461 to i32
%v464 = and i32 %v462, %v463
%v465 = trunc i32 %v464 to i1
br i1 %v465, label %LU113, label %LU114

LU113:
%v470 = load %struct.gameBoard*, %struct.gameBoard** %board
call void @printBoard(%struct.gameBoard* %v470)
%v472 = load i32, i32* %turn
%v473 = icmp eq i32 %v472, 0
br i1 %v473, label %LU115, label %LU117

LU115:
%v477 = load i32, i32* %turn
%v478 = add i32 %v477, 1
store i32 %v478, i32* %turn
%v480 = call i32 @readchar()
store i32 %v480, i32* %space1
%v484 = load %struct.gameBoard*, %struct.gameBoard** %board
%v486 = load i32, i32* %space1
call void @placePiece(%struct.gameBoard* %v484, i32 1, i32 %v486)
br label %LU116

LU116:
%v501 = load %struct.gameBoard*, %struct.gameBoard** %board
%v499 = call i32 @checkWinner(%struct.gameBoard* %v501)
store i32 %v499, i32* %winner
%v504 = load i32, i32* %i
%v505 = add i32 %v504, 1
store i32 %v505, i32* %i
br label %LU112


LU117:
%v489 = load i32, i32* %turn
%v490 = sub i32 %v489, 1
store i32 %v490, i32* %turn
%v492 = call i32 @readchar()
store i32 %v492, i32* %space2
%v496 = load %struct.gameBoard*, %struct.gameBoard** %board
%v498 = load i32, i32* %space2
call void @placePiece(%struct.gameBoard* %v496, i32 2, i32 %v498)
br label %LU116


LU114:
%v508 = load i32, i32* %winner
%v509 = add i32 %v508, 1
call void @printl(i32 %v509)
ret i32 0
br label %LU111

LU111:
ret i32 0
br label %LU111
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

