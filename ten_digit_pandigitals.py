#!/usr/bin/env py
import itertools

def pandigital_divisible(n):
    for d in xrange(1,10):
        if n % d != 0:
            return False
    return True

digits = ['0','1','2','3','4','5','6','7','8','9']
perm = ["".join(n) for n in list(itertools.permutations(digits))]
filtered_perm = [int(n) for n in perm if len(str(int(n))) == 10]
counter = 0
for n in filtered_perm:
    if pandigital_divisible(n):
        print n
        counter += 1
    if counter == 2:
        break;
