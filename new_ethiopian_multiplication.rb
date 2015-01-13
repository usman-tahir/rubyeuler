# http://rosettacode.org/wiki/Ethiopian_multiplication

def halve(n)
  n / 2
end

def double(n)
  n * 2
end

def even(n)
  n % 2 == 0
end

def ethiopian_multiplication(m,n,accumulator=0)
  accumulator += n if !even(m)
  m == 1 ? accumulator : ethiopian_multiplication(halve(m),double(n),accumulator)
end

p ethiopian_multiplication(17,34)
p ethiopian_multiplication(4,4)
p ethiopian_multiplication(20,5)
