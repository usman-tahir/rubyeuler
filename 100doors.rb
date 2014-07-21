# http://rosettacode.org/wiki/100_doors
start_time = Time.now

def a_hundred_doors
  doors =[]
  100.times do
    doors << 0 # 0 for closed; 1 for open
  end   
  pass = 1
  while pass < 101
    (0..99).each do |index|
      if (index+1) % pass == 0
        if doors[index] == 0 then doors[index] = 1
        elsif doors[index] == 1 then doors[index] = 0
        end
      end
    end
    pass += 1
  end
  doors
end 

doors = a_hundred_doors
open_doors =[]
doors.each_index do |index|
  open_doors << "Door " + (index+1).to_s if doors[index] == 1
end

puts "Doors left open after 100 passes:"
puts open_doors.inspect

puts ((Time.now - start_time).to_f).to_s + "s"
