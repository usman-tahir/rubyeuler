#!/usr/bin/env ruby
# https://practicingruby.com/articles/solving-the-scoring-predictions-kata

def guess_finalists(guess,actual)
  guess.map.with_index(0) do |e,i|
    if actual[i] == guess[i]
      case
      when i == 0
        e = 15
      when i == 1
        e = 10
      when i == 2
        e = 5
      when i == 3
        e = 3
      when i == 4
        e = 1
      end
    elsif actual.include?(e)
      e = 1
    end
  end.compact.inject(:+)
end

guessed = [1,2,3,4,5]
finish = [1,3,4,0,5]

p guess_finalists(guessed,finish)
