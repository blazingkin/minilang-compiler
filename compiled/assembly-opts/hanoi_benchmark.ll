%struct.plate = type {i32, %struct.plate*}
@peg1 = common global %struct.plate* null, align 4
@peg2 = common global %struct.plate* null, align 4
@peg3 = common global %struct.plate* null, align 4
@numMoves = common global i32 0, align 4
define i32 @main()
{
LU26:

store %struct.plate* null, %struct.plate** @peg1
store %struct.plate* null, %struct.plate** @peg2
store %struct.plate* null, %struct.plate** @peg3
store i32 0, i32* @numMoves
%v96 = call i32 @readchar()
%v97 = icmp sge i32 %v96, 1
br i1 %v97, label %LU28, label %LU29

LU28:

br label %LU30

LU30:
%v101 = phi i32 [ %v96, %LU28 ], [ %v112, %LU31 ]
%v123 = phi i32 [ %v96, %LU28 ], [ %v123, %LU31 ]

%v102 = icmp ne i32 %v101, 0
br i1 %v102, label %LU31, label %LU32

LU31:

%v105 = call i8* @malloc(i32 8)
%v106 = bitcast i8* %v105 to %struct.plate*
%v107 = getelementptr %struct.plate, %struct.plate* %v106, i1 0, i32 0
store i32 %v101, i32* %v107
%v109 = load %struct.plate*, %struct.plate** @peg1
%v110 = getelementptr %struct.plate, %struct.plate* %v106, i1 0, i32 1
store %struct.plate* %v109, %struct.plate** %v110
store %struct.plate* %v106, %struct.plate** @peg1
%v112 = sub i32 %v101, 1
br label %LU30


LU32:

call void @printl(i32 1)
%v115 = load %struct.plate*, %struct.plate** @peg1
call void @printPeg(%struct.plate* %v115)
call void @printl(i32 2)
%v118 = load %struct.plate*, %struct.plate** @peg2
call void @printPeg(%struct.plate* %v118)
call void @printl(i32 3)
%v121 = load %struct.plate*, %struct.plate** @peg3
call void @printPeg(%struct.plate* %v121)
call void @hanoi(i32 %v123, i32 1, i32 3, i32 2)
call void @printl(i32 1)
%v126 = load %struct.plate*, %struct.plate** @peg1
call void @printPeg(%struct.plate* %v126)
call void @printl(i32 2)
%v129 = load %struct.plate*, %struct.plate** @peg2
call void @printPeg(%struct.plate* %v129)
call void @printl(i32 3)
%v132 = load %struct.plate*, %struct.plate** @peg3
call void @printPeg(%struct.plate* %v132)
%v134 = load i32, i32* @numMoves
call void @printl(i32 %v134)
br label %LU33

LU33:

%v137 = load %struct.plate*, %struct.plate** @peg3
%v138 = icmp ne %struct.plate* %v137, null
br i1 %v138, label %LU34, label %LU35

LU34:

%v142 = load %struct.plate*, %struct.plate** @peg3
%v144 = load %struct.plate*, %struct.plate** @peg3
%v145 = getelementptr %struct.plate, %struct.plate* %v144, i1 0, i32 1
%v146 = load %struct.plate*, %struct.plate** %v145
store %struct.plate* %v146, %struct.plate** @peg3
%v148 = bitcast %struct.plate* %v142 to i8*
call void @free(i8* %v148)
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
define void @move(i32 %_P_from, i32 %_P_to)
{
LU2:

%v5 = icmp eq i32 %_P_from, 1
br i1 %v5, label %LU4, label %LU6

LU4:

%v9 = load %struct.plate*, %struct.plate** @peg1
%v11 = load %struct.plate*, %struct.plate** @peg1
%v12 = getelementptr %struct.plate, %struct.plate* %v11, i1 0, i32 1
%v13 = load %struct.plate*, %struct.plate** %v12
store %struct.plate* %v13, %struct.plate** @peg1
br label %LU5

LU5:
%v34 = phi i32 [ %_P_to, %LU4 ], [ %v35, %LU8 ]
%v41 = phi %struct.plate* [ %v9, %LU4 ], [ %v42, %LU8 ]

%v36 = icmp eq i32 %v34, 1
br i1 %v36, label %LU10, label %LU12

LU10:

%v40 = load %struct.plate*, %struct.plate** @peg1
%v43 = getelementptr %struct.plate, %struct.plate* %v41, i1 0, i32 1
store %struct.plate* %v40, %struct.plate** %v43
store %struct.plate* %v41, %struct.plate** @peg1
br label %LU11

LU11:

%v59 = load i32, i32* @numMoves
%v60 = add i32 %v59, 1
store i32 %v60, i32* @numMoves
ret void 

LU12:

%v46 = icmp eq i32 %v34, 2
br i1 %v46, label %LU13, label %LU15

LU13:

%v50 = load %struct.plate*, %struct.plate** @peg2
%v51 = getelementptr %struct.plate, %struct.plate* %v41, i1 0, i32 1
store %struct.plate* %v50, %struct.plate** %v51
store %struct.plate* %v41, %struct.plate** @peg2
br label %LU14

LU14:

br label %LU11


LU15:

%v55 = load %struct.plate*, %struct.plate** @peg3
%v56 = getelementptr %struct.plate, %struct.plate* %v41, i1 0, i32 1
store %struct.plate* %v55, %struct.plate** %v56
store %struct.plate* %v41, %struct.plate** @peg3
br label %LU14


LU6:

%v16 = icmp eq i32 %_P_from, 2
br i1 %v16, label %LU7, label %LU9

LU7:

%v20 = load %struct.plate*, %struct.plate** @peg2
%v22 = load %struct.plate*, %struct.plate** @peg2
%v23 = getelementptr %struct.plate, %struct.plate* %v22, i1 0, i32 1
%v24 = load %struct.plate*, %struct.plate** %v23
store %struct.plate* %v24, %struct.plate** @peg2
br label %LU8

LU8:
%v35 = phi i32 [ %_P_to, %LU7 ], [ %_P_to, %LU9 ]
%v42 = phi %struct.plate* [ %v20, %LU7 ], [ %v28, %LU9 ]

br label %LU5


LU9:

%v28 = load %struct.plate*, %struct.plate** @peg3
%v30 = load %struct.plate*, %struct.plate** @peg3
%v31 = getelementptr %struct.plate, %struct.plate* %v30, i1 0, i32 1
%v32 = load %struct.plate*, %struct.plate** %v31
store %struct.plate* %v32, %struct.plate** @peg3
br label %LU8

}
define void @printPeg(%struct.plate* %_P_peg)
{
LU21:

br label %LU23

LU23:
%v82 = phi %struct.plate* [ %_P_peg, %LU21 ], [ %v89, %LU24 ]

%v83 = icmp ne %struct.plate* %v82, null
br i1 %v83, label %LU24, label %LU25

LU24:

%v86 = getelementptr %struct.plate, %struct.plate* %v82, i1 0, i32 0
%v87 = load i32, i32* %v86
call void @printl(i32 %v87)
%v88 = getelementptr %struct.plate, %struct.plate* %v82, i1 0, i32 1
%v89 = load %struct.plate*, %struct.plate** %v88
br label %LU23


LU25:

ret void 
}
define void @hanoi(i32 %_P_n, i32 %_P_from, i32 %_P_to, i32 %_P_other)
{
LU16:

%v68 = icmp eq i32 %_P_n, 1
br i1 %v68, label %LU18, label %LU20

LU18:

call void @move(i32 %_P_from, i32 %_P_to)
br label %LU19

LU19:

ret void 

LU20:

%v74 = sub i32 %_P_n, 1
call void @hanoi(i32 %v74, i32 %_P_from, i32 %_P_other, i32 %_P_to)
call void @move(i32 %_P_from, i32 %_P_to)
%v77 = sub i32 %_P_n, 1
call void @hanoi(i32 %v77, i32 %_P_other, i32 %_P_to, i32 %_P_from)
br label %LU19

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

