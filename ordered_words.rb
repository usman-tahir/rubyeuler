#!/usr/bin/env ruby
# http://programmingpraxis.com/
# http://rosettacode.org/wiki/Ordered_words
# http://www.puzzlers.org/pub/wordlists/unixdict.txt

def ordered_word(w)
  letters = w.downcase.split(//).to_a
  (0...letters.count-1).each { |i| return false if letters[i] > letters[i+1] }
end

def find_ordered_words_in_dictionary(file="unixdict.txt",ordered_words=[])
  File.open(file).readlines.map { |w| w.chomp! }.each { |w| ordered_words << w if ordered_word(w) }
  ordered_words.group_by { |word| word.length }.max
end

puts find_ordered_words_in_dictionary
