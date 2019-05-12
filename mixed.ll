%struct.simple = type {i32}
%struct.foo = type {i32, i32, %struct.simple*}
@globalfoo = common global %struct.foo* null, align 4
define void @tailrecursive(i32 %_P_num)
{
LU2:

%v4 = icmp sle i32 %_P_num, 0
br i1 %v4, label %LU4, label %LU5

LU4:

ret void
br label %LU3

LU3:

ret void 

LU5:

%v8 = sub i32 %_P_num, 1
call void @tailrecursive(i32 %v8)
br label %LU3

}
define i32 @add(i32 %_P_x, i32 %_P_y)
{
LU6:

%v13 = add i32 %_P_x, %_P_y
ret i32 %v13
br label %LU7

LU7:

ret i32 0
br label %LU7
}
define void @domath(i32 %_P_num)
{
LU8:

%v17 = call i8* @malloc(i32 12)
%v18 = bitcast i8* %v17 to %struct.foo*
%v19 = call i8* @malloc(i32 4)
%v20 = bitcast i8* %v19 to %struct.simple*
%v21 = getelementptr %struct.foo, %struct.foo* %v18, i1 0, i32 2
store %struct.simple* %v20, %struct.simple** %v21
%v22 = call i8* @malloc(i32 12)
%v23 = bitcast i8* %v22 to %struct.foo*
%v24 = call i8* @malloc(i32 4)
%v25 = bitcast i8* %v24 to %struct.simple*
%v26 = getelementptr %struct.foo, %struct.foo* %v23, i1 0, i32 2
store %struct.simple* %v25, %struct.simple** %v26
%v27 = getelementptr %struct.foo, %struct.foo* %v18, i1 0, i32 0
store i32 %_P_num, i32* %v27
%v28 = getelementptr %struct.foo, %struct.foo* %v23, i1 0, i32 0
store i32 3, i32* %v28
%v29 = getelementptr %struct.foo, %struct.foo* %v18, i1 0, i32 0
%v30 = load i32, i32* %v29
%v31 = getelementptr %struct.foo, %struct.foo* %v18, i1 0, i32 2
%v32 = load %struct.simple*, %struct.simple** %v31
%v33 = getelementptr %struct.simple, %struct.simple* %v32, i1 0, i32 0
store i32 %v30, i32* %v33
%v34 = getelementptr %struct.foo, %struct.foo* %v23, i1 0, i32 0
%v35 = load i32, i32* %v34
%v36 = getelementptr %struct.foo, %struct.foo* %v23, i1 0, i32 2
%v37 = load %struct.simple*, %struct.simple** %v36
%v38 = getelementptr %struct.simple, %struct.simple* %v37, i1 0, i32 0
store i32 %v35, i32* %v38
br label %LU10

LU10:
%v40 = phi i32 [ %_P_num, %LU8 ], [ %v71, %LU11 ]
%v44 = phi %struct.foo* [ %v18, %LU8 ], [ %v44, %LU11 ]
%v47 = phi %struct.foo* [ %v23, %LU8 ], [ %v47, %LU11 ]

%v41 = icmp sgt i32 %v40, 0
br i1 %v41, label %LU11, label %LU12

LU11:

%v45 = getelementptr %struct.foo, %struct.foo* %v44, i1 0, i32 0
%v46 = load i32, i32* %v45
%v48 = getelementptr %struct.foo, %struct.foo* %v47, i1 0, i32 0
%v49 = load i32, i32* %v48
%v50 = mul i32 %v46, %v49
%v51 = getelementptr %struct.foo, %struct.foo* %v44, i1 0, i32 2
%v52 = load %struct.simple*, %struct.simple** %v51
%v53 = getelementptr %struct.simple, %struct.simple* %v52, i1 0, i32 0
%v54 = load i32, i32* %v53
%v55 = mul i32 %v50, %v54
%v56 = getelementptr %struct.foo, %struct.foo* %v47, i1 0, i32 0
%v57 = load i32, i32* %v56
%v58 = sdiv i32 %v55, %v57
%v60 = getelementptr %struct.foo, %struct.foo* %v47, i1 0, i32 2
%v61 = load %struct.simple*, %struct.simple** %v60
%v62 = getelementptr %struct.simple, %struct.simple* %v61, i1 0, i32 0
%v63 = load i32, i32* %v62
%v64 = getelementptr %struct.foo, %struct.foo* %v44, i1 0, i32 0
%v65 = load i32, i32* %v64
%v59 = call i32 @add(i32 %v63, i32 %v65)
%v66 = getelementptr %struct.foo, %struct.foo* %v47, i1 0, i32 0
%v67 = load i32, i32* %v66
%v68 = getelementptr %struct.foo, %struct.foo* %v44, i1 0, i32 0
%v69 = load i32, i32* %v68
%v70 = sub i32 %v67, %v69
%v71 = sub i32 %v40, 1
br label %LU10


LU12:

%v72 = bitcast %struct.foo* %v44 to i8*
call void @free(i8* %v72)
%v73 = bitcast %struct.foo* %v47 to i8*
call void @free(i8* %v73)
br label %LU9

LU9:

ret void 
}
define void @objinstantiation(i32 %_P_num)
{
LU13:

br label %LU15

LU15:
%v78 = phi i32 [ %_P_num, %LU13 ], [ %v85, %LU16 ]

%v79 = icmp sgt i32 %v78, 0
br i1 %v79, label %LU16, label %LU17

LU16:

%v82 = call i8* @malloc(i32 12)
%v83 = bitcast i8* %v82 to %struct.foo*
%v84 = bitcast %struct.foo* %v83 to i8*
call void @free(i8* %v84)
%v85 = sub i32 %v78, 1
br label %LU15


LU17:

br label %LU14

LU14:

ret void 
}
define i32 @ackermann(i32 %_P_m, i32 %_P_n)
{
LU18:

%v90 = icmp eq i32 %_P_m, 0
br i1 %v90, label %LU20, label %LU21

LU20:

%v93 = add i32 %_P_n, 1
ret i32 %v93
br label %LU19

LU19:

ret i32 0
br label %LU19

LU21:

%v94 = icmp eq i32 %_P_n, 0
br i1 %v94, label %LU22, label %LU24

LU22:

%v98 = sub i32 %_P_m, 1
%v97 = call i32 @ackermann(i32 %v98, i32 1)
ret i32 %v97
br label %LU19


LU24:

%v101 = sub i32 %_P_m, 1
%v103 = sub i32 %_P_n, 1
%v102 = call i32 @ackermann(i32 %_P_m, i32 %v103)
%v100 = call i32 @ackermann(i32 %v101, i32 %v102)
ret i32 %v100
br label %LU19

}
define i32 @main()
{
LU25:

%v106 = call i32 @readchar()
%v107 = call i32 @readchar()
%v108 = call i32 @readchar()
%v109 = call i32 @readchar()
%v110 = call i32 @readchar()
call void @tailrecursive(i32 %v106)
call void @printl(i32 %v106)
call void @domath(i32 %v107)
call void @printl(i32 %v107)
call void @objinstantiation(i32 %v108)
call void @printl(i32 %v108)
%v114 = call i32 @ackermann(i32 %v109, i32 %v110)
call void @printl(i32 %v114)
ret i32 0
br label %LU26

LU26:

ret i32 0
br label %LU26
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

