# http://rosettacode.org/wiki/Middle_three_digits
start_time = Time.now

def find_middle_three(number)
  number = number.abs.to_s
  index = (number.length/2)
  if number.length < 3
    return "Number must be at least three digits long."
  elsif number.length % 2 == 0 
    return "Number must have an odd number of digits."
  else number.length >= 3
    return (number[index-1] + number[index] + number[index+1])
  end    
end

rosetta_test_values = [123, 12345, 1234567, 987654321, 10001, -10001, -123, 
  -100, 100, -12345, 1, 2, -1, -10, 2002, -2002, 0]

rosetta_test_values.each do |number|
  puts number.to_s + ": " + find_middle_three(number).to_s
end  

puts ((Time.now - start_time).to_f).to_s + "s"