#!/usr/bin/env python

import math


def gen_triangle(n):
    return (n * (n +1)) / 2


def is_pentagonal(n):
    return ((math.sqrt((24 * n) + 1) + 1) / 6) % 1 == 0


def is_hexagonal(n):
    return ((math.sqrt((8 * n) + 1) + 1) /  4) % 1 == 0


def test_triangles():
    flag = False
    n = 286
    while not flag:
        if is_pentagonal(gen_triangle(n)) and is_hexagonal(gen_triangle(n)):
            flag = True
        if not flag:
            n += 1
    return gen_triangle(n)


print(test_triangles())

