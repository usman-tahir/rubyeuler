#!/usr/bin/env ruby
# http://www.codewars.com/kata/stringy-strings

def stringy(size)
  Array.new(size, nil).map.with_index {|e,i| i % 2 == 0 ? 1 : 0}.join
end

(1...10).each { |e| p stringy(e) }
 