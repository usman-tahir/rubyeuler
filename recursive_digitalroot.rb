# http://rosettacode.org/wiki/Digital_root

test_numbers_array = [627615, 39390, 588225, 393900588225,3]

def find_root(number,persistence=0)
  if integerLength(number) == 1
    [number, persistence]
  else
    find_root(sum(split(number)),persistence+1)
  end
end

def split(number,array=[])
  if number < 10
    array << number
  else
    split(number/10,(array << number % 10))
  end
end

def sum(array,index=0)
  if index >= array.count
    0
  else
    array[index] + sum(array,index+1)
  end
end

def integerLength(number)
  split(number).count
end

test_numbers_array.each do |number|
  result = find_root(number)
  puts "#{number} has digital root of #{result[0]} and additive persistence of #{result[1]}"
end