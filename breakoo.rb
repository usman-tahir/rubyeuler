# http://rosettacode.org/wiki/Break_OO_privacy
start_time = Time.now

class ObjectWithPrivateMethods

  def public_method
    "This is a public method"
  end	

  protected
  def protected_method
    "This is a protected method"
  end	

  private
  def private_method
    "This is a private method"
  end	

end    	

test_object = ObjectWithPrivateMethods.new

puts test_object.public_method + " called on " + test_object.inspect
puts test_object.send(:protected_method) + " called on " + test_object.inspect
puts test_object.send(:private_method) + " called on " + test_object.inspect

puts ((Time.now-start_time).to_f).to_s + "s"
