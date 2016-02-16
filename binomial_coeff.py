#!/usr/bin/env python

def factorial(n):
  return factorial_iter(1,1,n)

def factorial_iter(product, counter, max_count):
  if counter > max_count:
    return product
  else:
    return factorial_iter((product*counter),(counter+1), max_count)

def binomial_coefficient(n,k):
  return factorial(n) / (factorial(n-k) * factorial(k))

print factorial(5)
print binomial_coefficient(5,3)