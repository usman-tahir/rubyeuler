#!/usr/bin/env python

def hailstone_sequence(n):
  seq_for_n = []
  test_value = n
  while test_value != 1:
    seq_for_n.append(test_value)
    test_value = next_hailstone_term(test_value)
  seq_for_n.append(1)
  return seq_for_n

def next_hailstone_term(n):
  if n == 1:
    return n
  elif n % 2 == 0:
    return n/2
  else:
    return ((3*n)+1)

print hailstone_sequence(27)