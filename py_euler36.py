#!/usr/bin/env python

def to_binary(n):
    return "{0:b}".format(n)

def binary_palindrome(n):
    b = to_binary(n)
    r = list(b)
    r.reverse()
    r = "".join(r)
    return b == r

def base_ten_palindrome(n):
    d = list(str(n))
    d.reverse()
    return "".join(d) == "".join(list(str(n)))

def double_base_palindrome(n):
    return binary_palindrome(n) and base_ten_palindrome(n)

print sum([x for x in xrange(1,1000000) if double_base_palindrome(x)])
