%struct.A = type {i32, i32, i32, %struct.A*}
%struct.B = type {%struct.A*}
@i = common global i32 0, align 4
@j = common global i32 0, align 4
@k = common global i32 0, align 4
@b = common global %struct.B* null, align 4
@bb = common global %struct.B* null, align 4
@bbb = common global %struct.B* null, align 4
@bob = common global i32 0, align 4
define i32 @g(i32 %_P_i, %struct.B* %_P_j)
{
LU2:
%i = alloca i32
store i32 %_P_i, i32* %i
%j = alloca %struct.B*
store %struct.B* %_P_j, %struct.B** %j
%g = alloca i32
%m = alloca i32
%k = alloca i32
ret i32 3
br label %LU3

LU3:
ret i32 0
br label %LU3
}
define i32 @foo(i32 %_P_n)
{
LU4:
%n = alloca i32
store i32 %_P_n, i32* %n
%v15 = load i32, i32* %n
%v16 = icmp sle i32 %v15, 0
br i1 %v16, label %LU6, label %LU8

LU6:
ret i32 1
br label %LU5

LU5:
ret i32 0
br label %LU5

LU8:
%v21 = load i32, i32* %n
%v24 = load i32, i32* %n
%v25 = sub i32 %v24, 1
%v22 = call i32 @foo(i32 %v25)
%v26 = mul i32 %v21, %v22
ret i32 %v26
br label %LU5

}
define %struct.A* @f(i32 %_P_i, %struct.B* %_P_j)
{
LU9:
%i = alloca i32
store i32 %_P_i, i32* %i
%j = alloca %struct.B*
store %struct.B* %_P_j, %struct.B** %j
%f = alloca i32
%l = alloca i32
%k = alloca i32
%v37 = load %struct.B*, %struct.B** @b
%v38 = getelementptr %struct.B, %struct.B* %v37, i1 0, i32 0
%v39 = load %struct.A*, %struct.A** %v38
%v40 = getelementptr %struct.A, %struct.A* %v39, i1 0, i32 3
%v41 = load %struct.A*, %struct.A** %v40
%v42 = getelementptr %struct.A, %struct.A* %v41, i1 0, i32 3
%v43 = load %struct.A*, %struct.A** %v42
%v44 = getelementptr %struct.A, %struct.A* %v43, i1 0, i32 0
store i32 7, i32* %v44
%v46 = load %struct.B*, %struct.B** @b
%v47 = getelementptr %struct.B, %struct.B* %v46, i1 0, i32 0
%v48 = load %struct.A*, %struct.A** %v47
%v49 = getelementptr %struct.A, %struct.A* %v48, i1 0, i32 3
%v50 = load %struct.A*, %struct.A** %v49
%v51 = getelementptr %struct.A, %struct.A* %v50, i1 0, i32 3
%v52 = load %struct.A*, %struct.A** %v51
%v53 = getelementptr %struct.A, %struct.A* %v52, i1 0, i32 3
%v54 = load %struct.A*, %struct.A** %v53
ret %struct.A* %v54
br label %LU10

LU10:
ret %struct.A* null
br label %LU10
}
define void @bar(%struct.B* %_P_j, i32 %_P_i)
{
LU11:
%j = alloca %struct.B*
store %struct.B* %_P_j, %struct.B** %j
%i = alloca i32
store i32 %_P_i, i32* %i
br label %LU12

LU12:
ret void 
}
define i32 @main()
{
LU13:
%a = alloca %struct.A*
%i = alloca i32
%j = alloca i32
%k = alloca i32
%b = alloca i32
%h = alloca i32
store i32 2, i32* %i
%v71 = load i32, i32* %i
%v72 = call i32 @g(i32 1, %struct.B* null)
%v73 = icmp slt i32 %v71, %v72
br i1 %v73, label %LU15, label %LU16

LU15:
call void @print(i32 1)
br label %LU16

LU16:
%v77 = load i32, i32* %i
%v78 = call i32 @g(i32 1, %struct.B* null)
%v79 = icmp sgt i32 %v77, %v78
br i1 %v79, label %LU17, label %LU19

LU17:
call void @print(i32 1)
br label %LU18

LU18:
br label %LU20

LU20:
br i1 1, label %LU21, label %LU22

LU21:
call void @print(i32 7)
br label %LU20


LU22:
%v88 = call i8* @malloc(i32 4)
%v89 = bitcast i8* %v88 to %struct.B*
%v87 = call i32 @g(i32 1, %struct.B* %v89)
%v90 = call i8* @malloc(i32 4)
%v91 = bitcast i8* %v90 to %struct.B*
%v86 = call %struct.A* @f(i32 %v87, %struct.B* %v91)
call void @print(i32 1)
%v93 = call i8* @malloc(i32 4)
%v94 = bitcast i8* %v93 to %struct.B*
%v96 = call i8* @malloc(i32 4)
%v97 = bitcast i8* %v96 to %struct.B*
%v95 = call i32 @g(i32 1, %struct.B* %v97)
call void @bar(%struct.B* %v94, i32 %v95)
call void @print(i32 2)
%v100 = call i8* @malloc(i32 4)
%v101 = bitcast i8* %v100 to %struct.B*
%v99 = call i32 @g(i32 1, %struct.B* %v101)
%v102 = call i8* @malloc(i32 4)
%v103 = bitcast i8* %v102 to %struct.B*
%v98 = call %struct.A* @f(i32 %v99, %struct.B* %v103)
%v104 = getelementptr %struct.A, %struct.A* %v98, i1 0, i32 0
%v105 = load i32, i32* %v104
call void @printl(i32 %v105)
ret i32 0
br label %LU14

LU14:
ret i32 0
br label %LU14

LU19:
call void @printl(i32 3)
br label %LU18


}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

