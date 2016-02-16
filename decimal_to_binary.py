#!/usr/bin/env python

def dec_to_binary(n):
  if n == 0:
    return 0
  else:
    return n % 2 + 10 * dec_to_binary(n/2)

print dec_to_binary(115)