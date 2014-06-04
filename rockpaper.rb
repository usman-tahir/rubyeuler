# http://rosettacode.org/wiki/Rock-paper-scissors

game_over = false
rock_counter = 0
scissors_counter = 0
paper_counter = 0
game_counter = 0
computer_guesses = ["Rock", "Paper", "Scissors"]
until game_over == true	
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
    exit
  end

  game_counter += 1
  rock_counter += 1 if human_guess == "Rock"
  paper_counter += 1 if human_guess == "Paper"
  scissors_counter +=1 if human_guess == "Scissors"
  
  # weighted random by appending winning choice to the computer_guesses array
  computer_guesses << "Rock" if human_guess == "Scissors"
  computer_guesses << "Paper" if human_guess == "Rock"
  computer_guesses << "Scissors" if human_guess == "Paper"                	

  print "Want to play again? (Y)es or (N)o: "
  play_again = gets.chomp.to_s.upcase

  case
  when play_again == "Y"
    game_over = false
  when play_again == "N"
    puts "Thanks for playing!" 
    puts "We played once." if game_counter == 1
    puts "We played " + game_counter.to_s + " times." if game_counter > 1
    puts "You guessed Rock " + rock_counter.to_s + " times."
    puts "You guessed Paper " + paper_counter.to_s + " times."
    puts "You guessed Scissors " + scissors_counter.to_s + " times."
    puts computer_guesses.inspect
    game_over = true
  else
    puts "Something went wrong!"
    exit
  end
end      	
