# http://rosettacode.org/wiki/Guess_the_number

random_number = rand(1..10)

guess = 0

until guess == random_number
  print "Guess a number from 1 to 10: "
  guess = gets.to_i
  if guess == random_number
    puts "Well guessed! It's " + random_number.to_s
  else
    puts "Guess again!"
  end
end	  	
