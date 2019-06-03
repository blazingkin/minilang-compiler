@y = common global i32 0, align 4
define void @simple()
{
LU49:

br label %LU52

LU52:

call void @printl(i32 2)
ret void 
}
define i32 @main()
{
LU47:

ret i32 0
br label %LU48

LU48:

ret i32 0
br label %LU48
}
define i32 @blergh()
{
LU42:

%v124 = icmp slt i32 1, 2
br i1 %v124, label %LU44, label %LU46

LU44:

br label %LU45

LU45:
%v128 = phi i32 [ 3, %LU44 ], [ 1, %LU46 ]

ret i32 %v128
br label %LU43

LU43:

ret i32 0
br label %LU43

LU46:

br label %LU45

}
define i32 @flrgrl(i32 %_P_x, i32 %_P_y)
{
LU37:

%v115 = icmp sgt i32 %_P_x, %_P_y
br i1 %v115, label %LU39, label %LU41

LU39:

%v118 = add i32 1, 1
br label %LU40

LU40:
%v120 = phi i32 [ %v118, %LU39 ], [ 2, %LU41 ]

%v121 = add i32 %v120, %v120
ret i32 %v121
br label %LU38

LU38:

ret i32 0
br label %LU38

LU41:

br label %LU40

}
define i1 @quux2(i32 %_P_x, i32 %_P_y)
{
LU32:

%v88 = icmp sgt i32 %_P_x, %_P_y
br i1 %v88, label %LU34, label %LU36

LU34:

%v91 = add i32 1, 1
br label %LU35

LU35:
%v94 = phi i32 [ 1, %LU34 ], [ 1, %LU36 ]
%v95 = phi i32 [ %v91, %LU34 ], [ 2, %LU36 ]

%v96 = icmp eq i32 %v94, %v95
call void @fbool(i1 %v96)
%v98 = icmp ne i32 %v94, %v95
call void @fbool(i1 %v98)
%v100 = icmp slt i32 %v94, %v95
call void @fbool(i1 %v100)
%v102 = icmp sle i32 %v94, %v95
call void @fbool(i1 %v102)
%v104 = icmp sgt i32 %v94, %v95
call void @fbool(i1 %v104)
%v106 = icmp sge i32 %v94, %v95
call void @fbool(i1 %v106)
%v108 = icmp sge i32 2, 2
call void @fbool(i1 %v108)
%v110 = icmp sle i32 2, 2
call void @fbool(i1 %v110)
ret i1 0
br label %LU33

LU33:

ret i1 0
br label %LU33

LU36:

br label %LU35

}
define i1 @quux(i32 %_P_x, i32 %_P_y)
{
LU27:

%v62 = icmp sgt i32 %_P_x, %_P_y
br i1 %v62, label %LU29, label %LU31

LU29:

br label %LU30

LU30:
%v67 = phi i32 [ 1, %LU29 ], [ 1, %LU31 ]
%v68 = phi i32 [ 2, %LU29 ], [ 2, %LU31 ]

%v69 = icmp eq i32 %v67, %v68
call void @fbool(i1 %v69)
%v71 = icmp ne i32 %v67, %v68
call void @fbool(i1 %v71)
%v73 = icmp slt i32 %v67, %v68
call void @fbool(i1 %v73)
%v75 = icmp sle i32 %v67, %v68
call void @fbool(i1 %v75)
%v77 = icmp sgt i32 %v67, %v68
call void @fbool(i1 %v77)
%v79 = icmp sge i32 %v67, %v68
call void @fbool(i1 %v79)
%v81 = icmp sge i32 2, 2
call void @fbool(i1 %v81)
%v83 = icmp sle i32 2, 2
call void @fbool(i1 %v83)
ret i1 0
br label %LU28

LU28:

ret i1 0
br label %LU28

LU31:

br label %LU30

}
define void @fbool(i1 %_P_b)
{
LU25:

ret void 
}
define i1 @baz(i32 %_P_x, i32 %_P_y)
{
LU14:

%v36 = icmp sgt i32 %_P_x, %_P_y
br i1 %v36, label %LU16, label %LU18

LU16:

br label %LU17

LU17:
%v40 = phi i1 [ 1, %LU16 ], [ 1, %LU18 ]
%v41 = phi i1 [ 0, %LU16 ], [ 0, %LU18 ]

%v42 = or i1 %v40, %v41
br i1 %v42, label %LU19, label %LU21

LU19:

call void @printl(i32 1)
br label %LU20

LU20:
%v46 = phi i1 [ %v40, %LU19 ], [ %v40, %LU21 ]
%v53 = phi i1 [ %v41, %LU19 ], [ %v41, %LU21 ]

%v47 = xor i1 1, %v46
br i1 %v47, label %LU22, label %LU24

LU22:

call void @printl(i32 3)
br label %LU23

LU23:
%v51 = phi i1 [ %v46, %LU22 ], [ %v46, %LU24 ]
%v52 = phi i1 [ %v53, %LU22 ], [ %v53, %LU24 ]

%v54 = and i1 %v51, %v52
ret i1 %v54
br label %LU15

LU15:

ret i1 0
br label %LU15

LU24:

call void @printl(i32 4)
br label %LU23


LU21:

call void @printl(i32 2)
br label %LU20


LU18:

br label %LU17

}
define i32 @bar(i32 %_P_x, i32 %_P_y)
{
LU9:

%v25 = icmp sgt i32 %_P_x, %_P_y
br i1 %v25, label %LU11, label %LU13

LU11:

br label %LU12

LU12:
%v29 = phi i32 [ 2, %LU11 ], [ 2, %LU13 ]
%v30 = phi i32 [ 3, %LU11 ], [ 3, %LU13 ]

%v31 = add i32 %v29, %v30
ret i32 %v31
br label %LU10

LU10:

ret i32 0
br label %LU10

LU13:

br label %LU12

}
define void @foo(i32 %_P_x)
{
LU7:

%v14 = add i32 3, 4
%v16 = mul i32 4, %v14
%v17 = sub i32 99, 3
call void @print(i32 %v17)
call void @print(i32 4)
call void @print(i32 %v14)
call void @print(i32 %v16)
%v18 = sdiv i32 4, 0
call void @print(i32 %v18)
%v19 = call i32 @readchar()
%v20 = add i32 %v19, 1
call void @print(i32 %v20)
ret void 
}
define void @blah()
{
LU2:

call void @print(i32 1)
br label %LU5

LU5:
%v6 = phi i32 [ 3, %LU2 ]

call void @printl(i32 %v6)
ret void 
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

