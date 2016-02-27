#!/usr/bin/env python

def next_for_even(n):
    return n/2


def next_for_odd(n):
    return (3 * n) + 1


def collatz_seq(n):
    t = n
    counter = 1
    while t != 1:
        if t % 2 == 0:
            t = next_for_even(t)
        else:
            t = next_for_odd(t)
        counter += 1
    return counter


def longest_seq_below(limit):
    longest_seq_number = 13
    longest_seq_terms = 10
    for current in xrange(1,limit):
        current_seq_terms = collatz_seq(current)
        if current_seq_terms > longest_seq_terms:
            longest_seq_number = current
            longest_seq_terms = current_seq_terms
    return longest_seq_number

print(longest_seq_below(1000000))
