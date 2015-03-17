# http://programmingpraxis.com/2015/03/17/common-elements-of-three-arrays/
require 'test/unit'

def common(one,two,three)
  number_of_times = {}
  one.each do |elem|
    number_of_times[elem] = [one.count(elem),two.count(elem),three.count(elem)].min
  end
  result_array = []
  number_of_times.each { |k,v| v.times { result_array << k } }
  result_array
end

class CommonElementsTests < Test::Unit::TestCase

  def test_first
    array_one = [1,5,10,20,40,80]
    array_two = [6,7,10,20,80,100]
    array_three = [3,4,15,20,30,70,80,120]
    assert_equal(common(array_one,array_two,array_three),[20,80])
  end

  def test_second
    array_four = [1,5,5,5]
    array_five = [3,4,5,5,10]
    array_six = [5,5,10,20]
    assert_equal(common(array_four,array_five,array_six),[5,5])
  end

end
