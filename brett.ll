%struct.thing = type {i32, i32, %struct.thing*}
@gi1 = common global i32 0, align 4
@gb1 = common global i32 0, align 4
@gs1 = common global %struct.thing* null, align 4
@counter = common global i32 0, align 4
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
define i32 @setcounter(i32 %_P_val)
{
LU4:
%val = alloca i32
store i32 %_P_val, i32* %val
%v12 = load i32, i32* %val
store i32 %v12, i32* @counter
ret i32 1
br label %LU5

LU5:
ret i32 0
br label %LU5
}
define void @takealltypes(i32 %_P_i, i32 %_P_b, %struct.thing* %_P_s)
{
LU6:
%i = alloca i32
store i32 %_P_i, i32* %i
%b = alloca i32
store i32 %_P_b, i32* %b
%s = alloca %struct.thing*
store %struct.thing* %_P_s, %struct.thing** %s
%v23 = load i32, i32* %i
%v24 = icmp eq i32 %v23, 3
br i1 %v24, label %LU8, label %LU10

LU8:
call void @printl(i32 1)
br label %LU9

LU9:
%v29 = load i32, i32* %b
%v30 = trunc i32 %v29 to i1
br i1 %v30, label %LU11, label %LU13

LU11:
call void @printl(i32 1)
br label %LU12

LU12:
%v35 = load %struct.thing*, %struct.thing** %s
%v36 = getelementptr %struct.thing, %struct.thing* %v35, i1 0, i32 1
%v37 = load i32, i32* %v36
%v38 = trunc i32 %v37 to i1
br i1 %v38, label %LU14, label %LU16

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
%v61 = load i32, i32* %a5
%v62 = icmp eq i32 %v61, 5
br i1 %v62, label %LU19, label %LU21

LU19:
call void @printl(i32 1)
br label %LU20

LU20:
%v69 = load i32, i32* %a6
%v70 = icmp eq i32 %v69, 6
br i1 %v70, label %LU22, label %LU24

LU22:
call void @printl(i32 1)
br label %LU23

LU23:
%v77 = load i32, i32* %a7
%v78 = icmp eq i32 %v77, 7
br i1 %v78, label %LU25, label %LU27

LU25:
call void @printl(i32 1)
br label %LU26

LU26:
%v85 = load i32, i32* %a8
%v86 = icmp eq i32 %v85, 8
br i1 %v86, label %LU28, label %LU30

LU28:
call void @printl(i32 1)
br label %LU29

LU29:
br label %LU18

LU18:
ret void 

LU30:
call void @print(i32 0)
%v91 = load i32, i32* %a8
call void @printl(i32 %v91)
br label %LU29


LU27:
call void @print(i32 0)
%v83 = load i32, i32* %a7
call void @printl(i32 %v83)
br label %LU26


LU24:
call void @print(i32 0)
%v75 = load i32, i32* %a6
call void @printl(i32 %v75)
br label %LU23


LU21:
call void @print(i32 0)
%v67 = load i32, i32* %a5
call void @printl(i32 %v67)
br label %LU20

}
define i32 @returnint(i32 %_P_ret)
{
LU31:
%ret = alloca i32
store i32 %_P_ret, i32* %ret
%v97 = load i32, i32* %ret
ret i32 %v97
br label %LU32

LU32:
ret i32 0
br label %LU32
}
define i32 @returnbool(i32 %_P_ret)
{
LU33:
%ret = alloca i32
store i32 %_P_ret, i32* %ret
%v103 = load i32, i32* %ret
ret i32 %v103
br label %LU34

LU34:
ret i32 0
br label %LU34
}
define %struct.thing* @returnstruct(%struct.thing* %_P_ret)
{
LU35:
%ret = alloca %struct.thing*
store %struct.thing* %_P_ret, %struct.thing** %ret
%v109 = load %struct.thing*, %struct.thing** %ret
ret %struct.thing* %v109
br label %LU36

LU36:
ret %struct.thing* null
br label %LU36
}
define i32 @main()
{
LU37:
%b1 = alloca i32
%b2 = alloca i32
%i1 = alloca i32
%i2 = alloca i32
%i3 = alloca i32
%s1 = alloca %struct.thing*
%s2 = alloca %struct.thing*
store i32 0, i32* @counter
call void @printgroup(i32 1)
store i32 0, i32* %b1
store i32 0, i32* %b2
%v124 = load i32, i32* %b1
%v126 = load i32, i32* %b2
%v127 = and i32 %v124, %v126
%v128 = trunc i32 %v127 to i1
br i1 %v128, label %LU39, label %LU41

LU39:
call void @printl(i32 0)
br label %LU40

LU40:
store i32 1, i32* %b1
store i32 0, i32* %b2
%v135 = load i32, i32* %b1
%v137 = load i32, i32* %b2
%v138 = and i32 %v135, %v137
%v139 = trunc i32 %v138 to i1
br i1 %v139, label %LU42, label %LU44

LU42:
call void @printl(i32 0)
br label %LU43

LU43:
store i32 0, i32* %b1
store i32 1, i32* %b2
%v146 = load i32, i32* %b1
%v148 = load i32, i32* %b2
%v149 = and i32 %v146, %v148
%v150 = trunc i32 %v149 to i1
br i1 %v150, label %LU45, label %LU47

LU45:
call void @printl(i32 0)
br label %LU46

LU46:
store i32 1, i32* %b1
store i32 1, i32* %b2
%v157 = load i32, i32* %b1
%v159 = load i32, i32* %b2
%v160 = and i32 %v157, %v159
%v161 = trunc i32 %v160 to i1
br i1 %v161, label %LU48, label %LU50

LU48:
call void @printl(i32 1)
br label %LU49

LU49:
store i32 0, i32* @counter
call void @printgroup(i32 2)
store i32 1, i32* %b1
store i32 1, i32* %b2
%v170 = load i32, i32* %b1
%v172 = load i32, i32* %b2
%v173 = or i32 %v170, %v172
%v174 = trunc i32 %v173 to i1
br i1 %v174, label %LU51, label %LU53

LU51:
call void @printl(i32 1)
br label %LU52

LU52:
store i32 1, i32* %b1
store i32 0, i32* %b2
%v181 = load i32, i32* %b1
%v183 = load i32, i32* %b2
%v184 = or i32 %v181, %v183
%v185 = trunc i32 %v184 to i1
br i1 %v185, label %LU54, label %LU56

LU54:
call void @printl(i32 1)
br label %LU55

LU55:
store i32 0, i32* %b1
store i32 1, i32* %b2
%v192 = load i32, i32* %b1
%v194 = load i32, i32* %b2
%v195 = or i32 %v192, %v194
%v196 = trunc i32 %v195 to i1
br i1 %v196, label %LU57, label %LU59

LU57:
call void @printl(i32 1)
br label %LU58

LU58:
store i32 0, i32* %b1
store i32 0, i32* %b2
%v203 = load i32, i32* %b1
%v205 = load i32, i32* %b2
%v206 = or i32 %v203, %v205
%v207 = trunc i32 %v206 to i1
br i1 %v207, label %LU60, label %LU62

LU60:
call void @printl(i32 0)
br label %LU61

LU61:
call void @printgroup(i32 3)
%v212 = icmp sgt i32 42, 1
br i1 %v212, label %LU63, label %LU65

LU63:
call void @printl(i32 1)
br label %LU64

LU64:
%v216 = icmp sge i32 42, 1
br i1 %v216, label %LU66, label %LU68

LU66:
call void @printl(i32 1)
br label %LU67

LU67:
%v220 = icmp slt i32 42, 1
br i1 %v220, label %LU69, label %LU71

LU69:
call void @printl(i32 0)
br label %LU70

LU70:
%v224 = icmp sle i32 42, 1
br i1 %v224, label %LU72, label %LU74

LU72:
call void @printl(i32 0)
br label %LU73

LU73:
%v228 = icmp eq i32 42, 1
br i1 %v228, label %LU75, label %LU77

LU75:
call void @printl(i32 0)
br label %LU76

LU76:
%v232 = icmp ne i32 42, 1
br i1 %v232, label %LU78, label %LU80

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
%v252 = add i32 2, 3
%v253 = icmp eq i32 %v252, 5
br i1 %v253, label %LU96, label %LU98

LU96:
call void @printl(i32 1)
br label %LU97

LU97:
%v258 = mul i32 2, 3
%v259 = icmp eq i32 %v258, 6
br i1 %v259, label %LU99, label %LU101

LU99:
call void @printl(i32 1)
br label %LU100

LU100:
%v264 = sub i32 3, 2
%v265 = icmp eq i32 %v264, 1
br i1 %v265, label %LU102, label %LU104

LU102:
call void @printl(i32 1)
br label %LU103

LU103:
%v270 = sdiv i32 6, 3
%v271 = icmp eq i32 %v270, 2
br i1 %v271, label %LU105, label %LU107

LU105:
call void @printl(i32 1)
br label %LU106

LU106:
%v276 = icmp slt i32 -6, 0
br i1 %v276, label %LU108, label %LU110

LU108:
call void @printl(i32 1)
br label %LU109

LU109:
call void @printgroup(i32 5)
store i32 42, i32* %i1
%v283 = load i32, i32* %i1
%v284 = icmp eq i32 %v283, 42
br i1 %v284, label %LU111, label %LU113

LU111:
call void @printl(i32 1)
br label %LU112

LU112:
store i32 3, i32* %i1
store i32 2, i32* %i2
%v291 = load i32, i32* %i1
%v293 = load i32, i32* %i2
%v294 = add i32 %v291, %v293
store i32 %v294, i32* %i3
%v297 = load i32, i32* %i3
%v298 = icmp eq i32 %v297, 5
br i1 %v298, label %LU114, label %LU116

LU114:
call void @printl(i32 1)
br label %LU115

LU115:
store i32 1, i32* %b1
%v304 = load i32, i32* %b1
%v305 = trunc i32 %v304 to i1
br i1 %v305, label %LU117, label %LU119

LU117:
call void @printl(i32 1)
br label %LU118

LU118:
%v310 = load i32, i32* %b1
%v311 = xor i32 1, %v310
%v312 = trunc i32 %v311 to i1
br i1 %v312, label %LU120, label %LU122

LU120:
call void @printl(i32 0)
br label %LU121

LU121:
store i32 0, i32* %b1
%v318 = load i32, i32* %b1
%v319 = trunc i32 %v318 to i1
br i1 %v319, label %LU123, label %LU125

LU123:
call void @printl(i32 0)
br label %LU124

LU124:
%v324 = load i32, i32* %b1
%v325 = xor i32 1, %v324
%v326 = trunc i32 %v325 to i1
br i1 %v326, label %LU126, label %LU128

LU126:
call void @printl(i32 1)
br label %LU127

LU127:
%v331 = load i32, i32* %b1
%v332 = trunc i32 %v331 to i1
br i1 %v332, label %LU129, label %LU131

LU129:
call void @printl(i32 0)
br label %LU130

LU130:
call void @printgroup(i32 6)
store i32 0, i32* %i1
br label %LU132

LU132:
%v340 = load i32, i32* %i1
%v341 = icmp slt i32 %v340, 5
br i1 %v341, label %LU133, label %LU134

LU133:
%v345 = load i32, i32* %i1
%v346 = icmp sge i32 %v345, 5
br i1 %v346, label %LU135, label %LU136

LU135:
call void @printl(i32 0)
br label %LU136

LU136:
%v350 = load i32, i32* %i1
%v351 = add i32 %v350, 5
store i32 %v351, i32* %i1
br label %LU132



LU134:
%v354 = load i32, i32* %i1
%v355 = icmp eq i32 %v354, 5
br i1 %v355, label %LU137, label %LU139

LU137:
call void @printl(i32 1)
br label %LU138

LU138:
call void @printgroup(i32 7)
%v362 = call i8* @malloc(i32 12)
%v363 = bitcast i8* %v362 to %struct.thing*
store %struct.thing* %v363, %struct.thing** %s1
%v366 = load %struct.thing*, %struct.thing** %s1
%v367 = getelementptr %struct.thing, %struct.thing* %v366, i1 0, i32 0
store i32 42, i32* %v367
%v369 = load %struct.thing*, %struct.thing** %s1
%v370 = getelementptr %struct.thing, %struct.thing* %v369, i1 0, i32 1
store i32 1, i32* %v370
%v372 = load %struct.thing*, %struct.thing** %s1
%v373 = getelementptr %struct.thing, %struct.thing* %v372, i1 0, i32 0
%v374 = load i32, i32* %v373
%v375 = icmp eq i32 %v374, 42
br i1 %v375, label %LU140, label %LU142

LU140:
call void @printl(i32 1)
br label %LU141

LU141:
%v384 = load %struct.thing*, %struct.thing** %s1
%v385 = getelementptr %struct.thing, %struct.thing* %v384, i1 0, i32 1
%v386 = load i32, i32* %v385
%v387 = trunc i32 %v386 to i1
br i1 %v387, label %LU143, label %LU145

LU143:
call void @printl(i32 1)
br label %LU144

LU144:
%v391 = call i8* @malloc(i32 12)
%v392 = bitcast i8* %v391 to %struct.thing*
%v394 = load %struct.thing*, %struct.thing** %s1
%v395 = getelementptr %struct.thing, %struct.thing* %v394, i1 0, i32 2
store %struct.thing* %v392, %struct.thing** %v395
%v397 = load %struct.thing*, %struct.thing** %s1
%v398 = getelementptr %struct.thing, %struct.thing* %v397, i1 0, i32 2
%v399 = load %struct.thing*, %struct.thing** %v398
%v400 = getelementptr %struct.thing, %struct.thing* %v399, i1 0, i32 0
store i32 13, i32* %v400
%v402 = load %struct.thing*, %struct.thing** %s1
%v403 = getelementptr %struct.thing, %struct.thing* %v402, i1 0, i32 2
%v404 = load %struct.thing*, %struct.thing** %v403
%v405 = getelementptr %struct.thing, %struct.thing* %v404, i1 0, i32 1
store i32 0, i32* %v405
%v407 = load %struct.thing*, %struct.thing** %s1
%v408 = getelementptr %struct.thing, %struct.thing* %v407, i1 0, i32 2
%v409 = load %struct.thing*, %struct.thing** %v408
%v410 = getelementptr %struct.thing, %struct.thing* %v409, i1 0, i32 0
%v411 = load i32, i32* %v410
%v412 = icmp eq i32 %v411, 13
br i1 %v412, label %LU146, label %LU148

LU146:
call void @printl(i32 1)
br label %LU147

LU147:
%v423 = load %struct.thing*, %struct.thing** %s1
%v424 = getelementptr %struct.thing, %struct.thing* %v423, i1 0, i32 2
%v425 = load %struct.thing*, %struct.thing** %v424
%v426 = getelementptr %struct.thing, %struct.thing* %v425, i1 0, i32 1
%v427 = load i32, i32* %v426
%v428 = xor i32 1, %v427
%v429 = trunc i32 %v428 to i1
br i1 %v429, label %LU149, label %LU151

LU149:
call void @printl(i32 1)
br label %LU150

LU150:
%v434 = load %struct.thing*, %struct.thing** %s1
%v436 = load %struct.thing*, %struct.thing** %s1
%v437 = icmp eq %struct.thing* %v434, %v436
br i1 %v437, label %LU152, label %LU154

LU152:
call void @printl(i32 1)
br label %LU153

LU153:
%v442 = load %struct.thing*, %struct.thing** %s1
%v444 = load %struct.thing*, %struct.thing** %s1
%v445 = getelementptr %struct.thing, %struct.thing* %v444, i1 0, i32 2
%v446 = load %struct.thing*, %struct.thing** %v445
%v447 = icmp ne %struct.thing* %v442, %v446
br i1 %v447, label %LU155, label %LU157

LU155:
call void @printl(i32 1)
br label %LU156

LU156:
%v452 = load %struct.thing*, %struct.thing** %s1
%v453 = getelementptr %struct.thing, %struct.thing* %v452, i1 0, i32 2
%v454 = load %struct.thing*, %struct.thing** %v453
%v455 = bitcast %struct.thing* %v454 to i8*
call void @free(i8* %v455)
%v457 = load %struct.thing*, %struct.thing** %s1
%v458 = bitcast %struct.thing* %v457 to i8*
call void @free(i8* %v458)
call void @printgroup(i32 8)
store i32 7, i32* @gi1
%v462 = load i32, i32* @gi1
%v463 = icmp eq i32 %v462, 7
br i1 %v463, label %LU158, label %LU160

LU158:
call void @printl(i32 1)
br label %LU159

LU159:
store i32 1, i32* @gb1
%v471 = load i32, i32* @gb1
%v472 = trunc i32 %v471 to i1
br i1 %v472, label %LU161, label %LU163

LU161:
call void @printl(i32 1)
br label %LU162

LU162:
%v476 = call i8* @malloc(i32 12)
%v477 = bitcast i8* %v476 to %struct.thing*
store %struct.thing* %v477, %struct.thing** @gs1
%v480 = load %struct.thing*, %struct.thing** @gs1
%v481 = getelementptr %struct.thing, %struct.thing* %v480, i1 0, i32 0
store i32 34, i32* %v481
%v483 = load %struct.thing*, %struct.thing** @gs1
%v484 = getelementptr %struct.thing, %struct.thing* %v483, i1 0, i32 1
store i32 0, i32* %v484
%v486 = load %struct.thing*, %struct.thing** @gs1
%v487 = getelementptr %struct.thing, %struct.thing* %v486, i1 0, i32 0
%v488 = load i32, i32* %v487
%v489 = icmp eq i32 %v488, 34
br i1 %v489, label %LU164, label %LU166

LU164:
call void @printl(i32 1)
br label %LU165

LU165:
%v498 = load %struct.thing*, %struct.thing** @gs1
%v499 = getelementptr %struct.thing, %struct.thing* %v498, i1 0, i32 1
%v500 = load i32, i32* %v499
%v501 = xor i32 1, %v500
%v502 = trunc i32 %v501 to i1
br i1 %v502, label %LU167, label %LU169

LU167:
call void @printl(i32 1)
br label %LU168

LU168:
%v506 = call i8* @malloc(i32 12)
%v507 = bitcast i8* %v506 to %struct.thing*
%v509 = load %struct.thing*, %struct.thing** @gs1
%v510 = getelementptr %struct.thing, %struct.thing* %v509, i1 0, i32 2
store %struct.thing* %v507, %struct.thing** %v510
%v512 = load %struct.thing*, %struct.thing** @gs1
%v513 = getelementptr %struct.thing, %struct.thing* %v512, i1 0, i32 2
%v514 = load %struct.thing*, %struct.thing** %v513
%v515 = getelementptr %struct.thing, %struct.thing* %v514, i1 0, i32 0
store i32 16, i32* %v515
%v517 = load %struct.thing*, %struct.thing** @gs1
%v518 = getelementptr %struct.thing, %struct.thing* %v517, i1 0, i32 2
%v519 = load %struct.thing*, %struct.thing** %v518
%v520 = getelementptr %struct.thing, %struct.thing* %v519, i1 0, i32 1
store i32 1, i32* %v520
%v522 = load %struct.thing*, %struct.thing** @gs1
%v523 = getelementptr %struct.thing, %struct.thing* %v522, i1 0, i32 2
%v524 = load %struct.thing*, %struct.thing** %v523
%v525 = getelementptr %struct.thing, %struct.thing* %v524, i1 0, i32 0
%v526 = load i32, i32* %v525
%v527 = icmp eq i32 %v526, 16
br i1 %v527, label %LU170, label %LU172

LU170:
call void @printl(i32 1)
br label %LU171

LU171:
%v538 = load %struct.thing*, %struct.thing** @gs1
%v539 = getelementptr %struct.thing, %struct.thing* %v538, i1 0, i32 2
%v540 = load %struct.thing*, %struct.thing** %v539
%v541 = getelementptr %struct.thing, %struct.thing* %v540, i1 0, i32 1
%v542 = load i32, i32* %v541
%v543 = trunc i32 %v542 to i1
br i1 %v543, label %LU173, label %LU175

LU173:
call void @printl(i32 1)
br label %LU174

LU174:
%v548 = load %struct.thing*, %struct.thing** @gs1
%v549 = getelementptr %struct.thing, %struct.thing* %v548, i1 0, i32 2
%v550 = load %struct.thing*, %struct.thing** %v549
%v551 = bitcast %struct.thing* %v550 to i8*
call void @free(i8* %v551)
%v553 = load %struct.thing*, %struct.thing** @gs1
%v554 = bitcast %struct.thing* %v553 to i8*
call void @free(i8* %v554)
call void @printgroup(i32 9)
%v556 = call i8* @malloc(i32 12)
%v557 = bitcast i8* %v556 to %struct.thing*
store %struct.thing* %v557, %struct.thing** %s1
%v560 = load %struct.thing*, %struct.thing** %s1
%v561 = getelementptr %struct.thing, %struct.thing* %v560, i1 0, i32 1
store i32 1, i32* %v561
%v564 = load %struct.thing*, %struct.thing** %s1
call void @takealltypes(i32 3, i32 1, %struct.thing* %v564)
call void @printl(i32 2)
call void @tonofargs(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8)
call void @printl(i32 3)
%v566 = call i32 @returnint(i32 3)
store i32 %v566, i32* %i1
%v569 = load i32, i32* %i1
%v570 = icmp eq i32 %v569, 3
br i1 %v570, label %LU176, label %LU178

LU176:
call void @printl(i32 1)
br label %LU177

LU177:
%v576 = call i32 @returnbool(i32 1)
store i32 %v576, i32* %b1
%v579 = load i32, i32* %b1
%v580 = trunc i32 %v579 to i1
br i1 %v580, label %LU179, label %LU181

LU179:
call void @printl(i32 1)
br label %LU180

LU180:
%v584 = call i8* @malloc(i32 12)
%v585 = bitcast i8* %v584 to %struct.thing*
store %struct.thing* %v585, %struct.thing** %s1
%v589 = load %struct.thing*, %struct.thing** %s1
%v587 = call %struct.thing* @returnstruct(%struct.thing* %v589)
store %struct.thing* %v587, %struct.thing** %s2
%v592 = load %struct.thing*, %struct.thing** %s1
%v594 = load %struct.thing*, %struct.thing** %s2
%v595 = icmp eq %struct.thing* %v592, %v594
br i1 %v595, label %LU182, label %LU184

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
%v575 = load i32, i32* %i1
call void @printl(i32 %v575)
br label %LU177


LU175:
call void @printl(i32 0)
br label %LU174


LU172:
call void @print(i32 0)
%v532 = load %struct.thing*, %struct.thing** @gs1
%v533 = getelementptr %struct.thing, %struct.thing* %v532, i1 0, i32 2
%v534 = load %struct.thing*, %struct.thing** %v533
%v535 = getelementptr %struct.thing, %struct.thing* %v534, i1 0, i32 0
%v536 = load i32, i32* %v535
call void @printl(i32 %v536)
br label %LU171


LU169:
call void @printl(i32 0)
br label %LU168


LU166:
call void @print(i32 0)
%v494 = load %struct.thing*, %struct.thing** @gs1
%v495 = getelementptr %struct.thing, %struct.thing* %v494, i1 0, i32 0
%v496 = load i32, i32* %v495
call void @printl(i32 %v496)
br label %LU165


LU163:
call void @printl(i32 0)
br label %LU162


LU160:
call void @print(i32 0)
%v468 = load i32, i32* @gi1
call void @printl(i32 %v468)
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
%v417 = load %struct.thing*, %struct.thing** %s1
%v418 = getelementptr %struct.thing, %struct.thing* %v417, i1 0, i32 2
%v419 = load %struct.thing*, %struct.thing** %v418
%v420 = getelementptr %struct.thing, %struct.thing* %v419, i1 0, i32 0
%v421 = load i32, i32* %v420
call void @printl(i32 %v421)
br label %LU147


LU145:
call void @printl(i32 0)
br label %LU144


LU142:
call void @print(i32 0)
%v380 = load %struct.thing*, %struct.thing** %s1
%v381 = getelementptr %struct.thing, %struct.thing* %v380, i1 0, i32 0
%v382 = load i32, i32* %v381
call void @printl(i32 %v382)
br label %LU141


LU139:
call void @print(i32 0)
%v360 = load i32, i32* %i1
call void @printl(i32 %v360)
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
%v275 = sdiv i32 6, 3
call void @printl(i32 %v275)
br label %LU106


LU104:
call void @print(i32 0)
%v269 = sub i32 3, 2
call void @printl(i32 %v269)
br label %LU103


LU101:
call void @print(i32 0)
%v263 = mul i32 2, 3
call void @printl(i32 %v263)
br label %LU100


LU98:
call void @print(i32 0)
%v257 = add i32 2, 3
call void @printl(i32 %v257)
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

