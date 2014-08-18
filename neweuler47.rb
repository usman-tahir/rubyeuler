# http://projecteuler.net/problem=47
require 'prime'

def has_four_distinct_prime_factors(number)
  prime_factors = number.prime_division
  prime_factors.count == 4
end

def find_four_consecutive_ints_with_four_distinct_prime_factors
  found_flag = false
  counter = 2
  until found_flag == true
    puts counter
    first = has_four_distinct_prime_factors(counter)
    second = has_four_distinct_prime_factors(counter+1)
    third = has_four_distinct_prime_factors(counter+2)
    fourth = has_four_distinct_prime_factors(counter+3)
    found_flag == true if first && second && third && fourth
    break if first && second && third && fourth
    counter += 1 unless first && second && third && fourth
  end
  counter  
end  

puts find_four_consecutive_ints_with_four_distinct_prime_factors
