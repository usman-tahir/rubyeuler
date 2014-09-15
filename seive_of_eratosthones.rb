# http://rosettacode.org/wiki/Sieve_of_Eratosthenes

def find_primes_upto(number)
  primes = (2..number).to_a
  counter = 0
  until counter >= primes.count  
    primes.each do |number|
      if number != primes[counter]
        primes.delete(number) if number % primes[counter] == 0
      end  
    end
    counter += 1
  end          
  primes
end

puts find_primes_upto(100).inspect  