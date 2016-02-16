#!/usr/bin/env python


def factorial(n):
  return factorial_iter(1,1,n)

def factorial_iter(product, counter, max_count):
  if counter > max_count:
    return product
  else:
    return factorial_iter((product*counter),(counter+1), max_count)

print factorial(5)