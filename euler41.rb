# http://projecteuler.net/problem=41
require 'prime'
runtime = Time.now

# tested pandigitals = [1-9] && pandigitals = [1-8]; each returned nil for pan_primes.inspect 
pandigitals = [1,2,3,4,5,6,7]
permutations = pandigitals.permutation.to_a
pan_primes = Array.new
n = 0

until permutations[n] == nil
  if (permutations[n][0].to_s + 
    permutations[n][1].to_s + 
    permutations[n][2].to_s + 
    permutations[n][3].to_s + 
    permutations[n][4].to_s + 
    permutations[n][5].to_s + 
    permutations[n][6].to_s).to_i.prime? == true
    pan_primes.push (permutations[n][0].to_s + 
    permutations[n][1].to_s + 
    permutations[n][2].to_s + 
    permutations[n][3].to_s + 
    permutations[n][4].to_s + 
    permutations[n][5].to_s + 
    permutations[n][6].to_s).to_i
  else
  end
n += 1
end

puts pan_primes[-1]

puts ((Time.now - runtime).to_f).to_s + " s"