# http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html
# exercise 1.3

def square(x)
  x * x
end

def sum_two_squares(x,y)
  square(x) + square(y)
end

def find_max(x,y,z)
  a = [x,y,z]
  a.max
end

def find_mid(x,y,z)
  a = [x,y,z]
  a.delete(a.max)
  a.delete(a.min)
  a[0]
end

def sum_larger_squares(x,y,z)
  a = find_max(x,y,z)
  b = find_mid(x,y,z)
  sum_two_squares(a,b)
end

puts sum_larger_squares(2,3,4)          