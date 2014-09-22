def iszero(x)
  x == 0
end  

def add(x,y)
  if iszero(y)
    x
  else
    x = x.succ
    y = y.pred
    add(x,y)
  end    
end

def subtract(x,y)
  if iszero(y)
    x
  else
    x = x.pred
    y = y.pred
    subtract(x,y)
  end  
end

def multiply(x,y)
  if iszero(y)
    0
  elsif iszero(y.pred)
    x
  else
    y = y.pred
    x = add(multiply(x,y),x)
  end     
end

def divide(x,y)
  if iszero(y)
    raise "Can't divide by zero."
  elsif iszero(x)
    x 
  elsif subtract(x,y) < y
    1
  else
    x = x-y
    (add(1,divide(x,y)))  
  end       
end

def modulus(x,y)
  subtract(x,(multiply(y,(divide(x,y)))))
end  

def exponent(x,y)
end  

#puts multiply(5,20)
puts divide(9,5)
#puts modulus(10,7)
#puts exponent(3,3)