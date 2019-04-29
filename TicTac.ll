%struct.gameBoard = type {i32, i32, i32, i32, i32, i32, i32, i32, i32}
define void @cleanBoard(%struct.gameBoard* %_P_board)
{

LU2:
%v5 = load %struct.gameBoard*, %struct.gameBoard** %board
%v6 = getelementptr %struct.gameBoard, %struct.gameBoard* %v5, i1 0, i32 0
store i32 0, i32* %v6
%v8 = load %struct.gameBoard*, %struct.gameBoard** %board
%v9 = getelementptr %struct.gameBoard, %struct.gameBoard* %v8, i1 0, i32 1
store i32 0, i32* %v9
%v11 = load %struct.gameBoard*, %struct.gameBoard** %board
%v12 = getelementptr %struct.gameBoard, %struct.gameBoard* %v11, i1 0, i32 2
store i32 0, i32* %v12
%v14 = load %struct.gameBoard*, %struct.gameBoard** %board
%v15 = getelementptr %struct.gameBoard, %struct.gameBoard* %v14, i1 0, i32 3
store i32 0, i32* %v15
%v17 = load %struct.gameBoard*, %struct.gameBoard** %board
%v18 = getelementptr %struct.gameBoard, %struct.gameBoard* %v17, i1 0, i32 4
store i32 0, i32* %v18
%v20 = load %struct.gameBoard*, %struct.gameBoard** %board
%v21 = getelementptr %struct.gameBoard, %struct.gameBoard* %v20, i1 0, i32 5
store i32 0, i32* %v21
%v23 = load %struct.gameBoard*, %struct.gameBoard** %board
%v24 = getelementptr %struct.gameBoard, %struct.gameBoard* %v23, i1 0, i32 6
store i32 0, i32* %v24
%v26 = load %struct.gameBoard*, %struct.gameBoard** %board
%v27 = getelementptr %struct.gameBoard, %struct.gameBoard* %v26, i1 0, i32 7
store i32 0, i32* %v27
%v29 = load %struct.gameBoard*, %struct.gameBoard** %board
%v30 = getelementptr %struct.gameBoard, %struct.gameBoard* %v29, i1 0, i32 8
store i32 0, i32* %v30
br label %LU3


LU3:
ret void 
}
define void @printBoard(%struct.gameBoard* %_P_board)
{

LU4:
%v34 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 0
%v35 = load i32, i32* %v34
call void @print(i32 %v35)
%v36 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 1
%v37 = load i32, i32* %v36
call void @print(i32 %v37)
%v38 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 2
%v39 = load i32, i32* %v38
call void @printl(i32 %v39)
%v40 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 3
%v41 = load i32, i32* %v40
call void @print(i32 %v41)
%v42 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 4
%v43 = load i32, i32* %v42
call void @print(i32 %v43)
%v44 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 5
%v45 = load i32, i32* %v44
call void @printl(i32 %v45)
%v46 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 6
%v47 = load i32, i32* %v46
call void @print(i32 %v47)
%v48 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 7
%v49 = load i32, i32* %v48
call void @print(i32 %v49)
%v50 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 8
%v51 = load i32, i32* %v50
call void @printl(i32 %v51)
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
%v59 = icmp eq i32 %_P_placement, 1
br i1 %v59, label %LU10, label %LU12


LU10:
%v63 = load %struct.gameBoard*, %struct.gameBoard** %board
%v64 = getelementptr %struct.gameBoard, %struct.gameBoard* %v63, i1 0, i32 0
store i32 %_P_turn, i32* %v64
br label %LU11


LU11:
br label %LU9


LU9:
ret void 


LU12:
%v66 = icmp eq i32 %_P_placement, 2
br i1 %v66, label %LU13, label %LU15


LU13:
%v70 = load %struct.gameBoard*, %struct.gameBoard** %board
%v71 = getelementptr %struct.gameBoard, %struct.gameBoard* %v70, i1 0, i32 1
store i32 %_P_turn, i32* %v71
br label %LU14


LU14:
br label %LU11



LU15:
%v73 = icmp eq i32 %_P_placement, 3
br i1 %v73, label %LU16, label %LU18


LU16:
%v77 = load %struct.gameBoard*, %struct.gameBoard** %board
%v78 = getelementptr %struct.gameBoard, %struct.gameBoard* %v77, i1 0, i32 2
store i32 %_P_turn, i32* %v78
br label %LU17


LU17:
br label %LU14



LU18:
%v80 = icmp eq i32 %_P_placement, 4
br i1 %v80, label %LU19, label %LU21


LU19:
%v84 = load %struct.gameBoard*, %struct.gameBoard** %board
%v85 = getelementptr %struct.gameBoard, %struct.gameBoard* %v84, i1 0, i32 3
store i32 %_P_turn, i32* %v85
br label %LU20


LU20:
br label %LU17



LU21:
%v87 = icmp eq i32 %_P_placement, 5
br i1 %v87, label %LU22, label %LU24


LU22:
%v91 = load %struct.gameBoard*, %struct.gameBoard** %board
%v92 = getelementptr %struct.gameBoard, %struct.gameBoard* %v91, i1 0, i32 4
store i32 %_P_turn, i32* %v92
br label %LU23


LU23:
br label %LU20



LU24:
%v94 = icmp eq i32 %_P_placement, 6
br i1 %v94, label %LU25, label %LU27


LU25:
%v98 = load %struct.gameBoard*, %struct.gameBoard** %board
%v99 = getelementptr %struct.gameBoard, %struct.gameBoard* %v98, i1 0, i32 5
store i32 %_P_turn, i32* %v99
br label %LU26


LU26:
br label %LU23



LU27:
%v101 = icmp eq i32 %_P_placement, 7
br i1 %v101, label %LU28, label %LU30


LU28:
%v105 = load %struct.gameBoard*, %struct.gameBoard** %board
%v106 = getelementptr %struct.gameBoard, %struct.gameBoard* %v105, i1 0, i32 6
store i32 %_P_turn, i32* %v106
br label %LU29


LU29:
br label %LU26



LU30:
%v108 = icmp eq i32 %_P_placement, 8
br i1 %v108, label %LU31, label %LU33


LU31:
%v112 = load %struct.gameBoard*, %struct.gameBoard** %board
%v113 = getelementptr %struct.gameBoard, %struct.gameBoard* %v112, i1 0, i32 7
store i32 %_P_turn, i32* %v113
br label %LU32


LU32:
br label %LU29



LU33:
%v115 = icmp eq i32 %_P_placement, 9
br i1 %v115, label %LU34, label %LU35


LU34:
%v119 = load %struct.gameBoard*, %struct.gameBoard** %board
%v120 = getelementptr %struct.gameBoard, %struct.gameBoard* %v119, i1 0, i32 8
store i32 %_P_turn, i32* %v120
br label %LU35


LU35:
br label %LU32


}
define i32 @checkWinner(%struct.gameBoard* %_P_board)
{

LU36:
%v124 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 0
%v125 = load i32, i32* %v124
%v126 = icmp eq i32 %v125, 1
br i1 %v126, label %LU38, label %LU39


LU38:
%v129 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 1
%v130 = load i32, i32* %v129
%v131 = icmp eq i32 %v130, 1
br i1 %v131, label %LU40, label %LU41


LU40:
%v134 = getelementptr %struct.gameBoard, %struct.gameBoard* %_P_board, i1 0, i32 2
%v135 = load i32, i32* %v134
%v136 = icmp eq i32 %v135, 1
br i1 %v136, label %LU42, label %LU43


LU42:
ret i32 0
br label %LU37


LU37:
ret i32 0
br label %LU37

%v141 = phi %struct.gameBoard* [ %_P_board, %L42 ], [ %_P_board, %L40 ]

LU43:
br label %LU41

%v140 = phi %struct.gameBoard* [ %_P_board, %L40 ], [ %v141, %L43 ], [ %_P_board, %L38 ]

LU41:
br label %LU39

%v139 = phi %struct.gameBoard* [ %_P_board, %L38 ], [ %v140, %L41 ], [ %_P_board, %L36 ]

LU39:
%v142 = getelementptr %struct.gameBoard, %struct.gameBoard* %v139, i1 0, i32 0
%v143 = load i32, i32* %v142
%v144 = icmp eq i32 %v143, 2
br i1 %v144, label %LU44, label %LU45


LU44:
%v147 = getelementptr %struct.gameBoard, %struct.gameBoard* %v139, i1 0, i32 1
%v148 = load i32, i32* %v147
%v149 = icmp eq i32 %v148, 2
br i1 %v149, label %LU46, label %LU47


LU46:
%v152 = getelementptr %struct.gameBoard, %struct.gameBoard* %v139, i1 0, i32 2
%v153 = load i32, i32* %v152
%v154 = icmp eq i32 %v153, 2
br i1 %v154, label %LU48, label %LU49


LU48:
ret i32 1
br label %LU37


%v159 = phi %struct.gameBoard* [ %v139, %L48 ], [ %v139, %L46 ]

LU49:
br label %LU47

%v158 = phi %struct.gameBoard* [ %v139, %L46 ], [ %v159, %L49 ], [ %v139, %L44 ]

LU47:
br label %LU45

%v157 = phi %struct.gameBoard* [ %v139, %L44 ], [ %v158, %L47 ], [ %v139, %L39 ]

LU45:
%v160 = getelementptr %struct.gameBoard, %struct.gameBoard* %v157, i1 0, i32 3
%v161 = load i32, i32* %v160
%v162 = icmp eq i32 %v161, 1
br i1 %v162, label %LU50, label %LU51


LU50:
%v165 = getelementptr %struct.gameBoard, %struct.gameBoard* %v157, i1 0, i32 4
%v166 = load i32, i32* %v165
%v167 = icmp eq i32 %v166, 1
br i1 %v167, label %LU52, label %LU53


LU52:
%v170 = getelementptr %struct.gameBoard, %struct.gameBoard* %v157, i1 0, i32 5
%v171 = load i32, i32* %v170
%v172 = icmp eq i32 %v171, 1
br i1 %v172, label %LU54, label %LU55


LU54:
ret i32 0
br label %LU37


%v177 = phi %struct.gameBoard* [ %v157, %L54 ], [ %v157, %L52 ]

LU55:
br label %LU53

%v176 = phi %struct.gameBoard* [ %v157, %L52 ], [ %v177, %L55 ], [ %v157, %L50 ]

LU53:
br label %LU51

%v175 = phi %struct.gameBoard* [ %v157, %L50 ], [ %v176, %L53 ], [ %v157, %L45 ]

LU51:
%v178 = getelementptr %struct.gameBoard, %struct.gameBoard* %v175, i1 0, i32 3
%v179 = load i32, i32* %v178
%v180 = icmp eq i32 %v179, 2
br i1 %v180, label %LU56, label %LU57


LU56:
%v183 = getelementptr %struct.gameBoard, %struct.gameBoard* %v175, i1 0, i32 4
%v184 = load i32, i32* %v183
%v185 = icmp eq i32 %v184, 2
br i1 %v185, label %LU58, label %LU59


LU58:
%v188 = getelementptr %struct.gameBoard, %struct.gameBoard* %v175, i1 0, i32 5
%v189 = load i32, i32* %v188
%v190 = icmp eq i32 %v189, 2
br i1 %v190, label %LU60, label %LU61


LU60:
ret i32 1
br label %LU37


%v195 = phi %struct.gameBoard* [ %v175, %L60 ], [ %v175, %L58 ]

LU61:
br label %LU59

%v194 = phi %struct.gameBoard* [ %v175, %L58 ], [ %v195, %L61 ], [ %v175, %L56 ]

LU59:
br label %LU57

%v193 = phi %struct.gameBoard* [ %v175, %L56 ], [ %v194, %L59 ], [ %v175, %L51 ]

LU57:
%v196 = getelementptr %struct.gameBoard, %struct.gameBoard* %v193, i1 0, i32 6
%v197 = load i32, i32* %v196
%v198 = icmp eq i32 %v197, 1
br i1 %v198, label %LU62, label %LU63


LU62:
%v201 = getelementptr %struct.gameBoard, %struct.gameBoard* %v193, i1 0, i32 7
%v202 = load i32, i32* %v201
%v203 = icmp eq i32 %v202, 1
br i1 %v203, label %LU64, label %LU65


LU64:
%v206 = getelementptr %struct.gameBoard, %struct.gameBoard* %v193, i1 0, i32 8
%v207 = load i32, i32* %v206
%v208 = icmp eq i32 %v207, 1
br i1 %v208, label %LU66, label %LU67


LU66:
ret i32 0
br label %LU37


%v213 = phi %struct.gameBoard* [ %v193, %L66 ], [ %v193, %L64 ]

LU67:
br label %LU65

%v212 = phi %struct.gameBoard* [ %v193, %L64 ], [ %v213, %L67 ], [ %v193, %L62 ]

LU65:
br label %LU63

%v211 = phi %struct.gameBoard* [ %v193, %L62 ], [ %v212, %L65 ], [ %v193, %L57 ]

LU63:
%v214 = getelementptr %struct.gameBoard, %struct.gameBoard* %v211, i1 0, i32 6
%v215 = load i32, i32* %v214
%v216 = icmp eq i32 %v215, 2
br i1 %v216, label %LU68, label %LU69


LU68:
%v219 = getelementptr %struct.gameBoard, %struct.gameBoard* %v211, i1 0, i32 7
%v220 = load i32, i32* %v219
%v221 = icmp eq i32 %v220, 2
br i1 %v221, label %LU70, label %LU71


LU70:
%v224 = getelementptr %struct.gameBoard, %struct.gameBoard* %v211, i1 0, i32 8
%v225 = load i32, i32* %v224
%v226 = icmp eq i32 %v225, 2
br i1 %v226, label %LU72, label %LU73


LU72:
ret i32 1
br label %LU37


%v231 = phi %struct.gameBoard* [ %v211, %L72 ], [ %v211, %L70 ]

LU73:
br label %LU71

%v230 = phi %struct.gameBoard* [ %v211, %L70 ], [ %v231, %L73 ], [ %v211, %L68 ]

LU71:
br label %LU69

%v229 = phi %struct.gameBoard* [ %v211, %L68 ], [ %v230, %L71 ], [ %v211, %L63 ]

LU69:
%v232 = getelementptr %struct.gameBoard, %struct.gameBoard* %v229, i1 0, i32 0
%v233 = load i32, i32* %v232
%v234 = icmp eq i32 %v233, 1
br i1 %v234, label %LU74, label %LU75


LU74:
%v237 = getelementptr %struct.gameBoard, %struct.gameBoard* %v229, i1 0, i32 3
%v238 = load i32, i32* %v237
%v239 = icmp eq i32 %v238, 1
br i1 %v239, label %LU76, label %LU77


LU76:
%v242 = getelementptr %struct.gameBoard, %struct.gameBoard* %v229, i1 0, i32 6
%v243 = load i32, i32* %v242
%v244 = icmp eq i32 %v243, 1
br i1 %v244, label %LU78, label %LU79


LU78:
ret i32 0
br label %LU37


%v249 = phi %struct.gameBoard* [ %v229, %L78 ], [ %v229, %L76 ]

LU79:
br label %LU77

%v248 = phi %struct.gameBoard* [ %v229, %L76 ], [ %v249, %L79 ], [ %v229, %L74 ]

LU77:
br label %LU75

%v247 = phi %struct.gameBoard* [ %v229, %L74 ], [ %v248, %L77 ], [ %v229, %L69 ]

LU75:
%v250 = getelementptr %struct.gameBoard, %struct.gameBoard* %v247, i1 0, i32 0
%v251 = load i32, i32* %v250
%v252 = icmp eq i32 %v251, 2
br i1 %v252, label %LU80, label %LU81


LU80:
%v255 = getelementptr %struct.gameBoard, %struct.gameBoard* %v247, i1 0, i32 3
%v256 = load i32, i32* %v255
%v257 = icmp eq i32 %v256, 2
br i1 %v257, label %LU82, label %LU83


LU82:
%v260 = getelementptr %struct.gameBoard, %struct.gameBoard* %v247, i1 0, i32 6
%v261 = load i32, i32* %v260
%v262 = icmp eq i32 %v261, 2
br i1 %v262, label %LU84, label %LU85


LU84:
ret i32 1
br label %LU37


%v267 = phi %struct.gameBoard* [ %v247, %L84 ], [ %v247, %L82 ]

LU85:
br label %LU83

%v266 = phi %struct.gameBoard* [ %v247, %L82 ], [ %v267, %L85 ], [ %v247, %L80 ]

LU83:
br label %LU81

%v265 = phi %struct.gameBoard* [ %v247, %L80 ], [ %v266, %L83 ], [ %v247, %L75 ]

LU81:
%v268 = getelementptr %struct.gameBoard, %struct.gameBoard* %v265, i1 0, i32 1
%v269 = load i32, i32* %v268
%v270 = icmp eq i32 %v269, 1
br i1 %v270, label %LU86, label %LU87


LU86:
%v273 = getelementptr %struct.gameBoard, %struct.gameBoard* %v265, i1 0, i32 4
%v274 = load i32, i32* %v273
%v275 = icmp eq i32 %v274, 1
br i1 %v275, label %LU88, label %LU89


LU88:
%v278 = getelementptr %struct.gameBoard, %struct.gameBoard* %v265, i1 0, i32 7
%v279 = load i32, i32* %v278
%v280 = icmp eq i32 %v279, 1
br i1 %v280, label %LU90, label %LU91


LU90:
ret i32 0
br label %LU37


%v285 = phi %struct.gameBoard* [ %v265, %L90 ], [ %v265, %L88 ]

LU91:
br label %LU89

%v284 = phi %struct.gameBoard* [ %v265, %L88 ], [ %v285, %L91 ], [ %v265, %L86 ]

LU89:
br label %LU87

%v283 = phi %struct.gameBoard* [ %v265, %L86 ], [ %v284, %L89 ], [ %v265, %L81 ]

LU87:
%v286 = getelementptr %struct.gameBoard, %struct.gameBoard* %v283, i1 0, i32 1
%v287 = load i32, i32* %v286
%v288 = icmp eq i32 %v287, 2
br i1 %v288, label %LU92, label %LU93


LU92:
%v291 = getelementptr %struct.gameBoard, %struct.gameBoard* %v283, i1 0, i32 4
%v292 = load i32, i32* %v291
%v293 = icmp eq i32 %v292, 2
br i1 %v293, label %LU94, label %LU95


LU94:
%v296 = getelementptr %struct.gameBoard, %struct.gameBoard* %v283, i1 0, i32 7
%v297 = load i32, i32* %v296
%v298 = icmp eq i32 %v297, 2
br i1 %v298, label %LU96, label %LU97


LU96:
ret i32 1
br label %LU37


%v303 = phi %struct.gameBoard* [ %v283, %L96 ], [ %v283, %L94 ]

LU97:
br label %LU95

%v302 = phi %struct.gameBoard* [ %v283, %L94 ], [ %v303, %L97 ], [ %v283, %L92 ]

LU95:
br label %LU93

%v301 = phi %struct.gameBoard* [ %v283, %L92 ], [ %v302, %L95 ], [ %v283, %L87 ]

LU93:
%v304 = getelementptr %struct.gameBoard, %struct.gameBoard* %v301, i1 0, i32 2
%v305 = load i32, i32* %v304
%v306 = icmp eq i32 %v305, 1
br i1 %v306, label %LU98, label %LU99


LU98:
%v309 = getelementptr %struct.gameBoard, %struct.gameBoard* %v301, i1 0, i32 5
%v310 = load i32, i32* %v309
%v311 = icmp eq i32 %v310, 1
br i1 %v311, label %LU100, label %LU101


LU100:
%v314 = getelementptr %struct.gameBoard, %struct.gameBoard* %v301, i1 0, i32 8
%v315 = load i32, i32* %v314
%v316 = icmp eq i32 %v315, 1
br i1 %v316, label %LU102, label %LU103


LU102:
ret i32 0
br label %LU37


%v321 = phi %struct.gameBoard* [ %v301, %L102 ], [ %v301, %L100 ]

LU103:
br label %LU101

%v320 = phi %struct.gameBoard* [ %v301, %L100 ], [ %v321, %L103 ], [ %v301, %L98 ]

LU101:
br label %LU99

%v319 = phi %struct.gameBoard* [ %v301, %L98 ], [ %v320, %L101 ], [ %v301, %L93 ]

LU99:
%v322 = getelementptr %struct.gameBoard, %struct.gameBoard* %v319, i1 0, i32 2
%v323 = load i32, i32* %v322
%v324 = icmp eq i32 %v323, 2
br i1 %v324, label %LU104, label %LU105


LU104:
%v327 = getelementptr %struct.gameBoard, %struct.gameBoard* %v319, i1 0, i32 5
%v328 = load i32, i32* %v327
%v329 = icmp eq i32 %v328, 2
br i1 %v329, label %LU106, label %LU107


LU106:
%v332 = getelementptr %struct.gameBoard, %struct.gameBoard* %v319, i1 0, i32 8
%v333 = load i32, i32* %v332
%v334 = icmp eq i32 %v333, 2
br i1 %v334, label %LU108, label %LU109


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
define i32 @main()
{

LU110:
store i32 0, i32* %i
store i32 0, i32* %turn
store i32 0, i32* %space1
store i32 0, i32* %space2
store i32 -1, i32* %winner
%v344 = call i8* @malloc(i32 36)
%v345 = bitcast i8* %v344 to %struct.gameBoard*
store %struct.gameBoard* %v345, %struct.gameBoard** %board
call void @cleanBoard(%struct.gameBoard* %board)
br label %LU112

%v349 = phi i32 [ %winner, %L110 ], [ %winner, %L116 ]
%v351 = phi i32 [ %i, %L110 ], [ %i, %L116 ]
%v360 = phi %struct.gameBoard* [ %board, %L110 ], [ %v377, %L116 ]
%v361 = phi i32 [ %turn, %L110 ], [ %v382, %L116 ]

LU112:
%v350 = icmp slt i32 %v349, 0
%v352 = icmp ne i32 %v351, 8
%v353 = zext i1 %v350 to i32
%v354 = zext i1 %v352 to i32
%v355 = and i32 %v353, %v354
%v356 = trunc i32 %v355 to i1
br i1 %v356, label %LU113, label %LU114


LU113:
call void @printBoard(%struct.gameBoard* %v360)
%v362 = icmp eq i32 %v361, 0
br i1 %v362, label %LU115, label %LU117


LU115:
%v365 = add i32 %v361, 1
store i32 %v365, i32* %turn
%v367 = call i32 @readchar()
store i32 %v367, i32* %space1
call void @placePiece(%struct.gameBoard* %v360, i32 1, i32 %space1)
br label %LU116

%v377 = phi %struct.gameBoard* [ %v360, %L115 ], [ %v360, %L117 ]
%v379 = phi i32 [ %v351, %L115 ], [ %v351, %L117 ]
%v382 = phi i32 [ %turn, %L115 ], [ %turn, %L117 ]

LU116:
%v376 = call i32 @checkWinner(%struct.gameBoard* %v377)
store i32 %v376, i32* %winner
%v380 = add i32 %v379, 1
store i32 %v380, i32* %i
br label %LU112



LU117:
%v371 = sub i32 %v361, 1
store i32 %v371, i32* %turn
%v373 = call i32 @readchar()
store i32 %v373, i32* %space2
call void @placePiece(%struct.gameBoard* %v360, i32 2, i32 %space2)
br label %LU116



LU114:
%v383 = add i32 %v349, 1
call void @printl(i32 %v383)
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

