# http://projecteuler.net/problem=1

puts (1...1000).map { |n| n % 5 == 0 ? n : n % 3 == 0 ? n : nil }.compact.inject(:+) 
