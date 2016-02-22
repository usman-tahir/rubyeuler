#!/usr/bin/env python
# http://rosettacode.org/wiki/Primality_by_trial_division

def is_prime(n):
  for i in xrange(3,n,2):
    if n % i == 0:
      return False
  return True

print(is_prime(37))
print(is_prime(38))
print(is_prime(39))
