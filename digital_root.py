#!/usr/bin/env python

def sum_digits(n,c=0):
  if n < 10:
    return n + c
  else:
    return sum_digits(n/10,c+(n%10))

def find_root(n,persistence=1):
  if n < 10:
    return (n,persistence)
  else:
    return find_root(sum_digits(n),persistence+1)

for t in [627615, 39390, 588225, 393900588225]:
  print find_root(t)
