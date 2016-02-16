#!/usr/bin/env python

def dot_product(list_one,list_two):
  result_list = []
  for i in xrange(0,len(list_one)):
    result_list.append(list_one[i] * list_two[i])
  return sum_list(result_list)

def sum_list(list):
  def _sum_list(list,index,accumulator):
    if index == len(list):
      return accumulator
    else:
      return _sum_list(list,index+1,accumulator+list[index])
  return _sum_list(list,0,0)

t_one = [1,3,-5]
t_two = [4,-2,-1]
print dot_product(t_one,t_two)
