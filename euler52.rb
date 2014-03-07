# http://projecteuler.net/problem=52
# It can be seen that the number, 125874, and its double, 251748,
# contain exactly the same digits, but in a different order.
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

runtime = Time.now

def try_(num)
  num.to_s.split(//).map{|chr| chr.to_i}.sort
end

number = false
x = 1
x = x.to_i
until number == true
  if try_(x) == try_(2 * x) && try_(x) == try_(3 * x) && try_(x) == try_(4 * x) && try_(x) == try_(5 * x) && try_(x) == try_(6 * x)
    number = true
    puts "it is: " + x.to_s
  else
    puts "it's not: " + x.to_s
    x = x + 1
  end
end

puts ((Time.now - runtime).to_f).to_s + " s"