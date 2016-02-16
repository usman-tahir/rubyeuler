#!/usr/bin/env python
# http://rosettacode.org/wiki/Ackermann_function

def ackermann(m,n):
  if m == 0:
    return n + 1
  elif m > 0 and n == 0:
    return ackermann(m-1,1)
  elif m > 0 and n > 0:
    return ackermann(m-1,(ackermann(m,n-1)))

for m in xrange(0,4):
  for n in xrange(0,4):
    print str(m) + ", " + str(n) + ": " + str(ackermann(m,n))
