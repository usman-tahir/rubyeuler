# http://rosettacode.org/wiki/Loop_over_multiple_arrays_simultaneously

one = ["a","b","c"]
two = ["A","B","C"]
three = [1,2,3]
four = ["foo","bar","baz"]

def multi_loop(*arrays)
  number_of_arrays = arrays.count
  number_of_items = arrays[0].count
  (0...number_of_items).each do |item_index|
    (0...number_of_arrays).each do |array_index|
      print arrays[array_index][item_index]
    end
    puts   
  end
end    

puts multi_loop(one,two,three,four)  