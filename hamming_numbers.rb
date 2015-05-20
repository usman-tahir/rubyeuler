#!/usr/bin/env ruby
# http://programmingpraxis.com/2011/08/30/hamming-numbers/

def hamming_numbers(limit)
  hammings = [1]
  counter = 0
  until counter >= limit
    t = hammings.count
    (0...t).each do |i|
      unless hammings.include?(hammings[i] * 2)
        hammings << hammings[i] * 2
        counter += 1
      end
      unless hammings.include?(hammings[i] * 3)
        hammings << hammings[i] * 3
        counter += 1
      end
      unless hammings.include?(hammings[i] * 5)
        hammings << hammings[i] * 5
        counter += 1
      end
    end
    return hammings.sort if counter >= limit
  end
  hammings.sort.uniq
end

p hamming_numbers(1000)
