define i32 @main()
{
LU17:

%v39 = call i32 @readchar()
br label %LU19

LU19:
%v41 = phi i32 [ 0, %LU17 ], [ %v50, %LU23 ]
%v42 = phi i32 [ %v39, %LU17 ], [ %v51, %LU23 ]

%v43 = icmp sle i32 %v41, %v42
br i1 %v43, label %LU20, label %LU21

LU20:

%v46 = call i1 @prime(i32 %v41)
br i1 %v46, label %LU22, label %LU23

LU22:

call void @printl(i32 %v41)
br label %LU23

LU23:
%v49 = phi i32 [ %v41, %LU22 ], [ %v41, %LU20 ]
%v51 = phi i32 [ %v42, %LU22 ], [ %v42, %LU20 ]

%v50 = add i32 %v49, 1
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

%v18 = icmp slt i32 %_P_a, 2
br i1 %v18, label %LU9, label %LU11

LU9:

ret i1 0
br label %LU8

LU8:

ret i1 0
br label %LU8

LU11:

%v22 = call i32 @isqrt(i32 %_P_a)
br label %LU12

LU12:
%v24 = phi i32 [ 2, %LU11 ], [ %v36, %LU16 ]
%v25 = phi i32 [ %v22, %LU11 ], [ %v25, %LU16 ]
%v29 = phi i32 [ %_P_a, %LU11 ], [ %v29, %LU16 ]

%v26 = icmp sle i32 %v24, %v25
br i1 %v26, label %LU13, label %LU14

LU13:

%v30 = sdiv i32 %v29, %v24
%v31 = mul i32 %v30, %v24
%v32 = sub i32 %v29, %v31
%v33 = icmp eq i32 %v32, 0
br i1 %v33, label %LU15, label %LU16

LU15:

ret i1 0
br label %LU8


LU16:

%v36 = add i32 %v24, 1
br label %LU12


LU14:

ret i1 1
br label %LU8

}
define i32 @isqrt(i32 %_P_a)
{
LU2:

br label %LU4

LU4:
%v5 = phi i32 [ 1, %LU2 ], [ %v11, %LU5 ]
%v6 = phi i32 [ %_P_a, %LU2 ], [ %v6, %LU5 ]
%v10 = phi i32 [ 3, %LU2 ], [ %v12, %LU5 ]

%v7 = icmp sle i32 %v5, %v6
br i1 %v7, label %LU5, label %LU6

LU5:

%v11 = add i32 %v5, %v10
%v12 = add i32 %v10, 2
br label %LU4


LU6:

%v13 = sdiv i32 %v10, 2
%v14 = sub i32 %v13, 1
ret i32 %v14
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

