#!/usr/bin/env python

def population_count(n):
    return sum([int(ones) for ones in bin(n) if ones == '1'])

def is_prime(n):
    return False if n == 1 else not len([d for d in xrange(2,n) if n % d == 0])

def is_pernicious(n):
    return is_prime(population_count(n))

# display the first 25 pernicious numbers
pernicious = []
counter = 1
limit = 25
while len(pernicious) < limit:
    if is_pernicious(counter):
        pernicious.append(counter)
    counter += 1
print pernicious

# display all pernicious numbers between 888,888,877 and 888,888,888

print [x for x in xrange(888888877,888888889) if is_pernicious(x)]
