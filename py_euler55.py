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


def reverse_and_sum(n):
    digits = list(str(n))
    digits.reverse()
    reversed_n = int("".join(digits))
    return n + reversed_n


def is_palindrome(n):
    digits = list(str(n))
    digits.reverse()
    return n == int("".join(digits))


def find_lychrels_below(limit):
    return [x for x in xrange(1,limit) if is_lychrel(x)]


print len(find_lychrels_below(10000))
