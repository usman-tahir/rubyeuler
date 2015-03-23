# http://rosettacode.org/wiki/Dot_product
# http://en.wikipedia.org/wiki/Dot_product

dot_product = -> one,two { Array.new(one.count,nil).each_with_index.map {|x,i| x = one[i] * two[i]}.inject(:+) }

test_array1 = [1,3,-5]
test_array2 = [4,-2,-1]

puts dot_product[test_array1,test_array2]
