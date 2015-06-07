# http://projecteuler.net/problem=5

even_div = -> n { (11..20).each {|d| return false if n % d != 0}; true }
step = 9699690; n = 9699690; (n += step) until even_div[n]; p n
