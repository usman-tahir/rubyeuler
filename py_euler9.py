#!/usr/bin/env python

def sq(x):
    return x * x

def is_triplet(a, b, c):
    return (sq(a) + sq(b) == sq(c)) and (a < b < c)

def is_triplet_and_eq_1k(a, b, c):
    return is_triplet(a, b, c) and (a + b + c == 1000)

def find_special_triplet():
    for a in xrange(1,500):
        for b in xrange(a+1,500):
            for c in xrange(b+1,500):
                if is_triplet_and_eq_1k(a, b, c):
                    return a*b*c

print(find_special_triplet())
