# http://projecteuler.net/problem=1
start_time = Time.now

accumulator = 0
(1..999).each do |number|
  accumulator += number if number % 3 == 0 || number % 5 == 0
end

puts accumulator
puts ((Time.now - start_time).to_f).to_s + "s"