#!/usr/bin/env ruby

def powerset(list)
  result = [[],list]
  list.each do |i|
    temp_list = list - [i]
    result << temp_list
    temp_list.each do |e|
      new_temp_list = temp_list - [e]
      result << new_temp_list unless result.include?(new_temp_list)
    end
  end
  result
end

list = [1,2,3]
p powerset(list)

