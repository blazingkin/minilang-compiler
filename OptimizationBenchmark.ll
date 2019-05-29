@global1 = common global i32 0, align 4
@global2 = common global i32 0, align 4
@global3 = common global i32 0, align 4
define i32 @recursiveFibonacci(i32 %_P_number)
{
LU67:

%v366 = icmp sle i32 %_P_number, 0
%v367 = icmp eq i32 %_P_number, 1
%v368 = zext i1 %v366 to i32
%v369 = zext i1 %v367 to i32
%v370 = or i32 %v368, %v369
%v371 = trunc i32 %v370 to i1
br i1 %v371, label %LU69, label %LU71

LU69:

ret i32 %_P_number
br label %LU68

LU68:

ret i32 0
br label %LU68

LU71:

%v376 = sub i32 %_P_number, 1
%v375 = call i32 @recursiveFibonacci(i32 %v376)
%v378 = sub i32 %_P_number, 2
%v377 = call i32 @recursiveFibonacci(i32 %v378)
%v379 = add i32 %v375, %v377
ret i32 %v379
br label %LU68

}
define i32 @randomCalculation(i32 %_P_number)
{
LU57:

br label %LU59

LU59:
%v334 = phi i32 [ 0, %LU57 ], [ %v349, %LU60 ]
%v335 = phi i32 [ %_P_number, %LU57 ], [ %v335, %LU60 ]
%v341 = phi i32 [ 0, %LU57 ], [ %v342, %LU60 ]

%v336 = icmp slt i32 %v334, %_P_number
br i1 %v336, label %LU60, label %LU61

LU60:

%v342 = add i32 %v341, 19
%v343 = mul i32 %v334, 2
%v344 = sdiv i32 %v343, 2
%v345 = mul i32 3, %v344
%v346 = sdiv i32 %v345, 3
%v347 = mul i32 %v346, 4
%v348 = sdiv i32 %v347, 4
%v349 = add i32 %v348, 1
br label %LU59


LU61:

ret i32 %v341
br label %LU58

LU58:

ret i32 0
br label %LU58
}
define i32 @iterativeFibonacci(i32 %_P_number)
{
LU62:

br label %LU64

LU64:
%v354 = phi i32 [ 0, %LU62 ], [ %v362, %LU65 ]
%v355 = phi i32 [ %_P_number, %LU62 ], [ %v355, %LU65 ]
%v359 = phi i32 [ 1, %LU62 ], [ %v361, %LU65 ]
%v360 = phi i32 [ -1, %LU62 ], [ %v359, %LU65 ]

%v356 = icmp slt i32 %v354, %_P_number
br i1 %v356, label %LU65, label %LU66

LU65:

%v361 = add i32 %v359, %v360
%v362 = add i32 %v354, 1
br label %LU64


LU66:

ret i32 %v359
br label %LU63

LU63:

ret i32 0
br label %LU63
}
define i32 @unswitching()
{
LU49:

br label %LU51

LU51:
%v317 = phi i32 [ 1, %LU49 ], [ %v328, %LU55 ]
%v321 = phi i32 [ 2, %LU49 ], [ %v329, %LU55 ]

%v318 = icmp slt i32 %v317, 1000000
br i1 %v318, label %LU52, label %LU53

LU52:

%v322 = icmp eq i32 2, 2
br i1 %v322, label %LU54, label %LU56

LU54:

%v325 = add i32 %v317, 1
br label %LU55

LU55:
%v328 = phi i32 [ %v325, %LU54 ], [ %v327, %LU56 ]
%v329 = phi i32 [ %v321, %LU54 ], [ %v321, %LU56 ]

br label %LU51


LU56:

%v327 = add i32 %v317, 2
br label %LU55


LU53:

ret i32 %v317
br label %LU50

LU50:

ret i32 0
br label %LU50
}
define i32 @tailRecursion(i32 %_P_value)
{
LU47:

%v313 = call i32 @tailRecursionHelper(i32 %_P_value, i32 0)
ret i32 %v313
br label %LU48

LU48:

ret i32 0
br label %LU48
}
define i32 @association()
{
LU40:

ret i32 6
br label %LU41

LU41:

ret i32 0
br label %LU41
}
define i32 @tailRecursionHelper(i32 %_P_value, i32 %_P_sum)
{
LU42:

%v302 = icmp eq i32 %_P_value, 0
br i1 %v302, label %LU44, label %LU46

LU44:

ret i32 %_P_sum
br label %LU43

LU43:

ret i32 0
br label %LU43

LU46:

%v308 = sub i32 %_P_value, 1
%v309 = add i32 %_P_sum, %_P_value
%v307 = call i32 @tailRecursionHelper(i32 %v308, i32 %v309)
ret i32 %v307
br label %LU43

}
define i32 @integerDivide()
{
LU38:

ret i32 703
br label %LU39

LU39:

ret i32 0
br label %LU39
}
define i32 @doubleIf()
{
LU31:

%v269 = icmp eq i32 1, 1
br i1 %v269, label %LU33, label %LU34

LU33:

%v272 = icmp eq i32 1, 1
br i1 %v272, label %LU35, label %LU37

LU35:

br label %LU36

LU36:

br label %LU34

LU34:
%v276 = phi i32 [ 0, %LU33 ], [ 50, %LU36 ], [ 0, %LU31 ]

ret i32 %v276
br label %LU32

LU32:

ret i32 0
br label %LU32

LU37:

br label %LU36


}
define i32 @hoisting()
{
LU26:

br label %LU28

LU28:
%v254 = phi i32 [ 0, %LU26 ], [ %v266, %LU29 ]
%v258 = phi i32 [ 1, %LU26 ], [ %v258, %LU29 ]
%v259 = phi i32 [ 2, %LU26 ], [ %v259, %LU29 ]
%v261 = phi i32 [ 3, %LU26 ], [ %v261, %LU29 ]
%v263 = phi i32 [ 4, %LU26 ], [ %v263, %LU29 ]

%v255 = icmp slt i32 %v254, 1000000
br i1 %v255, label %LU29, label %LU30

LU29:

%v266 = add i32 %v254, 1
br label %LU28


LU30:

ret i32 2
br label %LU27

LU27:

ret i32 0
br label %LU27
}
define i32 @interProceduralOptimization()
{
LU15:

store i32 1, i32* @global1
store i32 0, i32* @global2
store i32 0, i32* @global3
%v102 = call i32 @sum(i32 100)
%v104 = load i32, i32* @global1
%v105 = icmp eq i32 %v104, 1
br i1 %v105, label %LU17, label %LU19

LU17:

%v108 = call i32 @sum(i32 10000)
br label %LU18

LU18:
%v122 = phi i32 [ %v108, %LU17 ], [ %v123, %LU23 ]

ret i32 %v122
br label %LU16

LU16:

ret i32 0
br label %LU16

LU19:

%v111 = load i32, i32* @global2
%v112 = icmp eq i32 %v111, 2
br i1 %v112, label %LU20, label %LU21

LU20:

%v115 = call i32 @sum(i32 20000)
br label %LU21

LU21:
%v124 = phi i32 [ %v115, %LU20 ], [ %v102, %LU19 ]

%v117 = load i32, i32* @global3
%v118 = icmp eq i32 %v117, 3
br i1 %v118, label %LU22, label %LU23

LU22:

%v121 = call i32 @sum(i32 30000)
br label %LU23

LU23:
%v123 = phi i32 [ %v121, %LU22 ], [ %v124, %LU21 ]

br label %LU18



}
define i32 @doesntModifyGlobals()
{
LU13:

ret i32 3
br label %LU14

LU14:

ret i32 0
br label %LU14
}
define i32 @sum(i32 %_P_number)
{
LU8:

br label %LU10

LU10:
%v87 = phi i32 [ %_P_number, %LU8 ], [ %v93, %LU11 ]
%v91 = phi i32 [ 0, %LU8 ], [ %v92, %LU11 ]

%v88 = icmp sgt i32 %_P_number, 0
br i1 %v88, label %LU11, label %LU12

LU11:

br label %LU10


LU12:

ret i32 0
br label %LU9

LU9:

ret i32 0
br label %LU9
}
define i32 @deadCodeElimination()
{
LU6:

store i32 11, i32* @global1
store i32 5, i32* @global1
store i32 9, i32* @global1
ret i32 38
br label %LU7

LU7:

ret i32 0
br label %LU7
}
define i32 @constantFolding()
{
LU2:

ret i32 135
br label %LU3

LU3:

ret i32 0
br label %LU3
}
define i32 @main()
{
LU72:

%v382 = call i32 @readchar()
br label %LU74

LU74:
%v384 = phi i32 [ 1, %LU72 ], [ %v406, %LU75 ]
%v385 = phi i32 [ %v382, %LU72 ], [ %v385, %LU75 ]

%v386 = icmp slt i32 %v384, %v385
br i1 %v386, label %LU75, label %LU76

LU75:

%v389 = call i32 @constantFolding()
call void @printl(i32 %v389)
%v390 = call i32 @constantPropagation()
call void @printl(i32 %v390)
%v391 = call i32 @deadCodeElimination()
call void @printl(i32 %v391)
%v392 = call i32 @interProceduralOptimization()
call void @printl(i32 %v392)
%v393 = call i32 @commonSubexpressionElimination()
call void @printl(i32 %v393)
%v394 = call i32 @hoisting()
call void @printl(i32 %v394)
%v395 = call i32 @doubleIf()
call void @printl(i32 %v395)
%v396 = call i32 @integerDivide()
call void @printl(i32 %v396)
%v397 = call i32 @association()
call void @printl(i32 %v397)
%v399 = sdiv i32 %v385, 1000
%v398 = call i32 @tailRecursion(i32 %v399)
call void @printl(i32 %v398)
%v400 = call i32 @unswitching()
call void @printl(i32 %v400)
%v401 = call i32 @randomCalculation(i32 %v385)
call void @printl(i32 %v401)
%v403 = sdiv i32 %v385, 5
%v402 = call i32 @iterativeFibonacci(i32 %v403)
call void @printl(i32 %v402)
%v405 = sdiv i32 %v385, 1000
%v404 = call i32 @recursiveFibonacci(i32 %v405)
call void @printl(i32 %v404)
%v406 = add i32 %v384, 1
br label %LU74


LU76:

call void @printl(i32 9999)
ret i32 0
br label %LU73

LU73:

ret i32 0
br label %LU73
}
define i32 @commonSubexpressionElimination()
{
LU24:

ret i32 -48796
br label %LU25

LU25:

ret i32 0
br label %LU25
}
