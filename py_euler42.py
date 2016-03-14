#!/usr/bin/env python

def word_number(word):
    letters = [' ','A','B','C','D','E','F','G',
               'H','I','J','K','L','M','N','O',
               'P','Q','R','S','T','U','V','W',
               'X','Y','Z']
    return sum([letters.index(c) for c in word if c in letters])

def is_triangle(x):
    return ((((8 * x) + 1) ** 0.5) - 1) / 2 % 1 == 0

words = str(list(open('p042_words.txt','r'))[0]).split(',')
print len([word_number(w) for w in words if is_triangle(word_number(w))])
