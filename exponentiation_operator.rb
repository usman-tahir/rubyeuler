# http://rosettacode.org/wiki/Exponentiaton_operator

def exp(x,y)
  y == 0 ? 1 : y == 1 ? x : multiply(x,exp(x,subtract(y,1)))
end

def multiply(x,y)
  y == 0 ? y : y == 1 ? x : add(x,(multiply(x,subtract(y,1))))
end 

def add(x,y)
  y == 0 ? x : add(x.succ,y.pred)
end

def subtract(x,y)
  y == 0 ? x : subtract(x.pred,y.pred)
end

p exp(12,2)
p exp(3,3)
p exp(4,4)
