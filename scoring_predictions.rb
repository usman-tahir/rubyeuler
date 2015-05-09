#!/usr/bin/env ruby
# https://practicingruby.com/articles/solving-the-scoring-predictions-kata

def guess_finalists(guess,actual)
  score = 0
  guess.each_index do |i|
    score += 15 if guess[i] == actual[i] && i == 0
    score += 10 if guess[i] == actual[i] && i == 1
    score += 5 if guess[i] == actual[i] && i == 2
    score += 3 if guess[i] == actual[i] && i == 3
    score += 1 if guess[i] == actual[i] && i == 4
    score += 1 if guess[i] != actual[i] && actual.include?(guess[i])
  end
  score
end

guessed = [1,2,3,4,5]
finish = [1,3,4,0,5]

p guess_finalists(guessed,finish)


