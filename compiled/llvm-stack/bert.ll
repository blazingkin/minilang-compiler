%struct.node = type {i32, %struct.node*}
%struct.tnode = type {i32, %struct.tnode*, %struct.tnode*}
%struct.i = type {i32}
%struct.myCopy = type {i1}
@a = common global i32 0, align 4
@b = common global i32 0, align 4
@i = common global %struct.i* null, align 4
define i32 @main()
{
LU96:


%i = alloca i32
%element = alloca i32
%myList = alloca %struct.node*
%copyList1 = alloca %struct.node*
%copyList2 = alloca %struct.node*
%sortedList = alloca %struct.node*
store %struct.node* null, %struct.node** %myList
store %struct.node* null, %struct.node** %copyList1
store %struct.node* null, %struct.node** %copyList2
store i32 0, i32* %i
br label %LU98

LU98:


%v658 = load i32, i32* %i
%v659 = icmp slt i32 %v658, 10
br i1 %v659, label %LU99, label %LU100

LU99:


%v662 = call i32 @readchar()
store i32 %v662, i32* %element
%v666 = load %struct.node*, %struct.node** %myList
%v668 = load i32, i32* %element
%v664 = call %struct.node* @add(%struct.node* %v666, i32 %v668)
store %struct.node* %v664, %struct.node** %myList
%v672 = load %struct.node*, %struct.node** %myList
%v670 = call %struct.node* @myCopy(%struct.node* %v672)
store %struct.node* %v670, %struct.node** %copyList1
%v676 = load %struct.node*, %struct.node** %myList
%v674 = call %struct.node* @myCopy(%struct.node* %v676)
store %struct.node* %v674, %struct.node** %copyList2
%v680 = load %struct.node*, %struct.node** %copyList1
%v678 = call %struct.node* @quickSortMain(%struct.node* %v680)
store %struct.node* %v678, %struct.node** %sortedList
%v684 = load %struct.node*, %struct.node** %sortedList
call void @freeList(%struct.node* %v684)
%v687 = load %struct.node*, %struct.node** %copyList2
call void @treeMain(%struct.node* %v687)
%v689 = load i32, i32* %i
%v690 = add i32 %v689, 1
store i32 %v690, i32* %i
br label %LU98


LU100:


%v694 = load %struct.node*, %struct.node** %myList
call void @freeList(%struct.node* %v694)
%v697 = load %struct.node*, %struct.node** %copyList1
call void @freeList(%struct.node* %v697)
%v700 = load %struct.node*, %struct.node** %copyList2
call void @freeList(%struct.node* %v700)
ret i32 0
br label %LU97

LU97:


ret i32 0
br label %LU97
}
define %struct.node* @myCopy(%struct.node* %_P_src)
{
LU92:


%src = alloca %struct.node*
store %struct.node* %_P_src, %struct.node** %src
%v629 = load %struct.node*, %struct.node** %src
%v630 = icmp eq %struct.node* %v629, null
br i1 %v630, label %LU94, label %LU95

LU94:


ret %struct.node* null
br label %LU93

LU93:


ret %struct.node* null
br label %LU93

LU95:


%v636 = load %struct.node*, %struct.node** %src
%v637 = getelementptr %struct.node, %struct.node* %v636, i1 0, i32 0
%v638 = load i32, i32* %v637
%v634 = call %struct.node* @add(%struct.node* null, i32 %v638)
%v641 = load %struct.node*, %struct.node** %src
%v642 = getelementptr %struct.node, %struct.node* %v641, i1 0, i32 1
%v643 = load %struct.node*, %struct.node** %v642
%v639 = call %struct.node* @myCopy(%struct.node* %v643)
%v633 = call %struct.node* @concatLists(%struct.node* %v634, %struct.node* %v639)
ret %struct.node* %v633
br label %LU93

}
define void @treeMain(%struct.node* %_P_list)
{
LU90:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%root = alloca %struct.tnode*
%inList = alloca %struct.node*
%postList = alloca %struct.node*
%v554 = load %struct.node*, %struct.node** %list
%v552 = call %struct.tnode* @buildTree(%struct.node* %v554)
store %struct.tnode* %v552, %struct.tnode** %root
%v558 = load %struct.tnode*, %struct.tnode** %root
call void @treeprint(%struct.tnode* %v558)
call void @printl(i32 -999)
%v561 = load %struct.tnode*, %struct.tnode** %root
%v559 = call %struct.node* @inOrder(%struct.tnode* %v561)
store %struct.node* %v559, %struct.node** %inList
%v565 = load %struct.node*, %struct.node** %inList
call void @printList(%struct.node* %v565)
call void @printl(i32 -999)
%v568 = load %struct.node*, %struct.node** %inList
call void @freeList(%struct.node* %v568)
%v571 = load %struct.tnode*, %struct.tnode** %root
%v569 = call %struct.node* @postOrder(%struct.tnode* %v571)
store %struct.node* %v569, %struct.node** %postList
%v575 = load %struct.node*, %struct.node** %postList
call void @printList(%struct.node* %v575)
call void @printl(i32 -999)
%v578 = load %struct.node*, %struct.node** %postList
call void @freeList(%struct.node* %v578)
%v581 = load %struct.tnode*, %struct.tnode** %root
%v579 = call i32 @treesearch(%struct.tnode* %v581, i32 0)
call void @printl(i32 %v579)
call void @printl(i32 -999)
%v584 = load %struct.tnode*, %struct.tnode** %root
%v582 = call i32 @treesearch(%struct.tnode* %v584, i32 10)
call void @printl(i32 %v582)
call void @printl(i32 -999)
%v587 = load %struct.tnode*, %struct.tnode** %root
%v585 = call i32 @treesearch(%struct.tnode* %v587, i32 -2)
call void @printl(i32 %v585)
call void @printl(i32 -999)
%v590 = load %struct.tnode*, %struct.tnode** %root
%v588 = call i32 @treesearch(%struct.tnode* %v590, i32 2)
call void @printl(i32 %v588)
call void @printl(i32 -999)
%v593 = load %struct.tnode*, %struct.tnode** %root
%v591 = call i32 @treesearch(%struct.tnode* %v593, i32 3)
call void @printl(i32 %v591)
call void @printl(i32 -999)
%v596 = load %struct.tnode*, %struct.tnode** %root
%v594 = call i32 @treesearch(%struct.tnode* %v596, i32 9)
call void @printl(i32 %v594)
call void @printl(i32 -999)
%v599 = load %struct.tnode*, %struct.tnode** %root
%v597 = call i32 @treesearch(%struct.tnode* %v599, i32 1)
call void @printl(i32 %v597)
call void @printl(i32 -999)
%v602 = load %struct.tnode*, %struct.tnode** %root
%v600 = call i32 @bintreesearch(%struct.tnode* %v602, i32 0)
call void @printl(i32 %v600)
call void @printl(i32 -999)
%v605 = load %struct.tnode*, %struct.tnode** %root
%v603 = call i32 @bintreesearch(%struct.tnode* %v605, i32 10)
call void @printl(i32 %v603)
call void @printl(i32 -999)
%v608 = load %struct.tnode*, %struct.tnode** %root
%v606 = call i32 @bintreesearch(%struct.tnode* %v608, i32 -2)
call void @printl(i32 %v606)
call void @printl(i32 -999)
%v611 = load %struct.tnode*, %struct.tnode** %root
%v609 = call i32 @bintreesearch(%struct.tnode* %v611, i32 2)
call void @printl(i32 %v609)
call void @printl(i32 -999)
%v614 = load %struct.tnode*, %struct.tnode** %root
%v612 = call i32 @bintreesearch(%struct.tnode* %v614, i32 3)
call void @printl(i32 %v612)
call void @printl(i32 -999)
%v617 = load %struct.tnode*, %struct.tnode** %root
%v615 = call i32 @bintreesearch(%struct.tnode* %v617, i32 9)
call void @printl(i32 %v615)
call void @printl(i32 -999)
%v620 = load %struct.tnode*, %struct.tnode** %root
%v618 = call i32 @bintreesearch(%struct.tnode* %v620, i32 1)
call void @printl(i32 %v618)
call void @printl(i32 -999)
%v623 = load %struct.tnode*, %struct.tnode** %root
call void @freeTree(%struct.tnode* %v623)
br label %LU91

LU91:


ret void 
}
define %struct.tnode* @buildTree(%struct.node* %_P_list)
{
LU85:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%i = alloca i32
%root = alloca %struct.tnode*
store %struct.tnode* null, %struct.tnode** %root
store i32 0, i32* %i
br label %LU87

LU87:


%v523 = load i32, i32* %i
%v526 = load %struct.node*, %struct.node** %list
%v524 = call i32 @size(%struct.node* %v526)
%v527 = icmp slt i32 %v523, %v524
br i1 %v527, label %LU88, label %LU89

LU88:


%v532 = load %struct.tnode*, %struct.tnode** %root
%v535 = load %struct.node*, %struct.node** %list
%v537 = load i32, i32* %i
%v533 = call i32 @get(%struct.node* %v535, i32 %v537)
%v530 = call %struct.tnode* @treeadd(%struct.tnode* %v532, i32 %v533)
store %struct.tnode* %v530, %struct.tnode** %root
%v540 = load i32, i32* %i
%v541 = add i32 %v540, 1
store i32 %v541, i32* %i
br label %LU87


LU89:


%v544 = load %struct.tnode*, %struct.tnode** %root
ret %struct.tnode* %v544
br label %LU86

LU86:


ret %struct.tnode* null
br label %LU86
}
define i32 @bintreesearch(%struct.tnode* %_P_root, i32 %_P_target)
{
LU76:


%root = alloca %struct.tnode*
store %struct.tnode* %_P_root, %struct.tnode** %root
%target = alloca i32
store i32 %_P_target, i32* %target
call void @printl(i32 -1)
%v476 = load %struct.tnode*, %struct.tnode** %root
%v477 = icmp ne %struct.tnode* %v476, null
br i1 %v477, label %LU78, label %LU79

LU78:


%v481 = load %struct.tnode*, %struct.tnode** %root
%v482 = getelementptr %struct.tnode, %struct.tnode* %v481, i1 0, i32 0
%v483 = load i32, i32* %v482
%v485 = load i32, i32* %target
%v486 = icmp eq i32 %v483, %v485
br i1 %v486, label %LU80, label %LU81

LU80:


ret i32 1
br label %LU77

LU77:


ret i32 0
br label %LU77

LU81:


%v490 = load i32, i32* %target
%v492 = load %struct.tnode*, %struct.tnode** %root
%v493 = getelementptr %struct.tnode, %struct.tnode* %v492, i1 0, i32 0
%v494 = load i32, i32* %v493
%v495 = icmp slt i32 %v490, %v494
br i1 %v495, label %LU82, label %LU84

LU82:


%v500 = load %struct.tnode*, %struct.tnode** %root
%v501 = getelementptr %struct.tnode, %struct.tnode* %v500, i1 0, i32 1
%v502 = load %struct.tnode*, %struct.tnode** %v501
%v504 = load i32, i32* %target
%v498 = call i32 @bintreesearch(%struct.tnode* %v502, i32 %v504)
ret i32 %v498
br label %LU77


LU84:


%v508 = load %struct.tnode*, %struct.tnode** %root
%v509 = getelementptr %struct.tnode, %struct.tnode* %v508, i1 0, i32 2
%v510 = load %struct.tnode*, %struct.tnode** %v509
%v512 = load i32, i32* %target
%v506 = call i32 @bintreesearch(%struct.tnode* %v510, i32 %v512)
ret i32 %v506
br label %LU77


LU79:


ret i32 0
br label %LU77

}
define %struct.node* @inOrder(%struct.tnode* %_P_root)
{
LU71:


%root = alloca %struct.tnode*
store %struct.tnode* %_P_root, %struct.tnode** %root
%temp = alloca %struct.node*
%v437 = load %struct.tnode*, %struct.tnode** %root
%v438 = icmp ne %struct.tnode* %v437, null
br i1 %v438, label %LU73, label %LU75

LU73:


%v441 = call i8* @malloc(i32 8)
%v442 = bitcast i8* %v441 to %struct.node*
store %struct.node* %v442, %struct.node** %temp
%v445 = load %struct.tnode*, %struct.tnode** %root
%v446 = getelementptr %struct.tnode, %struct.tnode* %v445, i1 0, i32 0
%v447 = load i32, i32* %v446
%v449 = load %struct.node*, %struct.node** %temp
%v450 = getelementptr %struct.node, %struct.node* %v449, i1 0, i32 0
store i32 %v447, i32* %v450
%v452 = load %struct.node*, %struct.node** %temp
%v453 = getelementptr %struct.node, %struct.node* %v452, i1 0, i32 1
store %struct.node* null, %struct.node** %v453
%v457 = load %struct.tnode*, %struct.tnode** %root
%v458 = getelementptr %struct.tnode, %struct.tnode* %v457, i1 0, i32 1
%v459 = load %struct.tnode*, %struct.tnode** %v458
%v455 = call %struct.node* @inOrder(%struct.tnode* %v459)
%v462 = load %struct.node*, %struct.node** %temp
%v465 = load %struct.tnode*, %struct.tnode** %root
%v466 = getelementptr %struct.tnode, %struct.tnode* %v465, i1 0, i32 2
%v467 = load %struct.tnode*, %struct.tnode** %v466
%v463 = call %struct.node* @inOrder(%struct.tnode* %v467)
%v460 = call %struct.node* @concatLists(%struct.node* %v462, %struct.node* %v463)
%v454 = call %struct.node* @concatLists(%struct.node* %v455, %struct.node* %v460)
ret %struct.node* %v454
br label %LU72

LU72:


ret %struct.node* null
br label %LU72

LU75:


ret %struct.node* null
br label %LU72

}
define i32 @treesearch(%struct.tnode* %_P_root, i32 %_P_target)
{
LU60:


%root = alloca %struct.tnode*
store %struct.tnode* %_P_root, %struct.tnode** %root
%target = alloca i32
store i32 %_P_target, i32* %target
call void @printl(i32 -1)
%v397 = load %struct.tnode*, %struct.tnode** %root
%v398 = icmp ne %struct.tnode* %v397, null
br i1 %v398, label %LU62, label %LU63

LU62:


%v402 = load %struct.tnode*, %struct.tnode** %root
%v403 = getelementptr %struct.tnode, %struct.tnode* %v402, i1 0, i32 0
%v404 = load i32, i32* %v403
%v406 = load i32, i32* %target
%v407 = icmp eq i32 %v404, %v406
br i1 %v407, label %LU64, label %LU65

LU64:


ret i32 1
br label %LU61

LU61:


ret i32 0
br label %LU61

LU65:


%v412 = load %struct.tnode*, %struct.tnode** %root
%v413 = getelementptr %struct.tnode, %struct.tnode* %v412, i1 0, i32 1
%v414 = load %struct.tnode*, %struct.tnode** %v413
%v416 = load i32, i32* %target
%v410 = call i32 @treesearch(%struct.tnode* %v414, i32 %v416)
%v417 = icmp eq i32 %v410, 1
br i1 %v417, label %LU66, label %LU67

LU66:


ret i32 1
br label %LU61


LU67:


%v422 = load %struct.tnode*, %struct.tnode** %root
%v423 = getelementptr %struct.tnode, %struct.tnode* %v422, i1 0, i32 2
%v424 = load %struct.tnode*, %struct.tnode** %v423
%v426 = load i32, i32* %target
%v420 = call i32 @treesearch(%struct.tnode* %v424, i32 %v426)
%v427 = icmp eq i32 %v420, 1
br i1 %v427, label %LU68, label %LU70

LU68:


ret i32 1
br label %LU61


LU70:


ret i32 0
br label %LU61


LU63:


ret i32 0
br label %LU61

}
define %struct.node* @quickSortMain(%struct.node* %_P_list)
{
LU58:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%v383 = load %struct.node*, %struct.node** %list
call void @printList(%struct.node* %v383)
call void @printl(i32 -999)
%v386 = load %struct.node*, %struct.node** %list
call void @printList(%struct.node* %v386)
call void @printl(i32 -999)
%v389 = load %struct.node*, %struct.node** %list
call void @printList(%struct.node* %v389)
call void @printl(i32 -999)
ret %struct.node* null
br label %LU59

LU59:


ret %struct.node* null
br label %LU59
}
define %struct.node* @quickSort(%struct.node* %_P_list)
{
LU48:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%pivot = alloca i32
%i = alloca i32
%less = alloca %struct.node*
%greater = alloca %struct.node*
%temp = alloca %struct.node*
store %struct.node* null, %struct.node** %less
store %struct.node* null, %struct.node** %greater
%v300 = load %struct.node*, %struct.node** %list
%v298 = call i32 @size(%struct.node* %v300)
%v301 = icmp sle i32 %v298, 1
br i1 %v301, label %LU50, label %LU51

LU50:


%v305 = load %struct.node*, %struct.node** %list
ret %struct.node* %v305
br label %LU49

LU49:


ret %struct.node* null
br label %LU49

LU51:


%v308 = load %struct.node*, %struct.node** %list
%v306 = call i32 @get(%struct.node* %v308, i32 0)
%v311 = load %struct.node*, %struct.node** %list
%v314 = load %struct.node*, %struct.node** %list
%v312 = call i32 @size(%struct.node* %v314)
%v315 = sub i32 %v312, 1
%v309 = call i32 @get(%struct.node* %v311, i32 %v315)
%v316 = add i32 %v306, %v309
%v317 = sdiv i32 %v316, 2
store i32 %v317, i32* %pivot
%v320 = load %struct.node*, %struct.node** %list
store %struct.node* %v320, %struct.node** %temp
store i32 0, i32* %i
br label %LU52

LU52:


%v325 = load %struct.node*, %struct.node** %temp
%v326 = icmp ne %struct.node* %v325, null
br i1 %v326, label %LU53, label %LU54

LU53:


%v331 = load %struct.node*, %struct.node** %list
%v333 = load i32, i32* %i
%v329 = call i32 @get(%struct.node* %v331, i32 %v333)
%v335 = load i32, i32* %pivot
%v336 = icmp sgt i32 %v329, %v335
br i1 %v336, label %LU55, label %LU57

LU55:


%v341 = load %struct.node*, %struct.node** %greater
%v344 = load %struct.node*, %struct.node** %list
%v346 = load i32, i32* %i
%v342 = call i32 @get(%struct.node* %v344, i32 %v346)
%v339 = call %struct.node* @add(%struct.node* %v341, i32 %v342)
store %struct.node* %v339, %struct.node** %greater
br label %LU56

LU56:


%v359 = load %struct.node*, %struct.node** %temp
%v360 = getelementptr %struct.node, %struct.node* %v359, i1 0, i32 1
%v361 = load %struct.node*, %struct.node** %v360
store %struct.node* %v361, %struct.node** %temp
%v364 = load i32, i32* %i
%v365 = add i32 %v364, 1
store i32 %v365, i32* %i
br label %LU52


LU57:


%v351 = load %struct.node*, %struct.node** %less
%v354 = load %struct.node*, %struct.node** %list
%v356 = load i32, i32* %i
%v352 = call i32 @get(%struct.node* %v354, i32 %v356)
%v349 = call %struct.node* @add(%struct.node* %v351, i32 %v352)
store %struct.node* %v349, %struct.node** %less
br label %LU56


LU54:


%v369 = load %struct.node*, %struct.node** %list
call void @freeList(%struct.node* %v369)
%v373 = load %struct.node*, %struct.node** %less
%v371 = call %struct.node* @quickSort(%struct.node* %v373)
%v376 = load %struct.node*, %struct.node** %greater
%v374 = call %struct.node* @quickSort(%struct.node* %v376)
%v370 = call %struct.node* @concatLists(%struct.node* %v371, %struct.node* %v374)
ret %struct.node* %v370
br label %LU49

}
define %struct.tnode* @treeadd(%struct.tnode* %_P_root, i32 %_P_toAdd)
{
LU41:


%root = alloca %struct.tnode*
store %struct.tnode* %_P_root, %struct.tnode** %root
%toAdd = alloca i32
store i32 %_P_toAdd, i32* %toAdd
%temp = alloca %struct.tnode*
%v235 = load %struct.tnode*, %struct.tnode** %root
%v236 = icmp eq %struct.tnode* %v235, null
br i1 %v236, label %LU43, label %LU44

LU43:


%v239 = call i8* @malloc(i32 12)
%v240 = bitcast i8* %v239 to %struct.tnode*
store %struct.tnode* %v240, %struct.tnode** %temp
%v243 = load i32, i32* %toAdd
%v245 = load %struct.tnode*, %struct.tnode** %temp
%v246 = getelementptr %struct.tnode, %struct.tnode* %v245, i1 0, i32 0
store i32 %v243, i32* %v246
%v248 = load %struct.tnode*, %struct.tnode** %temp
%v249 = getelementptr %struct.tnode, %struct.tnode* %v248, i1 0, i32 1
store %struct.tnode* null, %struct.tnode** %v249
%v251 = load %struct.tnode*, %struct.tnode** %temp
%v252 = getelementptr %struct.tnode, %struct.tnode* %v251, i1 0, i32 2
store %struct.tnode* null, %struct.tnode** %v252
%v254 = load %struct.tnode*, %struct.tnode** %temp
ret %struct.tnode* %v254
br label %LU42

LU42:


ret %struct.tnode* null
br label %LU42

LU44:


%v256 = load i32, i32* %toAdd
%v258 = load %struct.tnode*, %struct.tnode** %root
%v259 = getelementptr %struct.tnode, %struct.tnode* %v258, i1 0, i32 0
%v260 = load i32, i32* %v259
%v261 = icmp slt i32 %v256, %v260
br i1 %v261, label %LU45, label %LU47

LU45:


%v266 = load %struct.tnode*, %struct.tnode** %root
%v267 = getelementptr %struct.tnode, %struct.tnode* %v266, i1 0, i32 1
%v268 = load %struct.tnode*, %struct.tnode** %v267
%v270 = load i32, i32* %toAdd
%v264 = call %struct.tnode* @treeadd(%struct.tnode* %v268, i32 %v270)
%v272 = load %struct.tnode*, %struct.tnode** %root
%v273 = getelementptr %struct.tnode, %struct.tnode* %v272, i1 0, i32 1
store %struct.tnode* %v264, %struct.tnode** %v273
br label %LU46

LU46:


%v286 = load %struct.tnode*, %struct.tnode** %root
ret %struct.tnode* %v286
br label %LU42


LU47:


%v277 = load %struct.tnode*, %struct.tnode** %root
%v278 = getelementptr %struct.tnode, %struct.tnode* %v277, i1 0, i32 2
%v279 = load %struct.tnode*, %struct.tnode** %v278
%v281 = load i32, i32* %toAdd
%v275 = call %struct.tnode* @treeadd(%struct.tnode* %v279, i32 %v281)
%v283 = load %struct.tnode*, %struct.tnode** %root
%v284 = getelementptr %struct.tnode, %struct.tnode* %v283, i1 0, i32 2
store %struct.tnode* %v275, %struct.tnode** %v284
br label %LU46

}
define %struct.node* @postOrder(%struct.tnode* %_P_root)
{
LU37:


%root = alloca %struct.tnode*
store %struct.tnode* %_P_root, %struct.tnode** %root
%temp = alloca %struct.node*
%v196 = load %struct.tnode*, %struct.tnode** %root
%v197 = icmp ne %struct.tnode* %v196, null
br i1 %v197, label %LU39, label %LU40

LU39:


%v200 = call i8* @malloc(i32 8)
%v201 = bitcast i8* %v200 to %struct.node*
store %struct.node* %v201, %struct.node** %temp
%v204 = load %struct.tnode*, %struct.tnode** %root
%v205 = getelementptr %struct.tnode, %struct.tnode* %v204, i1 0, i32 0
%v206 = load i32, i32* %v205
%v208 = load %struct.node*, %struct.node** %temp
%v209 = getelementptr %struct.node, %struct.node* %v208, i1 0, i32 0
store i32 %v206, i32* %v209
%v211 = load %struct.node*, %struct.node** %temp
%v212 = getelementptr %struct.node, %struct.node* %v211, i1 0, i32 1
store %struct.node* null, %struct.node** %v212
%v217 = load %struct.tnode*, %struct.tnode** %root
%v218 = getelementptr %struct.tnode, %struct.tnode* %v217, i1 0, i32 1
%v219 = load %struct.tnode*, %struct.tnode** %v218
%v215 = call %struct.node* @postOrder(%struct.tnode* %v219)
%v222 = load %struct.tnode*, %struct.tnode** %root
%v223 = getelementptr %struct.tnode, %struct.tnode* %v222, i1 0, i32 2
%v224 = load %struct.tnode*, %struct.tnode** %v223
%v220 = call %struct.node* @postOrder(%struct.tnode* %v224)
%v214 = call %struct.node* @concatLists(%struct.node* %v215, %struct.node* %v220)
%v226 = load %struct.node*, %struct.node** %temp
%v213 = call %struct.node* @concatLists(%struct.node* %v214, %struct.node* %v226)
ret %struct.node* %v213
br label %LU38

LU38:


ret %struct.node* null
br label %LU38

LU40:


ret %struct.node* null
br label %LU38

}
define void @freeTree(%struct.tnode* %_P_root)
{
LU33:


%root = alloca %struct.tnode*
store %struct.tnode* %_P_root, %struct.tnode** %root
%v172 = load %struct.tnode*, %struct.tnode** %root
%v173 = icmp eq %struct.tnode* %v172, null
%v174 = xor i1 1, %v173
br i1 %v174, label %LU35, label %LU36

LU35:


%v179 = load %struct.tnode*, %struct.tnode** %root
%v180 = getelementptr %struct.tnode, %struct.tnode* %v179, i1 0, i32 1
%v181 = load %struct.tnode*, %struct.tnode** %v180
call void @freeTree(%struct.tnode* %v181)
%v184 = load %struct.tnode*, %struct.tnode** %root
%v185 = getelementptr %struct.tnode, %struct.tnode* %v184, i1 0, i32 2
%v186 = load %struct.tnode*, %struct.tnode** %v185
call void @freeTree(%struct.tnode* %v186)
%v188 = load %struct.tnode*, %struct.tnode** %root
%v189 = bitcast %struct.tnode* %v188 to i8*
call void @free(i8* %v189)
br label %LU36

LU36:


br label %LU34

LU34:


ret void 

}
define void @freeList(%struct.node* %_P_list)
{
LU29:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%v155 = load %struct.node*, %struct.node** %list
%v156 = icmp ne %struct.node* %v155, null
br i1 %v156, label %LU31, label %LU32

LU31:


%v161 = load %struct.node*, %struct.node** %list
%v162 = getelementptr %struct.node, %struct.node* %v161, i1 0, i32 1
%v163 = load %struct.node*, %struct.node** %v162
call void @freeList(%struct.node* %v163)
%v165 = load %struct.node*, %struct.node** %list
%v166 = bitcast %struct.node* %v165 to i8*
call void @free(i8* %v166)
br label %LU32

LU32:


br label %LU30

LU30:


ret void 

}
define void @treeprint(%struct.tnode* %_P_root)
{
LU25:


%root = alloca %struct.tnode*
store %struct.tnode* %_P_root, %struct.tnode** %root
%v132 = load %struct.tnode*, %struct.tnode** %root
%v133 = icmp ne %struct.tnode* %v132, null
br i1 %v133, label %LU27, label %LU28

LU27:


%v138 = load %struct.tnode*, %struct.tnode** %root
%v139 = getelementptr %struct.tnode, %struct.tnode* %v138, i1 0, i32 1
%v140 = load %struct.tnode*, %struct.tnode** %v139
call void @treeprint(%struct.tnode* %v140)
%v142 = load %struct.tnode*, %struct.tnode** %root
%v143 = getelementptr %struct.tnode, %struct.tnode* %v142, i1 0, i32 0
%v144 = load i32, i32* %v143
call void @printl(i32 %v144)
%v147 = load %struct.tnode*, %struct.tnode** %root
%v148 = getelementptr %struct.tnode, %struct.tnode* %v147, i1 0, i32 2
%v149 = load %struct.tnode*, %struct.tnode** %v148
call void @treeprint(%struct.tnode* %v149)
br label %LU28

LU28:


br label %LU26

LU26:


ret void 

}
define void @printList(%struct.node* %_P_list)
{
LU21:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%v114 = load %struct.node*, %struct.node** %list
%v115 = icmp ne %struct.node* %v114, null
br i1 %v115, label %LU23, label %LU24

LU23:


%v119 = load %struct.node*, %struct.node** %list
%v120 = getelementptr %struct.node, %struct.node* %v119, i1 0, i32 0
%v121 = load i32, i32* %v120
call void @printl(i32 %v121)
%v124 = load %struct.node*, %struct.node** %list
%v125 = getelementptr %struct.node, %struct.node* %v124, i1 0, i32 1
%v126 = load %struct.node*, %struct.node** %v125
call void @printList(%struct.node* %v126)
br label %LU24

LU24:


br label %LU22

LU22:


ret void 

}
define %struct.node* @pop(%struct.node* %_P_list)
{
LU19:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%v103 = load %struct.node*, %struct.node** %list
%v104 = getelementptr %struct.node, %struct.node* %v103, i1 0, i32 1
%v105 = load %struct.node*, %struct.node** %v104
store %struct.node* %v105, %struct.node** %list
%v108 = load %struct.node*, %struct.node** %list
ret %struct.node* %v108
br label %LU20

LU20:


ret %struct.node* null
br label %LU20
}
define i32 @get(%struct.node* %_P_list, i32 %_P_index)
{
LU15:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%index = alloca i32
store i32 %_P_index, i32* %index
%v82 = load i32, i32* %index
%v83 = icmp eq i32 %v82, 0
br i1 %v83, label %LU17, label %LU18

LU17:


%v87 = load %struct.node*, %struct.node** %list
%v88 = getelementptr %struct.node, %struct.node* %v87, i1 0, i32 0
%v89 = load i32, i32* %v88
ret i32 %v89
br label %LU16

LU16:


ret i32 0
br label %LU16

LU18:


%v92 = load %struct.node*, %struct.node** %list
%v93 = getelementptr %struct.node, %struct.node* %v92, i1 0, i32 1
%v94 = load %struct.node*, %struct.node** %v93
%v96 = load i32, i32* %index
%v97 = sub i32 %v96, 1
%v90 = call i32 @get(%struct.node* %v94, i32 %v97)
ret i32 %v90
br label %LU16

}
define i32 @size(%struct.node* %_P_list)
{
LU11:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%v65 = load %struct.node*, %struct.node** %list
%v66 = icmp eq %struct.node* %v65, null
br i1 %v66, label %LU13, label %LU14

LU13:


ret i32 0
br label %LU12

LU12:


ret i32 0
br label %LU12

LU14:


%v71 = load %struct.node*, %struct.node** %list
%v72 = getelementptr %struct.node, %struct.node* %v71, i1 0, i32 1
%v73 = load %struct.node*, %struct.node** %v72
%v69 = call i32 @size(%struct.node* %v73)
%v74 = add i32 1, %v69
ret i32 %v74
br label %LU12

}
define %struct.node* @add(%struct.node* %_P_list, i32 %_P_toAdd)
{
LU9:


%list = alloca %struct.node*
store %struct.node* %_P_list, %struct.node** %list
%toAdd = alloca i32
store i32 %_P_toAdd, i32* %toAdd
%newNode = alloca %struct.node*
%v45 = call i8* @malloc(i32 8)
%v46 = bitcast i8* %v45 to %struct.node*
store %struct.node* %v46, %struct.node** %newNode
%v49 = load i32, i32* %toAdd
%v51 = load %struct.node*, %struct.node** %newNode
%v52 = getelementptr %struct.node, %struct.node* %v51, i1 0, i32 0
store i32 %v49, i32* %v52
%v54 = load %struct.node*, %struct.node** %list
%v56 = load %struct.node*, %struct.node** %newNode
%v57 = getelementptr %struct.node, %struct.node* %v56, i1 0, i32 1
store %struct.node* %v54, %struct.node** %v57
%v59 = load %struct.node*, %struct.node** %newNode
ret %struct.node* %v59
br label %LU10

LU10:


ret %struct.node* null
br label %LU10
}
define %struct.node* @concatLists(%struct.node* %_P_first, %struct.node* %_P_second)
{
LU2:


%first = alloca %struct.node*
store %struct.node* %_P_first, %struct.node** %first
%second = alloca %struct.node*
store %struct.node* %_P_second, %struct.node** %second
%temp = alloca %struct.node*
%v9 = load %struct.node*, %struct.node** %first
store %struct.node* %v9, %struct.node** %temp
%v12 = load %struct.node*, %struct.node** %first
%v13 = icmp eq %struct.node* %v12, null
br i1 %v13, label %LU4, label %LU5

LU4:


%v17 = load %struct.node*, %struct.node** %second
ret %struct.node* %v17
br label %LU3

LU3:


ret %struct.node* null
br label %LU3

LU5:


br label %LU6

LU6:


%v20 = load %struct.node*, %struct.node** %temp
%v21 = getelementptr %struct.node, %struct.node* %v20, i1 0, i32 1
%v22 = load %struct.node*, %struct.node** %v21
%v23 = icmp ne %struct.node* %v22, null
br i1 %v23, label %LU7, label %LU8

LU7:


%v27 = load %struct.node*, %struct.node** %temp
%v28 = getelementptr %struct.node, %struct.node* %v27, i1 0, i32 1
%v29 = load %struct.node*, %struct.node** %v28
store %struct.node* %v29, %struct.node** %temp
br label %LU6


LU8:


%v32 = load %struct.node*, %struct.node** %second
%v34 = load %struct.node*, %struct.node** %temp
%v35 = getelementptr %struct.node, %struct.node* %v34, i1 0, i32 1
store %struct.node* %v32, %struct.node** %v35
%v37 = load %struct.node*, %struct.node** %first
ret %struct.node* %v37
br label %LU3

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

