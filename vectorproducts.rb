# http://rosettacode.org/wiki/Vector_products
start_time = Time.now
a = [3, 4, 5]; b = [4, 3, 5]; c = [-5, -12, -13]

def dot_product(array1, array2)
  dot_product_result =[]
  array1.each_index do |index|
    dot_product_result << array1[index] * array2[index]
  end
  dot_product_result.inject(:+) if dot_product_result.count > 0         
end

def cross_product(array1,array2)
  cross_product_result =[]
  cross_product_result[0] = (array1[1] * array2[2]) - (array1[2] * array2[1])
  cross_product_result[1] = (array1[2] * array2[0]) - (array1[0] * array2[2])
  cross_product_result[2] = (array1[0] * array2[1]) - (array1[1] * array2[0])
  cross_product_result
end

def scalar_triple_product(array1,array2,array3)
  scalar_triple_product_result = dot_product(array1, cross_product(array2,array3))
end

def vector_triple_product(array1,array2,array3)
  vector_triple_product_result = cross_product(array1, cross_product(array2,array3))
end

puts "The dot product of a & b is " + dot_product(a,b).to_s
puts "The cross product of a & b is " + cross_product(a,b).inspect
puts "The scalar triple product of a, b & c is " + scalar_triple_product(a,b,c).to_s
puts "The vector triple product of a, b & c is " + vector_triple_product(a,b,c).inspect

puts ((Time.now-start_time).to_f).to_s + "s"