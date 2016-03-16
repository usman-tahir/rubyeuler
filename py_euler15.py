#!/usr/bin/env python

def factorial(n):
    return reduce(lambda x,y: x*y, [x for x in xrange(1,n+1)])

def find_lattice_routes(n):
    return factorial(2 * n) / factorial(n) ** 2

print find_lattice_routes(20)
