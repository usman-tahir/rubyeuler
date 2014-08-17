# http://projecteuler.net/problem=41
require 'prime'

pandigital_numbers = [1,2,3,4,5,6,7]
pandigital_permutations = pandigital_numbers.permutation.to_a

def pandigital_permutations.show_pandigital_primes
  prime_candidate = 0
  self.each do |number|
    candidate_number = (number[0].to_s +
      number[1].to_s +
      number[2].to_s +
      number[3].to_s +
      number[4].to_s +
      number[5].to_s +
      number[6].to_s).to_i
    if candidate_number.prime?
      prime_candidate = candidate_number
    end
  end
  prime_candidate
end      
      
puts pandigital_permutations.show_pandigital_primes