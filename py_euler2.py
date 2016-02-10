#!/usr/bin/env python

fibo = [1,2]
accumulator = 0
while fibo[1] < 4000000:
  if fibo[1] % 2 == 0:
    accumulator += fibo[1]
  new_term = fibo[0] + fibo[1]
  fibo = [fibo[1], new_term]

print accumulator
