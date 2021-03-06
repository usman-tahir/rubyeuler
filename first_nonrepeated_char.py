#!/usr/bin/env python
# find first nonrepeated character in a string

def first_nonrepeated_char(s):
  characters_dictionary = {}
  for i in xrange(0,len(s)):
    if s[i] in characters_dictionary:
      characters_dictionary[s[i]] += 1
    else:
      characters_dictionary[s[i]] = 1
  for i in xrange(0,len(s)):
    if characters_dictionary[s[i]] == 1:
      return s[i]
  return None

for w in ["total","teeter"]:
  print first_nonrepeated_char(w)
