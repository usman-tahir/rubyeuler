#!/usr/bin/env python

def square(n):
  return n * n

_sum = lambda x,y: x + y

def sum_squares_minus_square_sums(n):
  return square(reduce(_sum, list(range(1,n+1)))) - \
    reduce(_sum, map(square,list(range(1,n+1))))

print sum_squares_minus_square_sums(100)
