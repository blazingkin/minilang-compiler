%struct.A = type {i32, i32, i32, %struct.A*}
%struct.B = type {%struct.A*}
@i = common global i32 null, align 4
@j = common global i32 null, align 4
@k = common global i32 null, align 4
@b = common global %struct.B* null, align 4
@bb = common global %struct.B* null, align 4
@bbb = common global %struct.B* null, align 4
@bob = common global i32 null, align 4
define %struct.A* @f(%_P_i, %_P_j)
{
; <label>:2:
%i = alloca i32
store i32 %_P_i, i32* %i
%j = alloca %struct.B*
store %struct.B* %_P_j, %struct.B** %j
%f = alloca i32
%l = alloca i32
%10 = load i32* %l
%12 = load i32* @k
%13 = add i32 %10, %12
%14 = zext i1 %13 to i32
store i32 %14, i32* @k
%17 = getelementptr %struct.A** %j, i1 0, i32 0
%18 = getelementptr i32* %17, i1 0, i32 0
store int 3, int* %18
%20 = load %struct.B** @b
%21 = getelementptr %struct.A** %20, i1 0, i32 0
%22 = load %struct.A** %21
%23 = getelementptr %struct.A** %22, i1 0, i32 3
%24 = load %struct.A** %23
%25 = getelementptr %struct.A** %24, i1 0, i32 3
%26 = load %struct.A** %25
%27 = getelementptr %struct.A** %26, i1 0, i32 3
%28 = load %struct.A** %27
ret %struct.A* %28
br label %3

; <label>:3:
}
define i32 @foo(%_P_n)
{
; <label>:4:
%n = alloca i32
store i32 %_P_n, i32* %n
%34 = load i32* %n
%35 = icmp sle i32 %34, 0
br i1 %35, label %6, label %8

; <label>:6:
ret i32 1
br label %5

; <label>:5:

; <label>:8:
%40 = load i32* %n
%41 = call i32 foo()
%42 = mul i32 %40, %41
%43 = zext i1 %42 to i32
ret i32 %43
br label %5

}
define i32 @g(%_P_i, %_P_j)
{
; <label>:9:
%i = alloca i32
store i32 %_P_i, i32* %i
%j = alloca %struct.B*
store %struct.B* %_P_j, %struct.B** %j
%g = alloca i32
%m = alloca i32
%k = alloca i32
ret i32 3
br label %10

; <label>:10:
}
define i32 @main()
{
; <label>:11:
%a = alloca %struct.A*
%i = alloca i32
%j = alloca i32
%k = alloca i32
%b = alloca i32
%h = alloca i32
%61 = call i8* @malloc(i32 16)
%62 = bitcast i8* %61 to %struct.A*
store %struct.A* %62, %struct.A** %a
store i32 2, i32* %i
%66 = load i32* %i
%67 = call i32 g(i32 1)
%68 = icmp slt i32 %66, %67
br i1 %68, label %13, label %14

; <label>:13:
%71 = call void @print(i32 1)
br label %14

; <label>:14:
%73 = load i32* %i
%74 = call i32 g(i32 1)
%75 = icmp sgt i32 %73, %74
br i1 %75, label %15, label %17

; <label>:15:
%78 = call void @print(i32 1)
br label %16

; <label>:16:
br label %18

; <label>:18:
br i1 1, label %19, label %20

; <label>:19:
%84 = call void @print(i32 7)
br label %18


; <label>:20:
%86 = call i32 g(i32 1)
%85 = call %struct.A* f(i32 %86)
%88 = call i32 g(i32 1)
%87 = call %struct.A* f(i32 %88)
%89 = getelementptr i32* %87, i1 0, i32 0
%90 = load i32* %89
%91 = call void @print(i32 %90)
ret i32 0
br label %12

; <label>:12:

; <label>:17:
%80 = call void @print(i32 3)
br label %16


}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare i32 @read_char()