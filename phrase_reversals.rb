# http://rosettacode.org/wiki/Phrase_reversals

test_string = "rosetta code phrase reversal"

def phrase_reversals(str)
  # reverse the string
  puts str.reverse
  # reverse each individual word in the string, keeping order
  str.split(" ").map.each do |word|
    print "#{word.reverse} " 
  end; puts
  # reverse the words in the string without reversing the words
  str.split(" ").to_a.reverse.each do |word|
    print "#{word} "
  end; puts  
  nil
end

puts phrase_reversals(test_string)    
