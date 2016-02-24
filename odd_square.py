#!/usr/bin/env python
# http://programmingpraxis.com/2013/02/26/an-odd-way-to-square/

def square(n):
  result = n
  for _ in xrange(1,n):
    result += n
  return result

print(square(3))
print(square(9))
print(square(5))
