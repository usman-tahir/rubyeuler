# http://rosettacode.org/wiki/Dot_product
# http://en.wikipedia.org/wiki/Dot_product
start_time = Time.now
test_array1 = [1,3,-5]
test_array2 = [4,-2,-1]

def dot_product(array1,array2)
  dot_prod_array =[]
  array1.each_index do |index|
    dot_prod_array << array1[index] * array2[index]
  end
  dot_prod_array.inject(:+)
end

puts dot_product(test_array1,test_array2).inspect
puts ((Time.now-start_time).to_f).to_s + "s"

