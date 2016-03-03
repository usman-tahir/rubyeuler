#!/usr/bin/env python

def sum_proper_divisors(n):
    return sum([x for x in xrange(1,n) if n % x == 0])

def amicable(x,y):
    return sum_proper_divisors(x) == y and sum_proper_divisors(y) == x and x != y

def find_amicables_below(limit):
    result = []
    for x in xrange(1,limit):
        y = sum_proper_divisors(x)
        if amicable(x, y):
          result.append(x)
    return result
  
print(sum(find_amicables_below(10000)))