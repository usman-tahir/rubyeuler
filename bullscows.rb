# http://rosettacode.org/wiki/Bulls_and_cows

digits = [1,2,3,4,5,6,7,8,9]
one = digits.sample
digits.delete(one)
two = digits.sample
digits.delete(two)
three = digits.sample
digits.delete(three)
four = digits.sample

random_number = [one, two, three, four]
# puts random_number.inspect

puts "I'm thinking of a four digit number!"
guess = 0
until guess.respond_to?(:to_i) && guess.to_s.length == 4
  print "Guess what it is: "
  guess = gets.chomp
  puts "You must enter a four digit number!" if guess.respond_to?(:to_i) == false || guess.to_s.length != 4
end  
guess = guess.to_s.scan(/./).map { |number| number.to_i }
# puts guess.inspect

bulls = 0
cows = 0
guess.each_with_index do |number, index|
	if guess[index] == random_number[index]
		bulls += 1
	elsif random_number.include? number
	  cows += 1
	else
	end
end	  	

puts "Here's your score:"
puts "Cows: " + cows.to_s 	
puts "Bulls: " + bulls.to_s
puts "The number was: " + one.to_s + two.to_s + three.to_s + four.to_s