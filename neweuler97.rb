# http://projecteuler.net/problem=97

def find_non_mersenne_prime
  a = 2 ** 7830457
  b = (28433 * a) + 1
  b.to_s[-10..-1]
end

puts find_non_mersenne_prime
