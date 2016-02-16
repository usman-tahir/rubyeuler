#!/usr/bin/env python
# http://programmingpraxis.com/2013/10/25/pessimal-algorithms-and-simplexity-analysis/
# http://c2.com/cgi/wiki?SlowSort

def slow_sort(a):
  return slow_sort_iter(a,0,len(a)-1)

def slow_sort_iter(a,i,j):
    if i >= j:
      return a
    m = (i+j)/2
    slow_sort_iter(a,i,m)
    slow_sort_iter(a,m+1,j)
    if a[m] > a[j]:
      temp = a[j]
      a[j] = a[m]
      a[m] = temp
    return slow_sort_iter(a,i,j-1)


one = [7,3,1,5,10,0,4]
two = [5,4,1,10,2]
three = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]

print slow_sort(one)
print slow_sort(two)
print slow_sort(three)