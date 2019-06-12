@global1 = common global i32 0, align 4
@global2 = common global i32 0, align 4
@global3 = common global i32 0, align 4
define i32 @main()
{
LU72:


%input = alloca i32
%result = alloca i32
%i = alloca i32
%v1214 = call i32 @readchar()
store i32 %v1214, i32* %input
store i32 1, i32* %i
br label %LU74

LU74:


%v1219 = load i32, i32* %i
%v1221 = load i32, i32* %input
%v1222 = icmp slt i32 %v1219, %v1221
br i1 %v1222, label %LU75, label %LU76

LU75:


%v1225 = call i32 @constantFolding()
store i32 %v1225, i32* %result
%v1228 = load i32, i32* %result
call void @printl(i32 %v1228)
%v1229 = call i32 @constantPropagation()
store i32 %v1229, i32* %result
%v1232 = load i32, i32* %result
call void @printl(i32 %v1232)
%v1233 = call i32 @deadCodeElimination()
store i32 %v1233, i32* %result
%v1236 = load i32, i32* %result
call void @printl(i32 %v1236)
%v1237 = call i32 @interProceduralOptimization()
store i32 %v1237, i32* %result
%v1240 = load i32, i32* %result
call void @printl(i32 %v1240)
%v1241 = call i32 @commonSubexpressionElimination()
store i32 %v1241, i32* %result
%v1244 = load i32, i32* %result
call void @printl(i32 %v1244)
%v1245 = call i32 @hoisting()
store i32 %v1245, i32* %result
%v1248 = load i32, i32* %result
call void @printl(i32 %v1248)
%v1249 = call i32 @doubleIf()
store i32 %v1249, i32* %result
%v1252 = load i32, i32* %result
call void @printl(i32 %v1252)
%v1253 = call i32 @integerDivide()
store i32 %v1253, i32* %result
%v1256 = load i32, i32* %result
call void @printl(i32 %v1256)
%v1257 = call i32 @association()
store i32 %v1257, i32* %result
%v1260 = load i32, i32* %result
call void @printl(i32 %v1260)
%v1263 = load i32, i32* %input
%v1264 = sdiv i32 %v1263, 1000
%v1261 = call i32 @tailRecursion(i32 %v1264)
store i32 %v1261, i32* %result
%v1267 = load i32, i32* %result
call void @printl(i32 %v1267)
%v1268 = call i32 @unswitching()
store i32 %v1268, i32* %result
%v1271 = load i32, i32* %result
call void @printl(i32 %v1271)
%v1274 = load i32, i32* %input
%v1272 = call i32 @randomCalculation(i32 %v1274)
store i32 %v1272, i32* %result
%v1277 = load i32, i32* %result
call void @printl(i32 %v1277)
%v1280 = load i32, i32* %input
%v1281 = sdiv i32 %v1280, 5
%v1278 = call i32 @iterativeFibonacci(i32 %v1281)
store i32 %v1278, i32* %result
%v1284 = load i32, i32* %result
call void @printl(i32 %v1284)
%v1287 = load i32, i32* %input
%v1288 = sdiv i32 %v1287, 1000
%v1285 = call i32 @recursiveFibonacci(i32 %v1288)
store i32 %v1285, i32* %result
%v1291 = load i32, i32* %result
call void @printl(i32 %v1291)
%v1293 = load i32, i32* %i
%v1294 = add i32 %v1293, 1
store i32 %v1294, i32* %i
br label %LU74


LU76:


call void @printl(i32 9999)
ret i32 0
br label %LU73

LU73:


ret i32 0
br label %LU73
}
define i32 @recursiveFibonacci(i32 %_P_number)
{
LU67:


%number = alloca i32
store i32 %_P_number, i32* %number
%v1189 = load i32, i32* %number
%v1190 = icmp sle i32 %v1189, 0
%v1192 = load i32, i32* %number
%v1193 = icmp eq i32 %v1192, 1
%v1194 = or i1 %v1190, %v1193
br i1 %v1194, label %LU69, label %LU71

LU69:


%v1198 = load i32, i32* %number
ret i32 %v1198
br label %LU68

LU68:


ret i32 0
br label %LU68

LU71:


%v1202 = load i32, i32* %number
%v1203 = sub i32 %v1202, 1
%v1200 = call i32 @recursiveFibonacci(i32 %v1203)
%v1206 = load i32, i32* %number
%v1207 = sub i32 %v1206, 2
%v1204 = call i32 @recursiveFibonacci(i32 %v1207)
%v1208 = add i32 %v1200, %v1204
ret i32 %v1208
br label %LU68

}
define i32 @iterativeFibonacci(i32 %_P_number)
{
LU62:


%number = alloca i32
store i32 %_P_number, i32* %number
%previous = alloca i32
%result = alloca i32
%count = alloca i32
%i = alloca i32
%sum = alloca i32
store i32 -1, i32* %previous
store i32 1, i32* %result
store i32 0, i32* %i
br label %LU64

LU64:


%v1160 = load i32, i32* %i
%v1162 = load i32, i32* %number
%v1163 = icmp slt i32 %v1160, %v1162
br i1 %v1163, label %LU65, label %LU66

LU65:


%v1167 = load i32, i32* %result
%v1169 = load i32, i32* %previous
%v1170 = add i32 %v1167, %v1169
store i32 %v1170, i32* %sum
%v1173 = load i32, i32* %result
store i32 %v1173, i32* %previous
%v1176 = load i32, i32* %sum
store i32 %v1176, i32* %result
%v1179 = load i32, i32* %i
%v1180 = add i32 %v1179, 1
store i32 %v1180, i32* %i
br label %LU64


LU66:


%v1183 = load i32, i32* %result
ret i32 %v1183
br label %LU63

LU63:


ret i32 0
br label %LU63
}
define i32 @randomCalculation(i32 %_P_number)
{
LU57:


%number = alloca i32
store i32 %_P_number, i32* %number
%a = alloca i32
%b = alloca i32
%c = alloca i32
%d = alloca i32
%e = alloca i32
%i = alloca i32
%sum = alloca i32
store i32 0, i32* %i
store i32 0, i32* %sum
br label %LU59

LU59:


%v1089 = load i32, i32* %i
%v1091 = load i32, i32* %number
%v1092 = icmp slt i32 %v1089, %v1091
br i1 %v1092, label %LU60, label %LU61

LU60:


store i32 4, i32* %a
store i32 7, i32* %b
store i32 8, i32* %c
%v1099 = load i32, i32* %a
%v1101 = load i32, i32* %b
%v1102 = add i32 %v1099, %v1101
store i32 %v1102, i32* %d
%v1105 = load i32, i32* %d
%v1107 = load i32, i32* %c
%v1108 = add i32 %v1105, %v1107
store i32 %v1108, i32* %e
%v1111 = load i32, i32* %sum
%v1113 = load i32, i32* %e
%v1114 = add i32 %v1111, %v1113
store i32 %v1114, i32* %sum
%v1117 = load i32, i32* %i
%v1118 = mul i32 %v1117, 2
store i32 %v1118, i32* %i
%v1121 = load i32, i32* %i
%v1122 = sdiv i32 %v1121, 2
store i32 %v1122, i32* %i
%v1125 = load i32, i32* %i
%v1126 = mul i32 3, %v1125
store i32 %v1126, i32* %i
%v1129 = load i32, i32* %i
%v1130 = sdiv i32 %v1129, 3
store i32 %v1130, i32* %i
%v1133 = load i32, i32* %i
%v1134 = mul i32 %v1133, 4
store i32 %v1134, i32* %i
%v1137 = load i32, i32* %i
%v1138 = sdiv i32 %v1137, 4
store i32 %v1138, i32* %i
%v1141 = load i32, i32* %i
%v1142 = add i32 %v1141, 1
store i32 %v1142, i32* %i
br label %LU59


LU61:


%v1145 = load i32, i32* %sum
ret i32 %v1145
br label %LU58

LU58:


ret i32 0
br label %LU58
}
define i32 @unswitching()
{
LU49:


%a = alloca i32
%b = alloca i32
store i32 1, i32* %a
store i32 2, i32* %b
br label %LU51

LU51:


%v1054 = load i32, i32* %a
%v1055 = icmp slt i32 %v1054, 1000000
br i1 %v1055, label %LU52, label %LU53

LU52:


%v1059 = load i32, i32* %b
%v1060 = icmp eq i32 %v1059, 2
br i1 %v1060, label %LU54, label %LU56

LU54:


%v1064 = load i32, i32* %a
%v1065 = add i32 %v1064, 1
store i32 %v1065, i32* %a
br label %LU55

LU55:


br label %LU51


LU56:


%v1069 = load i32, i32* %a
%v1070 = add i32 %v1069, 2
store i32 %v1070, i32* %a
br label %LU55


LU53:


%v1073 = load i32, i32* %a
ret i32 %v1073
br label %LU50

LU50:


ret i32 0
br label %LU50
}
define i32 @tailRecursion(i32 %_P_value)
{
LU47:


%value = alloca i32
store i32 %_P_value, i32* %value
%v1045 = load i32, i32* %value
%v1043 = call i32 @tailRecursionHelper(i32 %v1045, i32 0)
ret i32 %v1043
br label %LU48

LU48:


ret i32 0
br label %LU48
}
define i32 @tailRecursionHelper(i32 %_P_value, i32 %_P_sum)
{
LU42:


%value = alloca i32
store i32 %_P_value, i32* %value
%sum = alloca i32
store i32 %_P_sum, i32* %sum
%v1023 = load i32, i32* %value
%v1024 = icmp eq i32 %v1023, 0
br i1 %v1024, label %LU44, label %LU46

LU44:


%v1028 = load i32, i32* %sum
ret i32 %v1028
br label %LU43

LU43:


ret i32 0
br label %LU43

LU46:


%v1032 = load i32, i32* %value
%v1033 = sub i32 %v1032, 1
%v1035 = load i32, i32* %sum
%v1037 = load i32, i32* %value
%v1038 = add i32 %v1035, %v1037
%v1030 = call i32 @tailRecursionHelper(i32 %v1033, i32 %v1038)
ret i32 %v1030
br label %LU43

}
define i32 @association()
{
LU40:


%a = alloca i32
store i32 10, i32* %a
%v975 = load i32, i32* %a
%v976 = mul i32 %v975, 2
store i32 %v976, i32* %a
%v979 = load i32, i32* %a
%v980 = sdiv i32 %v979, 2
store i32 %v980, i32* %a
%v983 = load i32, i32* %a
%v984 = mul i32 3, %v983
store i32 %v984, i32* %a
%v987 = load i32, i32* %a
%v988 = sdiv i32 %v987, 3
store i32 %v988, i32* %a
%v991 = load i32, i32* %a
%v992 = mul i32 %v991, 4
store i32 %v992, i32* %a
%v995 = load i32, i32* %a
%v996 = sdiv i32 %v995, 4
store i32 %v996, i32* %a
%v999 = load i32, i32* %a
%v1000 = add i32 %v999, 4
store i32 %v1000, i32* %a
%v1003 = load i32, i32* %a
%v1004 = sub i32 %v1003, 4
store i32 %v1004, i32* %a
%v1007 = load i32, i32* %a
%v1008 = mul i32 %v1007, 50
store i32 %v1008, i32* %a
%v1011 = load i32, i32* %a
%v1012 = sdiv i32 %v1011, 50
store i32 %v1012, i32* %a
%v1015 = load i32, i32* %a
ret i32 %v1015
br label %LU41

LU41:


ret i32 0
br label %LU41
}
define i32 @commonSubexpressionElimination()
{
LU24:


%a = alloca i32
%b = alloca i32
%c = alloca i32
%d = alloca i32
%e = alloca i32
%f = alloca i32
%g = alloca i32
%h = alloca i32
%i = alloca i32
%j = alloca i32
%k = alloca i32
%l = alloca i32
%m = alloca i32
%n = alloca i32
%o = alloca i32
%p = alloca i32
%q = alloca i32
%r = alloca i32
%s = alloca i32
%t = alloca i32
%u = alloca i32
%v = alloca i32
%w = alloca i32
%x = alloca i32
%y = alloca i32
%z = alloca i32
store i32 11, i32* %a
store i32 22, i32* %b
store i32 33, i32* %c
store i32 44, i32* %d
store i32 55, i32* %e
store i32 66, i32* %f
store i32 77, i32* %g
%v425 = load i32, i32* %a
%v427 = load i32, i32* %b
%v428 = mul i32 %v425, %v427
store i32 %v428, i32* %h
%v431 = load i32, i32* %c
%v433 = load i32, i32* %d
%v434 = sdiv i32 %v431, %v433
store i32 %v434, i32* %i
%v437 = load i32, i32* %e
%v439 = load i32, i32* %f
%v440 = mul i32 %v437, %v439
store i32 %v440, i32* %j
%v443 = load i32, i32* %a
%v445 = load i32, i32* %b
%v446 = mul i32 %v443, %v445
%v448 = load i32, i32* %c
%v450 = load i32, i32* %d
%v451 = sdiv i32 %v448, %v450
%v452 = add i32 %v446, %v451
%v454 = load i32, i32* %e
%v456 = load i32, i32* %f
%v457 = mul i32 %v454, %v456
%v458 = sub i32 %v452, %v457
%v460 = load i32, i32* %g
%v461 = add i32 %v458, %v460
store i32 %v461, i32* %k
%v464 = load i32, i32* %a
%v466 = load i32, i32* %b
%v467 = mul i32 %v464, %v466
%v469 = load i32, i32* %c
%v471 = load i32, i32* %d
%v472 = sdiv i32 %v469, %v471
%v473 = add i32 %v467, %v472
%v475 = load i32, i32* %e
%v477 = load i32, i32* %f
%v478 = mul i32 %v475, %v477
%v479 = sub i32 %v473, %v478
%v481 = load i32, i32* %g
%v482 = add i32 %v479, %v481
store i32 %v482, i32* %l
%v485 = load i32, i32* %a
%v487 = load i32, i32* %b
%v488 = mul i32 %v485, %v487
%v490 = load i32, i32* %c
%v492 = load i32, i32* %d
%v493 = sdiv i32 %v490, %v492
%v494 = add i32 %v488, %v493
%v496 = load i32, i32* %e
%v498 = load i32, i32* %f
%v499 = mul i32 %v496, %v498
%v500 = sub i32 %v494, %v499
%v502 = load i32, i32* %g
%v503 = add i32 %v500, %v502
store i32 %v503, i32* %m
%v506 = load i32, i32* %a
%v508 = load i32, i32* %b
%v509 = mul i32 %v506, %v508
%v511 = load i32, i32* %c
%v513 = load i32, i32* %d
%v514 = sdiv i32 %v511, %v513
%v515 = add i32 %v509, %v514
%v517 = load i32, i32* %e
%v519 = load i32, i32* %f
%v520 = mul i32 %v517, %v519
%v521 = sub i32 %v515, %v520
%v523 = load i32, i32* %g
%v524 = add i32 %v521, %v523
store i32 %v524, i32* %n
%v527 = load i32, i32* %a
%v529 = load i32, i32* %b
%v530 = mul i32 %v527, %v529
%v532 = load i32, i32* %c
%v534 = load i32, i32* %d
%v535 = sdiv i32 %v532, %v534
%v536 = add i32 %v530, %v535
%v538 = load i32, i32* %e
%v540 = load i32, i32* %f
%v541 = mul i32 %v538, %v540
%v542 = sub i32 %v536, %v541
%v544 = load i32, i32* %g
%v545 = add i32 %v542, %v544
store i32 %v545, i32* %o
%v548 = load i32, i32* %a
%v550 = load i32, i32* %b
%v551 = mul i32 %v548, %v550
%v553 = load i32, i32* %c
%v555 = load i32, i32* %d
%v556 = sdiv i32 %v553, %v555
%v557 = add i32 %v551, %v556
%v559 = load i32, i32* %e
%v561 = load i32, i32* %f
%v562 = mul i32 %v559, %v561
%v565 = sub i32 %v557, %v562
%v568 = load i32, i32* %g
%v570 = add i32 %v565, %v568
store i32 %v570, i32* %p
%v577 = load i32, i32* %a
%v580 = load i32, i32* %b
%v582 = mul i32 %v577, %v580
%v585 = load i32, i32* %c
%v588 = load i32, i32* %d
%v590 = sdiv i32 %v585, %v588
%v592 = add i32 %v582, %v590
%v595 = load i32, i32* %e
%v598 = load i32, i32* %f
%v599 = mul i32 %v595, %v598
%v603 = sub i32 %v592, %v599
%v606 = load i32, i32* %g
%v607 = add i32 %v603, %v606
store i32 %v607, i32* %q
%v611 = load i32, i32* %a
%v614 = load i32, i32* %b
%v616 = mul i32 %v611, %v614
%v620 = load i32, i32* %c
%v624 = load i32, i32* %d
%v626 = sdiv i32 %v620, %v624
%v629 = add i32 %v616, %v626
%v632 = load i32, i32* %e
%v635 = load i32, i32* %f
%v638 = mul i32 %v632, %v635
%v641 = sub i32 %v629, %v638
%v644 = load i32, i32* %g
%v647 = add i32 %v641, %v644
store i32 %v647, i32* %r
%v652 = load i32, i32* %a
%v656 = load i32, i32* %b
%v658 = mul i32 %v652, %v656
%v661 = load i32, i32* %c
%v665 = load i32, i32* %d
%v666 = sdiv i32 %v661, %v665
%v667 = add i32 %v658, %v666
%v669 = load i32, i32* %e
%v671 = load i32, i32* %f
%v672 = mul i32 %v669, %v671
%v673 = sub i32 %v667, %v672
%v675 = load i32, i32* %g
%v676 = add i32 %v673, %v675
store i32 %v676, i32* %s
%v679 = load i32, i32* %a
%v681 = load i32, i32* %b
%v682 = mul i32 %v679, %v681
%v684 = load i32, i32* %c
%v686 = load i32, i32* %d
%v687 = sdiv i32 %v684, %v686
%v688 = add i32 %v682, %v687
%v690 = load i32, i32* %e
%v692 = load i32, i32* %f
%v693 = mul i32 %v690, %v692
%v694 = sub i32 %v688, %v693
%v696 = load i32, i32* %g
%v697 = add i32 %v694, %v696
store i32 %v697, i32* %t
%v700 = load i32, i32* %a
%v702 = load i32, i32* %b
%v703 = mul i32 %v700, %v702
%v705 = load i32, i32* %c
%v707 = load i32, i32* %d
%v708 = sdiv i32 %v705, %v707
%v709 = add i32 %v703, %v708
%v711 = load i32, i32* %e
%v713 = load i32, i32* %f
%v714 = mul i32 %v711, %v713
%v715 = sub i32 %v709, %v714
%v717 = load i32, i32* %g
%v718 = add i32 %v715, %v717
store i32 %v718, i32* %u
%v721 = load i32, i32* %b
%v723 = load i32, i32* %a
%v724 = mul i32 %v721, %v723
%v726 = load i32, i32* %c
%v728 = load i32, i32* %d
%v729 = sdiv i32 %v726, %v728
%v730 = add i32 %v724, %v729
%v732 = load i32, i32* %e
%v734 = load i32, i32* %f
%v735 = mul i32 %v732, %v734
%v736 = sub i32 %v730, %v735
%v738 = load i32, i32* %g
%v739 = add i32 %v736, %v738
store i32 %v739, i32* %v
%v742 = load i32, i32* %a
%v744 = load i32, i32* %b
%v745 = mul i32 %v742, %v744
%v747 = load i32, i32* %c
%v749 = load i32, i32* %d
%v750 = sdiv i32 %v747, %v749
%v751 = add i32 %v745, %v750
%v753 = load i32, i32* %f
%v755 = load i32, i32* %e
%v756 = mul i32 %v753, %v755
%v757 = sub i32 %v751, %v756
%v759 = load i32, i32* %g
%v760 = add i32 %v757, %v759
store i32 %v760, i32* %w
%v763 = load i32, i32* %g
%v765 = load i32, i32* %a
%v767 = load i32, i32* %b
%v768 = mul i32 %v765, %v767
%v769 = add i32 %v763, %v768
%v771 = load i32, i32* %c
%v773 = load i32, i32* %d
%v774 = sdiv i32 %v771, %v773
%v775 = add i32 %v769, %v774
%v777 = load i32, i32* %e
%v779 = load i32, i32* %f
%v780 = mul i32 %v777, %v779
%v781 = sub i32 %v775, %v780
store i32 %v781, i32* %x
%v784 = load i32, i32* %a
%v786 = load i32, i32* %b
%v787 = mul i32 %v784, %v786
%v789 = load i32, i32* %c
%v791 = load i32, i32* %d
%v792 = sdiv i32 %v789, %v791
%v793 = add i32 %v787, %v792
%v795 = load i32, i32* %e
%v797 = load i32, i32* %f
%v798 = mul i32 %v795, %v797
%v799 = sub i32 %v793, %v798
%v801 = load i32, i32* %g
%v802 = add i32 %v799, %v801
store i32 %v802, i32* %y
%v805 = load i32, i32* %c
%v807 = load i32, i32* %d
%v808 = sdiv i32 %v805, %v807
%v810 = load i32, i32* %a
%v812 = load i32, i32* %b
%v813 = mul i32 %v810, %v812
%v814 = add i32 %v808, %v813
%v816 = load i32, i32* %e
%v818 = load i32, i32* %f
%v819 = mul i32 %v816, %v818
%v820 = sub i32 %v814, %v819
%v822 = load i32, i32* %g
%v823 = add i32 %v820, %v822
store i32 %v823, i32* %z
%v826 = load i32, i32* %a
%v828 = load i32, i32* %b
%v829 = add i32 %v826, %v828
%v831 = load i32, i32* %c
%v832 = add i32 %v829, %v831
%v834 = load i32, i32* %d
%v835 = add i32 %v832, %v834
%v837 = load i32, i32* %e
%v838 = add i32 %v835, %v837
%v840 = load i32, i32* %f
%v841 = add i32 %v838, %v840
%v843 = load i32, i32* %g
%v844 = add i32 %v841, %v843
%v846 = load i32, i32* %h
%v847 = add i32 %v844, %v846
%v849 = load i32, i32* %i
%v850 = add i32 %v847, %v849
%v852 = load i32, i32* %j
%v853 = add i32 %v850, %v852
%v855 = load i32, i32* %k
%v856 = add i32 %v853, %v855
%v858 = load i32, i32* %l
%v859 = add i32 %v856, %v858
%v861 = load i32, i32* %m
%v862 = add i32 %v859, %v861
%v864 = load i32, i32* %n
%v865 = add i32 %v862, %v864
%v867 = load i32, i32* %o
%v868 = add i32 %v865, %v867
%v870 = load i32, i32* %p
%v871 = add i32 %v868, %v870
%v873 = load i32, i32* %q
%v874 = add i32 %v871, %v873
%v876 = load i32, i32* %r
%v877 = add i32 %v874, %v876
%v879 = load i32, i32* %s
%v880 = add i32 %v877, %v879
%v882 = load i32, i32* %t
%v883 = add i32 %v880, %v882
%v885 = load i32, i32* %u
%v886 = add i32 %v883, %v885
%v888 = load i32, i32* %v
%v889 = add i32 %v886, %v888
%v891 = load i32, i32* %w
%v892 = add i32 %v889, %v891
%v894 = load i32, i32* %x
%v895 = add i32 %v892, %v894
%v897 = load i32, i32* %y
%v898 = add i32 %v895, %v897
%v900 = load i32, i32* %z
%v901 = add i32 %v898, %v900
ret i32 %v901
br label %LU25

LU25:


ret i32 0
br label %LU25
}
define i32 @integerDivide()
{
LU38:


%a = alloca i32
store i32 3000, i32* %a
%v937 = load i32, i32* %a
%v938 = sdiv i32 %v937, 2
store i32 %v938, i32* %a
%v941 = load i32, i32* %a
%v942 = mul i32 %v941, 4
store i32 %v942, i32* %a
%v945 = load i32, i32* %a
%v946 = sdiv i32 %v945, 8
store i32 %v946, i32* %a
%v949 = load i32, i32* %a
%v950 = sdiv i32 %v949, 16
store i32 %v950, i32* %a
%v953 = load i32, i32* %a
%v954 = mul i32 %v953, 32
store i32 %v954, i32* %a
%v957 = load i32, i32* %a
%v958 = sdiv i32 %v957, 64
store i32 %v958, i32* %a
%v961 = load i32, i32* %a
%v962 = mul i32 %v961, 128
store i32 %v962, i32* %a
%v965 = load i32, i32* %a
%v966 = sdiv i32 %v965, 4
store i32 %v966, i32* %a
%v969 = load i32, i32* %a
ret i32 %v969
br label %LU39

LU39:


ret i32 0
br label %LU39
}
define i32 @doubleIf()
{
LU31:


%a = alloca i32
%b = alloca i32
%c = alloca i32
%d = alloca i32
store i32 1, i32* %a
store i32 2, i32* %b
store i32 3, i32* %c
store i32 0, i32* %d
%v913 = load i32, i32* %a
%v914 = icmp eq i32 %v913, 1
br i1 %v914, label %LU33, label %LU34

LU33:


store i32 20, i32* %b
%v919 = load i32, i32* %a
%v920 = icmp eq i32 %v919, 1
br i1 %v920, label %LU35, label %LU37

LU35:


store i32 200, i32* %b
store i32 300, i32* %c
br label %LU36

LU36:


store i32 50, i32* %d
br label %LU34

LU34:


%v931 = load i32, i32* %d
ret i32 %v931
br label %LU32

LU32:


ret i32 0
br label %LU32

LU37:


store i32 1, i32* %a
store i32 2, i32* %b
store i32 3, i32* %c
br label %LU36


}
define i32 @hoisting()
{
LU26:


%a = alloca i32
%b = alloca i32
%c = alloca i32
%d = alloca i32
%e = alloca i32
%f = alloca i32
%g = alloca i32
%h = alloca i32
%i = alloca i32
store i32 1, i32* %a
store i32 2, i32* %b
store i32 3, i32* %c
store i32 4, i32* %d
store i32 0, i32* %i
br label %LU28

LU28:


%v602 = load i32, i32* %i
%v604 = icmp slt i32 %v602, 1000000
br i1 %v604, label %LU29, label %LU30

LU29:


store i32 5, i32* %e
%v618 = load i32, i32* %a
%v622 = load i32, i32* %b
%v625 = add i32 %v618, %v622
%v628 = load i32, i32* %c
%v630 = add i32 %v625, %v628
store i32 %v630, i32* %g
%v637 = load i32, i32* %c
%v640 = load i32, i32* %d
%v642 = add i32 %v637, %v640
%v646 = load i32, i32* %g
%v648 = add i32 %v642, %v646
store i32 %v648, i32* %h
%v654 = load i32, i32* %i
%v657 = add i32 %v654, 1
store i32 %v657, i32* %i
br label %LU28


LU30:


%v663 = load i32, i32* %b
ret i32 %v663
br label %LU27

LU27:


ret i32 0
br label %LU27
}
define i32 @interProceduralOptimization()
{
LU15:


%a = alloca i32
store i32 1, i32* @global1
store i32 0, i32* @global2
store i32 0, i32* @global3
%v363 = call i32 @sum(i32 100)
store i32 %v363, i32* %a
%v366 = load i32, i32* @global1
%v367 = icmp eq i32 %v366, 1
br i1 %v367, label %LU17, label %LU19

LU17:


%v370 = call i32 @sum(i32 10000)
store i32 %v370, i32* %a
br label %LU18

LU18:


%v388 = load i32, i32* %a
ret i32 %v388
br label %LU16

LU16:


ret i32 0
br label %LU16

LU19:


%v374 = load i32, i32* @global2
%v375 = icmp eq i32 %v374, 2
br i1 %v375, label %LU20, label %LU21

LU20:


%v378 = call i32 @sum(i32 20000)
store i32 %v378, i32* %a
br label %LU21

LU21:


%v381 = load i32, i32* @global3
%v382 = icmp eq i32 %v381, 3
br i1 %v382, label %LU22, label %LU23

LU22:


%v385 = call i32 @sum(i32 30000)
store i32 %v385, i32* %a
br label %LU23

LU23:


br label %LU18



}
define i32 @doesntModifyGlobals()
{
LU13:


%a = alloca i32
%b = alloca i32
store i32 1, i32* %a
store i32 2, i32* %b
%v353 = load i32, i32* %a
%v355 = load i32, i32* %b
%v356 = add i32 %v353, %v355
ret i32 %v356
br label %LU14

LU14:


ret i32 0
br label %LU14
}
define i32 @constantPropagation()
{
LU4:


%a = alloca i32
%b = alloca i32
%c = alloca i32
%d = alloca i32
%e = alloca i32
%f = alloca i32
%g = alloca i32
%h = alloca i32
%i = alloca i32
%j = alloca i32
%k = alloca i32
%l = alloca i32
%m = alloca i32
%n = alloca i32
%o = alloca i32
%p = alloca i32
%q = alloca i32
%r = alloca i32
%s = alloca i32
%t = alloca i32
%u = alloca i32
%v = alloca i32
%w = alloca i32
%x = alloca i32
%y = alloca i32
%z = alloca i32
store i32 4, i32* %a
store i32 7, i32* %b
store i32 8, i32* %c
store i32 5, i32* %d
store i32 11, i32* %e
store i32 21, i32* %f
%v56 = load i32, i32* %a
%v58 = load i32, i32* %b
%v59 = add i32 %v56, %v58
store i32 %v59, i32* %g
%v62 = load i32, i32* %c
%v64 = load i32, i32* %d
%v65 = add i32 %v62, %v64
store i32 %v65, i32* %h
%v68 = load i32, i32* %e
%v70 = load i32, i32* %f
%v71 = add i32 %v68, %v70
store i32 %v71, i32* %i
%v74 = load i32, i32* %g
%v76 = load i32, i32* %h
%v77 = add i32 %v74, %v76
store i32 %v77, i32* %j
%v80 = load i32, i32* %i
%v82 = load i32, i32* %j
%v83 = mul i32 %v80, %v82
store i32 %v83, i32* %k
%v86 = load i32, i32* %e
%v88 = load i32, i32* %h
%v90 = load i32, i32* %i
%v91 = mul i32 %v88, %v90
%v92 = add i32 %v86, %v91
%v94 = load i32, i32* %k
%v95 = sub i32 %v92, %v94
store i32 %v95, i32* %l
%v98 = load i32, i32* %h
%v100 = load i32, i32* %i
%v102 = load i32, i32* %j
%v103 = mul i32 %v100, %v102
%v104 = sub i32 %v98, %v103
%v106 = load i32, i32* %k
%v108 = load i32, i32* %l
%v109 = sdiv i32 %v106, %v108
%v110 = add i32 %v104, %v109
store i32 %v110, i32* %m
%v113 = load i32, i32* %e
%v115 = load i32, i32* %f
%v116 = add i32 %v113, %v115
%v118 = load i32, i32* %g
%v119 = add i32 %v116, %v118
%v121 = load i32, i32* %h
%v122 = add i32 %v119, %v121
%v124 = load i32, i32* %i
%v125 = add i32 %v122, %v124
%v127 = load i32, i32* %j
%v168 = sub i32 %v125, %v127
store i32 %v168, i32* %n
%v171 = load i32, i32* %n
%v173 = load i32, i32* %m
%v174 = sub i32 %v171, %v173
%v176 = load i32, i32* %h
%v177 = add i32 %v174, %v176
%v179 = load i32, i32* %a
%v180 = sub i32 %v177, %v179
%v182 = load i32, i32* %b
%v183 = sub i32 %v180, %v182
store i32 %v183, i32* %o
%v186 = load i32, i32* %k
%v188 = load i32, i32* %l
%v189 = add i32 %v186, %v188
%v191 = load i32, i32* %g
%v192 = sub i32 %v189, %v191
%v194 = load i32, i32* %h
%v195 = sub i32 %v192, %v194
store i32 %v195, i32* %p
%v198 = load i32, i32* %b
%v200 = load i32, i32* %a
%v201 = sub i32 %v198, %v200
%v203 = load i32, i32* %d
%v204 = mul i32 %v201, %v203
%v206 = load i32, i32* %i
%v207 = sub i32 %v204, %v206
store i32 %v207, i32* %q
%v210 = load i32, i32* %l
%v212 = load i32, i32* %c
%v213 = mul i32 %v210, %v212
%v215 = load i32, i32* %d
%v216 = mul i32 %v213, %v215
%v218 = load i32, i32* %o
%v219 = add i32 %v216, %v218
store i32 %v219, i32* %r
%v222 = load i32, i32* %b
%v224 = load i32, i32* %a
%v225 = mul i32 %v222, %v224
%v227 = load i32, i32* %c
%v228 = mul i32 %v225, %v227
%v230 = load i32, i32* %e
%v231 = sdiv i32 %v228, %v230
%v233 = load i32, i32* %o
%v234 = sub i32 %v231, %v233
store i32 %v234, i32* %s
%v237 = load i32, i32* %i
%v239 = load i32, i32* %k
%v240 = add i32 %v237, %v239
%v242 = load i32, i32* %c
%v243 = add i32 %v240, %v242
%v245 = load i32, i32* %p
%v246 = sub i32 %v243, %v245
store i32 %v246, i32* %t
%v249 = load i32, i32* %n
%v251 = load i32, i32* %o
%v252 = add i32 %v249, %v251
%v254 = load i32, i32* %f
%v256 = load i32, i32* %a
%v257 = mul i32 %v254, %v256
%v258 = sub i32 %v252, %v257
store i32 %v258, i32* %u
%v261 = load i32, i32* %a
%v263 = load i32, i32* %b
%v264 = mul i32 %v261, %v263
%v266 = load i32, i32* %k
%v267 = sub i32 %v264, %v266
%v269 = load i32, i32* %l
%v270 = sub i32 %v267, %v269
store i32 %v270, i32* %v
%v273 = load i32, i32* %v
%v275 = load i32, i32* %s
%v276 = sub i32 %v273, %v275
%v278 = load i32, i32* %r
%v280 = load i32, i32* %d
%v281 = mul i32 %v278, %v280
%v282 = sub i32 %v276, %v281
store i32 %v282, i32* %w
%v285 = load i32, i32* %o
%v287 = load i32, i32* %w
%v288 = sub i32 %v285, %v287
%v290 = load i32, i32* %v
%v291 = sub i32 %v288, %v290
%v293 = load i32, i32* %n
%v294 = sub i32 %v291, %v293
store i32 %v294, i32* %x
%v297 = load i32, i32* %p
%v299 = load i32, i32* %x
%v300 = mul i32 %v297, %v299
%v302 = load i32, i32* %t
%v303 = add i32 %v300, %v302
%v305 = load i32, i32* %w
%v306 = sub i32 %v303, %v305
store i32 %v306, i32* %y
%v309 = load i32, i32* %w
%v311 = load i32, i32* %x
%v312 = sub i32 %v309, %v311
%v314 = load i32, i32* %y
%v315 = add i32 %v312, %v314
%v317 = load i32, i32* %k
%v318 = add i32 %v315, %v317
store i32 %v318, i32* %z
%v321 = load i32, i32* %z
ret i32 %v321
br label %LU5

LU5:


ret i32 0
br label %LU5
}
define i32 @sum(i32 %_P_number)
{
LU8:


%number = alloca i32
store i32 %_P_number, i32* %number
%total = alloca i32
store i32 0, i32* %total
br label %LU10

LU10:


%v330 = load i32, i32* %number
%v331 = icmp sgt i32 %v330, 0
br i1 %v331, label %LU11, label %LU12

LU11:


%v335 = load i32, i32* %total
%v337 = load i32, i32* %number
%v338 = add i32 %v335, %v337
store i32 %v338, i32* %total
%v341 = load i32, i32* %number
%v342 = sub i32 %v341, 1
store i32 %v342, i32* %number
br label %LU10


LU12:


%v345 = load i32, i32* %total
ret i32 %v345
br label %LU9

LU9:


ret i32 0
br label %LU9
}
define i32 @deadCodeElimination()
{
LU6:


%a = alloca i32
%b = alloca i32
%c = alloca i32
%d = alloca i32
%e = alloca i32
store i32 4, i32* %a
store i32 5, i32* %a
store i32 7, i32* %a
store i32 8, i32* %a
store i32 6, i32* %b
store i32 9, i32* %b
store i32 12, i32* %b
store i32 8, i32* %b
store i32 10, i32* %c
store i32 13, i32* %c
store i32 9, i32* %c
store i32 45, i32* %d
store i32 12, i32* %d
store i32 3, i32* %d
store i32 23, i32* %e
store i32 10, i32* %e
store i32 11, i32* @global1
store i32 5, i32* @global1
store i32 9, i32* @global1
%v155 = load i32, i32* %a
%v157 = load i32, i32* %b
%v158 = add i32 %v155, %v157
%v160 = load i32, i32* %c
%v161 = add i32 %v158, %v160
%v163 = load i32, i32* %d
%v164 = add i32 %v161, %v163
%v166 = load i32, i32* %e
%v167 = add i32 %v164, %v166
ret i32 %v167
br label %LU7

LU7:


ret i32 0
br label %LU7
}
define i32 @constantFolding()
{
LU2:


%a = alloca i32
%v4 = mul i32 8, 9
%v5 = sdiv i32 %v4, 4
%v6 = add i32 %v5, 2
%v7 = mul i32 5, 8
%v8 = sub i32 %v6, %v7
%v9 = add i32 %v8, 9
%v10 = sub i32 %v9, 12
%v11 = add i32 %v10, 6
%v12 = sub i32 %v11, 9
%v13 = sub i32 %v12, 18
%v14 = mul i32 23, 3
%v15 = sdiv i32 %v14, 23
%v16 = mul i32 %v15, 90
%v17 = add i32 %v13, %v16
store i32 %v17, i32* %a
%v20 = load i32, i32* %a
ret i32 %v20
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

