start_time = Time.new

largest_palindrome = 0
x = 999

while x >= 100
	y = 999
		while y >= x
			if x * y <= largest_palindrome
				break
			else
				largest_palindrome = x * y
			end
		end
	y = y - 1
	x = x - 1
end			

puts largest_palindrome		
printf("Run time %.4f s\n", Time.new - start_time)