# http://rosettacode.org/wiki/Set_puzzle
# write code that deals the cards (9 or 12, depending on selected mode) from a 
# shuffled deck in which the total number of sets that could be found is 4 (or 6, 
#	respectively); and print the contents of the cards and the sets
#
# Three cards form a set if each feature is either the same on each card, or is 
# different on each card. For instance: all 3 cards are red, all 3 cards have a 
# different symbol, all 3 cards have a different number of symbols, all 3 cards are 
# striped. 
start_time = Time.now

def create_deck
	colors = ["red","green","purple"]
	symbols = ["oval","squiggle","diamond"]
	numbers = ["1","2","3"]
	shadings = ["solid","open","striped"]
  deck =[]
  colors.each do |color|
  	symbols.each do |symbol|
  		numbers.each do |number|
  			shadings.each do |shading|
  				deck << [color,symbol,number,shading]
  			end
  		end
  	end
  end
  deck
end

def deal_cards(number)
	create_deck.shuffle[0..number-1]
end	

def show_cards(number)
	puts "Dealt #{number} cards"
  deal_cards(number).each do |card|
  	puts card[0] + " - " + card[1] + " - " + card[2] + " - " + card[3]
  end
end

show_cards(9) 	

puts ((Time.now - start_time).to_f).to_s
