#!/usr/bin/env python


def sum_digits(n):
    return sum([int(x) for x in str(n)])


def find_maximum_digit_sum():
    largest_sum = sum_digits(1)
    for a in xrange(1,100):
        for b in xrange(1,100):
            test_value = sum_digits(a**b)
            if test_value > largest_sum:
                largest_sum = test_value
    return largest_sum

print find_maximum_digit_sum()
