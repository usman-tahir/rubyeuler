#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Set_puzzle

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
	p "Dealt #{number} cards"
  deal_cards(number).each { |c| p c[0] + " - " + c[1] + " - " + c[2] + " - " + c[3] }
end

show_cards(9) 	
