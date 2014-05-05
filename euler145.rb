# http://projecteuler.net/problem=145
runtime = Time.now

def test_odd_digits(number)
	a = true
	number.to_s.chars.each do |char|
		a = false if char.to_i.odd? == false
	end
	return true if a == true
	return false if a == false
end		

reversiblenumbers =[]
(1..500_000_000).each do |n|
	next if n % 10 == 0
	next if n % 2 == 0 && n.to_s.reverse.to_i % 2 == 0
	next if n % 2 != 0 && n.to_s.reverse.to_i % 2 != 0
	numbertotest = (n + n.to_s.reverse.to_i)
	numberlength = numbertotest.to_s.length
	next if numberlength > 1 && (numbertotest.to_s[1].to_i.even? == true) 
	next if numberlength > 2 && (numbertotest.to_s[2].to_i.even? == true)
	next if numberlength > 3 && (numbertotest.to_s[3].to_i.even? == true)
	next if numberlength > 4 && (numbertotest.to_s[4].to_i.even? == true)
	next if numberlength > 5 && (numbertotest.to_s[5].to_i.even? == true)
	next if numberlength > 6 && (numbertotest.to_s[6].to_i.even? == true)
	next if numberlength > 7 && (numbertotest.to_s[7].to_i.even? == true)
	next if numberlength > 8 && (numbertotest.to_s[8].to_i.even? == true)
	next if numberlength > 9 && (numbertotest.to_s[9].to_i.even? == true)
	reversiblenumbers.push numbertotest if test_odd_digits(numbertotest) == true
end

puts reversiblenumbers.count
puts ((Time.now - runtime).to_f).to_s + "s"
