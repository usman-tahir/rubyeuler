# http://projecteuler.net/problem=2

def f_sum(l,acc=0,f=2,p=1)
  return f > l ? acc : f.even? ? f_sum(l,acc+f,f+p,f) : f_sum(l,acc,f+p,f)
end

p f_sum(4_000_000)     
