%struct.intList = type {i32, %struct.intList*}
@intList = common global i32 0, align 4
define i32 @main()
{
LU14:


%list = alloca %struct.intList*
%sum = alloca i32
%v83 = call i32 @readchar()
store i32 %v83, i32* @intList
store i32 0, i32* %sum
store %struct.intList* null, %struct.intList** %list
br label %LU16

LU16:


%v89 = load i32, i32* @intList
%v90 = icmp sgt i32 %v89, 0
br i1 %v90, label %LU17, label %LU18

LU17:


%v95 = load %struct.intList*, %struct.intList** %list
%v97 = load i32, i32* @intList
%v93 = call %struct.intList* @addToFront(%struct.intList* %v95, i32 %v97)
store %struct.intList* %v93, %struct.intList** %list
%v100 = load %struct.intList*, %struct.intList** %list
%v101 = getelementptr %struct.intList, %struct.intList* %v100, i1 0, i32 0
%v102 = load i32, i32* %v101
call void @print(i32 %v102)
%v104 = load i32, i32* @intList
%v105 = sub i32 %v104, 1
store i32 %v105, i32* @intList
br label %LU16


LU18:


%v109 = load %struct.intList*, %struct.intList** %list
%v107 = call i32 @length(%struct.intList* %v109)
call void @print(i32 %v107)
br label %LU19

LU19:


%v113 = load %struct.intList*, %struct.intList** %list
%v111 = call i32 @length(%struct.intList* %v113)
%v114 = icmp sgt i32 %v111, 0
br i1 %v114, label %LU20, label %LU21

LU20:


%v118 = load i32, i32* %sum
%v120 = load %struct.intList*, %struct.intList** %list
%v121 = getelementptr %struct.intList, %struct.intList* %v120, i1 0, i32 0
%v122 = load i32, i32* %v121
%v123 = add i32 %v118, %v122
store i32 %v123, i32* %sum
%v127 = load %struct.intList*, %struct.intList** %list
%v125 = call i32 @length(%struct.intList* %v127)
call void @print(i32 %v125)
%v130 = load %struct.intList*, %struct.intList** %list
%v128 = call %struct.intList* @deleteFirst(%struct.intList* %v130)
store %struct.intList* %v128, %struct.intList** %list
br label %LU19


LU21:


%v133 = load i32, i32* %sum
call void @printl(i32 %v133)
ret i32 0
br label %LU15

LU15:


ret i32 0
br label %LU15
}
define %struct.intList* @deleteFirst(%struct.intList* %_P_list)
{
LU10:


%list = alloca %struct.intList*
store %struct.intList* %_P_list, %struct.intList** %list
%first = alloca %struct.intList*
%v62 = load %struct.intList*, %struct.intList** %list
%v63 = icmp eq %struct.intList* %v62, null
br i1 %v63, label %LU12, label %LU13

LU12:


ret %struct.intList* null
br label %LU11

LU11:


ret %struct.intList* null
br label %LU11

LU13:


%v67 = load %struct.intList*, %struct.intList** %list
store %struct.intList* %v67, %struct.intList** %first
%v70 = load %struct.intList*, %struct.intList** %list
%v71 = getelementptr %struct.intList, %struct.intList* %v70, i1 0, i32 1
%v72 = load %struct.intList*, %struct.intList** %v71
store %struct.intList* %v72, %struct.intList** %list
%v75 = load %struct.intList*, %struct.intList** %first
%v76 = bitcast %struct.intList* %v75 to i8*
call void @free(i8* %v76)
%v78 = load %struct.intList*, %struct.intList** %list
ret %struct.intList* %v78
br label %LU11

}
define %struct.intList* @addToFront(%struct.intList* %_P_list, i32 %_P_element)
{
LU6:


%list = alloca %struct.intList*
store %struct.intList* %_P_list, %struct.intList** %list
%element = alloca i32
store i32 %_P_element, i32* %element
%front = alloca %struct.intList*
%v24 = load %struct.intList*, %struct.intList** %list
%v25 = icmp eq %struct.intList* %v24, null
br i1 %v25, label %LU8, label %LU9

LU8:


%v28 = call i8* @malloc(i32 8)
%v29 = bitcast i8* %v28 to %struct.intList*
store %struct.intList* %v29, %struct.intList** %list
%v32 = load i32, i32* %element
%v34 = load %struct.intList*, %struct.intList** %list
%v35 = getelementptr %struct.intList, %struct.intList* %v34, i1 0, i32 0
store i32 %v32, i32* %v35
%v37 = load %struct.intList*, %struct.intList** %list
%v38 = getelementptr %struct.intList, %struct.intList* %v37, i1 0, i32 1
store %struct.intList* null, %struct.intList** %v38
%v40 = load %struct.intList*, %struct.intList** %list
ret %struct.intList* %v40
br label %LU7

LU7:


ret %struct.intList* null
br label %LU7

LU9:


%v41 = call i8* @malloc(i32 8)
%v42 = bitcast i8* %v41 to %struct.intList*
store %struct.intList* %v42, %struct.intList** %front
%v45 = load i32, i32* %element
%v47 = load %struct.intList*, %struct.intList** %front
%v48 = getelementptr %struct.intList, %struct.intList* %v47, i1 0, i32 0
store i32 %v45, i32* %v48
%v50 = load %struct.intList*, %struct.intList** %list
%v52 = load %struct.intList*, %struct.intList** %front
%v53 = getelementptr %struct.intList, %struct.intList* %v52, i1 0, i32 1
store %struct.intList* %v50, %struct.intList** %v53
%v55 = load %struct.intList*, %struct.intList** %front
ret %struct.intList* %v55
br label %LU7

}
define i32 @length(%struct.intList* %_P_list)
{
LU2:


%list = alloca %struct.intList*
store %struct.intList* %_P_list, %struct.intList** %list
%v6 = load %struct.intList*, %struct.intList** %list
%v7 = icmp eq %struct.intList* %v6, null
br i1 %v7, label %LU4, label %LU5

LU4:


ret i32 0
br label %LU3

LU3:


ret i32 0
br label %LU3

LU5:


%v12 = load %struct.intList*, %struct.intList** %list
%v13 = getelementptr %struct.intList, %struct.intList* %v12, i1 0, i32 1
%v14 = load %struct.intList*, %struct.intList** %v13
%v10 = call i32 @length(%struct.intList* %v14)
%v15 = add i32 1, %v10
ret i32 %v15
br label %LU3

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

