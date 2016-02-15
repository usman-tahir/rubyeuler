#!/usr/bin/env python

def quicksort(list):
  if len(list) <= 1:
    return list
  new_list = list
  lesser = []
  greater = []
  equal = []
  pivot = list[len(list)/2]
  for element in list:
    if element < pivot:
      lesser.append(element)
    elif element > pivot:
      greater.append(element)
    else:
      equal.append(pivot)
  return quicksort(lesser) + equal + quicksort(greater)

list = [10,8,100,1,637,234,233,235,98,1000,2,5,6]
print quicksort(list)