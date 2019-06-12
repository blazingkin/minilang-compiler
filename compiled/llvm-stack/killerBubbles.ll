%struct.Node = type {i32, %struct.Node*, %struct.Node*}
@swapped = common global i32 0, align 4
define i32 @main()
{
LU19:


%numNodes = alloca i32
%counter = alloca i32
%currNode = alloca %struct.Node*
%head = alloca %struct.Node*
%previous = alloca %struct.Node*
store i32 666, i32* @swapped
%v130 = call i32 @readchar()
store i32 %v130, i32* %numNodes
%v133 = load i32, i32* %numNodes
%v134 = icmp sle i32 %v133, 0
br i1 %v134, label %LU21, label %LU22

LU21:


call void @printl(i32 -1)
ret i32 -1
br label %LU20

LU20:


ret i32 0
br label %LU20

LU22:


%v138 = load i32, i32* %numNodes
%v139 = mul i32 %v138, 1000
store i32 %v139, i32* %numNodes
%v142 = load i32, i32* %numNodes
store i32 %v142, i32* %counter
%v144 = call i8* @malloc(i32 12)
%v145 = bitcast i8* %v144 to %struct.Node*
store %struct.Node* %v145, %struct.Node** %head
%v148 = load i32, i32* %counter
%v150 = load %struct.Node*, %struct.Node** %head
%v151 = getelementptr %struct.Node, %struct.Node* %v150, i1 0, i32 0
store i32 %v148, i32* %v151
%v153 = load %struct.Node*, %struct.Node** %head
%v155 = load %struct.Node*, %struct.Node** %head
%v156 = getelementptr %struct.Node, %struct.Node* %v155, i1 0, i32 1
store %struct.Node* %v153, %struct.Node** %v156
%v158 = load %struct.Node*, %struct.Node** %head
%v160 = load %struct.Node*, %struct.Node** %head
%v161 = getelementptr %struct.Node, %struct.Node* %v160, i1 0, i32 2
store %struct.Node* %v158, %struct.Node** %v161
%v163 = load i32, i32* %counter
%v164 = sub i32 %v163, 1
store i32 %v164, i32* %counter
%v167 = load %struct.Node*, %struct.Node** %head
store %struct.Node* %v167, %struct.Node** %previous
br label %LU23

LU23:


%v171 = load i32, i32* %counter
%v172 = icmp sgt i32 %v171, 0
br i1 %v172, label %LU24, label %LU25

LU24:


%v175 = call i8* @malloc(i32 12)
%v176 = bitcast i8* %v175 to %struct.Node*
store %struct.Node* %v176, %struct.Node** %currNode
%v179 = load i32, i32* %counter
%v181 = load %struct.Node*, %struct.Node** %currNode
%v182 = getelementptr %struct.Node, %struct.Node* %v181, i1 0, i32 0
store i32 %v179, i32* %v182
%v184 = load %struct.Node*, %struct.Node** %previous
%v186 = load %struct.Node*, %struct.Node** %currNode
%v187 = getelementptr %struct.Node, %struct.Node* %v186, i1 0, i32 1
store %struct.Node* %v184, %struct.Node** %v187
%v189 = load %struct.Node*, %struct.Node** %head
%v191 = load %struct.Node*, %struct.Node** %currNode
%v192 = getelementptr %struct.Node, %struct.Node* %v191, i1 0, i32 2
store %struct.Node* %v189, %struct.Node** %v192
%v194 = load %struct.Node*, %struct.Node** %currNode
%v196 = load %struct.Node*, %struct.Node** %previous
%v197 = getelementptr %struct.Node, %struct.Node* %v196, i1 0, i32 2
store %struct.Node* %v194, %struct.Node** %v197
%v199 = load %struct.Node*, %struct.Node** %currNode
store %struct.Node* %v199, %struct.Node** %previous
%v202 = load i32, i32* %counter
%v203 = sub i32 %v202, 1
store i32 %v203, i32* %counter
br label %LU23


LU25:


%v207 = load %struct.Node*, %struct.Node** %head
call void @deathSort(%struct.Node* %v207)
%v210 = load %struct.Node*, %struct.Node** %head
call void @printEVILList(%struct.Node* %v210)
ret i32 0
br label %LU20

}
define void @printEVILList(%struct.Node* %_P_head)
{
LU14:


%head = alloca %struct.Node*
store %struct.Node* %_P_head, %struct.Node** %head
%currNode = alloca %struct.Node*
%toFree = alloca %struct.Node*
%v88 = load %struct.Node*, %struct.Node** %head
%v89 = getelementptr %struct.Node, %struct.Node* %v88, i1 0, i32 2
%v90 = load %struct.Node*, %struct.Node** %v89
store %struct.Node* %v90, %struct.Node** %currNode
%v93 = load %struct.Node*, %struct.Node** %head
%v94 = getelementptr %struct.Node, %struct.Node* %v93, i1 0, i32 0
%v95 = load i32, i32* %v94
call void @printl(i32 %v95)
%v97 = load %struct.Node*, %struct.Node** %head
%v98 = bitcast %struct.Node* %v97 to i8*
call void @free(i8* %v98)
br label %LU16

LU16:


%v101 = load %struct.Node*, %struct.Node** %currNode
%v103 = load %struct.Node*, %struct.Node** %head
%v104 = icmp ne %struct.Node* %v101, %v103
br i1 %v104, label %LU17, label %LU18

LU17:


%v108 = load %struct.Node*, %struct.Node** %currNode
store %struct.Node* %v108, %struct.Node** %toFree
%v111 = load %struct.Node*, %struct.Node** %currNode
%v112 = getelementptr %struct.Node, %struct.Node* %v111, i1 0, i32 0
%v113 = load i32, i32* %v112
call void @printl(i32 %v113)
%v115 = load %struct.Node*, %struct.Node** %currNode
%v116 = getelementptr %struct.Node, %struct.Node* %v115, i1 0, i32 2
%v117 = load %struct.Node*, %struct.Node** %v116
store %struct.Node* %v117, %struct.Node** %currNode
%v120 = load %struct.Node*, %struct.Node** %toFree
%v121 = bitcast %struct.Node* %v120 to i8*
call void @free(i8* %v121)
br label %LU16


LU18:


br label %LU15

LU15:


ret void 
}
define void @deathSort(%struct.Node* %_P_head)
{
LU4:


%head = alloca %struct.Node*
store %struct.Node* %_P_head, %struct.Node** %head
%swapped = alloca i32
%swap = alloca i32
%currNode = alloca %struct.Node*
store i32 1, i32* %swapped
br label %LU6

LU6:


%v26 = load i32, i32* %swapped
%v27 = icmp eq i32 %v26, 1
br i1 %v27, label %LU7, label %LU8

LU7:


store i32 0, i32* %swapped
%v32 = load %struct.Node*, %struct.Node** %head
store %struct.Node* %v32, %struct.Node** %currNode
br label %LU9

LU9:


%v36 = load %struct.Node*, %struct.Node** %currNode
%v37 = getelementptr %struct.Node, %struct.Node* %v36, i1 0, i32 2
%v38 = load %struct.Node*, %struct.Node** %v37
%v40 = load %struct.Node*, %struct.Node** %head
%v41 = icmp ne %struct.Node* %v38, %v40
br i1 %v41, label %LU10, label %LU11

LU10:


%v46 = load %struct.Node*, %struct.Node** %currNode
%v48 = load %struct.Node*, %struct.Node** %currNode
%v49 = getelementptr %struct.Node, %struct.Node* %v48, i1 0, i32 2
%v50 = load %struct.Node*, %struct.Node** %v49
%v44 = call i32 @compare(%struct.Node* %v46, %struct.Node* %v50)
%v51 = icmp sgt i32 %v44, 0
br i1 %v51, label %LU12, label %LU13

LU12:


%v55 = load %struct.Node*, %struct.Node** %currNode
%v56 = getelementptr %struct.Node, %struct.Node* %v55, i1 0, i32 0
%v57 = load i32, i32* %v56
store i32 %v57, i32* %swap
%v60 = load %struct.Node*, %struct.Node** %currNode
%v61 = getelementptr %struct.Node, %struct.Node* %v60, i1 0, i32 2
%v62 = load %struct.Node*, %struct.Node** %v61
%v63 = getelementptr %struct.Node, %struct.Node* %v62, i1 0, i32 0
%v64 = load i32, i32* %v63
%v66 = load %struct.Node*, %struct.Node** %currNode
%v67 = getelementptr %struct.Node, %struct.Node* %v66, i1 0, i32 0
store i32 %v64, i32* %v67
%v69 = load i32, i32* %swap
%v71 = load %struct.Node*, %struct.Node** %currNode
%v72 = getelementptr %struct.Node, %struct.Node* %v71, i1 0, i32 2
%v73 = load %struct.Node*, %struct.Node** %v72
%v74 = getelementptr %struct.Node, %struct.Node* %v73, i1 0, i32 0
store i32 %v69, i32* %v74
store i32 1, i32* %swapped
br label %LU13

LU13:


%v77 = load %struct.Node*, %struct.Node** %currNode
%v78 = getelementptr %struct.Node, %struct.Node* %v77, i1 0, i32 2
%v79 = load %struct.Node*, %struct.Node** %v78
store %struct.Node* %v79, %struct.Node** %currNode
br label %LU9



LU11:


br label %LU6


LU8:


br label %LU5

LU5:


ret void 
}
define i32 @compare(%struct.Node* %_P_a, %struct.Node* %_P_b)
{
LU2:


%a = alloca %struct.Node*
store %struct.Node* %_P_a, %struct.Node** %a
%b = alloca %struct.Node*
store %struct.Node* %_P_b, %struct.Node** %b
%v8 = load %struct.Node*, %struct.Node** %a
%v9 = getelementptr %struct.Node, %struct.Node* %v8, i1 0, i32 0
%v10 = load i32, i32* %v9
%v12 = load %struct.Node*, %struct.Node** %b
%v13 = getelementptr %struct.Node, %struct.Node* %v12, i1 0, i32 0
%v14 = load i32, i32* %v13
%v15 = sub i32 %v10, %v14
ret i32 %v15
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

