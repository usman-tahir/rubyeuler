# http://en.wikipedia.org/wiki/Tak_%28function%29
# http://mathworld.wolfram.com/TAKFunction.html

def tak(x,y,z)
  case
  when y < x
    tak(tak(x-1,y,z),tak(y-1,z,x),tak(z-1,x,y))
  else
    z
  end
end

p tak(1,2,3)
