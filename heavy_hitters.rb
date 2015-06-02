#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/06/02/heavy-hitters-the-britney-spears-algorithm/

def heavy_hitters(text,n=20)
  result = {}
  text.each { |w| result[w] ? result[w] += 1 : result[w] = 1 }
  Hash[*result.sort_by {|k,v| v * -1}[0...n].flatten]
end

str = "With either algorithm, the array can be queried at any time to see the current list of most-frequent items in the array."
p heavy_hitters(str.gsub!(/\./,"").split(/ /).map {|e| e.downcase},5)
