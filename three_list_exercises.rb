# http://programmingpraxis.com/2013/05/07/three-list-exercises/

# 1.
def remove_element_at_interval(array,interval)
  array.each_index { |index| array[index] = nil if (index+1) % interval == 0 }.compact
end

one_test_array = [1,2,3,4,5,6,7,8,9,10]
p remove_element_at_interval(one_test_array,4)

# 2.
def remove_duplicates(array)
  array.each_index { |index| array[index] = nil if array[0..index-1].include?(array[index]) && index > 0 }.compact
end

two_test_one = [1,2,3,4,5]
two_test_two = [1,1,2,3,4,5]
two_test_three = [1,2,1,3,1,4,1,5,1]
two_test_four = [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5]

p remove_duplicates(two_test_one)
p remove_duplicates(two_test_two)
p remove_duplicates(two_test_three)
p remove_duplicates(two_test_four)

def halve_list(array)
  halves = [[],[]]; limit = array.count / 2
  array.each_index { |index| index < limit ? halves[0] << array[index] : halves[1] << array[index] }
  halves
end

three_test = [1,2,3,4,5]
three_test_two = [2,3,1,9,0,3]
three_test_three = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

p halve_list(three_test)
p halve_list(three_test_two)
p halve_list(three_test_three)
