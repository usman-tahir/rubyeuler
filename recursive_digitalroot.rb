# http://rosettacode.org/wiki/Digital_root

def find_root(number,persistence=0)
  if integer_length(number) == 1
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

def integer_length(number)
  split(number).count
end

def show_result(array,index=0)
  if index >= array.count
    return 0
  else
    number = array[index]
    result = find_root(number)
    puts "#{number} has digital root of #{result[0]} and additive persistence of #{result[1]}"
    show_result(array,index+1)
  end
end

test_numbers_array = [627615, 39390, 588225, 393900588225,3]

show_result(test_numbers_array)
