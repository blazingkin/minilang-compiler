%struct.Power = type {i32, i32}
define i32 @main()
{
LU7:


%power = alloca %struct.Power*
%input = alloca i32
%result = alloca i32
%exp = alloca i32
%i = alloca i32
store i32 0, i32* %result
%v35 = call i8* @malloc(i32 8)
%v36 = bitcast i8* %v35 to %struct.Power*
store %struct.Power* %v36, %struct.Power** %power
%v38 = call i32 @readchar()
store i32 %v38, i32* %input
%v41 = load i32, i32* %input
%v43 = load %struct.Power*, %struct.Power** %power
%v44 = getelementptr %struct.Power, %struct.Power* %v43, i1 0, i32 0
store i32 %v41, i32* %v44
%v45 = call i32 @readchar()
store i32 %v45, i32* %input
%v48 = load i32, i32* %input
%v49 = icmp slt i32 %v48, 0
br i1 %v49, label %LU9, label %LU10

LU9:


ret i32 -1
br label %LU8

LU8:


ret i32 0
br label %LU8

LU10:


%v53 = load i32, i32* %input
%v55 = load %struct.Power*, %struct.Power** %power
%v56 = getelementptr %struct.Power, %struct.Power* %v55, i1 0, i32 1
store i32 %v53, i32* %v56
store i32 0, i32* %i
br label %LU11

LU11:


%v60 = load i32, i32* %i
%v61 = icmp slt i32 %v60, 1000000
br i1 %v61, label %LU12, label %LU13

LU12:


%v65 = load i32, i32* %i
%v66 = add i32 %v65, 1
store i32 %v66, i32* %i
%v70 = load %struct.Power*, %struct.Power** %power
%v71 = getelementptr %struct.Power, %struct.Power* %v70, i1 0, i32 0
%v72 = load i32, i32* %v71
%v74 = load %struct.Power*, %struct.Power** %power
%v75 = getelementptr %struct.Power, %struct.Power* %v74, i1 0, i32 1
%v76 = load i32, i32* %v75
%v68 = call i32 @calcPower(i32 %v72, i32 %v76)
store i32 %v68, i32* %result
br label %LU11


LU13:


%v79 = load i32, i32* %result
call void @printl(i32 %v79)
ret i32 1
br label %LU8

}
define i32 @calcPower(i32 %_P_base, i32 %_P_exp)
{
LU2:


%base = alloca i32
store i32 %_P_base, i32* %base
%exp = alloca i32
store i32 %_P_exp, i32* %exp
%result = alloca i32
store i32 1, i32* %result
br label %LU4

LU4:


%v11 = load i32, i32* %exp
%v12 = icmp sgt i32 %v11, 0
br i1 %v12, label %LU5, label %LU6

LU5:


%v16 = load i32, i32* %result
%v18 = load i32, i32* %base
%v19 = mul i32 %v16, %v18
store i32 %v19, i32* %result
%v22 = load i32, i32* %exp
%v23 = sub i32 %v22, 1
store i32 %v23, i32* %exp
br label %LU4


LU6:


%v26 = load i32, i32* %result
ret i32 %v26
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

