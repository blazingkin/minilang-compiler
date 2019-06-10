#!/usr/bin/env python3
import os, sys
import subprocess
from subprocess import Popen, PIPE

if len(sys.argv) > 1:
    to_do = sys.argv[1]
else:
    to_do = "compile_all_opts"

flags = sys.argv[2:]

if __name__ == "__main__":
    if to_do == "compile_all_opts":
        for bench in os.listdir("benchmarks"):
            subprocess.call(["cp", "benchmarks/{0}/{0}.mini".format(bench), "."])
            print("Compiling {}.mini".format(bench))
            os.system("./run.sh {0}.mini {} -compile".format(bench, " ".join(flags)))
            subprocess.call(["rm", "{0}.mini".format(bench)])
    elif to_do == "test_all":
        for bench in os.listdir("benchmarks"):
            subprocess.call(["cp", "benchmarks/{0}/{0}.mini".format(bench), "."])
            print("Compiling {}.mini".format(bench))
            os.system("./run.sh {0}.mini -llvm {1} -compile".format(bench, " ".join(flags)))
            subprocess.call(["rm", "{0}.mini".format(bench)])
            test_input = open("benchmarks/{}/input.longer".format(bench)).read()
            output = Popen(['./{0}.'.format(bench)], stdin=PIPE, stdout=PIPE).communicate(bytearray(test_input, "utf-8"))[0]
            output = str(output, "utf-8")
            test_output = open("benchmarks/{}/output.longer".format(bench)).read()
            if output != test_output:
                print("Benchmark {} failed".format(bench))
                print(output)
                print(test_output)
            else:
                print("Benchmark {} passed".format(bench))
