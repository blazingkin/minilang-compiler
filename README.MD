Minilang Compiler
=======

By John Potz and Alex Gravenor for CSC431 at Cal Poly in Spring 2019


Dependencies
=====

* Clang version 6.0.0
* arm-linux-gnueabi-gcc verion 7.4.0
* JRE version 9 or higher
* ANTLR

Or 

 * Docker

Flags
=====

*  `-llvm` (emit llvm, the default is arm)
* `-compile` (compile the output assembly / llvm)
* `-dead-code` (-dc) (Eliminate dead code)
* `-constant-prop` (-cp) (Propogate constants)
* `-simplify-cfg` (-sc) (Simplify the Control Flow Graph)


How to Use
=====

`./run.sh source_file.mini [-compile] [-llvm] [-dead-code] [-constant-prop] [-simplify-cfg]`

The output will be to `source_file.ll`, `source_file.s` and `source_file.`

If you compile to assembly, it creates an ARM32 elf executable.


Project Structure
====

The project is written in the [blz](https://blazingk.in/blz) programming language.

Code structure
```
Source - Main folder
    - ast - ast nodes
    - cfg - code relating to the control flow graph
    - instructions - relating to instruction level details
    - interference_graph - used for allocating registers
    - tables - helper data structures
    - types - refering to different minilang types
```

Hi professor Keen :)