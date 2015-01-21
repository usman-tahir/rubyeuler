# https://projecteuler.net/problem=179

def factors(n)
  n_factors = []
  (1..Math.sqrt(n)).select { |factor| n % factor == 0 }.each { |val| n_factors << n/val; n_factors << val }
  n_factors.uniq.sort
end

def find_consec_equals(limit=10_000_000,counter=0)
  limit.downto(2).each { |n| counter += 1 if factors(n).count == factors(n-1).count; p n if n % 10_000 == 0 }
  counter
end

p find_consec_equals
