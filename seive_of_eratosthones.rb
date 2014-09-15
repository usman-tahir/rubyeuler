# http://rosettacode.org/wiki/Sieve_of_Eratosthenes

def find_primes_upto(int)
  primes = (2..int).to_a
  index_counter = 0
  until index_counter >= primes.count  
    primes.each do |number|
      if number != primes[index_counter]
        primes.delete(number) if number % primes[index_counter] == 0
      end  
    end
    index_counter += 1
  end          
  primes
end

puts find_primes_upto(100).inspect  