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

pub_call = test_object.method(:public_method)
prot_call = test_object.method(:protected_method)
priv_call = test_object.method(:private_method)

puts pub_call.call
puts prot_call.call
puts priv_call.call

puts ((Time.now-start_time).to_f).to_s + "s"

