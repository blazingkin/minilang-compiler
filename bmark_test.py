#!/usr/bin/env python3
import os
import subprocess

for bench in os.listdir("benchmarks"):
    subprocess.call(["cp", "benchmarks/{0}/{0}.mini".format(bench), "."])
    os.system("./run.sh {0}.mini".format(bench))
    subprocess.call(["rm", "{0}.mini".format(bench), "{0}.ll".format(bench), "{0}.".format(bench)])