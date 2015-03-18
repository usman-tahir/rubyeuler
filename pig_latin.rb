# http://programmingpraxis.com/2009/06/02/pig-latin/

VOWELS = ["a","e","i","o","u"]

def initial_consonant(word,vowels)
  suffix = String.new; index = 0
  suffix << word[index]; index += 1 until vowels.include?(word[index].downcase)
  "#{word[index..-1]}-#{suffix}ay"
end

def initial_vowel(word)
  word + "-way"
end

def translate_to_pig_latin(word, vowels=VOWELS)
  vowels.include?(word[0].downcase) ? initial_vowel(word) : initial_consonant(word,vowels)
end

puts translate_to_pig_latin("abracadabra")
puts translate_to_pig_latin("boomshakalaka")
