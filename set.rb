# http://rosettacode.org/wiki/Set

def create_set(*element)
  elements =[]
  elements << element
  elements.flatten!.uniq
end

def is_element_in_set?(element, set)
  set.include?(element)
end

def set_union(first_array,second_array)
  (first_array + second_array).uniq
end

def set_intersection(first_array,second_array)
  set_of_intersecting_elements = []
  first_array.each do |element|
    set_of_intersecting_elements << element if is_element_in_set?(element,second_array) == true
  end
  set_of_intersecting_elements
end    

def set_difference(first_array,second_array)
  first_array - second_array
end

def set_subset(first_array,second_array)
  subset_of_elements =[]
  first_array.each do |element|
    subset_of_elements << element if is_element_in_set?(element,second_array) == true
  end
  return true if subset_of_elements.count == first_array.count
  return false if subset_of_elements.count != first_array.count
end  

def set_equality(first_array,second_array)
  first_array == second_array
end  

# some sets to start
test_array = create_set(1,2,3)
test_array2 = create_set(3,4,5)
test_array3 = create_set(4,5,6)
test_array4 = create_set(1,2,3)

puts "Is 1 in set #{test_array.inspect}? : " + is_element_in_set?(1,test_array).to_s
puts "Is 4 in set #{test_array.inspect}? : " + is_element_in_set?(4,test_array).to_s
puts "The union of sets #{test_array.inspect} and #{test_array3.inspect} is: " + set_union(test_array,test_array3).inspect.to_s
puts "The difference between set #{test_array.inspect} and set #{test_array2.inspect} is: " + set_difference(test_array,test_array2).inspect.to_s
puts "Are set A #{test_array.inspect} and set B #{test_array4.inspect} equal? " + set_equality(test_array,test_array4).to_s
puts "Are set A #{test_array.inspect} and set B #{test_array3.inspect} equal? " + set_equality(test_array,test_array3).to_s
puts "The intersection of sets #{test_array.inspect} and #{test_array2.inspect} is: " + set_intersection(test_array,test_array2).to_s
puts "Is #{test_array.inspect} a subset of #{set_union(test_array,test_array3).inspect}? " + set_subset(test_array,(set_union(test_array,test_array3))).to_s
puts "Is #{test_array.inspect} a subset of #{set_union(test_array2,test_array3).inspect}? " + set_subset(test_array,(set_union(test_array2,test_array3))).to_s