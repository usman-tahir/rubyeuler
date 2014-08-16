# http://projecteuler.net/problem=1

def find_below(number)
  result = 0
  (1...number).each do |int|
    result += int if int % 3 == 0 || int % 5 == 0
  end
  result
end

puts find_below(1000)     