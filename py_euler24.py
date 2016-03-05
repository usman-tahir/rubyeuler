#!/usr/bin/env python
from itertools import permutations

def join_digits(digits):
    return "".join([str(x) for x in digits])


print join_digits(list(permutations([0,1,2,3,4,5,6,7,8,9]))[999999])
