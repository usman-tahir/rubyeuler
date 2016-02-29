#!/usr/bin/env python

def square(n):
    return n * n


def add(a, b):
    return a + b


def sum_squares(x, y):
    return add(square(x), square(y))


def lgst(a, b, c):
    if a > b and a > c:
      return a
    elif b > c and b > a:
      return b
    else:
      return c


def scnd_lgst(a, b, c):
    if (a > b and a < c) or (a > c and a < b) :
      return a
    elif (b > a and b < c) or (b > c and b < a):
      return b
    else:
      return c


def sum_larger_squares(a, b, c):
    return sum_squares(lgst(a, b, c), scnd_lgst(a, b, c))


print(sum_larger_squares(3, 5, 7))
print(sum_larger_squares(5, 3, 7))
print(sum_larger_squares(5, 7, 3))
print(sum_larger_squares(7, 5, 3))
