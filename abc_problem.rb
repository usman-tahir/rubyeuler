# http://rosettacode.org/wiki/ABC_Problem

def can_make_word(string)
  blocks = [["B","O"], 
            ["X","K"],
            ["D","Q"],
            ["C","P"], 
            ["N","A"], 
            ["G","T"], 
            ["R","E"], 
            ["T","G"], 
            ["Q","D"], 
            ["F","S"], 
            ["J","W"], 
            ["H","U"], 
            ["V","I"], 
            ["A","N"], 
            ["O","B"], 
            ["E","R"], 
            ["F","S"], 
            ["L","Y"], 
            ["P","C"],
            ["Z","M"]]
  found = []
  str_chars = string.upcase.split(//).to_a
  str_chars.each do |char|
    found_flag = false
    blocks.each {|block| found_flag = true if block.include?(char); blocks.delete(block) if block.include?(char)}
    found << found_flag
  end
  !found.include?(false)
end

test_words = ["A","BARK","BOOK","TREAT","COMMON","SQUAD","CONFUSE"]
test_words.each do |word|
  p can_make_word(word)
end
