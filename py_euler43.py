#!/usr/bin/env python

from itertools import permutations

def join_int(array):
    return int("".join([str(digit) for digit in array]))

def div_by_two(array):
    return join_int(array[1:4]) % 2 == 0

def div_by_three(array):
    return join_int(array[2:5]) % 3 == 0

def div_by_five(array):
    return join_int(array[3:6]) % 5 == 0

def div_by_seven(array):
    return join_int(array[4:7]) % 7 == 0

def div_by_eleven(array):
    return join_int(array[5:8]) % 11 == 0

def div_by_thirteen(array):
    return join_int(array[6:9]) % 13 == 0

def div_by_seventeen(array):
    return join_int(array[7:10]) % 17 == 0

def div_by_all(array):
    return div_by_two(array) and \
           div_by_three(array) and \
           div_by_five(array) and \
           div_by_seven(array) and \
           div_by_eleven(array) and \
           div_by_thirteen(array) and \
           div_by_seventeen(array)

print sum([join_int(x) for x in list(permutations(xrange(0,10))) if div_by_all(x)])
