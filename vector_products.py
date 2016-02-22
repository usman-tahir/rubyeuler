#!/usr/bin/env python
# http://rosettacode.org/wiki/Vector_products

def dot_product(list_one, list_two):
  result = 0
  for i in xrange(0,len(list_one)):
    result += (list_one[i] * list_two[i])
  return result

def cross_product(list_one, list_two):
  result = [
    (list_one[1] * list_two[2]) - (list_one[2] * list_two[1]),
    (list_one[2] * list_two[0]) - (list_one[0] * list_two[2]),
    (list_one[0] * list_two[1]) - (list_one[1] * list_two[0])
  ]
  return result

a = [3,4,5]
b = [4,3,5]
c = [-5,-12,-13]

print(dot_product(a,b))
print(cross_product(a,b))
print(dot_product(a,cross_product(b,c)))
print(cross_product(a,cross_product(b,c)))
