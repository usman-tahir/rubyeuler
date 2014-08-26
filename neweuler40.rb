# http://projecteuler.net/problem=40

def stringint(string, num)
  string[num].to_i
end  

def find_nth_position_values
  numberstring = String.new
  digitpositions = [0,9,99,999,9999,99999,999999]
  digits =[]
  (1..1_000_000).each do |number|
    numberstring.concat(number.to_s)
  end
  digits =[]
  digitpositions.each do |num|
    digits.push stringint(numberstring, num)
  end
  digits.inject(:*)
end

puts find_nth_position_values  