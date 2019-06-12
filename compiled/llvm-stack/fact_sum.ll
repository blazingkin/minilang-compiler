define i32 @main()
{
LU10:


%num1 = alloca i32
%num2 = alloca i32
%flag = alloca i32
store i32 0, i32* %flag
br label %LU12

LU12:


%v53 = load i32, i32* %flag
%v54 = icmp ne i32 %v53, -1
br i1 %v54, label %LU13, label %LU14

LU13:


%v57 = call i32 @readchar()
store i32 %v57, i32* %num1
%v59 = call i32 @readchar()
store i32 %v59, i32* %num2
%v63 = load i32, i32* %num1
%v61 = call i32 @fact(i32 %v63)
store i32 %v61, i32* %num1
%v67 = load i32, i32* %num2
%v65 = call i32 @fact(i32 %v67)
store i32 %v65, i32* %num2
%v71 = load i32, i32* %num1
%v73 = load i32, i32* %num2
%v69 = call i32 @sum(i32 %v71, i32 %v73)
call void @printl(i32 %v69)
%v74 = call i32 @readchar()
store i32 %v74, i32* %flag
br label %LU12


LU14:


ret i32 0
br label %LU11

LU11:


ret i32 0
br label %LU11
}
define i32 @fact(i32 %_P_n)
{
LU4:


%n = alloca i32
store i32 %_P_n, i32* %n
%t = alloca i32
%v18 = load i32, i32* %n
%v19 = icmp eq i32 %v18, 1
%v21 = load i32, i32* %n
%v22 = icmp eq i32 %v21, 0
%v23 = or i1 %v19, %v22
br i1 %v23, label %LU6, label %LU7

LU6:


ret i32 1
br label %LU5

LU5:


ret i32 0
br label %LU5

LU7:


%v27 = load i32, i32* %n
%v28 = icmp sle i32 %v27, 1
br i1 %v28, label %LU8, label %LU9

LU8:


%v33 = load i32, i32* %n
%v34 = mul i32 -1, %v33
%v31 = call i32 @fact(i32 %v34)
ret i32 %v31
br label %LU5


LU9:


%v36 = load i32, i32* %n
%v39 = load i32, i32* %n
%v40 = sub i32 %v39, 1
%v37 = call i32 @fact(i32 %v40)
%v41 = mul i32 %v36, %v37
store i32 %v41, i32* %t
%v44 = load i32, i32* %t
ret i32 %v44
br label %LU5

}
define i32 @sum(i32 %_P_a, i32 %_P_b)
{
LU2:


%a = alloca i32
store i32 %_P_a, i32* %a
%b = alloca i32
store i32 %_P_b, i32* %b
%v8 = load i32, i32* %a
%v10 = load i32, i32* %b
%v11 = add i32 %v8, %v10
ret i32 %v11
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

