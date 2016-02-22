#!/usr/bin/env python
# http://rosettacode.org/wiki/Repeat_a_string

def repeat(str,number):
  result = ""
  for i in xrange(0,number):
    result += str
  return result

print(repeat("ha",5))
