# solution for http://projecteuler.net/problem=3
start_time = Time.new

# probably cheating to use this?
require 'prime'
puts "Factorize this! => "
q = gets.chomp.to_i
z = q.prime_division
puts z

printf("Run time %.4f s\n", Time.new - start_time)