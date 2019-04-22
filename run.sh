#!/bin/bash
export CLASSPATH="$CLASSPATH:./parser"
OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1ll/')
BINOUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1/')
java -Xss1024m MiniCompiler $1 > compiled.json
if [ $? -eq 0 ];
then
    blz Source/minilang_compiler.blz compiled.json ${@:2} > $OUTPUT
    if [ $? -eq 0 ];
    then
        clang $OUTPUT util.c -o $BINOUTPUT
        if [ $? -eq 0 ];
        then
            chmod +x $BINOUTPUT
        fi
    fi
fi
rm compiled.json
