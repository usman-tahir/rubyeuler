# solution for http://projecteuler.net/problem=2

i = 0
fibo = Array.new
fibo = [1, 1, 2, 3, 5, 8]
lodo = Array.new

# -1 would be the last index position of the Array

# first step. generate the fibonacci numbers
while (fibo[-1] < 4000000)
	p = fibo[-1] + fibo[-2]
	puts p # debug thing
	fibo.push p
end	

fibo.each_with_index do |e, i|
	if e % 2 == 0
		m = e
		lodo.push m
	else
		puts "odd number"
end	
puts "the numbers in lodo are:" 
puts lodo

puts "...calculating"

sum = lodo.reduce :+
puts sum	
end