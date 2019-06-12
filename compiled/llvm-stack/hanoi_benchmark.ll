%struct.plate = type {i32, %struct.plate*}
@peg1 = common global %struct.plate* null, align 4
@peg2 = common global %struct.plate* null, align 4
@peg3 = common global %struct.plate* null, align 4
@numMoves = common global i32 0, align 4
define i32 @main()
{
LU26:


%count = alloca i32
%numPlates = alloca i32
%aPlate = alloca %struct.plate*
store %struct.plate* null, %struct.plate** @peg1
store %struct.plate* null, %struct.plate** @peg2
store %struct.plate* null, %struct.plate** @peg3
store i32 0, i32* @numMoves
%v162 = call i32 @readchar()
store i32 %v162, i32* %numPlates
%v165 = load i32, i32* %numPlates
%v166 = icmp sge i32 %v165, 1
br i1 %v166, label %LU28, label %LU29

LU28:


%v170 = load i32, i32* %numPlates
store i32 %v170, i32* %count
br label %LU30

LU30:


%v174 = load i32, i32* %count
%v175 = icmp ne i32 %v174, 0
br i1 %v175, label %LU31, label %LU32

LU31:


%v178 = call i8* @malloc(i32 8)
%v179 = bitcast i8* %v178 to %struct.plate*
store %struct.plate* %v179, %struct.plate** %aPlate
%v182 = load i32, i32* %count
%v184 = load %struct.plate*, %struct.plate** %aPlate
%v185 = getelementptr %struct.plate, %struct.plate* %v184, i1 0, i32 0
store i32 %v182, i32* %v185
%v187 = load %struct.plate*, %struct.plate** @peg1
%v189 = load %struct.plate*, %struct.plate** %aPlate
%v190 = getelementptr %struct.plate, %struct.plate* %v189, i1 0, i32 1
store %struct.plate* %v187, %struct.plate** %v190
%v192 = load %struct.plate*, %struct.plate** %aPlate
store %struct.plate* %v192, %struct.plate** @peg1
%v195 = load i32, i32* %count
%v196 = sub i32 %v195, 1
store i32 %v196, i32* %count
br label %LU30


LU32:


call void @printl(i32 1)
%v200 = load %struct.plate*, %struct.plate** @peg1
call void @printPeg(%struct.plate* %v200)
call void @printl(i32 2)
%v203 = load %struct.plate*, %struct.plate** @peg2
call void @printPeg(%struct.plate* %v203)
call void @printl(i32 3)
%v206 = load %struct.plate*, %struct.plate** @peg3
call void @printPeg(%struct.plate* %v206)
%v209 = load i32, i32* %numPlates
call void @hanoi(i32 %v209, i32 1, i32 3, i32 2)
call void @printl(i32 1)
%v212 = load %struct.plate*, %struct.plate** @peg1
call void @printPeg(%struct.plate* %v212)
call void @printl(i32 2)
%v215 = load %struct.plate*, %struct.plate** @peg2
call void @printPeg(%struct.plate* %v215)
call void @printl(i32 3)
%v218 = load %struct.plate*, %struct.plate** @peg3
call void @printPeg(%struct.plate* %v218)
%v220 = load i32, i32* @numMoves
call void @printl(i32 %v220)
br label %LU33

LU33:


%v223 = load %struct.plate*, %struct.plate** @peg3
%v224 = icmp ne %struct.plate* %v223, null
br i1 %v224, label %LU34, label %LU35

LU34:


%v228 = load %struct.plate*, %struct.plate** @peg3
store %struct.plate* %v228, %struct.plate** %aPlate
%v231 = load %struct.plate*, %struct.plate** @peg3
%v232 = getelementptr %struct.plate, %struct.plate* %v231, i1 0, i32 1
%v233 = load %struct.plate*, %struct.plate** %v232
store %struct.plate* %v233, %struct.plate** @peg3
%v236 = load %struct.plate*, %struct.plate** %aPlate
%v237 = bitcast %struct.plate* %v236 to i8*
call void @free(i8* %v237)
br label %LU33


LU35:


br label %LU29

LU29:


ret i32 0
br label %LU27

LU27:


ret i32 0
br label %LU27

}
define void @printPeg(%struct.plate* %_P_peg)
{
LU21:


%peg = alloca %struct.plate*
store %struct.plate* %_P_peg, %struct.plate** %peg
%aPlate = alloca %struct.plate*
%v136 = load %struct.plate*, %struct.plate** %peg
store %struct.plate* %v136, %struct.plate** %aPlate
br label %LU23

LU23:


%v140 = load %struct.plate*, %struct.plate** %aPlate
%v141 = icmp ne %struct.plate* %v140, null
br i1 %v141, label %LU24, label %LU25

LU24:


%v145 = load %struct.plate*, %struct.plate** %aPlate
%v146 = getelementptr %struct.plate, %struct.plate* %v145, i1 0, i32 0
%v147 = load i32, i32* %v146
call void @printl(i32 %v147)
%v149 = load %struct.plate*, %struct.plate** %aPlate
%v150 = getelementptr %struct.plate, %struct.plate* %v149, i1 0, i32 1
%v151 = load %struct.plate*, %struct.plate** %v150
store %struct.plate* %v151, %struct.plate** %aPlate
br label %LU23


LU25:


br label %LU22

LU22:


ret void 
}
define void @hanoi(i32 %_P_n, i32 %_P_from, i32 %_P_to, i32 %_P_other)
{
LU16:


%n = alloca i32
store i32 %_P_n, i32* %n
%from = alloca i32
store i32 %_P_from, i32* %from
%to = alloca i32
store i32 %_P_to, i32* %to
%other = alloca i32
store i32 %_P_other, i32* %other
%v95 = load i32, i32* %n
%v96 = icmp eq i32 %v95, 1
br i1 %v96, label %LU18, label %LU20

LU18:


%v101 = load i32, i32* %from
%v103 = load i32, i32* %to
call void @move(i32 %v101, i32 %v103)
br label %LU19

LU19:


br label %LU17

LU17:


ret void 

LU20:


%v107 = load i32, i32* %n
%v108 = sub i32 %v107, 1
%v110 = load i32, i32* %from
%v112 = load i32, i32* %other
%v114 = load i32, i32* %to
call void @hanoi(i32 %v108, i32 %v110, i32 %v112, i32 %v114)
%v117 = load i32, i32* %from
%v119 = load i32, i32* %to
call void @move(i32 %v117, i32 %v119)
%v122 = load i32, i32* %n
%v123 = sub i32 %v122, 1
%v125 = load i32, i32* %other
%v127 = load i32, i32* %to
%v129 = load i32, i32* %from
call void @hanoi(i32 %v123, i32 %v125, i32 %v127, i32 %v129)
br label %LU19

}
define void @move(i32 %_P_from, i32 %_P_to)
{
LU2:


%from = alloca i32
store i32 %_P_from, i32* %from
%to = alloca i32
store i32 %_P_to, i32* %to
%plateToMove = alloca %struct.plate*
%v9 = load i32, i32* %from
%v10 = icmp eq i32 %v9, 1
br i1 %v10, label %LU4, label %LU6

LU4:


%v14 = load %struct.plate*, %struct.plate** @peg1
store %struct.plate* %v14, %struct.plate** %plateToMove
%v17 = load %struct.plate*, %struct.plate** @peg1
%v18 = getelementptr %struct.plate, %struct.plate* %v17, i1 0, i32 1
%v19 = load %struct.plate*, %struct.plate** %v18
store %struct.plate* %v19, %struct.plate** @peg1
br label %LU5

LU5:


%v45 = load i32, i32* %to
%v46 = icmp eq i32 %v45, 1
br i1 %v46, label %LU10, label %LU12

LU10:


%v50 = load %struct.plate*, %struct.plate** @peg1
%v52 = load %struct.plate*, %struct.plate** %plateToMove
%v53 = getelementptr %struct.plate, %struct.plate* %v52, i1 0, i32 1
store %struct.plate* %v50, %struct.plate** %v53
%v55 = load %struct.plate*, %struct.plate** %plateToMove
store %struct.plate* %v55, %struct.plate** @peg1
br label %LU11

LU11:


%v81 = load i32, i32* @numMoves
%v82 = add i32 %v81, 1
store i32 %v82, i32* @numMoves
br label %LU3

LU3:


ret void 

LU12:


%v59 = load i32, i32* %to
%v60 = icmp eq i32 %v59, 2
br i1 %v60, label %LU13, label %LU15

LU13:


%v64 = load %struct.plate*, %struct.plate** @peg2
%v66 = load %struct.plate*, %struct.plate** %plateToMove
%v67 = getelementptr %struct.plate, %struct.plate* %v66, i1 0, i32 1
store %struct.plate* %v64, %struct.plate** %v67
%v69 = load %struct.plate*, %struct.plate** %plateToMove
store %struct.plate* %v69, %struct.plate** @peg2
br label %LU14

LU14:


br label %LU11


LU15:


%v73 = load %struct.plate*, %struct.plate** @peg3
%v75 = load %struct.plate*, %struct.plate** %plateToMove
%v76 = getelementptr %struct.plate, %struct.plate* %v75, i1 0, i32 1
store %struct.plate* %v73, %struct.plate** %v76
%v78 = load %struct.plate*, %struct.plate** %plateToMove
store %struct.plate* %v78, %struct.plate** @peg3
br label %LU14


LU6:


%v23 = load i32, i32* %from
%v24 = icmp eq i32 %v23, 2
br i1 %v24, label %LU7, label %LU9

LU7:


%v28 = load %struct.plate*, %struct.plate** @peg2
store %struct.plate* %v28, %struct.plate** %plateToMove
%v31 = load %struct.plate*, %struct.plate** @peg2
%v32 = getelementptr %struct.plate, %struct.plate* %v31, i1 0, i32 1
%v33 = load %struct.plate*, %struct.plate** %v32
store %struct.plate* %v33, %struct.plate** @peg2
br label %LU8

LU8:


br label %LU5


LU9:


%v37 = load %struct.plate*, %struct.plate** @peg3
store %struct.plate* %v37, %struct.plate** %plateToMove
%v40 = load %struct.plate*, %struct.plate** @peg3
%v41 = getelementptr %struct.plate, %struct.plate* %v40, i1 0, i32 1
%v42 = load %struct.plate*, %struct.plate** %v41
store %struct.plate* %v42, %struct.plate** @peg3
br label %LU8

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

