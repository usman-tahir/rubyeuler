# https://projecteuler.net/problem=14

def hailstone(nth,counter=1)
  if nth == 1
    counter
  elsif nth % 2 == 0
    hailstone(nth/2,counter+1)
  elsif nth % 2 == 1
    hailstone(((3*nth)+1),counter+1)
  end
end

value = 1
(1...1_000_000).each do |n|
  if hailstone(n) > hailstone(value)
    value = n
  end
end

p value 