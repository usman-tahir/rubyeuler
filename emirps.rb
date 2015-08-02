# http://programmingpraxis.com/2010/11/02/emirps/
require 'prime'

class Fixnum

  def reverse
    self.to_s.reverse.to_i
  end

end

def findEmirpsBelow(n)
  Prime.each(n).map { |p| p.reverse.prime? && p != p.reverse ? p : nil }.compact
end

p findEmirpsBelow(1000).count
