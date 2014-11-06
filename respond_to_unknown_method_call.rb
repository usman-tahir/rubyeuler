# http://rosettacode.org/wiki/Respond_to_an_unknown_method_call

class Unknown

  def known
    "known"
  end
  
  def method_missing(name, *args)
    "method #{name} is unknown"
  end  

end

unk = Unknown.new

p unk.known
p unk.unknown  