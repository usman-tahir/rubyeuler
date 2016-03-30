#!/usr/bin/env python

def anagrams_one(s_one,s_two):
  first = list(s_one)
  second = list(s_two)
  first.sort()
  second.sort()
  return first == second

def anagrams_two(s_one,s_two):
  first = {}
  second = {}
  for i in xrange(0,len(s_one)):
    if not s_one[i].lower() in first:
      first[s_one[i].lower()] = 1
    else:
      first[s_one[i].lower()] += 1
  for i in xrange(0,len(s_two)):
    if not s_two[i].lower() in second:
      second[s_two[i].lower()] = 1
    else:
      second[s_two[i].lower()] += 1
  return first == second 


print [anagrams_one(p[0],p[1]) for p in (('opts','tops'),('pots','stop'),('dopiest','deposit'))]
print [anagrams_two(p[0],p[1]) for p in (('opts','tops'),('pots','stop'),('dopiest','deposit'))]
