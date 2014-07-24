# http://rosettacode.org/wiki/Guess_the_number/With_feedback_%28player%29
number_guessed = false
counter = 1
low_value = 1
high_value = 100

def random_guess(low,high)
  (low..high).to_a.sample
end	

puts "Think of a number between 1 and 100!"
puts "~ ~ ~ ~ ~ ~"
guess = random_guess(1,100)
until number_guessed == true
  # puts "(the current range is #{low_value} to #{high_value})"
  puts "Are you thinking of #{guess}?"
  puts "~ ~ ~ ~ ~ ~"
  print "Enter (y) for 'yes', (h) for 'no, it's higher', (l) for 'no, it's lower:' "
  answer = gets.chomp[0]
  case
  when answer == "y"
    number_guessed = true
  when answer == "h"
    puts "it's higher? ok"
    low_value = guess
    guess = random_guess(low_value,high_value)
    counter += 1
  when answer == "l"
    puts "it's lower? ok"
    high_value = guess
    guess = random_guess(low_value,high_value)
    counter += 1
  else
    next
  end
  puts "! it has to be #{low_value}" if low_value == high_value
  exit if low_value == high_value
end  	

try = "try" if counter == 1
try = "tries" if counter > 1

puts "I correctly picked #{guess} in #{counter} #{try}!"
puts ":)"
