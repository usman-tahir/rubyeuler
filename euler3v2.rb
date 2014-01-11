# solution for http://projecteuler.net/problem=3
# This DOESN'T use require 'prime.'
# I commented it out for learning purposes.

# This sets the start time for the program.
start_time = Time.new

# Ask for input.
puts "Factorize this ==> " 
# Get the input as an integer.
z = gets.to_i
# Create a variable called factor set to 2.
# 2 is the first prime number above 1, so you can start
# incrementing from there.
factor = 2
# Create a variable called last_factor set to 1.
# This stores the value of the current largest prime factor
# as the while loop runs.
last_factor = 1

# This is a while loop to run through all possible prime factors of z.
# "While z is greater than one..."
while z > 1
	# Tests to see if z modulo factor is 0. If so, factor is a prime factor of z.
	if z % factor == 0
		# Sets last_factor to the value that factor had in line 25.
		last_factor = factor
		# Sets a new value for z equal to prior z divided by factor.
		z = z/factor
		# Nested while loop to handle the new value of z.
		# "While the value of z from line 29 modulo factor equals zero..."
		while z % factor == 0
			# Sets a new value for z equal to prior z divided by factor.
			z = z/factor
		# Ends the nested while loop when z % factor == 0 is false.
		# Kicks back to if statement on line 25.
		end
	# If z modulo factor does not equal 0, increment the factor by one
	# and try again.
	else factor = factor + 1
	# Loop through lines 23-40 until z > 1 is false.
end # When z > 1 is false, last_factor will be set as the largest prime factor.
puts last_factor # Prints out the last factor.
end
# Prints program run time in seconds by subtracting start_time set in line 6 
# from the current time. The number goes out four decminal places.
printf("Run time %.4f s\n", Time.new - start_time)