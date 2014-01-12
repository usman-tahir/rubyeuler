# Solution for http://projecteuler.net/problem=4

# Find the largest palindrome made from the product of two 3-digit numbers.
start_time = Time.new
z = 999
q = 999
i = 999999
palin = Array.new()

# all the palindromes from 999999 to 100001 stored with 999999 at index 0
while i > 100001
	f = i.to_s[0..2] 
	g = i.to_s[3..-1]
	g.reverse
	f.to_i
	g.to_i
	if f = g
		# puts "f is " + f + " and g is " + g # debug
		h = f + g.reverse
		h = h.to_i
		palin.push h
		i = i - 1
	else
		i = i - 1
	end		
end
puts palin[0..20] # debug

printf("Run time %.4f s\n", Time.new - start_time)