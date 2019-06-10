#!/usr/bin/env python3
import os, sys, time, statistics
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
    elif to_do == "bench":
        for bench in os.listdir("benchmarks"):
            subprocess.call(["cp", "benchmarks/{0}/{0}.mini".format(bench), "."])
            print("Compiling {}.mini".format(bench))
            os.system("./run.sh {0}.mini {1} -compile".format(bench, " ".join(flags)))
            subprocess.call(["rm", "{0}.mini".format(bench)])
            test_input = open("benchmarks/{}/input.longer".format(bench)).read()
            deltas = []
            sum = 0
            print("Running tests")
            for i in range(20):
                starttime = time.time()
                output = Popen(['./{0}.'.format(bench)], stdin=PIPE, stdout=PIPE).communicate(bytearray(test_input, "utf-8"))[0]
                endtime = time.time()
                deltas.append(endtime - starttime)
                sum += endtime - starttime
            print(deltas)
            print("Average {}".format(sum / 20))
            print("Mean {}".format(statistics.mean(deltas)))
            print("StdDev {}".format(statistics.stdev(deltas)))
            r = open("results.csv", "a")
            r.write("\n{},{},{}".format(bench, " ".join(flags),",".join(map(lambda x: str(x), deltas))))
            r.close()

