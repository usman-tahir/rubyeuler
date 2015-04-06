# http://rosettacode.org/wiki/Remove_duplicate_elements

def remove_duplicates(list)
  new_list = list.dup
  new_list.each_index do |i|
    (i+1...new_list.count).each {|j| new_list[j] = nil if new_list[j] == new_list[i] }
  end.compact
end

def remove_duplicates_two(list)
  new_list = list.sort
  new_list.each_index do |i|
    (i+1...new_list.count).each do |j|
      break if new_list[i] != new_list[j]
      new_list[j] = nil if new_list[i] == new_list[j]
    end
  end.compact
end

def remove_duplicates_three(list)
  results = Hash.new
  list.each { |i| results[i] = list.count(i) }
  results.keys
end

list = [1, 2, 1, 4, 5, 2, 15, 1, 3, 4]

p remove_duplicates(list)
p remove_duplicates_two(list)
p remove_duplicates_three(list)
