# https://projecteuler.net/problem=53

def find_selections
  one_millions = 0
  (1..100).each { |n| (1..n).each { |r| one_millions += 1 if choose(n,r) > 1_000_000 } }
  one_millions
end

def choose(n,r)
  (factorial(n)) / (factorial(r) * factorial(n - r))
end

def factorial(n)
  n == 0 ? 1 : n * factorial(n-1)
end

p find_selections
