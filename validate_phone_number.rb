# http://programmingpraxis.com/2011/12/13/validating-telephone-numbers/
require 'minitest/autorun'

def validate_phone_number(n)
  n.gsub!(/[-.() ]/, "")
  if n == nil || n.gsub(/[0-9]/,"").length != 0 || n.length != 7 && n.length != 10
    return "#{n} is not valid"
  end
  return "#{n} is valid"
end

class PhoneNumberValidatorTests < MiniTest::Test

  def test_valid
    val = ["1234567890","123-456-7890","123.456.7890","(123)456-7890",
          "(123) 456-7890","456-7890"]
    val.each { |n| assert_equal(validate_phone_number(n),"#{n} is valid") }
  end
  
  def test_not_valid
    inval = ["123-45-6789","123:4567890","123/456-7890"]
    inval.each { |n| assert_equal(validate_phone_number(n),"#{n} is not valid") }
  end

end
