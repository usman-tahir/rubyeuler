#!/usr/bin/env python

def happy(n):
  while n != 1 and n != 89:
    n = sum_square_digits(n)
  return n == 1

def sum_square_digits(n,acc=0):
  if n < 10:
    return acc + (n**2)
  else:
    return ((n%10)**2) + sum_square_digits(n/10,acc)

def find_happy_numbers(n):
  results = []
  counter = 1
  while len(results) != n:
    if happy(counter):
      results.append(counter)
    counter += 1
  return results

print find_happy_numbers(8)