# solution for http://projecteuler.net/problem=1

i = 1
sum_total = Array.new

while (i < 1000)
	if (i % 3 == 0)
		k = i
		puts k
		sum_total.push k
	elsif (i % 5 == 0)	
		p = i
		puts p
		sum_total.push p
	else 
		puts "not divisible by 3 or 5"
	end
	i = i + 1
end	  

puts "..."
puts sum_total

sum = sum_total.reduce :+
puts sum