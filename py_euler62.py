#!/usr/bin/env python

def sorted_digits(n):
    n_digits = list(str(n))
    n_digits.sort()
    return n_digits

def is_permutation(n,p):
    return sorted_digits(n) == sorted_digits(p)

def cube(n):
    return n * n * n

def find_n_cubic_permutations(n):
    results_dict = {}
    counter = 2
    while True:
        t = cube(counter)
        sorted_t = "".join(sorted_digits(t))
        if sorted_t in results_dict:
            results_dict[sorted_t].append(t)
        else:
            results_dict[sorted_t] = [t]
        if len(results_dict[sorted_t]) == n:
            return results_dict[sorted_t][0]
        counter += 1

print find_n_cubic_permutations(5)


print is_permutation(123,321)
