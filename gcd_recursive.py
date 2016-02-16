#!/usr/bin/env python

def greatest_common_divisor(x,y):
  if y == 0:
    return x
  else:
    return greatest_common_divisor(y,(x%y))

for pair in [(36,33),(36,16),(8,24)]:
  print greatest_common_divisor(pair[0],pair[1])