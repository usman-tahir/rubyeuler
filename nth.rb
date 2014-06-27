# http://rosettacode.org/wiki/N%27th
start_time = Time.now

def nth(number)
  postfix = "th"
  number = number.to_s
  number.length
  if number[-2] != "1"
    case
    when number[-1] == "1" then postfix = "st"
    when number[-1] == "2" then postfix = "nd"
    when number[-1] == "3" then postfix = "rd"
    end
  end
  number << postfix	
end

def find_nth(start_of_range, end_of_range)
  nths =[]
  (start_of_range..end_of_range).each do |number|
    nths << nth(number)
  end
  nths
end		

puts find_nth(0,25).inspect
puts find_nth(250,265).inspect
puts find_nth(1000,1025).inspect

puts ((Time.now-start_time).to_f).to_s + "s"
