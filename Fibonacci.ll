define i32 @computeFib(i32 %_P_input)
{
LU2:
%input = alloca i32
store i32 %_P_input, i32* %input
%v6 = load i32, i32* %input
%v7 = icmp eq i32 %v6, 0
br i1 %v7, label %LU4, label %LU6

LU4:
ret i32 0
br label %LU3

LU3:
ret i32 0
br label %LU3

LU6:
%v12 = load i32, i32* %input
%v13 = icmp sle i32 %v12, 2
br i1 %v13, label %LU7, label %LU9

LU7:
ret i32 1
br label %LU3


LU9:
%v19 = load i32, i32* %input
%v20 = sub i32 %v19, 1
%v17 = call i32 @computeFib(i32 %v20)
%v23 = load i32, i32* %input
%v24 = sub i32 %v23, 2
%v21 = call i32 @computeFib(i32 %v24)
%v25 = add i32 %v17, %v21
ret i32 %v25
br label %LU3

}
define i32 @main()
{
LU10:
%input = alloca i32
%v29 = call i32 @readchar()
store i32 %v29, i32* %input
%v33 = load i32, i32* %input
%v31 = call i32 @computeFib(i32 %v33)
call void @printl(i32 %v31)
ret i32 0
br label %LU11

LU11:
ret i32 0
br label %LU11
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

