# https://projecteuler.net/problem=58
require 'prime'

def corners(size)
  base = size ** 2
  subtractor = size - 1
  corners = []
  corners << base
  corners << base - subtractor
  corners << (base - (subtractor)) - (subtractor)
  corners << (base - (subtractor) - (subtractor)) - (subtractor)
end

def ratio_below_ten
  test_array = [1]
  size = 3
  found_flag = false
  denominator = test_array.count
  numerator = 0
  prime_percentage = 1.0 # throwaway start value
  until found_flag == true
    new_corners = corners(size)
    denominator += 4
    new_primes_counter = 0
    new_corners.each do |corner|
      new_primes_counter += 1 if corner.prime?
    end 
    numerator += new_primes_counter 
    test_array << new_corners
    prime_percentage = (numerator/denominator.to_f)
    puts "#{size} -> #{prime_percentage}"
    found_flag == true if prime_percentage < 0.10
    break if prime_percentage < 0.10
    size += 2
  end
  size
end

puts ratio_below_ten