numbers_to_check = [49927398716, 49927398717, 1234567812345678, 1234567812345670]

def checksum(n)
  check_array = split(n)
  check_array.each_index do |index|
    if index % 2 == 1
      check_array[index] *= 2
      check_array[index] = sum(split(check_array[index]))
    end
  end
  sum(check_array) % 10 == 0
end

def split(n,array=[])
  if n < 10
    array << n
  else
    array << n % 10
    split(n/10,array)
  end  
end

def sum(array,index=0)
  if index == array.length
    0
  else
    array[index] + sum(array,index+1)
  end
end


numbers_to_check.each do |num|
  puts "#{num}: #{checksum(num)}"
end
