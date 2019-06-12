%struct.IntHolder = type {i32}
@interval = common global i32 0, align 4
@end = common global i32 0, align 4
define i32 @main()
{
LU8:


%start = alloca i32
%countOuter = alloca i32
%countInner = alloca i32
%calc = alloca i32
%tempAnswer = alloca i32
%tempInterval = alloca i32
%x = alloca %struct.IntHolder*
%uselessVar = alloca i1
%uselessVar2 = alloca i1
%v73 = call i8* @malloc(i32 4)
%v74 = bitcast i8* %v73 to %struct.IntHolder*
store %struct.IntHolder* %v74, %struct.IntHolder** %x
store i32 1000000, i32* @end
%v77 = call i32 @readchar()
store i32 %v77, i32* %start
%v79 = call i32 @readchar()
store i32 %v79, i32* @interval
%v82 = load i32, i32* %start
call void @printl(i32 %v82)
%v84 = load i32, i32* @interval
call void @printl(i32 %v84)
store i32 0, i32* %countOuter
store i32 0, i32* %countInner
store i32 0, i32* %calc
br label %LU10

LU10:


%v90 = load i32, i32* %countOuter
%v91 = icmp slt i32 %v90, 50
br i1 %v91, label %LU11, label %LU12

LU11:


store i32 0, i32* %countInner
br label %LU13

LU13:


%v97 = load i32, i32* %countInner
%v99 = load i32, i32* @end
%v100 = icmp sle i32 %v97, %v99
br i1 %v100, label %LU14, label %LU15

LU14:


%v103 = mul i32 1, 2
%v104 = mul i32 %v103, 3
%v105 = mul i32 %v104, 4
%v106 = mul i32 %v105, 5
%v107 = mul i32 %v106, 6
%v108 = mul i32 %v107, 7
%v109 = mul i32 %v108, 8
%v110 = mul i32 %v109, 9
%v111 = mul i32 %v110, 10
%v112 = mul i32 %v111, 11
store i32 %v112, i32* %calc
%v115 = load i32, i32* %countInner
%v116 = add i32 %v115, 1
store i32 %v116, i32* %countInner
%v119 = load i32, i32* %countInner
%v121 = load %struct.IntHolder*, %struct.IntHolder** %x
%v122 = getelementptr %struct.IntHolder, %struct.IntHolder* %v121, i1 0, i32 0
store i32 %v119, i32* %v122
%v124 = load %struct.IntHolder*, %struct.IntHolder** %x
%v125 = getelementptr %struct.IntHolder, %struct.IntHolder* %v124, i1 0, i32 0
%v126 = load i32, i32* %v125
store i32 %v126, i32* %tempAnswer
%v130 = load %struct.IntHolder*, %struct.IntHolder** %x
%v128 = call i32 @multBy4xTimes(%struct.IntHolder* %v130, i32 2)
%v133 = load %struct.IntHolder*, %struct.IntHolder** %x
call void @divideBy8(%struct.IntHolder* %v133)
%v135 = load i32, i32* @interval
%v136 = sub i32 %v135, 1
store i32 %v136, i32* %tempInterval
%v139 = load i32, i32* %tempInterval
%v140 = icmp sle i32 %v139, 0
store i1 %v140, i1* %uselessVar
%v143 = load i32, i32* %tempInterval
%v144 = icmp sle i32 %v143, 0
br i1 %v144, label %LU16, label %LU17

LU16:


store i32 1, i32* %tempInterval
br label %LU17

LU17:


%v149 = load i32, i32* %countInner
%v151 = load i32, i32* %tempInterval
%v152 = add i32 %v149, %v151
store i32 %v152, i32* %countInner
br label %LU13



LU15:


%v155 = load i32, i32* %countOuter
%v156 = add i32 %v155, 1
store i32 %v156, i32* %countOuter
br label %LU10


LU12:


%v159 = load i32, i32* %countInner
call void @printl(i32 %v159)
%v161 = load i32, i32* %calc
call void @printl(i32 %v161)
ret i32 0
br label %LU9

LU9:


ret i32 0
br label %LU9
}
define void @divideBy8(%struct.IntHolder* %_P_num)
{
LU6:


%num = alloca %struct.IntHolder*
store %struct.IntHolder* %_P_num, %struct.IntHolder** %num
%v39 = load %struct.IntHolder*, %struct.IntHolder** %num
%v40 = getelementptr %struct.IntHolder, %struct.IntHolder* %v39, i1 0, i32 0
%v41 = load i32, i32* %v40
%v42 = sdiv i32 %v41, 2
%v44 = load %struct.IntHolder*, %struct.IntHolder** %num
%v45 = getelementptr %struct.IntHolder, %struct.IntHolder* %v44, i1 0, i32 0
store i32 %v42, i32* %v45
%v47 = load %struct.IntHolder*, %struct.IntHolder** %num
%v48 = getelementptr %struct.IntHolder, %struct.IntHolder* %v47, i1 0, i32 0
%v49 = load i32, i32* %v48
%v50 = sdiv i32 %v49, 2
%v52 = load %struct.IntHolder*, %struct.IntHolder** %num
%v53 = getelementptr %struct.IntHolder, %struct.IntHolder* %v52, i1 0, i32 0
store i32 %v50, i32* %v53
%v55 = load %struct.IntHolder*, %struct.IntHolder** %num
%v56 = getelementptr %struct.IntHolder, %struct.IntHolder* %v55, i1 0, i32 0
%v57 = load i32, i32* %v56
%v58 = sdiv i32 %v57, 2
%v60 = load %struct.IntHolder*, %struct.IntHolder** %num
%v61 = getelementptr %struct.IntHolder, %struct.IntHolder* %v60, i1 0, i32 0
store i32 %v58, i32* %v61
br label %LU7

LU7:


ret void 
}
define i32 @multBy4xTimes(%struct.IntHolder* %_P_num, i32 %_P_timesLeft)
{
LU2:


%num = alloca %struct.IntHolder*
store %struct.IntHolder* %_P_num, %struct.IntHolder** %num
%timesLeft = alloca i32
store i32 %_P_timesLeft, i32* %timesLeft
%v8 = load i32, i32* %timesLeft
%v9 = icmp sle i32 %v8, 0
br i1 %v9, label %LU4, label %LU5

LU4:


%v13 = load %struct.IntHolder*, %struct.IntHolder** %num
%v14 = getelementptr %struct.IntHolder, %struct.IntHolder* %v13, i1 0, i32 0
%v15 = load i32, i32* %v14
ret i32 %v15
br label %LU3

LU3:


ret i32 0
br label %LU3

LU5:


%v17 = load %struct.IntHolder*, %struct.IntHolder** %num
%v18 = getelementptr %struct.IntHolder, %struct.IntHolder* %v17, i1 0, i32 0
%v19 = load i32, i32* %v18
%v20 = mul i32 4, %v19
%v22 = load %struct.IntHolder*, %struct.IntHolder** %num
%v23 = getelementptr %struct.IntHolder, %struct.IntHolder* %v22, i1 0, i32 0
store i32 %v20, i32* %v23
%v26 = load %struct.IntHolder*, %struct.IntHolder** %num
%v28 = load i32, i32* %timesLeft
%v29 = sub i32 %v28, 1
%v24 = call i32 @multBy4xTimes(%struct.IntHolder* %v26, i32 %v29)
%v31 = load %struct.IntHolder*, %struct.IntHolder** %num
%v32 = getelementptr %struct.IntHolder, %struct.IntHolder* %v31, i1 0, i32 0
%v33 = load i32, i32* %v32
ret i32 %v33
br label %LU3

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

