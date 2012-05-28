#!/usr/bin/python

import subprocess
import sys
try:
    tempstr = subprocess.getoutput("/home/sunfinite/rakudo-star-2011.07/perl6 --target=pir " + sys.argv[2])
    tempstr = tempstr.replace(":anon", "")
    if len(sys.argv) == 4:
        f = open(sys.argv[3], 'w')
        f.write(tempstr)
        f.close()
    else:
        print(tempstr)

except:
    print("Arguments required")
