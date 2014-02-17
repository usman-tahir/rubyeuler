# http://projecteuler.net/problem=22
require 'csv'
runtime = Time.now

# getting and sorting names
nameset = Array.new
CSV.foreach("names.txt") do |nam|
  nameset.push nam
end
nameset = nameset[0].sort!
# p nameset[1500]

# hash with numeric values for scores
scores = Hash.new
(('A'..'Z').zip(1..26)).each { |x| scores[x[0]] = x[1]}
# p scores['R']

# scores names
val = 0
more_numbers = Array.new
until nameset[val] == nil
	z = nameset[val].split('').collect { |x| scores[x]}
	y = z.inject(0){|sum,item| sum + item}
	multiplied = y * (val + 1)
	more_numbers.push multiplied
	val = val + 1
end

# totals names
total = more_numbers.inject(0){|sum,item| sum + item}
p total

puts ((Time.now - runtime).to_f).to_s + " s"