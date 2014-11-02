# http://rosettacode.org/wiki/Anagrams

def find_anagrams(words)
  anagrams = Hash.new {|hash,key| hash[key] = []}
  longest_anagrams = []
  words.each do |word|
    anagrams[word.split(//).sort] << word
  end
  max_count = anagrams.values.map {|anagram| anagram.length}.max
  anagrams.each_value do |anagram|
    longest_anagrams << anagram if anagram.count >= max_count
  end
  longest_anagrams
end

def unix_words
  words_to_test = File.open("unixdict.txt").readlines
  words_to_test.map {|word| word.chomp}
end

find_anagrams(unix_words).each do |anagrams|
  p anagrams
end    