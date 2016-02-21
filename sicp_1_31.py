#!/usr/bin/env python
# sicp 1.31

def inc(n):
  return n + 1

def identity(n):
  return n

def product(low, high, term, next):
  if low > high:
    return 1
  else:
    return term(low) * product(next(low),high,term,next)

def factorial(n):
  if n == 0 or n == 1:
    return 1
  else:
    return product(1,n,identity,inc)

print(factorial(50))
