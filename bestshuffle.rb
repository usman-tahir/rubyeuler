# http://rosettacode.org/wiki/Best_shuffle

def best_shuffle(word)
  chars = word.split(//); shuf_chars=[]
  c = 0; comp = false
  until comp == true
    c = 0; shuf_chars = word.split(//).shuffle
    chars.each_index {|i| c += 1 if shuf_chars[i] == chars[i]}
    comp = true if c == 0 || chars.count < 2 || (chars.count > chars.uniq.count * 3 && c < chars.count)
  end
  puts "#{word}, #{shuf_chars.join}, #{c}"
end

["abracadabra", "seesaw", "elk", "grrrrrr", "up", "a"].each {|word| best_shuffle(word)}
