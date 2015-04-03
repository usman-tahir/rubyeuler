# http://programmingpraxis.com/2013/10/25/pessimal-algorithms-and-simplexity-analysis/
# http://c2.com/cgi/wiki?SlowSort

def slowsort(a,i=0,j=a.count-1)
  return a if i >= j
  m = (i+j)/2
  slowsort(a, i, m)
  slowsort(a, m+1, j)
  a[m], a[j] = a[j], a[m] if a[m] > a[j]
  slowsort(a, i, j-1)
end

one = [7,3,1,5,10,0,4]
two = [5,4,1,10,2]
three = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12,
         211, 1, 3215, 67, 8, 90, 9, 2345, 456]

p slowsort(one)
p slowsort(two)
p slowsort(three)
