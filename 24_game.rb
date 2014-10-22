# http://rosettacode.org/wiki/24_game

def display_digits
  digits =[]
  4.times do
    digits << rand(1..9)
  end
  digits
end

def game_loop
  initial_digits = display_digits.sort
  puts "Your digits are #{initial_digits.inspect}"
  puts "Write an arithmetic expression using only those digits that results in 24: "
  user_expression = gets.chomp
  if user_expression.gsub(/[^\d]/, '').split(//).map {|digit| digit.to_i}.sort != initial_digits
    puts "Use only the digits in the initial array!"
  elsif eval(user_expression).class != Fixnum
    puts "Not an arithmetic expression!"
  elsif eval(user_expression) != 24
    puts "Sorry, your expression totals #{eval(user_expression)}."
  else eval(user_expression) == 24
    puts "Congratulations, your expression equals 24!"
  end
end

game_loop  