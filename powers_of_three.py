#!/usr/bin/env/python
# https://programmingpraxis.com/2016/03/01/powers-of-3/

def is_power_of_three(n):
    if n == 1 or n == 3:
        return True
    elif n % 3 != 0:
        return False
    else:
        return is_power_of_three(n/3)


print [3**x for x in xrange(0,7)] == [x for x in xrange(1,1000) \
       if is_power_of_three(x)]
