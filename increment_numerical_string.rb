# http://rosettacode.org/wiki/Increment_a_numerical_string
number_string = 12345

def increment_numerical_string(string)
  string.succ
end

10.times do 
  puts number_string
  number_string = increment_numerical_string(number_string)
end
