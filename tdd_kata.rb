# http://osherove.com/tdd-kata-1
require 'test/unit'

def add(number_string="0",delimiter=",")
  numbers = number_string.split(/#{delimiter}/).map! {|n| n.chomp.to_i}
  numbers.each {|n| return "negatives not allowed: #{n}" if n != n.abs }
  numbers.count == 0 ? 0 : numbers.map {|n| n > 1000 ? n = 0 : n = n}.inject(:+)
end

class TDDTests < Test::Unit::TestCase

  def test_one
    assert_equal(add("6"),6)
  end
  
  def test_two
    assert_equal(add("1,2"),3)
  end

  def test_empty
    assert_equal(add,0)
  end

  def test_unknown
    n = rand(3)
    if n == 0
      test_empty
    elsif n == 1
      test_one
    elsif n == 2
      test_two
    elsif n == 3
      assert_equal(add("1,2,3,4,5,6"),21)
    end
  end

  def test_delimiter
    assert_equal(add("6:20",":"),26)
  end

  def test_negative
    assert_equal(add("6:-2",":"),"negatives not allowed: -2")
  end

  def test_newline
    assert_equal(add("6\n,2\n"), 8)
  end

  def test_over_a_thousand
    assert_equal(add("2,1001"),2)
  end

end