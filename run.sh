#!/bin/bash
export CLASSPATH="$CLASSPATH:./parser"
java -Xss1024m MiniCompiler $1 > compiled.json
if [ $? -eq 0 ];
then
    blz Source/minilang_compiler.blz compiled.json ${@:2}
fi
rm compiled.json