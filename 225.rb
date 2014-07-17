# http://codegolf.stackexchange.com/questions/28786/write-a-program-that-makes-2-2-5

class Fixnum
  alias :plus :+

  def +(value)
    self.plus(value).plus(1)
  end

end		

puts "2 + 2 = " + (2 + 2).to_s