# http://rosettacode.org/wiki/Best_shuffle

def best_shuffle(word,shuffled_word=[])
  chars = word.split(//)
  counter = 0; compare = false
  until compare == true
    counter = 0; shuffled_word = word.split(//).shuffle
    chars.each_index {|i| counter += 1 if shuffled_word[i] == chars[i]}
    compare = true if counter == 0 || chars.count < 2 || (chars.count > chars.uniq.count * 3 && counter < chars.count)
  end
  puts "#{word}, #{shuffled_word.join}, #{counter}"
end

["abracadabra", "seesaw", "elk", "grrrrrr", "up", "a"].each {|word| best_shuffle(word)}
