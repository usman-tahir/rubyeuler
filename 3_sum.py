#!/usr/bin/env python
# http://programmingpraxis.com/2013/06/18/3sum/

def find_zero_sum_terms(list):
  solutions = []
  list_length = len(list)
  for outer_index in xrange(0,list_length-1):
    for inner_index in xrange(outer_index,list_length-1):
      test_value = -(list[outer_index] + list[inner_index])
      if test_value in list:
        solutions.append([list[outer_index],list[inner_index],test_value])
  sorted_solutions = []
  for triplet in solutions:
    t = sorted(triplet)
    if t in sorted_solutions:
      continue
    else:
      sorted_solutions.append(t)
  return sorted_solutions

test_array = [8, -25, 4, 10, -10, -7, 2, -3]

print find_zero_sum_terms(test_array)
