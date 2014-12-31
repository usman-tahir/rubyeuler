# http://rosettacode.org/wiki/Sum_of_a_series

def invsqr(n)
  1.0 / (n * n).to_r
end

def sum(n)
  counter = 0.0
  (1..n).each do |num|
    counter += invsqr(num)
  end
  counter
end

p sum(1000)
