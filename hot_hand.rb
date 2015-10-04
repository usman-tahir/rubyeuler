#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/10/02/the-hot-hand/

def four_flips
  flips = Array.new(4).map { |e| rand(2) }
  heads, result = 0, 0
  (1...flips.count).each { |i| result += 1 if flips[i-1] == heads && flips[i] == heads }
  result
end

def million_flips
  (1...1_000_000).to_a.map { |e| four_flips }.inject(:+)
end

p million_flips
