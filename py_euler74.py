#!/usr/bin/env python
from itertools import permutations

def factorial(n):
    return reduce(lambda x, y : x * y, [x for x in xrange(1,n+1)], 1)

def factorial_of_digits(n):
    return sum([factorial(int(x)) for x in list(str(n))])

def chain_of_numbers(n):
    chain = [n]
    new_value = factorial_of_digits(n)
    while not new_value in chain:
        chain.append(new_value)
        new_value = factorial_of_digits(new_value)
    return chain

counter = 0
for i in xrange(1,1000000):
    print "{} : {}".format(i, counter)
    if len(chain_of_numbers(i)) == 60:
        counter += 1

print counter
