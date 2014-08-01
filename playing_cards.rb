# http://rosettacode.org/wiki/Playing_cards
# The deck should contain 52 unique cards. The methods must include the ability to make a new deck,
# shuffle (randomize) the deck, deal from the deck, and print the current contents of a deck. Each 
# card must have a pip value and a suit value which constitute the unique value of the card. 

def create_deck_of_cards
  deck_of_cards = Array.new
  suits = ["Hearts","Spades","Clubs","Diamonds"]
  pip_vals = ["Ace","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
  suits.each do |suit|
    pip_vals.each do |val|
      deck_of_cards << (val + " of " + suit)
    end
  end
  deck_of_cards  
end      

deck = create_deck_of_cards

def deck.shuffle_cards
  self.shuffle
end

def deck.show
  puts self
end

def deck.deal(number_of_cards)
  shuffled_deck = self.shuffle_cards
  shuffled_deck[0..number_of_cards-1]
end  

#puts deck.shuffle_cards.inspect  
puts deck.deal(5)