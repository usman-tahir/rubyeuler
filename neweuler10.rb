# http://projecteuler.net/problem=10
require 'prime'

def sum_of_primes_below(number)
  accumulator_array =[]
  Prime.each(number) do |prime|
    accumulator_array << prime
  end
  accumulator_array.inject(:+)
end

puts sum_of_primes_below(2_000_000)    