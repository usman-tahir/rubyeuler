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
end

def modulo(x,y)
end  

def exponent(x,y)
end  

puts multiply(5,20)