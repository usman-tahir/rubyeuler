# http://projecteuler.net/problem=27
require 'prime'

def number_of_consecutive_primes(string)
  # string must be a formula including n as the counter
  consecutive_primes = []
  n = 0
  until !eval(string).prime?
    consecutive_primes << eval(string) if eval(string).prime?
    n += 1
  end
  consecutive_primes.count
end      

def find_consecutive_primes
  longest_series_of_primes = 0
  product_of_coefficients = 0
  (-999..999).each do |a|
    (0..999).each do |b|
      consec_primes = number_of_consecutive_primes("(n ** 2) + (#{a} * n) + #{b}")
      # puts "(n^2) + (#{a}n) + #{b} produces #{consec_primes}"
      if consec_primes > longest_series_of_primes
        longest_series_of_primes = consec_primes
        product_of_coefficients = a * b
      end  
    end 
  end
  product_of_coefficients
end  

puts find_consecutive_primes