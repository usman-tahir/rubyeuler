#!/usr/bin/env python

def recursum(list,index=0):
  if index == len(list):
    return 0
  else:
    return list[index] + recursum(list,index+1)

t = [1,2,3,4,5]
print(recursum(t))
