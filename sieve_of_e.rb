# http://rosettacode.org/wiki/Sieve_of_Eratosthenes

def find_primes_below(limit)
  i = 0; p = (2..limit).to_a
  ( p.each { |n| p.delete(n) if n % p[i] == 0 && n != p[i] }; i += 1 ) until i >= p.count 
  return p
end

p find_primes_below(100)
