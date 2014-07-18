# http://codegolf.stackexchange.com/questions/28786/write-a-program-that-makes-2-2-5

two_plus_two = "2 + 2"

class Fixnum
  alias :plus :+

  def +(value)
    self.plus(value).plus(1)
  end

end		

puts two_plus_two + " = " + eval(two_plus_two).to_s
