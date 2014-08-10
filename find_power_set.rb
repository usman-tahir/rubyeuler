# http://rosettacode.org/wiki/Power_set
# given a set S, the powerset of S is the set of all subsets of S
# create a function to yield the powerset of S
# values from http://rosettacode.org/wiki/Power_set#C++
test_array = [2, 3, 5, 7]

def find_powerset(array)
  max_size = array.count
  counter = 1
  powerset = []
  until counter > max_size
    powerset << array.combination(counter).to_a
    counter += 1
  end
  powerset_values = []
  null = [] # empty set
  powerset_values << null
  powerset.each do |subset|
    subset.each do |subsubset|
      powerset_values << subsubset
    end  
  end
  powerset_values
end  

puts "The powerset of #{test_array.inspect} is: "
puts find_powerset(test_array).inspect
