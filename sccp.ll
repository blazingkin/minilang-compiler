@y = common global i32 0, align 4
define i32 @main()
{
LU42:

ret i32 0
br label %LU43

LU43:

ret i32 0
br label %LU43
}
define i32 @blergh()
{
LU37:

%v120 = icmp slt i32 1, 2
br i1 %v120, label %LU39, label %LU41

LU39:

br label %LU40

LU40:
%v124 = phi i32 [ 3, %LU39 ], [ 1, %LU41 ]

ret i32 %v124
br label %LU38

LU38:

ret i32 0
br label %LU38

LU41:

br label %LU40

}
define i32 @flrgrl(i32 %_P_x, i32 %_P_y)
{
LU32:

%v111 = icmp sgt i32 %_P_x, %_P_y
br i1 %v111, label %LU34, label %LU36

LU34:

br label %LU35

LU35:
%v116 = phi i32 [ %v114, %LU34 ], [ 2, %LU36 ]

ret i32 4
br label %LU33

LU33:

ret i32 0
br label %LU33

LU36:

br label %LU35

}
define i32 @quux2(i32 %_P_x, i32 %_P_y)
{
LU27:

%v84 = icmp sgt i32 %_P_x, %_P_y
br i1 %v84, label %LU29, label %LU31

LU29:

br label %LU30

LU30:
%v90 = phi i32 [ 1, %LU29 ], [ 1, %LU31 ]
%v91 = phi i32 [ %v87, %LU29 ], [ 2, %LU31 ]

%v92 = icmp eq i32 1, 2
call void @fbool(i32 %v92)
%v94 = icmp ne i32 1, 2
call void @fbool(i32 %v94)
%v96 = icmp slt i32 1, 2
call void @fbool(i32 %v96)
%v98 = icmp sle i32 1, 2
call void @fbool(i32 %v98)
%v100 = icmp sgt i32 1, 2
call void @fbool(i32 %v100)
%v102 = icmp sge i32 1, 2
call void @fbool(i32 %v102)
%v104 = icmp sge i32 2, 2
call void @fbool(i32 %v104)
%v106 = icmp sle i32 2, 2
call void @fbool(i32 %v106)
ret i32 0
br label %LU28

LU28:

ret i32 0
br label %LU28

LU31:

br label %LU30

}
define i32 @quux(i32 %_P_x, i32 %_P_y)
{
LU22:

%v58 = icmp sgt i32 %_P_x, %_P_y
br i1 %v58, label %LU24, label %LU26

LU24:

br label %LU25

LU25:
%v63 = phi i32 [ 1, %LU24 ], [ 1, %LU26 ]
%v64 = phi i32 [ 2, %LU24 ], [ 2, %LU26 ]

%v65 = icmp eq i32 1, 2
call void @fbool(i32 %v65)
%v67 = icmp ne i32 1, 2
call void @fbool(i32 %v67)
%v69 = icmp slt i32 1, 2
call void @fbool(i32 %v69)
%v71 = icmp sle i32 1, 2
call void @fbool(i32 %v71)
%v73 = icmp sgt i32 1, 2
call void @fbool(i32 %v73)
%v75 = icmp sge i32 1, 2
call void @fbool(i32 %v75)
%v77 = icmp sge i32 2, 2
call void @fbool(i32 %v77)
%v79 = icmp sle i32 2, 2
call void @fbool(i32 %v79)
ret i32 0
br label %LU23

LU23:

ret i32 0
br label %LU23

LU26:

br label %LU25

}
define void @fbool(i32 %_P_b)
{
LU20:

br label %LU21

LU21:

ret void 
}
define i32 @baz(i32 %_P_x, i32 %_P_y)
{
LU9:

%v30 = icmp sgt i32 %_P_x, %_P_y
br i1 %v30, label %LU11, label %LU13

LU11:

br label %LU12

LU12:
%v34 = phi i32 [ 1, %LU11 ], [ 1, %LU13 ]
%v35 = phi i32 [ 0, %LU11 ], [ 0, %LU13 ]

%v37 = trunc i32 1 to i1
br i1 %v37, label %LU14, label %LU16

LU14:

call void @printl(i32 1)
br label %LU15

LU15:
%v41 = phi i32 [ %v34, %LU14 ], [ %v34, %LU16 ]
%v49 = phi i32 [ %v35, %LU14 ], [ %v35, %LU16 ]

%v43 = trunc i32 0 to i1
br i1 %v43, label %LU17, label %LU19

LU17:

call void @printl(i32 3)
br label %LU18

LU18:
%v47 = phi i32 [ %v41, %LU17 ], [ %v41, %LU19 ]
%v48 = phi i32 [ %v49, %LU17 ], [ %v49, %LU19 ]

ret i32 0
br label %LU10

LU10:

ret i32 0
br label %LU10

LU19:

call void @printl(i32 4)
br label %LU18


LU16:

call void @printl(i32 2)
br label %LU15


LU13:

br label %LU12

}
define i32 @bar(i32 %_P_x, i32 %_P_y)
{
LU4:

%v19 = icmp sgt i32 %_P_x, %_P_y
br i1 %v19, label %LU6, label %LU8

LU6:

br label %LU7

LU7:
%v23 = phi i32 [ 2, %LU6 ], [ 2, %LU8 ]
%v24 = phi i32 [ 3, %LU6 ], [ 3, %LU8 ]

ret i32 5
br label %LU5

LU5:

ret i32 0
br label %LU5

LU8:

br label %LU7

}
define void @foo(i32 %_P_x)
{
LU2:

call void @print(i32 96)
call void @print(i32 4)
call void @print(i32 7)
call void @print(i32 28)
%v12 = sdiv i32 4, 0
call void @print(i32 %v12)
%v13 = call i32 @readchar()
%v14 = add i32 %v13, 1
call void @print(i32 %v14)
br label %LU3

LU3:

ret void 
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

