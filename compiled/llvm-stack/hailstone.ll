define i32 @main()
{
LU14:


%num = alloca i32
%v53 = call i32 @readchar()
store i32 %v53, i32* %num
%v57 = load i32, i32* %num
call void @hailstone(i32 %v57)
ret i32 0
br label %LU15

LU15:


ret i32 0
br label %LU15
}
define void @hailstone(i32 %_P_n)
{
LU4:


%n = alloca i32
store i32 %_P_n, i32* %n
br label %LU6

LU6:


br i1 1, label %LU7, label %LU8

LU7:


%v26 = load i32, i32* %n
call void @print(i32 %v26)
%v29 = load i32, i32* %n
%v27 = call i32 @mod(i32 %v29, i32 2)
%v30 = icmp eq i32 %v27, 1
br i1 %v30, label %LU9, label %LU11

LU9:


%v34 = load i32, i32* %n
%v35 = mul i32 3, %v34
%v36 = add i32 %v35, 1
store i32 %v36, i32* %n
br label %LU10

LU10:


%v44 = load i32, i32* %n
%v45 = icmp sle i32 %v44, 1
br i1 %v45, label %LU12, label %LU13

LU12:


%v49 = load i32, i32* %n
call void @printl(i32 %v49)
ret void
br label %LU5

LU5:


ret void 

LU13:


br label %LU6


LU11:


%v40 = load i32, i32* %n
%v41 = sdiv i32 %v40, 2
store i32 %v41, i32* %n
br label %LU10


LU8:


br label %LU5

}
define i32 @mod(i32 %_P_a, i32 %_P_b)
{
LU2:


%a = alloca i32
store i32 %_P_a, i32* %a
%b = alloca i32
store i32 %_P_b, i32* %b
%v8 = load i32, i32* %a
%v10 = load i32, i32* %a
%v12 = load i32, i32* %b
%v13 = sdiv i32 %v10, %v12
%v15 = load i32, i32* %b
%v16 = mul i32 %v13, %v15
%v17 = sub i32 %v8, %v16
ret i32 %v17
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

