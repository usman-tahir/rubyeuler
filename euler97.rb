# http://projecteuler.net/problem=97
starttime = Time.now
a = 2 ** 7830457
b = (28433 * a) + 1
puts b
puts ((Time.now - starttime).to_f).to_s