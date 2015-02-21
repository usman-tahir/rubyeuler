n = -> x { x }
f = -> x { x % 3 == 0 ? "fizz" : n[x] }
b = -> x { x % 5 == 0 ? "buzz" : f[x] }
fb = -> x { x % 15 == 0 ? "fizzbuzz" : b[x] }

(1..100).each { |n| p fb[n] }
