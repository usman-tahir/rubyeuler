# http://rosettacode.org/wiki/Best_shuffle
start_time = Time.now

strings_to_test = ["abracadabra", "seesaw", "elk", "grrrrrr", "up", "a"]

def find_best_shuffle(string)
  array_to_shuffle = string.scan(/./).to_a
  best_shuffle = false
  until best_shuffle == true
    shuffled_array = array_to_shuffle.shuffle
    similarity_counter = 0
    shuffled_array.each_index do |index|
      similarity_counter += 1 if shuffled_array[index] == array_to_shuffle[index]
    end
    best_shuffle = true if similarity_counter == 0
    best_shuffle = true if array_to_shuffle.count < 2
    best_shuffle = true if array_to_shuffle.count > array_to_shuffle.uniq.count * 3 && similarity_counter < array_to_shuffle.count
  end
  result_array = [string, shuffled_array.join, similarity_counter.to_s]
  return result_array
end

strings_to_test.each do |test_string|
  puts find_best_shuffle(test_string).inspect
end

puts ((Time.now - start_time).to_f).to_s + "s"	