# http://projecteuler.net/problem=42
require 'csv'
runtime = Time.now

words = Array.new
triangle_words = Array.new
scores = Hash.new
(('A'..'Z').zip(1..26)).each { |x| scores[x[0]] = x[1]}

CSV.foreach('words.txt') do |word|
	words.push word
	words.flatten!
end

val = 0
until words[val] == nil
	z = words[val].split('').collect { |x| scores[x]}
	y = z.inject(0){|sum,item| sum + item}
	if (0.5 * Math.sqrt(8 * y + 1) - 0.5) % 1 == 0
		# puts words[val]
		triangle_words.push words[val]
	else
	end
	val = val + 1
end

puts triangle_words.count
puts ((Time.now - runtime).to_f).to_s + " s"