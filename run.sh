#!/bin/bash
export CLASSPATH="$CLASSPATH:./parser"
java MiniCompiler example.mini > compiled.json
if [ $? -eq 0 ];
then
    blz Source/minilang_compiler.blz compiled.json
fi
rm compiled.json