# http://rosettacode.org/wiki/Look-and-say_sequence
# Sequence Definition

# Take a decimal number
# Look at the number, visually grouping consecutive runs of the same digit.
# Say the number, from left to right, group by group; as how many of that 
# digit there are - followed by the digit grouped. 

# This becomes the next number of the sequence. 

# An example:

# Starting with the number 1, you have one 1 which produces 11.
# Starting with 11, you have two 1's i.e. 21
# Starting with 21, you have one 2, then one 1 i.e. (12)(11) which becomes 1211
# Starting with 1211 you have one 1, one 2, then two 1's i.e. (11)(12)(21) 
# which becomes 111221 
start_time = Time.now

def look_say(number)
  number_string = number.to_s
  look_say_value = number_string.chars.chunk { |char| char }.map { |c,x| [x.size, c] }.join
  look_say_value.to_i
end	

puts number = 1
10.times do 
  puts number = look_say(number)
end  

puts ((Time.now-start_time).to_f).to_s + "s"