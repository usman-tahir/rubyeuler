#!/usr/bin/env python
# http://programmingpraxis.com/2015/09/22/three-more-homework-problems/

# 1 given a list, return list without duplicates

def remove_duplicates(list):
  new_list = []
  for e in list:
    if e in new_list:
      continue
    else:
      new_list.append(e)
  return new_list

t = [1,2,3,4,5,6,7,7,7,7,7,7,2,3,4,1,1,1,1]
print remove_duplicates(t)

# 2 given two lists, return a list of ints in both list
# in sorted order

def quicksort(list):
  if len(list) <= 1:
    return list
  greater = []
  lesser = []
  equal = []
  pivot = list[len(list)/2]
  for e in list:
    if e > pivot:
      greater.append(e)
    elif e < pivot:
      lesser.append(e)
    else:
      equal.append(e)
  return quicksort(lesser) + equal + quicksort(greater)


def find_common_int(list_one,list_two):
  local_list = []
  longer = []
  shorter = []
  if len(list_one) > len(list_two):
    longer = list_one
    shorter = list_two
  else:
    longer = list_two
    shorter = list_one
  for e in longer:
    if e in shorter:
      local_list.append(e)
  return quicksort(local_list)

test_one = [2, 3, 5, 5, 6, 7, 8, 9]
test_two = [1, 2, 4, 5, 5, 7]

print find_common_int(test_one, test_two)

# 3 given a positive int, determine if it's perfect cube

def prime_factors(i):
  new_i = i
  factors = []
  if new_i % 2 == 0:
    factors.append(2)
    new_i /= 2
  for d in xrange(2,i,1):
    while new_i % d == 0:
      factors.append(d)
      new_i /= d
  if new_i > 2:
    return [new_i]
  else:
    return factors

def is_perfect_cube(n):
  factors_of_n = prime_factors(n)
  for f in factors_of_n:
    if factors_of_n.count(f) % 3 != 0:
      return False
  return True

for i in [1,8,27,64,125]:
  print is_perfect_cube(i)