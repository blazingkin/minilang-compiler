define i32 @main()
{
LU9:


%num = alloca i32
%v43 = call i32 @readchar()
store i32 %v43, i32* %num
%v47 = load i32, i32* %num
%v45 = call i32 @function(i32 %v47)
call void @printl(i32 0)
ret i32 0
br label %LU10

LU10:


ret i32 0
br label %LU10
}
define i32 @function(i32 %_P_n)
{
LU2:


%n = alloca i32
store i32 %_P_n, i32* %n
%i = alloca i32
%j = alloca i32
%v8 = load i32, i32* %n
%v9 = icmp sle i32 %v8, 0
br i1 %v9, label %LU4, label %LU5

LU4:


ret i32 0
br label %LU3

LU3:


ret i32 0
br label %LU3

LU5:


store i32 0, i32* %i
br label %LU6

LU6:


%v15 = load i32, i32* %i
%v17 = load i32, i32* %n
%v19 = load i32, i32* %n
%v20 = mul i32 %v17, %v19
%v21 = icmp slt i32 %v15, %v20
br i1 %v21, label %LU7, label %LU8

LU7:


%v25 = load i32, i32* %i
%v27 = load i32, i32* %n
%v28 = add i32 %v25, %v27
store i32 %v28, i32* %j
%v31 = load i32, i32* %j
call void @print(i32 %v31)
%v33 = load i32, i32* %i
%v34 = add i32 %v33, 1
store i32 %v34, i32* %i
br label %LU6


LU8:


%v38 = load i32, i32* %n
%v39 = sub i32 %v38, 1
%v36 = call i32 @function(i32 %v39)
ret i32 %v36
br label %LU3

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

