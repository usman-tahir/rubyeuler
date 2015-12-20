#!/usr/bin/env ruby
# http://www.codewars.com/kata/mumbling

def accum(s)
  r = ""
  s.split("").each_with_index do |e,i|
    (i+1).times { r << e }
    r << "-" unless i == s.length-1
  end
  r.split("").map.with_index do |e,i|
    e = (i == 0 || r[i-1] == "-") ? e.upcase : e.downcase
  end.join
end

["abcd","RqaEzty","cwAt"].each { |e| puts accum(e) }
