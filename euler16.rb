# http://projecteuler.net/problem=16
start_time = Time.now

puts (((2**1000).to_s).split('').map(&:to_i)).inject(:+)

puts ((Time.now - start_time).to_f).to_s + "s"