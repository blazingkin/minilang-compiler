%struct.gameBoard = type {i32, i32, i32, i32, i32, i32, i32, i32, i32}
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


br label %LU11


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


br label %LU14


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


br label %LU17


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


br label %LU20


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


br label %LU23


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


br label %LU26


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


br label %LU29


LU33:


%v171 = load i32, i32* %placement
%v172 = icmp eq i32 %v171, 9
br i1 %v172, label %LU34, label %LU35

LU34:


%v176 = load i32, i32* %turn
%v178 = load %struct.gameBoard*, %struct.gameBoard** %board
%v181 = getelementptr %struct.gameBoard, %struct.gameBoard* %v178, i1 0, i32 8
store i32 %v176, i32* %v181
br label %LU35

LU35:


br label %LU32


}
define i32 @main()
{
LU68:


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
%v307 = call i8* @malloc(i32 36)
%v308 = bitcast i8* %v307 to %struct.gameBoard*
store %struct.gameBoard* %v308, %struct.gameBoard** %board
%v312 = load %struct.gameBoard*, %struct.gameBoard** %board
call void @cleanBoard(%struct.gameBoard* %v312)
br label %LU70

LU70:


%v315 = load i32, i32* %winner
%v316 = icmp slt i32 %v315, 0
%v318 = load i32, i32* %i
%v319 = icmp ne i32 %v318, 8
%v320 = and i1 %v316, %v319
br i1 %v320, label %LU71, label %LU72

LU71:


%v325 = load %struct.gameBoard*, %struct.gameBoard** %board
call void @printBoard(%struct.gameBoard* %v325)
%v328 = load i32, i32* %turn
%v330 = icmp eq i32 %v328, 0
br i1 %v330, label %LU75, label %LU80

LU75:


%v338 = load i32, i32* %turn
%v340 = add i32 %v338, 1
store i32 %v340, i32* %turn
%v344 = call i32 @readchar()
store i32 %v344, i32* %space1
%v351 = load %struct.gameBoard*, %struct.gameBoard** %board
%v354 = load i32, i32* %space1
call void @placePiece(%struct.gameBoard* %v351, i32 1, i32 %v354)
br label %LU76

LU76:


%v370 = load %struct.gameBoard*, %struct.gameBoard** %board
%v368 = call i32 @checkWinner(%struct.gameBoard* %v370)
store i32 %v368, i32* %winner
%v373 = load i32, i32* %i
%v374 = add i32 %v373, 1
store i32 %v374, i32* %i
br label %LU70


LU80:


%v358 = load i32, i32* %turn
%v359 = sub i32 %v358, 1
store i32 %v359, i32* %turn
%v361 = call i32 @readchar()
store i32 %v361, i32* %space2
%v365 = load %struct.gameBoard*, %struct.gameBoard** %board
%v367 = load i32, i32* %space2
call void @placePiece(%struct.gameBoard* %v365, i32 2, i32 %v367)
br label %LU76


LU72:


%v377 = load i32, i32* %winner
%v378 = add i32 %v377, 1
call void @printl(i32 %v378)
ret i32 0
br label %LU69

LU69:


ret i32 0
br label %LU69
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


br label %LU41

LU41:


br label %LU39

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


br label %LU47

LU47:


br label %LU45

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


br label %LU53

LU53:


br label %LU51

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


br label %LU59

LU59:


br label %LU57

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


br label %LU65

LU65:


br label %LU63

LU63:


%v290 = load %struct.gameBoard*, %struct.gameBoard** %board
%v291 = getelementptr %struct.gameBoard, %struct.gameBoard* %v290, i1 0, i32 6
%v292 = load i32, i32* %v291
%v293 = icmp eq i32 %v292, 2
br i1 %v293, label %LU73, label %LU74

LU73:


%v332 = load %struct.gameBoard*, %struct.gameBoard** %board
%v334 = getelementptr %struct.gameBoard, %struct.gameBoard* %v332, i1 0, i32 7
%v336 = load i32, i32* %v334
%v339 = icmp eq i32 %v336, 2
br i1 %v339, label %LU77, label %LU78

LU77:


%v347 = load %struct.gameBoard*, %struct.gameBoard** %board
%v349 = getelementptr %struct.gameBoard, %struct.gameBoard* %v347, i1 0, i32 8
%v352 = load i32, i32* %v349
%v355 = icmp eq i32 %v352, 2
br i1 %v355, label %LU79, label %LU81

LU79:


ret i32 1
br label %LU37


LU81:


br label %LU78

LU78:


br label %LU74

LU74:


%v382 = load %struct.gameBoard*, %struct.gameBoard** %board
%v383 = getelementptr %struct.gameBoard, %struct.gameBoard* %v382, i1 0, i32 0
%v384 = load i32, i32* %v383
%v385 = icmp eq i32 %v384, 1
br i1 %v385, label %LU82, label %LU83

LU82:


%v389 = load %struct.gameBoard*, %struct.gameBoard** %board
%v390 = getelementptr %struct.gameBoard, %struct.gameBoard* %v389, i1 0, i32 3
%v391 = load i32, i32* %v390
%v392 = icmp eq i32 %v391, 1
br i1 %v392, label %LU84, label %LU85

LU84:


%v396 = load %struct.gameBoard*, %struct.gameBoard** %board
%v397 = getelementptr %struct.gameBoard, %struct.gameBoard* %v396, i1 0, i32 6
%v398 = load i32, i32* %v397
%v399 = icmp eq i32 %v398, 1
br i1 %v399, label %LU86, label %LU87

LU86:


ret i32 0
br label %LU37


LU87:


br label %LU85

LU85:


br label %LU83

LU83:


%v403 = load %struct.gameBoard*, %struct.gameBoard** %board
%v404 = getelementptr %struct.gameBoard, %struct.gameBoard* %v403, i1 0, i32 0
%v405 = load i32, i32* %v404
%v406 = icmp eq i32 %v405, 2
br i1 %v406, label %LU88, label %LU89

LU88:


%v410 = load %struct.gameBoard*, %struct.gameBoard** %board
%v411 = getelementptr %struct.gameBoard, %struct.gameBoard* %v410, i1 0, i32 3
%v412 = load i32, i32* %v411
%v413 = icmp eq i32 %v412, 2
br i1 %v413, label %LU90, label %LU91

LU90:


%v417 = load %struct.gameBoard*, %struct.gameBoard** %board
%v418 = getelementptr %struct.gameBoard, %struct.gameBoard* %v417, i1 0, i32 6
%v419 = load i32, i32* %v418
%v420 = icmp eq i32 %v419, 2
br i1 %v420, label %LU92, label %LU93

LU92:


ret i32 1
br label %LU37


LU93:


br label %LU91

LU91:


br label %LU89

LU89:


%v424 = load %struct.gameBoard*, %struct.gameBoard** %board
%v425 = getelementptr %struct.gameBoard, %struct.gameBoard* %v424, i1 0, i32 1
%v426 = load i32, i32* %v425
%v427 = icmp eq i32 %v426, 1
br i1 %v427, label %LU94, label %LU95

LU94:


%v431 = load %struct.gameBoard*, %struct.gameBoard** %board
%v432 = getelementptr %struct.gameBoard, %struct.gameBoard* %v431, i1 0, i32 4
%v433 = load i32, i32* %v432
%v434 = icmp eq i32 %v433, 1
br i1 %v434, label %LU96, label %LU97

LU96:


%v438 = load %struct.gameBoard*, %struct.gameBoard** %board
%v439 = getelementptr %struct.gameBoard, %struct.gameBoard* %v438, i1 0, i32 7
%v440 = load i32, i32* %v439
%v441 = icmp eq i32 %v440, 1
br i1 %v441, label %LU98, label %LU99

LU98:


ret i32 0
br label %LU37


LU99:


br label %LU97

LU97:


br label %LU95

LU95:


%v445 = load %struct.gameBoard*, %struct.gameBoard** %board
%v446 = getelementptr %struct.gameBoard, %struct.gameBoard* %v445, i1 0, i32 1
%v447 = load i32, i32* %v446
%v448 = icmp eq i32 %v447, 2
br i1 %v448, label %LU100, label %LU101

LU100:


%v452 = load %struct.gameBoard*, %struct.gameBoard** %board
%v453 = getelementptr %struct.gameBoard, %struct.gameBoard* %v452, i1 0, i32 4
%v454 = load i32, i32* %v453
%v455 = icmp eq i32 %v454, 2
br i1 %v455, label %LU102, label %LU103

LU102:


%v459 = load %struct.gameBoard*, %struct.gameBoard** %board
%v460 = getelementptr %struct.gameBoard, %struct.gameBoard* %v459, i1 0, i32 7
%v461 = load i32, i32* %v460
%v462 = icmp eq i32 %v461, 2
br i1 %v462, label %LU104, label %LU105

LU104:


ret i32 1
br label %LU37


LU105:


br label %LU103

LU103:


br label %LU101

LU101:


%v466 = load %struct.gameBoard*, %struct.gameBoard** %board
%v467 = getelementptr %struct.gameBoard, %struct.gameBoard* %v466, i1 0, i32 2
%v468 = load i32, i32* %v467
%v469 = icmp eq i32 %v468, 1
br i1 %v469, label %LU106, label %LU107

LU106:


%v473 = load %struct.gameBoard*, %struct.gameBoard** %board
%v474 = getelementptr %struct.gameBoard, %struct.gameBoard* %v473, i1 0, i32 5
%v475 = load i32, i32* %v474
%v476 = icmp eq i32 %v475, 1
br i1 %v476, label %LU108, label %LU109

LU108:


%v480 = load %struct.gameBoard*, %struct.gameBoard** %board
%v481 = getelementptr %struct.gameBoard, %struct.gameBoard* %v480, i1 0, i32 8
%v482 = load i32, i32* %v481
%v483 = icmp eq i32 %v482, 1
br i1 %v483, label %LU110, label %LU111

LU110:


ret i32 0
br label %LU37


LU111:


br label %LU109

LU109:


br label %LU107

LU107:


%v487 = load %struct.gameBoard*, %struct.gameBoard** %board
%v488 = getelementptr %struct.gameBoard, %struct.gameBoard* %v487, i1 0, i32 2
%v489 = load i32, i32* %v488
%v490 = icmp eq i32 %v489, 2
br i1 %v490, label %LU112, label %LU113

LU112:


%v494 = load %struct.gameBoard*, %struct.gameBoard** %board
%v495 = getelementptr %struct.gameBoard, %struct.gameBoard* %v494, i1 0, i32 5
%v496 = load i32, i32* %v495
%v497 = icmp eq i32 %v496, 2
br i1 %v497, label %LU114, label %LU115

LU114:


%v501 = load %struct.gameBoard*, %struct.gameBoard** %board
%v502 = getelementptr %struct.gameBoard, %struct.gameBoard* %v501, i1 0, i32 8
%v503 = load i32, i32* %v502
%v504 = icmp eq i32 %v503, 2
br i1 %v504, label %LU116, label %LU117

LU116:


ret i32 1
br label %LU37


LU117:


br label %LU115

LU115:


br label %LU113

LU113:


ret i32 -1
br label %LU37

























}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

