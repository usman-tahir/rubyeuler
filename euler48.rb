# http://projecteuler.net/problem=48
start_time = Time.new

x = 1
z = Array.new()

while x < 1001
	y = x ** x
	z.push y
	x = x + 1
end

q = z.inject(:+).to_s
p q[-10, 10] # puts last ten digits of the long number

printf("Run Time %.4f s\n", Time.new - start_time)