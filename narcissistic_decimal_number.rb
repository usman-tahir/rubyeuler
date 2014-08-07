# http://rosettacode.org/wiki/Narcissistic_decimal_number

def narcissistic_decimal(number)
  number_length = number.to_s.length 
  decimal_split = number.to_s.split(//).map {|digit| digit.to_i**number_length}
  decimal_split.inject(:+)
  return true if decimal_split.inject(:+) == number
  return false if decimal_split.inject(:+) != number
end  

counter = 0
narc_decimal_ints =[]

until narc_decimal_ints.count == 25
  narc_decimal_ints << counter if narcissistic_decimal(counter) == true
  puts counter if narcissistic_decimal(counter) == true
  counter += 1
end

puts narc_decimal_ints.inspect  