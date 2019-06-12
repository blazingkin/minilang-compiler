@GLOBAL = common global i32 0, align 4
@count = common global i32 0, align 4
define i32 @main()
{
LU14:


%i = alloca i32
store i32 0, i32* %i
%v76 = call i32 @readchar()
store i32 %v76, i32* %i
br label %LU16

LU16:


%v80 = load i32, i32* %i
%v81 = icmp slt i32 %v80, 10000
br i1 %v81, label %LU17, label %LU18

LU17:


%v86 = load i32, i32* %i
%v84 = call i32 @fun1(i32 3, i32 %v86, i32 5)
call void @printl(i32 %v84)
%v88 = load i32, i32* %i
%v89 = add i32 %v88, 1
store i32 %v89, i32* %i
br label %LU16


LU18:


ret i32 0
br label %LU15

LU15:


ret i32 0
br label %LU15
}
define i32 @fun1(i32 %_P_x, i32 %_P_y, i32 %_P_z)
{
LU7:


%x = alloca i32
store i32 %_P_x, i32* %x
%y = alloca i32
store i32 %_P_y, i32* %y
%z = alloca i32
store i32 %_P_z, i32* %z
%retVal = alloca i32
%v30 = add i32 5, 6
%v32 = load i32, i32* %x
%v33 = mul i32 %v32, 2
%v34 = sub i32 %v30, %v33
%v36 = load i32, i32* %y
%v37 = sdiv i32 4, %v36
%v38 = add i32 %v34, %v37
%v40 = load i32, i32* %z
%v41 = add i32 %v38, %v40
store i32 %v41, i32* %retVal
%v44 = load i32, i32* %retVal
%v46 = load i32, i32* %y
%v47 = icmp sgt i32 %v44, %v46
br i1 %v47, label %LU9, label %LU11

LU9:


%v52 = load i32, i32* %retVal
%v54 = load i32, i32* %x
%v50 = call i32 @fun2(i32 %v52, i32 %v54)
ret i32 %v50
br label %LU8

LU8:


ret i32 0
br label %LU8

LU11:


%v56 = icmp slt i32 5, 6
%v58 = load i32, i32* %retVal
%v60 = load i32, i32* %y
%v61 = icmp sle i32 %v58, %v60
%v62 = and i1 %v56, %v61
br i1 %v62, label %LU12, label %LU13

LU12:


%v67 = load i32, i32* %retVal
%v69 = load i32, i32* %y
%v65 = call i32 @fun2(i32 %v67, i32 %v69)
ret i32 %v65
br label %LU8


LU13:


br label %LU10

LU10:


%v71 = load i32, i32* %retVal
ret i32 %v71
br label %LU8

}
define i32 @fun2(i32 %_P_x, i32 %_P_y)
{
LU2:


%x = alloca i32
store i32 %_P_x, i32* %x
%y = alloca i32
store i32 %_P_y, i32* %y
%v8 = load i32, i32* %x
%v9 = icmp eq i32 %v8, 0
br i1 %v9, label %LU4, label %LU6

LU4:


%v13 = load i32, i32* %y
ret i32 %v13
br label %LU3

LU3:


ret i32 0
br label %LU3

LU6:


%v17 = load i32, i32* %x
%v18 = sub i32 %v17, 1
%v20 = load i32, i32* %y
%v15 = call i32 @fun2(i32 %v18, i32 %v20)
ret i32 %v15
br label %LU3

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

