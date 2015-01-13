# http://rosettacode.org/wiki/Ethiopian_multiplication

def hlv(n)
  n / 2
end

def dbl(n)
  n * 2
end

def evn(n)
  n % 2 == 0
end

def e_mult(m,n,acc=0)
  m == 1 ? acc + n : evn(m) ? e_mult(hlv(m),dbl(n),acc) : e_mult(hlv(m),dbl(n),acc+n)
end

p e_mult(17,34)
p e_mult(4,4)
p e_mult(20,5)
