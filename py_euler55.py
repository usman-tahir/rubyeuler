#!/usr/bin/env python


def is_lychrel(n):
    counter = 1
    new_number = reverse_and_sum(n)    
    while counter < 50:
        if is_palindrome(new_number):
            return False
        else:
            new_number = reverse_and_sum(new_number)
            counter += 1
    return True


def _reverse(n):
    digits = list(str(n))
    digits.reverse()
    return int("".join(digits))


def reverse_and_sum(n):
    return n + _reverse(n)


def is_palindrome(n):
    return n == _reverse(n)


def find_lychrels_below(limit):
    return [x for x in xrange(1,limit) if is_lychrel(x)]


print len(find_lychrels_below(10000))
