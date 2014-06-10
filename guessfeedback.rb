# http://rosettacode.org/wiki/Guess_the_number/With_feedback
number = 100
computer_choice = rand(1..number)
puts "I'm thinking of a number between 1 and " + number.to_s + "."
guess = 0

until guess == computer_choice
  print "Guess the number: "
  guess = gets.chomp.to_i
  if guess == computer_choice
    puts "Well guessed! It is " + computer_choice.to_s + "." 
  elsif guess < computer_choice 
    puts "It's higher than " + 	guess.to_s + "."
  elsif guess > computer_choice
    puts "It's lower than " + guess.to_s + "."
  else 
    puts "Something went wrong."
    exit 
  end
end
