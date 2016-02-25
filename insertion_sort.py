#!/usr/bin/env python

def insertion_sort(list):
  new_list = list
  for i in xrange(0,len(new_list)):
    v = new_list[i]
    j = i-1
    while j >= 0 and new_list[j] > v:
      new_list[j+1] = new_list[j]
      j = j - 1
    new_list[j+1] = v
  return new_list

t = [4, 65, 2, -31, 0, 99, 2, 83, 782, 1]

print insertion_sort(t)