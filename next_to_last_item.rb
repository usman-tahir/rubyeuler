#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/07/28/next-to-last-item-in-a-list/

def next_to_last(list)
  return false if list.count < 2
  new_list = list.dup
  new_list = cdr(new_list) until new_list.count == 2
  car(new_list)
end

def nth_to_last(list,nth=2)
  return false if list.count < nth
  new_list = list.dup
  new_list = cdr(new_list) until new_list.count == nth
  car(new_list)
end

def car(list)
  new_list = list.dup
  [new_list.shift]
end

def cdr(list)
  new_list = list.dup
  new_list.shift
  new_list
end

list = [1,2,3,4,5]

p next_to_last(list)
p nth_to_last(list,3)
