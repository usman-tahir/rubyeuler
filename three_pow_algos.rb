# http://programmingpraxis.com/2015/03/03/three-powering-algorithms/

# linear time: multiply the b number as many times as necessary
def exp_linear(b,e)
  e == 0 ? 1 : b * exp_linear(b,e-1)
end

# logarithmic time: repeatedly square b
def exp_log(b,e)
  e == 0 ? 1 : e.even? ? exp_log(b*b,e/2) : b * exp_log(b*b,(e-1)/2)
end

# constant time: use a logarithm
def exp_constant(b,e)
  Math.exp(Math.log(b) * e).ceil
end

p exp_linear(2,16)
p exp_log(2,16)
p exp_constant(2,16)
