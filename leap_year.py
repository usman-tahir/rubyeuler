#!/usr/bin/env python

def leap_year(year):
  if year % 400 == 0:
    return True
  elif year % 4 == 0 and year % 100 != 0:
    return True
  else:
    return False

for y in [2000,1900,1800,1996,1999]:
  print str(y) + ": " + str(leap_year(y))
  