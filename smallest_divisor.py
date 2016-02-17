#!/usr/bin/env python

def square(n):
  return n * n

def smallest_divisor(n):
  return find_divisor(n,2)

def find_divisor(n,test_divisor):
  if square(test_divisor) > n:
    return n
  elif divides(test_divisor,n):
    return test_divisor
  else:
    return find_divisor(n,(test_divisor+1))

def divides(x,y):
  return y % x == 0

def prime(n):
  return smallest_divisor(n) == n

for i in xrange(1,50):
  if prime(i):
    print str(i) + " is prime"