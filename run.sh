#!/bin/bash
export CLASSPATH="$CLASSPATH:./parser"

if [[ $* == *-llvm* ]];
then
    OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1ll/')
    CC="clang"
else
    OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1s/')
    CC="arm-linux-gnueabi-gcc"
fi
BINOUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1/')

if [[ $* == *-compile* ]];
then
    COMPILE=1
else
    COMPILE=0
fi

java -Xss1024m MiniCompiler $1 > compiled.json
if [ $? -eq 0 ];
then
    blz Source/minilang_compiler.blz compiled.json ${@:2} > $OUTPUT
    if [ $? -eq 0 -a $COMPILE -eq 1 ];
    then
        $CC $OUTPUT util.c -o $BINOUTPUT
        if [ $? -eq 0 ];
        then
            chmod +x $BINOUTPUT
        fi
    fi
fi
rm compiled.json
