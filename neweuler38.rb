# http://projecteuler.net/problem=38
load 'eulermethods.rb'

def find_largest_pandigital_multiple
  largest_pandigital_product = 0
  (1..99999).each do |multiplicand|
    n = 1 # counter used in problem
    test_string = String.new
    until test_string.length > 9
      test_string << (multiplicand * n).to_s
      n += 1
      break if test_string.length >= 9
    end
    test_num = test_string.to_i
    if test_num.pandigital?
      largest_pandigital_product = test_num if test_num > largest_pandigital_product
    end
  end
  largest_pandigital_product
end

puts find_largest_pandigital_multiple    
      
