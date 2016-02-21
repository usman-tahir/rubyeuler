#!/usr/bin/env python
# map, reduce, and filter functions in python

def _map(list,function):
  new_list = []
  for e in list:
    new_list.append(function(e))
  return new_list

def dbl(n):
  return n + n

t = [1,2,3,4,5]
print(_map(t,dbl))

def _filter(list,function):
  new_list = []
  for e in list:
    if function(e):
      new_list.append(e)
  return new_list

def _odd(n):
  return n % 2 == 1

print(_filter(t,_odd))

def _reduce(list,function,initial_value):
  def _internal_reduce(list,index,function,acc):
    if index >= len(list):
      return acc
    else:
      return _internal_reduce(list,index+1,function,function(acc,list[index]))
  return _internal_reduce(list,0,function,initial_value)

def _add(a,b):
  return a + b

def _multiply(a,b):
  return a * b

print(_reduce(t,_add,0))
print(_reduce(t,_multiply,1))

