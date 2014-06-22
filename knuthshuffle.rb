# http://rosettacode.org/wiki/Knuth_shuffle
start_time = Time.now
test_array = [0,1,2,3,4,5,6,7,8,9]

def knuth_shuffle(array_to_shuffle)
  array_to_shuffle.each_index do |index|
  	next if index == 0
    random_index = rand(0..index)
    array_to_shuffle[index], array_to_shuffle[random_index] = array_to_shuffle[random_index], array_to_shuffle[index]
  end
  array_to_shuffle
end  	

puts knuth_shuffle(test_array).inspect
puts ((Time.now - start_time).to_f).to_s + "s"
