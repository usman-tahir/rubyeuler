#!/usr/bin/env ruby
# http://programmingpraxis.com/2011/08/30/hamming-numbers/

def hamming_numbers(limit)
  hammings = [1]
  loop do
    t = hammings.count
    (0...t).each do |i|
      hammings << hammings[i] * 2 unless hammings.include?(hammings[i] * 2)
      hammings << hammings[i] * 3 unless hammings.include?(hammings[i] * 3)
      hammings << hammings[i] * 5 unless hammings.include?(hammings[i] * 5)
    end
    return hammings.sort if hammings.count >= limit
  end
end

p hamming_numbers(1000)
