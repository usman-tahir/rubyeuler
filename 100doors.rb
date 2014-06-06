# http://rosettacode.org/wiki/100_doors
start_time = Time.now

doors =[]
100.times do
  doors << 0 # 0 for closed; 1 for open
end   

# first pass
doors.each_index do |index|
  if doors[index] == 0
    doors[index] = 1
  end
end

# passes 2 through 100
modulo_to_visit = 2
while modulo_to_visit < 101
  (0..99).each do |index|
    if (index+1) % modulo_to_visit == 0
      if doors[index] == 0
        doors[index] = 1
      elsif doors[index] == 1
        doors[index] = 0
      else
      end
    else
    end
  end
  modulo_to_visit += 1
end  		  	   	

puts "Catalogue of doors:"
doors.each_index do |index|
  puts "door " + (index+1).to_s + " is open." if doors[index] == 1
  puts "door " + (index+1).to_s + " is closed." if doors[index] == 0
end
puts "~~~"

puts "The doors left open are:"
  doors.each_index do |index|
  puts "door " + (index+1).to_s + " is open." if doors[index] == 1
end

puts ((Time.now - start_time).to_f).to_s + "s"
