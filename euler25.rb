# http://projecteuler.net/problem=25
runtime = Time.now

digits = Array.new
fibo = Array.new
fibo = [1,1,2,3,5,8]
increm = 0

until fibo[-1].to_s.length == 1000
	increm = fibo[-2] + fibo[-1]
	# puts increm
	fibo.push increm
end

puts fibo.count
puts ((Time.now - runtime).to_f).to_s + " s"