# http://rosettacode.org/wiki/Sorting_algorithms/Pancake_sort

def pancake_sort(array)
  (array.size-1).downto(1) do |e|
    m_i = array[0..e].index(array[0..e].max)
    array[0..m_i] = array[0..m_i].reverse if m_i > 0
    array[0..e] = array[0..e].reverse
  end
  array
end

test_array = [4, 10, 11, 15, 1, 6, 9, 3, 7, 18, 13, 8]
p pancake_sort(test_array)
