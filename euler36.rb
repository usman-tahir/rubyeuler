# http://projecteuler.net/problem=36

# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.
# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
# (Please note that the palindromic number, in either base, may not include leading zeros.)
runtime = Time.now
numbers = Array.new

(1..1_000_000).each do |x|
  y = x.to_s(2)
  if x.to_s == x.to_s.reverse && y == y.reverse
    numbers.push x
  end
end
puts numbers.inject(:+)

puts ((Time.now - runtime).to_f).to_s + " s"