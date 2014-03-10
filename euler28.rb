# http://projecteuler.net/problem=28
# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral?
box_size = 1001

def top_right(size)
  topr = Array.new
  z = size.to_i
  (1..z).each do |x| number = x * x
    topr.push number
  end
  topr
end

tright = top_right(box_size)
tright = tright.values_at(* tright.each_index.select {|i| i.even?})
tright.shift

tleft = Array.new
bleft = Array.new
bright = Array.new

tright.each_with_index do |x, i| y = (x - (2 * (i + 1)))
  tleft.push y
end

tleft.each_with_index do |x, i| y = (x - (2 * (i + 1)))
  bleft.push y
end

bleft.each_with_index do |x, i| y = (x - (2 * (i + 1)))
  bright.push y
end

puts 1 + tright.inject(:+) + tleft.inject(:+) + bleft.inject(:+) + bright.inject(:+)