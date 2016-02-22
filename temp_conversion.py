#!/usr/bin/env python
# http://rosettacode.org/wiki/Temperature_conversion

def kelvin_to_c(t):
  return (t - 273.15)

def kelvin_to_f(t):
  return ((kelvin_to_c(t) * 1.800) + 32.00)

def kelvin_to_rankine(t):
  return ((kelvin_to_f(t) - 32) + 491.67)

t = 21.0
print(kelvin_to_c(t))
print(kelvin_to_f(t))
print(kelvin_to_rankine(t))