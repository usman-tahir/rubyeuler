# http://rosettacode.org/wiki/Digital_root

test_numbers = [627615, 39390, 588225, 393900588225,3]

def find_digital_root(n,persistence=0)
  length(n) == 1 ? [n,persistence] : find_digital_root(sum(split(n)),persistence+1)
end

def split(n,array=[])
  n < 10 ? array << n : split(n/10,(array << n % 10))
end

def sum(array,index=0)
  index >= array.count ? 0 : array[index] + sum(array,index+1)
end

def length(n)
  split(n).count
end

test_numbers.each { |n| puts "#{n} has digital root of #{find_digital_root(n)[0]} and additive persistence of #{find_digital_root(n)[1]}" }