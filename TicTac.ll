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
