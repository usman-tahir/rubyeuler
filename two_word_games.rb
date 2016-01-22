#!/usr/bin/env ruby
# http://programmingpraxis.com/2012/10/09/two-word-games/

def five_ascending_vowels(word)
  v = ["a","e","i","o","u"]
  v == word.split("").select { |c| v.include?(c) }
end

def six_ascending_alpha_order(word)
  return word.length < 6 ? false : word.split("") == word.split("").sort
end

def find_words_for_test(dict,test)
  File.new(dict).each { |w| puts w.chomp if test.call(w.chomp) }
end

find_words_for_test("unixdict.txt", method(:five_ascending_vowels))
find_words_for_test("unixdict.txt", method(:six_ascending_alpha_order))

