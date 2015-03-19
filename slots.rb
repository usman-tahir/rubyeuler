# http://programmingpraxis.com/2011/01/14/slots/

def play(winnings=0)
  puts; print "YOUR BET? "
  bet = gets.chomp.to_i
  result = pull_arm(bet)
  winnings += result
  puts "YOUR STANDINGS ARE $#{winnings}"
  print "AGAIN? (TYPE 'Y' TO PLAY AGAIN) "
  again = gets.chomp
  if again == "Y"
    play(winnings)
  else
    puts "COLLECT YOUR WINNINGS FROM THE CASHIER"
  end
end

def pull_arm(bet)
  possibilities = ["LEMON","CHERRY","BELL","BAR"]
  result = [possibilities.sample, possibilities.sample, possibilities.sample]
  puts "#{result[0]} #{result[1]} #{result[2]}"
  case 
  when result.length == result.uniq.length
    puts; puts "YOU LOST."
    return bet * -1
  when result.length - 2 == result.uniq.length
    puts; puts "TRIPLE!!"
    puts "YOU WON!"
    return bet * 3
  when result.length - 1 == result.uniq.length
    puts; puts "DOUBLE!!"
    puts "YOU WON!"
    return bet * 2
  else
  end
end

puts "YOU ARE IN THE CASINO, IN FRONT OF OUR"
puts "ONE-ARMED BANDITS. BET FROM $1 to $100."
puts "TO PULL THE ARM, PUNCH THE RETURN KEY AFTER MAKING YOUR BET"
play
