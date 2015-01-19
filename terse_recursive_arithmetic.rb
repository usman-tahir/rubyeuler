def is_zero(x)
  x == 0
end

def add(x,y)
  is_zero(y) ? x : add(x.succ,y.pred)
end

def subtract(x,y)
  is_zero(y) ? x : subtract(x.pred,y.pred)
end

def multiply(x,y)
  is_zero(y) ? y : is_zero(y.pred) ? x : add(multiply(x,y.pred),x)
end

def divide(x,y)
  is_zero(y) ? "can't divide by zero" : subtract(x,y) < y ? 1 : divide(x-y,y).succ
end

def modulus(x,y)
  subtract(x,(multiply(y,(divide(x,y)))))
end

def power(x,y)
  is_zero(y) ? 1 : multiply(x,(power(x,y.pred)))
end

p multiply(5,20)
p divide(20,2)
p modulus(10,7)
p power(5,5)