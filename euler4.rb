# Solution for http://projecteuler.net/problem=4

# Find the largest palindrome made from the product of two 3-digit numbers.
start_time = Time.new
z = 99
q = 99
i = 9999
palin = Array.new()

# All the palindromes from 999999 to 100001 get stored -- with 999999 at index 0.
while i > 1001
	f = i.to_s[0..1] 
	g = i.to_s[2..-1]
	g.reverse
	f.to_i
	g.to_i
	if f = g
		# puts "f is " + f + " and g is " + g # For debugging.
		h = f + g.reverse
		h = h.to_i
		palin.push h
		i = i - 1
	else
		i = i - 1
	end		
end
puts palin[0..20] # For debugging.


printf("Run time %.4f s\n", Time.new - start_time)