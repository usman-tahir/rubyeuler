#!/usr/bin/env python
# add first n odd integers

def add_odd_integers(n):
  def _add_odd_int(n,counter,next,acc):
    if counter == n:
      return acc
    else:
      return _add_odd_int(n,counter+1,next+2,acc+next)
  return _add_odd_int(n,0,1,0)

print add_odd_integers(9)