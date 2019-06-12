%struct.IntList = type {i32, %struct.IntList*}
define i32 @main()
{
LU17:


%list = alloca %struct.IntList*
%v91 = call %struct.IntList* @getIntList()
store %struct.IntList* %v91, %struct.IntList** %list
%v95 = load %struct.IntList*, %struct.IntList** %list
%v93 = call i32 @biggestInList(%struct.IntList* %v95)
call void @printl(i32 %v93)
ret i32 0
br label %LU18

LU18:


ret i32 0
br label %LU18
}
define i32 @biggestInList(%struct.IntList* %_P_list)
{
LU12:


%list = alloca %struct.IntList*
store %struct.IntList* %_P_list, %struct.IntList** %list
%big = alloca i32
%v61 = load %struct.IntList*, %struct.IntList** %list
%v62 = getelementptr %struct.IntList, %struct.IntList* %v61, i1 0, i32 0
%v63 = load i32, i32* %v62
store i32 %v63, i32* %big
br label %LU14

LU14:


%v67 = load %struct.IntList*, %struct.IntList** %list
%v68 = getelementptr %struct.IntList, %struct.IntList* %v67, i1 0, i32 1
%v69 = load %struct.IntList*, %struct.IntList** %v68
%v70 = icmp ne %struct.IntList* %v69, null
br i1 %v70, label %LU15, label %LU16

LU15:


%v75 = load i32, i32* %big
%v77 = load %struct.IntList*, %struct.IntList** %list
%v78 = getelementptr %struct.IntList, %struct.IntList* %v77, i1 0, i32 0
%v79 = load i32, i32* %v78
%v73 = call i32 @biggest(i32 %v75, i32 %v79)
store i32 %v73, i32* %big
%v82 = load %struct.IntList*, %struct.IntList** %list
%v83 = getelementptr %struct.IntList, %struct.IntList* %v82, i1 0, i32 1
%v84 = load %struct.IntList*, %struct.IntList** %v83
store %struct.IntList* %v84, %struct.IntList** %list
br label %LU14


LU16:


%v87 = load i32, i32* %big
ret i32 %v87
br label %LU13

LU13:


ret i32 0
br label %LU13
}
define i32 @biggest(i32 %_P_num1, i32 %_P_num2)
{
LU7:


%num1 = alloca i32
store i32 %_P_num1, i32* %num1
%num2 = alloca i32
store i32 %_P_num2, i32* %num2
%v44 = load i32, i32* %num1
%v46 = load i32, i32* %num2
%v47 = icmp sgt i32 %v44, %v46
br i1 %v47, label %LU9, label %LU11

LU9:


%v51 = load i32, i32* %num1
ret i32 %v51
br label %LU8

LU8:


ret i32 0
br label %LU8

LU11:


%v54 = load i32, i32* %num2
ret i32 %v54
br label %LU8

}
define %struct.IntList* @getIntList()
{
LU2:


%list = alloca %struct.IntList*
%next = alloca i32
%v5 = call i8* @malloc(i32 8)
%v6 = bitcast i8* %v5 to %struct.IntList*
store %struct.IntList* %v6, %struct.IntList** %list
%v8 = call i32 @readchar()
store i32 %v8, i32* %next
%v11 = load i32, i32* %next
%v12 = icmp eq i32 %v11, -1
br i1 %v12, label %LU4, label %LU6

LU4:


%v16 = load i32, i32* %next
%v18 = load %struct.IntList*, %struct.IntList** %list
%v19 = getelementptr %struct.IntList, %struct.IntList* %v18, i1 0, i32 0
store i32 %v16, i32* %v19
%v21 = load %struct.IntList*, %struct.IntList** %list
%v22 = getelementptr %struct.IntList, %struct.IntList* %v21, i1 0, i32 1
store %struct.IntList* null, %struct.IntList** %v22
%v24 = load %struct.IntList*, %struct.IntList** %list
ret %struct.IntList* %v24
br label %LU3

LU3:


ret %struct.IntList* null
br label %LU3

LU6:


%v27 = load i32, i32* %next
%v29 = load %struct.IntList*, %struct.IntList** %list
%v30 = getelementptr %struct.IntList, %struct.IntList* %v29, i1 0, i32 0
store i32 %v27, i32* %v30
%v31 = call %struct.IntList* @getIntList()
%v33 = load %struct.IntList*, %struct.IntList** %list
%v34 = getelementptr %struct.IntList, %struct.IntList* %v33, i1 0, i32 1
store %struct.IntList* %v31, %struct.IntList** %v34
%v36 = load %struct.IntList*, %struct.IntList** %list
ret %struct.IntList* %v36
br label %LU3

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

