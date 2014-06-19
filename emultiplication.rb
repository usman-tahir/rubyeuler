# http://rosettacode.org/wiki/Ethiopian_multiplication
start_time = Time.now

def halve_integer(number)
  number / 2
end

def double_integer(number)
  number * 2
end

def number_is_even(number)
  return true if number % 2 == 0
  return false if number % 2 != 0
end  	

def emultiplication(multiplier, multiplicand)
  multipliers = [multiplier]
  multiplicands =[multiplicand]
  until multiplier == 1
    multiplier = halve_integer(multiplier)
    multipliers << multiplier
    multiplicand = double_integer(multiplicand)
    multiplicands << multiplicand
  end	
  result = 0
  multipliers.each_index do |index|
    result += multiplicands[index] if !number_is_even(multipliers[index])
  end
  result
end

puts emultiplication(17, 34)
puts ((Time.now - start_time).to_f).to_s + "s"
