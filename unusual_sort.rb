#!/usr/bin/env ruby
# http://www.codewars.com/kata/un-usual-sort

def unusual_sort(list)
  digits = ["1","2","3","4","5","6","7","8","9","0"]
  uppercase, lowercase, ints, int_strings, all_ints = [],[],[],[],[]
  list.each do |e|
    if e.class == String && !digits.include?(e)
      e == e.upcase ? uppercase << e : lowercase << e
    else 
      digits.include?(e) ? int_strings << e : ints << e
    end
  end
  [uppercase,lowercase,ints,int_strings].each { |e| e.sort! }
  until ints.count == 0 || int_strings.count == 0
    ints.first <= int_strings.first.to_i ? 
      all_ints << ints.shift : all_ints << int_strings.shift
  end
  all_ints = ints.count > 0 ? ints + all_ints : all_ints + int_strings
  uppercase + lowercase + all_ints
end

sample = ["a","Z","B", 1, 5, "5", "1"]
p unusual_sort(sample)