%struct.thing = type {i32, i1, %struct.thing*}
@gi1 = common global i32 0, align 4
@gb1 = common global i1 0, align 4
@gs1 = common global %struct.thing* null, align 4
@counter = common global i32 0, align 4
define %struct.thing* @returnstruct(%struct.thing* %_P_ret)
{
LU35:


%ret = alloca %struct.thing*
store %struct.thing* %_P_ret, %struct.thing** %ret
%v107 = load %struct.thing*, %struct.thing** %ret
ret %struct.thing* %v107
br label %LU36

LU36:


ret %struct.thing* null
br label %LU36
}
define i1 @returnbool(i1 %_P_ret)
{
LU33:


%ret = alloca i1
store i1 %_P_ret, i1* %ret
%v101 = load i1, i1* %ret
ret i1 %v101
br label %LU34

LU34:


ret i1 0
br label %LU34
}
define void @tonofargs(i32 %_P_a1, i32 %_P_a2, i32 %_P_a3, i32 %_P_a4, i32 %_P_a5, i32 %_P_a6, i32 %_P_a7, i32 %_P_a8)
{
LU17:


%a1 = alloca i32
store i32 %_P_a1, i32* %a1
%a2 = alloca i32
store i32 %_P_a2, i32* %a2
%a3 = alloca i32
store i32 %_P_a3, i32* %a3
%a4 = alloca i32
store i32 %_P_a4, i32* %a4
%a5 = alloca i32
store i32 %_P_a5, i32* %a5
%a6 = alloca i32
store i32 %_P_a6, i32* %a6
%a7 = alloca i32
store i32 %_P_a7, i32* %a7
%a8 = alloca i32
store i32 %_P_a8, i32* %a8
%v59 = load i32, i32* %a5
%v60 = icmp eq i32 %v59, 5
br i1 %v60, label %LU19, label %LU21

LU19:


call void @printl(i32 1)
br label %LU20

LU20:


%v67 = load i32, i32* %a6
%v68 = icmp eq i32 %v67, 6
br i1 %v68, label %LU22, label %LU24

LU22:


call void @printl(i32 1)
br label %LU23

LU23:


%v75 = load i32, i32* %a7
%v76 = icmp eq i32 %v75, 7
br i1 %v76, label %LU25, label %LU27

LU25:


call void @printl(i32 1)
br label %LU26

LU26:


%v83 = load i32, i32* %a8
%v84 = icmp eq i32 %v83, 8
br i1 %v84, label %LU28, label %LU30

LU28:


call void @printl(i32 1)
br label %LU29

LU29:


br label %LU18

LU18:


ret void 

LU30:


call void @print(i32 0)
%v89 = load i32, i32* %a8
call void @printl(i32 %v89)
br label %LU29


LU27:


call void @print(i32 0)
%v81 = load i32, i32* %a7
call void @printl(i32 %v81)
br label %LU26


LU24:


call void @print(i32 0)
%v73 = load i32, i32* %a6
call void @printl(i32 %v73)
br label %LU23


LU21:


call void @print(i32 0)
%v65 = load i32, i32* %a5
call void @printl(i32 %v65)
br label %LU20

}
define i32 @returnint(i32 %_P_ret)
{
LU31:


%ret = alloca i32
store i32 %_P_ret, i32* %ret
%v95 = load i32, i32* %ret
ret i32 %v95
br label %LU32

LU32:


ret i32 0
br label %LU32
}
define void @takealltypes(i32 %_P_i, i1 %_P_b, %struct.thing* %_P_s)
{
LU6:


%i = alloca i32
store i32 %_P_i, i32* %i
%b = alloca i1
store i1 %_P_b, i1* %b
%s = alloca %struct.thing*
store %struct.thing* %_P_s, %struct.thing** %s
%v23 = load i32, i32* %i
%v24 = icmp eq i32 %v23, 3
br i1 %v24, label %LU8, label %LU10

LU8:


call void @printl(i32 1)
br label %LU9

LU9:


%v29 = load i1, i1* %b
br i1 %v29, label %LU11, label %LU13

LU11:


call void @printl(i32 1)
br label %LU12

LU12:


%v34 = load %struct.thing*, %struct.thing** %s
%v35 = getelementptr %struct.thing, %struct.thing* %v34, i1 0, i32 1
%v36 = load i1, i1* %v35
br i1 %v36, label %LU14, label %LU16

LU14:


call void @printl(i32 1)
br label %LU15

LU15:


br label %LU7

LU7:


ret void 

LU16:


call void @printl(i32 0)
br label %LU15


LU13:


call void @printl(i32 0)
br label %LU12


LU10:


call void @printl(i32 0)
br label %LU9

}
define i1 @setcounter(i32 %_P_val)
{
LU4:


%val = alloca i32
store i32 %_P_val, i32* %val
%v12 = load i32, i32* %val
store i32 %v12, i32* @counter
ret i1 1
br label %LU5

LU5:


ret i1 0
br label %LU5
}
define void @printgroup(i32 %_P_groupnum)
{
LU2:


%groupnum = alloca i32
store i32 %_P_groupnum, i32* %groupnum
call void @print(i32 1)
call void @print(i32 0)
call void @print(i32 1)
call void @print(i32 0)
call void @print(i32 1)
call void @print(i32 0)
%v6 = load i32, i32* %groupnum
call void @printl(i32 %v6)
ret void
br label %LU3

LU3:


ret void 
br label %LU3
}
define i32 @main()
{
LU37:


%b1 = alloca i1
%b2 = alloca i1
%i1 = alloca i32
%i2 = alloca i32
%i3 = alloca i32
%s1 = alloca %struct.thing*
%s2 = alloca %struct.thing*
store i32 0, i32* @counter
call void @printgroup(i32 1)
store i1 0, i1* %b1
store i1 0, i1* %b2
%v122 = load i1, i1* %b1
%v124 = load i1, i1* %b2
%v125 = and i1 %v122, %v124
br i1 %v125, label %LU39, label %LU41

LU39:


call void @printl(i32 0)
br label %LU40

LU40:


store i1 1, i1* %b1
store i1 0, i1* %b2
%v132 = load i1, i1* %b1
%v134 = load i1, i1* %b2
%v135 = and i1 %v132, %v134
br i1 %v135, label %LU42, label %LU44

LU42:


call void @printl(i32 0)
br label %LU43

LU43:


store i1 0, i1* %b1
store i1 1, i1* %b2
%v142 = load i1, i1* %b1
%v144 = load i1, i1* %b2
%v145 = and i1 %v142, %v144
br i1 %v145, label %LU45, label %LU47

LU45:


call void @printl(i32 0)
br label %LU46

LU46:


store i1 1, i1* %b1
store i1 1, i1* %b2
%v152 = load i1, i1* %b1
%v154 = load i1, i1* %b2
%v155 = and i1 %v152, %v154
br i1 %v155, label %LU48, label %LU50

LU48:


call void @printl(i32 1)
br label %LU49

LU49:


store i32 0, i32* @counter
call void @printgroup(i32 2)
store i1 1, i1* %b1
store i1 1, i1* %b2
%v164 = load i1, i1* %b1
%v166 = load i1, i1* %b2
%v167 = or i1 %v164, %v166
br i1 %v167, label %LU51, label %LU53

LU51:


call void @printl(i32 1)
br label %LU52

LU52:


store i1 1, i1* %b1
store i1 0, i1* %b2
%v174 = load i1, i1* %b1
%v176 = load i1, i1* %b2
%v177 = or i1 %v174, %v176
br i1 %v177, label %LU54, label %LU56

LU54:


call void @printl(i32 1)
br label %LU55

LU55:


store i1 0, i1* %b1
store i1 1, i1* %b2
%v184 = load i1, i1* %b1
%v186 = load i1, i1* %b2
%v187 = or i1 %v184, %v186
br i1 %v187, label %LU57, label %LU59

LU57:


call void @printl(i32 1)
br label %LU58

LU58:


store i1 0, i1* %b1
store i1 0, i1* %b2
%v194 = load i1, i1* %b1
%v196 = load i1, i1* %b2
%v197 = or i1 %v194, %v196
br i1 %v197, label %LU60, label %LU62

LU60:


call void @printl(i32 0)
br label %LU61

LU61:


call void @printgroup(i32 3)
%v202 = icmp sgt i32 42, 1
br i1 %v202, label %LU63, label %LU65

LU63:


call void @printl(i32 1)
br label %LU64

LU64:


%v206 = icmp sge i32 42, 1
br i1 %v206, label %LU66, label %LU68

LU66:


call void @printl(i32 1)
br label %LU67

LU67:


%v210 = icmp slt i32 42, 1
br i1 %v210, label %LU69, label %LU71

LU69:


call void @printl(i32 0)
br label %LU70

LU70:


%v214 = icmp sle i32 42, 1
br i1 %v214, label %LU72, label %LU74

LU72:


call void @printl(i32 0)
br label %LU73

LU73:


%v218 = icmp eq i32 42, 1
br i1 %v218, label %LU75, label %LU77

LU75:


call void @printl(i32 0)
br label %LU76

LU76:


%v222 = icmp ne i32 42, 1
br i1 %v222, label %LU78, label %LU80

LU78:


call void @printl(i32 1)
br label %LU79

LU79:


br i1 1, label %LU81, label %LU83

LU81:


call void @printl(i32 1)
br label %LU82

LU82:


br i1 0, label %LU84, label %LU86

LU84:


call void @printl(i32 0)
br label %LU85

LU85:


br i1 0, label %LU87, label %LU89

LU87:


call void @printl(i32 0)
br label %LU88

LU88:


br i1 1, label %LU90, label %LU92

LU90:


call void @printl(i32 1)
br label %LU91

LU91:


br i1 1, label %LU93, label %LU95

LU93:


call void @printl(i32 1)
br label %LU94

LU94:


call void @printgroup(i32 4)
%v242 = add i32 2, 3
%v243 = icmp eq i32 %v242, 5
br i1 %v243, label %LU96, label %LU98

LU96:


call void @printl(i32 1)
br label %LU97

LU97:


%v248 = mul i32 2, 3
%v249 = icmp eq i32 %v248, 6
br i1 %v249, label %LU99, label %LU101

LU99:


call void @printl(i32 1)
br label %LU100

LU100:


%v254 = sub i32 3, 2
%v255 = icmp eq i32 %v254, 1
br i1 %v255, label %LU102, label %LU104

LU102:


call void @printl(i32 1)
br label %LU103

LU103:


%v260 = sdiv i32 6, 3
%v261 = icmp eq i32 %v260, 2
br i1 %v261, label %LU105, label %LU107

LU105:


call void @printl(i32 1)
br label %LU106

LU106:


%v266 = icmp slt i32 -6, 0
br i1 %v266, label %LU108, label %LU110

LU108:


call void @printl(i32 1)
br label %LU109

LU109:


call void @printgroup(i32 5)
store i32 42, i32* %i1
%v273 = load i32, i32* %i1
%v274 = icmp eq i32 %v273, 42
br i1 %v274, label %LU111, label %LU113

LU111:


call void @printl(i32 1)
br label %LU112

LU112:


store i32 3, i32* %i1
store i32 2, i32* %i2
%v281 = load i32, i32* %i1
%v283 = load i32, i32* %i2
%v284 = add i32 %v281, %v283
store i32 %v284, i32* %i3
%v287 = load i32, i32* %i3
%v288 = icmp eq i32 %v287, 5
br i1 %v288, label %LU114, label %LU116

LU114:


call void @printl(i32 1)
br label %LU115

LU115:


store i1 1, i1* %b1
%v294 = load i1, i1* %b1
br i1 %v294, label %LU117, label %LU119

LU117:


call void @printl(i32 1)
br label %LU118

LU118:


%v299 = load i1, i1* %b1
%v300 = xor i1 1, %v299
br i1 %v300, label %LU120, label %LU122

LU120:


call void @printl(i32 0)
br label %LU121

LU121:


store i1 0, i1* %b1
%v306 = load i1, i1* %b1
br i1 %v306, label %LU123, label %LU125

LU123:


call void @printl(i32 0)
br label %LU124

LU124:


%v311 = load i1, i1* %b1
%v312 = xor i1 1, %v311
br i1 %v312, label %LU126, label %LU128

LU126:


call void @printl(i32 1)
br label %LU127

LU127:


%v317 = load i1, i1* %b1
br i1 %v317, label %LU129, label %LU131

LU129:


call void @printl(i32 0)
br label %LU130

LU130:


call void @printgroup(i32 6)
store i32 0, i32* %i1
br label %LU132

LU132:


%v325 = load i32, i32* %i1
%v326 = icmp slt i32 %v325, 5
br i1 %v326, label %LU133, label %LU134

LU133:


%v330 = load i32, i32* %i1
%v331 = icmp sge i32 %v330, 5
br i1 %v331, label %LU135, label %LU136

LU135:


call void @printl(i32 0)
br label %LU136

LU136:


%v335 = load i32, i32* %i1
%v336 = add i32 %v335, 5
store i32 %v336, i32* %i1
br label %LU132



LU134:


%v339 = load i32, i32* %i1
%v340 = icmp eq i32 %v339, 5
br i1 %v340, label %LU137, label %LU139

LU137:


call void @printl(i32 1)
br label %LU138

LU138:


call void @printgroup(i32 7)
%v347 = call i8* @malloc(i32 12)
%v348 = bitcast i8* %v347 to %struct.thing*
store %struct.thing* %v348, %struct.thing** %s1
%v351 = load %struct.thing*, %struct.thing** %s1
%v352 = getelementptr %struct.thing, %struct.thing* %v351, i1 0, i32 0
store i32 42, i32* %v352
%v354 = load %struct.thing*, %struct.thing** %s1
%v355 = getelementptr %struct.thing, %struct.thing* %v354, i1 0, i32 1
store i1 1, i1* %v355
%v357 = load %struct.thing*, %struct.thing** %s1
%v358 = getelementptr %struct.thing, %struct.thing* %v357, i1 0, i32 0
%v359 = load i32, i32* %v358
%v360 = icmp eq i32 %v359, 42
br i1 %v360, label %LU140, label %LU142

LU140:


call void @printl(i32 1)
br label %LU141

LU141:


%v369 = load %struct.thing*, %struct.thing** %s1
%v370 = getelementptr %struct.thing, %struct.thing* %v369, i1 0, i32 1
%v371 = load i1, i1* %v370
br i1 %v371, label %LU143, label %LU145

LU143:


call void @printl(i32 1)
br label %LU144

LU144:


%v375 = call i8* @malloc(i32 12)
%v376 = bitcast i8* %v375 to %struct.thing*
%v378 = load %struct.thing*, %struct.thing** %s1
%v379 = getelementptr %struct.thing, %struct.thing* %v378, i1 0, i32 2
store %struct.thing* %v376, %struct.thing** %v379
%v381 = load %struct.thing*, %struct.thing** %s1
%v382 = getelementptr %struct.thing, %struct.thing* %v381, i1 0, i32 2
%v383 = load %struct.thing*, %struct.thing** %v382
%v384 = getelementptr %struct.thing, %struct.thing* %v383, i1 0, i32 0
store i32 13, i32* %v384
%v386 = load %struct.thing*, %struct.thing** %s1
%v387 = getelementptr %struct.thing, %struct.thing* %v386, i1 0, i32 2
%v388 = load %struct.thing*, %struct.thing** %v387
%v389 = getelementptr %struct.thing, %struct.thing* %v388, i1 0, i32 1
store i1 0, i1* %v389
%v391 = load %struct.thing*, %struct.thing** %s1
%v392 = getelementptr %struct.thing, %struct.thing* %v391, i1 0, i32 2
%v393 = load %struct.thing*, %struct.thing** %v392
%v394 = getelementptr %struct.thing, %struct.thing* %v393, i1 0, i32 0
%v395 = load i32, i32* %v394
%v396 = icmp eq i32 %v395, 13
br i1 %v396, label %LU146, label %LU148

LU146:


call void @printl(i32 1)
br label %LU147

LU147:


%v407 = load %struct.thing*, %struct.thing** %s1
%v408 = getelementptr %struct.thing, %struct.thing* %v407, i1 0, i32 2
%v409 = load %struct.thing*, %struct.thing** %v408
%v410 = getelementptr %struct.thing, %struct.thing* %v409, i1 0, i32 1
%v411 = load i1, i1* %v410
%v412 = xor i1 1, %v411
br i1 %v412, label %LU149, label %LU151

LU149:


call void @printl(i32 1)
br label %LU150

LU150:


%v417 = load %struct.thing*, %struct.thing** %s1
%v419 = load %struct.thing*, %struct.thing** %s1
%v420 = icmp eq %struct.thing* %v417, %v419
br i1 %v420, label %LU152, label %LU154

LU152:


call void @printl(i32 1)
br label %LU153

LU153:


%v425 = load %struct.thing*, %struct.thing** %s1
%v427 = load %struct.thing*, %struct.thing** %s1
%v428 = getelementptr %struct.thing, %struct.thing* %v427, i1 0, i32 2
%v429 = load %struct.thing*, %struct.thing** %v428
%v430 = icmp ne %struct.thing* %v425, %v429
br i1 %v430, label %LU155, label %LU157

LU155:


call void @printl(i32 1)
br label %LU156

LU156:


%v435 = load %struct.thing*, %struct.thing** %s1
%v436 = getelementptr %struct.thing, %struct.thing* %v435, i1 0, i32 2
%v437 = load %struct.thing*, %struct.thing** %v436
%v438 = bitcast %struct.thing* %v437 to i8*
call void @free(i8* %v438)
%v440 = load %struct.thing*, %struct.thing** %s1
%v441 = bitcast %struct.thing* %v440 to i8*
call void @free(i8* %v441)
call void @printgroup(i32 8)
store i32 7, i32* @gi1
%v445 = load i32, i32* @gi1
%v446 = icmp eq i32 %v445, 7
br i1 %v446, label %LU158, label %LU160

LU158:


call void @printl(i32 1)
br label %LU159

LU159:


store i1 1, i1* @gb1
%v454 = load i1, i1* @gb1
br i1 %v454, label %LU161, label %LU163

LU161:


call void @printl(i32 1)
br label %LU162

LU162:


%v458 = call i8* @malloc(i32 12)
%v459 = bitcast i8* %v458 to %struct.thing*
store %struct.thing* %v459, %struct.thing** @gs1
%v462 = load %struct.thing*, %struct.thing** @gs1
%v463 = getelementptr %struct.thing, %struct.thing* %v462, i1 0, i32 0
store i32 34, i32* %v463
%v465 = load %struct.thing*, %struct.thing** @gs1
%v466 = getelementptr %struct.thing, %struct.thing* %v465, i1 0, i32 1
store i1 0, i1* %v466
%v468 = load %struct.thing*, %struct.thing** @gs1
%v469 = getelementptr %struct.thing, %struct.thing* %v468, i1 0, i32 0
%v470 = load i32, i32* %v469
%v471 = icmp eq i32 %v470, 34
br i1 %v471, label %LU164, label %LU166

LU164:


call void @printl(i32 1)
br label %LU165

LU165:


%v480 = load %struct.thing*, %struct.thing** @gs1
%v481 = getelementptr %struct.thing, %struct.thing* %v480, i1 0, i32 1
%v482 = load i1, i1* %v481
%v483 = xor i1 1, %v482
br i1 %v483, label %LU167, label %LU169

LU167:


call void @printl(i32 1)
br label %LU168

LU168:


%v487 = call i8* @malloc(i32 12)
%v488 = bitcast i8* %v487 to %struct.thing*
%v490 = load %struct.thing*, %struct.thing** @gs1
%v491 = getelementptr %struct.thing, %struct.thing* %v490, i1 0, i32 2
store %struct.thing* %v488, %struct.thing** %v491
%v493 = load %struct.thing*, %struct.thing** @gs1
%v494 = getelementptr %struct.thing, %struct.thing* %v493, i1 0, i32 2
%v495 = load %struct.thing*, %struct.thing** %v494
%v496 = getelementptr %struct.thing, %struct.thing* %v495, i1 0, i32 0
store i32 16, i32* %v496
%v498 = load %struct.thing*, %struct.thing** @gs1
%v499 = getelementptr %struct.thing, %struct.thing* %v498, i1 0, i32 2
%v500 = load %struct.thing*, %struct.thing** %v499
%v501 = getelementptr %struct.thing, %struct.thing* %v500, i1 0, i32 1
store i1 1, i1* %v501
%v503 = load %struct.thing*, %struct.thing** @gs1
%v504 = getelementptr %struct.thing, %struct.thing* %v503, i1 0, i32 2
%v505 = load %struct.thing*, %struct.thing** %v504
%v506 = getelementptr %struct.thing, %struct.thing* %v505, i1 0, i32 0
%v507 = load i32, i32* %v506
%v508 = icmp eq i32 %v507, 16
br i1 %v508, label %LU170, label %LU172

LU170:


call void @printl(i32 1)
br label %LU171

LU171:


%v519 = load %struct.thing*, %struct.thing** @gs1
%v520 = getelementptr %struct.thing, %struct.thing* %v519, i1 0, i32 2
%v521 = load %struct.thing*, %struct.thing** %v520
%v522 = getelementptr %struct.thing, %struct.thing* %v521, i1 0, i32 1
%v523 = load i1, i1* %v522
br i1 %v523, label %LU173, label %LU175

LU173:


call void @printl(i32 1)
br label %LU174

LU174:


%v528 = load %struct.thing*, %struct.thing** @gs1
%v529 = getelementptr %struct.thing, %struct.thing* %v528, i1 0, i32 2
%v530 = load %struct.thing*, %struct.thing** %v529
%v531 = bitcast %struct.thing* %v530 to i8*
call void @free(i8* %v531)
%v533 = load %struct.thing*, %struct.thing** @gs1
%v534 = bitcast %struct.thing* %v533 to i8*
call void @free(i8* %v534)
call void @printgroup(i32 9)
%v536 = call i8* @malloc(i32 12)
%v537 = bitcast i8* %v536 to %struct.thing*
store %struct.thing* %v537, %struct.thing** %s1
%v540 = load %struct.thing*, %struct.thing** %s1
%v541 = getelementptr %struct.thing, %struct.thing* %v540, i1 0, i32 1
store i1 1, i1* %v541
%v544 = load %struct.thing*, %struct.thing** %s1
call void @takealltypes(i32 3, i1 1, %struct.thing* %v544)
call void @printl(i32 2)
call void @tonofargs(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8)
call void @printl(i32 3)
%v546 = call i32 @returnint(i32 3)
store i32 %v546, i32* %i1
%v549 = load i32, i32* %i1
%v550 = icmp eq i32 %v549, 3
br i1 %v550, label %LU176, label %LU178

LU176:


call void @printl(i32 1)
br label %LU177

LU177:


%v556 = call i1 @returnbool(i1 1)
store i1 %v556, i1* %b1
%v559 = load i1, i1* %b1
br i1 %v559, label %LU179, label %LU181

LU179:


call void @printl(i32 1)
br label %LU180

LU180:


%v563 = call i8* @malloc(i32 12)
%v564 = bitcast i8* %v563 to %struct.thing*
store %struct.thing* %v564, %struct.thing** %s1
%v568 = load %struct.thing*, %struct.thing** %s1
%v566 = call %struct.thing* @returnstruct(%struct.thing* %v568)
store %struct.thing* %v566, %struct.thing** %s2
%v571 = load %struct.thing*, %struct.thing** %s1
%v573 = load %struct.thing*, %struct.thing** %s2
%v574 = icmp eq %struct.thing* %v571, %v573
br i1 %v574, label %LU182, label %LU184

LU182:


call void @printl(i32 1)
br label %LU183

LU183:


call void @printgroup(i32 10)
ret i32 0
br label %LU38

LU38:


ret i32 0
br label %LU38

LU184:


call void @printl(i32 0)
br label %LU183


LU181:


call void @printl(i32 0)
br label %LU180


LU178:


call void @print(i32 0)
%v555 = load i32, i32* %i1
call void @printl(i32 %v555)
br label %LU177


LU175:


call void @printl(i32 0)
br label %LU174


LU172:


call void @print(i32 0)
%v513 = load %struct.thing*, %struct.thing** @gs1
%v514 = getelementptr %struct.thing, %struct.thing* %v513, i1 0, i32 2
%v515 = load %struct.thing*, %struct.thing** %v514
%v516 = getelementptr %struct.thing, %struct.thing* %v515, i1 0, i32 0
%v517 = load i32, i32* %v516
call void @printl(i32 %v517)
br label %LU171


LU169:


call void @printl(i32 0)
br label %LU168


LU166:


call void @print(i32 0)
%v476 = load %struct.thing*, %struct.thing** @gs1
%v477 = getelementptr %struct.thing, %struct.thing* %v476, i1 0, i32 0
%v478 = load i32, i32* %v477
call void @printl(i32 %v478)
br label %LU165


LU163:


call void @printl(i32 0)
br label %LU162


LU160:


call void @print(i32 0)
%v451 = load i32, i32* @gi1
call void @printl(i32 %v451)
br label %LU159


LU157:


call void @printl(i32 0)
br label %LU156


LU154:


call void @printl(i32 0)
br label %LU153


LU151:


call void @printl(i32 0)
br label %LU150


LU148:


call void @print(i32 0)
%v401 = load %struct.thing*, %struct.thing** %s1
%v402 = getelementptr %struct.thing, %struct.thing* %v401, i1 0, i32 2
%v403 = load %struct.thing*, %struct.thing** %v402
%v404 = getelementptr %struct.thing, %struct.thing* %v403, i1 0, i32 0
%v405 = load i32, i32* %v404
call void @printl(i32 %v405)
br label %LU147


LU145:


call void @printl(i32 0)
br label %LU144


LU142:


call void @print(i32 0)
%v365 = load %struct.thing*, %struct.thing** %s1
%v366 = getelementptr %struct.thing, %struct.thing* %v365, i1 0, i32 0
%v367 = load i32, i32* %v366
call void @printl(i32 %v367)
br label %LU141


LU139:


call void @print(i32 0)
%v345 = load i32, i32* %i1
call void @printl(i32 %v345)
br label %LU138


LU131:


call void @printl(i32 1)
br label %LU130


LU128:


call void @printl(i32 0)
br label %LU127


LU125:


call void @printl(i32 1)
br label %LU124


LU122:


call void @printl(i32 1)
br label %LU121


LU119:


call void @printl(i32 0)
br label %LU118


LU116:


call void @printl(i32 0)
br label %LU115


LU113:


call void @printl(i32 0)
br label %LU112


LU110:


call void @printl(i32 0)
br label %LU109


LU107:


call void @print(i32 0)
%v265 = sdiv i32 6, 3
call void @printl(i32 %v265)
br label %LU106


LU104:


call void @print(i32 0)
%v259 = sub i32 3, 2
call void @printl(i32 %v259)
br label %LU103


LU101:


call void @print(i32 0)
%v253 = mul i32 2, 3
call void @printl(i32 %v253)
br label %LU100


LU98:


call void @print(i32 0)
%v247 = add i32 2, 3
call void @printl(i32 %v247)
br label %LU97


LU95:


call void @printl(i32 0)
br label %LU94


LU92:


call void @printl(i32 0)
br label %LU91


LU89:


call void @printl(i32 1)
br label %LU88


LU86:


call void @printl(i32 1)
br label %LU85


LU83:


call void @printl(i32 0)
br label %LU82


LU80:


call void @printl(i32 0)
br label %LU79


LU77:


call void @printl(i32 1)
br label %LU76


LU74:


call void @printl(i32 1)
br label %LU73


LU71:


call void @printl(i32 1)
br label %LU70


LU68:


call void @printl(i32 0)
br label %LU67


LU65:


call void @printl(i32 0)
br label %LU64


LU62:


call void @printl(i32 1)
br label %LU61


LU59:


call void @printl(i32 0)
br label %LU58


LU56:


call void @printl(i32 0)
br label %LU55


LU53:


call void @printl(i32 0)
br label %LU52


LU50:


call void @printl(i32 0)
br label %LU49


LU47:


call void @printl(i32 1)
br label %LU46


LU44:


call void @printl(i32 1)
br label %LU43


LU41:


call void @printl(i32 1)
br label %LU40

}

declare i8* @malloc(i32)
declare void @free(i8*)
declare void @print(i32)
declare void @printl(i32)
declare i32 @readchar()

