#!/usr/bin/env python

def even(x):
  return x % 2 == 0

def square(x):
  return x * x

def fib(n):
  return fib_iter(1,0,0,1,n)

def fib_iter(a,b,p,q,count):
  if count == 0:
    return b
  elif even(count):
    return fib_iter(a,b,(square(p)+square(q)),(square(q)+(2*p*q)),(count/2))
  else:
    return fib_iter((b*q)+(a*q)+(a*p),((b*p)+(a*q)),p,q,(count-1))

for i in xrange(1,100):
  print fib(i)