# http://projecteuler.net/problem=3
require 'prime'

def find_max_prime_factor_of(number)
  Prime.prime_division(number).flatten.uniq.max
end

puts find_max_prime_factor_of(600_851_475_143)