define i32 @main()
{
LU17:


%limit = alloca i32
%a = alloca i32
%v82 = call i32 @readchar()
store i32 %v82, i32* %limit
store i32 0, i32* %a
br label %LU19

LU19:


%v87 = load i32, i32* %a
%v89 = load i32, i32* %limit
%v90 = icmp sle i32 %v87, %v89
br i1 %v90, label %LU20, label %LU21

LU20:


%v95 = load i32, i32* %a
%v93 = call i1 @prime(i32 %v95)
br i1 %v93, label %LU22, label %LU23

LU22:


%v99 = load i32, i32* %a
call void @printl(i32 %v99)
br label %LU23

LU23:


%v101 = load i32, i32* %a
%v102 = add i32 %v101, 1
store i32 %v102, i32* %a
br label %LU19



LU21:


ret i32 0
br label %LU18

LU18:


ret i32 0
br label %LU18
}
define i1 @prime(i32 %_P_a)
{
LU7:


%a = alloca i32
store i32 %_P_a, i32* %a
%max = alloca i32
%divisor = alloca i32
%remainder = alloca i32
%v39 = load i32, i32* %a
%v40 = icmp slt i32 %v39, 2
br i1 %v40, label %LU9, label %LU11

LU9:


ret i1 0
br label %LU8

LU8:


ret i1 0
br label %LU8

LU11:


%v46 = load i32, i32* %a
%v44 = call i32 @isqrt(i32 %v46)
store i32 %v44, i32* %max
store i32 2, i32* %divisor
br label %LU12

LU12:


%v51 = load i32, i32* %divisor
%v53 = load i32, i32* %max
%v54 = icmp sle i32 %v51, %v53
br i1 %v54, label %LU13, label %LU14

LU13:


%v58 = load i32, i32* %a
%v60 = load i32, i32* %a
%v62 = load i32, i32* %divisor
%v63 = sdiv i32 %v60, %v62
%v65 = load i32, i32* %divisor
%v66 = mul i32 %v63, %v65
%v67 = sub i32 %v58, %v66
store i32 %v67, i32* %remainder
%v70 = load i32, i32* %remainder
%v71 = icmp eq i32 %v70, 0
br i1 %v71, label %LU15, label %LU16

LU15:


ret i1 0
br label %LU8


LU16:


%v75 = load i32, i32* %divisor
%v76 = add i32 %v75, 1
store i32 %v76, i32* %divisor
br label %LU12


LU14:


ret i1 1
br label %LU8

}
define i32 @isqrt(i32 %_P_a)
{
LU2:


%a = alloca i32
store i32 %_P_a, i32* %a
%square = alloca i32
%delta = alloca i32
store i32 1, i32* %square
store i32 3, i32* %delta
br label %LU4

LU4:


%v11 = load i32, i32* %square
%v13 = load i32, i32* %a
%v14 = icmp sle i32 %v11, %v13
br i1 %v14, label %LU5, label %LU6

LU5:


%v18 = load i32, i32* %square
%v20 = load i32, i32* %delta
%v21 = add i32 %v18, %v20
store i32 %v21, i32* %square
%v24 = load i32, i32* %delta
%v25 = add i32 %v24, 2
store i32 %v25, i32* %delta
br label %LU4


LU6:


%v28 = load i32, i32* %delta
%v29 = sdiv i32 %v28, 2
%v30 = sub i32 %v29, 1
ret i32 %v30
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

