# http://rosettacode.org/wiki/Permutations/Derangements
start_time = Time.now

def derangement(start_number,end_number)
  derangement_base_array = (start_number..end_number).to_a
  permutations = derangement_base_array.permutation.to_a
  3.times do 
    permutations.each do |permutation|
      permutation.each_index do |permutation_index|
        permutations.delete(permutation) if permutation[permutation_index] == derangement_base_array[permutation_index]
      end
    end
  end
  permutations
end

def deranged_number_count(start_number,end_number)
  derangement(start_number,end_number).count
end

puts derangement(0,2).inspect
puts derangement(1,4).inspect
puts deranged_number_count(1,4)

puts ((Time.now - start_time).to_f).to_s + "s"

