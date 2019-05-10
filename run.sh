#!/bin/bash
export CLASSPATH="$CLASSPATH:./parser"

if [[ $* == *-llvm* ]];
then
    OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1ll/')
else
    OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1s/')
fi
BINOUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1/')



java -Xss1024m MiniCompiler $1 > compiled.json
if [ $? -eq 0 ];
then
    blz Source/minilang_compiler.blz compiled.json ${@:2} > $OUTPUT
    #if [ $? -eq 0 ];
    #then
        #clang $OUTPUT util.c -o $BINOUTPUT
        #if [ $? -eq 0 ];
        #then
        #    chmod +x $BINOUTPUT
        #fi
    #fi
fi
rm compiled.json
