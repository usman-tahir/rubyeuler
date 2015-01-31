# find unique characters in a string in ruby

def unique_chars(string)
  unique_characters = []
  (0...string.length).each { |i| unique_characters << string[i] if !unique_characters.include?(string[i]) }
  unique_characters.count
end

p unique_chars("abracadabra")
