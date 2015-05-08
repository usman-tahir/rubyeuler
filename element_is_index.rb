#!/usr/bin/env ruby
# http://programmingpraxis.com/2013/07/26/find-xi-i-in-an-array/

element_is_i = -> list { list.each_index {|i| return i if list[i] == i } }

p element_is_i[[-3,0,1,3,5,7]]


