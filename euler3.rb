# solution for http://projecteuler.net/problem=3
start_time = Time.new # measuring time

# probably cheating to use this?
require 'prime'
puts "Factorialize this! => "
q = gets.chomp.to_i
z = q.prime_division
puts z

printf("Run time %.2f s\n", Time.new - start_time) # printing the total time