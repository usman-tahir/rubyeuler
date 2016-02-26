#!/usr/bin/env python

def gnome_sort(list):
  new_list = list
  i = 1
  j = 2
  while i < len(new_list):
    if new_list[i-1] <= new_list[i]:
      i = j
      j += 1
    else:
      t = new_list[i-1]
      new_list[i-1] = new_list[i]
      new_list[i] = t
      i -= 1
      if i == 0:
        i = j
        j += 1
  return new_list

t = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
print(gnome_sort(t))
