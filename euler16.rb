# http://projecteuler.net/problem=16
start_time = Time.new

x = (2 ** 1000).to_s
q = x.split('').map(&:to_i)
p q
p q.inject(:+)

printf("Run time %.4f s\n", Time.new - start_time)