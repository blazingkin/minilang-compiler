%struct.linkedNums = type {i32, %struct.linkedNums*}
define void @range(%struct.linkedNums* %_P_nums)
{
LU24:


%nums = alloca %struct.linkedNums*
store %struct.linkedNums* %_P_nums, %struct.linkedNums** %nums
%min = alloca i32
%max = alloca i32
%first = alloca i1
store i32 0, i32* %min
store i32 0, i32* %max
store i1 1, i1* %first
br label %LU26

LU26:


%v194 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v195 = icmp ne %struct.linkedNums* %v194, null
br i1 %v195, label %LU27, label %LU28

LU27:


%v199 = load i1, i1* %first
br i1 %v199, label %LU29, label %LU31

LU29:


%v203 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v204 = getelementptr %struct.linkedNums, %struct.linkedNums* %v203, i1 0, i32 0
%v205 = load i32, i32* %v204
store i32 %v205, i32* %min
%v208 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v209 = getelementptr %struct.linkedNums, %struct.linkedNums* %v208, i1 0, i32 0
%v210 = load i32, i32* %v209
store i32 %v210, i32* %max
store i1 0, i1* %first
br label %LU30

LU30:


%v244 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v245 = getelementptr %struct.linkedNums, %struct.linkedNums* %v244, i1 0, i32 1
%v246 = load %struct.linkedNums*, %struct.linkedNums** %v245
store %struct.linkedNums* %v246, %struct.linkedNums** %nums
br label %LU26


LU31:


%v215 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v216 = getelementptr %struct.linkedNums, %struct.linkedNums* %v215, i1 0, i32 0
%v217 = load i32, i32* %v216
%v219 = load i32, i32* %min
%v220 = icmp slt i32 %v217, %v219
br i1 %v220, label %LU32, label %LU34

LU32:


%v224 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v225 = getelementptr %struct.linkedNums, %struct.linkedNums* %v224, i1 0, i32 0
%v226 = load i32, i32* %v225
store i32 %v226, i32* %min
br label %LU33

LU33:


br label %LU30


LU34:


%v230 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v231 = getelementptr %struct.linkedNums, %struct.linkedNums* %v230, i1 0, i32 0
%v232 = load i32, i32* %v231
%v234 = load i32, i32* %max
%v235 = icmp sgt i32 %v232, %v234
br i1 %v235, label %LU35, label %LU36

LU35:


%v239 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v240 = getelementptr %struct.linkedNums, %struct.linkedNums* %v239, i1 0, i32 0
%v241 = load i32, i32* %v240
store i32 %v241, i32* %max
br label %LU36

LU36:


br label %LU33



LU28:


%v252 = load i32, i32* %min
call void @printl(i32 %v252)
%v257 = load i32, i32* %max
call void @printl(i32 %v257)
br label %LU25

LU25:


ret void 
}
define i32 @main()
{
LU37:


%seed = alloca i32
%num = alloca i32
%mean = alloca i32
%nums = alloca %struct.linkedNums*
%v258 = call i32 @readchar()
store i32 %v258, i32* %seed
%v260 = call i32 @readchar()
store i32 %v260, i32* %num
%v264 = load i32, i32* %seed
%v266 = load i32, i32* %num
%v262 = call %struct.linkedNums* @getRands(i32 %v264, i32 %v266)
store %struct.linkedNums* %v262, %struct.linkedNums** %nums
%v270 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v268 = call i32 @calcMean(%struct.linkedNums* %v270)
store i32 %v268, i32* %mean
%v273 = load i32, i32* %mean
call void @printl(i32 %v273)
%v276 = load %struct.linkedNums*, %struct.linkedNums** %nums
call void @range(%struct.linkedNums* %v276)
%v279 = load %struct.linkedNums*, %struct.linkedNums** %nums
call void @approxSqrtAll(%struct.linkedNums* %v279)
ret i32 0
br label %LU38

LU38:


ret i32 0
br label %LU38
}
define void @approxSqrtAll(%struct.linkedNums* %_P_nums)
{
LU19:


%nums = alloca %struct.linkedNums*
store %struct.linkedNums* %_P_nums, %struct.linkedNums** %nums
br label %LU21

LU21:


%v168 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v169 = icmp ne %struct.linkedNums* %v168, null
br i1 %v169, label %LU22, label %LU23

LU22:


%v174 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v175 = getelementptr %struct.linkedNums, %struct.linkedNums* %v174, i1 0, i32 0
%v176 = load i32, i32* %v175
%v172 = call i32 @approxSqrt(i32 %v176)
call void @printl(i32 %v172)
%v178 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v179 = getelementptr %struct.linkedNums, %struct.linkedNums* %v178, i1 0, i32 1
%v180 = load %struct.linkedNums*, %struct.linkedNums** %v179
store %struct.linkedNums* %v180, %struct.linkedNums** %nums
br label %LU21


LU23:


br label %LU20

LU20:


ret void 
}
define i32 @approxSqrt(i32 %_P_num)
{
LU14:


%num = alloca i32
store i32 %_P_num, i32* %num
%guess = alloca i32
%result = alloca i32
%prev = alloca i32
store i32 1, i32* %guess
%v136 = load i32, i32* %guess
store i32 %v136, i32* %prev
store i32 0, i32* %result
br label %LU16

LU16:


%v141 = load i32, i32* %result
%v143 = load i32, i32* %num
%v144 = icmp slt i32 %v141, %v143
br i1 %v144, label %LU17, label %LU18

LU17:


%v148 = load i32, i32* %guess
%v150 = load i32, i32* %guess
%v151 = mul i32 %v148, %v150
store i32 %v151, i32* %result
%v154 = load i32, i32* %guess
store i32 %v154, i32* %prev
%v157 = load i32, i32* %guess
%v161 = add i32 %v157, 1
store i32 %v161, i32* %guess
br label %LU16


LU18:


%v166 = load i32, i32* %prev
ret i32 %v166
br label %LU15

LU15:


ret i32 0
br label %LU15
}
define i32 @calcMean(%struct.linkedNums* %_P_nums)
{
LU7:


%nums = alloca %struct.linkedNums*
store %struct.linkedNums* %_P_nums, %struct.linkedNums** %nums
%sum = alloca i32
%num = alloca i32
%mean = alloca i32
store i32 0, i32* %sum
store i32 0, i32* %num
store i32 0, i32* %mean
br label %LU9

LU9:


%v93 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v94 = icmp ne %struct.linkedNums* %v93, null
br i1 %v94, label %LU10, label %LU11

LU10:


%v98 = load i32, i32* %num
%v99 = add i32 %v98, 1
store i32 %v99, i32* %num
%v102 = load i32, i32* %sum
%v104 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v105 = getelementptr %struct.linkedNums, %struct.linkedNums* %v104, i1 0, i32 0
%v106 = load i32, i32* %v105
%v107 = add i32 %v102, %v106
store i32 %v107, i32* %sum
%v110 = load %struct.linkedNums*, %struct.linkedNums** %nums
%v111 = getelementptr %struct.linkedNums, %struct.linkedNums* %v110, i1 0, i32 1
%v112 = load %struct.linkedNums*, %struct.linkedNums** %v111
store %struct.linkedNums* %v112, %struct.linkedNums** %nums
br label %LU9


LU11:


%v115 = load i32, i32* %num
%v116 = icmp ne i32 %v115, 0
br i1 %v116, label %LU12, label %LU13

LU12:


%v120 = load i32, i32* %sum
%v122 = load i32, i32* %num
%v123 = sdiv i32 %v120, %v122
store i32 %v123, i32* %mean
br label %LU13

LU13:


%v126 = load i32, i32* %mean
ret i32 %v126
br label %LU8

LU8:


ret i32 0
br label %LU8

}
define %struct.linkedNums* @getRands(i32 %_P_seed, i32 %_P_num)
{
LU2:


%seed = alloca i32
store i32 %_P_seed, i32* %seed
%num = alloca i32
store i32 %_P_num, i32* %num
%cur = alloca i32
%prev = alloca i32
%curNode = alloca %struct.linkedNums*
%prevNode = alloca %struct.linkedNums*
store %struct.linkedNums* null, %struct.linkedNums** %curNode
%v13 = load i32, i32* %seed
%v15 = load i32, i32* %seed
%v16 = mul i32 %v13, %v15
store i32 %v16, i32* %cur
%v18 = call i8* @malloc(i32 8)
%v19 = bitcast i8* %v18 to %struct.linkedNums*
store %struct.linkedNums* %v19, %struct.linkedNums** %prevNode
%v22 = load i32, i32* %cur
%v24 = load %struct.linkedNums*, %struct.linkedNums** %prevNode
%v25 = getelementptr %struct.linkedNums, %struct.linkedNums* %v24, i1 0, i32 0
store i32 %v22, i32* %v25
%v27 = load %struct.linkedNums*, %struct.linkedNums** %prevNode
%v28 = getelementptr %struct.linkedNums, %struct.linkedNums* %v27, i1 0, i32 1
store %struct.linkedNums* null, %struct.linkedNums** %v28
%v30 = load i32, i32* %num
%v31 = sub i32 %v30, 1
store i32 %v31, i32* %num
%v34 = load i32, i32* %cur
store i32 %v34, i32* %prev
br label %LU4

LU4:


%v38 = load i32, i32* %num
%v39 = icmp sgt i32 %v38, 0
br i1 %v39, label %LU5, label %LU6

LU5:


%v43 = load i32, i32* %prev
%v45 = load i32, i32* %prev
%v46 = mul i32 %v43, %v45
%v48 = load i32, i32* %seed
%v49 = sdiv i32 %v46, %v48
%v51 = load i32, i32* %seed
%v52 = sdiv i32 %v51, 2
%v53 = mul i32 %v49, %v52
%v54 = add i32 %v53, 1
store i32 %v54, i32* %cur
%v56 = call i8* @malloc(i32 8)
%v57 = bitcast i8* %v56 to %struct.linkedNums*
store %struct.linkedNums* %v57, %struct.linkedNums** %curNode
%v60 = load i32, i32* %cur
%v62 = load %struct.linkedNums*, %struct.linkedNums** %curNode
%v63 = getelementptr %struct.linkedNums, %struct.linkedNums* %v62, i1 0, i32 0
store i32 %v60, i32* %v63
%v65 = load %struct.linkedNums*, %struct.linkedNums** %prevNode
%v67 = load %struct.linkedNums*, %struct.linkedNums** %curNode
%v68 = getelementptr %struct.linkedNums, %struct.linkedNums* %v67, i1 0, i32 1
store %struct.linkedNums* %v65, %struct.linkedNums** %v68
%v70 = load %struct.linkedNums*, %struct.linkedNums** %curNode
store %struct.linkedNums* %v70, %struct.linkedNums** %prevNode
%v73 = load i32, i32* %num
%v74 = sub i32 %v73, 1
store i32 %v74, i32* %num
%v77 = load i32, i32* %cur
store i32 %v77, i32* %prev
br label %LU4


LU6:


%v80 = load %struct.linkedNums*, %struct.linkedNums** %curNode
ret %struct.linkedNums* %v80
br label %LU3

LU3:


ret %struct.linkedNums* null
br label %LU3
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

