# http://projecteuler.net/problem=1
start_time = Time.now

array_of_multiples =[]

(1..999).each do |number|
	array_of_multiples.push number if number % 3 == 0 || number % 5 == 0
end

puts array_of_multiples.inject(:+)	
puts ((Time.now - start_time).to_f).to_s + "s"