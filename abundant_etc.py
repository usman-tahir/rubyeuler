#!/usr/bin/env python

def divisors(n):
  div = list()
  for d in range(1,n-1):
    if n % d == 0:
      div.append(d)
  return div

def sum_list(list,index,accumulator):
  if index >= len(list):
    return accumulator
  else:
    return sum_list(list,index+1,accumulator+list[index])

def sum_list_wrapper(list):
  return sum_list(list,0,0)

def classify(n):
  result = sum_list_wrapper(divisors(n))
  if result < n:
    return -1
  elif result == n:
    return 0
  elif result > n:
    return 1

for i in range(1,100):
  kind = classify(i)
  if kind < 0:
    print str(i) + ": deficient" 
  elif kind == 0:
    print str(i) + ": perfect"
  elif kind > 0:
    print str(i) + ": abundant"
