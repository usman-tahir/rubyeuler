#!/usr/bin/env python

from itertools import permutations

def join_int(list):
    return int("".join([str(digit) for digit in list]))

def div_by_two(list):
    return join_int(list[1:4]) % 2 == 0

def div_by_three(list):
    return join_int(list[2:5]) % 3 == 0

def div_by_five(list):
    return join_int(list[3:6]) % 5 == 0

def div_by_seven(list):
    return join_int(list[4:7]) % 7 == 0

def div_by_eleven(list):
    return join_int(list[5:8]) % 11 == 0

def div_by_thirteen(list):
    return join_int(list[6:9]) % 13 == 0

def div_by_seventeen(list):
    return join_int(list[7:10]) % 17 == 0

def div_by_all(list):
    return div_by_two(list) and \
           div_by_three(list) and \
           div_by_five(list) and \
           div_by_seven(list) and \
           div_by_eleven(list) and \
           div_by_thirteen(list) and \
           div_by_seventeen(list)

print sum([join_int(x) for x in list(permutations(xrange(0,10))) if div_by_all(x)])
