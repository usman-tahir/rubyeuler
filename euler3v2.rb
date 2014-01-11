# solution for http://projecteuler.net/problem=3
# NOT using require 'prime'
# commented out for learning purposes

# set start time for program
start_time = Time.new

# asks for input
puts "Factorize this ==> " 
# gets number input and sets it to an integer
z = gets.to_i
# creates a variable called factor set to two
factor = 2
# creates a variable called last_factor set to one
last_factor = 1

# while loop to go through all the potential numbers
# while the value for z -- starting with the user's input -- is still greater than one
while z > 1
	# if the current value of z modulo the current value for factor equals zero
	if z % factor == 0
		# set last_factor to equal factor
		last_factor = factor
		# set the new value of z to equal the old value of z divided by factor
		z = z/factor
		# nestest while loop to deal with the new value of z
		# while the new value of z modulo factor is equal to zero
		while z % factor == 0
			# set a new value for z equal to z divided by factor
			z = z/factor
		# end the nested while loop when z modulo factor is no longer zero
		# then kick back out to the if-else statement
		end
	# if z modulo factor in line 21 returns a value other than zero 	
	# increment factor by 1
	else factor = factor + 1
	# go through the while loop again until z has no prime factors greater than zero	
end # ends when it's set last_factor to the biggest possible factor
puts last_factor # prints the last value
end
# prints program run time by subtracting start_time set in line 6 from the current time
printf("Run time %.4f s\n", Time.new - start_time)