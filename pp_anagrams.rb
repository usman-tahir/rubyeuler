# http://programmingpraxis.com/2009/04/10/anagrams/

# given an input word, find all anagrams of the word in the dictionary

def find_anagrams(word)
  f = File.new("unixdict.txt")
  f = f.map { |line| line.chomp }
  anagrams =[]
  word.split(//).permutation.to_a.each do |chars|
    if f.include?(chars.join) && chars.join != word
      anagrams << chars.join
    end
  end
  anagrams
end

word = ARGV[0].to_s
find_anagrams(word).each do |anagram|
  puts "#{anagram}"
end  
