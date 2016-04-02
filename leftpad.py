#!/usr/bin/env python
# https://programmingpraxis.com/2016/03/25/leftpad/

def leftpad(s,l,c=' '):
  return "".join([c for x in xrange(0,l)]) + s

print leftpad("leftpad",10)
print leftpad("leftpad",10,"*")
