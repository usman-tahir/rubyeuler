# http://rosettacode.org/wiki/Rock-paper-scissors

computer_guesses = ["Rock", "Paper", "Scissors"]
computer_guess = computer_guesses.sample
print "Choose your weapon: (R)ock, (P)aper, (S)cissors: "
human_guesses = gets.chomp.to_s.upcase

case
when human_guesses == "R"
  human_guess = "Rock"
when human_guesses == "P"
  human_guess = "Paper"
when human_guesses == "S"
  human_guess = "Scissors"  	
else 
  puts "You must choose R, P, or S!"
  exit  
end

case
when human_guess == computer_guess
  puts "I selected " + computer_guess + ". It's a tie!"
when human_guess == "Rock" && computer_guess == "Paper"
  puts "I picked " + computer_guess + ". Paper covers rock; I win!"
when human_guess == "Rock" && computer_guess == "Scissors"
  puts "I picked " + computer_guess + ". Rock beats scissors; you win!"
when human_guess == "Scissors" && computer_guess == "Paper"
  puts "I picked " + computer_guess + ". Scissors cut paper; you win!"
when human_guess == "Scissors" && computer_guess == "Rock"
  puts "I picked " + computer_guess + ". Rock beats scissors; I win!"
when human_guess == "Paper" && computer_guess == "Rock"
  puts "I picked " + computer_guess + ". Paper covers rock; you win!"
when human_guess == "Paper" && computer_guess == "Scissors"
  puts "I picked " + computer_guess + ". Scissors cut paper; I win!"
else
  puts "Something went wrong!"
end                	

# need to add weighted random choice for AI