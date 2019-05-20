#!/usr/bin/env python3
import os
import subprocess

for bench in os.listdir("benchmarks"):
    subprocess.call(["cp", "benchmarks/{0}/{0}.mini".format(bench), "."])
    print("Compiling {}.mini".format(bench))
    os.system("./run.sh {0}.mini -compile".format(bench))
    subprocess.call(["rm", "{0}.mini".format(bench)])