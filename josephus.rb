# http://rosettacode.org/wiki/Josephus_problem
start_time = Time.now

def create_p_array(number_of_p)
  p_array =[]
  counter = 0
  number_of_p.times do 
    p_array << counter
    counter += 1
  end
  p_array
end

def k_sequence(p_array, k)
  until p_array.count == 1
    p_array.rotate!(k-1)
    # puts p_array[0]
    p_array.delete_at(0)
  end
  p_array
end  	

puts "Josephus is prisoner " + k_sequence(create_p_array(41), 3)[0].to_s + "."
puts ((Time.now - start_time).to_f).to_s + "s"
