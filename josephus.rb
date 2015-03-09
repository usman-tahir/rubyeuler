# http://rosettacode.org/wiki/Josephus_problem

def k_sequence(prisoners, k)
  until prisoners.count == 1
    prisoners.rotate!(k-1)
    prisoners.delete_at(0)
  end
  prisoners
end  	

puts "Josephus is prisoner #{k_sequence((0..40).to_a, 3)[0]}"
