#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/10/30/reverse-string-ignoring-special-characters/

class String

  def is_letter?
    self.upcase != self.downcase
  end

  def reverse_ignoring_special
    specials = Hash.new
    new_s_characters = self.split("").reverse.collect { |c| c if c.is_letter? }
    self.split("").each_index { |c| specials[c] = self[c] unless self[c].is_letter? }
    specials.each { |k,v| new_s_characters.insert(k+1,v) }
    new_s_characters.compact.join
  end

end

test_string, result_string = "a!b3c", "c!b3a"
p test_string.reverse_ignoring_special == result_string
