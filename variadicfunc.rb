# http://rosettacode.org/wiki/Variadic_function
start_time = Time.now

def cardinal_to_ordinal(*numbers)
  ordinals = []
  numbers.each do |number|
    postfix = "th"
    number = number.to_s
    if number[-2] != "1"
      case
      when number[-1] == "1" then postfix = "st"
      when number[-1] == "2" then postfix = "nd"
      when number[-1] == "3" then postfix = "rd"
      end
    end
    ordinals << (number << postfix)
  end
  ordinals
end

puts cardinal_to_ordinal(1,11,21,34,114,200_112,1_000_023)

puts ((Time.now - start_time).to_f).to_s + "s"    	

