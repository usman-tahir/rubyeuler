# http://rosettacode.org/wiki/Pangram_checker

class String
  
  def pangram?
     chars = self.split(//).map {|char| char.to_s.downcase}
     letters = ('a'..'z').to_a
     pangram_flag = true
     letters.each do |letter|
       pangram_flag = false if !chars.include?(letter)
     end
     pangram_flag
  end
end

p "The quick brown fox jumps over the lazy dog.".pangram?
p "The five boxing wizards dump quickly.".pangram?

     
