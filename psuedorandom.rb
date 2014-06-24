# http://rosettacode.org/wiki/Random_number_generator_%28included%29
start_time = Time.now
top_of_range = 100

def pseudo_random(range)
  rand(range)
end

puts pseudo_random(top_of_range)
puts ((Time.now - start_time).to_f).to_s + "s"
