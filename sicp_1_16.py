#!/usr/bin/env python

def square(x):
  return x * x

def even(x):
  return x % 2 == 0

def fast_expt(b,n):
  return fast_expt_iter(b,n,1)

def fast_expt_iter(b,counter,product):
  if counter == 0:
    return product
  elif even(counter):
    return fast_expt_iter(square(b),counter/2,product)
  else:
    return fast_expt_iter(b,counter-1,b*product)

print(fast_expt(3,2))
print(fast_expt(9,2))
print(fast_expt(9,9))