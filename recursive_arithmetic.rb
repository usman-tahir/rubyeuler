def add(x,y)
  if y == 0
    x
  else
    x = x.succ
    y = y.pred
    add(x,y)
  end    
end

def subtract(x,y)
  if y == 0
    x
  else
    x = x.pred
    y = y.pred
    subtract(x,y)
  end  
end

def multiply(x,y)
  if y == 0
    0
  elsif y == 1
    x
  else
    y = y.pred
    x = add(multiply(x,y),x)
  end     
end

def divide(x,y)
  if y == 0
    raise "Can't divide by zero."
  elsif x == 0
    0  
  elsif subtract(x,y) == 0
    1
  elsif x < add(y,y)
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

puts multiply(5,20)
puts divide(0,7)
puts modulus(10,7)
#puts exponent(3,3)