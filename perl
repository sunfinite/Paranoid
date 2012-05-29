#!/usr/bin/python

import subprocess
import sys
try:
    tempstr = subprocess.getoutput("/home/sunfinite/rakudo-star-2011.07/perl6 --target=pir " + sys.argv[1])
    tempstr = tempstr.replace(":anon", "")
    if len(sys.argv) == 3:
        f = open(sys.argv[2], 'w')
        f.write(tempstr)
        f.close()
    else:
        print(tempstr)

except:
    print("Arguments required")
