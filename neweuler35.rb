# http://projecteuler.net/problem=35
require 'prime'

def is_circular_prime?(number)
  is_circular_booleans = []
  number_string = number.to_s
  rotations = number_string.length
  number_string_array = number_string.split(//).map.to_a
  if number_string_array.join.to_i.prime?
    (1..rotations).each do |rotation_number|
      is_circular_booleans << number_string_array.rotate(rotation_number).join.to_i.prime?
    end
  end  
  is_circular_booleans.count(true) == rotations
end

def find_circular_primes_below(number)
  circular_primes_array = []
  Prime.each(1_000_000) do |num|
    circular_primes_array << num if is_circular_prime?(num)
  end
  circular_primes_array
end

puts find_circular_primes_below(1_000_000).count    
