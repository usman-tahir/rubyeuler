#!/usr/bin/env python

from copy import deepcopy

def selection_sort(array):
    new_array = deepcopy(array)
    for i in xrange(0,len(array)):
        for j in xrange(i,len(array)):
            if new_array[i] > new_array[j]:
                new_array[i], new_array[j] = new_array[j], new_array[i]
    return new_array

l = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, \
     12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]

print selection_sort(l)
