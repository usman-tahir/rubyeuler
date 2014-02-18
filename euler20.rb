# http://projecteuler.net/problem=20
runtime = Time.now
hundred = Array.new

def factorial(num)
	if num == 1
		1
	else
		num * factorial(num-1)
	end
end

hundred = factorial(100).to_s.split('').map(&:to_i)
puts hundred.inject(:+)
puts ((Time.now - runtime).to_f).to_s + " s"