start_time = Time.new
y = Array.new

(1..100).each do |num|
	z = num ** 2
	y.push z
end

sum_of_squares = y.inject(:+)

a = (1..100).inject(:+)
square_of_sum = a ** 2

difference = square_of_sum - sum_of_squares
puts difference

printf("Run time %.4f s\n", Time.new - start_time)