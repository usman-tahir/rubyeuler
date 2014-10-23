# http://rosettacode.org/wiki/Ordered_words
# http://www.puzzlers.org/pub/wordlists/unixdict.txt

def ordered_word(string)
  letters = string.downcase.split(//).to_a
  limit = (letters.count - 2)
  (0..limit).each do |index|
    return false if letters[index] > letters[index+1]
  end
  return true
end

def find_ordered_words_in_dictionary
  ordered_words = []
  words_to_test = File.open("unixdict.txt").readlines
  words_to_test.map {|word| word.chomp!}
  words_to_test.each do |word|
    ordered_words << word if ordered_word(word)
  end
  ordered_words.group_by { |word| word.length }.max
end

puts find_ordered_words_in_dictionary
