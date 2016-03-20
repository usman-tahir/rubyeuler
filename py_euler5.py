#!/usr/bin/env python

def evenly_divisible_by_one_through_twenty(n):
    for d in xrange(11,21):
        if n % d != 0:
            return False
    return True

step = reduce(lambda a, b: a * b, [x for x in (2, 3, 5, 7, 11, 13, 17, 19)])
counter = step
while True:
    if evenly_divisible_by_one_through_twenty(counter):
        print counter
        break
    else:
        counter += step
