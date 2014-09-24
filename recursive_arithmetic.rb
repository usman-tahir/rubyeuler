def is_zero(x)
  x == 0
end  

def add(x,y)
  if is_zero(y)
    x
  else
    x = x.succ
    y = y.pred
    add(x,y)
  end    
end

def subtract(x,y)
  if is_zero(y)
    x
  else
    x = x.pred
    y = y.pred
    subtract(x,y)
  end  
end

def multiply(x,y)
  if is_zero(y)
    y
  elsif is_zero(y.pred)
    x
  else
    y = y.pred
    x = add(multiply(x,y),x)
  end     
end

def divide(x,y)
  if is_zero(y)
    raise "Can't divide by zero."
  elsif is_zero(x)
    x 
  elsif subtract(x,y) < y
    1
  else
    x = x-y
    divide(x,y).succ  
  end       
end

def modulus(x,y)
  subtract(x,(multiply(y,(divide(x,y)))))
end  

def power(x,y)
  if is_zero(y)
    1
  else
    y = y.pred
    multiply(x,(power(x,y)))
  end    
end  

puts multiply(5,20)
puts divide(20,2)
puts modulus(10,7)
puts power(3,4)