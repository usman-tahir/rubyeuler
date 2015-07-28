#!/usr/bin/env ruby
# http://programmingpraxis.com/2014/10/03/magic-1089/

class Fixnum

  def decreasing?  
    t = self.to_s.split(//).map { |e| e.to_i }
    return t == t.sort.reverse
  end  

  def reverse
    self.to_s.reverse.to_i
  end

  def magic_1089?
    self.decreasing? ? ((self - self.reverse) + (self - self.reverse).reverse) : 0
  end 

end

[532, 235, 854, 1234].each { |val| p val.magic_1089? }
