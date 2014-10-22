# http://rosettacode.org/wiki/Pernicious_numbers
require 'Prime'

def pernicious(number)
  number.to_s(2).split(//).to_a.count("1").prime?
end

def find_first_25_pernicious_numbers
  pernicious_numbers = []    
  counter = 1
  until pernicious_numbers.count == 25
    if pernicious(counter)
      pernicious_numbers << counter
    else
    end
    counter += 1
  end
  pernicious_numbers
end

def find_888s
  pernicious_numbers = []
  (888_888_877..888_888_888).each do |number|
    pernicious_numbers << number if pernicious(number)
  end
  pernicious_numbers
end

puts "First 25 pernicious numbers: #{find_first_25_pernicious_numbers.inspect}"     
puts "Pernicious numbers from ..877 to ..888 are: #{find_888s.inspect}"