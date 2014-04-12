# http://projecteuler.net/problem=43
runtime = Time.now

pandigitals = [0,1,2,3,4,5,6,7,8,9]
permutations = pandigitals.permutation.to_a

twos = Array.new
n = 0
until permutations[n] == nil
	if permutations[n][3] % 2 == 0
		twos.push permutations[n]
	else
	end
	n += 1
end		

threes = Array.new
n = 0
until twos[n] == nil
	if twos[n][2..4].inject(:+) % 3 == 0
		threes.push twos[n]
	else
	end
	n += 1
end

fives = Array.new
n = 0
until threes[n] == nil
	if threes[n][5] == 5
		fives.push threes[n]
	else
	end
	n += 1
end

sevens = Array.new
n = 0
until fives[n] == nil
	if (fives[n][4].to_s + fives[n][5].to_s + fives[n][6].to_s).to_i % 7 == 0
		sevens.push fives[n]
	else
	end
	n += 1
end

elevens = Array.new
n = 0
until sevens[n] == nil
	if (sevens[n][5].to_s + sevens[n][6].to_s + sevens[n][7].to_s).to_i % 11 == 0
		elevens.push sevens[n]
	else
	end
	n += 1
end

thirteens = Array.new
n = 0
until elevens[n] == nil
	if (elevens[n][6].to_s + elevens[n][7].to_s + elevens[n][8].to_s).to_i % 13 == 0
		thirteens.push elevens[n]
	else
	end
	n += 1
end

seventeens = Array.new
n = 0
until thirteens[n] == nil
	if (thirteens[n][7].to_s + thirteens[n][8].to_s + thirteens[n][9].to_s).to_i % 17 == 0
		seventeens.push thirteens[n]
	else
	end	
	n += 1
end

sub_str_div = Array.new
n = 0
until seventeens[n] == nil
	sub_str_div.push (seventeens[n][0].to_s + 
		seventeens[n][1].to_s + 
		seventeens[n][2].to_s + 
		seventeens[n][3].to_s + 
		seventeens[n][4].to_s + 
		seventeens[n][5].to_s + 
		seventeens[n][6].to_s + 
		seventeens[n][7].to_s + 
		seventeens[n][8].to_s + 
		seventeens[n][9].to_s).to_i
	n += 1
end

puts sub_str_div.inject(:+)
puts ((Time.now - runtime).to_f).to_s + " s"
