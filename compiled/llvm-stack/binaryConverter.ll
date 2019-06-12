define i32 @main()
{
LU20:


%number = alloca i32
%waitTime = alloca i32
%v116 = call i32 @readchar()
store i32 %v116, i32* %number
%v120 = load i32, i32* %number
%v118 = call i32 @convertToDecimal(i32 %v120)
store i32 %v118, i32* %number
%v123 = load i32, i32* %number
%v125 = load i32, i32* %number
%v126 = mul i32 %v123, %v125
store i32 %v126, i32* %waitTime
br label %LU22

LU22:


%v130 = load i32, i32* %waitTime
%v131 = icmp sgt i32 %v130, 0
br i1 %v131, label %LU23, label %LU24

LU23:


%v136 = load i32, i32* %waitTime
%v134 = call i32 @wait(i32 %v136)
%v138 = load i32, i32* %waitTime
%v139 = sub i32 %v138, 1
store i32 %v139, i32* %waitTime
br label %LU22


LU24:


%v142 = load i32, i32* %number
call void @printl(i32 %v142)
ret i32 0
br label %LU21

LU21:


ret i32 0
br label %LU21
}
define i32 @convertToDecimal(i32 %_P_binaryNum)
{
LU18:


%binaryNum = alloca i32
store i32 %_P_binaryNum, i32* %binaryNum
%recursiveDepth = alloca i32
%decimalSum = alloca i32
store i32 0, i32* %recursiveDepth
store i32 0, i32* %decimalSum
%v107 = load i32, i32* %binaryNum
%v109 = load i32, i32* %decimalSum
%v111 = load i32, i32* %recursiveDepth
%v105 = call i32 @recursiveDecimalSum(i32 %v107, i32 %v109, i32 %v111)
ret i32 %v105
br label %LU19

LU19:


ret i32 0
br label %LU19
}
define i32 @recursiveDecimalSum(i32 %_P_binaryNum, i32 %_P_decimalSum, i32 %_P_recursiveDepth)
{
LU12:


%binaryNum = alloca i32
store i32 %_P_binaryNum, i32* %binaryNum
%decimalSum = alloca i32
store i32 %_P_decimalSum, i32* %decimalSum
%recursiveDepth = alloca i32
store i32 %_P_recursiveDepth, i32* %recursiveDepth
%tempNum = alloca i32
%base = alloca i32
%remainder = alloca i32
%v53 = load i32, i32* %binaryNum
%v54 = icmp sgt i32 %v53, 0
br i1 %v54, label %LU14, label %LU15

LU14:


store i32 2, i32* %base
%v59 = load i32, i32* %binaryNum
%v60 = sdiv i32 %v59, 10
store i32 %v60, i32* %tempNum
%v63 = load i32, i32* %tempNum
%v64 = mul i32 %v63, 10
store i32 %v64, i32* %tempNum
%v67 = load i32, i32* %binaryNum
%v69 = load i32, i32* %tempNum
%v70 = sub i32 %v67, %v69
store i32 %v70, i32* %tempNum
%v73 = load i32, i32* %tempNum
%v74 = icmp eq i32 %v73, 1
br i1 %v74, label %LU16, label %LU17

LU16:


%v78 = load i32, i32* %decimalSum
%v81 = load i32, i32* %base
%v83 = load i32, i32* %recursiveDepth
%v79 = call i32 @power(i32 %v81, i32 %v83)
%v84 = add i32 %v78, %v79
store i32 %v84, i32* %decimalSum
br label %LU17

LU17:


%v88 = load i32, i32* %binaryNum
%v89 = sdiv i32 %v88, 10
%v91 = load i32, i32* %decimalSum
%v93 = load i32, i32* %recursiveDepth
%v94 = add i32 %v93, 1
%v86 = call i32 @recursiveDecimalSum(i32 %v89, i32 %v91, i32 %v94)
ret i32 %v86
br label %LU13

LU13:


ret i32 0
br label %LU13


LU15:


%v96 = load i32, i32* %decimalSum
ret i32 %v96
br label %LU13

}
define i32 @power(i32 %_P_base, i32 %_P_exponent)
{
LU7:


%base = alloca i32
store i32 %_P_base, i32* %base
%exponent = alloca i32
store i32 %_P_exponent, i32* %exponent
%product = alloca i32
store i32 1, i32* %product
br label %LU9

LU9:


%v25 = load i32, i32* %exponent
%v26 = icmp sgt i32 %v25, 0
br i1 %v26, label %LU10, label %LU11

LU10:


%v30 = load i32, i32* %product
%v32 = load i32, i32* %base
%v33 = mul i32 %v30, %v32
store i32 %v33, i32* %product
%v36 = load i32, i32* %exponent
%v37 = sub i32 %v36, 1
store i32 %v37, i32* %exponent
br label %LU9


LU11:


%v40 = load i32, i32* %product
ret i32 %v40
br label %LU8

LU8:


ret i32 0
br label %LU8
}
define i32 @wait(i32 %_P_waitTime)
{
LU2:


%waitTime = alloca i32
store i32 %_P_waitTime, i32* %waitTime
br label %LU4

LU4:


%v7 = load i32, i32* %waitTime
%v8 = icmp sgt i32 %v7, 0
br i1 %v8, label %LU5, label %LU6

LU5:


%v12 = load i32, i32* %waitTime
%v13 = sub i32 %v12, 1
store i32 %v13, i32* %waitTime
br label %LU4


LU6:


ret i32 0
br label %LU3

LU3:


ret i32 0
br label %LU3
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

