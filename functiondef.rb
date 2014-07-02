# http://rosettacode.org/wiki/Function_definition
start_time = Time.now

def multiply(number1, number2)
  return "The product of #{number1} and #{number2} is #{number1 * number2}"
end

puts multiply(3,4)
puts ((Time.now-start_time).to_f).to_s + "s"

