#!/bin/bash
export CLASSPATH="$CLASSPATH:./parser"


if [[ $* == *-llvm* ]];
then
    OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1ll/')
    CC="clang"
else
    OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1s/')
    CC="arm-linux-gnueabi-gcc"
    if [ -z $(which arm-linux-gnueabi-gcc) ];
    then
        echo "Missing arm-linux-gnueabi-gcc dependency"
        echo "You can install this via sudo apt-get install gcc-arm-linux-gnueabi on a debian system"
        echo "or sudo pacman -S arm-linux-gnueabi-gcc on arch linux"
        echo "or sudo yum install gcc-arm-linux-gnu on redhat"
        exit 1
    fi
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
    bin/bin/blz Source/minilang_compiler.blz compiled.json ${@:2} > $OUTPUT
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
