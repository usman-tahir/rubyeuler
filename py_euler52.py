#!/usr/bin/env python

def is_permutation(number,other_number):
    first_digits = list(str(number))
    second_digits = list(str(other_number))
    first_digits.sort()
    second_digits.sort()
    return first_digits == second_digits

def same_digits(n):
    two, three, four, five, six = 2*n, 3*n, 4*n, 5*n, 6*n
    if len(str(two)) > len(str(n)) or \
       len(str(three)) > len(str(n)) or \
       len(str(four)) > len(str(n)) or \
       len(str(five)) > len(str(n)) or \
       len(str(six)) > len(str(n)):
       return False
    return is_permutation(n, two) and \
           is_permutation(n, three) and \
           is_permutation(n, four) and \
           is_permutation(n, five) and \
           is_permutation(n, six)

counter = 1
while not same_digits(counter):
    counter += 1

print counter
