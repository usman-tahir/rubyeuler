# https://projecteuler.net/problem=16

def pow(x,y)
  if y == 1
    x
  else
    x * pow(x,y-1)
  end
end

def split(n,array=nil)
  array =[] if array == nil
  if n < 10
    array.push n
  else 
    split(n/10, (array.push n%10))  
  end
end

def sum_array(array,index=0)
  if index == array.length
    0
  else
    array[index] + sum_array(array,index+1)
  end
end

p sum_array(split(pow(2,1000)))
