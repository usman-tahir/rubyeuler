# http://programmingpraxis.com/2014/12/23/ancient-algorithms/

def product(left,right)
  prod = 0
  while left > 0
    prod += right if left.odd?
    left /= 2; right *= 2
  end
  prod
end

p product(3,9)
