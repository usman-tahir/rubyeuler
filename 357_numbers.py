#!/usr/bin/env python
# http://programmingpraxis.com/2015/03/06/357-numbers/

def three_five_seven(number):
  while number % 3 == 0:
    number /= 3
  while number % 5 == 0:
    number /= 5
  while number % 7 == 0:
    number /= 7
  if number == 1:
    return 1
  else:
    return 0

acc = 0
for i in xrange(1,1000000,2):
  acc += three_five_seven(i)

print acc