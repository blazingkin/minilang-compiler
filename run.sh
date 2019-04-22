#!/bin/bash
export CLASSPATH="$CLASSPATH:./parser"
java -Xss1024m MiniCompiler $1 > compiled.json
OUTPUT=$(echo $1 | sed 's/\(.*\.\)mini/\1ll/')
if [ $? -eq 0 ];
then
    blz Source/minilang_compiler.blz compiled.json ${@:2} > $OUTPUT
fi
rm compiled.json