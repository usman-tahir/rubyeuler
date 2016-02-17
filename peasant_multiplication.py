#!/usr/bin/env python
# http://programmingpraxis.com/2014/12/23/ancient-algorithms/

def product(left,right):
  prod = 0
  while left > 0:
    if left % 2 == 1:
      prod += right
      left /= 2
      right *= 2
  return prod

print product(3,9)