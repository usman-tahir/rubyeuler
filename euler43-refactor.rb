# http://projecteuler.net/problem=43
runtime = Time.now

pandigitals = [0,1,2,3,4,5,6,7,8,9]
num = pandigitals.permutation.to_a
sub_str_div = Array.new
n = 0

until num[n] == nil
	if num[n][5] == 5 &&
				num[n][2..4].inject(:+) % 3 == 0 &&
				num[n][3] % 2 == 0 &&
				(num[n][4].to_s + num[n][5].to_s + num[n][6].to_s).to_i % 7 == 0 &&
				(num[n][5].to_s + num[n][6].to_s + num[n][7].to_s).to_i % 11 == 0 &&
				(num[n][6].to_s + num[n][7].to_s + num[n][8].to_s).to_i % 13 == 0 &&
				(num[n][7].to_s + num[n][8].to_s + num[n][9].to_s).to_i % 17 == 0
		sub_str_div.push (num[n][0].to_s + 
				num[n][1].to_s + 
				num[n][2].to_s + 
				num[n][3].to_s + 
				num[n][4].to_s + 
				num[n][5].to_s + 
				num[n][6].to_s + 
				num[n][7].to_s + 
				num[n][8].to_s + 
				num[n][9].to_s).to_i
	else
	end
	n += 1
end

puts sub_str_div.inject(:+)
puts ((Time.now - runtime).to_f).to_s + " s"	
