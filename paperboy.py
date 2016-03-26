#!/usr/bin/env python
# http://www.codewars.com/kata/paperboy

def cost_of_n_papers(n):
    result = 0.00
    for t in ((40, 3.85), (20, 1.93), (10, 0.97), (5, 0.49), (1, 0.10)):
        while n >= t[0]:
            result += t[1]
            n -= t[0]
    return result

print cost_of_n_papers(76)
