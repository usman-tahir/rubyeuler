# http://rosettacode.org/wiki/100_doors

def hundred_doors
  doors = (1..100).collect { 0 }
  (1..100).each do |pass|
    doors.each_index {|i| doors[i] == 0 ? doors[i] = 1 : doors[i] == 1 ? doors[i] = 0 : nil if (i+1) % pass == 0 }
  end
  doors
end

hundred_doors.each_index { |i| p "door #{i+1}" if hundred_doors[i] == 1 }
