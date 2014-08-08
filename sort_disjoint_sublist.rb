# http://rosettacode.org/wiki/Sort_disjoint_sublist
start_time = Time.now
list_to_sort = [7, 6, 5, 4, 3, 2, 1, 0]
indices_to_sort = [6, 1, 7]

def sort_sublist(array_of_elements, array_of_indices)
  temp_sorting_array = []
  array_of_indices.sort!
  array_of_indices.each do |index|
    temp_sorting_array << array_of_elements[index]
  end
  temp_sorting_array.sort!
  array_of_indices.each_with_index do |indices_position, index_for_temp_sorting_array|
  array_of_elements[indices_position] = temp_sorting_array[index_for_temp_sorting_array]
  end
  array_of_elements   
end

puts sort_sublist(list_to_sort,indices_to_sort).inspect
puts ((Time.now-start_time).to_f).to_s + "s"