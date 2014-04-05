# http://projecteuler.net/problem=35
require 'prime'
runtime = Time.now

def gen_prime(num)
	prime_test = Array.new
	Prime.each(num) do |prime|
		prime_test.push prime
	end	
	@prime_test = prime_test
end

def circular_test(num,places)
	num.to_s.split('').rotate(places).map {|i| i.to_i}.join('').to_i.prime?
end	

def find_circular_primes
	circular_primes = Array.new
	@prime_test.each do |prime|
		if prime.to_s.length == 1
			circular_primes.push prime
		elsif prime.to_s.length == 2	
			if circular_test(prime,1) == true
				circular_primes.push prime
			else
			end
		elsif prime.to_s.length == 3
			if circular_test(prime,1) == true && circular_test(prime,2) == true
				circular_primes.push prime
			else
			end
		elsif prime.to_s.length == 4
			if circular_test(prime,1) == true && circular_test(prime,2) == true && circular_test(prime,3) == true
				circular_primes.push prime
			else
			end
		elsif prime.to_s.length == 5
			if circular_test(prime,1) == true && circular_test(prime,2) == true && circular_test(prime,3) == true && circular_test(prime,4) == true
				circular_primes.push prime
			else
			end
		elsif prime.to_s.length == 6
			if circular_test(prime,1) == true && circular_test(prime,2) == true && circular_test(prime,3) == true && circular_test(prime,4) == true && circular_test(prime,5)	== true			
				circular_primes.push prime
			else
			end
		else					
		end		
	end
	puts circular_primes.count
end			

gen_prime(1_000_000)
find_circular_primes

puts ((Time.now - runtime).to_f).to_s + " s"