# http://programmingpraxis.com/2012/10/09/two-word-games/

# 1. find all words in dictionary with exactly 5 vowels in ascending order
def five_ascending_vowels(word)
  vowels = ["a","e","i","o","u"]
  word_vowels = []
  word.split(//).each do |char|
    word_vowels << char if vowels.include?(char)
  end
  word_vowels == vowels  
end

# 2. find six+ char long words with letters in ascending alphabetical order
def ascending_alpha_order(word)
  return false if word.length < 6
  word.split(//) == word.split(//).sort
end

def find_five_asc_vowel_words(file)
  words = []
  f = File.new(file)
  f.each do |word|
    words << word.chomp if five_ascending_vowels(word.chomp)
  end
  words  
end

def find_asc_alpha_order_words(file)
  words = []
  f = File.new(file)
  f.each do |word|
    words << word.chomp if ascending_alpha_order(word.chomp)
  end
  words  
end

p find_five_asc_vowel_words("unixdict.txt")
p find_asc_alpha_order_words("unixdict.txt")
