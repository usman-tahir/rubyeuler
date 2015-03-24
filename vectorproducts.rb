# http://rosettacode.org/wiki/Vector_products

def dot_product(one, two)
  Array.new(one.count,nil).each_with_index.map { |x,i| x = one[i] * two[i] }.inject(:+)         
end

def cross_product(one, two)
  [(one[1] * two[2]) - (one[2] * two[1]), (one[2] * two[0]) - (one[0] * two[2]), (one[0] * two[1]) - (one[1] * two[0])]
end

a = [3, 4, 5]; b = [4, 3, 5]; c = [-5, -12, -13]
puts "The dot product of a & b is #{dot_product(a,b)}"
puts "The cross product of a & b is #{cross_product(a,b)}"
puts "The scalar triple product of a, b & c is #{dot_product(a, cross_product(b,c))}"
puts "The vector triple product of a, b & c is #{cross_product(a, cross_product(b,c))}"
