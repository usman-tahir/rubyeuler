#!/usr/bin/env python

def quicksort(list):
  if len(list) <= 1:
    return list
  else:
    lesser = []
    greater = []
    equal = []
    pivot = list[len(list)/2]
    for i in xrange(0,len(list)):
      if list[i] < pivot:
        lesser.append(list[i])
      elif list[i] > pivot:
        greater.append(list[i])
      else:
        equal.append(list[i])
    return quicksort(lesser) + equal + quicksort(greater)

t = [4, 65, 2, -31, 0, 99, 2, 83, 782, 1]
print(quicksort(t))