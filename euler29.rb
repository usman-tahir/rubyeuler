# http://projecteuler.net/problem=29
a = 2
b = 2
set = Array.new

while a <= 100 
	while b <= 100
	z = a ** b
	set.push z
	b = b + 1
	end
	b = 2
	a = a + 1
end

set = set.uniq!

puts set.count