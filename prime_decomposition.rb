# http://rosettacode.org/wiki/Prime_decomposition
# Write a function which returns an array or collection which contains 
# the prime decomposition of a given number, n, greater than 1.
require 'prime'

# test values from AWK example here: http://rosettacode.org/wiki/Prime_decomposition#AWK
test_array = [36, 77, 536870911, 8796093022207]


def prime_decomposition(number)
  prime_factors = number.prime_division.flatten!
  prime_factors.delete(1)
  prime_factors
end

test_array.each do |number|
  puts prime_decomposition(number).inspect
end  