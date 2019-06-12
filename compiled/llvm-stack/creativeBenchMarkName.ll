%struct.node = type {i32, %struct.node*}
define i32 @main()
{
LU19:


%list = alloca %struct.node*
%product = alloca i32
%sum = alloca i32
%result = alloca i32
%bigProduct = alloca i32
%i = alloca i32
store i32 0, i32* %i
store i32 0, i32* %bigProduct
%v215 = call %struct.node* @buildList()
store %struct.node* %v215, %struct.node** %list
%v219 = load %struct.node*, %struct.node** %list
%v217 = call i32 @multiple(%struct.node* %v219)
store i32 %v217, i32* %product
%v223 = load %struct.node*, %struct.node** %list
%v221 = call i32 @add(%struct.node* %v223)
store i32 %v221, i32* %sum
%v226 = load i32, i32* %product
%v228 = load i32, i32* %sum
%v229 = sdiv i32 %v228, 2
%v230 = sub i32 %v226, %v229
store i32 %v230, i32* %result
br label %LU21

LU21:


%v234 = load i32, i32* %i
%v235 = icmp slt i32 %v234, 2
br i1 %v235, label %LU22, label %LU23

LU22:


%v239 = load i32, i32* %bigProduct
%v242 = load %struct.node*, %struct.node** %list
%v240 = call i32 @recurseList(%struct.node* %v242)
%v243 = add i32 %v239, %v240
store i32 %v243, i32* %bigProduct
%v246 = load i32, i32* %i
%v247 = add i32 %v246, 1
store i32 %v247, i32* %i
br label %LU21


LU23:


%v250 = load i32, i32* %bigProduct
call void @printl(i32 %v250)
br label %LU24

LU24:


%v253 = load i32, i32* %bigProduct
%v254 = icmp ne i32 %v253, 0
br i1 %v254, label %LU25, label %LU26

LU25:


%v258 = load i32, i32* %bigProduct
%v259 = sub i32 %v258, 1
store i32 %v259, i32* %bigProduct
br label %LU24


LU26:


%v262 = load i32, i32* %result
call void @printl(i32 %v262)
%v264 = load i32, i32* %bigProduct
call void @printl(i32 %v264)
ret i32 0
br label %LU20

LU20:


ret i32 0
br label %LU20
}
define i32 @recurseList(%struct.node* %_P_list)
{
LU14:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%v184 = load %struct.node*, %struct.node** %list
%v185 = getelementptr %struct.node, %struct.node* %v184, i1 0, i32 1
%v186 = load %struct.node*, %struct.node** %v185
%v187 = icmp eq %struct.node* %v186, null
br i1 %v187, label %LU16, label %LU18

LU16:


%v191 = load %struct.node*, %struct.node** %list
%v192 = getelementptr %struct.node, %struct.node* %v191, i1 0, i32 0
%v193 = load i32, i32* %v192
ret i32 %v193
br label %LU15

LU15:


ret i32 0
br label %LU15

LU18:


%v196 = load %struct.node*, %struct.node** %list
%v197 = getelementptr %struct.node, %struct.node* %v196, i1 0, i32 0
%v198 = load i32, i32* %v197
%v201 = load %struct.node*, %struct.node** %list
%v202 = getelementptr %struct.node, %struct.node* %v201, i1 0, i32 1
%v203 = load %struct.node*, %struct.node** %v202
%v199 = call i32 @recurseList(%struct.node* %v203)
%v204 = mul i32 %v198, %v199
ret i32 %v204
br label %LU15

}
define i32 @add(%struct.node* %_P_list)
{
LU9:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%i = alloca i32
%sum = alloca i32
%cur = alloca %struct.node*
store i32 0, i32* %i
%v140 = load %struct.node*, %struct.node** %list
store %struct.node* %v140, %struct.node** %cur
%v143 = load %struct.node*, %struct.node** %cur
%v144 = getelementptr %struct.node, %struct.node* %v143, i1 0, i32 0
%v145 = load i32, i32* %v144
store i32 %v145, i32* %sum
%v148 = load %struct.node*, %struct.node** %cur
%v149 = getelementptr %struct.node, %struct.node* %v148, i1 0, i32 1
%v150 = load %struct.node*, %struct.node** %v149
store %struct.node* %v150, %struct.node** %cur
br label %LU11

LU11:


%v154 = load i32, i32* %i
%v155 = icmp slt i32 %v154, 5
br i1 %v155, label %LU12, label %LU13

LU12:


%v159 = load i32, i32* %sum
%v161 = load %struct.node*, %struct.node** %cur
%v162 = getelementptr %struct.node, %struct.node* %v161, i1 0, i32 0
%v163 = load i32, i32* %v162
%v164 = add i32 %v159, %v163
store i32 %v164, i32* %sum
%v167 = load %struct.node*, %struct.node** %cur
%v168 = getelementptr %struct.node, %struct.node* %v167, i1 0, i32 1
%v169 = load %struct.node*, %struct.node** %v168
store %struct.node* %v169, %struct.node** %cur
%v172 = load i32, i32* %sum
call void @printl(i32 %v172)
%v174 = load i32, i32* %i
%v175 = add i32 %v174, 1
store i32 %v175, i32* %i
br label %LU11


LU13:


%v178 = load i32, i32* %sum
ret i32 %v178
br label %LU10

LU10:


ret i32 0
br label %LU10
}
define i32 @multiple(%struct.node* %_P_list)
{
LU4:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%i = alloca i32
%product = alloca i32
%cur = alloca %struct.node*
store i32 0, i32* %i
%v92 = load %struct.node*, %struct.node** %list
store %struct.node* %v92, %struct.node** %cur
%v95 = load %struct.node*, %struct.node** %cur
%v96 = getelementptr %struct.node, %struct.node* %v95, i1 0, i32 0
%v97 = load i32, i32* %v96
store i32 %v97, i32* %product
%v100 = load %struct.node*, %struct.node** %cur
%v101 = getelementptr %struct.node, %struct.node* %v100, i1 0, i32 1
%v102 = load %struct.node*, %struct.node** %v101
store %struct.node* %v102, %struct.node** %cur
br label %LU6

LU6:


%v106 = load i32, i32* %i
%v107 = icmp slt i32 %v106, 5
br i1 %v107, label %LU7, label %LU8

LU7:


%v111 = load i32, i32* %product
%v113 = load %struct.node*, %struct.node** %cur
%v114 = getelementptr %struct.node, %struct.node* %v113, i1 0, i32 0
%v115 = load i32, i32* %v114
%v116 = mul i32 %v111, %v115
store i32 %v116, i32* %product
%v119 = load %struct.node*, %struct.node** %cur
%v120 = getelementptr %struct.node, %struct.node* %v119, i1 0, i32 1
%v121 = load %struct.node*, %struct.node** %v120
store %struct.node* %v121, %struct.node** %cur
%v124 = load i32, i32* %product
call void @printl(i32 %v124)
%v126 = load i32, i32* %i
%v127 = add i32 %v126, 1
store i32 %v127, i32* %i
br label %LU6


LU8:


%v130 = load i32, i32* %product
ret i32 %v130
br label %LU5

LU5:


ret i32 0
br label %LU5
}
define %struct.node* @buildList()
{
LU2:


%input = alloca i32
%i = alloca i32
%n0 = alloca %struct.node*
%n1 = alloca %struct.node*
%n2 = alloca %struct.node*
%n3 = alloca %struct.node*
%n4 = alloca %struct.node*
%n5 = alloca %struct.node*
%v11 = call i8* @malloc(i32 8)
%v12 = bitcast i8* %v11 to %struct.node*
store %struct.node* %v12, %struct.node** %n0
%v14 = call i8* @malloc(i32 8)
%v15 = bitcast i8* %v14 to %struct.node*
store %struct.node* %v15, %struct.node** %n1
%v17 = call i8* @malloc(i32 8)
%v18 = bitcast i8* %v17 to %struct.node*
store %struct.node* %v18, %struct.node** %n2
%v20 = call i8* @malloc(i32 8)
%v21 = bitcast i8* %v20 to %struct.node*
store %struct.node* %v21, %struct.node** %n3
%v23 = call i8* @malloc(i32 8)
%v24 = bitcast i8* %v23 to %struct.node*
store %struct.node* %v24, %struct.node** %n4
%v26 = call i8* @malloc(i32 8)
%v27 = bitcast i8* %v26 to %struct.node*
store %struct.node* %v27, %struct.node** %n5
%v29 = call i32 @readchar()
%v31 = load %struct.node*, %struct.node** %n0
%v32 = getelementptr %struct.node, %struct.node* %v31, i1 0, i32 0
store i32 %v29, i32* %v32
%v33 = call i32 @readchar()
%v35 = load %struct.node*, %struct.node** %n1
%v36 = getelementptr %struct.node, %struct.node* %v35, i1 0, i32 0
store i32 %v33, i32* %v36
%v37 = call i32 @readchar()
%v39 = load %struct.node*, %struct.node** %n2
%v40 = getelementptr %struct.node, %struct.node* %v39, i1 0, i32 0
store i32 %v37, i32* %v40
%v41 = call i32 @readchar()
%v43 = load %struct.node*, %struct.node** %n3
%v44 = getelementptr %struct.node, %struct.node* %v43, i1 0, i32 0
store i32 %v41, i32* %v44
%v45 = call i32 @readchar()
%v47 = load %struct.node*, %struct.node** %n4
%v48 = getelementptr %struct.node, %struct.node* %v47, i1 0, i32 0
store i32 %v45, i32* %v48
%v49 = call i32 @readchar()
%v51 = load %struct.node*, %struct.node** %n5
%v52 = getelementptr %struct.node, %struct.node* %v51, i1 0, i32 0
store i32 %v49, i32* %v52
%v54 = load %struct.node*, %struct.node** %n1
%v56 = load %struct.node*, %struct.node** %n0
%v57 = getelementptr %struct.node, %struct.node* %v56, i1 0, i32 1
store %struct.node* %v54, %struct.node** %v57
%v59 = load %struct.node*, %struct.node** %n2
%v61 = load %struct.node*, %struct.node** %n1
%v62 = getelementptr %struct.node, %struct.node* %v61, i1 0, i32 1
store %struct.node* %v59, %struct.node** %v62
%v64 = load %struct.node*, %struct.node** %n3
%v66 = load %struct.node*, %struct.node** %n2
%v67 = getelementptr %struct.node, %struct.node* %v66, i1 0, i32 1
store %struct.node* %v64, %struct.node** %v67
%v69 = load %struct.node*, %struct.node** %n4
%v71 = load %struct.node*, %struct.node** %n3
%v72 = getelementptr %struct.node, %struct.node* %v71, i1 0, i32 1
store %struct.node* %v69, %struct.node** %v72
%v74 = load %struct.node*, %struct.node** %n5
%v76 = load %struct.node*, %struct.node** %n4
%v77 = getelementptr %struct.node, %struct.node* %v76, i1 0, i32 1
store %struct.node* %v74, %struct.node** %v77
%v79 = load %struct.node*, %struct.node** %n5
%v80 = getelementptr %struct.node, %struct.node* %v79, i1 0, i32 1
store %struct.node* null, %struct.node** %v80
%v82 = load %struct.node*, %struct.node** %n0
ret %struct.node* %v82
br label %LU3

LU3:


ret %struct.node* null
br label %LU3
}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

