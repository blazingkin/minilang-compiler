%struct.simple = type {i32}
%struct.foo = type {i32, i1, %struct.simple*}
@globalfoo = common global %struct.foo* null, align 4
define i32 @main()
{
LU25:


%a = alloca i32
%b = alloca i32
%c = alloca i32
%d = alloca i32
%e = alloca i32
%v199 = call i32 @readchar()
store i32 %v199, i32* %a
%v201 = call i32 @readchar()
store i32 %v201, i32* %b
%v203 = call i32 @readchar()
store i32 %v203, i32* %c
%v205 = call i32 @readchar()
store i32 %v205, i32* %d
%v207 = call i32 @readchar()
store i32 %v207, i32* %e
%v211 = load i32, i32* %a
call void @tailrecursive(i32 %v211)
%v213 = load i32, i32* %a
call void @printl(i32 %v213)
%v216 = load i32, i32* %b
call void @domath(i32 %v216)
%v218 = load i32, i32* %b
call void @printl(i32 %v218)
%v221 = load i32, i32* %c
call void @objinstantiation(i32 %v221)
%v223 = load i32, i32* %c
call void @printl(i32 %v223)
%v226 = load i32, i32* %d
%v228 = load i32, i32* %e
%v224 = call i32 @ackermann(i32 %v226, i32 %v228)
call void @printl(i32 %v224)
ret i32 0
br label %LU26

LU26:


ret i32 0
br label %LU26
}
define i32 @ackermann(i32 %_P_m, i32 %_P_n)
{
LU18:


%m = alloca i32
store i32 %_P_m, i32* %m
%n = alloca i32
store i32 %_P_n, i32* %n
%v165 = load i32, i32* %m
%v166 = icmp eq i32 %v165, 0
br i1 %v166, label %LU20, label %LU21

LU20:


%v170 = load i32, i32* %n
%v171 = add i32 %v170, 1
ret i32 %v171
br label %LU19

LU19:


ret i32 0
br label %LU19

LU21:


%v173 = load i32, i32* %n
%v174 = icmp eq i32 %v173, 0
br i1 %v174, label %LU22, label %LU24

LU22:


%v179 = load i32, i32* %m
%v180 = sub i32 %v179, 1
%v177 = call i32 @ackermann(i32 %v180, i32 1)
ret i32 %v177
br label %LU19


LU24:


%v184 = load i32, i32* %m
%v185 = sub i32 %v184, 1
%v188 = load i32, i32* %m
%v190 = load i32, i32* %n
%v191 = sub i32 %v190, 1
%v186 = call i32 @ackermann(i32 %v188, i32 %v191)
%v182 = call i32 @ackermann(i32 %v185, i32 %v186)
ret i32 %v182
br label %LU19

}
define void @objinstantiation(i32 %_P_num)
{
LU13:


%num = alloca i32
store i32 %_P_num, i32* %num
%tmp = alloca %struct.foo*
br label %LU15

LU15:


%v144 = load i32, i32* %num
%v145 = icmp sgt i32 %v144, 0
br i1 %v145, label %LU16, label %LU17

LU16:


%v148 = call i8* @malloc(i32 12)
%v149 = bitcast i8* %v148 to %struct.foo*
store %struct.foo* %v149, %struct.foo** %tmp
%v152 = load %struct.foo*, %struct.foo** %tmp
%v153 = bitcast %struct.foo* %v152 to i8*
call void @free(i8* %v153)
%v155 = load i32, i32* %num
%v156 = sub i32 %v155, 1
store i32 %v156, i32* %num
br label %LU15


LU17:


br label %LU14

LU14:


ret void 
}
define void @domath(i32 %_P_num)
{
LU8:


%num = alloca i32
store i32 %_P_num, i32* %num
%math1 = alloca %struct.foo*
%math2 = alloca %struct.foo*
%tmp = alloca i32
%v32 = call i8* @malloc(i32 12)
%v33 = bitcast i8* %v32 to %struct.foo*
store %struct.foo* %v33, %struct.foo** %math1
%v35 = call i8* @malloc(i32 4)
%v36 = bitcast i8* %v35 to %struct.simple*
%v38 = load %struct.foo*, %struct.foo** %math1
%v39 = getelementptr %struct.foo, %struct.foo* %v38, i1 0, i32 2
store %struct.simple* %v36, %struct.simple** %v39
%v40 = call i8* @malloc(i32 12)
%v41 = bitcast i8* %v40 to %struct.foo*
store %struct.foo* %v41, %struct.foo** %math2
%v43 = call i8* @malloc(i32 4)
%v44 = bitcast i8* %v43 to %struct.simple*
%v46 = load %struct.foo*, %struct.foo** %math2
%v47 = getelementptr %struct.foo, %struct.foo* %v46, i1 0, i32 2
store %struct.simple* %v44, %struct.simple** %v47
%v49 = load i32, i32* %num
%v51 = load %struct.foo*, %struct.foo** %math1
%v52 = getelementptr %struct.foo, %struct.foo* %v51, i1 0, i32 0
store i32 %v49, i32* %v52
%v54 = load %struct.foo*, %struct.foo** %math2
%v55 = getelementptr %struct.foo, %struct.foo* %v54, i1 0, i32 0
store i32 3, i32* %v55
%v57 = load %struct.foo*, %struct.foo** %math1
%v58 = getelementptr %struct.foo, %struct.foo* %v57, i1 0, i32 0
%v59 = load i32, i32* %v58
%v61 = load %struct.foo*, %struct.foo** %math1
%v62 = getelementptr %struct.foo, %struct.foo* %v61, i1 0, i32 2
%v63 = load %struct.simple*, %struct.simple** %v62
%v64 = getelementptr %struct.simple, %struct.simple* %v63, i1 0, i32 0
store i32 %v59, i32* %v64
%v66 = load %struct.foo*, %struct.foo** %math2
%v67 = getelementptr %struct.foo, %struct.foo* %v66, i1 0, i32 0
%v68 = load i32, i32* %v67
%v70 = load %struct.foo*, %struct.foo** %math2
%v71 = getelementptr %struct.foo, %struct.foo* %v70, i1 0, i32 2
%v72 = load %struct.simple*, %struct.simple** %v71
%v73 = getelementptr %struct.simple, %struct.simple* %v72, i1 0, i32 0
store i32 %v68, i32* %v73
br label %LU10

LU10:


%v76 = load i32, i32* %num
%v77 = icmp sgt i32 %v76, 0
br i1 %v77, label %LU11, label %LU12

LU11:


%v81 = load %struct.foo*, %struct.foo** %math1
%v82 = getelementptr %struct.foo, %struct.foo* %v81, i1 0, i32 0
%v83 = load i32, i32* %v82
%v85 = load %struct.foo*, %struct.foo** %math2
%v86 = getelementptr %struct.foo, %struct.foo* %v85, i1 0, i32 0
%v87 = load i32, i32* %v86
%v88 = mul i32 %v83, %v87
store i32 %v88, i32* %tmp
%v91 = load i32, i32* %tmp
%v93 = load %struct.foo*, %struct.foo** %math1
%v94 = getelementptr %struct.foo, %struct.foo* %v93, i1 0, i32 2
%v95 = load %struct.simple*, %struct.simple** %v94
%v96 = getelementptr %struct.simple, %struct.simple* %v95, i1 0, i32 0
%v97 = load i32, i32* %v96
%v98 = mul i32 %v91, %v97
%v100 = load %struct.foo*, %struct.foo** %math2
%v101 = getelementptr %struct.foo, %struct.foo* %v100, i1 0, i32 0
%v102 = load i32, i32* %v101
%v103 = sdiv i32 %v98, %v102
store i32 %v103, i32* %tmp
%v107 = load %struct.foo*, %struct.foo** %math2
%v108 = getelementptr %struct.foo, %struct.foo* %v107, i1 0, i32 2
%v109 = load %struct.simple*, %struct.simple** %v108
%v110 = getelementptr %struct.simple, %struct.simple* %v109, i1 0, i32 0
%v111 = load i32, i32* %v110
%v113 = load %struct.foo*, %struct.foo** %math1
%v114 = getelementptr %struct.foo, %struct.foo* %v113, i1 0, i32 0
%v115 = load i32, i32* %v114
%v105 = call i32 @add(i32 %v111, i32 %v115)
store i32 %v105, i32* %tmp
%v118 = load %struct.foo*, %struct.foo** %math2
%v119 = getelementptr %struct.foo, %struct.foo* %v118, i1 0, i32 0
%v120 = load i32, i32* %v119
%v122 = load %struct.foo*, %struct.foo** %math1
%v123 = getelementptr %struct.foo, %struct.foo* %v122, i1 0, i32 0
%v124 = load i32, i32* %v123
%v125 = sub i32 %v120, %v124
store i32 %v125, i32* %tmp
%v128 = load i32, i32* %num
%v129 = sub i32 %v128, 1
store i32 %v129, i32* %num
br label %LU10


LU12:


%v132 = load %struct.foo*, %struct.foo** %math1
%v133 = bitcast %struct.foo* %v132 to i8*
call void @free(i8* %v133)
%v135 = load %struct.foo*, %struct.foo** %math2
%v136 = bitcast %struct.foo* %v135 to i8*
call void @free(i8* %v136)
br label %LU9

LU9:


ret void 
}
define i32 @add(i32 %_P_x, i32 %_P_y)
{
LU6:


%x = alloca i32
store i32 %_P_x, i32* %x
%y = alloca i32
store i32 %_P_y, i32* %y
%v21 = load i32, i32* %x
%v23 = load i32, i32* %y
%v24 = add i32 %v21, %v23
ret i32 %v24
br label %LU7

LU7:


ret i32 0
br label %LU7
}
define void @tailrecursive(i32 %_P_num)
{
LU2:


%num = alloca i32
store i32 %_P_num, i32* %num
%v6 = load i32, i32* %num
%v7 = icmp sle i32 %v6, 0
br i1 %v7, label %LU4, label %LU5

LU4:


ret void
br label %LU3

LU3:


ret void 

LU5:


%v12 = load i32, i32* %num
%v13 = sub i32 %v12, 1
call void @tailrecursive(i32 %v13)
br label %LU3

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

