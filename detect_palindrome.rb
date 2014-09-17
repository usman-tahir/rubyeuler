# http://rosettacode.org/wiki/Palindrome_detection

class String
  def palindrome?
    self.downcase == self.downcase.reverse
  end

end

puts "ingirumimusnocteetconsumimurigni".palindrome?

