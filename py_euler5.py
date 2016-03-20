#!/usr/bin/env python

def evenly_divisible_by_one_through_twenty(n):
    return len([d for d in xrange(1,21) if n % d != 0]) == 0

step = reduce(lambda a, b: a * b, [x for x in (2, 3, 5, 7, 11, 13, 17, 19)])
counter = step
while True:
    if evenly_divisible_by_one_through_twenty(counter):
        print counter
        break
    else:
        counter += step
