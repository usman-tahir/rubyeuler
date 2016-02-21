#!/usr/bin/env python
# sicp 1.30

def sum(low, high, term, next):
  return sum_iter(low, 0, high, term, next)

def sum_iter(a, result, b, term, next):
  if a > b:
    return result
  else:
    return sum_iter(next(a), (term(a)+result), b, term, next)

def inc(n):
  return n + 1

def cube(n):
  return n * n * n

def sum_cubes(a,b):
  return sum(a,b,cube,inc)

print(sum_cubes(1,10))
