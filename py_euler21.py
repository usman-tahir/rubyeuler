#!/usr/bin/env python

def sum_proper_divisors(n):
    return sum([x for x in xrange(1,n) if n % x == 0])

def amicable(x, y):
    return sum_proper_divisors(x) == y and sum_proper_divisors(y) == x and x != y

def find_amicable_sum_below(limit):
    return sum([x for x in xrange(1,limit) if amicable(x, sum_proper_divisors(x))])
  
print(find_amicable_sum_below(10000))
