# http://rosettacode.org/wiki/Random_number_generator_%28device%29
require 'securerandom'
start_time = Time.now
top_of_range = 100

def generate_random(range_of_integers)
  SecureRandom.random_number(range_of_integers)
end

puts generate_random(top_of_range)
puts ((Time.now - start_time).to_f).to_s + "s"

