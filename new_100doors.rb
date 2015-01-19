# http://rosettacode.org/wiki/100_doors

def hundred_doors
  doors = (1..100).collect { 0 }
  (1..100).each do |pass|
    doors.each_index do |index|
      doors[index] == 0 ? doors[index] = 1 : doors[index] == 1 ? doors[index] = 0 : nil if (index+1) % pass == 0
    end
  end
  doors
end

hundred_doors.each_index { |index| p "door #{index+1}" if hundred_doors[index] == 1 }
