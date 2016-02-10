#!/usr/bin/env python

def square(n):
  return n * n

def sum_list(list):
  def _sum_list(list,index,accumulator):
    if index == len(list):
      return accumulator
    else:
      return _sum_list(list,index+1,accumulator+list[index])
  return _sum_list(list,0,0)

def sum_squares_minus_square_sums(n):
  return square(sum_list(list(range(1,n+1)))) - \
    sum_list([square(i) for i in list(range(1,n+1))])

print sum_squares_minus_square_sums(100)
