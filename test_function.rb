# http://rosettacode.org/wiki/Test_a_function
require 'minitest/autorun'

class String

  def palindrome?
    self.downcase == self.downcase.reverse
  end

end    

# unit test style

class TestPalindome < MiniTest::Unit::TestCase

  def setup
    @not_palind = "Test"
    @palind = "Testset"
  end

  def test_that_palindomes_return_true
    assert @palind.palindrome?
  end

  def test_that_non_palindromes_return_false
    assert !@not_palind.palindrome?
  end
  
end

# spec style    

describe "Palindrome" do
  
  before do
    @not_palind = "Test"
    @palind = "Testset"
  end
  
  describe "when the string is a palindrome" do
    it "returns true" do
      @palind.palindrome?
    end
  end

  describe "when the string is not a palindrome" do
    it "returns false" do
      @not_palind.palindrome?.must_equal false
    end
  end          

end
