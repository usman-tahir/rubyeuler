#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Pangram_checker

class String
  
  def pangram?
    self.gsub(/\W+/, '').split(//).map {|c| c.downcase}.sort.uniq == ('a'..'z').to_a
  end

end

p "The quick brown fox jumps over the lazy dog.".pangram?
p "The five boxing wizards dump quickly.".pangram?
