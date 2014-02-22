# http://projecteuler.net/problem=24
runtime = Time.now

numbers = (0..9).to_a.permutation.map(&:join)
puts numbers[999_999]

puts ((Time.now - runtime).to_f).to_s + " s"

